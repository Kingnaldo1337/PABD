CREATE OR REPLACE VIEW funcionarios_nao_gerentes AS
SELECT *
FROM funcionario
WHERE codigo NOT IN (
    SELECT cod_gerente FROM departamento WHERE cod_gerente IS NOT NULL
);

-- Consulta principal
SELECT nome, salario, cod_depto
FROM funcionarios_nao_gerentes
ORDER BY cod_depto;
