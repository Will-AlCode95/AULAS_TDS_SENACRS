Algoritmo "LOJA DO WILE 1.0ver"
// LOJA DO WILE VERS�O SEM CHAMAR "FUN��O" PARA FAZER OS CALC�LOS DO PAGAMENTO

Var
   total, subtotal: real
   quantidade, opcao, quanttotal, parcelas, i, indice: inteiro
   brinquedo, forma_pagamento: caracter
   sn: caracter
   produtos: vetor[1..100] de caracter
   precos: vetor[1..100] de real
   quantidades: vetor[1..100] de inteiro

// Procedimento para exibir o menu
Procedimento ExibirMenu()
Inicio
   escreval("========== LOJA DO WILE ==========")
   escreval("===== MENU DE BRINQUEDOS =====")
   escreval("1 - Carrinho Super Maquina       R$ 180,00")
   escreval("2 - Boneca Barbie                R$  90,00")
   escreval("3 - Boneco GI JOE                R$ 150,00")
   escreval("4 - Video-Game Mega Drive3       R$ 400,00")
   escreval("5 - Jogo Sonic3 for Mega Drive   R$ 120,00")
   escreval("6 - Bike Caloi cross extra       R$ 2.000,00")
FimProcedimento

// Fun��o para retornar o pre�o do brinquedo
Funcao SelecionarBrinquedo(opcao: inteiro): real
Inicio
   Escolha (opcao)
      Caso 1
         Retorne 180.00
      Caso 2
         Retorne 90.00
      Caso 3
         Retorne 150.00
      Caso 4
         Retorne 400.00
      Caso 5
         Retorne 120.00
      Caso 6
         Retorne 2000.00
      OutroCaso
         Retorne 0.00
   FimEscolha
FimFuncao

Inicio
   total <- 0
   quanttotal <- 0
   indice <- 0
   sn <- "S"

   Enquanto ((sn = "S") ou (sn = "s")) Faca
      ExibirMenu()
      escreva("Selecione uma das op��es: ")
      Leia(opcao)

      // Chamando a fun��o para obter apenas o pre�o do brinquedo
      subtotal <- SelecionarBrinquedo(opcao)

      // Determinar o nome do brinquedo com base na op��o
      Escolha opcao
         Caso 1
            brinquedo <- "Carrinho Super Maquina"
         Caso 2
            brinquedo <- "Boneca Barbie"
         Caso 3
            brinquedo <- "Boneco GI JOE"
         Caso 4
            brinquedo <- "Video-Game Mega Drive3"
         Caso 5
            brinquedo <- "Jogo Sonic3 for Mega Drive"
         Caso 6
            brinquedo <- "Bike Caloi cross extra"
         OutroCaso
            brinquedo <- "Inv�lido"
      FimEscolha

      Se (subtotal > 0) Entao
         escreva("Quantidade de brinquedos: ")
         Leia(quantidade)

         subtotal <- subtotal * quantidade

         total <- total + subtotal
         quanttotal <- quanttotal + quantidade

         // Guardar informa��es sobre o produto
         indice <- indice + 1
         produtos[indice] <- brinquedo
         precos[indice] <- SelecionarBrinquedo(opcao)
         quantidades[indice] <- quantidade

         escreval("=========================================")
         escreval("Voc� comprou ", quantidade, " unidade(s) de ", brinquedo)
         escreval("Voc� vai pagar R$ ", subtotal:2:2)
         escreval("Valor total da sua compra at� o momento: R$ ", total:2:2)
         escreval("==============================================")
      Senao
         escreval("Voc� escolheu uma op��o inv�lida!")
         escreval("Realize a compra novamente!")
      Fimse

      escreval("Deseja continuar comprando S/N: ")
      Leia(sn)
   Fimenquanto

   escreval("==============================================")
   escreval("Quantidade total de brinquedos comprados: ", quanttotal, " unidades.")
   escreval("Valor total da sua compra R$ ", total:2:2)

   // Adicionando as formas de pagamento
     escreval("===== FORMAS DE PAGAMENTO =====")
   escreval("1 - � vista em dinheiro ou PIX, 5% de desconto")
   escreval("2 - No cart�o de d�bito, mesmo pre�o")
   escreval("3 - No cart�o de cr�dito em 1x, acr�scimo de 5%")
   escreval("4 - No cart�o de cr�dito em 2x, acr�scimo de 5%")
   escreval("5 - No cart�o de cr�dito em 3x, acr�scimo de 8%")
   escreval("6 - No cart�o de cr�dito em 4x, acr�scimo de 8%")
   escreval("7 - No cart�o de cr�dito em 5x, acr�scimo de 10%")
   escreval("Escolha a forma de pagamento: ")
   Leia(forma_pagamento)

   Escolha forma_pagamento
      Caso "1"
         total <- total * 0.95
         escreval("Pagamento � vista em dinheiro ou PIX. Valor com desconto: R$ ", total:2:2)
      Caso "2"
         escreval("Pagamento no cart�o de d�bito. Valor final: R$ ", total:2:2)
      Caso "3"
         total <- total * 1.05
         escreval("Pagamento no cart�o de cr�dito em 1x. Valor final com acr�scimo: R$ ", total:2:2)
      Caso "4"
         total <- total * 1.05
         escreval("Pagamento no cart�o de cr�dito em 2x. Valor final com acr�scimo: R$ ", total:2:2)
         escreval("Voc� pagar� em 2 parcelas de R$ ", (total / 2):2:2)
      Caso "5"
         total <- total * 1.08
         escreval("Pagamento no cart�o de cr�dito em 3x. Valor final com acr�scimo: R$ ", total:2:2)
         escreval("Voc� pagar� em 3 parcelas de R$ ", (total / 3):2:2)
      Caso "6"
         total <- total * 1.08
         escreval("Pagamento no cart�o de cr�dito em 4x. Valor final com acr�scimo: R$ ", total:2:2)
         escreval("Voc� pagar� em 4 parcelas de R$ ", (total / 4):2:2)
      Caso "7"
         total <- total * 1.10
         escreval("Pagamento no cart�o de cr�dito em 5x. Valor final com acr�scimo: R$ ", total:2:2)
         escreval("Voc� pagar� em 5 parcelas de R$ ", (total / 5):2:2)
      OutroCaso
         escreval("Forma de pagamento inv�lida!")
   FimEscolha

 escreval("========== RESUMO DA COMPRA =============")
   Para i de 1 ate indice Faca
      escreval(i, " - ", quantidades[i], "x ", produtos[i], " - R$ ", precos[i]:2:2, " cada")
   FimPara

   escreval("Valor total da compra: R$ ", total:2:2)
   Se (forma_pagamento = "2") ou (forma_pagamento = "3") Entao
      escreval("Forma de pagamento: Parcelado em ", parcelas, "x de R$ ", (total / parcelas):2:2)
   Senao
      escreval("Obrigado por comprar na Loja de KidsFun!")
   FimSe

Fimalgoritmo
