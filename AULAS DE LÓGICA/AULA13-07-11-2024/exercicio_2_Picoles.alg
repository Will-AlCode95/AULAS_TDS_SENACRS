algoritmo "Sorveteria"
// Disciplina   : [Linguagem e L�gica de Programa��o] 
// Professor   : Antonio Carlos Nicolodi 
//Descri��o: Sistema para realizar compras de picol�s
var
total, subtotal: real
quantidade, opcao, quanttotal: inteiro
picole, op: caracter
inicio
// Sistema para venda de picoles
op <- "S"
enquanto ((op = "S")ou(op = "s")) faca

escreval("## Sorveteria do sor Miguel ##")
escreval ("### Menu de saboras de Picol�s ###")
escreval ("1- Picol� de uva R$ 1,00")
escreval("2- picol� de laranja R$ 1,25")
escreval("3- picol� de milho R$ 1,50")
escreval("4- picol� de coco queimado R$ 1,80")
escreval("5- picol� de tamarindo R$ 2,00")
escreva("Selecione umas das op��es: ")
leia (opcao)
escreval

se((opcao <= 0) ou (opcao > 5))entao
   escreval("Voc� escolheu uma op��o inv�lida!")
   escreval("Realize a compra novamente!")
senao
   escreva("Quantos picoles voc� deseja compra: ")
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
   escreval ("Voc� comprou ",quantidade," unidade(s) do picol� de ",picole)

   escreval (" Voc� vai pagar R$ ",subtotal:2:2)

   total <- total + subtotal
   escreval("Valor total da sua compra at� o momento: R$ ",total:2:2)
fimse
           escreval("################################")
           escreval("Deseja continuar comprando S/N: ")
           leia(op)
fimenquanto
escreval("#############################################")
escreval("Quantidade total de picol�s comprados: ", quanttotal, " unidades.")
escreva (" Valor total da sua compra R$ ",total:2:2)
fimalgoritmo
