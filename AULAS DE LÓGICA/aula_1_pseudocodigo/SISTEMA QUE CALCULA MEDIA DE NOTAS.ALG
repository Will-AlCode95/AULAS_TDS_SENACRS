Algoritmo "SISTEM DE JUROS DE PRESTA��O ATRASADA"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Antonio Carlos Nicolodi 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 22/10/2024
Var
// Se��o de Declara��es das vari�veis 
  valorDivida, jurosAtraso, diasAtrasado, valorFinal: real

Inicio

// Se��o de Comandos, procedimento, fun��es, operadores, etc... 
   //jurosAtraso <- 0,02

   escreval("Informe o valor da d�vida: R$ ")
   leia(valorDivida)
   escreval("Informe o n�mero de dias em atraso: ")
   leia(diasAtrasado)

// Calcula os juros a 2% por dia
    jurosAtraso <- valorDivida * 0.02 * diasAtrasado //exemplo:100+0,02%+30=60

// Calcula o total a ser pago
    valorFinal <- valorDivida + jurosAtraso  //100+60 = 160

// Exibe os resultados
    escreval("Valor da d�vida: R$ ", valorDivida:3:2)
    escreval("Total de juros: R$ ", jurosAtraso:3:2)
    escreval("Total a ser pago: R$ ", valorFinal:3:2)



Fimalgoritmo

