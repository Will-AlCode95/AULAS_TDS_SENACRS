Algoritmo "Trabalhando com matriz"

Var
// Se��o de Declara��es das vari�veis 
num: vetor[1..2,1..2] de inteiro
i, j: inteiro

Inicio
// Trabalhando com matriz

   para i de 1 ate 2 faca
         para j de 1 ate 2 faca
              escreva("Digite um n�mero na posi��o [",i,", ",j,"]: ")
              leia(num[i,j])
         fimpara
   fimpara
   escreval("######################################")
   escreval("O valor que est� na posi��o [1,1] �: ",num[1,1])
   escreval("O valor que est� na posi��o [1,2] �: ",num[1,2])
   escreval("O valor que est� na posi��o [2,1] �: ",num[2,1])
   escreval("O valor que est� na posi��o [2,2] �: ",num[2,2])


Fimalgoritmo