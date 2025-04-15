WITH salarios_depto2 AS (
    SELECT salario
    FROM funcionario
    WHERE cod_depto = 2
)
SELECT nome
FROM funcionario
WHERE salario > ALL (SELECT salario FROM salarios_depto2);
