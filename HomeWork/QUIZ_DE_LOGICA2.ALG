algoritmo "QUIZ_DE_LOGICA2"
// QUIZ DE PERGUNTAS SOBRE L�GICA DE PROGRAMA��O
// ADICIONADO MAIS QUEST�ES E MANTENDO A ESTRUTURA ORIGINAL

var
   perguntas: vetor[1..30] de caractere
   alternativas: vetor[1..30] de caractere
   respostas: vetor[1..30] de inteiro
   respostaJogador, escolha: inteiro
   pontuacao, i: inteiro

inicio
   // Inicializando o jogo
   pontuacao <- 0

   // Definindo perguntas e alternativas
   perguntas[1] <- "Qual � o valor da vari�vel 'x' ap�s: x <- 5 + 3?"
   alternativas[1] <- "1. 5  2. 8  3. 15"
   respostas[1] <- 2

   perguntas[2] <- "Qual � a estrutura usada para repetir a��es em um algoritmo?"
   alternativas[2] <- "1. Condicional  2. Fun��o  3. La�o"
   respostas[2] <- 3

   perguntas[3] <- "Qual comando exibe informa��es na tela em Portugol?"
   alternativas[3] <- "1. escreva  2. leia  3. exibir"
   respostas[3] <- 1

   perguntas[4] <- "Qual o operador l�gico que representa 'E'?"
   alternativas[4] <- "1. &&  2. ||  3. !"
   respostas[4] <- 1

   perguntas[5] <- "Quantas vezes o bloco ser� executado? para i de 1 at� 5 fa�a"
   alternativas[5] <- "1. 4  2. 5  3. 6"
   respostas[5] <- 2

   perguntas[6] <- "O que 'MOD' calcula?"
   alternativas[6] <- "1. Soma  2. Divis�o  3. Resto da divis�o"
   respostas[6] <- 3

   perguntas[7] <- "Qual o valor de 'x' ap�s: x <- 10 MOD 3?"
   alternativas[7] <- "1. 1  2. 2  3. 3"
   respostas[7] <- 1

   perguntas[8] <- "O que significa um algoritmo ser 'determin�stico'?"
   alternativas[8] <- "1. Sempre d� o mesmo resultado para a mesma entrada  2. Depende do acaso  3. Executa de forma paralela"
   respostas[8] <- 1

   perguntas[9] <- "Qual a principal estrutura para tomadas de decis�o em algoritmos?"
   alternativas[9] <- "1. para  2. enquanto  3. se-ent�o"
   respostas[9] <- 3

   perguntas[10] <- "Qual o comando para ler dados do usu�rio no Portugol?"
   alternativas[10] <- "1. escreva  2. leia  3. insira"
   respostas[10] <- 2

   perguntas[11] <- "O que � uma vari�vel?"
   alternativas[11] <- "1. Um espa�o na mem�ria para armazenar dados  2. Um tipo de loop  3. Uma constante"
   respostas[11] <- 1

   perguntas[12] <- "Qual a sa�da de: escreva(10 / 2)?"
   alternativas[12] <- "1. 5  2. 10  3. 2"
   respostas[12] <- 1

   perguntas[13] <- "O que significa a palavra-chave 'inteiro' em Portugol?"
   alternativas[13] <- "1. Um n�mero sem casas decimais  2. Um n�mero com casas decimais  3. Um texto"
   respostas[13] <- 1

   perguntas[14] <- "Como se chama um erro de l�gica no programa?"
   alternativas[14] <- "1. Bug  2. Sintaxe  3. Overflow"
   respostas[14] <- 1

   perguntas[15] <- "O que ocorre se um loop n�o tiver uma condi��o de parada?"
   alternativas[15] <- "1. Ele executa infinitamente  2. Ele executa uma vez  3. Gera um erro de compila��o"
   respostas[15] <- 1

   perguntas[16] <- "Qual � o valor final de x? x <- 2 * (3 + 5)"
   alternativas[16] <- "1. 16  2. 13  3. 10"
   respostas[16] <- 1

   perguntas[17] <- "O que � um 'vetor' em programa��o?"
   alternativas[17] <- "1. Um loop  2. Uma sequ�ncia de dados  3. Uma vari�vel constante"
   respostas[17] <- 2

   perguntas[18] <- "Qual � o valor de: 5 + 2 * 3?"
   alternativas[18] <- "1. 11  2. 21  3. 15"
   respostas[18] <- 1

   perguntas[19] <- "Qual operador l�gico inverte um valor booleano?"
   alternativas[19] <- "1. &&  2. ||  3. !"
   respostas[19] <- 3

   perguntas[20] <- "Qual a sa�da de: escreva(5 MOD 2)?"
   alternativas[20] <- "1. 1  2. 2  3. 0"
   respostas[20] <- 1

   perguntas[21] <- "O que � um algoritmo?"
   alternativas[21] <- "1. Uma sequ�ncia de passos para resolver um problema  2. Um comando para imprimir dados  3. Um tipo de loop"
   respostas[21] <- 1

   perguntas[22] <- "O que � um 'seletor' em l�gica de programa��o?"
   alternativas[22] <- "1. Um bloco condicional  2. Um tipo de fun��o  3. Uma vari�vel"
   respostas[22] <- 1

   perguntas[23] <- "Qual � a diferen�a entre 'se' e 'para'?"
   alternativas[23] <- "1. 'Se' � condicional, 'para' � um la�o  2. Ambos s�o loops  3. N�o h� diferen�a"
   respostas[23] <- 1

   perguntas[24] <- "Como inicializar uma vari�vel em Portugol?"
   alternativas[24] <- "1. var x  2. x <- 0  3. ambas"
   respostas[24] <- 3

   perguntas[25] <- "Qual o significado de um c�digo 'intuitivo'?"
   alternativas[25] <- "1. � f�cil de entender  2. � mais r�pido  3. � curto"
   respostas[25] <- 1

   perguntas[26] <- "Qual � a prioridade em: 3 + 4 * 2?"
   alternativas[26] <- "1. Multiplica��o  2. Adi��o  3. Iguais"
   respostas[26] <- 1

   perguntas[27] <- "Qual o comando para definir uma fun��o em Portugol?"
   alternativas[27] <- "1. inicio  2. funcao  3. variavel"
   respostas[27] <- 2

   perguntas[28] <- "Qual o valor de: 2 + (6 / 2)?"
   alternativas[28] <- "1. 5  2. 4  3. 3"
   respostas[28] <- 1

   perguntas[29] <- "O que representa 'booleano'?"
   alternativas[29] <- "1. Verdadeiro ou Falso  2. Um n�mero  3. Um texto"
   respostas[29] <- 1

   perguntas[30] <- "Qual � o tipo de dado usado para texto em Portugol?"
   alternativas[30] <- "1. caractere  2. inteiro  3. logico"
   respostas[30] <- 1

   // Loop principal para manter o jogo ativo
   repita
      pontuacao <- 0 // Reinicia a pontua��o no in�cio de cada jogo
      escreval("Bem-vindo ao Quiz de L�gica de Programa��o!")
      escreval("Responda as perguntas e veja sua pontua��o no final.")
      escreval("")

      // Iniciando o loop para as perguntas
      para i de 1 ate 30 faca
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
