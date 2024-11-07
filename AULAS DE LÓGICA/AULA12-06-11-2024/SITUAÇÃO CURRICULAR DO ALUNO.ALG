Algoritmo "SITUAÇÃO CURRICULAR DO ALUNO"
// Disciplina   : [Linguagem e Lógica de Programação]
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 06/11/2024
Var
// Seção de Declarações das variáveis 
 nome,loop:caracter
 turma:caracter
 nota1,nota2,nota3,nota4,nota5: inteiro
 media:real

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
 loop <- "s"
enquanto (loop = "s") ou (loop = "S")
 escreval("nome do aluno: ")
 leia(nome)
 escreval("nome da turma: ")
 leia(turma)
 escreval("digite a primeira nota: ")
 leia(nota1)
 escreval("digite a segunda nota: ")
 leia(nota2)
 escreval("digite a terceira nota: ")
 leia(nota3)
 escreval("digite a quarta nota: ")
 leia(nota4)
 escreval("digite a quinta nota: ")
 leia(nota5)
 
media <- (nota1+nota2+nota3+nota4+nota5) / 5

    se  media >=7 entao
    escreval("APROVADO")

    senao
      se media >=5  entao
      escreval("RECUPERAÇÃO")

     leia(loop)
     senao
       se media < 5 entao
       escreval("REPROVADO")

     fimse
     fimse
     fimse

escreval("==========DADOS SOLICITADOS==========")
escreval("nome do aluno: ",nome)
escreval("nome da turma: ",turma)
escreval ("media final: ",media)

escreval("Deseja cadastrar um novo usuário: S/N: ")
     leia(loop)


     
fimenquanto


Fimalgoritmo