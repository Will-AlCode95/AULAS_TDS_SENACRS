##   Álgebra e programação

Álgebra é uma parte da matemática que usa letras e números para representar situações e resolver problemas.

###  Variáveis

- Variável é uma letra que representa um número desconhecido. Por exemplo, "x" pode ser um número que não sabemos ainda.


### Expressões Algébricas

Exemplo, "2x + 3" é uma expressão onde "2x" significa duas vezes o número que "x" representa, e "3" é um número que adicionamos.

Para `resolver` a expressão:

1. Substituímos a variável pelo seu valor (um número)

Esse primeiro passo resulta em uma nova expressão, sem variáveis.

2. Efetuamos as operações aritméticas na expressão resultante.

Por exemplo:

Expressão `2x + 3`

se `x = 2`

então, substituindo `x` pelo seu valor:

1. = `2(2) + 3`
1. = `4 + 3`
1. = `7`.

### Resolvendo Equações Simples

Uma equação é a afirmação de que duas expressões são iguais. 

Exemplo:

`x + 2 = 5`

### Sentenças algébricas - exemplos

- Sentença: "O herói tem c chaves e encontra mais 4 chaves em uma masmorra."
    - Sentença algébrica: c+4

- Sentença: "O arqueiro possui f flechas e usa 3 flechas para derrotar um goblin."
    - Sentença algébrica: f−3

- Sentença: "A princesa tem d diamantes e ganha 5 diamantes de um comerciante."
        - Sentença algébrica: d+5

- Sentença: "O herói enfrenta g goblins e derrota mais 2 goblins em uma batalha."
        - Sentença algébrica: g+2

- Sentença: "O mago possui p poções e usa 1 poção para curar um fantasma."
        - Sentença algébrica: p−1

- Sentença: "O herói encontra e espadas em sua jornada e ganha 3 espadas de um ferreiro."
       - Sentença algébrica: e+3

- Sentença: "O arqueiro tem f flechas e encontra o dobro de flechas em um baú."
        - Sentença algébrica: f+2f

- Sentença: "O herói possui c chaves e perde 2 chaves ao atravessar um portal."
        - Sentença algébrica: c−2

- Sentença: "A princesa tem r rubis e ganha 6 rubis ao completar uma missão."
        - Sentença algébrica: r+6

- Sentença: "O herói enfrenta f fantasmas e derrota 3 fantasmas em uma noite."
        - Sentença algébrica: f−3


## Equações algébricas - exemplos

- Sentença: "O herói tem h chaves. Se ele encontra 5 chaves a mais, agora ele tem 12 chaves."
        - Equação: ``h+5=12``

- Sentença: "O arqueiro possui a flechas. Se ele usa 3 flechas, ele fica com 10 flechas."
        - Equação: `a−3=10`

- Sentença: "A princesa tem p diamantes. Se ela ganha 6 diamantes, agora ela tem 15 diamantes."
        - Equação: `p+6=15`

- Sentença: "O herói enfrenta g goblins. Se ele derrota 4 goblins, ele fica com 6 goblins restantes."
        - Equação: `g−4=6`

- Sentença: "O mago possui m poções. Se ele usa 2 poções, ele tem 8 poções restantes."
        - Equação: `m−2=8`

- Sentença: "O herói encontra s espadas. Se ele ganha 3 espadas, agora ele tem 10 espadas."
        - Equação: `s+3=10`

- Sentença: "O arqueiro tem f flechas. Se ele encontra o dobro de flechas, agora ele tem 20 flechas."
        - Equação: `f+2f=20`

- Sentença: "O herói possui k chaves. Se ele perde 2 chaves, agora ele tem 5 chaves."
        - Equação: `k−2=5`

- Sentença: "A princesa tem r rubis. Se ela ganha 4 rubis, agora ela tem 10 rubis."
        - Equação: `r+4=10`

- Sentença: "O herói enfrenta f fantasmas. Se ele derrota 3 fantasmas, ele fica com 7 fantasmas restantes."
        - Equação: `f−3=7`


## Exemplos de código - atualizando valor de variáveis

```python
# Exemplo 1: O herói tem h chaves
h = 7  # O herói começa com 7 chaves
# O herói encontra 5 chaves a mais
h = h + 5  # Agora ele tem 12 chaves
game.splash("Chaves do herói:", h)  # Saída: Chaves do herói: 12
```

```python
# Exemplo 2: O arqueiro possui a flechas
a = 13  # O arqueiro começa com 13 flechas
# O arqueiro usa 3 flechas
a = a - 3  # Agora ele tem 10 flechas
game.splash("Flechas do arqueiro:", a)  # Saída: Flechas do arqueiro: 10
```

```python
# Exemplo 3: A princesa tem p diamantes
p = 9  # A princesa começa com 9 diamantes
# A princesa ganha 6 diamantes
p = p + 6  # Agora ela tem 15 diamantes
game.splash("Diamantes da princesa:", p)  # Saída: Diamantes da princesa: 15
```

```python
# Exemplo 4: O herói enfrenta g goblins
g = 10  # O herói começa enfrentando 10 goblins
# O herói derrota 4 goblins
g = g - 4  # Agora ele tem 6 goblins restantes
game.splash("Goblins restantes:", g)  # Saída: Goblins restantes: 6
```

```python
# Exemplo 5: O mago possui m poções
m = 10  # O mago começa com 10 poções
# O mago usa 2 poções
m = m - 2  # Agora ele tem 8 poções restantes
game.splash("Poções do mago:", m)  # Saída: Poções do mago: 8
```

```python
# Exemplo 6: O herói encontra s espadas
s = 7  # O herói começa com 7 espadas
# O herói ganha 3 espadas
s = s + 3  # Agora ele tem 10 espadas
game.splash("Espadas do herói:", s)  # Saída: Espadas do herói: 10
```

```python
# Exemplo 7: O arqueiro tem f flechas
f = 10  # O arqueiro começa com 10 flechas
# O arqueiro encontra o dobro de flechas
f = f + 2 * f  # Agora ele tem 30 flechas
game.splash("Flechas do arqueiro:", f)  # Saída: Flechas do arqueiro: 30
```

```python
# Exemplo 8: O herói possui k chaves
k = 7  # O herói começa com 7 chaves
# O herói perde 2 chaves
k = k - 2  # Agora ele tem 5 chaves
game.splash("Chaves do herói:", k)  # Saída: Chaves do herói: 5
```

```python
# Exemplo 9: A princesa tem r rubis
r = 6  # A princesa começa com 6 rubis
# A princesa ganha 4 rubis
r = r + 4  # Agora ela tem 10 rubis
game.splash("Rubis da princesa:", r)  # Saída: Rubis da princesa: 10
```

```python
# Exemplo 10: O herói enfrenta f fantasmas
f = 10  # O herói começa enfrentando 10 fantasmas
# O herói derrota 3 fantasmas
f = f - 3  # Agora ele tem 7 fantasmas restantes
game.splash("Fantasmas restantes:", f)  # Saída: Fantasmas restantes: 7

```


## Exemplos de código - médias e conversões

```python
# Exemplo 1: Cálculo da média de notas
# O aluno tem 3 notas
nota1 = 7.5
nota2 = 8.0
nota3 = 9.0
# Calculando a média das notas
media = (nota1 + nota2 + nota3) / 3
game.splash("Média das notas:", media)  # Saída: Média das notas: 8.166666666666666
```

```python
# Exemplo 2: Conversão de dias para minutos
# O herói tem 3 dias para completar a missão
dias = 3
# Convertendo dias para minutos
minutos = dias * 24 * 60  # 24 horas em um dia, 60 minutos em uma hora
game.splash("Minutos em 3 dias:", minutos)  # Saída: Minutos em 3 dias: 4320
```

```python
# Exemplo 3: Conversão de quilômetros para metros
# O herói precisa percorrer 5 quilômetros
quilometros = 5
# Convertendo quilômetros para metros
metros = quilometros * 1000  # 1000 metros em um quilômetro
game.splash("Metros em 5 quilômetros:", metros)  # Saída: Metros em 5 quilômetros: 5000
```

```python
# Exemplo 4: Conversão de gramas para quilos
# O mago tem 2500 gramas de ingredientes
gramas = 2500
# Convertendo gramas para quilos
quilos = gramas / 1000  # 1000 gramas em um quilo
game.splash("Quilos em 2500 gramas:", quilos)  # Saída: Quilos em 2500 gramas: 2.5
```

```python
# Exemplo 5: Cálculo da média de tempo gasto em missões
# O herói gastou 120 minutos em uma missão, 90 minutos em outra e 150 minutos em outra
tempo1 = 120
tempo2 = 90
tempo3 = 150
# Calculando a média do tempo gasto
media_tempo = (tempo1 + tempo2 + tempo3) / 3
game.splash("Média do tempo gasto em missões:", media_tempo)  # Saída: Média do tempo gasto em missões: 120.0
```

```python
# Exemplo 6: Conversão de horas para segundos
# O herói tem 2 horas para completar uma tarefa
horas = 2
# Convertendo horas para segundos
segundos = horas * 60 * 60  # 60 minutos em uma hora, 60 segundos em um minuto
game.splash("Segundos em 2 horas:", segundos)  # Saída: Segundos em 2 horas: 7200
```

```python
# Exemplo 7: Conversão de litros para mililitros
# O alquimista tem 3 litros de poção
litros = 3
# Convertendo litros para mililitros
mililitros = litros * 1000  # 1000 mililitros em um litro
game.splash("Mililitros em 3 litros:", mililitros)  # Saída: Mililitros em 3 litros: 3000
```
