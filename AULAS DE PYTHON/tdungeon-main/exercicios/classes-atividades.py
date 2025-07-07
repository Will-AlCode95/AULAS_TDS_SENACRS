# Exercícios sobre Definição de Classes

#1. **Defina uma classe simples**  
#   Crie uma classe chamada `Porta` que tenha um atributo `aberta` (booleano) e um método `abrir()` que define `aberta` como `True`.

#2. **Classe com construtor**  
#   Implemente uma classe `Chave` que recebe um número `codigo` no construtor e armazena esse valor em um atributo.

#3. **Classe com métodos de instância**  
#   Crie uma classe `Tesouro` com um atributo `valor` e um método `coletar()` que imprime "Tesouro coletado!" e retorna o valor.

#4. **Classe com atributos privados**  
#   Defina uma classe `Cofre` com um atributo privado `_senha` e um método `verificar_senha(senha)` que retorna `True` se a senha estiver correta.

#5. **Classe com herança**  
#   Implemente uma classe `PortaSecreta` que herda de `Porta` e adiciona um método `revelar()` que imprime "Uma porta secreta foi revelada!".

#1
class Porta():
    def __init__(self, aberta=bool):
        self.aberta = False
    
    def abrir(self):
        self.aberta = True

#2
class Chave():
    def __init__(self, codigo=10):
      self.codigo = codigo
    
print(Chave().codigo)

#3
class Tesouro():
    def __init__(self, valor=100):
        self.valor = valor
    
    def coletar(self):
      print(f"O tesouro de valor {self.valor} foi Coletado!")

caçador = Tesouro()
caçador.coletar()

#4. **Classe com atributos privados**  
#   Defina uma classe `Cofre` com um atributo privado `_senha` e um método `verificar_senha(senha)` que retorna `True` se a senha estiver correta.




class Cofre():
    def __init__ (self, senha=5050):
      self.__senha = str(senha)

    def verif_senha(self, senha_digi):
          return str(senha_digi) == self.__senha

cofre = Cofre(5050)
verif = input("digite a senha:")

if cofre.verif_senha(verif):
    print("Acesso Alowed")
else:
    print("wrong password")

#5. **Classe com herança**  
#   Implemente uma classe `PortaSecreta` que herda de `Porta` e adiciona um método `revelar()` que imprime "Uma porta secreta foi revelada!".


