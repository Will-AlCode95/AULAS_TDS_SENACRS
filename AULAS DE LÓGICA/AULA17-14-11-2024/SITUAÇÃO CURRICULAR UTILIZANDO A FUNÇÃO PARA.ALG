Algoritmo "SITUAÇÃO CURRICULAR UTILIZANDO A FUNÇÃO PARA"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Miguel
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 14/11/2024
Var
// Seção de Declarações das variáveis 
 nome: caracter
 totalvenda,totalvendamax,m1,m2,m3,m4,m5,m6, media:real
 i, quant: inteiro

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
i <- 0
quant <- 0
escreval("==================================================")
escreva("Informe a quantidade de registros que deseja realizar: ")
leia(quant)
para i de 1 ate quant faca
                  escreval("==========================================")
                  escreva("Informe o nome do vendedor: ")
                  leia(nome)
                  escreva("venda do primeiro mês: ")
                  leia(m1)
                  escreva("venda segundo mês: ")
                  leia(m2)
                  escreva("venda do terceiro mês: ")
                  leia(m3)
                  escreva("venda do quarto mês: ")
                  leia(m4)
                  escreva("venda do quinto mês: ")
                  leia(m5)
                  escreva("venda do quinto mês: ")
                  leia(m6)
                  media <-(m1+m2+m3+m4+m5+m6)/6
                  totalvenda <- m1+m3+m3+m4+m5+m6

                  escreval("==========================================")
                  escreval("Nome do vendedor: ",nome)
                  escreval("Primeira venda: ",m1)
                  escreval("Segunda venda: ",m2)
                  escreval("Terceira venda: ",m3)
                  escreval("Quarta venda: ",m4)
                  escreval("Quinta venda: ",m5)
                  escreval("Sexto venda: ",m6)
                  escreval("Média de venda: ",media:2:1)
                  escreval("total de vendas nos 6 meses: ",totalvenda:2:1)
fimpara
                   totalvendamax <- totalvenda
                   
escreval("==================FATURAMENTO DA EMPRESA====================")
escreval("total geral do faturamneto no semestre: ",totalvendamax:2:1)

                   
                   

Fimalgoritmo