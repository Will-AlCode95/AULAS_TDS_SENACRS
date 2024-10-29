Algoritmo "Comissão de venda do Corretor"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 29/10/2024
Var
// Seção de Declarações das variáveis 
comissao,valor: real
nome: caracter

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
escreva("digite o nome do corretor: ")
leia(nome)
escreva("digite o valor do imóvel: ")
leia(valor)

se (valor >= 50000) entao
   comissao <- valor*0.20  //valor_digitado * 0.20%
senao (valor => 30000) entao
   se comissao <- valor*0.15 //valor_digitado * 0.15%
     senao (valor < 30000 ) entao
   comissao <- valor*0.10   //valor_digitado * 0.10%
fimse
fimse



escreval("=======dados do corretor=======")
 // Exibir o nome do corretor, valor do imóvel e comissão
escreval("Corretor: ", nome)
escreval("Valor do Imóvel: R$", valor)
escreval("Comissão: R$", comissao)


Fimalgoritmo