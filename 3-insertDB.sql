-- Inserção de dados na tabela "Cliente"
INSERT INTO `Cliente` (`Id_Cliente`, `nome`, `email`, `numero_contato`, `data_nascimento`) VALUES
  ('1', 'Mauricio Oliveira Alves', 'teste@email.com', '7799989-3111', '2001-06-03'),
  ('2', 'Danilo Oliveira Alves', 'teste@email.com', '3198898-1333', '1992-02-21'),
	('3', 'Glaucia Oliveira', 'teste@email.com', '3198898-1333', '1945-09-14');

-- Inserção de dados na tabela "Produto"
INSERT INTO `Produto` (`Id_Produto`, `nome`, `tipo`, `valor`) VALUES
  ('11', 'O Pequeno Príncipe', 'Livro', '49.99'),
  ('12', 'Memórias Póstumas de Brás Cubas', 'Livro', '59.99'),
  ('13', 'Camisa Verde Lacoste', 'Vestuário', '149.99'),
  ('14', 'Calça Jeans Ralph Lauren', 'Vestuário', '259.99'),
  ('15', 'Whey Protein Profit', 'Suplemento', '139.99');

  -- Inserção de dados na tabela "Pedido"
  INSERT INTO `Pedido` (`Id_Pedido`, `status`, `Cliente_Id_Cliente`) VALUES
  ('21', 'Concluído', '1'),
  ('22', 'Em Andamento', '1'),
  ('23', 'Cancelado', '2');

  -- Inserção de dados na tabela "Pedido_tem_Produto"
  INSERT INTO `Pedido_has_Produto` (`Pedido_Id_Pedido`, `Produto_Id_Produto`, `quantidade`) VALUES
  ('21', '11', '1'),
  ('21', '12', '3'),
  ('22', '15', '5');