
CC=gcc
CFLAGS=-g -Wall

all: decodeqm4 ue5.sim ue6.sim uc2.sim

clean:
	rm -f decodeqm4 work/* ue5check ue5check2 ue6check ue6check2 uc2check

ue5.sim: ue5check2 ue5.hex
	./ue5check2 > work/ue5.sim
	hexdump -C work/ue5.sim > work/ue5.sim.hex
	diff -u work/ue5.sim.hex work/ue5.hex

ue6.sim: ue6check2 ue6.hex
	./ue6check2 > work/ue6.sim
	hexdump -C work/ue6.sim > work/ue6.sim.hex
	diff -u work/ue6.sim.hex work/ue6.hex

uc2.sim: uc2check uc2.hex
	./uc2check > work/uc2.sim
	hexdump -C work/uc2.sim > work/uc2.sim.hex
	diff -u work/uc2.sim.hex work/uc2.hex

ue5.hex: 
	cat orig/ue5-1 orig/ue5-2 > work/ue5
	hexdump -C work/ue5 > work/ue5.hex

ue6.hex: 
	cat orig/ue6-1 orig/ue6-2 > work/ue6
	hexdump -C work/ue6 > work/ue6.hex

uc2.hex: 
	hexdump -C orig/uc2 > work/uc2.hex

decodeqm4: decodeqm4.c
	${CC} ${CFLAGS} $< -o $@

ue5check: ue5check.c
	${CC} ${CFLAGS} $< -o $@

uc2check: uc2check.c
	${CC} ${CFLAGS} $< -o $@

ue5check2: ue5check2.c
	${CC} ${CFLAGS} $< -o $@

ue6check: ue6check.c
	${CC} ${CFLAGS} $< -o $@

ue6check2: ue6check2.c
	${CC} ${CFLAGS} $< -o $@

