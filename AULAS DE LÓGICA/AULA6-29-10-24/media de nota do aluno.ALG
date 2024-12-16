Algoritmo "Média de Notas"
// Disciplina   : [Linguagem e Lógica de Programação]
// Data atual  : 29/10/2024
Var
// Seção de Declarações das variáveis 
nome, turma: caracter
nota1,nota2,nota3,nota4,nota5:inteiro
media: real

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
escreva("digite o nome do aluno: ")
leia(nome)
escreva("digite o nome da turma: ")
leia(turma)
escreva("digite a primeira nota: ")
leia(nota1)
escreva("digite a segunda nota: ")
leia(nota2)
escreva("digite a terceira nota: ")
leia(nota3)
escreva("digite a quarta nota: ")
leia(nota4)
escreva("digite a quinta a nota: ")
leia(nota5)

media <- (nota1+nota2+nota3+nota4+nota5)/5

se ((media >= 7) e (media <= 10))  entao
 escreval("APROVADO")
 senao
se ((media>= 5) e (media < 7)) entao
      escreval("RECUPERAÇÃO")
     senao ((media >= 0) e (media < 5)) entao
       escreval("REPROVADO")
     senao
se ((media > 10) e (media < 0)) entao
  escreva("FALHA NO GAME")
fimse
fimse
fimse

escreval("==========Informação do Aluno==============")
escreval("Nome do aluno: ", nome)
escreval("Turma: ", turma)
escreval("primeira: ",nota1)
escreval("segunda: ",nota2)
escreval("terceira: ",nota3)
escreval("quarta: ",nota4)
escreval("quinta: ",nota5)
escreval("media final: ",media:2:2)

Fimalgoritmo