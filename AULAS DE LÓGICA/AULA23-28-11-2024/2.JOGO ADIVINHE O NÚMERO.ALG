algoritmo "JOGO DO ADIVINHE"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Miguel

//ADICIONADO AS LINHAS DE C�DIGO: se (palpite < 1) ou (palpite > 50) entao
//escreval("N�mero inv�lido. Por favor, insira um n�mero entre 1 e 50.")
//NO C�DIGO ORIGINAL N�O TINHA ESSA LINHA ACIMA


var
   numero_sorteado, palpite, contador: inteiro

inicio

   // Gerar o n�mero sorteado
   numero_sorteado <- randi(50) + 1
   contador <- 1

   // Solicitar o primeiro palpite
   escreva("Digite um n�mero inteiro entre 1 a 50: ")
   leia(palpite)

   // Verificar se o palpite est� correto
   enquanto (palpite <> numero_sorteado) faca

      // Verificar se o n�mero est� no intervalo v�lido
      se (palpite < 1) ou (palpite > 50) entao
         escreval("N�mero inv�lido. Por favor, insira um n�mero entre 1 e 50.")
      senao
         // Verificar se o palpite � maior ou menor que o n�mero sorteado
         se (palpite < numero_sorteado) entao
            escreval("N�mero baixo.")
         senao
            escreval("N�mero alto.")
         fimse
      fimse

      // Solicitar novo palpite
      escreva("Digite um n�mero inteiro entre 1 a 50: ")
      leia(palpite)
      contador <- contador + 1 // Contar as tentativas
   fimenquanto

   escreval("Parab�ns! Voc� acertou depois de", contador, " palpites.")

fimalgoritmo

