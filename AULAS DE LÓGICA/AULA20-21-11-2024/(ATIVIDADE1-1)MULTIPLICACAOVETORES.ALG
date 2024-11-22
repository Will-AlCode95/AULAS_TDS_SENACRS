Algoritmo "MultiplicacaoVetores"
Var
   vetorA: vetor[1..5] de inteiro
   vetorB: vetor[1..5] de inteiro
   resultado: vetor[1..5] de inteiro
   i: inteiro

Inicio
   // Lendo os elementos do vetor A
   para i de 1 ate 5 faca
       escreva("Digite o ", i, "° número para o vetor A: ")
       leia(vetorA[i])
   fimpara

   // Lendo os elementos do vetor B
   para i de 1 ate 5 faca
       escreva("Digite o ", i, "° número para o vetor B: ")
       leia(vetorB[i])
   fimpara

   // Multiplicando os elementos dos vetores
   para i de 1 ate 5 faca
       resultado[i] <- vetorA[i] * vetorB[i]
   fimpara

   escreval("Resultado da multiplicação dos vetores:")
   para i de 1 ate 5 faca
       escreval("Resultado do ", i, "° total: ", resultado[i])
   fimpara
Fimalgoritmo
