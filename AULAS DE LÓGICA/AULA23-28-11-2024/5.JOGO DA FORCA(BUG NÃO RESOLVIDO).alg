algoritmo "jogo da forca"
// Função : Jogo da Forca
// Autor : Gabrieli  - Projeto Algoritmos Avançados
// Data : 16/09/2014
// Seção de Declarações 
var
   palavras: vetor[1..10] de caracter   // guarda as palavras do jogo
   
   jogo: vetor[1..20] de caracter      // guarda as letras que o jogador acerta
   sorteada: vetor[1..20] de caracter   // guarda a palavra sorteada no vetor
   
   letra: caracter    // a letra que o jogador informa
   erros, sorteio, tamanho, PONTOS, cont: inteiro
   ganhou, continua: logico
   op, resposta:caracter
   
   
procedimento desenha_ultimas_linhas()
var i,j: inteiro
inicio
      escreva("         *********         ")
      para i de 1 ate tamanho faca
           escreva (jogo[i], " " )
      fimpara
      escreval("  ")
      
      escreva("         *********         ")
      para j de 1 ate tamanho faca
           escreva ("-", " " )
      fimpara
      escreval ("  ")
      escreval ("  ")
      escreval ("  ")


fimprocedimento
   
   
procedimento desenha()
inicio
      escolha erros
      caso 0
      escreval("            ************************")
      escreval("            ************************")
      escreval("            ***                 *** ")
      escreval("            ***                     ")
      escreval("            ***                     ")
      escreval("            ***                     ")
      escreval("            ***                     ")
      escreval("            ***                     ")
      escreval("            ***                     ")
      escreval("            ***                     ")
      escreval("            ***                     ")
      escreval("            ***                     ")
      escreval("            ***                     ")
      escreval("            ***                     ")
      escreval("            ***                     ")
      escreval("            ***                     ")
      escreval("            ***                     ")
      escreval("            ***                     ")
      escreval("           *****                    ")
      desenha_ultimas_linhas()

      caso 1
      
      escreval("            ************************")
      escreval("            ************************")
      escreval("            ***                 *** ")
      escreval("            ***                 * *  ")
      escreval("            ***                *   * ")
      escreval("            ***                 * *  ")
      escreval("            ***                     ")
      escreval("            ***                     ")
      escreval("            ***                     ")
      escreval("            ***                     ")
      escreval("            ***                     ")
      escreval("            ***                     ")
      escreval("            ***                     ")
      escreval("            ***                     ")
      escreval("            ***                     ")
      escreval("            ***                     ")
      escreval("            ***                     ")
      escreval("            ***                     ")
      escreval("           *****                    ")
      desenha_ultimas_linhas()

      
      caso 2
      escreval("            ************************")
      escreval("            ************************")
      escreval("            ***                 *** ")
      escreval("            ***                * * *  ")
      escreval("            ***               *     * ")
      escreval("            ***                * * * ")
      ESCREVAL("            ***                  |    ")
      escreval("            ***                  |   ")
      escreval("            ***                  |  ")
      escreval("            ***                  |   ")
      escreval("            ***                  |  ")
      escreval("            ***                  |   ")
      escreval("            ***                     ")
      escreval("            ***                     ")
      escreval("            ***                     ")
      escreval("            ***                     ")
      escreval("            ***                     ")
      escreval("            ***                     ")
      escreval("            ***                     ")
      escreval("           *****                    ")
      desenha_ultimas_linhas()
      caso 3
      escreval("            ************************")
      escreval("            ************************")
      escreval("            ***                 *** ")
      escreval("            ***                * * * ")
      escreval("            ***               *     * ")
      escreval("            ***                * * *  ")
      ESCREVAL("            ***                  |    ")
      escreval("            ***                 /|   ")
      escreval("            ***                / |  ")
      escreval("            ***               /  |   ")
      escreval("            ***              *   |  ")
      escreval("            ***                  |   ")
      escreval("            ***                     ")
      escreval("            ***                     ")
      escreval("            ***                     ")
      escreval("            ***                     ")
      escreval("            ***                     ")
      escreval("            ***                     ")
      escreval("            ***                     ")
      escreval("           *****                    ")
      desenha_ultimas_linhas()
      caso 4
      escreval("            ************************")
      escreval("            ************************")
      escreval("            ***                 *** ")
      escreval("            ***                * * *  ")
      escreval("            ***               *     * ")
      escreval("            ***                * * *  ")
      ESCREVAL("            ***                  |    ")
      escreval("            ***                 /|\   ")
      escreval("            ***                / | \ ")
      escreval("            ***               /  |  \ ")
      escreval("            ***              *   |   *")
      escreval("            ***                  |    ")
      escreval("            ***                      ")
      escreval("            ***                      ")
      escreval("            ***                      ")
      escreval("            ***                      ")
      escreval("            ***                      ")
      escreval("            ***                      ")
      escreval("            ***                      ")
      escreval("           *****                     ")
       desenha_ultimas_linhas()
      caso 5
      escreval("            ************************")
      escreval("            ************************")
      escreval("            ***                 *** ")
      escreval("            ***                * * *  ")
      escreval("            ***               *     * ")
      escreval("            ***                * * *  ")
      ESCREVAL("            ***                  |    ")
      escreval("            ***                 /|\   ")
      escreval("            ***                / | \ ")
      escreval("            ***               /  |  \ ")
      escreval("            ***              *   |   *")
      escreval("            ***                  |    ")
      escreval("            ***                 /    ")
      escreval("            ***                /      ")
      escreval("            ***               /       ")
      escreval("            ***             _/        ")
      escreval("            ***                      ")
      escreval("            ***                      ")
      escreval("            ***                      ")
      escreval("           *****                     ")
       desenha_ultimas_linhas()
      caso 6
      escreval("            ************************")
      escreval("            ************************")
      escreval("            ***                 *** ")
      escreval("            ***                * * *   ")
      escreval("            ***               *     *  ")
      escreval("            ***                * * *   ")
      ESCREVAL("            ***                  |     ")
      escreval("            ***                 /|\    ")
      escreval("            ***                / | \                       *** VOCÊ PERDEU*** ")
      escreval("            ***               /  |  \  ")
      escreval("            ***              *   |   * ")
      escreval("            ***                  |     ")
      escreval("            ***                 / \    ")
      escreval("            ***                /   \   ")
      escreval("            ***               /     \  ")
      escreval("            ***             _/       \_")
      escreval("            ***                        ")
      escreval("            ***                        ")
      escreval("            ***                        ")
      escreval("           *****                       ")
       desenha_ultimas_linhas()
     fimescolha

fimprocedimento

procedimento carrega_sorteada()
var i: inteiro
inicio

      para i  de 1 ate tamanho faca
           sorteada[i] <- copia(palavras[sorteio], i,1) // Funcao copia retorna a letra na posicao informada
            // retorna
      fimpara
      
      para i de 1 ate tamanho faca
      jogo[i]<-" "
      fimpara

fimprocedimento

procedimento verifica_letra()
var i: inteiro
achou: logico
inicio
      achou <- falso
      para i de 1 ate tamanho faca
           se (letra = sorteada[i]) entao
              jogo[i] <- letra
              achou <- verdadeiro
              cont<-cont+1
           fimse
      fimpara
      se achou = falso entao
         erros <- erros + 1
      fimse
fimprocedimento

procedimento frutas
inicio
      palavras[1] <- "abacaxi"
      palavras[2] <- "abacate"
      palavras[3] <- "uva"
      palavras[4] <- "pera"
      palavras[5] <- "goiaba"
      palavras[6] <- "jaca"
      palavras[7] <- "laranja"
      palavras[8] <- "banana"
      palavras[9] <- "melancia"
      palavras[10] <- "limao"
fimprocedimento
PROCEDIMENTO VERIFICA_GANHADOR
INICIO
GANHOU <- FALSO
SE (cont=tamanho) ENTAO
GANHOU <- VERDADEIRO
PONTOS<-PONTOS+1
FIMSE
FIMPROCEDIMENTO

procedimento lugares
inicio
palavras[1] <- "australia"
palavras[2] <- "Inglaterra"
palavras[3] <- "Egito"
palavras[4] <- "Brasil"
palavras[5] <- "Estados Unidos"
palavras[6] <- "Turquia"
palavras[7] <- "Japão"
palavras[8] <- "Cuba"
palavras[9] <-"China"
palavras[10]<-"Ungria"
fimprocedimento

procedimento nomes
inicio
palavras[1] <- "João"
palavras[2] <- "Ana"
palavras[3] <- "Paula"
palavras[4] <- "Fernando"
palavras[5] <- "Cristiana"
palavras[6] <- "Maria"
palavras[7] <- "Pietro"
palavras[8] <- "Dulce"
palavras[9] <- "Pedro"
palavras[10]<- "Henrique"
fimprocedimento

procedimento ANATOMIA
inicio
palavras[1] <- "Cabeça"
palavras[2] <- "Pescoço"
palavras[3] <- "Barriga"
palavras[4] <- "Pé"
palavras[5] <- "Joelho"
palavras[6] <- "Estomago"
palavras[7] <- "dedos"
palavras[8] <- "tendao"
palavras[9] <- "Femur"
palavras[10]<- "Boca"
fimprocedimento
PROCEDIMENTO CATEGORIA(X:CARACTER)
INICIO

ESCREVAL("PONTOS: ", PONTOS)
ESCOLHA X
CASO "A"
ESCREVAL ("CATEGORIA: FRUTAS")
CASO "B"
ESCREVAL("CATEGORIA: LUGARES")
CASO "C"
ESCREVAL("CATEGORIA: NOMES")
CASO "D"
ESCREVAL("CATEGORIA: ANATOMIA")
FIMESCOLHA
FIMPROCEDIMENTO

inicio
// Seção de Comandos 
repita
limpatela
 continua <- verdadeiro
erros <- 0
ganhou <- falso
cont <- 0
escreval("Escolha uma categoria: ")
escreval("A - frutas")
escreval("B - lugares")
escreval("C - nomes")
escreval("D - anatomia")
leia (op)
escolha op
caso "A"
frutaS
caso "B"
lugares
caso "C"
nomes
caso "D"
anatomia
fimescolha

      sorteio <- randi(10)  // a Funcao Randi escolhe um numero aleatoriamente até o parametro informador
      tamanho <- compr(palavras[sorteio]) //Função compr retorna o comprimeito (tamanho) da palavra
      carrega_sorteada()
      
      repita
            limpatela()
             CATEGORIA(OP)
            desenha()
            escreva("Informe a letra :")
            leia(letra)
            verifica_letra()
           verifica_ganhador //  ganhou <- verdadeiro

      ate (erros > 6) ou (ganhou = verdadeiro)
      
          desenha
          se (ganhou=verdadeiro) entao
          escreval("PARABÉNS!! Você ganhou")
          fimse
          escreval(" Deseja jogar novamente? ")
          escreval(" Sim ou não")
          leia(resposta)
          se (resposta= "sim")  ENTAO
          CONTINUA <-VERDADEIRO
          senao
          SE (RESPOSTA="nao") ENTAO
          CONTINUA <- FALSO
          ESCREVAL("Fim de Jogo!")
          fimse
          fimse
          ate continua = falso
fimalgoritmo
