algoritmo "Empresa de Vendas"
// Fun��o :
var
comissao, venda: real
nome, op: caracter

inicio
// Se��o de Comandos
op <- "S"
enquanto (op = "S") ou (op = "s") faca
escreva (" Digite o nome corretor de im�veis: ")
leia (nome)
escreval
escreva (" Digite o valor do imovel que ele vendeu: R$")
leia (venda)
escreval
escreval
se (venda >= 50000 ) entao
   comissao <- venda*0.20
senao
   se (venda >=30000) entao
      comissao <- venda*0.15
   senao
      se (venda < 30000) entao
        comissao <- venda*0.10
      fimse
   fimse
fimse
escreval
escreval
escreva (" Nome do corretor: ", nome)
escreval
escreval (" Valor total da comiss�o da vendas do corretor foi: R$ ", comissao)
           escreval("########################################")
           escreval("Deseja continuar pesquisando S/N: ")
           leia(op)
fimenquanto

fimalgoritmo
