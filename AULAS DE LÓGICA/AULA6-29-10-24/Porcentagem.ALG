Algoritmo "Comiss�o de venda do Corretor"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Antonio Carlos Nicolodi 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 29/10/2024
Var
// Se��o de Declara��es das vari�veis 
comissao,valor: real
nome: caracter

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 
escreva("digite o nome do corretor: ")
leia(nome)
escreva("digite o valor do im�vel: ")
leia(valor)

se (valor >= 50000) entao
   comissao <- valor*0.20  //valor_digitado * 0.20%
senao (valor => 30000) entao
   se comissao <- valor*0.15 //valor_digitado * 0.15%
     senao (valor < 30000 ) entao
   comissao <- valor*0.10   //valor_digitado * 0.10%
fimse
fimse



escreval("=======dados do corretor=======")
 // Exibir o nome do corretor, valor do im�vel e comiss�o
escreval("Corretor: ", nome)
escreval("Valor do Im�vel: R$", valor)
escreval("Comiss�o: R$", comissao)


Fimalgoritmo