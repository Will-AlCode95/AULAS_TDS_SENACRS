Algoritmo "Classificação de idade"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 10/29/2024
Var
// Seção de Declarações das variáveis 
nome: caracter
idade: inteiro

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
escreva("Usuário: ")
leia(nome)
escreva("idade: ")
leia(idade)

se (idade < 12) entao
  escreval("Criança: idade menor que 12 anos")
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




//Desafio 4: Classificação de Idade
//Desenvolva um programa que leia o nome e a idade de uma pessoa e
//classifique-a de acordo com a faixa etária:

//Criança: idade menor que 12 anos.
//Adolescente: idade entre 12 e 17 anos.
//Adulto: idade entre 18 e 59 anos.
//Idoso: idade igual ou superior a 60 anos.
//No final, mostre o nome da pessoa, a idade e a faixa etária correspondente.