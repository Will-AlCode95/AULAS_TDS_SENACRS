
#// Inicializações
total = 0
quanttotal = 0
opcao = 0
quantidade = 0
sn = "S"

#// Seção de Comandos
while ((sn == "S") or (sn == "s")):
   print("=================BAR DO WILL=================")
   print("===============MENU DE BEBIDAS==============")
   print("[1] Suco de Laranja R$ 3,00")
   print("[2] Água Mineral R$ 2,00")
   print("[3] Refrigerante R$ 4,50")
   print("[4] Chá Gelado R$ 3,50")
   input("Selecione uma das opções: ")  
#// Verificação da opção selecionada
if (opcao < 1) or (opcao > 4):
      print("Você escolheu uma opção inválida!")
      print("Realize a compra novamente!")
else:
      input("Quantas bebidas você deseja comprar: ")
      quanttotal = quanttotal + quantidade

match opcao:
    case  1:
        subtotal <- quantidade * 3.00
        bebida <- "Suco de Laranja"
    case 2:
        subtotal <- quantidade * 2.00
        bebida <- "Água Mineral"
    case 3:
        subtotal <- quantidade * 4.50
        bebida <- "Refrigerante"
    case 4:
            subtotal <- quantidade * 3.50
            bebida <- "Chá Gelado"
      fimescolha
