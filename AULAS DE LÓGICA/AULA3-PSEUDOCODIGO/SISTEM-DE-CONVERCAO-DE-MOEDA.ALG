Algoritmo "Sistema de convercao de moeda"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Antonio Carlos Nicolodi 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 22/10/2024
Var
// Se��o de Declara��es das vari�veis 
reais, dolar, cotacao: real

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 
// sistema de convers�o de moeda
escreval ("## Sistema para convers�o de reais para dolar##")
escreval("informe o valor de reais que deseja converter para dolar: R$ ")
leia(reais)
escreval("Informe a cota��o do dolar hoje: R$ ")
leia(cotacao)

dolar <- reais / cotacao
escreval("Valor da convers�o para dolar: $ ", dolar:2:2)
escreval("#################################")
escreval("## Sistema de convers�o de dolar para reais ##")
escreva("Informe o valor em dolar que deseja converter para reais: $ ")
leia(dolar)
escreval("Informe a cota��o do dolar hoje: R$ ")
leia(cotacao)

reais <- dolar * cotacao
escreval("Valor da convers�o para reais: R$ ",reais:2:2)

Fimalgoritmo