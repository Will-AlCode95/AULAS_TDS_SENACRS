Algoritmo "Sistema de Locadora de Filmes"

// Declara��o de vari�veis para armazenar informa��es de filmes e clientes
// Vetores limitados a 3 registros para demonstra��o

Var
   opcaoMenu, opcaoSubmenu, totalFilmes, totalClientes, i, indice: inteiro
   filmes: vetor[1..3] de caracter             // Armazena nomes dos filmes
   generos: vetor[1..3] de caracter            // Armazena g�neros dos filmes
   legendadoDublado: vetor[1..3] de caracter   // Armazena tipo de legenda/dublagem
   clientes: vetor[1..3] de caracter           // Armazena nomes dos clientes
   enderecos: vetor[1..3] de caracter          // Armazena endere�os dos clientes
   cpfs: vetor[1..3] de caracter               // Armazena CPFs dos clientes
   telefones: vetor[1..3] de caracter          // Armazena telefones dos clientes

   // ... (vari�veis anteriores mantidas) ...

   filmeAlugado: vetor[1..3] de logico        // True se filme est� alugado, False se dispon�vel
   clienteLocador: vetor[1..3] de inteiro      // Armazena o �ndice do cliente que alugou cada filme
   dataLocacao: vetor[1..3] de caracter        // Armazena a data da loca��o

   // Procedimento para editar informa��es de um filme cadastrado
Procedimento EditarFilme()
Inicio
   // Verifica se existem filmes cadastrados antes de permitir edi��o
   se totalFilmes > 0 entao
      escreval("========== EDITAR FILME ==========")
      // Lista todos os filmes cadastrados com seus �ndices
      para i de 1 ate totalFilmes faca
         escreval(i, ". ", filmes[i])
         escreval()
      fimpara

      // Solicita ao usu�rio qual filme deseja editar
      escreva("Digite o n�mero do filme que deseja editar: ")
      leia(indice)

      // Verifica se o �ndice selecionado � v�lido
      se (indice >= 1) e (indice <= totalFilmes) entao
         escreval("Filme selecionado: ", filmes[indice])
         // Submenu de edi��o com diferentes op��es
         escreval("1. Editar Nome")
         escreval("2. Editar G�nero")
         escreval("3. Editar Legenda/Dublagem")
         escreva("Escolha a op��o: ")
         leia(opcaoSubmenu)

         // Permite editar diferentes atributos do filme conforme op��o selecionada
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

// Procedimento para excluir um filme cadastrado
Procedimento ExcluirFilme()
Inicio
   // Verifica se existem filmes cadastrados antes de permitir exclus�o
   se totalFilmes > 0 entao
      escreval("=========== EXCLUIR FILME ==========")
      // Lista todos os filmes cadastrados com seus �ndices
      para i de 1 ate totalFilmes faca
         escreval(i, ". ", filmes[i])
         escreval()
      fimpara

      // Solicita ao usu�rio qual filme deseja excluir
      escreva("Digite o n�mero do filme que deseja excluir: ")
      leia(indice)

      // Verifica se o �ndice selecionado � v�lido
      se (indice >= 1) e (indice <= totalFilmes) entao
         // Desloca os elementos para preencher o espa�o do filme exclu�do
         // Move os elementos subsequentes uma posi��o para tr�s
         para i de indice ate totalFilmes - 1 faca
            filmes[i] <- filmes[i+1]            // Reposiciona nome do filme
            generos[i] <- generos[i+1]          // Reposiciona g�nero
            legendadoDublado[i] <- legendadoDublado[i+1]  // Reposiciona tipo de legenda/dublagem
         fimpara

         // Reduz o total de filmes cadastrados
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

// Procedimento para editar informa��es de um cliente cadastrado
Procedimento EditarCliente()
Inicio
   // Verifica se existem clientes cadastrados antes de permitir edi��o
   se totalClientes > 0 entao
      escreval("========== EDITAR CLIENTE =========")
      // Lista todos os clientes cadastrados com seus �ndices
      para i de 1 ate totalClientes faca
         escreval(i, ". ", clientes[i])
         escreval()
      fimpara

      // Solicita ao usu�rio qual cliente deseja editar
      escreva("Digite o n�mero do cliente que deseja editar: ")
      leia(indice)

      // Verifica se o �ndice selecionado � v�lido
      se (indice >= 1) e (indice <= totalClientes) entao
         escreval("Cliente selecionado: ", clientes[indice])
         // Submenu de edi��o com diferentes op��es
         escreval("1. Editar Nome")
         escreval("2. Editar Endere�o")
         escreval("3. Editar CPF")
         escreval("4. Editar Telefone")
         escreva("Escolha a op��o: ")
         leia(opcaoSubmenu)

         // Permite editar diferentes atributos do cliente conforme op��o selecionada
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

// Procedimento para excluir um cliente cadastrado
Procedimento ExcluirCliente()
Inicio
   // Verifica se existem clientes cadastrados antes de permitir exclus�o
   se totalClientes > 0 entao
      escreval("============= EXCLUIR CLIENTE ============")
      // Lista todos os clientes cadastrados com seus �ndices
      para i de 1 ate totalClientes faca
         escreval(i, ". ", clientes[i])
         escreval()
      fimpara

      // Solicita ao usu�rio qual cliente deseja excluir
      escreva("Digite o n�mero do cliente que deseja excluir: ")
      leia(indice)

      // Verifica se o �ndice selecionado � v�lido
      se (indice >= 1) e (indice <= totalClientes) entao
         // Desloca os elementos para preencher o espa�o no vetor do cliente exclu�do
         // Move os elementos subsequentes uma posi��o para tr�s
         para i de indice ate totalClientes - 1 faca
            clientes[i] <- clientes[i+1]        // Reposiciona nome do cliente
            enderecos[i] <- enderecos[i+1]      // Reposiciona endere�o
            cpfs[i] <- cpfs[i+1]                // Reposiciona CPF
            telefones[i] <- telefones[i+1]      // Reposiciona telefone
         fimpara

         // Reduz o total de clientes cadastrados
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

Procedimento AlugarFilme()
Inicio
   se (totalFilmes = 0) entao
      escreval("N�o h� filmes cadastrados.")
   senao
      se (totalClientes = 0) entao
         escreval("N�o h� clientes cadastrados para alugar filmes.")
      senao
         escreval("====== FILMES DISPON�VEIS PARA LOCA��O ======")
         para i de 1 ate totalFilmes faca
            se nao filmeAlugado[i] entao
               escreval(i, ". ", filmes[i], " | G�nero: ", generos[i])
            fimse
         fimpara

         escreva("Digite o n�mero do filme que deseja alugar: ")
         leia(indice)

         se (indice >= 1) e (indice <= totalFilmes) entao
            se nao filmeAlugado[indice] entao
               escreval("====== CLIENTES CADASTRADOS ======")
               para i de 1 ate totalClientes faca
                  escreval(i, ". ", clientes[i])
               fimpara

               escreva("Digite o n�mero do cliente que est� alugando: ")
               leia(i)

               se (i >= 1) e (i <= totalClientes) entao
                  filmeAlugado[indice] <- verdadeiro
                  clienteLocador[indice] <- i
                  escreva("Digite a data da loca��o (DD/MM/AAAA): ")
                  leia(dataLocacao[indice])
                  escreval("Filme alugado com sucesso!")
               senao
                  escreval("Cliente inv�lido!")
               fimse
            senao
               escreval("Este filme j� est� alugado!")
            fimse
         senao
            escreval("Filme inv�lido!")
         fimse
      fimse
   fimse
   leia()
Fimprocedimento

Procedimento DevolverFilme()
Inicio
   se totalFilmes = 0 entao
      escreval("N�o h� filmes cadastrados.")
   senao
      escreval("====== FILMES ALUGADOS ======")
      para i de 1 ate totalFilmes faca
         se filmeAlugado[i] entao
            escreval(i, ". ", filmes[i], " | Cliente: ", clientes[clienteLocador[i]])
         fimse
      fimpara

      escreva("Digite o n�mero do filme a ser devolvido: ")
      leia(indice)

      se (indice >= 1) e (indice <= totalFilmes) entao
         se filmeAlugado[indice] entao
            filmeAlugado[indice] <- falso
            clienteLocador[indice] <- 0
            dataLocacao[indice] <- ""
            escreval("Filme devolvido com sucesso!")
         senao
            escreval("Este filme n�o est� alugado!")
         fimse
      senao
         escreval("Filme inv�lido!")
      fimse
   fimse
   leia()
Fimprocedimento

Procedimento ListarFilmesAlugados()
Inicio
   escreval("====== FILMES ATUALMENTE ALUGADOS ======")
   para i de 1 ate totalFilmes faca
      se filmeAlugado[i] entao
         escreval("Filme: ", filmes[i])
         escreval("Cliente: ", clientes[clienteLocador[i]])
         escreval("Data da loca��o: ", dataLocacao[i])
         escreval("------------------------")
      fimse
   fimpara

   se totalFilmes = 0 entao
      escreval("N�o h� filmes cadastrados.")
   fimse
   leia()
Fimprocedimento

// Bloco principal do programa
Inicio
   // Inicializa contadores de filmes e clientes
   totalFilmes <- 0
   totalClientes <- 0

   // Inicializa todos os filmes como n�o alugados
   para i de 1 ate 3 faca
      filmeAlugado[i] <- falso
      clienteLocador[i] <- 0
      dataLocacao[i] <- ""
   fimpara

   // Loop principal do sistema com menu de op��es
   repita
      // Exibe menu principal com todas as op��es dispon�veis
      escreval("=========== LOCADORA DE V�DEO SENAW ==========")
      escreval("1. Cadastrar Filme")
      escreval("2. Editar Filme")
      escreval("3. Excluir Filme")
      escreval("4. Listar Filmes Cadastrados")
      escreval("5. Cadastrar Cliente")
      escreval("6. Editar Cliente")
      escreval("7. Excluir Cliente")
      escreval("8. Listar Clientes Cadastrados")
      escreval("9. Alugar Filme")
      escreval("10. Devolver Filme")
      escreval("11. Listar Filmes Alugados")
      escreval("12. Sair")


      escreva("Escolha uma op��o: ")
      leia(opcaoMenu)

      // Estrutura de sele��o para executar a op��o escolhida
      escolha opcaoMenu
         // CADASTRO DE FILMES
      caso 1
         // Verifica se ainda h� espa�o para cadastrar mais filmes
         se totalFilmes < 3 entao
            totalFilmes <- totalFilmes + 1
            // Solicita informa��es do novo filme
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
         // Verifica se existem filmes cadastrados
         se totalFilmes > 0 entao
            // Lista todos os filmes com suas informa��es
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
         // Verifica se ainda h� espa�o para cadastrar mais clientes
         se totalClientes < 3 entao
            totalClientes <- totalClientes + 1
            // Solicita informa��es do novo cliente
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
         // Verifica se existem clientes cadastrados
         se totalClientes > 0 entao
            // Lista todos os clientes com suas informa��es
            para i de 1 ate totalClientes faca
               escreval(i, ". ", clientes[i], " | Endere�o: ", enderecos[i], " | CPF: ", cpfs[i], " | Telefone: ", telefones[i])
               escreval()
            fimpara
         senao
            escreval("Nenhum cliente cadastrado.")
            escreval
         fimse
         leia()

      caso 9
         AlugarFilme()

      caso 10
         DevolverFilme()

      caso 11
         ListarFilmesAlugados()

      caso 12
         escreval("Saindo do sistema... At� logo!")
         escreval
         leia()

      outrocaso
         escreval("Op��o inv�lida! Tente novamente.")
         escreval
         leia()
      fimescolha
   ate opcaoMenu = 12


Fimalgoritmo
