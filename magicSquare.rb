require 'matrix'

puts "Digite um numero inteiro impar para definir o tamanho da matriz"

L = gets.chomp.to_i
LIMIT = L*L
$x = 0
$y = Integer(L/2)

#####################################################################################
class SetableMatrix < Matrix
      public :"[]=", :set_element, :set_component
end

def fourth(matrix, value)
    puts "4. Caso já haja um número na nova posição, volta-se a posição antiga\n e apenas descemos linha. A coluna continua a mesma."

    $x = ($x+2) % L
    $y = ($y-1) % L

    matrix[$x,$y] = value

    puts matrix
end

def third(matrix, value)
    $x = ($x-1) % L
    $y = ($y+1) % L
    if matrix[$x,$y] == 0
        puts "3. O próximo número é colocado deslocando uma posição para cima \ne  uma posição para direita. Caso seja alcançada uma das \nbordas do quadrado, a posição é invertida."
        matrix[$x,$y] = value
        puts matrix
    else
        fourth(matrix,value)
    end
end

#####################################################################################

m = nil

class SetableMatrix < Matrix
      public :"[]=", :set_element, :set_component
end

if L%2 != 0
    puts "1. A matriz sempre terá os lados ímpares."
    m = SetableMatrix.zero(L)
    
    puts "2. O primeiro número é posicionada no meio da primeira coluna."
    m[$x,$y] = 1
    
    puts m

    for i in 2..LIMIT
        third(m , i)
    end

else
    puts "FALHA: violação da regra 1, \n\t1. A matriz sempre terá os lados ímpares."
end

