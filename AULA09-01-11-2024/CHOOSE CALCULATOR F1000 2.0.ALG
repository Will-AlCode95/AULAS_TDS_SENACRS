Algoritmo "Choose Calculator F1000"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi
// Descrição   : Calculadora que realiza operações básicas (+, -, *, /) entre dois números
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 01/11/2024
Var
// Seção de Declarações das variáveis
   numero1, numero2, resultado: real
   operacao: caractere
   operacaoValida: logico

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc...
   operacaoValida <- verdadeiro
   escreva("Informe o primeiro número: ")
   leia(numero1)
   escreva("Escolha a operação (+, -, *, /): ")
   leia(operacao)
   escreva("Informe o segundo número: ")
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
            escreval("Erro: Divisão por zero!")
            operacaoValida <- falso
         fimse
      outrocaso
         escreval("Operação inválida!")
         operacaoValida <- falso
   fimescolha

   se operacaoValida entao
      escreval("Resultado da operação: ", resultado:2:1)
   fimse
Fimalgoritmo

