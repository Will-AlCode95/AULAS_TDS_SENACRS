Algoritmo "quantidade"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 24/10/2024
Var
// Seção de Declarações das variáveis 
quantidade: inteiro
precoUnitario, total: real
Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 

  escreval("Quantas balas você deseja: ")
   leia(quantidade)

 se (quantidade < 10) entao
         precoUnitario <- 2
      senao
         precoUnitario <- 1.8
      fimse

      total <- precoUnitario * quantidade

      escreval("Preço unitário: R$", precoUnitario:4:2)
      escreval("Total da compra: R$", total:4:2)



Fimalgoritmo

