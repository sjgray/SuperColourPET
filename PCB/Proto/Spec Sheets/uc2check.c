


#include <stdio.h>

/* define input parameters */

#define	I0(i)		(i & 1)
#define I1(i)		((i >> 1) & 1)
#define I2(i)		((i >> 2) & 1)
#define I3(i)		((i >> 3) & 1)
#define I4(i)		((i >> 4) & 1)
#define I5(i)		((i >> 5) & 1)

/* map input to signals */

#define MHZ8(i)		I0(i)
#define MHZ4(i)		I1(i)
#define MHZ2(i)		I2(i)
#define MHZ1(i)		I3(i)
#define CASENAI(i)	(!I4(i))

/* calculate output signals */

#define CASIIT(i)	((MHZ2(i) && MHZ1(i)) \
			|| (MHZ8(i) && MHZ4(i) && MHZ1(i)))

#define RAST(i)		((!MHZ8(i) && !MHZ4(i) && !MHZ2(i) && MHZ1(i)) \
			|| (MHZ8(i) && MHZ4(i) && MHZ2(i)) \
			|| (MHZ4(i) && MHZ2(i) && MHZ1(i)))

#define CASI(i)		(!((MHZ4(i) && !MHZ1(i)) \
			|| (MHZ8(i) && MHZ4(i) && CASENAI(i)) \
			|| (MHZ2(i) && MHZ1(i) && CASENAI(i)) \
			|| (MHZ8(i) && MHZ2(i) && !MHZ1(i))))

#define MUXA(i)		(!((!MHZ8(i) && !MHZ4(i) && !MHZ2(i) && !MHZ1(i)) \
			|| (MHZ4(i) && MHZ1(i)) \
			|| (MHZ2(i) && MHZ1(i))))

#define DRAMRWT(i)	((MHZ4(i) && !MHZ2(i) && MHZ1(i)) \
			|| (!MHZ4(i) && MHZ2(i) && MHZ1(i)))

#define CLKVLA(i)	((!MHZ4(i) && MHZ2(i) && !MHZ1(i)) \
			|| (!MHZ8(i) && MHZ2(i) && !MHZ1(i)))

#define LOADSR80(i)	(!MHZ8(i) && MHZ4(i) && MHZ2(i))

#define LOADSR40(i)	((MHZ8(i) && !MHZ4(i) && MHZ2(i) && MHZ1(i)) \
			|| (!MHZ8(i) && MHZ4(i) && MHZ2(i) && MHZ1(i)))

	
/* map output to logical lines */

#define F0(i)		CASIIT(i)
#define F1(i)		RAST(i)
#define F2(i)		CASI(i)
#define F3(i)		MUXA(i)
#define F4(i)		DRAMRWT(i)
#define F5(i)		CLKVLA(i)
#define F6(i)		(!LOADSR80(i))
#define F7(i)		(!LOADSR40(i))

int main(int argc, char *argv[]) {

	int i;
	unsigned int b;
	
	for(i=0;i<32;i++) {
	  b=0;

	  if ( F0(i) ) {
	    b|=1;
	  }
	  if ( F1(i) ) {
	    b|=2;
	  }
	  if ( F2(i) ) {
	    b|=4;
	  }
	  if ( F3(i) ) {
	    b|=8;
	  }
	  if ( F4(i) ) {
	    b|=16;
	  }
	  if ( F5(i) ) {
	    b|=32;
	  }
	  if ( F6(i) ) {
	    b|=64;
	  }
	  if ( F7(i) ) {
	    b|=128;
	  }
	  printf("%c",b);
	}

	return 0;
}


