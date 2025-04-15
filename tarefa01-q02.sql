CREATE OR REPLACE VIEW funcionario_mais_idoso AS
SELECT codigo
FROM funcionario
WHERE dt_nasc = (SELECT MIN(dt_nasc) FROM funcionario);

SELECT nome
FROM funcionario
WHERE codigo NOT IN (SELECT codigo FROM funcionario_mais_idoso);