algoritmo "QUIZ DE L�GICA DE PROGRAMA��O"

//QUIZ DE PERGUNTAS E RESPOSTAS SOBRE L�GICA DE PROGRAMA��O
//ADICIONADO UM LOOP PARA O GAME CONTINUAR ATIVO AT� O JOGADOR DECIDIR SAIR

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
   perguntas[1] <- "O que � um algoritmo?"
   perguntas[2] <- "Qual das alternativas representa uma estrutura condicional?"
   perguntas[3] <- "O que significa a sigla 'IDE'?"
   perguntas[4] <- "Qual � o s�mbolo de atribui��o em Portugol?"
   perguntas[5] <- "Qual � o la�o de repeti��o que executa pelo menos uma vez?"
   perguntas[6] <- "Qual � a fun��o usada para exibir mensagens no Portugol?"
   perguntas[7] <- "Qual � o tipo de dado usado para armazenar n�meros inteiros?"
   perguntas[8] <- "O que � uma vari�vel?"
   perguntas[9] <- "Qual � o comando para interromper um loop?"
   perguntas[10] <- "O que � um vetor?"
   perguntas[11] <- "Qual � o operador l�gico que representa 'e'?"
   perguntas[12] <- "O que � um procedimento em programa��o?"
   perguntas[13] <- "Qual das alternativas N�O � um tipo de dado em Portugol?"
   perguntas[14] <- "Como � chamada a t�cnica de dividir um problema em partes menores?"
   perguntas[15] <- "Qual � o resultado de 5 MOD 2 em Portugol?"

   // Definindo alternativas
   alternativas[1] <- "1. Um conjunto de instru��es  2. Um tipo de dado  3. Uma linguagem de programa��o"
   alternativas[2] <- "1. se-senao  2. enquanto-faca  3. escreva"
   alternativas[3] <- "1. Interface Digital Extrema  2. Integrated Development Environment  3. Identificador de Dados Eletr�nicos"
   alternativas[4] <- "1. :=  2. <-  3. =>"
   alternativas[5] <- "1. enquanto  2. para  3. repita"
   alternativas[6] <- "1. leia  2. escreva  3. escreval"
   alternativas[7] <- "1. inteiro  2. caractere  3. real"
   alternativas[8] <- "1. Uma posi��o fixa na mem�ria  2. Um espa�o para armazenar dados  3. Um tipo de dado"
   alternativas[9] <- "1. pare  2. continue  3. interrompa"
   alternativas[10] <- "1. Uma sequ�ncia de dados  2. Um n�mero decimal  3. Uma estrutura condicional"
   alternativas[11] <- "1. OU  2. E  3. N�O"
   alternativas[12] <- "1. Um tipo de dado  2. Uma fun��o sem retorno  3. Um la�o de repeti��o"
   alternativas[13] <- "1. inteiro  2. caractere  3. constante"
   alternativas[14] <- "1. Modulariza��o  2. Itera��o  3. Compila��o"
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
      pontuacao <- 0 // Reinicia a pontua��o no in�cio de cada jogo
      escreval("Bem-vindo ao Quiz de L�gica de Programa��o!")
      escreval("Responda as perguntas e veja sua pontua��o no final.")
      escreval("")

      // Iniciando o loop para as perguntas
      para i de 1 ate 15 faca
         escreval("Pergunta ", i, ": ", perguntas[i])
         escreval(alternativas[i])
         escreva("Sua resposta (digite o n�mero correspondente 1, 2 ou 3): ")
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
