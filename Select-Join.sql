SELECT * FROM Clientes;
SELECT 
    Pedidos.id AS PedidoID,
    Clientes.Nome AS Cliente,
    Produtos.Nome AS Produto,
    ItensPedido.Quantidade,
    ItensPedido.PrecoUnitario,
    (ItensPedido.Quantidade * ItensPedido.PrecoUnitario) AS SubTotal
FROM ItensPedido
JOIN Pedidos ON ItensPedido.Pedidos_id = Pedidos.id
JOIN Clientes ON Pedidos.Clientes_id = Clientes.id
JOIN Produtos ON ItensPedido.Produtos_id = Produtos.id;