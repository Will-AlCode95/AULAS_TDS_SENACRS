Algoritmo "quantidade"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Antonio Carlos Nicolodi 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 24/10/2024
Var
// Se��o de Declara��es das vari�veis 
quantidade: inteiro
precoUnitario, total: real
Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 

  escreval("Quantas balas voc� deseja: ")
   leia(quantidade)

 se (quantidade < 10) entao
         precoUnitario <- 2
      senao
         precoUnitario <- 1.8
      fimse

      total <- precoUnitario * quantidade

      escreval("Pre�o unit�rio: R$", precoUnitario:4:2)
      escreval("Total da compra: R$", total:4:2)



Fimalgoritmo

