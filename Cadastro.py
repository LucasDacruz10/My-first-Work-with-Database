from conexao import conectar
from mysql.connector import IntegrityError


def cadastrar_cliente():
    nome = input("Nome do cliente: ")
    email = input("Email do cliente: ")

    conexao = conectar()
    if conexao is None:
        return

    cursor = conexao.cursor()
    sql = "INSERT INTO Clientes (Nome, Email) VALUES (%s, %s)"

    try:
        cursor.execute(sql, (nome, email))
        conexao.commit()
        print(f"Cliente {nome} cadastrado com sucesso!")
    except IntegrityError:
        print("Erro: esse email já está cadastrado!")
    finally:
        cursor.close()
        conexao.close()


if __name__ == "__main__":
    cadastrar_cliente()
else:
    print("Este módulo não deve ser importado diretamente.")