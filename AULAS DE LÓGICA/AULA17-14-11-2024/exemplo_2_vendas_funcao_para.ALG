Algoritmo "Sistema de controle de vendas"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Antonio Carlos Nicolodi 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 04/11/2024
Var
// Se��o de Declara��es das vari�veis 
nome: caracter
mes1,mes2,mes3,mes4,mes5,mes6,mediasemestre: real
totalsemestre, totalgeral: real
totalmes1,totalmes2,totalmes3,totalmes4,totalmes5,totalmes6: real
i, quant: inteiro

Inicio
// Sistema de controle de vendas
i <- 0
quant <- 0
escreval("## Sistema de controle de vendas ##")
escreva("Informe a quantidade de vendedores que deseja informar as vendas: ")
leia(quant)

para i de 1 ate quant faca
   escreval("----------------------------")
   //solicita as informa��es
   escreva("Informe o nome do vendedor: ")
   leia(nome)
   escreva("Informe o total da venda do m�s de janeiro: R$ ")
   leia(mes1)
   escreva("Informe o total da venda do m�s de fevereiro: R$ ")
   leia(mes2)
   escreva("Informe o total da venda do m�s de mar�o: R$ ")
   leia(mes3)
   escreva("Informe o total da venda do m�s de abril: R$ ")
   leia(mes4)
   escreva("Informe o total da venda do m�s de maio: R$ ")
   leia(mes5)
   escreva("Informe o total da venda do m�s de junho: R$ ")
   leia(mes6)
   //realiza os calculos
   totalmes1 <- totalmes1 + mes1
   totalmes2 <- totalmes2 + mes2
   totalmes3 <- totalmes3 + mes3
   totalmes4 <- totalmes4 + mes4
   totalmes5 <- totalmes5 + mes5
   totalmes6 <- totalmes6 + mes6
   
   totalsemestre <- mes1+mes2+mes3+mes4+mes5+mes6
   mediasemestre <- totalsemestre / 6
   totalgeral <- totalgeral + totalsemestre
   
   escreval("--------------------------------")
   escreval("Nome do vendedor: ",nome)
   escreval("Venda do m�s de janeiro: R$ ",mes1:2:2)
   escreval("Venda do m�s de fevereiro: R$ ",mes2:2:2)
   escreval("Venda do m�s de mar�o: R$ ",mes3:2:2)
   escreval("Venda do m�s de abril: R$ ",mes4:2:2)
   escreval("Venda do m�s de maio: R$ ",mes5:2:2)
   escreval("Venda do m�s de junho: R$ ",mes6:2:2)
   escreval("M�dia da vendas dos 6 meses do vendedor: R$ ",mediasemestre:2:2)
   escreval("Soma total da venda do vendedor nos 6 meses: R$ ",totalsemestre:2:2)

fimpara
   escreval("#############################")
   escreval("## Resultado do faturamento semestral da empresa ##")
   escreval("Os 5 vendedores no m�s de janeiro venderam R$ ",totalmes1:2:2)
   escreval("Os 5 vendedores no m�s de fevereiro venderam R$ ",totalmes2:2:2)
   escreval("Os 5 vendedores no m�s de mar�o venderam R$ ",totalmes3:2:2)
   escreval("Os 5 vendedores no m�s de abril venderam R$ ",totalmes4:2:2)
   escreval("Os 5 vendedores no m�s de maio venderam R$ ",totalmes5:2:2)
   escreval("Os 5 vendedores no m�s de junho venderam R$ ",totalmes6:2:2)
   escreval("O faturamento geral da empresa dos 6 meses foi R$ ",totalgeral:2:2)
Fimalgoritmo