Algoritmo "Categoria do Jogador"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Data atual  : 04/11/2024
// Se��o de Declara��es das vari�veis
Var
   nome: caracter
   idade: inteiro
   categoria: caracter

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc...
   escreva("Nome do Jogador: ")
   leia(nome)
   escreva("Idade do Jogador: ")
   leia(idade)

   se (idade >= 11) e (idade <= 15) entao
      categoria <- "Juvenil"
      escreval("categoria do jogador: ",categoria)

   senao
      se (idade >= 16) e (idade <= 20) entao
         categoria <- "Junior"
         escreval("categoria do jogador: ",categoria)

      senao
         se (idade >= 21) e (idade <= 25) entao
            categoria <- "Profissional"
            escreval("categoria do jogador: ",categoria)
            
         senao
            escreval("Idade fora das categorias dispon�veis.")
         fimse
      fimse
   fimse

Fimalgoritmo
