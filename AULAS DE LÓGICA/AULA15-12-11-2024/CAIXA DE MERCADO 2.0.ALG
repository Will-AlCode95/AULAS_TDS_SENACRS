Algoritmo "CAIXA DE MERCADO 2.5"
// Disciplina   : [Linguagem e L�gica de Programa��o] 
// Professor   : Antonio Carlos Nicolodi 

Var
// Se��o de Declara��es das vari�veis
total, subtotal, pagamento, totalArrecadadoDia: real
quantidade, opcao, quanttotal, pag, totalItensVendidos: inteiro
produto, sn, novoCliente, formaPagamento: caracter

Inicio
// Inicializa��es
totalArrecadadoDia <- 0
totalItensVendidos <- 0
novoCliente <- "S"

enquanto ((novoCliente = "S") ou (novoCliente = "s")) faca
    // Inicializar total do cliente
    total <- 0
    quanttotal <- 0
    sn <- "S"

    escreval("=================MERCADO DO WILL=================")

    // Loop de adi��o de produtos ao carrinho
    enquanto ((sn = "S") ou (sn = "s")) faca
       escreval("===============MENU DE PRODUTOS==============")
       escreval("[1] Arroz (1kg) R$ 5,00")
       escreval("[2] Feij�o (1kg) R$ 7,50")
       escreval("[3] Leite (1L) R$ 4,00")
       escreval("[4] Caf� (500g) R$ 6,00")
       escreva("Selecione uma das op��es: ")
       leia(opcao)

       // Verifica��o da op��o selecionada
       se (opcao < 1) ou (opcao > 4) entao
          escreval("Voc� escolheu uma op��o inv�lida!")
       senao
          escreva("Quantos produtos voc� deseja adicionar: ")
          leia(quantidade)
          quanttotal <- quanttotal + quantidade
          totalItensVendidos <- totalItensVendidos + quantidade  // Soma dos itens no dia

          escolha opcao
             caso 1
                subtotal <- quantidade * 5.00
                produto <- "Arroz (1kg)"
             caso 2
                subtotal <- quantidade * 7.50
                produto <- "Feij�o (1kg)"
             caso 3
                subtotal <- quantidade * 4.00
                produto <- "Leite (1L)"
             caso 4
                subtotal <- quantidade * 6.00
                produto <- "Caf� (500g)"
          fimescolha

          total <- total + subtotal

          escreval("=========================================")
          escreval("Voc� adicionou ", quantidade, " unidade(s) de ", produto)
          escreval("Subtotal desta compra: R$ ", subtotal:2:2)
          escreval("Valor total acumulado no carrinho: R$ ", total:2:2)
          escreval("=========================================")
       fimse

       escreval("Deseja adicionar mais produtos ao carrinho? (S/N): ")
       leia(sn)
    fimenquanto

    // Op��es de pagamento
    escreval("==============================================")
    escreval("Quantidade total de itens no carrinho: ", quanttotal, " unidades.")
    escreval("Valor total da sua compra R$ ", total:2:2)
    escreva ("     FORMAS DE PAGAMENTO    ")
    escreval
    escreva ("1- � vista em dinheiro ou PIX - 10% de desconto")
    escreval
    escreva ("2- Cart�o de d�bito - 5% de desconto")
    escreval
    escreva ("3- Cart�o de cr�dito 1x - mesmo pre�o")
    escreval
    escreva ("4- Cart�o de cr�dito 2x - acr�scimo de 5%")
    escreval
    escreva ("5- Cart�o de cr�dito 3x - acr�scimo de 10%")
    escreval
    escreva ("6- Cart�o de cr�dito 4x - acr�scimo de 15%")
    escreval


repita                                                           //LOOP//
   escreva("Escolha uma das op��es acima: ")                     //
   leia(pag)                                                       //
                                                                     //
   se ((pag < 1) ou (pag > 6)) entao                                   //
      escreval("Voc� escolheu uma op��o errada!")                        // // // ////
      escreval("Deseja tentar escolher uma forma de pagamento novamente? (S/N): ") //
      leia(sn)                                                                    //
   senao                                                                    // ////
      sn <- "N"  // Sai do loop se a op��o for v�lida                      //
   fimse                                                                  //
ate ((pag >= 1) e (pag <= 6)) ou ((sn = "N") ou (sn = "n"))              //
                                                                        //
se ((sn = "N") ou (sn = "n")) e ((pag < 1) ou (pag > 6)) entao        //
   escreval("Compra cancelada.")                                     //LOOP
senao
   escolha pag
      caso 1
         pagamento <- total - (total * 0.10)
         formaPagamento <- "� vista em dinheiro ou PIX - 10% de desconto"
      caso 2
         pagamento <- total - (total * 0.05)
         formaPagamento <- "Cart�o de d�bito - 5% de desconto"
      caso 3
         pagamento <- total
         formaPagamento <- "Cart�o de cr�dito 1x - mesmo pre�o"
      caso 4
         pagamento <- total + (total * 0.05)
         formaPagamento <- "Cart�o de cr�dito 2x - acr�scimo de 5%"
      caso 5
         pagamento <- total + (total * 0.10)
         formaPagamento <- "Cart�o de cr�dito 3x - acr�scimo de 10%"
      caso 6
         pagamento <- total + (total * 0.15)
         formaPagamento <- "Cart�o de cr�dito 4x - acr�scimo de 15%"
   fimescolha

   // Atualiza o total arrecadado no dia
   totalArrecadadoDia <- totalArrecadadoDia + pagamento

   escreval("=================CHECKOUT==================")
   escreval("Forma de pagamento: ", formaPagamento)
   escreval("Quantidade total de produtos comprados: ", quanttotal, " unidades.")
   escreval("Valor total da sua compra R$ ", pagamento:2:2)
fimse


    escreval("Deseja atender um novo cliente? (S/N): ")
    leia(novoCliente)
fimenquanto

// Fechamento do sistema ao final do dia
escreval("===============FECHAMENTO DO DIA=================")
escreval("Total de itens vendidos no dia: ", totalItensVendidos, " unidades.")
escreval("Valor total arrecadado no dia: R$ ", totalArrecadadoDia:2:2)
escreval("===========================================")

Fimalgoritmo
