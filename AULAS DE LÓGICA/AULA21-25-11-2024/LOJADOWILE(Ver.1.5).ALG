Algoritmo "LOJA DE KIDSFUN"
// Disciplina   : [Linguagem e Lógica de Programação] 
// Professor   :Miguel 

Var
   valor_parcela,total, subtotal,valor_final: real
   quantidade, opcao, quanttotal, parcelas, i, indice, forma_pagamento: inteiro
   brinquedo: caracter
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

// Função para retornar o preço do brinquedo
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

// Função para calcular o pagamento
Funcao CalcularPagamento(total,forma_pagamento:inteiro): real
Var
   valor_final: real
Inicio
   Escolha forma_pagamento
      Caso 1
         valor_final <- total * 0.95
      Caso 2
         valor_final <- total
      Caso 3
         valor_final <- total * 1.10
      OutroCaso
         valor_final <- -1 // Indica erro em forma de pagamento
   FimEscolha
   Retorne valor_final
FimFuncao


Inicio
   total <- 0
   quanttotal <- 0
   indice <- 0
   sn <- "S"

   Enquanto ((sn = "S") ou (sn = "s")) Faca
      ExibirMenu()
      escreva("Selecione uma das opções: ")
      Leia(opcao)

      // Chamando a função para obter apenas o preço do brinquedo
      subtotal <- SelecionarBrinquedo(opcao)

      // Determinar o nome do brinquedo com base na opção
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
            brinquedo <- "Inválido"
      FimEscolha

      Se (subtotal > 0) Entao
         escreva("Quantidade de brinquedos: ")
         Leia(quantidade)

         subtotal <- subtotal * quantidade

         total <- total + subtotal
         quanttotal <- quanttotal + quantidade

         // Guardar informações sobre o produto
         indice <- indice + 1
         produtos[indice] <- brinquedo
         precos[indice] <- SelecionarBrinquedo(opcao)
         quantidades[indice] <- quantidade

         limpatela

         escreval("=========================================")
         escreval("Você comprou ", quantidade, " unidade(s) de ", brinquedo)
         escreval("Você vai pagar R$ ", subtotal:2:2)
         escreval("Valor total da sua compra até o momento: R$ ", total:2:2)
         escreval("==============================================")
      Senao
         escreval("Você escolheu uma opção inválida!")
         escreval("Realize a compra novamente!")
      Fimse

      escreval("Deseja continuar comprando S/N: ")
      Leia(sn)
   Fimenquanto

   escreval("==============================================")
   escreval("Quantidade total de brinquedos comprados: ", quanttotal, " unidades.")
   escreval("Valor total da sua compra R$ ", total:2:2)

   escreval("===== FORMAS DE PAGAMENTO =====")
   escreval("1 - À vista em dinheiro ou PIX, 5% de desconto")
   escreval("2 - No cartão de débito, mesmo preço")
   escreval("3 - No cartão de crédito com acréscimo de 10%")
   escreval("Escolha a forma de pagamento: ")
   Leia(forma_pagamento)

   // Chamar a função para calcular o pagamento

   valor_final <- CalcularPagamento(total, forma_pagamento)

Se (valor_final = -1) Entao
   escreval("Forma de pagamento inválida!")
Senao
   escreval("Valor total a ser pago: R$ ", valor_final:2:2)

   Se (forma_pagamento >= 3) Entao
      escreval("Informe o número de parcelas: ")
      Leia(parcelas)
      valor_parcela <- valor_final / parcelas
      escreval("Parcelado em ", parcelas, "x de R$ ", valor_parcela:2:2)
   FimSe
FimSe

   escreval("Obrigado por comprar na Loja de KidsFun!")
Fimalgoritmo
