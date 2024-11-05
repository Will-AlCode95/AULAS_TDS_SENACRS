Algoritmo "Menu de Pagamento"
// Disciplina   : [Linguagem e Lógica de Programação]
// Data atual  : 04/11/2024
Var
// Seção de Declarações das variáveis 
nome:caracter
valor:real
opcao:real
contrario:inteiro

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
escreval("digite o nome do vendedor: ")
leia(nome)
escreval("digite o valor: ")
leia(valor)
escreval("===========MENU DE PAGAMENTO===========")
escreval("1- venda a vista - desconto 10% ")
escreval("2- venda a prazo 30 dias - desconto 5%")
escreval("3- venda a prazo 60 dias - s/desconto")
escreval("4- venda a prazo 90 dias - acréscimo de 5%")
escreval("5- venda com cartão de débito - desconto de 8%")
escreval("6- venda com cartão de crédito - desconto de 7%")
escreval("digite o numero da opção desejada: ")
leia(opcao)

se (opcao >= 1) e (opcao <= 6) entao
    escolha opcao
      caso 1
         opcao <- valor - (valor * 0.10)
         escreval("Desconto de 10% aplicado!")
      caso 2
         opcao <- valor - (valor * 0.05)
          escreval("Desconto de 5% aplicado!")
      caso 3
         opcao <- valor
         escreval("Valor s/Desconto")
      caso 4
         opcao <- valor + (valor * 0.05)
         escreval("Acréscimo de 5% aplicado!")
      caso 5
         opcao <- valor - (valor * 0.08)
         escreval("Desconto de 8% aplicado!")
      caso 6
         opcao <- valor - (valor * 0.07)
         escreval("Desconto de 7% aplicado!")
      fimescolha

    escreval("==========VALOR DA NOTA============")
    escreval("Nome do Vendedor: ",nome)
    escreval("valor total da compra: ",opcao)

senao
      escreval("======CÓDIGO INVÁLIDO!======")
      escreval("==========ERROR!============")
fimse

Fimalgoritmo