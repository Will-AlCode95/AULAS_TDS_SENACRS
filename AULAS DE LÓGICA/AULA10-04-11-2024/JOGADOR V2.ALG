Algoritmo "jogador v2"
// Disciplina   : [Linguagem e L�gica de Programa��o] 
// Professor   : Antonio Carlos Nicolodi 

// Se��o de Declara��es das vari�veis
Var
   nome: caracter
   idade: inteiro
   contrario, faixa_etaria: inteiro
   categoria: caracter

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc...
   escreva("Nome do Jogador: ")
   leia(nome)
   escreva("Idade do Jogador: ")
   leia(idade)

   // Determinando a faixa et�ria de acordo com a idade
   se (idade >= 11) e (idade <= 15) entao
      faixa_etaria <- 1
   senao
      se (idade >= 16) e (idade <= 20) entao
         faixa_etaria <- 2

       senao
         se (idade >= 21) e (idade <= 25) entao
            faixa_etaria <- 3

         fimse
      fimse
   fimse

   // Usando escolha para determinar a categoria
   escolha faixa_etaria
      caso 1
         categoria <- "JUVENIL"

      caso 2
         categoria <- "JUNIOR"

      caso 3
         categoria <- "PROFISSIONAL"

      caso contrario

   fimescolha

escreval("==========DADOS DO JOGADOR=============")
escreval("nome do jogador: ",nome)
escreval("idade do jogador: ",idade)
escreval("Categoria: ", categoria)
escreval("Idade fora das categorias dispon�veis.", contrario)

Fimalgoritmo
