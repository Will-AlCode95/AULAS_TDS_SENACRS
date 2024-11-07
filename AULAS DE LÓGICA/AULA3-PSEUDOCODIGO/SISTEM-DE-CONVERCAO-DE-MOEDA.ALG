Algoritmo "Sistema de convercao de moeda"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 22/10/2024
Var
// Seção de Declarações das variáveis 
reais, dolar, cotacao: real

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
// sistema de conversão de moeda
escreval ("## Sistema para conversão de reais para dolar##")
escreval("informe o valor de reais que deseja converter para dolar: R$ ")
leia(reais)
escreval("Informe a cotação do dolar hoje: R$ ")
leia(cotacao)

dolar <- reais / cotacao
escreval("Valor da conversão para dolar: $ ", dolar:2:2)
escreval("#################################")
escreval("## Sistema de conversão de dolar para reais ##")
escreva("Informe o valor em dolar que deseja converter para reais: $ ")
leia(dolar)
escreval("Informe a cotação do dolar hoje: R$ ")
leia(cotacao)

reais <- dolar * cotacao
escreval("Valor da conversão para reais: R$ ",reais:2:2)

Fimalgoritmo