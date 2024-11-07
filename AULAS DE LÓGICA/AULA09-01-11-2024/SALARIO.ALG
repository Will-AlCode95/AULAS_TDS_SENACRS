Algoritmo "semnome"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 01/11/2024
Var
// Seção de Declarações das variáveis 
salario,total: real
categoria: caracter


Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
   escreva("Salário do Funcionário: ")
   leia(salario)
escreva("Escolha a categoria (a)50% de aumento (b)30% de aumento (c)10% de aumento: ")
   leia(categoria)

se((categoria = "A") ou (categoria="B") ou (categoria="C") ou (categoria="D"))entao
 escolha (categoria)
      caso "A"
         total <- total + (salario * 0.50)
      caso "B"
         total <- total + (salario * 0.30)
      caso "C"
         total <- total + (salario * 0.10)

      outrocaso
      escreval("voce escolheu errado!")
      fimescolha


escreval("resultado da operação: ",total:2:3)
fimse





Fimalgoritmo