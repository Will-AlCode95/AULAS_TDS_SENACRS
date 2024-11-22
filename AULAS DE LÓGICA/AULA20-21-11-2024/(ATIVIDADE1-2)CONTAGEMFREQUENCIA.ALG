Algoritmo "ContagemFrequencia"
Var
   numeros: vetor[1..10] de inteiro
   frequencia: vetor[1..10] de inteiro
   i, j, num: inteiro

Inicio
   // Inicializando o vetor de frequências com 0
   para i de 1 ate 10 faca
       frequencia[i] <- 0
   fimpara

   // Lendo os números
   para i de 1 ate 10 faca
       escreva("Digite o ", i, "° número: ")
       leia(numeros[i])
   fimpara

   // Contando a frequência de cada número
   para i de 1 ate 10 faca
       num <- numeros[i]
       para j de i ate 10 faca
           se numeros[j] = num então
               frequencia[i] <- frequencia[i] + 1
           fimse
       fimpara
   fimpara

   // Exibindo as frequências
   escreval("Frequência de cada número:")
   para i de 1 ate 10 faca
       escreval(numeros[i], " aparece ", frequencia[i], " vez(es).")
   fimpara
Fimalgoritmo
