SET FOREIGN_KEY_CHECKS = 0;
TRUNCATE TABLE Clientes;
SET FOREIGN_KEY_CHECKS = 1;
ALTER TABLE Clientes
ADD UNIQUE (Email);

INSERT INTO Clientes (Nome, Email) VALUES
('Lucas', 'lucas@email.com'),
('Ana Souza', 'ana.souza@email.com'),
('Pedro Alves', 'pedro.alves@email.com'),
('Bernardo Henrique', 'bernardo.henrique@email.com'),
('Leonardo Santos', 'leonardo.santos@email.com');




SELECT * FROM Clientes;

