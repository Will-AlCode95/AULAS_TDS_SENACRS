Algoritmo "Choose Calculator F1000"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Antonio Carlos Nicolodi
// Descri��o   : Calculadora que realiza opera��es b�sicas (+, -, *, /) entre dois n�meros
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 01/11/2024
Var
// Se��o de Declara��es das vari�veis
   numero1, numero2, resultado: real
   operacao: caractere
   operacaoValida: logico

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc...
   operacaoValida <- verdadeiro
   escreva("Informe o primeiro n�mero: ")
   leia(numero1)
   escreva("Escolha a opera��o (+, -, *, /): ")
   leia(operacao)
   escreva("Informe o segundo n�mero: ")
   leia(numero2)

   escolha operacao
      caso "+"
         resultado <- numero1 + numero2
      caso "-"
         resultado <- numero1 - numero2
      caso "*"
         resultado <- numero1 * numero2
      caso "/"
         se numero2 <> 0 entao
            resultado <- numero1 / numero2
         senao
            escreval("Erro: Divis�o por zero!")
            operacaoValida <- falso
         fimse
      outrocaso
         escreval("Opera��o inv�lida!")
         operacaoValida <- falso
   fimescolha

   se operacaoValida entao
      escreval("Resultado da opera��o: ", resultado:2:1)
   fimse
Fimalgoritmo

