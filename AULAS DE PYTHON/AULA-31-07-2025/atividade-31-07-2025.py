print("===============LOJA DO WILE================")
print("===========================================")
print("==============DADOS DO USUÁRIO=============")
print()
print("Nome do cliente")
usuario = input("digite o nome do cliente: ")
print("CPF")
cpf = input("digite o nome do CPF: ")
print()
print("Informe o nome do produto")
produto = input ("produto: ")
print("Informe o valor do produto R$ ")
etiqueta = float(input("valor: "))
print("Quantidade de Produto")
quantidade = float(input("quantidade: "))
total = 0
print()
print("=============ESCOLHA A OPÇÃO=================")
print("===============DE PAGAMENTO==================")
print()
print("[1] - A vista em dinheiro, Pix ou cheque, 15% desconto")
print("[2] - A vista no cartão de débito, 10% de desconto")
print("[3] - Parcelado em 3x preço normal sem juros ")
print("[4] - Parcelado em 4x com acréscimo de 10%")
print("=============PROMO BLACK FRIDAY 2025==============")
print("Comprando de 4 a 6 unidades: +5% de desconto no valor final")
print("Comprando de 7 a 9 unidades: +10% sobre o valor final")
print("Comprando de 10 ou mais unidades: +15% sobre o valor final")
print("==================================================")
print("Escolha uma das opções de Pagamento(1,2,3,4): ")
print()
opcao = int(input("digite sua escolha: "))
print("=================================================")
print()
if (opcao == 1):
     total = etiqueta - (etiqueta * 0.15)
     total = quantidade * total
     print("opção 1 escolhida")
elif (opcao == 2):
         total = etiqueta - (etiqueta * 0.10)
         total = quantidade * total
         print("opção 2 escolhida")
elif (opcao == 3):
        total = etiqueta
        parcelado = etiqueta/2
        total = quantidade * total
        print("Você escolheu a opção 3 como forma de pagamento")
        print(f"Produto parcelado em 2x de : R${parcelado:.1f}")
elif (opcao == 4):
         total = etiqueta + (etiqueta * 0.10)
         parcelado = total/3
         total = quantidade * total
         print("Você escolheu a opção 4 como forma de pagamento")
         print(f"Produto parcelado em 3x de : R${parcelado:.1f}")
    
         
if  ((opcao <= 0) or (opcao >= 5)): 
       print("Você escolheu uma opção errada!")
       print("============ERROR=============!")
else:
      ("==============Nota Fiscal===============")
      print(f"Nome: {usuario}")
      print(f"CPF: {cpf}")
      print(f"Nome do produto comprado: {produto}")
      print(f"Valor do produto na etiqueta: R${etiqueta}")
      print(f"Quantidade de produtos comprados: {quantidade}")
      print(f"Valor total da compra do produto: R${total}")