Algoritmo "sistema de notas"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 13/11/2024
Var
// Seção de Declarações das variáveis 
i, quant: inteiro
nome, turma: caracter
n1,n2,n3: inteiro
media: real

Inicio
// Sistema de notas utilizando a função para
i <- 0
quant <- 0
escreval("## Sistema de notas ##")
escreva("Informe a quantidade de registros que deseja realizar: ")
leia(quant)
           para i de 1 ate quant faca
                  escreval("----------------------------")
                  escreva("Informe o nome do aluno: ")
                  leia(nome)
                  escreva("Informe a turma: ")
                  leia(turma)
                  escreva("Informe a primeira nota: ")
                  leia(n1)
                  escreva("Informe a segunda nota: ")
                  leia(n2)
                  escreva("Informe a terceira nota: ")
                  leia(n3)
                  media <-(n1+n2+n3)/3
                  escreval("##########################")
                  escreval("Nome do aluno: ",nome)
                  escreval("Turma: ",turma)
                  escreval("Primeira nota: ",n1)
                  escreval("Segunda nota: ",n2)
                  escreval("Terceira nota: ",n3)
                  escreval("Média final: ",media:2:1)
                  escreva("Situação curricular do aluno: ")
                  
                  se(media >= 7) entao
                   escreval("Aprovado!")
                  senao
                       se(media >= 5) entao
                        escreval("Recuperação!")
                       senao
                        escreval("Reprovado!")
                       fimse
                  fimse
           fimpara

Fimalgoritmo