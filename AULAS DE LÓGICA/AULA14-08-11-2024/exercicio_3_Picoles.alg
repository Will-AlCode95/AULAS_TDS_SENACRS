algoritmo "Sorveteria"
// Disciplina   : [Linguagem e Lógica de Programação] 
// Professor   : Antonio Carlos Nicolodi 
//Descrição: Sistema para realizar compras de picolés
var
total, subtotal, parcelamento: real
quantidade, opcao, quanttotal, oppagamento: inteiro
picole, op: caracter
inicio
// Sistema para venda de picoles
op <- "S"
enquanto ((op = "S")ou(op = "s")) faca

escreval("## Sorveteria do sor Miguel ##")
escreval ("### Menu de saboras de Picolés ###")
escreval ("1- Picolé de uva R$ 1,00")
escreval("2- picolé de laranja R$ 1,25")
escreval("3- picolé de milho R$ 1,50")
escreval("4- picolé de coco queimado R$ 1,80")
escreval("5- picolé de tamarindo R$ 2,00")
escreva("Selecione umas das opções: ")
leia (opcao)
escreval

se((opcao <= 0) ou (opcao > 5))entao
   escreval("Você escolheu uma opção inválida!")
   escreval("Realize a compra novamente!")
senao
   escreva("Quantos picoles você deseja compra: ")
   leia (quantidade)
   quanttotal <- quanttotal + quantidade
   escreval("#####################################")
   se (opcao = 1) entao
      subtotal <- quantidade*1.00
      picole <- "Uva"
      senao
         se (opcao = 2) entao
            subtotal <- quantidade*1.25
            picole <- "Laranja"
         senao
            se (opcao = 3) entao
               subtotal <- quantidade*1.50
               picole <- "Milho"
            senao
              se(opcao = 4)entao
              subtotal <- quantidade * 1.80
              picole <- "Coco queimado"
              senao
                 se(opcao = 5)entao
                 subtotal <- quantidade * 2.00
                 picole <- "Tamarindo"
                 fimse
              fimse
            fimse
         fimse
   fimse
   escreval ("Você comprou ",quantidade," unidade(s) do picolé de ",picole)

   escreval (" Você vai pagar R$ ",subtotal:2:2)

   total <- total + subtotal
   escreval("Valor total da sua compra até o momento: R$ ",total:2:2)
fimse
           escreval("################################")
           escreval("Deseja continuar comprando S/N: ")
           leia(op)
fimenquanto

//Opções de pagamento no sistema
oppagamento <- 0
enquanto ((oppagamento <= 0)ou(oppagamento > 6)) faca
   escreval("-------------------------------")
   escreval("## Menu de forma de pagamento ##")
   escreval("1 - A vista em dinheiro ou PIX, 10% de desconto")
   escreval("2 - No cartão de débito, 5% de desconto")
   escreval("3 - No cartão de crédito 1x, mesmo valor")
   escreval("4 - No cartão de crédito em 2x, acréscimo de 5%")
   escreval("5 - No cartão de crédito em 3x, acréscimo de 10%")
   escreval("6 - No cartão de crédito em 4x, acréscimo de 15%")
   escreva("Escolha uma opção: ")
   leia(oppagamento)
   escreval("-----------------------------")
   escreval("Quantidade total de picolés comprados: ", quanttotal, " unidades.")

   se((opcao <= 0) ou (opcao > 6))entao
   escreval("Você escolheu uma opção de pagamento inválida!")
   senao
      escolha (oppagamento)
        caso 1
        total <- total-(total * 0.10)
        escreval("Sua compra teve um desconto de 10%")
        caso 2
        total <- total-(total * 0.05)
        escreval("Sua compra teve um desconto de 5%")
        caso 3
        total <- total
        caso 4
        total <- total+(total * 0.05)
        parcelamento <- total / 2
        escreval("Sua compra teve um acréscimo de 5%, parcelado em 2x de R$ ",parcelamento:2:2)
        caso 5
        total <- total+(total * 0.10)
        parcelamento <- total / 3
        escreval("Sua compra teve um acréscimo de 10%, parcelado em 3x de R$ ",parcelamento:2:2)
        caso 6
        total <- total+(total * 0.15)
        parcelamento <- total / 4
        escreval("Sua compra teve um acréscimo de 15%, parcelado em 4x de R$ ",parcelamento:2:2)
        outrocaso
        escreval("Você escolheu uma opção de forma de pagamento errada!")

      fimescolha
    fimse

   escreval (" Valor total da sua compra R$ ",total:2:2)
   escreval("-----------------------------")

fimenquanto
          escreval
          escreval("Obrigado por comprar na nossa loja, volte sempre!")
fimalgoritmo
