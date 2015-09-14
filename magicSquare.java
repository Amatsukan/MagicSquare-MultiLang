public class magicSquare{
    
    static int[][] square;

    static int L, LIMIT, x=0, y=0, actual_val=1;

    public static void printSquare(){
        for(int i = 0; i < square.length; i++){
            for(int j = 0; j < square[i].length; j++){
                System.out.printf("%d\t",square[i][j]);
            }
            System.out.println();
        }
    }

    public static void first(){
        System.out.println("1. A matriz sempre terá os lados ímpares.");
    }

    public static void second(){
        System.out.println("2. O primeiro número é posicionada no meio da primeira coluna.");
        y = (int)(L/2);
        square[x][y] = actual_val;
        printSquare(); 
    }

    public static void third(){
        x =(x+((L*2)-1)) % L;
        y =(y+1) % L;

        if(square[x][y] != 0){
            fourth();
            return;     
        }

        System.out.println("3. O próximo número é colocado deslocando uma posição para cima \n"
                            +"e  uma posição para direita. Caso seja alcançada uma das \n"
                            +"bordas do quadrado, a posição é invertida.");
        square[x][y] = actual_val;
        printSquare();
    }

    public static void fourth(){
        y = (y+((L*2)-1)) % L;
        x = (x+2) % L;

        System.out.println("4. Caso já haja um número na nova posição, volta-se a posição antiga \n"
                            +"e apenas descemos linha. A coluna continua a mesma.");
        square[x][y] = actual_val;
        printSquare();
    }

    public static void main(String[] args){
        if(args.length == 1){
            L = Integer.parseInt(args[0]);

            if(L%2 != 0){
                square = new int[L][L];
                first();
                second();
                LIMIT = L*L;
                for(actual_val = 2; actual_val <= LIMIT; actual_val++){
                    third();
                }

            }else{
                System.out.println("FALHA: violação da regra 1, \n\t1. A matriz sempre terá os lados ímpares.:");
            }

        }else{
            System.out.println("Erro de argumentos: passe um numero impar para definir os lados do quadrado");
        }

    }
}
