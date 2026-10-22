from conexao import conectar

conexao = conectar()

if conexao:
    print("Conexão bem-sucedida!")

    cursor = conexao.cursor()
    cursor.execute("SELECT * FROM Clientes")
    resultados = cursor.fetchall()
    for linha in resultados:
        print(linha)
    cursor.close()
    conexao.close()
else:
    print("Falha ao conectar ao banco de dados.")