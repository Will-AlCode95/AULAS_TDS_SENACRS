Algoritmo "SISTEM DE JUROS DE PRESTAÇÃO ATRASADA"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 22/10/2024
Var
// Seção de Declarações das variáveis 
  valorDivida, jurosAtraso, diasAtrasado, valorFinal: real

Inicio

// Seção de Comandos, procedimento, funções, operadores, etc... 
   //jurosAtraso <- 0,02

   escreval("Informe o valor da dívida: R$ ")
   leia(valorDivida)
   escreval("Informe o número de dias em atraso: ")
   leia(diasAtrasado)

// Calcula os juros a 2% por dia
    jurosAtraso <- valorDivida * 0.02 * diasAtrasado //exemplo:100+0,02%+30=60

// Calcula o total a ser pago
    valorFinal <- valorDivida + jurosAtraso  //100+60 = 160

// Exibe os resultados
    escreval("Valor da dívida: R$ ", valorDivida:3:2)
    escreval("Total de juros: R$ ", jurosAtraso:3:2)
    escreval("Total a ser pago: R$ ", valorFinal:3:2)



Fimalgoritmo

