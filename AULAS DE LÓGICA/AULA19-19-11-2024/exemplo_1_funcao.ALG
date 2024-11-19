Algoritmo "Trabalhando com função"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 19/11/2024
Var
// Seção de Declarações das variáveis 
 numero, resultado: real
 
funcao Dobro(valor: real): real
    var
    //váriáveis da função
    total: real
    inicio
    //inicio da função
    total <- valor * 2
     retorne total
fimfuncao

Inicio
// Utilizando função
      escreval("## Sistema utilizando função ##")
      escreva("Digite um número: ")
      leia(numero)
      
      resultado <- Dobro(numero)
      
      escreval("Valor do calculo realizado na função: ",resultado)

Fimalgoritmo