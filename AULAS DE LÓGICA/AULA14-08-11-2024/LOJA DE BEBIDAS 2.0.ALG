Algoritmo "LOJA DE BEBIDAS 2.0"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi

Var
// Seção de Declarações das variáveis
total, subtotal, pagamento, totalArrecadadoDia: real
quantidade, opcao, quanttotal, pag, totalBebidasVendidas: inteiro
bebida, sn, parcela: caracter

Inicio
// Inicializações
total <- 0
quanttotal <- 0
totalArrecadadoDia <- 0
totalBebidasVendidas <- 0
sn <- "S"

// Seção de Comandos
enquanto ((sn = "S") ou (sn = "s")) faca
   escreval("=================BAR DO WILL=================")
   escreval("===============MENU DE BEBIDAS==============")
   escreval("[1] Suco de Laranja R$ 3,00")
   escreval("[2] Água Mineral R$ 2,00")
   escreval("[3] Refrigerante R$ 4,50")
   escreval("[4] Chá Gelado R$ 3,50")
   escreva("Selecione uma das opções: ")
   leia(opcao)

   // Verificação da opção selecionada
   se (opcao < 1) ou (opcao > 4) entao
      escreval("Você escolheu uma opção inválida!")
      escreval("Realize a compra novamente!")
   senao
      escreva("Quantas bebidas você deseja comprar: ")
      leia(quantidade)
      quanttotal <- quanttotal + quantidade
      totalBebidasVendidas <- totalBebidasVendidas + quantidade  // Acumula bebidas do dia

      escolha opcao
         caso 1
            subtotal <- quantidade * 3.00
            bebida <- "Suco de Laranja"
         caso 2
            subtotal <- quantidade * 2.00
            bebida <- "Água Mineral"
         caso 3
            subtotal <- quantidade * 4.50
            bebida <- "Refrigerante"
         caso 4
            subtotal <- quantidade * 3.50
            bebida <- "Chá Gelado"
      fimescolha

      total <- total + subtotal
      escreval("=========================================")
      escreval("Você comprou ", quantidade, " unidade(s) de ", bebida)
      escreval("Subtotal desta compra: R$ ", subtotal:2:2)
      escreval("Valor total acumulado: R$ ", total:2:2)
      escreval("==============================================")
   fimse

   escreval("Deseja continuar comprando S/N: ")
   leia(sn)
fimenquanto

escreval("==============================================")
escreval("Quantidade total de bebidas compradas: ", quanttotal, " unidades.")
escreval("Valor total da sua compra R$ ", total:2:2)

escreval("     FORMAS DE PAGAMENTO    ")
escreval("1- Venda a vista em dinheiro ou PIX - desconto 10%")
escreval("2- Venda no cartão de débito - desconto de 5%")
escreval("3- Venda no cartão de crédito 1x - mesmo preço")
escreval("4- Venda no cartão de crédito 2x - acréscimo de 5%")
escreval("5- Venda no cartão de crédito 3x - acréscimo de 10%")
escreval("6- Venda com cartão de crédito 4x - acréscimo 15%")
escreva("Escolha uma das opções acima: ")
leia(pag)

se((pag <1 ) ou (pag > 6))entao
   escreval("Você escolheu uma opção errada!")
senao
   escolha (pag)
      caso 1
         pagamento <- total - (total * 0.10)
         parcela <- "à vista em dinheiro ou PIX - desconto 10%"
      caso 2
         pagamento <- total - (total * 0.05)
         parcela <- "cartão de débito - desconto de 5%"
      caso 3
         pagamento <- total
         parcela <- "cartão de crédito 1x - mesmo preço"
      caso 4
         pagamento <- total + (total * 0.05)
         parcela <- "cartão de crédito 2x - acréscimo de 5%"
      caso 5
         pagamento <- total + (total * 0.10)
         parcela <- "cartão de crédito 3x - acréscimo de 10%"
      caso 6
         pagamento <- total + (total * 0.15)
         parcela <- "cartão de crédito 4x - acréscimo de 15%"
   fimescolha

   // Atualização do total arrecadado durante o dia
   totalArrecadadoDia <- totalArrecadadoDia + pagamento

   escreval("=================CHECKOUT==================")
   escreval("Forma de pagamento: ", parcela)
   escreval("Quantidade total de bebidas compradas: ", quanttotal, " unidades.")
   escreval("Valor total da sua compra R$ ", pagamento:2:2)
fimse

// Fechamento do sistema ao final do dia
escreval("===========FECHAMENTO DO SISTEMA===========")
escreval("Total de bebidas vendidas no dia: ", totalBebidasVendidas, " unidades.")
escreval("Valor total arrecadado no dia: R$ ", totalArrecadadoDia:2:2)
escreval("===========================================")

Fimalgoritmo
