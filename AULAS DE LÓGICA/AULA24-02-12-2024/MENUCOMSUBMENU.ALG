Algoritmo "MenuComSubmenu"

Var
   opcaoMenu, opcaoSubmenu: inteiro

Inicio
   repita
      // Menu principal
      escreval("=== MENU PRINCIPAL ===")
      escreval("1. Cadastro")
      escreval("2. Relat�rios")
      escreval("3. Configura��es")
      escreval("4. Sair")
      escreva("Escolha uma op��o: ")
      leia(opcaoMenu)

      escolha opcaoMenu
         caso 1
            // Submenu de Cadastro
            repita
               escreval("=== SUBMENU: CADASTRO ===")
               escreval("1. Cadastrar Produto")
               escreval("2. Cadastrar Cliente")
               escreval("3. Voltar ao Menu Principal")
               escreva("Escolha uma op��o: ")
               leia(opcaoSubmenu)

               escolha opcaoSubmenu
                  caso 1
                     escreval("Voc� escolheu: Cadastrar Produto.")
                  caso 2
                     escreval("Voc� escolheu: Cadastrar Cliente.")
                  caso 3
                     escreval("Voltando ao Menu Principal...")
                  caso contrario
                     escreval("Op��o inv�lida!")
               fimescolha
            ate opcaoSubmenu = 3

         caso 2
            // Submenu de Relat�rios
            repita
               escreval("=== SUBMENU: RELAT�RIOS ===")
               escreval("1. Relat�rio de Vendas")
               escreval("2. Relat�rio de Estoque")
               escreval("3. Voltar ao Menu Principal")
               escreva("Escolha uma op��o: ")
               leia(opcaoSubmenu)

               escolha opcaoSubmenu
                  caso 1
                     escreval("Voc� escolheu: Relat�rio de Vendas.")
                  caso 2
                     escreval("Voc� escolheu: Relat�rio de Estoque.")
                  caso 3
                     escreval("Voltando ao Menu Principal...")
                  caso contrario
                     escreval("Op��o inv�lida!")
               fimescolha
            ate opcaoSubmenu = 3

         caso 3
            // Submenu de Configura��es
            repita
               escreval("=== SUBMENU: CONFIGURA��ES ===")
               escreval("1. Alterar Senha")
               escreval("2. Configurar Sistema")
               escreval("3. Voltar ao Menu Principal")
               escreva("Escolha uma op��o: ")
               leia(opcaoSubmenu)

               escolha opcaoSubmenu
                  caso 1
                     escreval("Voc� escolheu: Alterar Senha.")
                  caso 2
                     escreval("Voc� escolheu: Configurar Sistema.")
                  caso 3
                     escreval("Voltando ao Menu Principal...")
                  caso contrario
                     escreval("Op��o inv�lida!")
               fimescolha
            ate opcaoSubmenu = 3

         caso 4
            escreval("Saindo do sistema. At� logo!")
         caso contrario
            escreval("Op��o inv�lida! Tente novamente.")
      fimescolha
   ate opcaoMenu = 4
Fimalgoritmo
