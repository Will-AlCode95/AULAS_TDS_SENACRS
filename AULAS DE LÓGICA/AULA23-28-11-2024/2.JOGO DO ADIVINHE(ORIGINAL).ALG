algoritmo "JOGO DO ADIVINHE(ORIGINAL)"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   :Miguel

//SEM ALTERA��O

var
   numero_sorteado, palpite, contador: inteiro

inicio

   //numero sorteado
   numero_sorteado <- randi(50) + 1
   contador <-1

   //palpite
   escreva("digite um n�mero inteiro entre 1 a 50: ")
   leia(palpite)

   enquanto (palpite <> numero_sorteado) faca
      se (palpite < numero_sorteado) entao
         escreval("n�mero baixo")
      senao
         se (palpite > numero_sorteado) entao
            escreval("n�mero alto")
         fimse
      fimse
      escreva("digite um n�mero inteiro entre 1 a 50: ")
      leia(palpite)
      contador <- contador +1   //conta as tentativas e exibe no final
   fimenquanto

   escreval("Par�bens voc� acertou! Com",contador," palpites")

fimalgoritmo