Algoritmo "LOJA DE BEBIDAS"
// Disciplina   : [Linguagem e L�gica de Programa��o] 
// Professor   : Antonio Carlos Nicolodi 

Var
// Se��o de Declara��es das vari�veis
total, subtotal: real
quantidade, opcao, quanttotal: inteiro
bebida, sn: caracter

Inicio
// Inicializa��es
total <- 0
quanttotal <- 0
sn <- "S"

// Se��o de Comandos
enquanto ((sn = "S") ou (sn = "s")) faca
   escreval("=================BAR DO WILL=================")
   escreval("===============MENU DE BEBIDAS==============")
   escreval("[1] Suco de Laranja R$ 3,00")
   escreval("[2] �gua Mineral R$ 2,00")
   escreval("[3] Refrigerante R$ 4,50")
   escreval("[4] Ch� Gelado R$ 3,50")
   escreva("Selecione uma das op��es: ")
   leia(opcao)

   // Verifica��o da op��o selecionada
   se (opcao < 1) ou (opcao > 4) entao
      escreval("Voc� escolheu uma op��o inv�lida!")
      escreval("Realize a compra novamente!")
   senao
      escreva("Quantas bebidas voc� deseja comprar: ")
      leia(quantidade)
      quanttotal <- quanttotal + quantidade

      escolha opcao
         caso 1
            subtotal <- quantidade * 3.00
            bebida <- "Suco de Laranja"
         caso 2
            subtotal <- quantidade * 2.00
            bebida <- "�gua Mineral"
         caso 3
            subtotal <- quantidade * 4.50
            bebida <- "Refrigerante"
         caso 4
            subtotal <- quantidade * 3.50
            bebida <- "Ch� Gelado"
      fimescolha

      total <- total + subtotal

      escreval("=========================================")
      escreval("Voc� comprou ", quantidade, " unidade(s) de ", bebida)
      escreval("Voc� vai pagar R$ ", subtotal:2:2)
      escreval("Valor total da sua compra at� o momento: R$ ", total:2:2)
      escreval("==============================================")
   fimse

   escreval("Deseja continuar comprando S/N: ")
   leia(sn)
   escreval("==============================================")
   escreval("Quantidade total de bebidas compradas: ", quanttotal, " unidades.")
   escreval("Valor total da sua compra R$ ", total:2:2)

fimenquanto
Fimalgoritmo