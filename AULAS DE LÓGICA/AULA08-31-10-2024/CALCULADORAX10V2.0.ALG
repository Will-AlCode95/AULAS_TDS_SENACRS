Algoritmo "CalculadoraX10v2"
Var
    // Declara��o de vari�veis
    valor1, valor2, total: real
    opcao: inteiro

Inicio
    // Cabe�alho e Menu
    escreval("============== CALCULADORA X10v2 ==============")
    escreval("==============      MENU      ===============")
    escreval("[1] - Adi��o ")
    escreval("[2] - Subtra��o")
    escreval("[3] - Multiplica��o")
    escreval("[4] - Divis�o")
    escreval("=============================================")

    // Escolha de opera��o
    escreval("Escolha uma das op��es (1, 2, 3, 4): ")
    leia(opcao)

    // Verifica se a op��o � v�lida
    se (opcao < 1) ou (opcao > 4) entao
        escreval("Op��o inv�lida! Tente novamente.")
    senao
        // Solicita os valores se a op��o for v�lida
        escreval("Digite o primeiro valor: ")
        leia(valor1)
        escreval("Digite o segundo valor: ")
        leia(valor2)

        // Realiza a opera��o com base na escolha
        escolha opcao
            caso 1
                total <- valor1 + valor2
                escreval("Resultado da adi��o: ", total)
            caso 2
                total <- valor1 - valor2
                escreval("Resultado da subtra��o: ", total)
            caso 3
                total <- valor1 * valor2
                escreval("Resultado da multiplica��o: ", total)
            caso 4
                se valor2 = 0 entao
                    escreval("Erro: Divis�o por zero n�o permitida.")
                senao
                    total <- valor1 / valor2
                    escreval("Resultado da divis�o: ", total)
                fimse
        fimescolha
    fimse

Fimalgoritmo
