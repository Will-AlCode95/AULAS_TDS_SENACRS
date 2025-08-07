def obter_desconto():
    nome = input("digite o seu nome: ")
    desconto = input("Quer desconto como estudante?[S/N]")
    if desconto == "s" or "S":
        idade = int(input("Digite sua idade: "))
        if idade >= 60:
            print("voce obteve desconto 50%")
        else:
            print("voce não tem desconto")
  
    return idade


meu_desc = obter_desconto()
print(f"Você tem {meu_desc} anos")
