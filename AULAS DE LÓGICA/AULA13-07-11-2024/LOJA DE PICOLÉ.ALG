Algoritmo "LOJA DE PICOLÉ"
// Disciplina   : [Linguagem e Lógica de Programação] 
// Professor   : Antonio Carlos Nicolodi 

Var
// Seção de Declarações das variáveis 
opcao,quantidade: real
valor: real
total: real
produto,sn: caracter

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
sn <- "S"
enquanto (sn = "S") ou (sn = "s") faca
escreval("=============ESCOLHA O PICOLÉ=================")
escreval("1 - Picolé de Uva R$1.00")
escreval("2 - Picolé de Laranja R$1.25")
escreval("3 - Picolé de Milho R$1.50")
escreval("4 - Picolé de Coco queimado R$1.80")
escreval("5 - Picolé de Tamarindo R$2.00")
escreval("===============================================")
escreva("Informe o nome do produto: ")
leia(produto)
escreval("Escolha uma das opções(1,2,3,4,5): ")
leia(opcao)
escreva("Quantidade de Produto: ")
leia(quantidade)

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
                 escreval("opção 3 escolhida")
                   senao
                     se (opcao = 4) entao
                       total <- quantidade * 1.80
                         escreval("opção 4 escolhida")
                           senao
                             se (opcao = 5) entao
                               total <- quantidade * 2.00
                                 escreval("opção 5 escolhida")
                             fimse
                    fimse
           fimse
    fimse
fimse

se((opcao <= 0) ou (opcao >= 6) )entao
       escreval("Você escolheu uma opção errada!")
       escreval("Realize a compra novamente!")
fimse

escreval("deseja continuar:(S/N): ")
leia(sn)

    escreval("==========VALOR DA NOTA============")
    escreval("Nome do Vendedor: ",produto)
    escreval("valor total da compra: ",opcao)
   senao
      escreval("======CÓDIGO INVÁLIDO!======")
      escreval("==========ERROR 104!============")
fimse

fimenquanto

Fimalgoritmo