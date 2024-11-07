algoritmo "Sorveteria"
//Descrição: Sistema para realizar compras de picolés
var
total, subtotal: real
quantidade, opcao, quanttotal: inteiro
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
escreval("#############################################")
escreval("Quantidade total de picolés comprados: ", quanttotal, " unidades.")
escreva (" Valor total da sua compra R$ ",total:2:2)
fimalgoritmo
