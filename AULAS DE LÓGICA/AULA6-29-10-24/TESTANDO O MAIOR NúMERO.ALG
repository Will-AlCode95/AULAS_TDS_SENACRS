Algoritmo "Testando o maior ou igual n�mero"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Data atual  : 29/10/2024
Var
// Se��o de Declara��es das vari�veis 
v1, v2, v3: inteiro

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 
//verificando o numero maior
escreval("=========Verificando o maior ou igual numero digitado ===========")

escreva("Digite o primeiro n�mero: ")
leia(v1)
escreva("Digite o segundo n�mero: ")
leia(v2)
escreva("Digite o terceiro n�mero: ")
leia(v3)

    se((v1 > v2) e (v1 > v3)) entao
        escreval("O primeiro valor � maior: ", v1)
    senao
        se((v2 > v1) e (v2 > v3)) entao
          escreval("O segundo valor � maior: ", v2)
       senao
          se((v3 > v1) e (v3 > v2)) entao
          escreval("Os terceiro valor � maior: ", v3)
       senao
          se((v1 = v2) e (v1 = v3)) entao
             escreval("Os tr�s valores s�o iguais")
       senao
          se(v1 = v2) entao
            escreval("O primeiro e terceiro valor s�o iguais")
          senao
            escreval("O segundo e terceiro valor s�o iguais")
       fimse
       fimse
       fimse
       fimse
       fimse


Fimalgoritmo