Algoritmo "Trabalhando com vetor"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Antonio Carlos Nicolodi 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 18/11/2024
Var
// Se��o de Declara��es das vari�veis 
idade: vetor[1..8] de inteiro
c, soma, maior, posi: inteiro
media: real

Inicio
// Verificando a maior idade
maior <- 0
      para c <- 1 ate 8 faca
          escreval("Digite a idade da ",c,"� pessoa")
          leia(idade[c])
          soma <- soma+ idade[c]
      fimpara
      
      para c <- 1 ate 8 faca
          se (idade[c] > 25) entao
               escreval("Pessoa com mais de 25 anos na posi��o ", c)
          fimse
      fimpara
      
      para c <- 1 ate 8 faca
             se (idade[c] > maior) entao
                  maior <- idade[c]
             fimse
      fimpara

      escreval("A maior idade digitada foi: ",maior)
      
      media <- soma /c
      escreval("M�dia das idades digitadas: ",media:2:2)


Fimalgoritmo