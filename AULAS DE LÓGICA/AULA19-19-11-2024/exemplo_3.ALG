Algoritmo "semnome"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 12/11/2024
Var
// Seção de Declarações das variáveis 
resultado: real
n1,n2,n3,n4: real
   funcao Media(nota1, nota2, nota3, nota4: real) :real
      var
      resultado: real
      
      inicio
      resultado <- (nota1+nota2+nota3+nota4)/4
      
      escreval("###############################")
      escreval("Primeira nota: ",nota1)
      escreval("Segunda nota: ",nota2)
      escreval("Terceira nota: ",nota3)
      escreval("Quarta nota: ",nota4)
      escreval("Média final do aluno: ",resultado:2:1)
        se (resultado >= 7) entao
           escreval("O aluno foi aprovado!")
        senao
          se (resultado >= 5) entao
            escreval("O aluno está em recuperação!")
          senao
             escreval("O aluno está reprovado!")
           fimse
        fimse
        retorne resultado
   fimfuncao
   


Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
escreva("Digite a primeira nota: ")
leia(n1)
escreva("Digite a segunda nota: ")
leia(n2)
escreva("Digite a terceira nota: ")
leia(n3)
escreva("Digite a quarta nota: ")
leia(n4)

resultado <-Media(n1,n2,n3,n4)

//escreva("Média final: ", resultado)

Fimalgoritmo