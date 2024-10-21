algoritmo "Cadastro de Pokemom capturado"
// Disciplina   : [Linguagem e Lógica de Programação] 
// Professor   : Antonio Carlos Nicolodi 
// Função: Cadastrar
var
nome, poder, cidade, sexo, endereco: caracter
level: inteiro
id : caracter   //podemos usar, desde que não fassamos calculos

inicio
// Cadastro Completo
escreval ("## Cadastro de Pokemom ##")
escreva (" Digite o nome do pokemom:  ")
leia (nome)
limpatela

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
escreval ("nome e poder: ",nome," ",poder,".")
escreval ("level: ",level)
escreval ("endereco: ",endereco,", cidade: ",cidade)
escreval("id:",id)


fimalgoritmo
