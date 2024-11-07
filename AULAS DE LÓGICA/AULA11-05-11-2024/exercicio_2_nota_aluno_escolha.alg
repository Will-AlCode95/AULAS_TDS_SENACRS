Algoritmo "Calculo de notas"
// Disciplina: [Linguagem e Lógica de programaçao] 
// Função :
// Autor : Miguel
// Data : 29/12/2020
var
media : real
n1, n2, n3: inteiro
inicio
    escreva("Digite a primeira nota: ")
    leia(n1)
    escreval
    escreva("Digite a segunda nota: ")
    leia(n2)
    escreval
    escreva("Digite a primeira nota: ")
    leia(n3)
    media <- (n1+n2+n3)/3
    escreval("A média final do aluno foi: ",media:2:1)
    escolha (media)
    caso = 0 ate 4
        escreval("O aluno está Reprovado.")
    caso = 5 ate 6
        escreval("O aluno está em recuperação.")
    caso = 7 ate 10
        escreval("O aluno está aprovado")
    outrocaso
        escreval("Média inválida.")
    fimescolha
fimalgoritmo
