#! /bin/bash

#
# Makefile #


CC = gcc CFLAGS =
LIBS = -lm

calcul: calculate.o main.o
$(CC) calculate.o main.o -o calcul $(LIBS) calcul


calculate.o: calculate.c calculate.h 
$(CC) -c calculate.c calculate.h $(CFLAGS)  


main.o: main.c calculate.h
$(CC) -c main.c calculate.h $(CFLAGS)


clean:
-rm calcul *.o *~

# End Makefile
