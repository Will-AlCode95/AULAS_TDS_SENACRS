Algoritmo "CALCULADORA"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 31/10/2024
Var
// Seção de Declarações das variáveis 
valor1,valor2: real
total:real
opcao: inteiro

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
escreval("==============CALCULADORA X10=============")

escreval("==============    MENU:    ===============")
escreval("[1] - Adição ")
escreval("[2] - Subtração")
escreval("[3] - Multiplicação")
escreval("[4] - Divisão")
escreval("===============================================")
escreval("Escolha uma das opções(1,2,3,4): ")
leia(opcao)
se((opcao <= 0) ou (opcao >= 5) )entao
       escreval("Você escolheu uma opção errada!")
       escreval("Realize a compra novamente!")
senao
   escreval("Resultado da operação: ",total)

escreval("Opção",opcao," escolhida")
escreval("Digite o primeiro valor: ")
leia(valor1)
escreval("Digite o segundo valor: ")
leia(valor2)

  se (opcao = 1) entao
   total <-  valor1 + valor2
  senao
     se (opcao = 2) entao
     total <- valor1 - valor2
      senao
       se(opcao = 3) entao
        total <- valor1 * valor2
  senao
     se (opcao = 4) entao
         total <- valor1 / valor2

   fimse
   fimse
   fimse
   fimse
escreval("Resultado da operação: ",total)
fimse



Fimalgoritmo