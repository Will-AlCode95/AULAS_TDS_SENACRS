Algoritmo "TRABALHANDO COM FUN��O EX2"

Var
// Se��o de Declara��es das vari�veis 
 resultado:real
 n1,n2,n3,n4: real
       funcao Media(nota1,nota2,nota3,nota4: real): real
        var
        resultado: real
        inicio
        resultado <- (nota1+nota2+nota3+nota4)/4
        retorne resultado
       fimfuncao

funcao int(): inteiro
 se  int >=7 entao
    escreval("APROVADO")

    senao
      se media >=5  entao
      escreval("RECUPERA��O")

     leia(loop)
     senao
       se media < 5 entao
       escreval("REPROVADO")

     fimse
     fimse
     fimse


Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 
escreval("==========Sistemas de notas utilizando fun��o==========")
escreva("digite a primeira nota: ")
leia(n1)
escreva("digite a segunda nota: ")
leia(n2)
escreva("digite a terceira nota: ")
leia(n3)
escreva("digite a quarta nota: ")
leia(n4)
resultado <- Media(n1,n2,n3,n4)
escreval("m�dia final do aluno: ",resultado:2:1)

Fimalgoritmo