algoritmo "QUIZ"

//QUIZ DE PERGUNTAS E RESPOSTAS
//ADICIONADO MAIS PERGUNTAS E RESPOSTAS
//ADICIONADO UM LOOP PARA O GAME CONTINUAR ATIVO AT� O JOGADOR DECIDIR SAIR
//CORRIGIDO UNS PEQUENOS BUGS DE VARI�VEL

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
   perguntas[1] <- "Qual � a capital do Brasil?"
   perguntas[2] <- "Quantos lados tem um tri�ngulo?"
   perguntas[3] <- "Qual � o maior planeta do sistema solar?"
   perguntas[4] <- "Qual � o maior oceano do mundo?"
   perguntas[5] <- "Quem foi o primeiro presidente do Brasil?"
   perguntas[6] <- "Qual planeta � conhecido como o 'Planeta Vermelho'?"
   perguntas[7] <- "Quantos continentes existem no mundo?"
   perguntas[8] <- "Qual � a f�rmula qu�mica da �gua?"
   perguntas[9] <- "Quem escreveu 'Dom Quixote'?"
   perguntas[10] <- "Em qual pa�s se localiza a Torre Eiffel?"
   perguntas[11] <- "Qual � o idioma mais falado no mundo?"
   perguntas[12] <- "Quantas cores existem no arco-�ris?"
   perguntas[13] <- "Quem foi o inventor da l�mpada el�trica?"
   perguntas[14] <- "Qual � o esporte mais popular no Brasil?"
   perguntas[15] <- "Qual animal � conhecido por sua habilidade de mudar de cor?"

   // Definindo alternativas
   alternativas[1] <- "1. S�o Paulo  2. Rio de Janeiro  3. Bras�lia"
   alternativas[2] <- "1. Tr�s  2. Quatro  3. Cinco"
   alternativas[3] <- "1. Terra  2. J�piter  3. Marte"
   alternativas[4] <- "1. Atl�ntico  2. �ndico  3. Pac�fico"
   alternativas[5] <- "1. Deodoro da Fonseca  2. Get�lio Vargas  3. Dom Pedro II"
   alternativas[6] <- "1. Marte  2. V�nus  3. J�piter"
   alternativas[7] <- "1. Cinco  2. Seis  3. Sete"
   alternativas[8] <- "1. CO2  2. H2O  3. O2"
   alternativas[9] <- "1. Miguel de Cervantes  2. William Shakespeare  3. Machado de Assis"
   alternativas[10] <- "1. It�lia  2. Fran�a  3. Espanha"
   alternativas[11] <- "1. Ingl�s  2. Espanhol  3. Mandarim"
   alternativas[12] <- "1. Sete  2. Oito  3. Seis"
   alternativas[13] <- "1. Nikola Tesla  2. Thomas Edison  3. Alexander Graham Bell"
   alternativas[14] <- "1. Futebol  2. V�lei  3. Basquete"
   alternativas[15] <- "1. Camale�o  2. Polvo  3. Lagarto"

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
      pontuacao <- 0 // Reinicia a pontua��o no in�cio de cada jogo
      escreval("Bem-vindo ao Quiz!")
      escreval("Responda as perguntas e veja sua pontua��o no final.")
      escreval("")

      // Iniciando o loop para as perguntas
      para i de 1 ate 15 faca
         escreval("Pergunta ", i, ": ", perguntas[i])
         escreval(alternativas[i])
         escreva("Sua resposta (digite o n�mero correspondente 1,2 ou 3): ")
         leia(respostaJogador)

         // Verificando se a resposta est� correta
         se respostaJogador = respostas[i] entao
            escreval("Correto!")
            pontuacao <- pontuacao + 1
         senao
            escreval("Errado. A resposta correta era: ", respostas[i])
         fimse

         escreval("") // Linha em branco para espa�amento
      fimpara

      // Mostrando a pontua��o final
      escreval("GAME OVER!")
      escreval("Sua pontua��o final foi: ", pontuacao, " de 15.")
      escreval("")

      // Perguntar ao jogador se deseja jogar novamente
      escreval("Deseja jogar novamente?")
      escreval("1. Sim")
      escreval("2. N�o")
      escreva("digite: 1 ou 2 ")
      leia(escolhar)
   ate escolhar = 2 // Sai do loop se o jogador escolher "2"

   escreval("Obrigado por jogar! At� a pr�xima.")

fimalgoritmo
