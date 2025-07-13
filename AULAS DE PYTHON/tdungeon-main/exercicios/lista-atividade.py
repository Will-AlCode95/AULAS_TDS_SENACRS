itens = ["escudo", "armadura", "pocao"]

print("meu item é:", itens[1])

itens.append("espada")

print("item adicionado:", itens)

itens.remove("escudo")

print("item removido:", itens)

for item in itens:  # percorre toda a lista e mostra os itens
    print(item)

print(len(itens))  # mostra em numeros quanto itens

inventarios = [bill := ["espada árabe", "escudo de asgard"],
               irineu := ["maça", "armadura"]]  # := what?

print(inventarios)

# versão 2

inventarios2 = [["jairson", 30], ["urso_russo", 50]]

for iventa in inventarios2:
    nome = inventarios2[0]
    poder_do_gemido = inventarios2[1]

print(f"nome do guerreiro:{nome} poder do gemido de:{poder_do_gemido}")

for guerreiro in inventarios2:
    print(
        f"nome do guerreiro: {guerreiro[0]} - poder de ataque: {guerreiro[1]}")
