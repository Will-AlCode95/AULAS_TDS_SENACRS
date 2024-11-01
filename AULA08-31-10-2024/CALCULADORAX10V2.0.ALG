Algoritmo "CalculadoraX10v2"
Var
    // Declaração de variáveis
    valor1, valor2, total: real
    opcao: inteiro

Inicio
    // Cabeçalho e Menu
    escreval("============== CALCULADORA X10v2 ==============")
    escreval("==============      MENU      ===============")
    escreval("[1] - Adição ")
    escreval("[2] - Subtração")
    escreval("[3] - Multiplicação")
    escreval("[4] - Divisão")
    escreval("=============================================")

    // Escolha de operação
    escreval("Escolha uma das opções (1, 2, 3, 4): ")
    leia(opcao)

    // Verifica se a opção é válida
    se (opcao < 1) ou (opcao > 4) entao
        escreval("Opção inválida! Tente novamente.")
    senao
        // Solicita os valores se a opção for válida
        escreval("Digite o primeiro valor: ")
        leia(valor1)
        escreval("Digite o segundo valor: ")
        leia(valor2)

        // Realiza a operação com base na escolha
        escolha opcao
            caso 1
                total <- valor1 + valor2
                escreval("Resultado da adição: ", total)
            caso 2
                total <- valor1 - valor2
                escreval("Resultado da subtração: ", total)
            caso 3
                total <- valor1 * valor2
                escreval("Resultado da multiplicação: ", total)
            caso 4
                se valor2 = 0 entao
                    escreval("Erro: Divisão por zero não permitida.")
                senao
                    total <- valor1 / valor2
                    escreval("Resultado da divisão: ", total)
                fimse
        fimescolha
    fimse

Fimalgoritmo
