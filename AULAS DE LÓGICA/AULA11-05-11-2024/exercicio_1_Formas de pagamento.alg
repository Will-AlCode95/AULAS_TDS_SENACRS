algoritmo "Opção de pagamento com a função escolha"
// Função : Tipos de pagamentos
var
nome: caracter
pagamento, venda: real
op: inteiro

inicio
// Utilizando a função escolha no sistema de opções de pagamento
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
escreva ("3- Venda a prazo 60 dias- mesmo preço")
escreval
escreva ("4- Venda a prazo 90 dias- acréscimo de 5%")
escreval
escreva ("5- Venda com cartão de débito- desconto de 8%")
escreval
escreva ("6- Venda com cartão de crédito- desconto de 7%")
escreval
escreva ("Escolha uma das opções acima: ")
leia (op)
escreval
   se((op <1 ) ou (op > 6))entao
    escreval("Você escolheu uma opção errada!")
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
      escreval ("Opção inválida!")
      fimescolha
escreval
escreval
escreva (" Nome do vendedor: ", nome)
escreval
escreva (" Total da venda: R$", pagamento)
   fimse


fimalgoritmo

