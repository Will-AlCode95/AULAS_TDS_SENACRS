//O algoritmo se resume na criação de um jogo da velha, que contenha um menu
//com 5 opções: Jogar; nome dos jogadores; placar atual; estatisticas gerais
//e finalização do programa.

Algoritmo "JOGO DA VÉIA"

Var
   opc: inteiro
   contador: inteiro
   jogad1, jogad2, maisvitorias: caractere
   a, b, c, d, z, f, g, h, i: caractere
   posum, posdois: caractere
   ok: caractere
   pontuacaoum, pontuacaodois, totalvelha: inteiro

Inicio
   jogad1<- "Jogador1"
   jogad2<- "Jogador2"
   pontuacaoum<-0
   pontuacaodois<-0
   contador<-0
   totalvelha<-0

   escreval(" -=-=- JOGO DA VELHA -=-=- ")

   repita
      escreval("O que o usuário deseja fazer?")
      escreval("-")
      escreval("1 - Jogar uma partida")
      escreval("2 - Insira o nome dos jogadores")
      escreval("3 - Placar atual")
      escreval("4 - Estatisticas gerais")
      escreval("5 - Sair do programa")
      leia(opc)

      escolha(opc)
      caso 1
         limpatela
         contador<-0

         escreval("Para escolher as posições do jogo, siga esse padrão:")

         escreval(" a |    b | c ")
         escreval("-------------")
         escreval(" d |    z | f ")
         escreval("-------------")
         escreval(" g |    h | i ")
         escreval("")
         escreval("Digite para OK iniciar!")
         leia(ok)
         limpatela

         escreval("=-= Jogo da Velha =-=")
         escreval("")

         escreval( a,"          |       ", b,"       |       ",c )
         escreval("----------------")
         escreval( d,"          |       ", z,"       |       ",f )
         escreval("----------------")
         escreval( g,"          |       ", h,"       |       ",i )
         a<- "a"
         b<- "b"
         c<- "c"
         d<- "d"
         z<- "z"
         f<- "f"
         g<- "g"
         h<- "h"
         i<- "i"

         repita
            escreval(jogad1, ", é sua vez de jogar! Escolha uma posição.")
            contador<-contador+1
            leia(posum)
            enquanto (posum<>a)e(posum<>b)e(posum<>c)e(posum<>d)e(posum<>z)e(posum<>f)e(posum<>g)e(posum<>h)e(posum<>i)faca
               escreval("Dado Incorreto! Digite uma posicao valida!")
               leia(posum)
            fimenquanto

            se(posum=a) então
               a<-"X"
            senao
               se(posum=b) então
                  b<-"X"
               senao
                  se(posum=c)então
                     c<-"X"
                  senao
                     se(posum=d) então
                        d<-"X"
                     senao
                        se(posum=z) então
                           z<-"X"
                        senao
                           se(posum=f) então
                              f<-"X"
                           senao
                              se(posum=g) então
                                 g<-"X"
                              senao
                                 se(posum=h) então
                                    h<-"X"
                                 senao
                                    se(posum=i) então
                                       i<-"X"

                                    fimse
                                 fimse
                              fimse
                           fimse
                        fimse
                     fimse
                  fimse
               fimse
            fimse

            se(((((((a=b)))e(a=c)))ou((a=z)e(a=i)))ou((d=z)e(d=f)))ou((g=h)e(g=i)))ou((a=d)e(a=g)))ou((b=z)e(b=h)))ou((c=f)e(c=i)))ou((c=z)e(c=g))) então
               escreval("Vitória do Jogador 1!")
               pontuacaoum<-pontuacaoum+1

            senao
               se((a="X")ou(a="O")e((b="X")ou(b="O"))e((c="X")ou(c="O"))e((d="X")ou(d="O"))e((z="X")ou(z="O"))e((f="X")ou(f="O"))e((g="X")ou(g="O"))e((h="X")ou(h="O"))e((i="X")ou(i="O")) então
                  escreval("Empate!(VELHA)")
                  totalvelha<-totalvelha+1

               senao
                  escreval( a,"          |       ", b,"       |       ",c )
                  escreval("----------------")
                  escreval( d,"          |       ", z,"       |       ",f )
                  escreval("----------------")
                  escreval( g,"          |       ", h,"       |       ",i )
                  escreval("")
                  escreval(jogad2, ", é sua vez de jogar! Escolha uma posição.")
                  contador<-contador+1
                  leia(posdois)
                  enquanto (posum<>a)e(posum<>b)e(posum<>c)e(posum<>d)e(posum<>z)e(posum<>f)e(posum<>g)e(posum<>h)e(posum<>i)faca
                     escreval("Dado Incorreto! Digite uma posicao valida!")
                     leia(posdois)
                  fimenquanto

                  se(posdois=a) então
                     a<-"O"
                  senao
                     se(posdois=b) então
                        b<-"O"
                     senao
                        se(posdois=c) então
                           c<-"O"
                        senao
                           se(posdois=d) então
                              d<-"O"
                           senao
                              se(posdois=z) então
                                 z<-"O"
                              senao
                                 se(posdois=f) então
                                    f<-"O"
                                 senao
                                    se(posdois=g) então
                                       g<-"O"
                                    senao
                                       se(posdois=h) então
                                          h<-"O"
                                       senao
                                          se(posdois=i) então
                                             i<-"O"

                                          fimse
                                       fimse
                                    fimse
                                 fimse
                              fimse
                           fimse
                        fimse
                     fimse
                  fimse
               fimse
            fimse

            ...

         caso 2
            limpatela
            escreval("Digite o nome do jogador 1 (X):")
            leia(jogad1)
            escreval("Digite o nome do jogador 2(O):")
            leia(jogad2)

fimfuncao

caso 3
   limpatela
   escreval("-= PLACAR ATUAL =-")
   escreval("O ", jogad1, " possui", pontuacaoum, " pontos.")
   escreval("")
   escreval("O ", jogad2, " possui", pontuacaodois, " pontos.")
   escreval("")
fimfuncao

caso 4
   limpatela
   escreval("-= Estatísticas Gerais =-")
   se(pontuacaoum>pontuacaodois) então
      maisvitorias<-jogad1
   senao
      maisvitorias<-jogad2
      escreval("O jogador com mais vitórias é ", maisvitorias)
      escreval("O número de jogos que deram velha é ", totalvelha)
   caso 5
fimalgoritmo
outrocaso
   escreval("Comando Incorreto! Tente novamente!")
fimescolha
ate opc=5
fimalgoritmo