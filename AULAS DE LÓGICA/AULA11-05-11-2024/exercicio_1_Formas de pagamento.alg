algoritmo "Op��o de pagamento com a fun��o escolha"
// Fun��o : Tipos de pagamentos
var
nome: caracter
pagamento, venda: real
op: inteiro

inicio
// Utilizando a fun��o escolha no sistema de op��es de pagamento
escreval("## Sistema de controle de pagamento ##")
escreva ("Digite o nome do cliente: ")
leia(nome)
escreva (" Digite o valor da compra: R$ ")
leia (venda)
escreval
escreva ("     FORMAS DE PAGAMENTO    ")
escreval
escreva ("1- Venda a vista- desconto 10%")
escreval
escreva ("2- Venda a prazo 30 dias- desconto de 5%")
escreval
escreva ("3- Venda a prazo 60 dias- mesmo pre�o")
escreval
escreva ("4- Venda a prazo 90 dias- acr�scimo de 5%")
escreval
escreva ("5- Venda com cart�o de d�bito- desconto de 8%")
escreval
escreva ("6- Venda com cart�o de cr�dito- desconto de 7%")
escreval
escreva ("Escolha uma das op��es acima: ")
leia (op)
escreval
   se((op <1 ) ou (op > 6))entao
    escreval("Voc� escolheu uma op��o errada!")
    escreval("Tente novamente!")
   senao
      escolha (op)
      escreval
      escreval
      caso = 1
      pagamento <- venda-(venda*0.10)
      caso = 2
      pagamento <- venda-(venda*0.05)
      caso = 3
      pagamento <- venda
      caso = 4
      pagamento <- venda+(venda*0.05)
      caso = 5
      pagamento <- venda-(venda*0.08)
      caso = 6
      pagamento <- venda-(venda*0.07)
      outrocaso
      escreval ("Op��o inv�lida!")
      fimescolha
escreval
escreval
escreva (" Nome do vendedor: ", nome)
escreval
escreva (" Total da venda: R$", pagamento)
   fimse


fimalgoritmo

