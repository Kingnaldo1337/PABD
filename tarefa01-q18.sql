WITH maiores_salarios AS (
    SELECT cod_depto, MAX(salario) AS maior_salario
    FROM funcionario
    GROUP BY cod_depto
)

SELECT 
    f.nome AS funcionario,
    d.descricao AS departamento,
    f.salario
FROM funcionario f
LEFT JOIN departamento d ON f.cod_depto = d.codigo
LEFT JOIN maiores_salarios ms 
    ON f.cod_depto = ms.cod_depto AND f.salario = ms.maior_salario

WHERE 
    f.cod_depto IS NULL OR f.salario = ms.maior_salario

ORDER BY f.salario ASC;
