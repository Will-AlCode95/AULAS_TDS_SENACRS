Algoritmo "semnome"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Antonio Carlos Nicolodi 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 01/11/2024
Var
// Se��o de Declara��es das vari�veis 
salario,total: real
categoria: caracter


Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 
   escreva("Sal�rio do Funcion�rio: ")
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


escreval("resultado da opera��o: ",total:2:3)
fimse





Fimalgoritmo