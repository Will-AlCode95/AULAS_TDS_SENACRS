algoritmo "QUIZ(ORIGINAL)"

//SEM ALTERA��O

var
    perguntas: vetor[1..3] de caractere
    alternativas: vetor[1..3] de caractere
    respostas: vetor[1..3] de inteiro
    respostaJogador: inteiro
    pontuacao: inteiro
    i: inteiro

inicio
    // Inicializando o jogo
    pontuacao <- 0

    // Definindo perguntas
    perguntas[1] <- "Qual � a capital do Brasil?"
    perguntas[2] <- "Quantos lados tem um tri�ngulo?"
    perguntas[3] <- "Qual � o maior planeta do sistema solar?"

    // Definindo alternativas
    alternativas[1] <- "1. S�o Paulo  2. Rio de Janeiro  3. Bras�lia"
    alternativas[2] <- "1. Tr�s  2. Quatro  3. Cinco"
    alternativas[3] <- "1. Terra  2. J�piter  3. Marte"

    // Definindo respostas corretas
    respostas[1] <- 3
    respostas[2] <- 1
    respostas[3] <- 2

    // Iniciando o loop para as perguntas
    para i de 1 ate 3 faca
        escreval("Pergunta ", i, ": ", perguntas[i])
        escreval(alternativas[i])
        escreva("Sua resposta (digite o n�mero correspondente): ")
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
    escreval("Fim do jogo!")
    escreval("Sua pontua��o final foi: ", pontuacao, " de 3.")
fimalgoritmo
