Algoritmo "Opera�oes b�sicas"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Antonio Carlos Nicolodi 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 21/10/2024
Var
// Se��o de Declara��es das vari�veis 
 v1, v2: inteiro
 resultado: real
 

Inicio
//Operacoes Basicas
escreval ("## Sistemas para calcular as opera��es basicas##")

escreval("informe o primeiro valor: ")
leia(v1)

escreval ("informe o segundo valor: ")
leia(v2)

escreval("####################################")

escreval ("## resultado das oper��es basicas ##")

resultado <- v1 + v2
escreval ("resultado da soma: ", resultado)

resultado <- v1 - v2
escreval("resultado da subtra��o: ", resultado)

resultado <- v1 * v2
escreval("resultado da multiplica��o: ", resultado)

resultado <- v1 / v2
escreval ("resultado da divis�o: ", resultado:2:2)   //utiliza 2:2 para ajustar o resultado final

resultado <- v1 ^ v2
escreval("resultado da pot�ncia: ", resultado)

Fimalgoritmo