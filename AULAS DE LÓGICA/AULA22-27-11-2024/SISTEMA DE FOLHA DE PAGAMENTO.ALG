Algoritmo "SISTEMA DE FOLHA DE PAGAMENTO"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   :Miguel

//SISTEMA PARA CALCULAR A FOLHA DE PAGAMENTO DO FUNCIONÁRIO

Var
   // Seção de Declarações das variáveis
   peao,cargo:caracter
   hora_trabalho,hora_mes:inteiro
   vale_ali,vale_trans,valor_horaTrabalhada,salario_bruto,salario_liquido,descontoInss:real
   desconto_va,desconto_vt,des_salarioBruto:real

Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...
   escreval("============Sistema de Folha de Pagamento===============")
   escreva("nome do funcionário: ")
   leia(peao)
   escreva("Cargo na empresa: ")
   leia(cargo)
   escreva("Quantidade de horas trabalhada no mês: ")
   leia(hora_mes)
   escreva("Valor que recebe por hora trabalhada: ")
   leia(valor_horaTrabalhada)
   escreva("valor do vale alimentação: ")
   leia(vale_ali)
   escreva("valor do vale transporte: ")
   leia(vale_trans)


   salario_bruto <- hora_mes * valor_horaTrabalhada

   se (salario_bruto > 7.786) entao
      descontoInss <- 1.000*(salario_bruto*0.14)  //valor_digitado * 0.14%
   senao
      se (salario_bruto > 4.000) e (salario_bruto <= 7.786) entao
         descontoInss <- 1.000*(salario_bruto*0.14)  //valor_digitado * 0.14%
      senao
         se(salario_bruto >= 2.660) e (salario_bruto <=4.000)  entao
            descontoInss <- 1.000*(salario_bruto*0.12) //valor_digitado * 0.12%
         senao
            se(salario_bruto >= 1.412) e (salario_bruto < 2.660) entao
               descontoInss <- 1.000*(salario_bruto*0.09) //valor_digitado * 0.09%
            senao
               se(salario_bruto <= 1.412) entao
                  descontoInss <- 1.000*(salario_bruto*0.07)  //valor_digitado * 0.07%
               fimse
            fimse
         fimse
      fimse
   fimse

   se (vale_trans <= 100) entao
      desconto_vt <- 100
   senao
      se(vale_trans > 100) entao
         desconto_vt <- 1.000*(salario_bruto*0.06)
      fimse
   fimse

   desconto_va <- 1.000*(salario_bruto*0.06)

   des_salarioBruto <- desconto_va + desconto_vt + descontoInss
   salario_liquido <- salario_bruto - des_salarioBruto

   limpatela

   escreval("==============Contra Choque==============")
   escreval("Nome do Funcionário: ", peao)
   escreval("Cargo na Empresa: ", cargo)
   escreval("Vale transporte: R$", vale_trans)
   escreval("Vale alimentação: R$", vale_ali)
   escreval("Desconto INSS: R$", descontoInss)
   escreval("Desconto VA: R$", desconto_va)
   escreval("Desconto VT: R$", desconto_vt)
   escreval("Salário Bruto: R$", salario_bruto:1:1)
   escreval("Salário Liquido: R$", salario_liquido:1:1)

Fimalgoritmo