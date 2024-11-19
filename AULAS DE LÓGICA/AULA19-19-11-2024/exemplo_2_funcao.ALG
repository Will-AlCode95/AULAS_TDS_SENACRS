Algoritmo "Trabalhando com função"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 19/11/2024
Var
// Seção de Declarações das variáveis 
resultado: real
n1,n2,n3,n4: real
     funcao Media(nota1,nota2,nota3,nota4: real): real
        var
         resultado: real
        inicio
         resultado <-(nota1+nota2+nota3+nota4)/4
         retorne resultado
     fimfuncao
Inicio
//Sistema de notas utilizando função
    escreval("## Sistema de notas utilizando função ##")
    escreva("Digite a primeira nota: ")
    leia(n1)
    escreva("Digite a segunda nota: ")
    leia(n2)
    escreva("Digite a terceira nota: ")
    leia(n3)
    escreva("Digite a quarta nota: ")
    leia(n4)
    resultado <- Media(n1,n2,n3,n4)
    escreval("Média final do aluno: ",resultado:2:1)


Fimalgoritmo