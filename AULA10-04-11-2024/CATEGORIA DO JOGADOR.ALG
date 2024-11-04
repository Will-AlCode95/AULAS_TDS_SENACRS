Algoritmo "Categoria do Jogador"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 04/11/2024
// Seção de Declarações das variáveis
Var
   nome: caracter
   idade: inteiro
   categoria: caracter

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc...
   escreva("Nome do Jogador: ")
   leia(nome)
   escreva("Idade do Jogador: ")
   leia(idade)

   se (idade >= 11) e (idade <= 15) entao
      categoria <- "Juvenil"
      escreval("Categoria: ", categoria)
   senao
      se (idade >= 16) e (idade <= 20) entao
         categoria <- "Junior"
         escreval("Categoria: ", categoria)
      senao
         se (idade >= 21) e (idade <= 25) entao
            categoria <- "Profissional"
            escreval("Categoria: ", categoria)
         senao
            escreval("Idade fora das categorias disponíveis.")
         fimse
      fimse
   fimse

escreval("==============DADOS DO JOGADOR===============")
escreval("nome do jogador: ",nome)
escreval("idade do jogador:",idade)
escreval("categoria do jogador: ",categoria)

Fimalgoritmo








Fimalgoritmo