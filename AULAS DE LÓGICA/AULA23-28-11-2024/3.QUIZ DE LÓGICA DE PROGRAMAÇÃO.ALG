algoritmo "QUIZ DE LÓGICA DE PROGRAMAÇÃO"

//QUIZ DE PERGUNTAS E RESPOSTAS SOBRE LÓGICA DE PROGRAMAÇÃO
//ADICIONADO UM LOOP PARA O GAME CONTINUAR ATIVO ATÉ O JOGADOR DECIDIR SAIR

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
   perguntas[1] <- "O que é um algoritmo?"
   perguntas[2] <- "Qual das alternativas representa uma estrutura condicional?"
   perguntas[3] <- "O que significa a sigla 'IDE'?"
   perguntas[4] <- "Qual é o símbolo de atribuição em Portugol?"
   perguntas[5] <- "Qual é o laço de repetição que executa pelo menos uma vez?"
   perguntas[6] <- "Qual é a função usada para exibir mensagens no Portugol?"
   perguntas[7] <- "Qual é o tipo de dado usado para armazenar números inteiros?"
   perguntas[8] <- "O que é uma variável?"
   perguntas[9] <- "Qual é o comando para interromper um loop?"
   perguntas[10] <- "O que é um vetor?"
   perguntas[11] <- "Qual é o operador lógico que representa 'e'?"
   perguntas[12] <- "O que é um procedimento em programação?"
   perguntas[13] <- "Qual das alternativas NÃO é um tipo de dado em Portugol?"
   perguntas[14] <- "Como é chamada a técnica de dividir um problema em partes menores?"
   perguntas[15] <- "Qual é o resultado de 5 MOD 2 em Portugol?"

   // Definindo alternativas
   alternativas[1] <- "1. Um conjunto de instruções  2. Um tipo de dado  3. Uma linguagem de programação"
   alternativas[2] <- "1. se-senao  2. enquanto-faca  3. escreva"
   alternativas[3] <- "1. Interface Digital Extrema  2. Integrated Development Environment  3. Identificador de Dados Eletrônicos"
   alternativas[4] <- "1. :=  2. <-  3. =>"
   alternativas[5] <- "1. enquanto  2. para  3. repita"
   alternativas[6] <- "1. leia  2. escreva  3. escreval"
   alternativas[7] <- "1. inteiro  2. caractere  3. real"
   alternativas[8] <- "1. Uma posição fixa na memória  2. Um espaço para armazenar dados  3. Um tipo de dado"
   alternativas[9] <- "1. pare  2. continue  3. interrompa"
   alternativas[10] <- "1. Uma sequência de dados  2. Um número decimal  3. Uma estrutura condicional"
   alternativas[11] <- "1. OU  2. E  3. NÃO"
   alternativas[12] <- "1. Um tipo de dado  2. Uma função sem retorno  3. Um laço de repetição"
   alternativas[13] <- "1. inteiro  2. caractere  3. constante"
   alternativas[14] <- "1. Modularização  2. Iteração  3. Compilação"
   alternativas[15] <- "1. 1  2. 2  3. 0"

   // Definindo respostas corretas
   respostas[1] <- 1
   respostas[2] <- 1
   respostas[3] <- 2
   respostas[4] <- 2
   respostas[5] <- 3
   respostas[6] <- 3
   respostas[7] <- 1
   respostas[8] <- 2
   respostas[9] <- 1
   respostas[10] <- 1
   respostas[11] <- 2
   respostas[12] <- 2
   respostas[13] <- 3
   respostas[14] <- 1
   respostas[15] <- 1

   // Loop principal para manter o jogo ativo
   repita
      pontuacao <- 0 // Reinicia a pontuação no início de cada jogo
      escreval("Bem-vindo ao Quiz de Lógica de Programação!")
      escreval("Responda as perguntas e veja sua pontuação no final.")
      escreval("")

      // Iniciando o loop para as perguntas
      para i de 1 ate 15 faca
         escreval("Pergunta ", i, ": ", perguntas[i])
         escreval(alternativas[i])
         escreva("Sua resposta (digite o número correspondente 1, 2 ou 3): ")
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
