Algoritmo "Calculadoda de Sal�rio com b�nus"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Data atual  : 10/29/2024
Var
// Se��o de Declara��es das vari�veis 
nome: caracter
salarioBase, bonus: real
anosTrabalho: inteiro

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 
escreva("Nome do Pe�o: ")
leia(nome)
escreva("Sal�rio Base do Pe�o: ")
leia(salarioBase)
escreva("Anos de Trabalho do Pe�o: ")
leia(anosTrabalho)

 se (anosTrabalho > 10) entao
   bonus <- salarioBase * 0.20
  senao
    se ((anosTrabalho > 5) e (anosTrabalho <= 10)) entao
   bonus <- salarioBase * 0.10
   senao
    se (anosTrabalho <= 5) entao
    bonus <- salarioBase * 0.05
   fimse
   fimse
   fimse

escreval("=========Dados do Cidad�o==========")
escreval("Nome do Pe�o: ",nome)
escreval("Anos de Serventia: ",anosTrabalho)
escreval("Sal�rio Base: R$",salarioBase :2:2)
escreval ("Valor do Bonus: R$",bonus :2:2)



Fimalgoritmo




//Desafio 1: Calculadora de Sal�rio com B�nus
//Escreva um programa que leia o nome de um funcion�rio, o sal�rio base e o n�mero de anos que ele trabalha na empresa.

//Calcule o b�nus salarial usando as seguintes regras:
//Se o funcion�rio trabalha h� mais de 10 anos, o b�nus � de 20% do sal�rio.
//Se trabalha entre 5 e 10 anos, o b�nus � de 10% do sal�rio.
//Se trabalha h� menos de 5 anos, o b�nus � de 5% do sal�rio.
//Exiba o nome do funcion�rio, o sal�rio base, o tempo de servi�o, e o valor do b�nus.