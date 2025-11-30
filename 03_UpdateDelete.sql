-- Veterinários
SELECT * FROM veterinario;
SELECT DISTINCT nome FROM veterinario;

DELETE FROM veterinario
WHERE id_veterinario = 1;

-- Cliente
UPDATE cliente
SET nome = 'Kauany'
WHERE id_cliente = 1;

-- Pets
SELECT * FROM pet
ORDER BY nome;

-- Consultas
SELECT * FROM consulta
ORDER BY data ASC;

-- Total de consultas por veterinário (mais de 2)
SELECT 
    v.nome AS veterinario,
    COUNT(c.id_consulta) AS total_consultas
FROM consulta c
JOIN veterinario v ON v.id_veterinario = c.id_veterinario
GROUP BY v.nome
HAVING COUNT(c.id_consulta) > 2
ORDER BY v.nome;
