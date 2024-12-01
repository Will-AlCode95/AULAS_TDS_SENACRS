algoritmo "JOGO DO ADIVINHE"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Miguel

//ADICIONADO A LINHA DE CÓDIGO: se (palpite < 1) ou (palpite > 50) entao
//escreval("Número inválido. Por favor, insira um número entre 1 e 50.")
//NO CÓDIGO ORIGINAL NÃO TINHA ESSA LINHA ACIMA


var
   numero_sorteado, palpite, contador: inteiro

inicio

   // Gerar o número sorteado
   numero_sorteado <- randi(50) + 1
   contador <- 1

   // Solicitar o primeiro palpite
   escreva("Digite um número inteiro entre 1 a 50: ")
   leia(palpite)

   // Verificar se o palpite está correto
   enquanto (palpite <> numero_sorteado) faca

      // Verificar se o número está no intervalo válido
      se (palpite < 1) ou (palpite > 50) entao
         escreval("Número inválido. Por favor, insira um número entre 1 e 50.")
      senao
         // Verificar se o palpite é maior ou menor que o número sorteado
         se (palpite < numero_sorteado) entao
            escreval("Número baixo.")
         senao
            escreval("Número alto.")
         fimse
      fimse

      // Solicitar novo palpite
      escreva("Digite um número inteiro entre 1 a 50: ")
      leia(palpite)
      contador <- contador + 1 // Contar as tentativas
   fimenquanto

   escreval("Parabéns! Você acertou depois de", contador, " palpites.")

fimalgoritmo

