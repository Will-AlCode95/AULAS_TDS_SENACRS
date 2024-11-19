Algoritmo "trabalahndo com função"

Var
// Seção de Declarações das variáveis
numero, resultado: real

funcao Dobro(valor: real): real
      var
      //variáveis da função
      total: real
      inicio
      //inicio da função
      total <- valor * 2
      retorne total
fimfuncao

Inicio
// utilizando a função
 escreval("=================Sistema utilizando a função==================")
 escreva("digite um número: ")
 leia(numero)

resultado <- Dobro(numero)

 escreval("valor do calculo realizado na função: ",resultado)

Fimalgoritmo