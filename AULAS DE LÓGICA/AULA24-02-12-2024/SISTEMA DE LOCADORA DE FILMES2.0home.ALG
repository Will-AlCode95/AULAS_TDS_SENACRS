Algoritmo "Sistema de Locadora de Filmes"

Var
   opcaoMenu, opcaoSubmenu, totalFilmes, totalClientes, i, indice: inteiro
   filmes: vetor[1..3] de caracter
   generos: vetor[1..3] de caracter
   legendadoDublado: vetor[1..3] de caracter
   clientes: vetor[1..3] de caracter
   enderecos: vetor[1..3] de caracter
   cpfs: vetor[1..3] de caracter
   telefones: vetor[1..3] de caracter

Procedimento EditarFilme()

Inicio
   se totalFilmes > 0 entao    //verifica se tem filmes cadastrados
      escreval("========== EDITAR FILME ==========")
      para i de 1 ate totalFilmes faca
         escreval(i, ". ", filmes[i])
         escreval()
      fimpara

      escreva("Digite o n�mero do filme que deseja editar: ")
      leia(indice)

      se (indice >= 1) e (indice <= totalFilmes) entao
         escreval("Filme selecionado: ", filmes[indice])
         escreval("1. Editar Nome")
         escreval("2. Editar G�nero")
         escreval("3. Editar Legenda/Dublagem")
         escreva("Escolha a op��o: ")
         leia(opcaoSubmenu)

         escolha opcaoSubmenu
         caso 1
            escreva("Novo nome do filme: ")
            leia(filmes[indice])
         caso 2
            escreva("Novo g�nero do filme: ")
            leia(generos[indice])
         caso 3
            escreva("Novo tipo (L/D): ")
            leia(legendadoDublado[indice])
         fimescolha

         escreval("Filme atualizado com sucesso!")
         escreval
      senao
         escreval("Filme inv�lido!")
         escreval
      fimse
   senao
      escreval("N�o h� filmes cadastrados para editar.")
      escreval
   fimse
   leia()

Fimprocedimento

Procedimento ExcluirFilme()
Inicio
   se totalFilmes > 0 entao
      escreval("=========== EXCLUIR FILME ==========")
      para i de 1 ate totalFilmes faca
         escreval(i, ". ", filmes[i])
         escreval()
      fimpara

      escreva("Digite o n�mero do filme que deseja excluir: ")
      leia(indice)

      se (indice >= 1) e (indice <= totalFilmes) entao
         // Desloca os elementos para preencher o espa�o do filme exclu�do
         para i de indice ate totalFilmes - 1 faca
            filmes[i] <- filmes[i+1]
            generos[i] <- generos[i+1]
            legendadoDublado[i] <- legendadoDublado[i+1]
         fimpara

         totalFilmes <- totalFilmes - 1
         escreval("Filme exclu�do com sucesso!")
         escreval
      senao
         escreval("Filme inv�lido!")
         escreval
      fimse
   senao
      escreval("N�o h� filmes cadastrados para excluir.")
      escreval
   fimse
   leia()
Fimprocedimento

Procedimento EditarCliente()
Inicio
   se totalClientes > 0 entao
      escreval("========== EDITAR CLIENTE =========")
      para i de 1 ate totalClientes faca
         escreval(i, ". ", clientes[i])
         escreval()
      fimpara

      escreva("Digite o n�mero do cliente que deseja editar: ")
      leia(indice)

      se (indice >= 1) e (indice <= totalClientes) entao
         escreval("Cliente selecionado: ", clientes[indice])
         escreval("1. Editar Nome")
         escreval("2. Editar Endere�o")
         escreval("3. Editar CPF")
         escreval("4. Editar Telefone")
         escreva("Escolha a op��o: ")
         leia(opcaoSubmenu)

         escolha opcaoSubmenu
         caso 1
            escreva("Novo nome do cliente: ")
            leia(clientes[indice])
         caso 2
            escreva("Novo endere�o do cliente: ")
            leia(enderecos[indice])
         caso 3
            escreva("Novo CPF do cliente: ")
            leia(cpfs[indice])
         caso 4
            escreva("Novo telefone do cliente: ")
            leia(telefones[indice])
         fimescolha

         escreval("Cliente atualizado com sucesso!")
         escreval
      senao
         escreval("Cliente inv�lido!")
         escreval
      fimse
   senao
      escreval("N�o h� clientes cadastrados para editar.")
      escreval
   fimse
   leia()
Fimprocedimento

Procedimento ExcluirCliente()

Inicio
   se totalClientes > 0 entao
      escreval("============= EXCLUIR CLIENTE ============")
      para i de 1 ate totalClientes faca
         escreval(i, ". ", clientes[i])
         escreval()
      fimpara

      escreva("Digite o n�mero do cliente que deseja excluir: ")
      leia(indice)

      se (indice >= 1) e (indice <= totalClientes) entao
         // Desloca os elementos para preencher o espa�o no VETOR do cliente exclu�do
         para i de indice ate totalClientes - 1 faca
            clientes[i] <- clientes[i+1]
            enderecos[i] <- enderecos[i+1]
            cpfs[i] <- cpfs[i+1]
            telefones[i] <- telefones[i+1]
         fimpara

         totalClientes <- totalClientes - 1
         escreval("Cliente exclu�do com sucesso!")
         escreval
      senao
         escreval("Cliente inv�lido!")
         escreval
      fimse
   senao
      escreval("N�o h� clientes cadastrados para excluir.")
      escreval
   fimse
   leia()
Fimprocedimento

Inicio
   totalFilmes <- 0
   totalClientes <- 0
   repita
      escreval("=========== LOCADORA DE V�DEO SENAW ==========")
      escreval("1. Cadastrar Filme")
      escreval("2. Editar Filme")
      escreval("3. Excluir Filme")
      escreval("4. Listar Filmes Cadastrados")
      escreval("5. Cadastrar Cliente")
      escreval("6. Editar Cliente")
      escreval("7. Excluir Cliente")
      escreval("8. Listar Clientes Cadastrados")
      escreval("9. Sair")
      escreva("Escolha uma op��o: ")
      leia(opcaoMenu)

      escolha opcaoMenu
         // CADASTRO DE FILMES
      caso 1
         se totalFilmes < 3 entao
            totalFilmes <- totalFilmes + 1
            escreva("Digite o nome do filme ", totalFilmes, ": ")
            leia(filmes[totalFilmes])
            escreva("Digite o g�nero do filme: ")
            leia(generos[totalFilmes])
            escreva("O filme � (L)egendado ou (D)ublado? ")
            leia(legendadoDublado[totalFilmes])
            escreval("Filme cadastrado com sucesso!")
         senao
            escreval("Capacidade m�xima de filmes atingida!")
            escreval
         fimse
         leia()

         // EDITAR FILME
      caso 2
         EditarFilme()

         // EXCLUIR FILME
      caso 3
         ExcluirFilme()

         // LISTAR FILMES
      caso 4
         escreval("======== LISTA DE FILMES CADASTRADOS ========")
         se totalFilmes > 0 entao
            para i de 1 ate totalFilmes faca
               escreval(i, ". ", filmes[i], " | G�nero: ", generos[i], " | ", legendadoDublado[i])
               escreval()
            fimpara
         senao
            escreval("Nenhum filme cadastrado.")
            escreval
         fimse
         leia()

         // CADASTRO DE CLIENTES
      caso 5
         se totalClientes < 3 entao
            totalClientes <- totalClientes + 1
            escreva("Digite o nome do cliente ", totalClientes, ": ")
            leia(clientes[totalClientes])
            escreva("Digite o endere�o do cliente: ")
            leia(enderecos[totalClientes])
            escreva("Digite o CPF do cliente: ")
            leia(cpfs[totalClientes])
            escreva("Digite o telefone do cliente: ")
            leia(telefones[totalClientes])
            escreval("Cliente cadastrado com sucesso!")
         senao
            escreval("Capacidade m�xima de clientes atingida!")
            escreval
         fimse
         leia()

         // EDITAR CLIENTE
      caso 6
         EditarCliente()

         // EXCLUIR CLIENTE
      caso 7
         ExcluirCliente()

         // LISTAR CLIENTES
      caso 8

         escreval("========== LISTA DE CLIENTES CADASTRADOS =========")
         se totalClientes > 0 entao
            para i de 1 ate totalClientes faca
               escreval(i, ". ", clientes[i], " | Endere�o: ", enderecos[i], " | CPF: ", cpfs[i], " | Telefone: ", telefones[i])
               escreval()
            fimpara
         senao
            escreval("Nenhum cliente cadastrado.")
            escreval
         fimse
         leia()

         // SAIR
      caso 9
         escreval("Saindo do sistema... At� logo!")
         escreval
         leia()
      outrocaso
         escreval("Op��o inv�lida! Tente novamente.")
         escreval
         leia()

      fimescolha
   ate opcaoMenu = 9

Fimalgoritmo