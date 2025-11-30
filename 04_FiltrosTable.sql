SELECT c.id_consulta,
       c.data AS Data_consulta,
       p.nome AS nome_animal,
       p.especie,
       p.idade,
       cli.nome AS nome_cliente,
       cli.telefone AS telefone_cliente,
       v.nome AS nome_veterinario
  FROM consulta c
       JOIN
       pet p ON p.id_pet = c.id_pet
       JOIN
       cliente cli ON cli.id_cliente = p.id_cliente
       JOIN
       veterinario v ON v.id_veterinario = c.id_veterinario;
       
-- filtrar especie--

SELECT p.nome AS nome_animal,
       p.especie,
       c.data AS data_consulta
  FROM consulta c
       JOIN
       Pet p ON p.id_pet = c.id_pet
 WHERE p.especie = 'Cachorro';

SELECT UPPER(nome) AS nome_animal,
       LOWER(especie) AS especie_animal
  FROM Pet;
