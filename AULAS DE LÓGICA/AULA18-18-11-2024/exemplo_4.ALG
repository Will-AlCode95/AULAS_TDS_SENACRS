Algoritmo "Trabalhando com vetor"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Antonio Carlos Nicolodi 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 18/11/2024
Var
// Se��o de Declara��es das vari�veis 
nota: vetor[1..5] de inteiro
media: real
nome, turma: caracter
i: inteiro

Inicio
// Sistema de notas
escreval("## Sistema de notas utilizando vetor e a fun��o para ##")
escreva("Digite o nome do aluno: ")
leia(nome)
escreva("Digite a turma: ")
leia(turma)
           para i de 1 ate 5 faca
                  escreva("Digite a ",i,"� nota: ")
                  leia(nota[i])
           fimpara
     media <-(nota[1]+nota[2]+nota[3]+nota[4]+nota[5])/5
     
     escreval("###########################")
     escreval("Nome do aluno: ",nome)
     escreval("Turma: ",turma)

            para i de 1 ate 5 faca
                escreval(i,"� nota: ",nota[i])
            fimpara
            escreval("M�dia final do aluno: ",media:2:1)

Fimalgoritmo