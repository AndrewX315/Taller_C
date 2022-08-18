#*************************************************
#Fecha: 10-agosto-2022
#Autor: Andrés Camilo Cárdenas
#Materia: Parallel and Distribuited Computing
#Tema: Primer taller en C
#Tópico: Script Automatizacion Compilacion
#*************************************************/

GCC = gcc
FLAGS = -ansi -std=c99 -pedantic -Wall
MATHFLAG = -lm

PROGS = taller_1_main

all: $(PROGS)

taller_1_main: 
	$(GCC) $(FLAGS) -c $@.c
	$(GCC) $(FLAGS) -c taller_1_lib.c
	$(GCC) $(FLAGS) -o $@ $@.o taller_1_lib.o $(MATHFLAG)
	
clean:
	$(RM) *.o $(PROGS)
