Algoritmo "Menu de Op��es"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Data atual  : 30/10/2024
Var
// Se��o de Declara��es das vari�veis 
etiqueta, total, parcelado,cpf:real
quantidade,opcao: inteiro
produto,usuario: caracter

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 
escreval("=========LOJA DO WILE=========")
escreval("==============================")
escreval("===========DADOS DO USU�RIO===========")
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

escreval("=============ESCOLHA A OP��O=================")
escreval("===============DE PAGAMENTO==================")

escreval("[1] - A vista em dinheiro, Pix ou cheque, 15% desconto")
escreval("[2] - A vista no cart�o de d�bito, 10% de desconto")
escreval("[3] - Parcelado em 3x pre�o normal sem juros ")
escreval("[4] - Parcelado em 4x com acr�scimo de 10%")
escreval("=============PROMO BLACK FRIDAY 2024==============")
escreval("Comprando de 4 a 6 unidades: +5% de desconto no valor final")
escreval("Comprando de 7 a 9 unidades: +10% sobre o valor final")
escreval("Comprando de 10 ou mais unidades: +15% sobre o valor final")
escreval("==================================================")
escreval("Escolha uma das op��es de Pagamento(1,2,3,4): ")
leia(opcao)
escreval("=================================================")

se (opcao = 1) entao
   total <- etiqueta - (etiqueta * 0.15)
   total <- quantidade * total
   escreval("op��o 1 escolhida")

   senao
     se (opcao = 2) entao
     total <- etiqueta - (etiqueta * 0.10)
     total <- quantidade * total
      escreval("op��o 2 escolhida")

   senao
     se(opcao = 3) entao
     total <- etiqueta
     parcelado <- etiqueta/2
     total <- quantidade * total
     escreval("Voc� escolheu a op��o 3 como forma de pagamento")
     escreval("Produto parcelado em 2x de : R$ ",parcelado:3:2)

   senao
     se (opcao = 4) entao
         total <- etiqueta + (etiqueta * 0.10)
         parcelado <- total/3
         total <- quantidade * total

      escreval("Voc� escolheu a op��o 4 como forma de pagamento")
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
       escreval("Voc� escolheu uma op��o errada!")
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



//Desafio: Implementar uma Promo��o de Desconto Progressivo

//Descri��o:
//Implemente uma promo��o que d� desconto progressivo baseado na quantidade de produtos comprados.
//Modifique o c�digo original para adicionar esta nova funcionalidade:

//1 a 3 unidades: N�o h� desconto adicional.
//4 a 6 unidades: Desconto adicional de 5% sobre o valor final.
//7 a 9 unidades: Desconto adicional de 10% sobre o valor final.
//10 ou mais unidades: Desconto adicional de 15% sobre o valor final.
//Objetivo:
//Ap�s o c�lculo do valor total com base na op��o de pagamento (como no c�digo original), aplique o desconto adicional com base na quantidade.
//Exiba o valor final com o desconto progressivo aplicado.
//Estrutura:
//Leia as informa��es do produto e a quantidade como no c�digo original.
//Aplique o c�lculo do total normalmente para cada op��o de pagamento.
//Ap�s o c�lculo do total, use uma estrutura se...ent�o para verificar a quantidade e aplicar o desconto progressivo.
//Exiba o valor final com o desconto progressivo, al�m do valor total original (para compara��o).