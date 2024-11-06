Algoritmo "Condição de pagamento"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 30/10/2024
Var
// Seção de Declarações das variáveis 
etiqueta, total, parcelado: real
opcao, quantidade: inteiro
nome: caracter

Inicio
// Condição de pagamento
escreval("## Lojas Tabajara ##")
escreva("Informe o nome do produto: ")
leia(nome)
escreva("Informe o valor do produto: R$ ")
leia(etiqueta)
escreva("Informe quantos produtos deseja comprar: ")
leia(quantidade)
escreval("## Escolha opção de pagamento ##")
escreval("1 - A vista em dinheiro, PIX ou cheque, 15% desconto")
escreval("2 - A vista no cartão de débito, 10% de desconto.")
escreval("3 - Parcelado em 2x, preço normal sem juros.")
escreval("4 - Parcelado em 3x, com acréscimo de 10%")
escreva("Escolha uma das opções(1, 2, 3 ou 4): ")
leia(opcao)
escreval("#####################################")

se((opcao <= 0) ou (opcao >= 5) )entao
       escreval("Você escolheu uma opção errada!")
       escreval("Realize a compra novamente!")
senao
      escreval("Nome do produto comprado: ",nome)
      escreval("Valor do produto na etiqueta: R$ ",etiqueta:2:2)
      escreval("Quantidade de produtos comprados: ",quantidade)

      se(opcao = 1)entao
               total <- (etiqueta - (etiqueta * 0.15)) * quantidade
               escreval("Você escolheu a opção 1 como forma de pagamento")
           senao
                se(opcao = 2)entao
                     total <- (etiqueta - (etiqueta * 0.10))* quantidade
                     escreval("Você escolheu a opção 2 como forma de pagamento")
                senao
                     se(opcao = 3)entao
                     total <- etiqueta * quantidade
                     parcelado <- etiqueta/2
                     escreval("Você escolheu a opção 3 como forma de pagamento")
                     escreval("Produto parcelado em 2x de R$ ",parcelado:2:2)
                senao
                     se(opcao = 4)entao
                     total <- (etiqueta + (etiqueta * 0.10))* quantidade
                     parcelado <- total/3
                     escreval("Você escolheu a opção 4 como forma de pagamento")
                     escreval("Produto parcelado em 3x de R$ ",parcelado:2:2)

                 fimse
               fimse
             fimse
           fimse
           escreval("Valor total da compra do produto: R$ ",total:2:2)
fimse

Fimalgoritmo