Algoritmo "Media para Aprova��o"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Antonio Carlos Nicolodi 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 24/10/2024
Var
 nomeAluno, nomeCurso, nomeTurma: caracter
 nota1, nota2, nota3, nota4, nota5: real
 media:real
 matricula: caracter


Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 
escreval("Nome do Aluno: ")
leia(nomeAluno)
escreval("Nome da Turma: ")
leia(nomeTurma)
escreval("Nome do Curso: ")
leia(nomeCurso)
escreval("numero da matricula: ")
leia(matricula)

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

 // Exibi��o do boletim
   escreval("======= BOLETIM ESCOLAR =======")
   escreval("Nome do aluno: ", nomeAluno)
   escreval("Turma: ", nomeTurma)
   escreval("Nome do Curso: ", nomeCurso)
   escreval("Numero da Matricula: ", matricula)
   escreval("-----------------------------")
   escreval("Notas:")
   escreval("1� Avalia��o: ", nota1)
   escreval("2� Avalia��o: ", nota2)
   escreval("3� Avalia��o: ", nota3)
   escreval("4� Avalia��o: ", nota4)
   escreval("5� Avalia��o: ", nota5)
   escreval("-----------------------------")

//Caucula a m�dia
media <- (nota1+nota2+nota3+nota4+nota5) / 5

escreval ("M�dia Final: ", media, "%")

//if else
escreva("Situa��o Curricular: ")
se media >= 7 entao
    escreval("APROVADO")
 senao
   se media >= 5 entao
   escreval("RECUPERA��O")
 senao
   escreval("REPROVADO")
   fimse
fimse


Fimalgoritmo





