Algoritmo "Menu de Pagamento"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 04/11/2024
Var
// Seção de Declarações das variáveis 
nome:caracter
valor:real
opcao:inteiro

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
escreval("digite o nome: ")
leia(nome)
escreval("digite o valor: ")
leia(valor)
escreval("===========MENU DE PAGAMENTO===========")
escreval("1- venda a vista - desconto 10% ")
escreval("2- venda a prazo 30 dias - desconto 5%")
escreval("3- venda a prazo 60 dias - s/desconto")
escreval("4- venda a prazo 90 dias - acréscimo de 5%")
escreval("5- venda com cartão de débito - desconto de 8%")
escreval("6- venda com cartão de crédito - desconto de 7%")
escreval("digite o numero da opção desejada: ")
leia(opcao)

escolha opcao
      caso 1
         opcao <- 0.10
      caso 2
         opcao <- 0.05
      caso 3
         opcao
      caso 4
         opcao <- 0.05
      caso 5
         opcao <- 0.08
      caso 6
         opcao <- 0.07

      caso contrario
         escreval("Código inválido")
   fimescolha

    escreval("Desconto aplicado: ", opcao * 100, "%")

Fimalgoritmo