class Item:
    def __init__(self,nome,dano,protecao):
        self.nome = nome
        self.dano = dano
        self.protecao = protecao


item = Item
item.nome = "machado"
item.dano = 10
item.protecao = 20

print("Nome do item:", item.nome)
print("Dano:", item.dano)
print("Proteção:", item.protecao)
print("====================================")