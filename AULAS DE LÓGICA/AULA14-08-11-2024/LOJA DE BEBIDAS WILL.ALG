Algoritmo "LOJA DE BEBIDAS"
// Disciplina   : [Linguagem e L�gica de Programa��o] 
// Professor   : Antonio Carlos Nicolodi 

Var
// Se��o de Declara��es das vari�veis
total, subtotal, pagamento: real
quantidade, opcao, quanttotal, pag: inteiro
bebida, sn, parcela, s: caracter

Inicio
// Inicializa��es
total <- 0
quanttotal <- 0
sn <- "S"
s <- "S"

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
   fimenquanto

   escreval("==============================================")
   escreval("Quantidade total de bebidas compradas: ", quanttotal, " unidades.")
   escreval("Valor total da sua compra R$ ", total:2:2)

   enquanto ((s = "S") ou (s = "s")) faca
   escreva ("     FORMAS DE PAGAMENTO    ")
   escreval
   escreva ("1- Venda a vista em dinheiro ou PIX - desconto 10%")
  escreval
  escreva ("2- Venda no cart�o de d�bito - desconto de 5%")
  escreval
  escreva ("3- Venda no cart�o de cr�dito 1x - mesmo pre�o")
  escreval
  escreva ("4- Venda no cart�o de cr�dito 2x - acr�scimo de 5%")
  escreval
  escreva ("5- Venda no cart�o de cr�dito 3x - acr�scimo de 10%")
  escreval
  escreva ("6- Venda com cart�o de cr�dito 4x - acr�scimo 15%")
  escreval
  escreva ("Escolha uma das op��es acima: ")
   leia (pag)

   se((pag <1 ) ou (pag > 6))entao
    escreval("Voc� escolheu uma op��o errada!")
    escreval("deseja continuar?(S/N)")
    leia(s)
   senao
      escolha (pag)
      escreval
      escreval
      caso = 1
      pagamento <- total - (total*0.10)
      parcela <- "a vista em dinheiro ou PIX - desconto 10%"
      caso = 2
      pagamento <- total - (total*0.05)
      parcela <- "cart�o de d�bito - desconto de 5%"
      caso = 3
      pagamento <- total
      parcela <- "cart�o de cr�dito 1x - mesmo pre�o"
      caso = 4
      pagamento <- total + (total*0.05)
      parcela <- "cart�o de cr�dito 2x - acr�scimo de 5%"
      caso = 5
      pagamento <- total + (total*0.10)
      parcela <- "cart�o de cr�dito 3x - acr�scimo de 10%"
      caso = 6
      pagamento <- total + (total*0.15)
      parcela <- "cart�o de cr�dito 4x - acr�scimo 15%"
      outrocaso
      escreval ("Op��o inv�lida!")
      fimescolha
      escreval("=================CHECKOUT==================")
      escreval("forma de pagamento: ",parcela)
      escreval("Valor total da sua compra R$ ", pagamento:2:2)
  fimse
  fimenquanto
Fimalgoritmo