Algoritmo "Verificado_de_NumerosPares"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Antonio Carlos Nicolodi 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 10/22/2024
Var
    numero: inteiro  //inteiro: valor sem casas decimais ex:10,1,-5,100,

Inicio
    escreval("Informe um n�mero: ")
    leia(numero)

// Verifica se o n�mero � par ou �mpar
se (numero mod 2 = 0) entao  //"mod" � o operador de m�dulo, que retorna o resto da divis�o.
//Se numero mod 2 for igual a 0, significa que o n�mero � par (pois ele � divis�vel por 2 sem resto).

        escreval("O n�mero ", numero, " � par.")
    senao //else
        escreval("O n�mero ", numero, " � �mpar.")
    fimse

Fimalgoritmo