Algoritmo "LOJA DE KIDSFUN"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor    : Antonio Carlos Nicolodi

Var
// Declaração de variáveis globais
total, subtotal: real
quantidade, opcao, quanttotal: inteiro
sn: caracter

// Declaração de funções
Funcao ExibirMenu: inteiro
Var
   escolha: inteiro
Inicio
   escreval("=================LOJA DO WILE=================")
   escreval("===============MENU DE BRINQUEDOS==============")
   escreval("[1] Carrinho Super Maquina R$ 180,00")
   escreval("[2] Boneca Barbie R$ 90,00")
   escreval("[3] Boneco GI JOE R$ 150,00")
   escreval("[4] Video-Game Mega Drive3 R$ 400,00")
   escreval("[5] Jogo Sonic3 for Mega Drive R$120,00")
   escreval("[6] Bike Caloi cross extra R$2.000")
   escreva("Selecione uma das opções: ")
   leia(escolha)
   Retorne escolha
FimFuncao

Funcao CalcularSubtotal(opcao,quantidade:inteiro): real
Var
   valorUnitario: real
Inicio
   escolha opcao
      caso 1
         valorUnitario <- 180.00
      caso 2
         valorUnitario <- 90.00
      caso 3
         valorUnitario <- 150.00
      caso 4
         valorUnitario <- 400.00
      caso 5
         valorUnitario <- 120.00
      caso 6
         valorUnitario <- 2000.00
      outrocaso
         valorUnitario <- 0
   fimescolha
   valorUnitario <- valorUnitario * quantidade
   Retorne valorUnitario
FimFuncao

Inicio
// Inicializações
total <- 0
quanttotal <- 0
sn <- "S"

// Comandos principais
enquanto ((sn = "S") ou (sn = "s")) faca
   opcao <- ExibirMenu()

   // Verificação da opção selecionada
   se (opcao < 1) ou (opcao > 6) entao
      escreval("Você escolheu uma opção inválida!")
      escreval("Realize a compra novamente!")
   senao
      escreva("Quantos itens você deseja comprar: ")
      leia(quantidade)
      quanttotal <- quanttotal + quantidade

      subtotal <- CalcularSubtotal(opcao, quantidade)
      total <- total + subtotal

      escreval("=========================================")
      escreval("Você comprou ", quantidade, " unidade(s) do produto da opção ", opcao)
      escreval("Subtotal: R$ ", subtotal:2:2)
      escreval("Total acumulado: R$ ", total:2:2)
      escreval("=========================================")
   fimse

   escreval("Deseja continuar comprando S/N: ")
   leia(sn)
   escreval("=========================================")
   escreval("Quantidade total de itens comprados: ", quanttotal, " unidades.")
   escreval("Valor total da sua compra R$ ", total:2:2)

fimenquanto
Fimalgoritmo
