Algoritmo "Desconto para Chefia"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Data atual  : 10/29/2024
Var
// Se��o de Declara��es das vari�veis 
nome: caracter
valor, desconto, valorFinal: real
itens: inteiro

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 
escreva("Nome do cliente: ")
leia(nome)
escreva("Valor total da compra: ")
leia(valor)
escreva("Quantidade de itens: ")
leia(itens)

se (valor > 1000) entao
  desconto <- valor * 0.15
  senao
    se ( (valor >500) e (valor <= 1000) ) entao
       desconto <- valor * 0.10
       senao
          se (valor <= 500) entao
            desconto <- valor * 0.05
fimse
   fimse
          fimse
valorFinal <- desconto - valor

escreval("==========nota fiscal==========")
escreval("Nome: ",nome)
escreval("Quantidade de itens: ",itens)
escreval("Valor Total: R$",valor)
escreval("Valor do desconto: R$",desconto)
escreval("Valor final a ser pago: R$",valorFinal)


Fimalgoritmo









//Desafio 2: Desconto para Clientes de Supermercado
//Crie um programa que leia o nome de um cliente, o valor total da compra e a quantidade de itens.
//Aplique descontos conforme os crit�rios abaixo:

//Se o valor da compra � maior que R$ 1000, conceda um desconto de 15%.
//Se a compra for entre R$ 500 e R$ 1000, conceda um desconto de 10%.
//Se a compra for inferior a R$ 500, o desconto � de 5%.
//Mostre o nome do cliente, o valor total da compra, o desconto aplicado e o valor final a ser pago.