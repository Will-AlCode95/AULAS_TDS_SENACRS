Algoritmo "CAIXA DE MERCADO 2.5"

Var
// Seção de Declarações das variáveis
total, subtotal, pagamento, totalArrecadadoDia: real
quantidade, opcao, quanttotal, pag, totalItensVendidos: inteiro
produto, sn, novoCliente, formaPagamento: caracter

Inicio
// Inicializações
totalArrecadadoDia <- 0
totalItensVendidos <- 0
novoCliente <- "S"

enquanto ((novoCliente = "S") ou (novoCliente = "s")) faca
    // Inicializar total do cliente
    total <- 0
    quanttotal <- 0
    sn <- "S"

    escreval("=================MERCADO DO WILL=================")

    // Loop de adição de produtos ao carrinho
    enquanto ((sn = "S") ou (sn = "s")) faca
       escreval("===============MENU DE PRODUTOS==============")
       escreval("[1] Arroz (1kg) R$ 5,00")
       escreval("[2] Feijão (1kg) R$ 7,50")
       escreval("[3] Leite (1L) R$ 4,00")
       escreval("[4] Café (500g) R$ 6,00")
       escreva("Selecione uma das opções: ")
       leia(opcao)

       // Verificação da opção selecionada
       se (opcao < 1) ou (opcao > 4) entao
          escreval("Você escolheu uma opção inválida!")
       senao
          escreva("Quantos produtos você deseja adicionar: ")
          leia(quantidade)
          quanttotal <- quanttotal + quantidade
          totalItensVendidos <- totalItensVendidos + quantidade  // Soma dos itens no dia

          escolha opcao
             caso 1
                subtotal <- quantidade * 5.00
                produto <- "Arroz (1kg)"
             caso 2
                subtotal <- quantidade * 7.50
                produto <- "Feijão (1kg)"
             caso 3
                subtotal <- quantidade * 4.00
                produto <- "Leite (1L)"
             caso 4
                subtotal <- quantidade * 6.00
                produto <- "Café (500g)"
          fimescolha

          total <- total + subtotal

          escreval("=========================================")
          escreval("Você adicionou ", quantidade, " unidade(s) de ", produto)
          escreval("Subtotal desta compra: R$ ", subtotal:2:2)
          escreval("Valor total acumulado no carrinho: R$ ", total:2:2)
          escreval("=========================================")
       fimse

       escreval("Deseja adicionar mais produtos ao carrinho? (S/N): ")
       leia(sn)
    fimenquanto

    // Opções de pagamento
    escreval("==============================================")
    escreval("Quantidade total de itens no carrinho: ", quanttotal, " unidades.")
    escreval("Valor total da sua compra R$ ", total:2:2)
    escreva ("     FORMAS DE PAGAMENTO    ")
    escreval
    escreva ("1- À vista em dinheiro ou PIX - 10% de desconto")
    escreval
    escreva ("2- Cartão de débito - 5% de desconto")
    escreval
    escreva ("3- Cartão de crédito 1x - mesmo preço")
    escreval
    escreva ("4- Cartão de crédito 2x - acréscimo de 5%")
    escreval
    escreva ("5- Cartão de crédito 3x - acréscimo de 10%")
    escreval
    escreva ("6- Cartão de crédito 4x - acréscimo de 15%")
    escreval


repita
   escreva("Escolha uma das opções acima: ")
   leia(pag)

   se ((pag < 1) ou (pag > 6)) entao
      escreval("Você escolheu uma opção errada!")
      escreval("Deseja tentar escolher uma forma de pagamento novamente? (S/N): ")
      leia(sn)
   senao
      sn <- "N"  // Sai do loop se a opção for válida
   fimse
ate ((pag >= 1) e (pag <= 6)) ou ((sn = "N") ou (sn = "n"))

se ((sn = "N") ou (sn = "n")) e ((pag < 1) ou (pag > 6)) entao
   escreval("Compra cancelada.")
senao
   escolha pag
      caso 1
         pagamento <- total - (total * 0.10)
         formaPagamento <- "À vista em dinheiro ou PIX - 10% de desconto"
      caso 2
         pagamento <- total - (total * 0.05)
         formaPagamento <- "Cartão de débito - 5% de desconto"
      caso 3
         pagamento <- total
         formaPagamento <- "Cartão de crédito 1x - mesmo preço"
      caso 4
         pagamento <- total + (total * 0.05)
         formaPagamento <- "Cartão de crédito 2x - acréscimo de 5%"
      caso 5
         pagamento <- total + (total * 0.10)
         formaPagamento <- "Cartão de crédito 3x - acréscimo de 10%"
      caso 6
         pagamento <- total + (total * 0.15)
         formaPagamento <- "Cartão de crédito 4x - acréscimo de 15%"
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
escreval("===========FECHAMENTO DO DIA=============")
escreval("Total de itens vendidos no dia: ", totalItensVendidos, " unidades.")
escreval("Valor total arrecadado no dia: R$ ", totalArrecadadoDia:2:2)
escreval("===========================================")

Fimalgoritmo
