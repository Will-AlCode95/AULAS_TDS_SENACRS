Algoritmo "Sistema de Locadora de Filmes"

Var
   opcaoMenu, totalFilmes, totalClientes, i, posicao: inteiro
   filmes: vetor[1..3] de caracter
   generos: vetor[1..3] de caracter
   legendadoDublado: vetor[1..3] de caracter
   clientes: vetor[1..3] de caracter
   enderecos: vetor[1..3] de caracter
   cpfs: vetor[1..3] de caracter
   telefones: vetor[1..3] de caracter

   // Procedimento para listar filmes
Procedimento ListarFilmes()

Inicio
   escreval("========== LISTA DE FILMES CADASTRADOS ==========")
   se totalFilmes > 0 entao
      para i de 1 ate totalFilmes faca
         escreval(i, ". ", filmes[i], " | Gênero: ", generos[i], " | ", legendadoDublado[i])
         escreval
      fimpara
   senao
      escreval("Nenhum filme cadastrado.")
      escreval
   fimse
FimProcedimento

// Procedimento para listar clientes
Procedimento ListarClientes()

Inicio
   escreval("============ LISTA DE CLIENTES CADASTRADOS ============")
   se totalClientes > 0 entao
      para i de 1 ate totalClientes faca
         escreval(i, ". ", clientes[i], " | Endereço: ", enderecos[i], " | CPF: ", cpfs[i], " | Telefone: ", telefones[i])
         escreval
      fimpara
   senao
      escreval("Nenhum cliente cadastrado.")
      escreval
   fimse
FimProcedimento

// Procedimento para editar filmes
Procedimento EditarFilme()

Var
   posicao: inteiro
Inicio
   ListarFilmes()
   escreva("Digite o número do filme que deseja editar: ")
   leia(posicao)
   se posicao > 0 e posicao <= totalFilmes entao
      escreva("Digite o novo nome do filme: ")
      leia(filmes[posicao])
      escreva("Digite o novo gênero do filme: ")
      leia(generos[posicao])
      escreva("O filme é (L)egendado ou (D)ublado? ")
      leia(legendadoDublado[posicao])
      escreval("Filme editado com sucesso!")
      escreval
   senao
      escreval("Número inválido!")
      escreval
   fimse
FimProcedimento

// Procedimento para excluir filmes
Procedimento ExcluirFilme()

Var
   posicao: inteiro
Inicio
   ListarFilmes()
   escreva("Digite o número do filme que deseja excluir: ")
   leia(posicao)
   se posicao > 0 e posicao <= totalFilmes entao
      para i de posicao ate totalFilmes - 1 faca
         filmes[i] <- filmes[i + 1]
         generos[i] <- generos[i + 1]
         legendadoDublado[i] <- legendadoDublado[i + 1]
      fimpara
      totalFilmes <- totalFilmes - 1
      escreval("Filme excluído com sucesso!")
      escreval
   senao
      escreval("Número inválido!")
      escreval
   fimse
FimProcedimento

// Procedimento para editar clientes
Procedimento EditarCliente()

Var
   posicao: inteiro
Inicio
   ListarClientes()
   escreva("Digite o número do cliente que deseja editar: ")
   leia(posicao)
   se posicao > 0 e posicao <= totalClientes entao
      escreva("Digite o novo nome do cliente: ")
      leia(clientes[posicao])
      escreva("Digite o novo endereço do cliente: ")
      leia(enderecos[posicao])
      escreva("Digite o novo CPF do cliente: ")
      leia(cpfs[posicao])
      escreva("Digite o novo telefone do cliente: ")
      leia(telefones[posicao])
      escreval("Cliente editado com sucesso!")
      escreval
   senao
      escreval("Número inválido!")
      escreval
   fimse
FimProcedimento

// Procedimento para excluir clientes
Procedimento ExcluirCliente()

Var
   posicao: inteiro
Inicio
   ListarClientes()
   escreva("Digite o número do cliente que deseja excluir: ")
   leia(posicao)
   se posicao > 0 e posicao <= totalClientes entao
      para i de posicao ate totalClientes - 1 faca
         clientes[i] <- clientes[i + 1]
         enderecos[i] <- enderecos[i + 1]
         cpfs[i] <- cpfs[i + 1]
         telefones[i] <- telefones[i + 1]
      fimpara
      totalClientes <- totalClientes - 1
      escreval("Cliente excluído com sucesso!")
      escreval
   senao
      escreval("Número inválido!")
      escreval
   fimse
FimProcedimento

Inicio
   totalFilmes <- 0
   totalClientes <- 0

   repita
      escreval("======== SISTEMA DE CADASTRO DA LOCADORA ===========")
      escreval("1. Cadastrar Filme")
      escreval("2. Cadastrar Cliente")
      escreval("3. Listar Filmes Cadastrados")
      escreval("4. Listar Clientes Cadastrados")
      escreval("5. Editar Filme")
      escreval("6. Excluir Filme")
      escreval("7. Editar Cliente")
      escreval("8. Excluir Cliente")
      escreval("9. Sair")
      escreva("Escolha uma opção: ")
      leia(opcaoMenu)

      escolha opcaoMenu
      caso 1
         se totalFilmes < 3 entao
            totalFilmes <- totalFilmes + 1
            escreva("Digite o nome do filme ", totalFilmes, ": ")
            leia(filmes[totalFilmes])
            escreva("Digite o gênero do filme: ")
            leia(generos[totalFilmes])
            escreva("O filme é (L)egendado ou (D)ublado? ")
            leia(legendadoDublado[totalFilmes])
            escreval("Filme cadastrado com sucesso!")
            escreval
         senao
            escreval("Capacidade máxima de filmes atingida!")
            escreval
         fimse

      caso 2
         se totalClientes < 3 entao
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
            escreval
         senao
            escreval("Capacidade máxima de clientes atingida!")
            escreval
         fimse

      caso 3
         ListarFilmes()

      caso 4
         ListarClientes()

      caso 5
         EditarFilme()

      caso 6
         ExcluirFilme()

      caso 7
         EditarCliente()

      caso 8
         ExcluirCliente()

      caso 9
         escreval("Saindo do sistema... Até logo!")
         escreval

      outrocaso
         escreval("Opção inválida! Tente novamente.")
         escreval
      fimescolha

   ate opcaoMenu = 9

Fimalgoritmo
