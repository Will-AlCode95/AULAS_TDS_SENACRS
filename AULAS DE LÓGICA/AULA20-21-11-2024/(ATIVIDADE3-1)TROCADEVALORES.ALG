Algoritmo "ExemploTrocaDeValores"
// Disciplina   : [Linguagem e L�gica de Programa��o] 
// Professor   :Miguel 
Var valor1, valor2, temp: inteiro

// Fun��o para trocar os valores
funcao trocarValores: inteiro
   var temp: inteiro
   temp <- x
   x <- y
   y <- temp
   retorna y // Retorna o valor de y ap�s a troca
fimfuncao

Inicio
   escreva("Digite o valor de a: ")
   leia(valor1)
   escreva("Digite o valor de b: ")
   leia(valor2)

   // Chama a fun��o para trocar os valores de valor1 e valor2 e atribui os valores de volta
   temp <- valor1
   valor1 <- valor2
   valor2 <- temp

   escreval("Ap�s a troca:")
   escreval("Valor1 fica: ", valor1)
   escreval("Valor2 fica: ", valor2)
Fimalgoritmo

