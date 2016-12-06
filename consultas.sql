--Grupo DE-R
--Nome: Edson Junio Sousa Sobrinho
--Nome: Marco Tulio
--Nome: Luiz Eduardo

SET SEARCH_PATH TO consultaopiniao;
-- Consultas Trabalho Final


--1 - consulta dos formularios e as resposta para cada pergunta
--SELECT * FROM formulario,resposta WHERE id_form = id_f



--2 cruzamento entre informações do curso e das unidades academicas
--SELECT sigla_c, nome, sigla, nome, area FROM curso,unidade_acadêmica WHERE un_acad = sigla



--3 informações gerais de cada aluno, cruzamento entre tabela aluno e pessoa
--SELECT nro_matricula, curso, nome, cpf, data_nasc, email_inst, email_sec FROM aluno,pessoa WHERE nome_a = nome



--4 informações gerais de cada professor, cruzamento entre tabela professor e pessoa
--SELECT nome_p, siape, un_academica, reg_trabalho, nome, cpf, data_nasc, email_inst, email_sec FROM professor,pessoa WHERE nome_p = nome



--5 informações gerais de cada tecnico, cruzamento entre tabela tecnico e pessoa
--SELECT nome_t, siape, un_adm, cpf, data_nasc, email_inst, email_sec FROM tecnico,pessoa WHERE nome_t = nome


--6 (consulta livre), listar todas as pessoas cadastradas nascidas antes de 01/01/1990
--SELECT * FROM pessoa WHERE data_nasc < '1990-01-01'


--7 conta a quantidade de professores por unidade academica
--SELECT un_academica, COUNT(*) FROM professor GROUP BY(un_academica);


--8 conta a quantidade de alunos por curso
--SELECT curso, COUNT(*) FROM aluno GROUP BY(curso);


--9 seleciona as pessoas que nasceram depois de 1990 e conta o numero pessoas por data de nascimento(idade)
/*
SELECT data_nasc, Count(*) AS total
FROM pessoa
GROUP BY data_nasc
HAVING data_nasc > '1990-01-01'
*/


--10 seleciona os cursos com 2 alunos ou mais cadastrados, e conta a quantidade de alunos desses cursos
/*
SELECT curso, Count(*) AS total
FROM aluno
GROUP BY curso
HAVING COUNT(*) > 1
*/

