SET FOREIGN_KEY_CHECKS = 0;
TRUNCATE TABLE Produtos;
SET FOREIGN_KEY_CHECKS = 1;

INSERT INTO Produtos (Nome, Preco) VALUES
('Camiseta', 49.90),
('Calça Jeans', 120.00),
('Tênis Esportivo', 250.00),
('Boné', 45.00),
('Jaqueta', 215.00),
('Meia (par)', 14.00);
SELECT * FROM Produtos;
SELECT * FROM Produtos order by preco desc;