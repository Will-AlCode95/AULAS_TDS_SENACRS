Algoritmo "Sistema de Locadora de Filmes"
Var
   opcaoMenu, totalFilmes, totalClientes, i: inteiro
   filmes: vetor[1..10] de caracter
   clientes: vetor[1..10] de caracter
   enderecos: vetor[1..10] de caracter
   cpfs: vetor[1..10] de caracter
   telefones: vetor[1..10] de caracter

Inicio
   totalFilmes <- 0
   totalClientes <- 0

   repita
      escreval("=== SISTEMA DE CADASTRO DA LOCADORA ===")
      escreval("1. Cadastrar Filme")
      escreval("2. Cadastrar Cliente")
      escreval("3. Listar Filmes Cadastrados")
      escreval("4. Listar Clientes Cadastrados")
      escreval("5. Sair")
      escreva("Escolha uma opção: ")
      leia(opcaoMenu)

      escolha opcaoMenu
         // CADASTRO DE FILMES
      caso 1
         se totalFilmes < 10 entao
            totalFilmes <- totalFilmes + 1
            escreva("Digite o nome do filme ", totalFilmes, ": ")
            leia(filmes[totalFilmes])
            escreval("Filme cadastrado com sucesso!")
         senao
            escreval("Capacidade máxima de filmes atingida!")
         fimse
         leia()

         // CADASTRO DE CLIENTES
      caso 2
         se totalClientes < 10 entao
            totalClientes <- totalClientes + 1
            escreva("Digite o nome do cliente ", totalClientes, ": ")
            leia(clientes[totalClientes])
            escreva("Digite o endereço do cliente: ")
            leia(enderecos[totalClientes])
            escreva("Digite o CPF do cliente: ")
            leia(cpfs[totalClientes])
            escreva("Digite o telefone do cliente: ")
            leia(telefones[totalClientes])
            escreval("Cliente cadastrado com sucesso!")
         senao
            escreval("Capacidade máxima de clientes atingida!")
         fimse
         leia()

         // LISTAR FILMES
      caso 3
         escreval("=== LISTA DE FILMES CADASTRADOS ===")
         se totalFilmes > 0 entao
            para i de 1 ate totalFilmes faca
               escreval(i, ". ", filmes[i])
            fimpara
         senao
            escreval("Nenhum filme cadastrado.")
         fimse
         leia()

         // LISTAR CLIENTES
      caso 4
         escreval("=== LISTA DE CLIENTES CADASTRADOS ===")
         se totalClientes > 0 entao
            para i de 1 ate totalClientes faca
               escreval(i, ". ", clientes[i], " | Endereço: ", enderecos[i], " | CPF: ", cpfs[i], " | Telefone: ", telefones[i])
            fimpara
         senao
            escreval("Nenhum cliente cadastrado.")
         fimse
         leia()

         // SAIR
      caso 5
         escreval("Saindo do sistema. Até logo!")
         leia()

      outrocaso
         escreval("Opção inválida! Tente novamente.")
         leia()
      fimescolha
   ate opcaoMenu = 5
Fimalgoritmo