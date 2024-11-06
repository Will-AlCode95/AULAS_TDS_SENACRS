Algoritmo "Choose Calculator F1000"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 01/11/2024
Var
// Seção de Declarações das variáveis 
n1,n2: real
operacao: caracter
total: real

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
escreva("informe numero 1: ")
leia(n1)
escreva( "escolha a operação (+-*/): ")
leia(operacao)
escreva("informe numero 2: ")
leia(n2)

escolha (operacao)
  caso "+"
  total <- n1 + n2
  caso "-"
  total <- n1 - n2
  caso "*"
  total <- n1 * n2
  caso "/"
  total <- n1 / n2
  outrocaso
  escreval("voce escolheu errado!")
fimescolha

se((operacao = "+") ou (operacao="-") ou (operacao="*") ou (operacao="/"))entao
escreval("resultado da operação: ",resultado:2:1)
fimse

Fimalgoritmo