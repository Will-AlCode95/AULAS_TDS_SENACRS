Algoritmo "ContagemFrequencia"
Var
   numeros: vetor[1..10] de inteiro
   frequencia: vetor[1..10] de inteiro
   i, j, num: inteiro

Inicio
   // Inicializando o vetor de frequ�ncias com 0
   para i de 1 ate 10 faca
       frequencia[i] <- 0
   fimpara

   // Lendo os n�meros
   para i de 1 ate 10 faca
       escreva("Digite o ", i, "� n�mero: ")
       leia(numeros[i])
   fimpara

   // Contando a frequ�ncia de cada n�mero
   para i de 1 ate 10 faca
       num <- numeros[i]
       para j de i ate 10 faca
           se numeros[j] = num ent�o
               frequencia[i] <- frequencia[i] + 1
           fimse
       fimpara
   fimpara

   // Exibindo as frequ�ncias
   escreval("Frequ�ncia de cada n�mero:")
   para i de 1 ate 10 faca
       escreval(numeros[i], " aparece ", frequencia[i], " vez(es).")
   fimpara
Fimalgoritmo
