Algoritmo "CALCULADORA"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Antonio Carlos Nicolodi 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 31/10/2024
Var
// Se��o de Declara��es das vari�veis 
valor1,valor2: real
total:real
opcao: inteiro

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 
escreval("==============CALCULADORA X10=============")

escreval("==============    MENU:    ===============")
escreval("[1] - Adi��o ")
escreval("[2] - Subtra��o")
escreval("[3] - Multiplica��o")
escreval("[4] - Divis�o")
escreval("===============================================")
escreval("Escolha uma das op��es(1,2,3,4): ")
leia(opcao)
se((opcao <= 0) ou (opcao >= 5) )entao
       escreval("Voc� escolheu uma op��o errada!")
       escreval("Realize a compra novamente!")
senao
   escreval("Resultado da opera��o: ",total)

escreval("Op��o",opcao," escolhida")
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
escreval("Resultado da opera��o: ",total)
fimse



Fimalgoritmo