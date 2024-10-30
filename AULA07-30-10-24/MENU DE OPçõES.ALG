Algoritmo "Menu de Opções"
// Disciplina   : [Linguagem e Lógica de Programação]
// Data atual  : 30/10/2024
Var
// Seção de Declarações das variáveis 
etiqueta, total, parcelado:real
quantidade,opcao: inteiro
produto: caracter

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
escreval("=========LOJA DO WILE=========")

escreva("Informe o nome do produto: ")
leia(produto)
escreva("Informe o valor do produto: R$ ")
leia(etiqueta)
escreva("Quantidade de Produto: ")
leia(quantidade)

escreval("=============ESCOLHA A OPÇÃO=================")
escreval   ("============DE PAGAMENTO============")

escreval("1 - A vista em dinheiro, Pix ou cheque, 15% desconto")
escreval("2 - A vista no cartão de débito, 10% de desconto")
escreval("3 - Parcelado em 2x, preço normal sem juros ")
escreval("4 - Parcelado em 3x, com acréscimo de 10%")
escreval("===============================================")
escreval("Escolha uma das opções(1,2,3,4): ")
leia(opcao)
escreval("=================================================")
escreval("Nome do produto comprado: ",produto)
escreval("Valor do produto na etiqueta: R$ ",etiqueta:2:3)

se (opcao = 1) entao
   total <- etiqueta - (etiqueta * 0.15)
   total <- quantidade * total
   escreval("opção 1 escolhida")
    escreval("Valor total da compra do produto: R$", total:2:3)
    escreval("Quantidade de Produto escolhida: ",quantidade)

   senao
     se (opcao = 2) entao
     total <- etiqueta - (etiqueta * 0.10)
     total <- quantidade * total
      escreval("opção 2 escolhida")
      escreval("Valor total da compra do produto: R$", total:2:3)
      escreval("Quantidade de Produto escolhida: ",quantidade)

   senao
     se(opcao = 3) entao
     total <- etiqueta
     parcelado <- etiqueta/2
     total <- quantidade * total
     escreval("Você escolheu a opção 3 como forma de pagamento")
     escreval("Produto parcelado em 2x de : R$ ",parcelado:2:3)
     escreval("Valor total da compra do produto: R$", total:2:3)
     escreval("Quantidade de Produto escolhida: ",quantidade)

   senao
     se (opcao = 4) entao
         total <- etiqueta + (etiqueta * 0.10)
         parcelado <- total/3
         total <- quantidade * total

      escreval("Você escolheu a opção 4 como forma de pagamento")
      escreval("Produto parcelado em 3x de : R$ ",parcelado:2:3)
      escreval("Valor total da compra do produto: R$", total:2:3)
      escreval("Quantidade de Produto escolhida: ",quantidade)

           senao
           escreval("Você escolheu uma opçao errada!")
           fimse
           fimse
           fimse
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