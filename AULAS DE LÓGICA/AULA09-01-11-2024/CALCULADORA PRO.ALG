Algoritmo "Calculadora PRO"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Antonio Carlos Nicolodi 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 01/11/2024
Var
// Se��o de Declara��es das vari�veis 
 n1, n2: inteiro
 resultado: real
 operacao:caracter

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 
escreval("=============Calculadora PRO================")
escreva("informe o primeiro numero: ")
leia(n1)
escreva("informe a opera��o matem�tica {+-*/}: ")
leia(operacao)
escreval("informe o segundo numero: ")
leia(n2)

se ((operacao = "+") ou (operacao = "-") ou (operacao = "*") ou (operacao = "/")) entao
escreval("informe o segundo numero: ")

se(operacao = "+") entao
 resultado <- n1 +n2
 senao
  se (operacao = "-") entao
   resultado <- n1 - n2
   senao
    se (operacao = "*") entao
     resultado <- n1 * n2
     senao
      se (operacao = "/") entao
       resultado <- n1/n2
fimse
fimse
fimse
fimse



escreval("Resultado da opera��o:",resultado)
 senao
  escreval("voce escolheu uma opera��o matem�tica errada")

fimse


Fimalgoritmo