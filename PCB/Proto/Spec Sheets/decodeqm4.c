
#include <stdio.h>
#include <stdlib.h>
#include <errno.h>
#include <string.h>

#define	NBITS	16

#if NBITS <=16
unsigned long bitmask[] = { 1,2,4,8,16,32,64,128, 0x100,0x200,0x400,0x800,
		0x1000,0x2000,0x4000,0x8000 };
#endif

int verbose = 1;

int nbits[NBITS];

typedef unsigned short int	bits;

int int_nbits(bits logic) {
	int i,n;
	
	for(n=0,i=15; i>=0; i--) {
	    if(logic & bitmask[i]) n++;
	}
	return n;
}

typedef struct {
	bits			mask;
	bits			logic;
	int 			nbits;
	char			flag;
} imp;

int imp_nbits(imp *this) {
	int i,n;
	bits logic;

	logic = this->logic & this->mask;
	
	for(n=0,i=15; i>=0; i--) {
	    if(logic & bitmask[i]) n++;
	}
	return n;
}

void imp_print(imp *this) {
	printf("{ [%04x] %04X (%d)}", this->mask,this->logic & this->mask, this->nbits);
}


typedef struct {
	size_t			m[NBITS+1];
	size_t			n[NBITS+1];
	imp			*tab[NBITS+1];
} implist;

implist *new_implist(void) {
	int i;
	implist *p = malloc(sizeof(implist));
	
	for(i=0;i<NBITS+1;i++) {
	  p->n[i] = 0;
	  p->m[i] = 0x10000;
	  p->tab[i] = malloc(p->m[i] * sizeof(imp));
	}
	return p;
}

void implist_clear(implist *p) {
	int i;
	for(i=0;i<NBITS+1;i++) {
	  p->n[i]=0;
	}
}

void implist_add_imp(implist *this, imp *data) {
	int nbits = data->nbits;
	size_t i,n;
	imp *t;

	if(this->n[nbits] >= this->m[nbits]) {
	  this->m[nbits] *= 2;
	  this->tab[nbits] = realloc(this->tab[nbits], 
					this->m[nbits] * sizeof(imp));
	}

	n= this->n[nbits];
	t = this->tab[nbits];
	for(i=0;i<n;i++) {
	   if( (t[i].mask == data->mask) && (t[i].logic == data->logic) ) 
		return;
	}
	this->tab[nbits][this->n[nbits]]=*data;
	this->n[nbits]++;
}

size_t implist_n(implist *p) {
	int i;
	size_t n;

	for(n=0,i=0;i<NBITS+1;i++) {
	  n+=p->n[i];
	}
	return n;
}

size_t implist_m(implist *p) {
	int i;
	size_t n;

	for(n=0,i=0;i<NBITS+1;i++) {
	  n+=p->m[i];
	}
	return n;
}

int main(int argc, char *argv[]) {

	char *file;
	FILE *fp;
	char *data = malloc(0x10000);
	bits *bmask = malloc(0x10000 * sizeof(bits));
	bits *blogic= malloc(0x10000 * sizeof(bits));
	int *xlist = malloc(0x10000 * sizeof(int));
	implist *t1, *t2, *tp, *tt;
	imp simp;
	imp *ip, *ib;
	bits amask;
	unsigned long xdiff;
	size_t n1,n2,n,m,i,j,k,l,nc;
	int b;
	char bbmask, xmask;
	
	file = argv[1];
	fp = fopen(file,"r");
	if(!fp) {
	    fprintf(stderr,"Could not open file %s -> %d (%s)\n",
		file, errno, strerror(errno));
	    exit(1);
	}
	n=fread(data,1,0x10000,fp);
	fclose(fp);

	if(! (n && !(n & (n-1)))) {
	  printf("sorry, file (%d) size must be power of 2!\n",n);
	  exit(1);
	}

	printf("File `%s', read %d bytes\n",file,n);

	/* allocate initial tables */
	t1 = new_implist();
	t2 = new_implist();
	tp = new_implist();

	/* iterate bits */
	for(b=0;b<8;b++) {

	   implist_clear(tp);
	   implist_clear(t1);
	   implist_clear(t2);

	   printf("Checking bit %d\n",b);
	   m=0;
	   bbmask=bitmask[b];
	   xmask=0;
	   for(j=0;j<n;j++) {
	       if(data[j] & bbmask) {
		  m++;
	       }
	   }
	   if (m>(n/2)) {
	       printf("got %d 1s out of %d, so checking 0s\n",m,n);
	       xmask = bbmask;
	   }

	   /* precomputation - remove all unecessary bits from mask */
	   /* first separate to bits & mask */
	   for(m=0,i=0;i<n;i++) {
	     if( (data[i] ^ xmask) & bbmask) {
	       bmask[m] = n-1;
	       blogic[m] = i;
	       m++;
	     }
	   }
	   /* now reduce all possible bits */
	   for(k=0;k<NBITS;k++) {
	     amask = bitmask[k];
	     for(i=0;i<m-1;i++) {
	       for(j=i+1;j<m;j++) {
		 if((bmask[i]==bmask[j])
			&& (((blogic[i] ^ blogic[j]) & bmask[i]) == amask)
		 ) {
		   bmask[i] &= ~amask;
		   bmask[j] = bmask[m-1];
		   blogic[j] = blogic[m-1];
		   m--;
		   break;
		 }
	       }
	     }
	   }
	   /* now OR all masks. Bits not used should show up as 0 anyway */
	   amask=0;
	   for(i=0;i<m;i++) {
	     amask |= bmask[i];
	   }
	   if(verbose) printf("m=%d -> amask=%04x\n",m,amask);

	   /* now put all into first implicants list */
	   m=0;
	   for(j=0;j<n;j++) {
	       if( (data[j] ^ xmask) & bbmask) {
	          simp.logic=j & amask;
	          simp.mask=amask;
		  simp.flag=0;
		  simp.nbits = imp_nbits(&simp);
		  implist_add_imp(t1, &simp);
	       }
	   }

	   do {
	      implist_clear(t2);
	      if(verbose) {
		printf("translation started with %d/%d impl:",
					implist_n(t1),implist_m(t1));
	        fflush(stdout);
	      }

	      for(k=0;k<NBITS;k++) {
		n1 = t1->n[k];
		n2 = t1->n[k+1];
	        for(i=0;i<n1;i++) {
		  for(j=0;j<n2;j++) {
		    if(t1->tab[k][i].mask == t1->tab[k+1][j].mask) {
		      xdiff = t1->tab[k][i].mask 
			    & (t1->tab[k][i].logic ^ t1->tab[k+1][j].logic);
		      /* check if they differ by one bit */
		      if (xdiff && !(xdiff & (xdiff-1))) {
		        t1->tab[k][i].flag=1;
		        t1->tab[k+1][j].flag=1;
		        simp.mask = t1->tab[k][i].mask & ~xdiff;
		        simp.logic = t1->tab[k][i].logic & ~xdiff;
		        simp.flag=0;
			simp.nbits = imp_nbits(&simp);

			/* imp_print(&simp); */

			implist_add_imp(t2, &simp);
		      }
		    }
		  }
		}
		if(verbose) {
		  printf(".");
	          fflush(stdout);
		}
	      }
	      for(k=0;k<NBITS+1;k++) {
		n1=t1->n[k];
	        for(i=0;i<n1;i++) {
		  if (!t1->tab[k][i].flag) {
		    implist_add_imp(tp,&t1->tab[k][i]);
		  }
		}
		if(verbose) {
		  printf(",");
	          fflush(stdout);
		}
	      }
	      tt = t1;
	      t1 = t2;
	      t2 = tt;
	      implist_clear(t2);
	      if(verbose) {
     	        printf("\n");
	        printf("now have %d prime implicants\n",implist_n(tp));
	      }
	   } while(implist_n(t1));

	   /* now find the essential prime implicants */

	   implist_clear(t1);
	   implist_clear(t2);
	   /* get a list of which combination is covered how many times */
	   for(i=0;i<n;i++) {
	     xlist[i]=0;
	     for(k=0;k<NBITS+1;k++) {
	       ip = tp->tab[k];
	       for(j=0;j<tp->n[k];j++) {
		 if(! (ip[j].mask & (ip[j].logic ^ i))) {
		   xlist[i]++;
		 }
	       }
	     }
	   }
	   for(i=0;i<n;i++) {
	     if(xlist[i]==1) {
	       for(k=0;k<NBITS+1;k++) {
	         ip = tp->tab[k];
	         for(j=0;j<tp->n[k];j++) {
		   if(! (ip[j].mask & (ip[j].logic ^ i))) {
		     implist_add_imp(t1, &ip[j]);
		     ip[j].flag = 1;
		     /* clear bits covered by this essential implicant */
		     for(l=0;l<n;l++) {
		       if(! (ip[j].mask & (ip[j].logic ^ l))) {
		         xlist[l] = 0;
		       }
		     }
		     break;
		   }
	         }
	       } 
	     }
	   }
           for(k=0;k<NBITS+1;k++) {
	     ip = tp->tab[k];
	     for(j=0;j<tp->n[k];j++) {
	       if(! (ip[j].flag)) {
	         implist_add_imp(t2, &ip[j]);
	       }
	     }
	   }
	   /* now the essential prime implicants are in t1, and the 
	      "optional" ones in t2; xlist contains != 0 for each 
	      column still open. */

	   if(verbose) {
	     printf("found essential prime implicants:\n");
	     for(k=0;k<NBITS+1;k++) {
	       for(i=0;i<t1->n[k];i++) {
	  	fprintf(stdout,"%04x %04x\n",
			t1->tab[k][i].mask,t1->tab[k][i].logic);
	       }
	     }
	     printf("found secondary prime implicants:\n");
	     for(k=0;k<NBITS+1;k++) {
	       for(i=0;i<t2->n[k];i++) {
		fprintf(stdout,"%04x %04x\n",
			t2->tab[k][i].mask,t2->tab[k][i].logic);
	       }
	     }
	     printf("\n");
	   }

	   /* this could probably be done more efficiently... */
	   do {	
	     /* count the number of open columns */
	     m=0;
	     for(i=0;i<n;i++) {
	       if(xlist[i]) m++;
	     }
	     printf("%d columns still open\n",m);
	     if(!m) break;
	     
	     /* now, for each secondary implicant, compute the number of
		columns it covers and along the way save the best one */
	     ib=NULL;
	     for(k=0;k<NBITS+1;k++) {
	       for(i=0;i<t2->n[k];i++) {
		 ip=&t2->tab[k][i];
		 ip->flag = 0;
		 for(j=0;j<n;j++) {
		   if(xlist[j]) {
		     if(! (ip->mask & (ip->logic ^ j))) {
		       ip->flag++;
		       if((!ib) || (ip->flag>=ib->flag)) {
		         ib=ip;
		       }
		     }
		   }
		 }
	       }
	     }
	     /* mark all new columns as covered */
	     if(ib) {
	       for(j=0;j<n;j++) {
	         if(! (ib->mask & (ib->logic ^ j))) {
		   xlist[j] = 0;
	         }
	       }
	       implist_add_imp(t1,ib);
	     }
	   } while(ib);

	   printf("Logic found for %sB%d =\n ",
		xmask ? "!":"", b);
	   for(k=0;k<NBITS+1;k++) {
	     for(i=0;i<t1->n[k];i++) {
		ip=&t1->tab[k][i];
		nc=0;
		printf("[%04x %04x] ",ip->mask,ip->logic);
		if(i) printf("| ");
		for(j=0;j<NBITS+1;j++) {
		   if( ip->mask & bitmask[j] ) {
		       if(nc) printf(" & ");
		       if(!(ip->logic&bitmask[j])) {
			   printf("!");
		       }
		       printf("A%d",j);
		       nc++;
		   }
		}
		printf("\n ");
	     }
	   }
	   printf("\n");
	}
	return 0;
}

