algoritmo "QUIZ_DE_LOGICA2"
// QUIZ DE PERGUNTAS SOBRE LÓGICA DE PROGRAMAÇÃO
// ADICIONADO MAIS QUESTÕES E MANTENDO A ESTRUTURA ORIGINAL

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
   perguntas[1] <- "Qual é o valor da variável 'x' após: x <- 5 + 3?"
   alternativas[1] <- "1. 5  2. 8  3. 15"
   respostas[1] <- 2

   perguntas[2] <- "Qual é a estrutura usada para repetir ações em um algoritmo?"
   alternativas[2] <- "1. Condicional  2. Função  3. Laço"
   respostas[2] <- 3

   perguntas[3] <- "Qual comando exibe informações na tela em Portugol?"
   alternativas[3] <- "1. escreva  2. leia  3. exibir"
   respostas[3] <- 1

   perguntas[4] <- "Qual o operador lógico que representa 'E'?"
   alternativas[4] <- "1. &&  2. ||  3. !"
   respostas[4] <- 1

   perguntas[5] <- "Quantas vezes o bloco será executado? para i de 1 até 5 faça"
   alternativas[5] <- "1. 4  2. 5  3. 6"
   respostas[5] <- 2

   perguntas[6] <- "O que 'MOD' calcula?"
   alternativas[6] <- "1. Soma  2. Divisão  3. Resto da divisão"
   respostas[6] <- 3

   perguntas[7] <- "Qual o valor de 'x' após: x <- 10 MOD 3?"
   alternativas[7] <- "1. 1  2. 2  3. 3"
   respostas[7] <- 1

   perguntas[8] <- "O que significa um algoritmo ser 'determinístico'?"
   alternativas[8] <- "1. Sempre dá o mesmo resultado para a mesma entrada  2. Depende do acaso  3. Executa de forma paralela"
   respostas[8] <- 1

   perguntas[9] <- "Qual a principal estrutura para tomadas de decisão em algoritmos?"
   alternativas[9] <- "1. para  2. enquanto  3. se-então"
   respostas[9] <- 3

   perguntas[10] <- "Qual o comando para ler dados do usuário no Portugol?"
   alternativas[10] <- "1. escreva  2. leia  3. insira"
   respostas[10] <- 2

   perguntas[11] <- "O que é uma variável?"
   alternativas[11] <- "1. Um espaço na memória para armazenar dados  2. Um tipo de loop  3. Uma constante"
   respostas[11] <- 1

   perguntas[12] <- "Qual a saída de: escreva(10 / 2)?"
   alternativas[12] <- "1. 5  2. 10  3. 2"
   respostas[12] <- 1

   perguntas[13] <- "O que significa a palavra-chave 'inteiro' em Portugol?"
   alternativas[13] <- "1. Um número sem casas decimais  2. Um número com casas decimais  3. Um texto"
   respostas[13] <- 1

   perguntas[14] <- "Como se chama um erro de lógica no programa?"
   alternativas[14] <- "1. Bug  2. Sintaxe  3. Overflow"
   respostas[14] <- 1

   perguntas[15] <- "O que ocorre se um loop não tiver uma condição de parada?"
   alternativas[15] <- "1. Ele executa infinitamente  2. Ele executa uma vez  3. Gera um erro de compilação"
   respostas[15] <- 1

   perguntas[16] <- "Qual é o valor final de x? x <- 2 * (3 + 5)"
   alternativas[16] <- "1. 16  2. 13  3. 10"
   respostas[16] <- 1

   perguntas[17] <- "O que é um 'vetor' em programação?"
   alternativas[17] <- "1. Um loop  2. Uma sequência de dados  3. Uma variável constante"
   respostas[17] <- 2

   perguntas[18] <- "Qual é o valor de: 5 + 2 * 3?"
   alternativas[18] <- "1. 11  2. 21  3. 15"
   respostas[18] <- 1

   perguntas[19] <- "Qual operador lógico inverte um valor booleano?"
   alternativas[19] <- "1. &&  2. ||  3. !"
   respostas[19] <- 3

   perguntas[20] <- "Qual a saída de: escreva(5 MOD 2)?"
   alternativas[20] <- "1. 1  2. 2  3. 0"
   respostas[20] <- 1

   perguntas[21] <- "O que é um algoritmo?"
   alternativas[21] <- "1. Uma sequência de passos para resolver um problema  2. Um comando para imprimir dados  3. Um tipo de loop"
   respostas[21] <- 1

   perguntas[22] <- "O que é um 'seletor' em lógica de programação?"
   alternativas[22] <- "1. Um bloco condicional  2. Um tipo de função  3. Uma variável"
   respostas[22] <- 1

   perguntas[23] <- "Qual é a diferença entre 'se' e 'para'?"
   alternativas[23] <- "1. 'Se' é condicional, 'para' é um laço  2. Ambos são loops  3. Não há diferença"
   respostas[23] <- 1

   perguntas[24] <- "Como inicializar uma variável em Portugol?"
   alternativas[24] <- "1. var x  2. x <- 0  3. ambas"
   respostas[24] <- 3

   perguntas[25] <- "Qual o significado de um código 'intuitivo'?"
   alternativas[25] <- "1. É fácil de entender  2. É mais rápido  3. É curto"
   respostas[25] <- 1

   perguntas[26] <- "Qual é a prioridade em: 3 + 4 * 2?"
   alternativas[26] <- "1. Multiplicação  2. Adição  3. Iguais"
   respostas[26] <- 1

   perguntas[27] <- "Qual o comando para definir uma função em Portugol?"
   alternativas[27] <- "1. inicio  2. funcao  3. variavel"
   respostas[27] <- 2

   perguntas[28] <- "Qual o valor de: 2 + (6 / 2)?"
   alternativas[28] <- "1. 5  2. 4  3. 3"
   respostas[28] <- 1

   perguntas[29] <- "O que representa 'booleano'?"
   alternativas[29] <- "1. Verdadeiro ou Falso  2. Um número  3. Um texto"
   respostas[29] <- 1

   perguntas[30] <- "Qual é o tipo de dado usado para texto em Portugol?"
   alternativas[30] <- "1. caractere  2. inteiro  3. logico"
   respostas[30] <- 1

   // Loop principal para manter o jogo ativo
   repita
      pontuacao <- 0 // Reinicia a pontuação no início de cada jogo
      escreval("Bem-vindo ao Quiz de Lógica de Programação!")
      escreval("Responda as perguntas e veja sua pontuação no final.")
      escreval("")

      // Iniciando o loop para as perguntas
      para i de 1 ate 30 faca
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
