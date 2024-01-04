

#include <stdio.h>

/* define input parameters */

#define	I0(i)		(i & 1)
#define I1(i)		((i >> 1) & 1)
#define I2(i)		((i >> 2) & 1)
#define I3(i)		((i >> 3) & 1)
#define I4(i)		((i >> 4) & 1)
#define I5(i)		((i >> 5) & 1)
#define I6(i)		((i >> 6) & 1)
#define I7(i)		((i >> 7) & 1)
#define I8(i)		((i >> 8) & 1)
#define I9(i)		((i >> 9) & 1)
#define I10(i)		((i >> 10) & 1)
#define I11(i)		((i >> 11) & 1)
#define I12(i)		((i >> 12) & 1)
#define I13(i)		((i >> 13) & 1)
#define I14(i)		((i >> 14) & 1)
#define I15(i)		((i >> 15) & 1)

/* map input to signals */

#define CASENAI(i)	I0(i)
#define PHI2(i)		I1(i)
#define BRW(i)		I2(i)
#define BA11(i)		I3(i)
#define BA12(i)		I4(i)
#define BA13(i)		I5(i)
#define BA14(i)		I6(i)
#define BA15(i)		I7(i)
#define CR7_ENABLE(i)	I8(i)
#define CR6_IOPEEK(i)	I9(i)
#define CR5_SCRPEEK(i)	I10(i)
#define CR4_RES(i)	I11(i)
#define CR3_HIBLK(i)	I12(i)
#define CR2_LOBLK(i)	I13(i)
#define CR1_HIWP(i)	I14(i)
#define CR0_LOWP(i)	I15(i)

/* calculate output signals */

#define FA15(i)		((BA15(i) && !CR7_ENABLE(i)) \
			|| (!BA12(i) && !BA13(i) && !BA14(i) && BA15(i) && CR5_SCRPEEK(i)) \
			|| (!BA14(i) && BA15(i) && CR2_LOBLK(i)) \
			|| (BA14(i) && BA15(i) && CR3_HIBLK(i)) \
			|| (BA11(i) && !BA12(i) && BA13(i) && BA14(i) && BA15(i) && CR6_IOPEEK(i)) )

#define CASENAII(i)	((CASENAI(i) && PHI2(i) && BA15(i) && CR7_ENABLE(i)) && ( \
			  (BRW(i) && (	\
			    (!BA13(i) && !CR5_SCRPEEK(i)) \
			    || (BA12(i)) \
			    || (!BA13(i) && BA14(i)) \
			    || (!BA14(i) && BA13(i)) \
			    || (!BA11(i) && BA14(i)) \
			    || (BA14(i) && !CR6_IOPEEK(i)) \
			  )) \
			  || (BA14(i) && !BA11(i) && !CR1_HIWP(i)) \
			  || (BA14(i) && BA12(i) && !CR1_HIWP(i)) \
			  || (BA14(i) && !BA13(i) && !CR1_HIWP(i)) \
			  || (BA14(i) && !CR6_IOPEEK(i) && !CR1_HIWP(i)) \
			  || (!BA14(i) && BA12(i) && !CR0_LOWP(i)) \
			  || (!BA14(i) && BA13(i) && !CR0_LOWP(i)) \
			  || (!BA14(i) && !CR5_SCRPEEK(i) && !CR0_LOWP(i)) \
			))

#define NOSCREEN(i)	(CR7_ENABLE(i) && !CR5_SCRPEEK(i))

#define ENDRA(i)	( \
			  (!CASENAI(i) && PHI2(i)) \
			  || (PHI2(i) && BA15(i) && CR7_ENABLE(i) && ( \
			      (BRW(i) && ( \
			          (!BA13(i) && !CR5_SCRPEEK(i)) \
			          || BA12(i) \
			          || (!BA13(i) && BA14(i)) \
			          || (!BA14(i) && BA13(i)) \
			          || (!BA11(i) && BA14(i)) \
			          || (BA14(i) && !CR6_IOPEEK(i)) \
			        ) \
			      ) \
			      || (BA14(i) && !BA11(i) && !CR1_HIWP(i)) \
			      || (BA14(i) && BA12(i) && !CR1_HIWP(i)) \
			      || (BA14(i) && !BA13(i) && !CR1_HIWP(i)) \
			      || (BA14(i) && !CR6_IOPEEK(i) && !CR1_HIWP(i)) \
			      || (!BA14(i) && BA12(i) && !CR0_LOWP(i)) \
			      || (!BA14(i) && BA13(i) && !CR0_LOWP(i)) \
			      || (!BA14(i) && !CR5_SCRPEEK(i) && !CR0_LOWP(i)) \
			    ) \
			  ) \
			)
		
/* map output to logical lines */

#define F4(i)		(!ENDRA(i))
#define F5(i)		NOSCREEN(i)
#define F6(i)		CASENAII(i)
#define F7(i)		FA15(i)	  


int main(int argc, char *argv[]) {

	int i;
	unsigned int b;
	
	for(i=0;i<65536;i++) {
	  b=0;

	  if (     ((i & 0x0182) == 0x0080)
		|| ((i & 0x0181) == 0x0081)
		|| ((i & 0x04f2) == 0x0480)
		|| ((i & 0x04f1) == 0x0481)
		|| ((i & 0x24c2) == 0x2480)
		|| ((i & 0x14c2) == 0x14c0)
		|| ((i & 0xa4c5) == 0xa481)
		|| ((i & 0x06fa) == 0x06e8)
		|| ((i & 0x54c5) == 0x54c1)
		|| ((i & 0x06f9) == 0x06e9)
	  ) {
	    b|=1;
	  }
	  if (     ((i & 0x0182) == 0x0080)
		|| ((i & 0x0181) == 0x0081)
		|| ((i & 0x04f2) == 0x0480)
		|| ((i & 0x04f1) == 0x0481)
		|| ((i & 0x24c2) == 0x2480)
		|| ((i & 0x14c2) == 0x14c0)
		|| ((i & 0xa4c5) == 0xa481)
		|| ((i & 0x06fa) == 0x06e8)
		|| ((i & 0x54c5) == 0x54c1)
		|| ((i & 0x06f9) == 0x06e9)
	  ) {
	    b|=2;
	  }
	  if (     ((i & 0x0182) == 0x0080)
		|| ((i & 0x0181) == 0x0081)
		|| ((i & 0x04f2) == 0x0480)
		|| ((i & 0x04f1) == 0x0481)
		|| ((i & 0x24c2) == 0x2480)
		|| ((i & 0x14c2) == 0x14c0)
		|| ((i & 0xa4c5) == 0xa481)
		|| ((i & 0x06fa) == 0x06e8)
		|| ((i & 0x54c5) == 0x54c1)
		|| ((i & 0x06f9) == 0x06e9)
	  ) {
	    b|=4;
	  }
	  if (     ((i & 0x0182) == 0x0080)
		|| ((i & 0x0181) == 0x0081)
		|| ((i & 0x04f2) == 0x0480)
		|| ((i & 0x04f1) == 0x0481)
		|| ((i & 0x24c2) == 0x2480)
		|| ((i & 0x14c2) == 0x14c0)
		|| ((i & 0xa4c5) == 0xa481)
		|| ((i & 0x06fa) == 0x06e8)
		|| ((i & 0x54c5) == 0x54c1)
		|| ((i & 0x06f9) == 0x06e9)
	  ) {
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
	  b^=(1|2|4|8);
	  printf("%c",b);
	}

	return 0;
}

