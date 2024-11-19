Algoritmo "TRABALHANDO COM FUNÇÃO EX2"

Var
// Seção de Declarações das variáveis 
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
      escreval("RECUPERAÇÃO")

     leia(loop)
     senao
       se media < 5 entao
       escreval("REPROVADO")

     fimse
     fimse
     fimse


Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
escreval("==========Sistemas de notas utilizando função==========")
escreva("digite a primeira nota: ")
leia(n1)
escreva("digite a segunda nota: ")
leia(n2)
escreva("digite a terceira nota: ")
leia(n3)
escreva("digite a quarta nota: ")
leia(n4)
resultado <- Media(n1,n2,n3,n4)
escreval("média final do aluno: ",resultado:2:1)

Fimalgoritmo