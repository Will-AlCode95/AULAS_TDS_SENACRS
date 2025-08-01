#Algoritmo "SITUAÇÃO CURRICULAR DO ALUNO"
#Var

#Inicio
#// Seção de Comandos, procedimento, funções, operadores, etc... 
loop = "s"

while ((loop == "s") or (loop == "S")):
      nome = input("nome do aluno: ")
      turma = input("nome da turma: ")
      nota1 = input("digite a primeira nota: ")
      nota2 = input("digite a segunda nota: ")
      nota3 = input("digite a terceira nota: ")
      nota4 = input("digite a quarta nota: ")
      nota5 = input("digite a quinta nota: ")

      media = (float(nota1) + float(nota2) + float(nota3) + float(nota4) + float(nota5)) / 5

      if  media >= 7:
          print("APROVADO")
      elif media >= 4:
          print("RECUPERAÇÃO")
      else:    
          print("REPROVADO")

      print("==========DADOS SOLICITADOS==========")
      print(f"nome do aluno:{nome}")
      print(f"nome da turma: {turma}")
      print(f"media final das notas:{media}%")

      loop = input("Deseja cadastrar um novo usuário: S/N: ")
