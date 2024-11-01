Algoritmo "Calculadora PRO"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 01/11/2024
Var
// Seção de Declarações das variáveis 
 n1, n2: inteiro
 resultado: real
 operacao:caracter

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
escreval("=============Calculadora PRO================")
escreva("informe o primeiro numero: ")
leia(n1)
escreva("informe a operação matemática {+-*/}: ")
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



escreval("Resultado da operação:",resultado)
 senao
  escreval("voce escolheu uma operação matemática errada")

fimse


Fimalgoritmo