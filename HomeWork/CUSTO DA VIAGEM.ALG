Algoritmo "Custo da Viagem"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Data atual  : 10/29/2024
Var
// Se��o de Declara��es das vari�veis 
transporte, nome: caracter
carro, onibus, aviao, total, distanciaKm: real



Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 


 escreva("Usu�rio: ")
 leia(nome)
 escreva("Dist�ncia em Km: ")
 leia(distanciaKm)
 escreva("Tipo de transporte(carro,�nibus,avi�o): ")
 leia(transporte)


 se (transporte = "carro") entao
    total <- distanciaKm * 0.50
    senao
       se (transporte = "�nibus") entao
          total <- distanciaKm * 0.30
            senao
               se (transporte = "avi�o") entao
                 total <- distanciaKm * 0.10
                   senao
                    total <- 0 // Define custo como 0 se o transporte n�o for reconhecido
                    escreval("Tipo de transporte inv�lido.")

       fimse
               fimse
 fimse

 escreval("=========Custo da Viagem==========")
 escreval("Nome: ",nome)
 escreval("Tipo de Transporte: ",transporte)
 escreval("Distancia em Km: ",distanciaKm)
 escreval("Custo da viagem: R$",total)
              
Fimalgoritmo




//Desafio 3: Calcule o Custo de Viagem
//Escreva um programa que pergunte ao usu�rio o nome, a dist�ncia da viagem (em km) e o tipo de transporte (carro, �nibus ou avi�o).
//Calcule o custo da viagem de acordo com o tipo de transporte:

//Carro: R$ 0,50 por km.
//�nibus: R$ 0,30 por km.
//Avi�o: R$ 0,10 por km.
//Exiba o nome do usu�rio, o tipo de transporte, a dist�ncia, e o custo total da viagem.