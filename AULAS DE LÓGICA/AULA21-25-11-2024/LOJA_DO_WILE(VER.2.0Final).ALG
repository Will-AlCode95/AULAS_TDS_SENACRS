algoritmo "LOJA_DO_WILE(Ver.2.0Final)"
// Disciplina   : [Linguagem e Lógica de Programação] 
// Professor   :Miguel 
// VERSÃO QUE CHAMA UMA FUNÇÃO QUE FAZ OS CALCÚLOS DO =FORMAS DE PAGAMENTO=
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
   escreval("================== LOJA DO WILE =================")
   escreval("================= MENU DE OPÇÕES: ================")
   escreval("1 - Carrinho Super Maquina              R$ 180,00")
   escreval("2 - Boneca Barbie                       R$  90,00")
   escreval("3 - Boneco GI JOE                       R$ 150,00")
   escreval("4 - Video-Game Mega Drive               R$ 400,00")
   escreval("5 - Jogo Sonic3 for Mega Drive          R$ 120,00")
   escreval("6 - Computador IBM Pentium4(Win98)      R$ 2.000,00")
   escreval("==================================================")

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
      valor_final <- -1  //Após chamar a função CalcularPagamento,
      //o programa verifica se o valor_final é -1. Caso seja, ele exibe uma mensagem de erro
      //A atribuição de -1 impede que valores inválidos sejam usados nos cálculos ou exibidos ao usuário como o valor final

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

         subtotal <- subtotal * quantidade  //O custo total da compra (total) seja constantemente atualizado a cada item comprado.
                                            //A quantidade total de produtos adquiridos (quanttotal) seja acumulada para exibição no resumo da compra.
         total <- total + subtotal
         quanttotal <- quanttotal + quantidade
         //  // //  //   //  //   //  //  //  //  // //
         indice <- indice + 1                         //armazenam os nomes, preços unitários e quantidades de produtos adquiridos nos: [vetores], produtos,precos,unidades
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

      limpatela  //apaga na tela tudo que está acima

   forma_pagamento <- 0  // Inicializa com um valor inválido

   Enquanto (forma_pagamento < 1) ou (forma_pagamento > 7) Faca
      escreval("================== FORMAS DE PAGAMENTO ===============")
      escreval("1 - À vista em dinheiro ou PIX, 5% de desconto")
      escreval("2 - No cartão de débito, mesmo preço")
      escreval("3 - No cartão de crédito em 1x, acréscimo de 5%")
      escreval("4 - No cartão de crédito em 2x, acréscimo de 5%")
      escreval("5 - No cartão de crédito em 3x, acréscimo de 8%")
      escreval("6 - No cartão de crédito em 4x, acréscimo de 8%")
      escreval("7 - No cartão de crédito em 5x, acréscimo de 10%")
      escreval("Escolha a forma de pagamento: ")
      Leia(forma_pagamento)

      Se (forma_pagamento < 1) ou (forma_pagamento > 7) Entao
         escreval("Opção inválida! Por favor, escolha uma opção válida.")
      FimSe
   FimEnquanto

   limpatela

   escreval("============ RESUMO DA COMPRA ==============")
   Para i <- 1 Ate indice Faca
      escreval("Produto: ", produtos[i], ", Preço Unitário: R$ ", precos[i]:2:2, ", Quantidade: ", quantidades[i])
   FimPara
   escreval("Quantidade total de brinquedos comprados: ", quanttotal, " unidades.")
   escreval("Valor total da sua compra R$ ", total:2:2)

   valor_final <- CalcularPagamento(total, forma_pagamento) //A variável valor_final agora contém o valor final a ser pago pelo usuário,
                                                           //já considerando descontos ou acréscimos

   Se (valor_final = -1) Entao                 //bloco que chama a variável valor_final
      escreval("Forma de pagamento inválida!") //
   Senao                                       // // // // // //
      escreval("Valor total a ser pago: R$ ", valor_final:2:2)  //

      Se (forma_pagamento >= 3) e (forma_pagamento <= 7) Entao
         parcelas <- forma_pagamento - 2  //
  //Para determinar o número de parcelas, a lógica usada é:
//Subtraia -2 da opção de pagamento (forma_pagamento).
//O valor resultante corresponde diretamente ao número de parcelas
//Por que subtrair 2?
//No menu de pagamento:
//As opções 1 e 2 NÃO são parceladas (dinheiro/PIX e cartão de débito).
//As opções parceladas começam em 3, onde 3 - 2 = 1 representa 1 parcela.

         valor_parcela <- valor_final / parcelas
         escreval("Parcelado no cartão de crédito em ", parcelas, "x de R$ ", valor_parcela:2:2)
      FimSe
   FimSe

   escreval("Obrigado por comprar na LOJA DO WILE =)")
Fimalgoritmo
