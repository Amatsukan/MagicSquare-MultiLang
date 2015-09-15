MAGIC SQUARE MULTI-LANG

![][license-badge]

Magic square(quadrado magico) é uma matriz quadrada (Ah vá? Sério mesmo?) que a soma de todos elementos de uma
certa coluna ou linha dá sempre o mesmo valor para todas as linhas e colunas.

#Regras de criação:

    1. A matriz sempre terá os lados ímpares.

    2. O primeiro número é posicionada no meio da primeira coluna.

    3. O próximo número é colocado deslocando uma posição para cima e  uma posição para direita. Caso seja 
    alcançada uma das bordas do quadrado, a posição é invertida. 

    4. Caso já haja um número na nova posição, volta-se a posição antigan e apenas descemos linha. A coluna 
    continua a mesma.

#Modo de uso :

C       ~> Compilar com gcc (gcc magicSquare.c -o ms), e depois executar com o numero por parametro (./ms 3) 
C++     ~> Compilar com o g++ (g++ magicSquare.cpp -o ms), e depois executar da mesma maneira que o 'C'
Java    ~> Compilar com o javac (javac magicSquare.java), e depois executar com o java passando um numero por parametro(java magicSquare 3)
ruby    ~> Apenas executar com o ruby(ruby magicSquare.rb)
