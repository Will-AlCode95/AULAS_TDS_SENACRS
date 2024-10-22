Algoritmo "Verificado_de_NumerosPares"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 10/22/2024
Var
    numero: inteiro  //inteiro: valor sem casas decimais ex:10,1,-5,100,

Inicio
    escreval("Informe um número: ")
    leia(numero)

// Verifica se o número é par ou ímpar
se (numero mod 2 = 0) entao  //"mod" é o operador de módulo, que retorna o resto da divisão.
//Se numero mod 2 for igual a 0, significa que o número é par (pois ele é divisível por 2 sem resto).

        escreval("O número ", numero, " é par.")
    senao //else
        escreval("O número ", numero, " é ímpar.")
    fimse

Fimalgoritmo