algoritmo "LOJA_DO_WILE(Ver.2.0Final)"
// Disciplina   : [Linguagem e L�gica de Programa��o] 
// Professor   :Miguel 
// VERS�O QUE CHAMA UMA FUN��O QUE FAZ OS CALC�LOS DO =FORMAS DE PAGAMENTO=
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
   escreval("================= MENU DE OP��ES: ================")
   escreval("1 - Carrinho Super Maquina              R$ 180,00")
   escreval("2 - Boneca Barbie                       R$  90,00")
   escreval("3 - Boneco GI JOE                       R$ 150,00")
   escreval("4 - Video-Game Mega Drive               R$ 400,00")
   escreval("5 - Jogo Sonic3 for Mega Drive          R$ 120,00")
   escreval("6 - Computador IBM Pentium4(Win98)      R$ 2.000,00")
   escreval("==================================================")

FimProcedimento

// Fun��o para retornar o pre�o do brinquedo
Fun��o SelecionarBrinquedo(opcao: inteiro): real
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
FimFun��o

// Fun��o para calcular o pagamento
Fun��o CalcularPagamento(total,forma_pagamento: inteiro): real
Var
   valor_final: real
Inicio
   Escolha forma_pagamento
      Caso 1
      valor_final <- total * 0.95 // 5% desconto
      Caso 2
      valor_final <- total       // pre�o sem altera��o
      Caso 3
      valor_final <- total * 1.05 // 5% acr�scimo
      Caso 4
      valor_final <- total * 1.05 // 5% acr�scimo
      Caso 5
      valor_final <- total * 1.08 // 8% acr�scimo
      Caso 6
      valor_final <- total * 1.08 // 8% acr�scimo
      Caso 7
      valor_final <- total * 1.10 // 10% acr�scimo
      OutroCaso
      valor_final <- -1  //Ap�s chamar a fun��o CalcularPagamento,
      //o programa verifica se o valor_final � -1. Caso seja, ele exibe uma mensagem de erro
      //A atribui��o de -1 impede que valores inv�lidos sejam usados nos c�lculos ou exibidos ao usu�rio como o valor final

   FimEscolha
   Retorne valor_final
FimFun��o

Inicio
   total <- 0
   quanttotal <- 0
   indice <- 0
   sn <- "S"

   Enquanto ((sn = "S") ou (sn = "s")) Faca
      ExibirMenu()
      escreva("Selecione uma das op��es: ")
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
         brinquedo <- "Inv�lido"
      FimEscolha

      Se (subtotal > 0) Entao
         escreva("Quantidade de brinquedos: ")
         Leia(quantidade)

         subtotal <- subtotal * quantidade  //O custo total da compra (total) seja constantemente atualizado a cada item comprado.
                                            //A quantidade total de produtos adquiridos (quanttotal) seja acumulada para exibi��o no resumo da compra.
         total <- total + subtotal
         quanttotal <- quanttotal + quantidade
         //  // //  //   //  //   //  //  //  //  // //
         indice <- indice + 1  //indice: Controla em qual posi��o dos vetores os dados do pr�ximo produto ser�o armazenados.
         precos[indice] <- SelecionarBrinquedo(opcao)
         quantidades[indice] <- quantidade //Armazena a quantidade adquirida do produto.
         produtos[indice] <- brinquedo //produtos[indice]: Armazena o nome do produto adquirido.

         escreval("Voc� comprou ", quantidade, " unidade(s) de ", brinquedo)
         escreval("Voc� vai pagar R$ ", subtotal:2:2)
         escreval("Valor total da sua compra at� o momento: R$ ", total:2:2)
      Senao
         escreval("Voc� escolheu uma op��o inv�lida!")
      FimSe

      escreval("Deseja continuar comprando S/N: ")
      Leia(sn)
   FimEnquanto

      limpatela  //apaga na tela tudo que est� acima

   forma_pagamento <- 0  //Evita que a vari�vel tenha lixo de mem�ria.
//Indica que nenhuma forma de pagamento v�lida foi selecionada no in�cio.
//Facilita a l�gica de valida��o para exibir o menu repetidamente at� que o usu�rio insira uma op��o v�lida.

   Enquanto (forma_pagamento < 1) ou (forma_pagamento > 7) Faca
      escreval("================== FORMAS DE PAGAMENTO ===============")
      escreval("1 - � vista em dinheiro ou PIX, 5% de desconto")
      escreval("2 - No cart�o de d�bito, mesmo pre�o")
      escreval("3 - No cart�o de cr�dito em 1x, acr�scimo de 5%")
      escreval("4 - No cart�o de cr�dito em 2x, acr�scimo de 5%")
      escreval("5 - No cart�o de cr�dito em 3x, acr�scimo de 8%")
      escreval("6 - No cart�o de cr�dito em 4x, acr�scimo de 8%")
      escreval("7 - No cart�o de cr�dito em 5x, acr�scimo de 10%")
      escreval("Escolha a forma de pagamento: ")
      Leia(forma_pagamento)

      Se (forma_pagamento < 1) ou (forma_pagamento > 7) Entao
         escreval("Op��o inv�lida! Por favor, escolha uma op��o v�lida.")
      FimSe
   FimEnquanto

   limpatela

   escreval("============ RESUMO DA COMPRA ==============")
   Para i <- 1 Ate indice Faca
      escreval("Produto: ", produtos[i], ", Pre�o Unit�rio: R$ ", precos[i]:2:2, ", Quantidade: ", quantidades[i])
   FimPara
   escreval("Quantidade total de brinquedos comprados: ", quanttotal, " unidades.")
   escreval("Valor total da sua compra R$ ", total:2:2)

   valor_final <- CalcularPagamento(total, forma_pagamento) //A vari�vel valor_final agora cont�m o valor final a ser pago pelo usu�rio,
                                                           //j� considerando descontos ou acr�scimos

   Se (valor_final = -1) Entao                 //bloco que chama a vari�vel valor_final
      escreval("Forma de pagamento inv�lida!") //
   Senao                                       // // // // // //
      escreval("Valor total a ser pago: R$ ", valor_final:2:2)  //

      Se (forma_pagamento >= 3) e (forma_pagamento <= 7) Entao
         parcelas <- forma_pagamento - 2  //
  //Para determinar o n�mero de parcelas, a l�gica usada �:
//Subtraia -2 da op��o de pagamento (forma_pagamento).
//O valor resultante corresponde diretamente ao n�mero de parcelas
//Por que subtrair 2?
//No menu de pagamento:
//As op��es 1 e 2 N�O s�o parceladas(dinheiro/PIX e cart�o de d�bito).
//As op��es parceladas come�am em 3, onde 3 - 2 = 1 representa 1 parcela.

         valor_parcela <- valor_final / parcelas
         escreval("Parcelado no cart�o de cr�dito em ", parcelas, "x de R$ ", valor_parcela:2:2)
      FimSe
   FimSe

   escreval("Obrigado por comprar na LOJA DO WILE =)")
Fimalgoritmo
