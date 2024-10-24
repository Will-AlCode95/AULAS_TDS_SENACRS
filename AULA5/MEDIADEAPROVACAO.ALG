Algoritmo "AprovadoOuReprovado"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 24/10/2024
Var
 nomeAluno, nomeTurma: caracter
 nota1, nota2, nota3, nota4, nota5: inteiro
 media:real


Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
escreval("Nome do Aluno: ")
leia(nomeAluno)
escreval("Nome da Turma: ")
leia(nomeTurma)

escreval("Digite a primeira nota: ")
leia(nota1)
escreval("Digite a segunda nota: ")
leia(nota2)
escreval("Digite a terceira nota: ")
leia(nota3)
escreval("Digite a quarta nota: ")
leia(nota4)
escreval("Digite a quinta nota: ")
leia(nota5)

 // Exibição do boletim
   escreval("======= BOLETIM ESCOLAR =======")
   escreval("Nome do aluno: ", nomeAluno)
   escreval("Turma: ", nomeTurma)
   escreval("-----------------------------")
   escreval("Notas:")
   escreval("1ª Avaliação: ", nota1)
   escreval("2ª Avaliação: ", nota2)
   escreval("3ª Avaliação: ", nota3)
   escreval("4ª Avaliação: ", nota4)
   escreval("5ª Avaliação: ", nota5)
   escreval("-----------------------------")

//CAUCULA A MÉDIA
media <- (nota1+nota2+nota3+nota4+nota5) / 5

escreval ("Média Final: ", media, "%")

escreva("Situação Curricular: ")
se media >= 70 entao
    escreval("APROVADO")
 senao
   se media < 70 entao
   escreval("REPROVADO")
   fimse
fimse


Fimalgoritmo





