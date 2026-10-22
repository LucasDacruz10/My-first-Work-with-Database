
from conexao import conectar

conexao = conectar()

if conexao:
    cursor = conexao.cursor()

    cursor.execute("SELECT DATABASE();")
    print("Banco conectado:", cursor.fetchone())

    import random
    email_teste = f"diagnostico{random.randint(1000,9999)}@email.com"
    cursor.execute(
        "INSERT INTO Clientes (Nome, Email) VALUES (%s, %s)",
        ("Diagnostico", email_teste)
    )
    conexao.commit()
    print("Inserido com email:", email_teste)
    print("Linhas afetadas pelo INSERT:", cursor.rowcount)

    cursor.execute("SELECT * FROM Clientes WHERE Email = %s", (email_teste,))
    print("Encontrado após inserir:", cursor.fetchone())

    cursor.close()
    conexao.close()
else:
    print("Não conectou.")