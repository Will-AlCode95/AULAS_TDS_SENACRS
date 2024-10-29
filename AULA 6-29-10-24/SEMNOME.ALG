Algoritmo "Comissão de venda do Corretor"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 29/10/2024
Var
// Seção de Declarações das variáveis 
comissao,venda: real
nome: caracter

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
escreva("digite o nome do corretor: ")
leia(nome)
escreva("digite o valor do imóvel: ")
leia(venda)

se (venda >= 50000) entao
   comissao <- venda*0.20
senao (venda => 30000) entao
   comissao <- venda*0.15
se (venda < 30000 ) entao
   comissao <- venda*0.10
fimse
fimse



escreval("=======dados do corretor=======")



Fimalgoritmo