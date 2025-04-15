WITH maiores_21 AS (
    SELECT codigo, nome, dt_nasc
    FROM funcionario
    WHERE (DATE_PART('year', CURRENT_DATE) - DATE_PART('year', dt_nasc)) > 21
),
nao_gerentes AS (
    SELECT codigo
    FROM funcionario
    WHERE codigo NOT IN (
        SELECT cod_gerente FROM departamento WHERE cod_gerente IS NOT NULL
    )
)
SELECT m.nome, m.dt_nasc
FROM maiores_21 m
JOIN nao_gerentes n ON m.codigo = n.codigo;