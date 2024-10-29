Algoritmo "Calculadoda de Salário com bônus"
// Disciplina   : [Linguagem e Lógica de Programação]
// Data atual  : 10/29/2024
Var
// Seção de Declarações das variáveis 
nome: caracter
salarioBase, bonus: real
anosTrabalho: inteiro

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
escreva("Nome do Peão: ")
leia(nome)
escreva("Salário Base do Peão: ")
leia(salarioBase)
escreva("Anos de Trabalho do Peão: ")
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

escreval("=========Dados do Cidadão==========")
escreval("Nome do Peão: ",nome)
escreval("Anos de Serventia: ",anosTrabalho)
escreval("Salário Base: R$",salarioBase :2:2)
escreval ("Valor do Bonus: R$",bonus :2:2)



Fimalgoritmo




//Desafio 1: Calculadora de Salário com Bônus
//Escreva um programa que leia o nome de um funcionário, o salário base e o número de anos que ele trabalha na empresa.

//Calcule o bônus salarial usando as seguintes regras:
//Se o funcionário trabalha há mais de 10 anos, o bônus é de 20% do salário.
//Se trabalha entre 5 e 10 anos, o bônus é de 10% do salário.
//Se trabalha há menos de 5 anos, o bônus é de 5% do salário.
//Exiba o nome do funcionário, o salário base, o tempo de serviço, e o valor do bônus.