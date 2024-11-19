Algoritmo "Trabalhando com vetor"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 18/11/2024
Var
// Seção de Declarações das variáveis 
nota: vetor[1..5] de inteiro
media: real
nome, turma: caracter

Inicio
// Sistema de notas utilizando vetor
escreval("## Sistema de notas com vetor ##")
escreva("Digite o nome do aluno: ")
leia(nome)
escreva("Digite a turma: ")
leia(turma)
escreva("Digite a primeira nota: ")
leia(nota[1])
escreva("Digite a segunda nota: ")
leia(nota[2])
escreva("Digite a terceira nota: ")
leia(nota[3])
escreva("Digite a quarta nota: ")
leia(nota[4])
escreva("Digite a quinta nota: ")
leia(nota[5])

media <- (nota[1]+nota[2]+nota[3]+nota[4]+nota[5])/5
escreval("######################################")
escreval("Nome do aluno: ",nome)
escreval("Turma: ",turma)
escreval("Primeira nota: ",nota[1])
escreval("Segunda nota: ",nota[2])
escreval("Terceira nota: ",nota[3])
escreval("Quarta nota: ",nota[4])
escreval("Quinta nota: ",nota[5])
escreval("Média final; ",media:2:1)


Fimalgoritmo