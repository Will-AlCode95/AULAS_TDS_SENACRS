Algoritmo "semnome"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Antonio Carlos Nicolodi 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 12/11/2024
Var
// Se��o de Declara��es das vari�veis 
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
      escreval("M�dia final do aluno: ",resultado:2:1)
        se (resultado >= 7) entao
           escreval("O aluno foi aprovado!")
        senao
          se (resultado >= 5) entao
            escreval("O aluno est� em recupera��o!")
          senao
             escreval("O aluno est� reprovado!")
           fimse
        fimse
        retorne resultado
   fimfuncao
   


Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 
escreva("Digite a primeira nota: ")
leia(n1)
escreva("Digite a segunda nota: ")
leia(n2)
escreva("Digite a terceira nota: ")
leia(n3)
escreva("Digite a quarta nota: ")
leia(n4)

resultado <-Media(n1,n2,n3,n4)

//escreva("M�dia final: ", resultado)

Fimalgoritmo