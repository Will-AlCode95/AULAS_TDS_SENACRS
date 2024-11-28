algoritmo "JOGO DO ADIVINHE"
var
   numeroSecreto, palpite, tentativas, escolhar, tempo: inteiro

   // Função para gerar um número aleatório usando uma semente variável
funcao gerarNumeroAleatorio(min, max: inteiro): inteiro
var
   base: inteiro
inicio
   tempo <- tentativas * 100 + 57 // Multiplicando tentativas por 100 e somando 57 para modificar
   base <- (tempo + min + max) * 3 // Fórmula para espalhar o valor
   retorne (base % (max - min + 1)) + min // Garante que o número esteja entre min e max
fimfuncao

inicio
   escolhar <- 1 // Inicializa a escolha para entrar no loop

   enquanto escolhar = 1 faca
      // Configurações do jogo
      escreval("Bem-vindo ao jogo de Adivinhação!")
      escreval("Eu escolhi um número entre 1 e 100. Tente adivinhar!")
      numeroSecreto <- gerarNumeroAleatorio(1, 100) // Gera o número aleatório usando a função
      tentativas <- 0 // Reinicia o contador de tentativas

      // Loop de adivinhação
      repita
         escreva("Digite seu palpite: ")
         leia(palpite)
         tentativas <- tentativas + 1

         se palpite > numeroSecreto entao
            escreval("Muito alto! Tente novamente.")
         senao
            se palpite < numeroSecreto entao
               escreval("Muito baixo! Tente novamente.")
            fimse
         fimse
      ate palpite = numeroSecreto

      // Jogador acertou
      escreval("Parabéns! Você acertou em ", tentativas, " tentativas.")
      escreval("")

      // Perguntar ao jogador se deseja jogar novamente
   fimenquanto

   escreval("Obrigado por jogar! Até a próxima.")
fimalgoritmo
