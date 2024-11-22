algoritmo "Sistema_de_Vendas_Com_Funcao"
// Disciplina   : [Linguagem e Lógica de Programação] 
// Professor   :Miguel 
var
    nomeProduto: caractere
    precoProduto: real
    quantidade: inteiro
    total: real

// Função para calcular o total da venda
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
    escreva("Digite o preço do produto: ")
    leia(precoProduto)
    escreva("Digite a quantidade vendida: ")
    leia(quantidade)

    // Calcula o total utilizando a função
    total <- calcularTotal(precoProduto,quantidade)

    escreval("===== NOTA FISCAL =====")
    escreval("Produto: ", nomeProduto)
    escreval("Preço unitário: R$ ", precoProduto:0:2)
    escreval("Quantidade: ", quantidade)
    escreval("Total da venda: R$ ", total:0:2)
    escreval("========================")
    escreval("Obrigado por utilizar o sistema!")

fimalgoritmo
