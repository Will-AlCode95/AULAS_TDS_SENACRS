Algoritmo "Classifica��o de idade"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Antonio Carlos Nicolodi 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 10/29/2024
Var
// Se��o de Declara��es das vari�veis 
nome: caracter
idade: inteiro

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 
escreva("Usu�rio: ")
leia(nome)
escreva("idade: ")
leia(idade)

se (idade < 12) entao
  escreval("Crian�a: idade menor que 12 anos")
  senao
    se ((idade >= 12) e (idade <= 17)) entao
       escreval("Adolescente: idade entre 12 e 17 anos")
         senao
           se ((idade >= 18) e (idade <= 59)) entao
               escreval("Adulto: idade entre 18 e 59 anos")
                 senao
                   se (idade >= 60) entao
                     escreval("Idoso: idade igual ou superior a 60 anos")
                   fimse
           fimse
     fimse
fimse

Fimalgoritmo




//Desafio 4: Classifica��o de Idade
//Desenvolva um programa que leia o nome e a idade de uma pessoa e
//classifique-a de acordo com a faixa et�ria:

//Crian�a: idade menor que 12 anos.
//Adolescente: idade entre 12 e 17 anos.
//Adulto: idade entre 18 e 59 anos.
//Idoso: idade igual ou superior a 60 anos.
//No final, mostre o nome da pessoa, a idade e a faixa et�ria correspondente.