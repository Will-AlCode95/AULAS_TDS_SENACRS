Algoritmo "LOJA DE PICOL�"
// Disciplina   : [Linguagem e L�gica de Programa��o] 
// Professor   : Antonio Carlos Nicolodi 

Var
// Se��o de Declara��es das vari�veis 
opcao,quantidade: real
valor: real
total: real
produto,sn: caracter

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 
sn <- "S"
enquanto (sn = "S") ou (sn = "s") faca
escreval("=============ESCOLHA O PICOL�=================")
escreval("1 - Picol� de Uva R$1.00")
escreval("2 - Picol� de Laranja R$1.25")
escreval("3 - Picol� de Milho R$1.50")
escreval("4 - Picol� de Coco queimado R$1.80")
escreval("5 - Picol� de Tamarindo R$2.00")
escreval("===============================================")
escreva("Informe o nome do produto: ")
leia(produto)
escreval("Escolha uma das op��es(1,2,3,4,5): ")
leia(opcao)
escreva("Quantidade de Produto: ")
leia(quantidade)

se (opcao = 1) entao
   total <-  quantidade * 1.00
   escreval("op��o 1 escolhida")
senao
     se (opcao = 2) entao
     total <- quantidade * 1.25
      escreval("op��o 2 escolhida")
          senao
            se(opcao = 3) entao
               total <- quantidade * 1.50
                 escreval("op��o 3 escolhida")
                   senao
                     se (opcao = 4) entao
                       total <- quantidade * 1.80
                         escreval("op��o 4 escolhida")
                           senao
                             se (opcao = 5) entao
                               total <- quantidade * 2.00
                                 escreval("op��o 5 escolhida")
                             fimse
                    fimse
           fimse
    fimse
fimse

se((opcao <= 0) ou (opcao >= 6) )entao
       escreval("Voc� escolheu uma op��o errada!")
       escreval("Realize a compra novamente!")
fimse

escreval("deseja continuar:(S/N): ")
leia(sn)

    escreval("==========VALOR DA NOTA============")
    escreval("Nome do Vendedor: ",produto)
    escreval("valor total da compra: ",opcao)
   senao
      escreval("======C�DIGO INV�LIDO!======")
      escreval("==========ERROR 104!============")
fimse

fimenquanto

Fimalgoritmo