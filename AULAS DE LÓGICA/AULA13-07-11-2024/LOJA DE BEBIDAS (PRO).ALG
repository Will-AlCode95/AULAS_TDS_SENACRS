Algoritmo "LOJA DE BEBIDAS"

Var
// Seção de Declarações das variáveis
total, subtotal: real
quantidade, opcao, quanttotal: inteiro
bebida, sn: caracter

Inicio
// Inicializações
total <- 0
quanttotal <- 0
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
      escreval("Você vai pagar R$ ", subtotal:2:2)
      escreval("Valor total da sua compra até o momento: R$ ", total:2:2)
      escreval("==============================================")
   fimse

   escreval("Deseja continuar comprando S/N: ")
   leia(sn)
   escreval("==============================================")

fimenquanto

escreval("Quantidade total de bebidas compradas: ", quanttotal, " unidades.")
escreval("Valor total da sua compra R$ ", total:2:2)

Fimalgoritmo