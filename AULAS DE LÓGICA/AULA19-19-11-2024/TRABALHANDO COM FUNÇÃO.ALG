Algoritmo "trabalahndo com fun��o"

Var
// Se��o de Declara��es das vari�veis
numero, resultado: real

funcao Dobro(valor: real): real
      var
      //vari�veis da fun��o
      total: real
      inicio
      //inicio da fun��o
      total <- valor * 2
      retorne total
fimfuncao

Inicio
// utilizando a fun��o
 escreval("=================Sistema utilizando a fun��o==================")
 escreva("digite um n�mero: ")
 leia(numero)

resultado <- Dobro(numero)

 escreval("valor do calculo realizado na fun��o: ",resultado)

Fimalgoritmo