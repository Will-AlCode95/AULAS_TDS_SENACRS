Algoritmo "Taxa de Juros"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Antonio Carlos Nicolodi 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 23/10/2024
Var
// Se��o de Declara��es das vari�veis 
   dias_atraso: inteiro
   valor_original, juros, valor_final, taxa_juros_mensal, taxa_juros_diaria: real

Inicio
   // Entrada de dados
   Escreva("Digite o valor original da presta��o: R$ ")
   Leia(valor_original)

   Escreva("Digite a quantidade de dias em atraso: ")
   Leia(dias_atraso)

   Escreva("Digite a taxa de juros mensal: % ")
   Leia(taxa_juros_mensal)

   // Converte a taxa percentual para decimal
   taxa_juros_mensal <- taxa_juros_mensal / 100 //exemplo: 10/100 = 0.1

   // Calcula a taxa de juros di�ria
   taxa_juros_diaria <- taxa_juros_mensal / 30  // 0.1/30 = 0.003333333

   // Calcula os juros e o valor final
   juros <- valor_original * taxa_juros_diaria * dias_atraso //0.003333333x100x10=3,3333
   valor_final <- valor_original + juros //3,33333333+100=R$103.33

   // Exibe os resultados
   EscrevaL("Valor original da presta��o: R$ ", valor_original:4:2)
   EscrevaL("Dias em atraso: ", dias_atraso, " dias")
   EscrevaL("Valor dos juros cobrados: R$ ", juros:4:2)
   EscrevaL("Valor final da presta��o com juros: R$ ", valor_final:4:2)

Fimalgoritmo

