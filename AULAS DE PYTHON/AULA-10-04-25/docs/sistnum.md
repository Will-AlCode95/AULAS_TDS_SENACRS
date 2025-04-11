# [Trilha Python](index.md)

## Sistemas de numeração

Um sistema de numeração define uma forma consistente de interpretar símbolos aos quais são associados números.

Por exemplo, dependendo dos sistema e de como desenhamos os símbolos, o símbolo `II` pode ser interpretado como:

- dois, em Romanos

    ou, se `I` é o numeral para `um`

- três, em Binário
- onze, em decimal
- treze, em Octal
- dezessete, em Hexadecial

> Na programação, os sistemas mais usados são o `decimal`, `hexadecimal`, `binário` e raramente o `octal`.

Os sistemas de numeração decimal, binário e hexadecimal são de tipo `posicional`. Isso significa que o valor de um numeral é determinado pela sua posição em uma sequência de numerais (uma cadeia, ou "string" de numerais).

### Sistema decimal

Os numerais usados são 10 - por isso *decimal*.
1, 2, 3, 4, 5, 6, 7, 8, 9 e 0

Cada posição na cadeia de numerais que forma um número vale:

|posição|4   |3  |2  |1 |
|-------|----|---|---|--|
|...    |1000|100|10 |1 |
|...    |mil |cem|dez|um|

Exemplo:

Na posição `1` o numeral `8` vale `oito`.

|posição|4   |3  |2  |1 |
|-------|----|---|---|--|
|...    |1000|100|10 |1 |
|       |    |   |   |8 |

```
Total = oito
```

Na posição `1` o numeral `8` vale `10x` seu valor: oitenta

|posição|4   |3  |2  |1 |
|-------|----|---|---|--|
|...    |1000|100|10 |1 |
|  decimal     |    |   |8  |0 |

```
Total = oitenta
```

Para formar o número 128, por exemplo, usamos os numerais: 1, 2 e 8 nas posições 3, 2 e 1.

Para obter o valor numérico associado a essa representação, fazemos a `soma dos numerais multiplicados pelo valor de suas casas`

|posição|4   |3  |2  |1 |
|-------|----|---|---|--|
|...    |1000|100|10 |1 |
|  decimal     |    |1  |2  |8 |

```
        1 x cem + 2 x dez + 8 x um = cento e vinte oito
Total =   100   +   20    +   8    = cento e vinte oito
```

### Sistema binário

Os numerais usados são apenas dois: 1 e 0 - por isso *binário*.


Cada posição na cadeia de numerais que forma um número vale:

|posição|4    |3     |2   |1 |
|-------|-----|------|----|--|
|...    |8    |4     |2   |1 |
|...    |oito |quatro|dois|um|

Exemplo:

Na posição `1` o numeral `1` vale `um`.

|posição|4    |3     |2   |1  |
|-------|-----|------|----|---|
|...    |8    |4     |2   |1  |
|   binário    |     |      |    |1  |

```
Total = um
```

Para formar o 2, colocamos o 1 na casa que vale 2

|posição|4    |3     |2   |1  |
|-------|-----|------|----|---|
|...    |8    |4     |2   |1  |
| binário      |     |      |1   |0  |

```
Total = dois
```

Para formar o número 3 colocamos o 1 na casa que vale 1 e na que vale 2.  

|posição|4    |3     |2   |1  |
|-------|-----|------|----|---|
|...    |8    |4     |2   |1  |
| binário      |     |      |1   |1  |

```
Total = três

         1 x dois + 1 x um  = três
Total =    2      +   1    +   8    = cento e vinte oito
```

Para formar o número 15

|posição|4    |3     |2   |1  |
|-------|-----|------|----|---|
|...    |8    |4     |2   |1  |
| binário      | 1   | 1    |1   |1  |

```
Total = 8 + 4 + 2 + 1 = quinze
```

### Sistema hexadecimal

Os numerais usados são dezesseis! 

0, 1, 2, 3, 4, 5, 6, 7, 8, 9, A, B, C, D, E, F

Os numerais de 0-9 são os mesmos do sistema decimal. As letras equivalem a:

|Numeral| valor decimal|
|-|-|
|A|10|
|B|11|
|C|12|
|D|13|
|E|14|
|F|15|

No sistema hexadecimal cada posição na cadeia de numerais que forma um número vale:

|posição     |4     |3     |2   |1 |
|------------|------|------|----|--|
|val. decimal|64    |32    |16  |1 |
|...         |oito  |quatro|dois|um|

Exemplo:

Na posição `2` o numeral `1` vale `dezesseis`.

|posição     |4     |3     |2   |1 |
|------------|------|------|----|--|
|val. decimal|64    |32    |16  |1 |
|...         |oito  |quatro|dois|um|
| hexa       |      |      |  1 |0 |

```
Total = 16 + 0 = 16
```

Para formar o valor `quarenta e dois`:

|posição     |4     |3     |2   |1 |
|------------|------|------|----|--|
|val. decimal|64    |32    |16  |1 |
|...         |oito  |quatro|dois|um|
| hexa       |      |      |  2 |A |

```
Total = 2 x 16 + 10 x 1  
          32   +    10   = 42
```

### [voltar](index.md)
