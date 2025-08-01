
Algoritmo "Menu de Opções"
// Disciplina   : [Linguagem e Lógica de Programação]
// Data atual  : 30/10/2024
Var
// Seção de Declarações das variáveis 
etiqueta, total, parcelado,cpf:real
quantidade,opcao: inteiro
produto,usuario: caracter

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
escreval("=========LOJA DO WILE=========")
escreval("==============================")
escreval("===========DADOS DO USUÁRIO===========")
escreval("Nome do cliente: ")
leia(usuario)
escreval("CPF: ")
leia(cpf)
escreval("======================================")
escreva("Informe o nome do produto: ")
leia(produto)
escreva("Informe o valor do produto: R$ ")
leia(etiqueta)
escreva("Quantidade de Produto: ")
leia(quantidade)

escreval("=============ESCOLHA A OPÇÃO=================")
escreval("===============DE PAGAMENTO==================")

escreval("[1] - A vista em dinheiro, Pix ou cheque, 15% desconto")
escreval("[2] - A vista no cartão de débito, 10% de desconto")
escreval("[3] - Parcelado em 3x preço normal sem juros ")
escreval("[4] - Parcelado em 4x com acréscimo de 10%")
escreval("=============PROMO BLACK FRIDAY 2024==============")
escreval("Comprando de 4 a 6 unidades: +5% de desconto no valor final")
escreval("Comprando de 7 a 9 unidades: +10% sobre o valor final")
escreval("Comprando de 10 ou mais unidades: +15% sobre o valor final")
escreval("==================================================")
escreval("Escolha uma das opções de Pagamento(1,2,3,4): ")
leia(opcao)
escreval("=================================================")

se (opcao = 1) entao
   total <- etiqueta - (etiqueta * 0.15)
   total <- quantidade * total
   escreval("opção 1 escolhida")

   senao
     se (opcao = 2) entao
     total <- etiqueta - (etiqueta * 0.10)
     total <- quantidade * total
      escreval("opção 2 escolhida")

   senao
     se(opcao = 3) entao
     total <- etiqueta
     parcelado <- etiqueta/2
     total <- quantidade * total
     escreval("Você escolheu a opção 3 como forma de pagamento")
     escreval("Produto parcelado em 2x de : R$ ",parcelado:3:2)

   senao
     se (opcao = 4) entao
         total <- etiqueta + (etiqueta * 0.10)
         parcelado <- total/3
         total <- quantidade * total

      escreval("Você escolheu a opção 4 como forma de pagamento")
      escreval("Produto parcelado em 3x de : R$ ",parcelado:3:2)

     fimse
     fimse
     fimse
fimse

  se ((quantidade >= 4) e (quantidade <= 6)) entao
  total <- total - (total * 0.05)
  senao
   se ((quantidade >= 7) e (quantidade <=9)) entao
   total <- total - (total * 0.10)
   senao
    se (quantidade >= 10) entao
    total <- total - (total * 0.15)

   fimse
   fimse
   fimse

se((opcao <= 0) ou (opcao >= 5) )entao
       escreval("Você escolheu uma opção errada!")
       escreval("============ERROR=============!")
senao
      escreval("==============Nota Fiscal===============")
      escreval("Nome: ",usuario)
      escreval("CPF: ",cpf)
      escreval("Nome do produto comprado: ",produto)
      escreval("Valor do produto na etiqueta: R$ ",etiqueta:3:2)
      escreval("Quantidade de produtos comprados: ",quantidade)
      escreval("Valor total da compra do produto: R$", total:3:2)
fimse

Fimalgoritmo



//Desafio: Implementar uma Promoção de Desconto Progressivo

//Descrição:
//Implemente uma promoção que dá desconto progressivo baseado na quantidade de produtos comprados.
//Modifique o código original para adicionar esta nova funcionalidade:

//1 a 3 unidades: Não há desconto adicional.
//4 a 6 unidades: Desconto adicional de 5% sobre o valor final.
//7 a 9 unidades: Desconto adicional de 10% sobre o valor final.
//10 ou mais unidades: Desconto adicional de 15% sobre o valor final.
//Objetivo:
//Após o cálculo do valor total com base na opção de pagamento (como no código original), aplique o desconto adicional com base na quantidade.
//Exiba o valor final com o desconto progressivo aplicado.
//Estrutura:
//Leia as informações do produto e a quantidade como no código original.
//Aplique o cálculo do total normalmente para cada opção de pagamento.
//Após o cálculo do total, use uma estrutura se...então para verificar a quantidade e aplicar o desconto progressivo.
//Exiba o valor final com o desconto progressivo, além do valor total original (para comparação).
