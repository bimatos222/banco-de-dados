INSERT INTO cliente (nome, endereço, email, celular, data_nascimento )
VALUES ('João Silva', 'Rua A, 123', 'joao.silva@email.com', '123456789', '1990-05-15'),
       ('Maria Souza', 'Rua B, 456', 'maria.souza@email.com', '987654321', '1985-10-20'),
       ('Carlos Santos', 'Rua C, 789', 'carlos.santos@email.com', '456789123', '1988-03-25'),
       ('Ana Oliveira', 'Rua D, 012', 'ana.oliveira@email.com', '789123456', '1995-07-12'),
       ('Pedro Rocha', 'Rua E, 345', 'pedro.rocha@email.com', '321654987', '1982-09-30'),
	   ('Juliana Lima', 'Rua F, 678', 'juliana.lima@email.com', '159357852', '1998-12-05'),
       ('Lucas Pereira', 'Rua G, 901', 'lucas.pereira@email.com', '753951824', '1993-04-18'),
       ('Fernanda Costa', 'Rua H, 234', 'fernanda.costa@email.com', '369258147', '1980-11-28'),
       ('Roberto Almeida', 'Rua I, 567', 'roberto.almeida@email.com', '258147369', '1987-06-08'),
       ('Amanda Martins', 'Rua J, 890', 'amanda.martins@email.com', '147369258', '1991-08-22');
       
INSERT INTO produtos (nome, preço, descrição, qnt_em_estoque)
VALUES ('Camiseta', 29.99, 'Camiseta de algodão branca', 100),
       ('Calça Jeans', 59.99, 'Calça jeans azul clara', 50),
       ('Tênis', 79.99, 'Tênis esportivo preto', 80),
       ('Jaqueta', 99.99, 'Jaqueta corta-vento', 30),
       ('Shorts', 39.99, 'Shorts de praia estampado', 70),
       ('Blusa de Moletom', 49.99, 'Blusa de moletom cinza', 40),
       ('Saia', 34.99, 'Saia floral', 60),
       ('Vestido', 69.99, 'Vestido de festa preto', 20),
       ('Blazer', 89.99, 'Blazer de linho', 25),
       ('Bermuda', 24.99, 'Bermuda cargo', 45);
       
INSERT INTO pedido (cliente_id, data_de_compra, valor_tt, Data_estimada_de_entrega)
VALUES (1, '2024-03-27', 50.00, '2024-04-02'),
       (2, '2024-03-27', 75.00, '2024-04-03'),
       (3, '2024-03-26', 120.00, '2024-04-01'),
       (4, '2024-03-25', 90.00, '2024-03-31'),
       (5, '2024-03-24', 65.00, '2024-03-30'),
       (6, '2024-03-23', 40.00, '2024-03-29'),
       (7, '2024-03-22', 55.00, '2024-03-28'),
       (8, '2024-03-21', 85.00, '2024-03-27'),
       (9, '2024-03-20', 70.00, '2024-03-26'),
       (10, '2024-03-19', 100.00, '2024-03-25');
       
INSERT INTO lista_de_itens (ordem_id, produtos_id, quantidade, valor_unico, valor_tt)
VALUES (1, 3, 1, 79.99, 79.99),
	   (2, 4, 1, 99.99, 99.99),
	   (3, 5, 2, 39.99, 79.98),
       (4, 6, 1, 49.99, 49.99),
       (5, 7, 1, 34.99, 34.99),
       (6, 8, 1, 69.99, 69.99),
       (7, 9, 1, 89.99, 89.99),
       (8, 10, 2, 24.99, 49.98),
       (9, 1, 1, 29.99, 29.99),
       (10, 2, 1, 59.99, 59.99);
       
UPDATE cliente
SET email = 'bianca_matos@email.com'
WHERE client_id IN (1, 2, 3, 4, 5);

UPDATE products
SET qnt_em_estoque = qnt_em_estoque - 5
WHERE produtos_id IN (1, 2, 3, 4);
       
DELETE FROM cliente
WHERE cliente_id IN (1, 2);

DELETE FROM produtos
WHERE produtos_id IN (1, 2);
