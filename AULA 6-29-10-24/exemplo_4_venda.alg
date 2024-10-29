algoritmo "Empresa de Vendas"
// Função :
var
comissao, venda: real
nome: caracter

inicio
// Seção de Comandos
escreva (" Digite seu nome: ")
leia (nome)
escreval
escreva (" Digite o valor do imovel: R$")
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
escreva (" Valor total da comissão da vendas: R$ ", comissao)




fimalgoritmo
