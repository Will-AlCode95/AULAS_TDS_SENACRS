Algoritmo "%Calculo de Porcentagem%"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Antonio Carlos Nicolodi 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 22/10/2024
Var
// Se��o de Declara��es das vari�veis 
precoFabrica, revendedor, imposto, precoFinal: real
nome: caracter

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 
//Revenda de VideoGames
escreval("#Loja de video-games tabajara ##")
escreval("informe o nome do video-game: ")
leia(nome)
escreval("informe o pre�o do video-game na f�brica: R$ ")
leia(precoFabrica)

imposto <- 0.45
revendedor <- 0.28

revendedor <- precoFabrica * revendedor  //exemplo: R$10.000 x 0,28%
imposto <- precoFabrica * imposto        //exemplo: R$10.000 x 0,45%
precoFinal <- precoFabrica + revendedor + imposto //10.000+2.800+4.500= 17,300

escreval("nome do video-game: ", nome)
escreval("valor do video-game na f�brica: R$ ", precoFabrica:2:3)
escreval("valor do imposto cobrado do video-game: R$ ", imposto:2:3)
escreval ("valor do lucro do revendedor: R$ ", revendedor:2:3)
escreval ("valor final do video-game pra revenda: R$ ",precoFinal:2:3)

Fimalgoritmo