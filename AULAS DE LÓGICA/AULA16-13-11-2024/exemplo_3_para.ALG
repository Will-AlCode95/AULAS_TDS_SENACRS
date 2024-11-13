Algoritmo "Utilizando a função para"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 13/11/2024
Var
// Seção de Declarações das variáveis 
i, idade, maior: inteiro
nome, nomemaior: caracter

Inicio
// Verificar a pessoa mais velha
maior <- 0
para i de 1 ate 5 faca
       escreva("Digite um nome: ")
       leia(nome)
       escreva("Digite a idade da pessoa: ")
       leia(idade)
       escreval("##########################")
       escreval("Nome da pessoa: ",nome)
       escreval("Idade da pessoa: ",idade)
           se(idade > maior) entao
            nomemaior <- nome
            maior <- idade
           fimse
fimpara
escreval("#############################################")
 escreval("Nome da pessoa com a maior idade: ",nomemaior)
 escreval("Idade da pessoa mais velha: ",maior)


Fimalgoritmo