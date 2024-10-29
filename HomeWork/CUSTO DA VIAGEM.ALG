Algoritmo "Custo da Viagem"
// Disciplina   : [Linguagem e Lógica de Programação]
// Data atual  : 10/29/2024
Var
// Seção de Declarações das variáveis 
transporte, nome: caracter
carro, onibus, aviao, total, distanciaKm: real



Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 


 escreva("Usuário: ")
 leia(nome)
 escreva("Distância em Km: ")
 leia(distanciaKm)
 escreva("Tipo de transporte(carro,ônibus,avião): ")
 leia(transporte)


 se (transporte = "carro") entao
    total <- distanciaKm * 0.50
    senao
       se (transporte = "ônibus") entao
          total <- distanciaKm * 0.30
            senao
               se (transporte = "avião") entao
                 total <- distanciaKm * 0.10
                   senao
                    total <- 0 // Define custo como 0 se o transporte não for reconhecido
                    escreval("Tipo de transporte inválido.")

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
//Escreva um programa que pergunte ao usuário o nome, a distância da viagem (em km) e o tipo de transporte (carro, ônibus ou avião).
//Calcule o custo da viagem de acordo com o tipo de transporte:

//Carro: R$ 0,50 por km.
//Ônibus: R$ 0,30 por km.
//Avião: R$ 0,10 por km.
//Exiba o nome do usuário, o tipo de transporte, a distância, e o custo total da viagem.