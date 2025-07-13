# # Exercícios sobre Uso de Dicionários

# 1. **Criação de Dicionário**
#    Crie um dicionário chamado `personagem` com as chaves `"nome"`, `"classe"` e `"nivel"`.

# 2. **Acesso a Valores**
#    Dado o dicionário `item = {"nome": "espada", "dano": 5}`, escreva um código para imprimir o valor associado à chave `"dano"`.

# 3. **Adição e Remoção de Chaves**
#    Adicione a chave `"protecao"` com valor `3` ao dicionário `item` e depois remova a chave `"nome"`.

# 4. **Percorrendo Dicionários**
#    Escreva um laço que percorra todas as chaves e valores do dicionário `personagem` e imprima cada par.

# 5. **Dicionários Aninhados**
#    Crie um dicionário chamado `inventario` onde cada chave é o nome de um personagem e o valor é outro dicionário com os itens desse personagem.

personagem = {
    "nome": "will",
    "classe": "warrior",
    "dano": 5
}

print("O Dano do", personagem["nome"], "é",
      personagem["dano"], "e a sua porteção é de: ")

personagem["proteção"] = 2
# del personagem["nome"]

print(personagem)

for chave, valor in personagem.items():
    print(f"{chave}: {valor}")

inventario = {
    "tonho": {"ataque": 10, "defesa": 5, "armadura": 2},

    "irineu": {"ataque": 15, "defesa": 10, "armadura": 5}
}

print("o poder dele é:", inventario["irineu"]["defesa"])


for chave, valor in inventario.items():
    print(f"  {chave}: {valor}")
