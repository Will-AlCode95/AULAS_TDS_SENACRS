Algoritmo "MEDIA DE FINAL DE NOTAS DO ALUNO"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 05/11/2024
Var
// Seção de Declarações das variáveis 
 nota1,nota2,nota3,media:real
 nome:caracter


Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
escreval("nome do aluno: ")
leia(nome)
escreval("digite a primeira nota: ")
leia(nota1)
escreval("digite a segunda nota: ")
leia(nota2)
escreval("digite a terceira nota: ")
leia(nota3)

media <- (nota1+nota2+nota3)/3
escolha (media)
    caso = 0 ate 4
        escreval("=========SITUAÇÃO CURRICULAR========")
        escreval("=======O aluno está Reprovado.=(===")
    caso = 5 ate 6
        escreval("=========SITUAÇÃO CURRICULAR========")
        escreval("=====O aluno está em recuperação.=|===")
    caso = 7 ate 10
        escreval("=========SITUAÇÃO CURRICULAR========")
        escreval("========O aluno está aprovado.=)======")
    outrocaso
        escreval("Média inválida.")  //código não 100%funcional!
    fimescolha

   // Usando escolha para determinar a categoria

escreval("nome do aluno: ",nome)
escreval("notas do aluno: ",nota1,",",nota2,",",nota3)
escreval("média final: ",media:2:2)


Fimalgoritmo