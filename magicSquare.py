#!/usr/bin/python
# -*- coding: utf-8 -*-

import sys
import numpy

if len(sys.argv) != 2 :
    sys.exit("Erro de argumentos: passe um numero impar para definir os lados do quadrado")
elif int(sys.argv[1])%2 != 1:
    sys.exit("FALHA: violação da regra 1, \n\t1. A matriz sempre terá os lados ímpares.")

x = 0
y = 0
L = int(sys.argv[1])
LIMIT = L*L
square = [[0 for i in range(L)] for i in range(L)]
actual_val = 1

################################################################
#DEFINITIONS
################################################################
def printSquare():
    s = ""
    for i in range(L):
        for j in range(L):
            s = s+'['+str(square[i][j])+']'
        s = s+'\n'
    print(s)

def first():
    print("1. A matriz sempre terá os lados ímpares.")
    printSquare()

def second():
    global y, x, actual_val, square
    y = L/2
    print("2. O primeiro número é posicionada no meio da primeira coluna.")
    square[x][y] = actual_val
    actual_val += 1
    printSquare()

def third():
    global x,y,square, actual_val
    x =(x+((L*2)-1))%L
    y =(y+1)%L
    if square[x][y] == 0 :
        print("3. O próximo número é colocado deslocando uma posição para cima \ne  uma posição para direita. Caso seja alcançada uma das \nbordas do quadrado, a posição é invertida.")       
        square[x][y] = actual_val
        actual_val += 1
        printSquare()
    else:
        fourth()

def fourth():
    global x,y,square, actual_val
    print("4. Caso já haja um número na nova posição, volta-se a posição antiga\n e apenas descemos linha. A coluna continua a mesma.");
    y = (y+((L*2)-1))%L;
    x = (x+2)%L;
    square[x][y] = actual_val
    actual_val += 1
    printSquare()

################################################################
#MAKE THE MAGIC
################################################################
first()

second()

while actual_val <= LIMIT :
    third()
