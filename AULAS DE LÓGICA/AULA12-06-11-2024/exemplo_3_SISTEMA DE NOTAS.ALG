Algoritmo "Sistema de notas"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 29/10/2024
Var
// Seção de Declarações das variáveis 
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

      escreval("## Informações do aluno ##")
      escreval("Nome do aluno: ",nome)
      escreval("Turma: ",turma)
      escreval("Primeira nota: ",n1)
      escreval("Segunda nota: ",n2)
      escreval("Terceira nota: ",n3)
      escreval("Quarta nota: ",n4)
      escreval("Quinta nota: ",n5)

      media <- (n1+n2+n3+n4+n5)/5
      escreval("Média final: ",media:2:1)
      escreva("Situação curricular do aluno: ")

      se((media >= 7) e (media <= 10))entao
         escreval("Aprovado!")
      senao
           se((media >= 5) e (media < 7))entao
               escreval("Recuparação!")
           senao
                se((media >= 0) e (media < 5))entao
                   escreval("Reprovado!")
           senao
                 escreval("Falha no sistema. A média final está incorreta!")
                fimse
            fimse
       fimse
       
escreval("Deseja continuar S/N: ")
leia(laco)
fimenquanto
Fimalgoritmo