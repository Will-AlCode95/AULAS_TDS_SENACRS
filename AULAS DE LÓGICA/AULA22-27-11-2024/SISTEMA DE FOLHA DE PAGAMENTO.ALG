Algoritmo "SISTEMA DE FOLHA DE PAGAMENTO"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   :Miguel

//SISTEMA PARA CALCULAR A FOLHA DE PAGAMENTO DO FUNCION�RIO

Var
   // Se��o de Declara��es das vari�veis
   peao,cargo:caracter
   hora_trabalho,hora_mes:inteiro
   vale_ali,vale_trans,valor_horaTrabalhada,salario_bruto,salario_liquido,descontoInss:real
   desconto_va,desconto_vt,des_salarioBruto:real

Inicio
   // Se��o de Comandos, procedimento, fun��es, operadores, etc...
   escreval("============Sistema de Folha de Pagamento===============")
   escreva("nome do funcion�rio: ")
   leia(peao)
   escreva("Cargo na empresa: ")
   leia(cargo)
   escreva("Quantidade de horas trabalhada no m�s: ")
   leia(hora_mes)
   escreva("Valor que recebe por hora trabalhada: ")
   leia(valor_horaTrabalhada)
   escreva("valor do vale alimenta��o: ")
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
   escreval("Nome do Funcion�rio: ", peao)
   escreval("Cargo na Empresa: ", cargo)
   escreval("Vale transporte: R$", vale_trans)
   escreval("Vale alimenta��o: R$", vale_ali)
   escreval("Desconto INSS: R$", descontoInss)
   escreval("Desconto VA: R$", desconto_va)
   escreval("Desconto VT: R$", desconto_vt)
   escreval("Sal�rio Bruto: R$", salario_bruto:1:1)
   escreval("Sal�rio Liquido: R$", salario_liquido:1:1)

Fimalgoritmo