Algoritmo "Sistema de Locadora de Filmes"

// Declaração de variáveis para armazenar filmes e clientes
// Vetores limitados a 3 registros para demonstração
Var
   opcaoMenu, opcaoSubmenu, totalFilmes, totalClientes, i, indice: inteiro
   filmes: vetor[1..3] de caracter             // Armazena nomes dos filmes
   generos: vetor[1..3] de caracter            // Armazena gêneros dos filmes
   legendadoDublado: vetor[1..3] de caracter   // Armazena tipo de legenda/dublagem
   clientes: vetor[1..3] de caracter           // Armazena nomes dos clientes
   enderecos: vetor[1..3] de caracter          // Armazena endereços dos clientes
   cpfs: vetor[1..3] de caracter               // Armazena CPFs dos clientes
   telefones: vetor[1..3] de caracter          // Armazena telefones dos clientes

   // Procedimento para editar informações de um filme cadastrado
Procedimento EditarFilme()
Inicio
   // Verifica se existem filmes cadastrados antes de permitir edição
   se totalFilmes > 0 entao
      escreval("========== EDITAR FILME ==========")
      // Lista todos os filmes cadastrados com seus índices
      para i de 1 ate totalFilmes faca
         escreval(i, ". ", filmes[i])
         escreval()
      fimpara

      // Solicita ao usuário qual filme deseja editar
      escreva("Digite o número do filme que deseja editar: ")
      leia(indice)

      // Verifica se o índice selecionado é válido
      se (indice >= 1) e (indice <= totalFilmes) entao
         escreval("Filme selecionado: ", filmes[indice])
         // Submenu de edição com diferentes opções
         escreval("1. Editar Nome")
         escreval("2. Editar Gênero")
         escreval("3. Editar Legenda/Dublagem")
         escreva("Escolha a opção: ")
         leia(opcaoSubmenu)

         // Permite editar diferentes atributos do filme conforme opção selecionada
         escolha opcaoSubmenu
         caso 1
            escreva("Novo nome do filme: ")
            leia(filmes[indice])
         caso 2
            escreva("Novo gênero do filme: ")
            leia(generos[indice])
         caso 3
            escreva("Novo tipo (L/D): ")
            leia(legendadoDublado[indice])
         fimescolha

         escreval("Filme atualizado com sucesso!")
         escreval
      senao
         escreval("Filme inválido!")
         escreval
      fimse
   senao
      escreval("Não há filmes cadastrados para editar.")
      escreval
   fimse
   leia()

Fimprocedimento

// Procedimento para excluir um filme cadastrado
Procedimento ExcluirFilme()
Inicio
   // Verifica se existem filmes cadastrados antes de permitir exclusão
   se totalFilmes > 0 entao
      escreval("=========== EXCLUIR FILME ==========")
      // Lista todos os filmes cadastrados com seus índices
      para i de 1 ate totalFilmes faca
         escreval(i, ". ", filmes[i])
         escreval()
      fimpara

      // Solicita ao usuário qual filme deseja excluir
      escreva("Digite o número do filme que deseja excluir: ")
      leia(indice)

      // Verifica se o índice selecionado é válido
      se (indice >= 1) e (indice <= totalFilmes) entao
    // Desloca os elementos para preencher o espaço do filme excluído
   // Move os elementos subsequentes uma posição pra trás
         para i de indice ate totalFilmes - 1 faca
            filmes[i] <- filmes[i+1]       // Reposiciona nome do filme
            generos[i] <- generos[i+1]    // Reposiciona gênero
            legendadoDublado[i] <- legendadoDublado[i+1]
            // Reposiciona tipo de legenda/dublagem
         fimpara

         // Reduz o total de filmes cadastrados
         totalFilmes <- totalFilmes - 1
         escreval("Filme excluído com sucesso!")
         escreval
      senao
         escreval("Filme inválido!")
         escreval
      fimse
   senao
      escreval("Não há filmes cadastrados para excluir.")
      escreval
   fimse
   leia()
Fimprocedimento

// Procedimento para editar informações de um cliente cadastrado
Procedimento EditarCliente()
Inicio
   // Verifica se existem clientes cadastrados antes de permitir edição
   se totalClientes > 0 entao
      escreval("========== EDITAR CLIENTE =========")
      // Lista todos os clientes cadastrados com seus índices
      para i de 1 ate totalClientes faca
         escreval(i, ". ", clientes[i])
         escreval()
      fimpara

      // Solicita ao usuário qual cliente deseja editar
      escreva("Digite o número do cliente que deseja editar: ")
      leia(indice)

      // Verifica se o índice(cliente) selecionado é válido
      se (indice >= 1) e (indice <= totalClientes) entao
         escreval("Cliente selecionado: ", clientes[indice])
         // Submenu de edição com diferentes opções
         escreval("1. Editar Nome")
         escreval("2. Editar Endereço")
         escreval("3. Editar CPF")
         escreval("4. Editar Telefone")
         escreva("Escolha a opção: ")
         leia(opcaoSubmenu)

// Permite editar diferentes atributos do cliente conforme opção selecionada
         escolha opcaoSubmenu
         caso 1
            escreva("Novo nome do cliente: ")
            leia(clientes[indice])
         caso 2
            escreva("Novo endereço do cliente: ")
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
         escreval("Cliente inválido!")
         escreval
      fimse
   senao
      escreval("Não há clientes cadastrados para editar.")
      escreval
   fimse
   leia()
Fimprocedimento

// Procedimento para excluir um cliente cadastrado
Procedimento ExcluirCliente()
Inicio
   // Verifica se existem clientes cadastrados antes de permitir exclusão
   se totalClientes > 0 entao
      escreval("============= EXCLUIR CLIENTE ============")
      // Lista todos os clientes cadastrados com seus índices
      para i de 1 ate totalClientes faca
         escreval(i, ". ", clientes[i])
         escreval()
      fimpara

      // Solicita ao usuário qual cliente deseja excluir
      escreva("Digite o número do cliente que deseja excluir: ")
      leia(indice)

      // Verifica se o índice selecionado é válido
      se (indice >= 1) e (indice <= totalClientes) entao
         // Desloca os elementos para preencher o espaço no vetor do cliente excluído
         // Move os elementos subsequentes uma posição para trás
         para i de indice ate totalClientes - 1 faca
            clientes[i] <- clientes[i+1]        // Reposiciona nome do cliente
            enderecos[i] <- enderecos[i+1]      // Reposiciona endereço
            cpfs[i] <- cpfs[i+1]                // Reposiciona CPF
            telefones[i] <- telefones[i+1]      // Reposiciona telefone
         fimpara

         // Reduz o total de clientes cadastrados
         totalClientes <- totalClientes - 1
         escreval("Cliente excluído com sucesso!")
         escreval
      senao
         escreval("Cliente inválido!")
         escreval
      fimse
   senao
      escreval("Não há clientes cadastrados para excluir.")
      escreval
   fimse
   leia()
Fimprocedimento

// Bloco principal do programa
Inicio
   // Inicializa contadores de filmes e clientes
   totalFilmes <- 0
   totalClientes <- 0

   // Loop principal do sistema com menu de opções
   repita
      // Exibe menu principal com todas as opções disponíveis
      escreval("=========== VÍDEO LOCADORA SENAW ==========")
      escreval("1. Cadastrar Filme")
      escreval("2. Editar Filme")
      escreval("3. Excluir Filme")
      escreval("4. Listar Filmes Cadastrados")
      escreval("5. Cadastrar Cliente")
      escreval("6. Editar Cliente")
      escreval("7. Excluir Cliente")
      escreval("8. Listar Clientes Cadastrados")
      escreval("9. Sair")
      escreva("Escolha uma opção: ")
      leia(opcaoMenu)

      // Estrutura de seleção para executar a opção escolhida
      escolha opcaoMenu
         // CADASTRO DE FILMES
      caso 1
         // Verifica se ainda há espaço para cadastrar mais filmes
         se totalFilmes < 3 entao
            totalFilmes <- totalFilmes + 1
            // Solicita informações do novo filme
            escreva("Digite o nome do filme ", totalFilmes, ": ")
            leia(filmes[totalFilmes])
            escreva("Digite o gênero do filme: ")
            leia(generos[totalFilmes])
            escreva("O filme é (L)egendado ou (D)ublado? ")
            leia(legendadoDublado[totalFilmes])
            escreval("Filme cadastrado com sucesso!")
         senao
            escreval("Capacidade máxima de filmes atingida!")
            //sem espaço no hdd
            escreval
         fimse
         leia()

         // EDITAR FILME
      caso 2
         EditarFilme()  //chama a função procedimento

         // EXCLUIR FILME
      caso 3
         ExcluirFilme()  //chama a função procedimento

         // LISTAR FILMES
      caso 4
         escreval("======== LISTA DE FILMES CADASTRADOS ========")
         // Verifica se existem filmes cadastrados
         se totalFilmes > 0 entao
            // Lista todos os filmes com suas informações
            para i de 1 ate totalFilmes faca
               escreval(i, ". ", filmes[i], " | Gênero: ", generos[i], " | ", legendadoDublado[i])
               escreval()
            fimpara
         senao
            escreval("Nenhum filme cadastrado.")
            escreval
         fimse
         leia()

         // CADASTRO DE CLIENTES
      caso 5
         // Verifica se ainda há espaço para cadastrar mais clientes
         se totalClientes < 3 entao
            totalClientes <- totalClientes + 1
            // Solicita informações do novo cliente
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
            //sem espaço no hdd =/
            escreval
         fimse
         leia()

         // EDITAR CLIENTE
      caso 6
         EditarCliente() //chama a função procedimento

         // EXCLUIR CLIENTE
      caso 7
         ExcluirCliente() //chama a função procedimento

         // LISTAR CLIENTES
      caso 8
         escreval("========== LISTA DE CLIENTES CADASTRADOS =========")
         // Verifica se existem clientes cadastrados
         se totalClientes > 0 entao
            // Lista todos os clientes com suas informações
            para i de 1 ate totalClientes faca
               escreval(i, ". ", clientes[i], " | Endereço: ", enderecos[i], " | CPF: ", cpfs[i], " | Telefone: ", telefones[i])
               escreval()
            fimpara
         senao
            escreval("Nenhum cliente cadastrado.")
            escreval
         fimse
         leia()

         // SAIR
      caso 9
         escreval("Saindo do sistema... Até logo!")
         escreval
         leia()

         // Tratamento para opção inválida
      outrocaso
         escreval("Opção inválida! Tente novamente.")
         escreval
         leia()

      fimescolha
      // Continua executando até que a opção 9 (sair) seja selecionada
   ate opcaoMenu = 9

Fimalgoritmo