Algoritmo "MEDIA DE FINAL DE NOTAS DO ALUNO"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Antonio Carlos Nicolodi 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 05/11/2024
Var
// Se��o de Declara��es das vari�veis 
 nota1,nota2,nota3,media:real
 nome:caracter


Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 
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
        escreval("=========SITUA��O CURRICULAR========")
        escreval("=======O aluno est� Reprovado.=(===")
    caso = 5 ate 6
        escreval("=========SITUA��O CURRICULAR========")
        escreval("=====O aluno est� em recupera��o.=|===")
    caso = 7 ate 10
        escreval("=========SITUA��O CURRICULAR========")
        escreval("========O aluno est� aprovado.=)======")
    outrocaso
        escreval("M�dia inv�lida.")  //c�digo n�o 100%funcional!
    fimescolha

   // Usando escolha para determinar a categoria

escreval("nome do aluno: ",nome)
escreval("notas do aluno: ",nota1,",",nota2,",",nota3)
escreval("m�dia final: ",media:2:2)


Fimalgoritmo