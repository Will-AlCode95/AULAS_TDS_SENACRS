Algoritmo "Trabalhando com fun��o"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Antonio Carlos Nicolodi 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 19/11/2024
Var
// Se��o de Declara��es das vari�veis 
 numero, resultado: real
 
funcao Dobro(valor: real): real
    var
    //v�ri�veis da fun��o
    total: real
    inicio
    //inicio da fun��o
    total <- valor * 2
     retorne total
fimfuncao

Inicio
// Utilizando fun��o
      escreval("## Sistema utilizando fun��o ##")
      escreva("Digite um n�mero: ")
      leia(numero)
      
      resultado <- Dobro(numero)
      
      escreval("Valor do calculo realizado na fun��o: ",resultado)

Fimalgoritmo