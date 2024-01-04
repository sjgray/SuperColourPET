


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

#define NOROM(i)	(!I0(i))
#define RAMON(i)	(!I1(i))
#define RAMSEL9(i)	(!I2(i))
#define RAMSELA(i)	(!I3(i))
#define NOIO(i)		(!I4(i))
#define NOSCREEN(i)	I5(i)
#define BRW(i)		I6(i)
#define PHI2(i)		I7(i)
#define BA8(i)		I8(i)
#define BA9(i)		I9(i)
#define BA10(i)		I10(i)
#define BA11(i)		I11(i)
#define BA12(i)		I12(i)
#define BA13(i)		I13(i)
#define BA14(i)		I14(i)
#define BA15(i)		I15(i)

/* calculate output signals */

#define CSWFF(i)	(BA8(i) && BA9(i) && BA10(i) && BA11(i) && BA12(i) && BA13(i) && BA14(i) && BA15(i) && (!BRW(i)))

#define CS9(i)		(BA12(i) && !BA13(i) && !BA14(i) && BA15(i) && !NOROM(i) && !RAMON(i) && !RAMSEL9(i))

#define CSA(i)		(!BA12(i) && BA13(i) && !BA14(i) && BA15(i) && !NOROM(i) && !RAMON(i) && !RAMSELA(i))

#define CSIO(i)		(!BA8(i) && !BA9(i) && !BA10(i) && BA11(i) && !BA12(i) && BA13(i) && BA14(i) && BA15(i) && ( \
			  !NOIO(i) \
			  || (!NOROM(i) && !RAMON(i)) \
			  || (!NOROM(i) && !RAMSELA(i)) \
			))
			
#define CSE(i)		(BRW(i) && !BA12(i) && BA13(i) && BA14(i) && BA15(i) && ( \
			  (!NOROM(i) && ( \
			    BA8(i) \
			    || BA9(i) \
			    || BA10(i) \
			    || !BA11(i) \
			  ) && ( \
			    !RAMON(i) \
			    || (!RAMSEL9(i) && !RAMSELA(i)) \
			  )) \
			  || (NOROM(i) && !NOIO(i) && BA11(i) && ( \
			    BA8(i) \
			    || BA9(i) \
			    || BA10(i) \
			  )) \
			))
	
#define CSKB(i)		(!NOROM(i) && BRW(i) && BA15(i) && ( \
			  (!RAMON(i) && !BA13(i) && BA14(i)) \
			  || (!RAMON(i) && BA12(i) && BA13(i)) \
			  || (!RAMSELA(i) && BA12(i) && BA13(i) && BA14(i)) \
			))

#define FA12(i)		(! \
			  (!NOROM(i) && !RAMON(i) && BRW(i) && BA15(i) && ( \
			    (!BA12(i) && !BA13(i) && BA14(i)) \
			    || (BA12(i) && BA13(i) && !BA14(i)) \
			  )) \
			)

#define CASENAI(i)	(PHI2(i) && ( \
			  !BA15(i) \
			  || (!NOSCREEN(i) && !BA12(i) && !BA13(i) && !BA14(i)) \
			  || (!NOROM(i) && ( \
			    (!BA12(i) && !BA13(i) && !BA14(i)) \
			    || (RAMSEL9(i) && !BA13(i) && !BA14(i)) \
			    || (RAMSELA(i) && !BA12(i) && !BA14(i)) \
			    || (RAMON(i) && ( \
			      !BA14(i) \
			      || !BA13(i) \
			      || (RAMSEL9(i) && !BA12(i) && ( \
				BA8(i) \
				|| BA9(i) \
				|| BA10(i) \
				|| !BA11(i) \
			      )) \
			      || (RAMSELA(i) && ( \
				BA8(i) \
				|| BA9(i) \
				|| BA10(i) \
				|| !BA11(i) \
				|| BA12(i) \
				|| NOIO(i) \
			      )) \
			    )) \
			    || (!BRW(i) && ( \
			      !BA14(i) \
			      || !BA13(i) \
			      || BA12(i) \
			      || !BA11(i) \
			      || BA10(i) \
			      || BA9(i) \
			      || BA8(i) \
			    )) \
			  )) \
			))

	
/* map output to logical lines */

#define F0(i)		CSWFF(i)
#define F1(i)		(!CS9(i))
#define F2(i)		(!CSA(i))
#define F3(i)		(!CSIO(i))
#define F4(i)		(!CSE(i))
#define F5(i)		(!CSKB(i))
#define F6(i)		FA12(i)
#define F7(i)		(!CASENAI(i))


int main(int argc, char *argv[]) {

	int i;
	unsigned int b;
	
	for(i=0;i<65536;i++) {
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


