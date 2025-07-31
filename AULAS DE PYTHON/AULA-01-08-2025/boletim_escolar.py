aluno = input("Nome do Aluno: ")
turma = input("Nome da Turma: ")
curso = input("Nome do Curso: ")
matricula = input("numero da matricula: ")
print()
nota1 = float(input("Digite a primeira nota: "))
nota2 = float(input("Digite a segunda nota: "))
nota3 = float(input("Digite a terceira nota: "))
nota4 = float(input("Digite a quarta nota: "))
nota5 = float(input("Digite a quinta nota: "))
print()
print("======= BOLETIM ESCOLAR =======")
print(f"Nome do aluno:{aluno}")
print(f"Turma: {turma}")
print(f"Nome do Curso: {curso}")
print(f"Numero da Matricula: {matricula}")
print("-----------------------------")
print("Notas:")
print(f"1ª Avaliação: {nota1}")
print(f"2ª Avaliação: {nota2}")
print(f"3ª Avaliação: {nota3}")
print(f"4ª Avaliação: {nota4}")
print(f"5ª Avaliação: {nota5}")
print("-----------------------------")

# Caucula a média
media = (nota1+nota2+nota3+nota4+nota5) / 5
print()
print(f"Média Final: {media}%")
print()
print("Situação Curricular: ")
print()

if media >= 7:
    print("*********APROVADO**********")
elif media >= 5:
    print("********RECUPERAÇÃO*********")
else:
    print("********REPROVADO***********")
