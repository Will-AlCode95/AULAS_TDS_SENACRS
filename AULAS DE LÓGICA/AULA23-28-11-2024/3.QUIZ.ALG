algoritmo "QUIZ"

//QUIZ DE PERGUNTAS E RESPOSTAS
//ADICIONADO MAIS PERGUNTAS E RESPOSTAS
//ADICIONADO UM LOOP PARA O GAME CONTINUAR ATIVO ATÉ O JOGADOR DECIDIR SAIR
//CORRIGIDO UNS PEQUENOS BUGS DE VARIÁVEL

var
   perguntas: vetor[1..15] de caractere
   alternativas: vetor[1..15] de caractere
   respostas: vetor[1..15] de inteiro
   respostaJogador, escolhar: inteiro
      pontuacao, i: inteiro

inicio
   // Inicializando o jogo
   pontuacao <- 0

   // Definindo perguntas
   perguntas[1] <- "Qual é a capital do Brasil?"
   perguntas[2] <- "Quantos lados tem um triângulo?"
   perguntas[3] <- "Qual é o maior planeta do sistema solar?"
   perguntas[4] <- "Qual é o maior oceano do mundo?"
   perguntas[5] <- "Quem foi o primeiro presidente do Brasil?"
   perguntas[6] <- "Qual planeta é conhecido como o 'Planeta Vermelho'?"
   perguntas[7] <- "Quantos continentes existem no mundo?"
   perguntas[8] <- "Qual é a fórmula química da água?"
   perguntas[9] <- "Quem escreveu 'Dom Quixote'?"
   perguntas[10] <- "Em qual país se localiza a Torre Eiffel?"
   perguntas[11] <- "Qual é o idioma mais falado no mundo?"
   perguntas[12] <- "Quantas cores existem no arco-íris?"
   perguntas[13] <- "Quem foi o inventor da lâmpada elétrica?"
   perguntas[14] <- "Qual é o esporte mais popular no Brasil?"
   perguntas[15] <- "Qual animal é conhecido por sua habilidade de mudar de cor?"

   // Definindo alternativas
   alternativas[1] <- "1. São Paulo  2. Rio de Janeiro  3. Brasília"
   alternativas[2] <- "1. Três  2. Quatro  3. Cinco"
   alternativas[3] <- "1. Terra  2. Júpiter  3. Marte"
   alternativas[4] <- "1. Atlântico  2. Índico  3. Pacífico"
   alternativas[5] <- "1. Deodoro da Fonseca  2. Getúlio Vargas  3. Dom Pedro II"
   alternativas[6] <- "1. Marte  2. Vênus  3. Júpiter"
   alternativas[7] <- "1. Cinco  2. Seis  3. Sete"
   alternativas[8] <- "1. CO2  2. H2O  3. O2"
   alternativas[9] <- "1. Miguel de Cervantes  2. William Shakespeare  3. Machado de Assis"
   alternativas[10] <- "1. Itália  2. França  3. Espanha"
   alternativas[11] <- "1. Inglês  2. Espanhol  3. Mandarim"
   alternativas[12] <- "1. Sete  2. Oito  3. Seis"
   alternativas[13] <- "1. Nikola Tesla  2. Thomas Edison  3. Alexander Graham Bell"
   alternativas[14] <- "1. Futebol  2. Vôlei  3. Basquete"
   alternativas[15] <- "1. Camaleão  2. Polvo  3. Lagarto"

   // Definindo respostas corretas
   respostas[1] <- 3
   respostas[2] <- 1
   respostas[3] <- 2
   respostas[4] <- 3
   respostas[5] <- 1
   respostas[6] <- 1
   respostas[7] <- 3
   respostas[8] <- 2
   respostas[9] <- 1
   respostas[10] <- 2
   respostas[11] <- 3
   respostas[12] <- 1
   respostas[13] <- 2
   respostas[14] <- 1
   respostas[15] <- 1

   // Loop principal para manter o jogo ativo
   repita
      pontuacao <- 0 // Reinicia a pontuação no início de cada jogo
      escreval("Bem-vindo ao Quiz!")
      escreval("Responda as perguntas e veja sua pontuação no final.")
      escreval("")

      // Iniciando o loop para as perguntas
      para i de 1 ate 15 faca
         escreval("Pergunta ", i, ": ", perguntas[i])
         escreval(alternativas[i])
         escreva("Sua resposta (digite o número correspondente 1,2 ou 3): ")
         leia(respostaJogador)

         // Verificando se a resposta está correta
         se respostaJogador = respostas[i] entao
            escreval("Correto!")
            pontuacao <- pontuacao + 1
         senao
            escreval("Errado. A resposta correta era: ", respostas[i])
         fimse

         escreval("") // Linha em branco para espaçamento
      fimpara

      // Mostrando a pontuação final
      escreval("GAME OVER!")
      escreval("Sua pontuação final foi: ", pontuacao, " de 15.")
      escreval("")

      // Perguntar ao jogador se deseja jogar novamente
      escreval("Deseja jogar novamente?")
      escreval("1. Sim")
      escreval("2. Não")
      escreva("digite: 1 ou 2 ")
      leia(escolhar)
   ate escolhar = 2 // Sai do loop se o jogador escolher "2"

   escreval("Obrigado por jogar! Até a próxima.")

fimalgoritmo
