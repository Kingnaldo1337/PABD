-- Inserções para departamento
INSERT INTO departamento VALUES (1, 'TI', NULL);
INSERT INTO departamento VALUES (2, 'RH', NULL);
INSERT INTO departamento VALUES (3, 'Financeiro', NULL);
INSERT INTO departamento VALUES (4, 'Marketing', NULL);
INSERT INTO departamento VALUES (5, 'Produção', NULL);

-- Inserções para funcionario
INSERT INTO funcionario VALUES (1, 'Ana', 'F', '1990-05-10', 3500.00, 1);
INSERT INTO funcionario VALUES (2, 'Carlos', 'M', '1985-02-20', 4500.00, 2);
INSERT INTO funcionario VALUES (3, 'Beatriz', 'F', '1993-07-14', 3000.00, 3);
INSERT INTO funcionario VALUES (4, 'Daniel', 'M', '1991-03-03', 4000.00, 4);
INSERT INTO funcionario VALUES (5, 'Elisa', 'F', '1988-09-12', 3800.00, 5);

-- Atualizando os gerentes dos departamentos
UPDATE departamento SET cod_gerente = 1 WHERE codigo = 1;
UPDATE departamento SET cod_gerente = 2 WHERE codigo = 2;
UPDATE departamento SET cod_gerente = 3 WHERE codigo = 3;
UPDATE departamento SET cod_gerente = 4 WHERE codigo = 4;
UPDATE departamento SET cod_gerente = 5 WHERE codigo = 5;

-- Inserções para projeto
INSERT INTO projeto VALUES (1, 'Sistema Web', 'Desenvolvimento de sistema web', 1, 1, '2023-01-01', '2023-12-31');
INSERT INTO projeto VALUES (2, 'Campanha RH', 'Campanha de valorização interna', 2, 2, '2023-03-01', '2023-09-30');
INSERT INTO projeto VALUES (3, 'Planejamento Financeiro', 'Novo sistema financeiro', 3, 3, '2023-02-15', '2023-11-15');
INSERT INTO projeto VALUES (4, 'Marketing 2024', 'Plano de marketing para 2024', 4, 4, '2023-06-01', '2024-06-01');
INSERT INTO projeto VALUES (5, 'Produção Otimizada', 'Melhoria dos processos produtivos', 5, 5, '2023-04-01', '2024-04-01');

-- Inserções para atividade
INSERT INTO atividade VALUES (1, 'Reunião inicial', 'Alinhamento de objetivos', 1, '2023-01-01', '2023-01-05');
INSERT INTO atividade VALUES (2, 'Coleta de dados', 'Pesquisa com usuários', 2, '2023-02-01', '2023-02-10');
INSERT INTO atividade VALUES (3, 'Análise de sistema', 'Levantamento de requisitos', 3, '2023-03-01', '2023-03-20');
INSERT INTO atividade VALUES (4, 'Design gráfico', 'Criação de material visual', 4, '2023-04-01', '2023-04-30');
INSERT INTO atividade VALUES (5, 'Prototipagem', 'Desenvolvimento de protótipos', 5, '2023-05-01', '2023-05-15');

-- Inserções para atividade_projeto
INSERT INTO atividade_projeto VALUES (1, 1);
INSERT INTO atividade_projeto VALUES (2, 2);
INSERT INTO atividade_projeto VALUES (3, 3);
INSERT INTO atividade_projeto VALUES (4, 4);
INSERT INTO atividade_projeto VALUES (5, 5);
