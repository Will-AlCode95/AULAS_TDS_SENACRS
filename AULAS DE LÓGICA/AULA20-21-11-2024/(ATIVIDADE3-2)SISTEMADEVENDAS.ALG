algoritmo "Sistema_de_Vendas_Com_Funcao"
// Disciplina   : [Linguagem e L�gica de Programa��o] 
// Professor   :Miguel 
var
    nomeProduto: caractere
    precoProduto: real
    quantidade: inteiro
    total: real

// Fun��o para calcular o total da venda
funcao calcularTotal(preco,qtd:real): real
var precoTotal: real

inicio
 precoTotal <- preco * qtd
  retorne precoTotal
fimfuncao

inicio
    escreval("===== SISTEMA DE VENDAS =====")
    escreva("Digite o nome do produto: ")
    leia(nomeProduto)
    escreva("Digite o pre�o do produto: ")
    leia(precoProduto)
    escreva("Digite a quantidade vendida: ")
    leia(quantidade)

    // Calcula o total utilizando a fun��o
    total <- calcularTotal(precoProduto,quantidade)

    escreval("===== NOTA FISCAL =====")
    escreval("Produto: ", nomeProduto)
    escreval("Pre�o unit�rio: R$ ", precoProduto:0:2)
    escreval("Quantidade: ", quantidade)
    escreval("Total da venda: R$ ", total:0:2)
    escreval("========================")
    escreval("Obrigado por utilizar o sistema!")

fimalgoritmo
