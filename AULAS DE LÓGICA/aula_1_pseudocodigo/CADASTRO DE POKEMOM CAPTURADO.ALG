algoritmo "Cadastro de Pokemom capturado"
// Disciplina   : [Linguagem e L�gica de Programa��o] 
// Professor   : Antonio Carlos Nicolodi 
// Fun��o: Cadastrar
var
nome, poder, cidade, sexo, endereco: caracter
level: caracter
id : caracter   //podemos usar, desde que n�o fassamos calculos

inicio
// Cadastro Completo
escreval ("## Cadastro de Pokemom ##")
escreva (" Digite o nome do pokemom:  ")
leia (nome)
limpatela   //limpatela: informa��o fica oculta na tela

escreval (" Digite o poder do pokemom: ")
leia (poder)
limpatela

escreval ("Digite o level do pokemom: ")
leia (level)
limpatela

escreval ("informe o endereco que foi capturado: ")
leia(endereco)

escreval("Cidade que foi capturado: ")
leia(cidade)

escreval("sexo do pokemom: ")
leia(sexo)

escreval ("informe o id do pokemom: ")
leia(id)

escreval ("#########################################")
escreval ("## dados informados pelo usuario ##")
escreval ("nome: ",nome)
escreval ("poder: ",poder)
escreval ("level: ",level)
escreval ("endereco: ",endereco,", cidade: ",cidade)
escreval("id:",id)


fimalgoritmo
