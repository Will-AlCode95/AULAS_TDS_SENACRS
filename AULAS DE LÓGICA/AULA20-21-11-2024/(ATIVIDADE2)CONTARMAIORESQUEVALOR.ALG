Algoritmo "ContarMaioresQueValor"

//Programa conta quantos elementos de uma matriz 3x3 s�o maiores que um valor informado pelo usu�rio

Var
   matriz: vetor[1..3, 1..3] de inteiro
   valor, contador, i, j: inteiro

Inicio
   contador <- 0

   // Preenchendo a matriz com os valores
   para i de 1 ate 3 faca
       para j de 1 ate 3 faca
           escreva("Digite o valor da posi��o [", i, ",", j, "]: ")
           leia(matriz[i,j])
       fimpara
   fimpara

   // Solicitando o valor para compara��o
   escreva("Digite o valor para compara��o: ")
   leia(valor)

   // Contando os elementos maiores que o valor
   para i de 1 ate 3 faca
       para j de 1 ate 3 faca
           se matriz[i,j] > valor entao
               contador <- contador + 1
           fimse
       fimpara
   fimpara

   escreval("Quantidade de elementos maiores que ", valor, " �: ", contador)
Fimalgoritmo
