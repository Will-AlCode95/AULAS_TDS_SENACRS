Algoritmo "Sistema de notas"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Antonio Carlos Nicolodi 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 29/10/2024
Var
// Se��o de Declara��es das vari�veis 
nome, turma: caracter
n1,n2,n3,n4,n5: inteiro
media: real
laco: caracter

Inicio
// Sistema de notas
laco <- "S"
enquanto (laco="S") ou (laco = "s") faca
   escreval("## Sistema de notas ##")
   escreva("Informe o nome do aluno: ")
   leia(nome)
   escreva("Informe a turma: ")
   leia(turma)
   escreva("Informe a primeira nota; ")
   leia(n1)
   escreva("Informe a segunda nota; ")
   leia(n2)
   escreva("Informe a terceira nota; ")
   leia(n3)
   escreva("Informe a quarta nota; ")
   leia(n4)
   escreva("Informe a quinta nota; ")
   leia(n5)

      escreval("## Informa��es do aluno ##")
      escreval("Nome do aluno: ",nome)
      escreval("Turma: ",turma)
      escreval("Primeira nota: ",n1)
      escreval("Segunda nota: ",n2)
      escreval("Terceira nota: ",n3)
      escreval("Quarta nota: ",n4)
      escreval("Quinta nota: ",n5)

      media <- (n1+n2+n3+n4+n5)/5
      escreval("M�dia final: ",media:2:1)
      escreva("Situa��o curricular do aluno: ")

      se((media >= 7) e (media <= 10))entao
         escreval("Aprovado!")
      senao
           se((media >= 5) e (media < 7))entao
               escreval("Recupara��o!")
           senao
                se((media >= 0) e (media < 5))entao
                   escreval("Reprovado!")
           senao
                 escreval("Falha no sistema. A m�dia final est� incorreta!")
                fimse
            fimse
       fimse
       
escreval("Deseja continuar S/N: ")
leia(laco)
fimenquanto
Fimalgoritmo