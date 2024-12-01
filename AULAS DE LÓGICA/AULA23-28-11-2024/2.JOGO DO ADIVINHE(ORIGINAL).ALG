algoritmo "JOGO DO ADIVINHE(ORIGINAL)"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   :Miguel

//SEM ALTERAÇÃO

var
   numero_sorteado, palpite, contador: inteiro

inicio

   //numero sorteado
   numero_sorteado <- randi(50) + 1
   contador <-1

   //palpite
   escreva("digite um número inteiro entre 1 a 50: ")
   leia(palpite)

   enquanto (palpite <> numero_sorteado) faca
      se (palpite < numero_sorteado) entao
         escreval("número baixo")
      senao
         se (palpite > numero_sorteado) entao
            escreval("número alto")
         fimse
      fimse
      escreva("digite um número inteiro entre 1 a 50: ")
      leia(palpite)
      contador <- contador +1   //conta as tentativas e exibe no final
   fimenquanto

   escreval("Parábens você acertou! Com",contador," palpites")

fimalgoritmo