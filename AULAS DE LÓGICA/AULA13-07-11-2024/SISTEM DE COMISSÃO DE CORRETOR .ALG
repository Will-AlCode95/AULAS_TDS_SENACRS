Algoritmo " SISTEM DE COMISSÃO DE CORRETOR "
// Disciplina   : [Linguagem e Lógica de Programação] 
// Professor   : Antonio Carlos Nicolodi 

Var
// Seção de Declarações das variáveis 
 nome: caracter
 imovel:real
 comissao:real
 sn:caracter

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 

sn <- "S"
enquanto (sn = "S") ou (sn = "s") faca
escreval("============CADASTRO DE CORRETOR============")
escreval("Digite o nome do Corretor: ")
leia(nome)
escreval("Digite o valor do imovél: ")
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
escreval("valor do imóvel: ",imovel)
escreval("comissão do vendedor: ",comissao)

escreval("Deseja cadastrar um novo corretor?S/N: ")
leia(sn)
fimenquanto

Fimalgoritmo





