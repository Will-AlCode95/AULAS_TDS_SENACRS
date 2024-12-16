Algoritmo "Testando o maior ou igual número"
// Disciplina   : [Linguagem e Lógica de Programação]
// Data atual  : 29/10/2024
Var
// Seção de Declarações das variáveis 
v1, v2, v3: inteiro

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
//verificando o numero maior
escreval("=========Verificando o maior ou igual numero digitado ===========")

escreva("Digite o primeiro número: ")
leia(v1)
escreva("Digite o segundo número: ")
leia(v2)
escreva("Digite o terceiro número: ")
leia(v3)

    se((v1 > v2) e (v1 > v3)) entao
        escreval("O primeiro valor é maior: ", v1)
    senao
        se((v2 > v1) e (v2 > v3)) entao
          escreval("O segundo valor é maior: ", v2)
       senao
          se((v3 > v1) e (v3 > v2)) entao
          escreval("Os terceiro valor é maior: ", v3)
       senao
          se((v1 = v2) e (v1 = v3)) entao
             escreval("Os três valores são iguais")
       senao
          se(v1 = v2) entao
            escreval("O primeiro e terceiro valor são iguais")
          senao
            escreval("O segundo e terceiro valor são iguais")
       fimse
       fimse
       fimse
       fimse
       fimse


Fimalgoritmo