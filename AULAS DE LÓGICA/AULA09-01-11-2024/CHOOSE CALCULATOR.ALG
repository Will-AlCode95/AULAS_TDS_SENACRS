Algoritmo "Choose Calculator F1000"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Antonio Carlos Nicolodi 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 01/11/2024
Var
// Se��o de Declara��es das vari�veis 
n1,n2: real
operacao: caracter
total: real

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 
escreva("informe numero 1: ")
leia(n1)
escreva( "escolha a opera��o (+-*/): ")
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
escreval("resultado da opera��o: ",resultado:2:1)
fimse

Fimalgoritmo