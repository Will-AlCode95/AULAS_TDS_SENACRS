Algoritmo "Menu de Pagamento"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Data atual  : 04/11/2024
Var
// Se��o de Declara��es das vari�veis 
nome:caracter
valor:real
opcao:real
contrario:real
parcelas:real
totalpar:real

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 
escreval("digite o nome do vendedor: ")
leia(nome)
escreval("digite o valor: ")
leia(valor)
escreval("===========MENU DE PAGAMENTO===========")
escreval("[1]- venda a vista - desconto 10% ")
escreval("[2]- venda a prazo 30 dias - desconto 5%")
escreval("[3]- venda a prazo 60 dias - s/desconto")
escreval("[4]- venda a prazo 90 dias - acr�scimo de 5%")
escreval("[5]- venda com cart�o de d�bito - desconto de 8%")
escreval("[6]- venda com cart�o de cr�dito 1x - desconto de 7%")
escreval("[7]- cart�o de cr�dito parc/3x c/juros 10%parc")
escreval("digite o numero da op��o desejada: ")
leia(opcao)

se (opcao >= 1) e (opcao <= 7) entao
    escolha opcao
      caso = 1
         opcao <- valor - (valor * 0.10)
         escreval("Desconto de 10% aplicado!")
      caso = 2
         opcao <- valor - (valor * 0.05)
          escreval("Desconto de 5% aplicado!")
      caso = 3
         opcao <- valor
         escreval("Valor s/Desconto")
      caso = 4
         opcao <- valor + (valor * 0.05)
         parcelas <- opcao / 2
         escreval("Acr�scimo de 5% aplicado!")
      caso = 5
         opcao <- valor - (valor * 0.08)
         escreval("Desconto de 8% aplicado!")
      caso = 6
         opcao <- valor - (valor * 0.07)
         escreval("Desconto de 7% aplicado!")

      fimescolha

    escreval("==========VALOR DA NOTA============")
    escreval("Nome do Vendedor: ",nome)
    escreval("valor total da compra: ",opcao)
    escreval("valor da parcela: ",parcelas)
senao
      escreval("======C�DIGO INV�LIDO!======")
      escreval("==========ERROR 104!============")
fimse

Fimalgoritmo