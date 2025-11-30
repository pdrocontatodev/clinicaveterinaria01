----Insert---
INSERT INTO cliente(nome, telefone)
VALUES
('ANA DE LIMA', '1199999-9999'),
('Jose teste', '1199988-7711'),
('MARIA DO CARMO', '1198888-7678');

INSERT INTO Pet(nome, especie, idade, id_cliente)
VALUES
('Rex', 'Cachorro',5, 3),
('Cleyton', 'gato',4, 1),
('THOR', 'cachorro', 6, 2);

INSERT INTO veterinario(nome, crmv)
VALUES
('DRA.KAUANY TESTE', 'SP1234'),
('DR.PEDRO SOUZA', 'SP1234'),
('DR.SILVA', 'GO1234');

INSERT INTO consulta(data, tipo_servico, id_pet, id_veterinario)
VALUES
('2025-05-30', 'vacina', 1, 3),
('2025-06-20', 'castracao', 2, 2),
('2025-03-10', 'retorno', 1, 2);

INSERT INTO medicamento(nome, quantidade, validade_medicamento, id_consulta)
VALUES
('vermit', 2, '2029-11-11', 1),
('vermit02', 2, '2031-12-12', 2),
('vermit03', 1, '2032-10-10', 3);

INSERT INTO medicamento_consulta(id_consulta, id_medicamento, dose_aplicada)
VALUES
(1, 1, '1 dose unica'),
(2, 3, 'Aplicar 2 gotas no nariz'),
(3, 4, '1 gota');