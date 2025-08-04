#Inicio
#// Inicializações
totalArrecadadoDia = 0
totalItensVendidos = 0
novoCliente = "S"
quantidade = 0
subtotal = 0
total = 0
sn = "s"

while ((novoCliente == "S") or (novoCliente == "s")):
    #// Inicializar total do cliente
    total = 0
    quanttotal = 0
    produto = 0
    print("=================MERCADO DO WILL=================")

    #// Loop de adição de produtos ao carrinho
    while ((sn == "S") or (sn == "s")):
       print("===============MENU DE PRODUTOS==============")
       print("[1] Arroz (1kg) R$ 5,00")
       print("[2] Feijão (1kg) R$ 7,50")
       print("[3] Leite (1L) R$ 4,00")
       print("[4] Café (500g) R$ 6,00")
       opcao = int(input("Selecione uma das opções: "))

       #// Verificação da opção selecionada
       if (opcao < 1) or (opcao > 4):
          print("Você escolheu uma opção inválida!")
       else:
          quantidade = int(input("Quantos produtos você deseja adicionar: "))
          quanttotal = quanttotal + quantidade
          totalItensVendidos = totalItensVendidos + quantidade  #// Soma dos itens no dia

          match opcao:
             case 1:
                subtotal = quantidade * 5.00
                produto = "Arroz (1kg)"
             case 2:
                subtotal = quantidade * 7.50
                produto = "Feijão (1kg)"
             case 3:
                subtotal = quantidade * 4.00
                produto = "Leite (1L)"
             case 4:
                subtotal = quantidade * 6.00
                produto = "Café (500g)"

          total = total + subtotal
          print("=========================================")
          print("Você adicionou ", quantidade, " unidade(s) de ", produto)
          print("Subtotal desta compra: R$ ", subtotal)
          print("Valor total acumulado no carrinho: R$ ", total)
          print("=========================================")
          input("Deseja adicionar mais produtos ao carrinho? (S/N): ")       

       print("==============================================")
       print("Quantidade total de itens no carrinho: ", quanttotal, " unidades.")
       print("Valor total da sua compra R$ ", total)
       print ("     FORMAS DE PAGAMENTO    ")
       print()
       print("1- À vista em dinheiro ou PIX - 10% de desconto")
       print ("2- Cartão de débito - 5% de desconto")
       print ("3- Cartão de crédito 1x - mesmo preço")
       print ("4- Cartão de crédito 2x - acréscimo de 5%")
       print ("5- Cartão de crédito 3x - acréscimo de 10%")
       print ("6- Cartão de crédito 4x - acréscimo de 15%")
       print()
