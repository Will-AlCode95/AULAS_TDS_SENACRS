Algoritmo "LOJA DE PICOLÉ"
// Disciplina   : [Linguagem e Lógica de Programação]
// Data atual  : 31/10/2024
Var
// Seção de Declarações das variáveis 
 opcao,quantidade: inteiro
 total:real
 produto: caracter

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
escreval("=============LOJA DO PICOLÉ=================")
escreval("=================WILL=======================")
escreva("Informe o nome do produto: ")
leia(produto)


escreval("=============ESCOLHA O PICOLÉ=================")
escreval("1 - Picolé de Uva R$1.00")
escreval("2 - Picolé de Laranja R$1.25")
escreval("3 - Picolé de Milho R$1.50")
escreval("4 - Picolé de Coco queimado R$1.80")
escreval("5 - Picolé de Tamarindo R$2.00")
escreval("===============================================")
escreva("Quantidade de Produto: ")
leia(quantidade)
escreval("Escolha uma das opções(1,2,3,4,5): ")
leia(opcao)


se (opcao = 1) entao
   total <-  quantidade * 1.00
   escreval("opção 1 escolhida")
senao
     se (opcao = 2) entao
     total <- quantidade * 1.25
      escreval("opção 2 escolhida")
senao
     se(opcao = 3) entao
     total <- quantidade * 1.50
 senao
     se (opcao = 4) entao
         total <- quantidade * 1.80
senao
     se (opcao = 5) entao
         total <- quantidade * 2.00
fimse
fimse
fimse
fimse
fimse

se((opcao <= 0) ou (opcao >= 6) )entao
       escreval("Você escolheu uma opção errada!")
       escreval("Realize a compra novamente!")
senao
      escreval("Nome do produto comprado: ",produto)
      escreval("Quantidade de produtos comprados: ",quantidade)
fimse


Fimalgoritmo




