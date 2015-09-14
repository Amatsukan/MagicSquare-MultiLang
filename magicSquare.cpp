#include <iostream>
#include <stdlib.h>
#include <vector>

unsigned int L;
int actualValue = 1;
int LIMIT;
unsigned int x = 0;
unsigned int y = 0;

void printSquare(std::vector< std::vector<int> > &square){
    for(int i = 0; i<L; i++){
        for(int j = 0; j<L; j++){
            std::cout<<square[i][j]<<'\t';
        }
        std::cout<<std::endl;
    }
}

void second(std::vector< std::vector<int> > &square){
    std::cout<<"2. O primeiro número é posicionada no meio da primeira coluna."<<std::endl;
    y = (int)(L/2);
    square[x][y] = actualValue++;
    printSquare(square); 
}

void fourth(std::vector< std::vector<int> > &square){
    if(actualValue == LIMIT) {return;}
    std::cout<<"4. Caso já haja um número na nova posição, volta-se a posição antiga\n e apenas descemos linha. A coluna continua a mesma."<<std::endl;
    
    y = (y+((L*2)-1))%L;
    x = (x+2)%L;

    square[x][y] = actualValue++;
    printSquare(square);
}

void third(std::vector< std::vector<int> > &square){
    x =(x+((L*2)-1))%L;
    y =(y+1)%L;   

    if(square[x][y] != 0){
        fourth(square);
        return;
    }
    std::cout<<"3. O próximo número é colocado deslocando uma posição para cima \ne  uma posição para direita. Caso seja alcançada uma das \nbordas do quadrado, a posição é invertida."<<std::endl;
    square[x][y] = actualValue++;
    printSquare(square);
}

int main(int argc, char ** argv){
    if(argc !=2){
        std::cout<<"Erro de argumentos: passe um numero impar para definir os lados do quadrado."<<std::endl;
        return 1;
    }else if(atoi(argv[1])%2 != 1) {
        std::cout<<"FALHA: violação da regra 1, \n\t1. A matriz sempre terá os lados ímpares."<<std::endl;
        return 1;
    }else{
        std::cout<<"1. A matriz sempre terá os lados ímpares."<<std::endl;
    }

    L = atoi(argv[1]);
    LIMIT = L*L;

    std::vector< std::vector<int> > square(L, std::vector<int>(L));

    second(square);
    
    for(int i = 1; i<LIMIT; i++){
        third(square);
    }
    return 0;
}
