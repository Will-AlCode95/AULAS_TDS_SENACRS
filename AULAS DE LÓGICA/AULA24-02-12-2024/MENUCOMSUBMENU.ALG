Algoritmo "MenuComSubmenu"

Var
   opcaoMenu, opcaoSubmenu: inteiro

Inicio
   repita
      // Menu principal
      escreval("=== MENU PRINCIPAL ===")
      escreval("1. Cadastro")
      escreval("2. Relatórios")
      escreval("3. Configurações")
      escreval("4. Sair")
      escreva("Escolha uma opção: ")
      leia(opcaoMenu)

      escolha opcaoMenu
         caso 1
            // Submenu de Cadastro
            repita
               escreval("=== SUBMENU: CADASTRO ===")
               escreval("1. Cadastrar Produto")
               escreval("2. Cadastrar Cliente")
               escreval("3. Voltar ao Menu Principal")
               escreva("Escolha uma opção: ")
               leia(opcaoSubmenu)

               escolha opcaoSubmenu
                  caso 1
                     escreval("Você escolheu: Cadastrar Produto.")
                  caso 2
                     escreval("Você escolheu: Cadastrar Cliente.")
                  caso 3
                     escreval("Voltando ao Menu Principal...")
                  caso contrario
                     escreval("Opção inválida!")
               fimescolha
            ate opcaoSubmenu = 3

         caso 2
            // Submenu de Relatórios
            repita
               escreval("=== SUBMENU: RELATÓRIOS ===")
               escreval("1. Relatório de Vendas")
               escreval("2. Relatório de Estoque")
               escreval("3. Voltar ao Menu Principal")
               escreva("Escolha uma opção: ")
               leia(opcaoSubmenu)

               escolha opcaoSubmenu
                  caso 1
                     escreval("Você escolheu: Relatório de Vendas.")
                  caso 2
                     escreval("Você escolheu: Relatório de Estoque.")
                  caso 3
                     escreval("Voltando ao Menu Principal...")
                  caso contrario
                     escreval("Opção inválida!")
               fimescolha
            ate opcaoSubmenu = 3

         caso 3
            // Submenu de Configurações
            repita
               escreval("=== SUBMENU: CONFIGURAÇÕES ===")
               escreval("1. Alterar Senha")
               escreval("2. Configurar Sistema")
               escreval("3. Voltar ao Menu Principal")
               escreva("Escolha uma opção: ")
               leia(opcaoSubmenu)

               escolha opcaoSubmenu
                  caso 1
                     escreval("Você escolheu: Alterar Senha.")
                  caso 2
                     escreval("Você escolheu: Configurar Sistema.")
                  caso 3
                     escreval("Voltando ao Menu Principal...")
                  caso contrario
                     escreval("Opção inválida!")
               fimescolha
            ate opcaoSubmenu = 3

         caso 4
            escreval("Saindo do sistema. Até logo!")
         caso contrario
            escreval("Opção inválida! Tente novamente.")
      fimescolha
   ate opcaoMenu = 4
Fimalgoritmo
