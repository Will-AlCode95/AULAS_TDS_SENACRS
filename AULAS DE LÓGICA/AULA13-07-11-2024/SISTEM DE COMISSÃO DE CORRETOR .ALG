Algoritmo " SISTEM DE COMISS�O DE CORRETOR "
// Disciplina   : [Linguagem e L�gica de Programa��o] 
// Professor   : Antonio Carlos Nicolodi 

Var
// Se��o de Declara��es das vari�veis 
 nome: caracter
 imovel:real
 comissao:real
 sn:caracter

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 

sn <- "S"
enquanto (sn = "S") ou (sn = "s") faca
escreval("============CADASTRO DE CORRETOR============")
escreval("Digite o nome do Corretor: ")
leia(nome)
escreval("Digite o valor do imov�l: ")
leia(imovel)

se (imovel >= 50000) entao
 comissao <- imovel * 0.20
   senao
     se (imovel >= 30000) e (imovel < 50000) entao
       comissao <- imovel * 0.15
         senao
           se (imovel < 30000) entao
             comissao <- imovel * 0.15
           fimse
     fimse
fimse

escreval("=========DADOS DA VENDA==========")
escreval("nome do corretor: ",nome)
escreval("valor do im�vel: ",imovel)
escreval("comiss�o do vendedor: ",comissao)

escreval("Deseja cadastrar um novo corretor?S/N: ")
leia(sn)
fimenquanto

Fimalgoritmo





