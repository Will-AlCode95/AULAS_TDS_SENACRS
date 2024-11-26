algoritmo "LOJA_DO_WILE(Ver.2.0)"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Miguel
Var
   total, subtotal: real
   quantidade, opcao, quanttotal, parcelas, i, indice, forma_pagamento: inteiro
   brinquedo, sn: caracter
   produtos: vetor[1..100] de caracter
   precos: vetor[1..100] de real
   quantidades: vetor[1..100] de inteiro
   valor_final, valor_parcela: real

// Procedimento para exibir o menu
Procedimento ExibirMenu()
Inicio
   escreval("========== LOJA DO WILE ==========")
   escreval("========= MENU DE OPÇÕES =======")
   escreval("1 - Carrinho Super Maquina              R$ 180,00")
   escreval("2 - Boneca Barbie                       R$  90,00")
   escreval("3 - Boneco GI JOE                       R$ 150,00")
   escreval("4 - Video-Game Mega Drive               R$ 400,00")
   escreval("5 - Jogo Sonic3 for Mega Drive          R$ 120,00")
   escreval("6 - Computador IBM Pentium4(Win98)      R$ 2.000,00")

FimProcedimento

// Função para retornar o preço do brinquedo
Função SelecionarBrinquedo(opcao: inteiro): real
Inicio
   Escolha opcao
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
FimFunção

// Função para calcular o pagamento
Função CalcularPagamento(total,forma_pagamento: inteiro): real
Var
   valor_final: real
Inicio
   Escolha forma_pagamento
      Caso 1
      valor_final <- total * 0.95 // 5% desconto
      Caso 2
      valor_final <- total       // preço sem alteração
      Caso 3
      valor_final <- total * 1.05 // 5% acréscimo
      Caso 4
      valor_final <- total * 1.05 // 5% acréscimo
      Caso 5
      valor_final <- total * 1.08 // 8% acréscimo
      Caso 6
      valor_final <- total * 1.08 // 8% acréscimo
      Caso 7
      valor_final <- total * 1.10 // 10% acréscimo
      OutroCaso
      valor_final <- -1        // opção inválida
   FimEscolha
   Retorne valor_final
FimFunção

Inicio
   total <- 0
   quanttotal <- 0
   indice <- 0
   sn <- "S"

   Enquanto ((sn = "S") ou (sn = "s")) Faca
      ExibirMenu()
      escreva("Selecione uma das opções: ")
      Leia(opcao)

      subtotal <- SelecionarBrinquedo(opcao)

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
         brinquedo <- "Computador IBM Pentium4(Win98)"
         Outrocaso
         brinquedo <- "Inválido"
      FimEscolha

      Se (subtotal > 0) Entao
         escreva("Quantidade de brinquedos: ")
         Leia(quantidade)

         subtotal <- subtotal * quantidade

         total <- total + subtotal
         quanttotal <- quanttotal + quantidade

         indice <- indice + 1
         produtos[indice] <- brinquedo
         precos[indice] <- SelecionarBrinquedo(opcao)
         quantidades[indice] <- quantidade

         escreval("Você comprou ", quantidade, " unidade(s) de ", brinquedo)
         escreval("Você vai pagar R$ ", subtotal:2:2)
         escreval("Valor total da sua compra até o momento: R$ ", total:2:2)
      Senao
         escreval("Você escolheu uma opção inválida!")
      FimSe

      escreval("Deseja continuar comprando S/N: ")
      Leia(sn)
   FimEnquanto

   limpatela

   escreval("===== FORMAS DE PAGAMENTO =====")
   escreval("1 - À vista em dinheiro ou PIX, 5% de desconto")
   escreval("2 - No cartão de débito, mesmo preço")
   escreval("3 - No cartão de crédito em 1x, acréscimo de 5%")
   escreval("4 - No cartão de crédito em 2x, acréscimo de 5%")
   escreval("5 - No cartão de crédito em 3x, acréscimo de 8%")
   escreval("6 - No cartão de crédito em 4x, acréscimo de 8%")
   escreval("7 - No cartão de crédito em 5x, acréscimo de 10%")
   escreval("Escolha a forma de pagamento: ")
   Leia(forma_pagamento)

   limpatela

   escreval("===== RESUMO DA COMPRA =====")
   Para i <- 1 Ate indice Faca
      escreval("Produto: ", produtos[i], ", Preço Unitário: R$ ", precos[i]:2:2, ", Quantidade: ", quantidades[i])
   FimPara
   escreval("Quantidade total de brinquedos comprados: ", quanttotal, " unidades.")
   escreval("Valor total da sua compra R$ ", total:2:2)

   valor_final <- CalcularPagamento(total, forma_pagamento)

   Se (valor_final = -1) Entao
      escreval("Forma de pagamento inválida!")
   Senao
      escreval("Valor total a ser pago: R$ ", valor_final:2:2)

      Se (forma_pagamento >= 3) e (forma_pagamento <= 7) Entao
         parcelas <- forma_pagamento - 2
         valor_parcela <- valor_final / parcelas
         escreval("Parcelado em ", parcelas, "x de R$ ", valor_parcela:2:2)
      FimSe
   FimSe

   escreval("Obrigado por comprar na LOJA DO WILE =)")
Fimalgoritmo
