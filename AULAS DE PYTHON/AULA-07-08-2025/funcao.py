# // Seção de Declarações das variáveis
# numero, resultado: real

def Dobro():
    valor1 = float(input("digite o v1: "))
    valor2 = float(input("digite o v2: "))
    total = valor1 + valor2
    return f"resultado:{total}"


t = Dobro()
print(t)
