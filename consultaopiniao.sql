--Trabalho Final BD1
--
-- PostgreSQL database dump
--

-- Dumped from database version 9.4.1
-- Dumped by pg_dump version 9.4.1
-- Started on 2016-12-04 20:22:41

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- 
-- Name: consultaopiniao; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA consultaopiniao;



ALTER SCHEMA consultaopiniao OWNER TO postgres;

SET search_path = consultaopiniao, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;



--TABELA PESSOA
CREATE TABLE pessoa (
	nome character varying(250) NOT NULL,
	cpf character(11) NOT NULL,
	data_nasc date NOT NULL,
	email_inst character varying(100),
	email_sec  character varying(100)
);

ALTER TABLE pessoa OWNER TO postgres;


--TABELA PROFESSOR
CREATE TABLE professor (
	siape character(11) NOT NULL,
	un_academica character varying(20) NOT NULL,
	reg_trabalho character varying(40) NOT NULL
);	

ALTER TABLE professor OWNER TO postgres;


--TABELA ALUNO
CREATE TABLE aluno(
	nro_matricula character(11) NOT NULL,
	curso character varying(20) NOT NULL
);

ALTER TABLE aluno OWNER TO postgres;



--TABELA TECNICO
CREATE TABLE tecnico(
	siape character(11) NOT NULL,
	un_adm character(5) NOT NULL
);

ALTER TABLE tecnico OWNER TO postgres;



--TABELA TERCEIRIZADO
CREATE TABLE terceirizado(
	empresa character varying(20) NOT NULL,
	setor character varying(20) NOT NULL
);

ALTER TABLE terceirizado OWNER TO postgres;	



--TABELA UNIDADE ACADEMICA
CREATE TABLE unidade_acadêmica(
	sigla character(5) NOT NULL,
	nome character varying(150) NOT NULL,
	area character varying(20) NOT NULL

);

ALTER TABLE unidade_acadêmica OWNER TO postgres;

--TABELA UNIDADE ADMINISTRATIVA
CREATE TABLE unidade_administrativa(
	sigla character(5) NOT NULL,
	nome character varying(150) NOT NULL

);

ALTER TABLE unidade_administrativa OWNER TO postgres;




--TABELA CURSO	
CREATE TABLE curso(
	sigla character(5) NOT NULL,
	nome character varying(150) NOT NULL,
	un_acad character(5) NOT NULL
);

ALTER TABLE curso OWNER TO postgres;


--TABELA QUESTÃO
CREATE TABLE questao(
	descricao character varying(300) NOT NULL,
	id_questao character(10) NOT NULL,
	resposta character varying(300) NOT NULL

);

ALTER TABLE questao OWNER TO postgres;	



--TABELA RESPOSTA
CREATE TABLE resposta(
	resp character varying(300) NOT NULL,
	id_resp character(10) NOT NULL

);

ALTER TABLE resposta OWNER TO postgres;



--TABELA FORMULARIO
CREATE TABLE formulario(
	id_form character(10) NOT NULL,
	nome character varying(60) NOT NULL,
	criador character varying(100) NOT NULL,
	data_inicial date NOT NULL,
	data_final date NOT NULL


);

ALTER TABLE formulario OWNER TO postgres;







--POVOAMENTO DO BANCO

--pessoa
INSERT INTO pessoa (nome, cpf, data_nasc, email_inst, email_sec) VALUES ('Paula', '32112354397', '1995-02-20', 'paula@ufu.com.br', 'paula@email.com.br');
INSERT INTO pessoa (nome, cpf, data_nasc, email_inst, email_sec) VALUES ('Joao', '32112354836', '1990-04-20', 'joao@ufu.com.br', 'joao@email.com.br');
INSERT INTO pessoa (nome, cpf, data_nasc, email_inst, email_sec) VALUES ('Pedro', '32118989397', '1985-09-06', 'pedro@ufu.com.br', 'pedrp@email.com.br');
INSERT INTO pessoa (nome, cpf, data_nasc, email_inst, email_sec) VALUES ('Roberta', '32163154397', '1989-10-20', 'roberta@ufu.com.br', 'roberta@email.com.br');




--aluno
INSERT INTO aluno (nro_matricula, curso) VALUES ('32112BSI397', 'Sistemas de informação');
INSERT INTO aluno (nro_matricula, curso) VALUES ('32112BSI399', 'Sistemas de informação');
INSERT INTO aluno (nro_matricula, curso) VALUES ('32112DIR397', 'Direito');
INSERT INTO aluno (nro_matricula, curso) VALUES ('32112CCI397', 'Ciencia da computação');

--tecnico
INSERT INTO tecnico (siape, un_adm) VALUES ('3211TUFU397', 'UNSAN');
INSERT INTO tecnico (siape, un_adm) VALUES ('3212TUFU397', 'UNSAN');
INSERT INTO tecnico (siape, un_adm) VALUES ('3213TUFU397', 'UNSAN');
INSERT INTO tecnico (siape, un_adm) VALUES ('3214TUFU397', 'UNSAN');

--professor
INSERT INTO professor (siape, un_academica, reg_trabalho) VALUES ('4648PUFU886', 'UFU', 'Dedicação exclusiva');
INSERT INTO professor (siape, un_academica, reg_trabalho) VALUES ('4648PUFU887', 'UFU', '20hs');
INSERT INTO professor (siape, un_academica, reg_trabalho) VALUES ('4648PUFU888', 'UFU', '40hs');
INSERT INTO professor (siape, un_academica, reg_trabalho) VALUES ('4648PUFU889', 'UFU', '40hs');

--terceirizado
INSERT INTO terceirizado (empresa, setor) VALUES ('tanus', 'limpeza');
INSERT INTO terceirizado (empresa, setor) VALUES ('core', 'segurança');
INSERT INTO terceirizado (empresa, setor) VALUES ('nation', 'reparos');

--unidade academica
INSERT INTO unidade_acadêmica (sigla, nome, area) VALUES ('FACOM', 'Faculdade de computação', 'Exatas');
INSERT INTO unidade_acadêmica (sigla, nome, area) VALUES ('FAMAT', 'Faculdade de matematica', 'Exatas');
INSERT INTO unidade_acadêmica (sigla, nome, area) VALUES ('FAMED', 'Faculdade de medicina', 'Biologicas');
INSERT INTO unidade_acadêmica (sigla, nome, area) VALUES ('FAGEN', 'Faculdade de gestão em negocios', 'Exatas');


--unidade administrativa
INSERT INTO unidade_administrativa (sigla, nome) VALUES ('UNSAN', 'Unidade Santa Mônica');
INSERT INTO unidade_administrativa (sigla, nome) VALUES ('EDUCA', 'Unidade Educação fisica');
INSERT INTO unidade_administrativa (sigla, nome) VALUES ('UNUMU', 'Unidade Umuarama');


--curso
INSERT INTO curso (sigla, nome, un_acad) VALUES ('BSI', 'Sistemas de informação', 'UFU');
INSERT INTO curso (sigla, nome, un_acad) VALUES ('CC', 'Ciencias da Computação', 'UFU');
INSERT INTO curso (sigla, nome, un_acad) VALUES ('ADM', 'Administração', 'UFU');



--questao
INSERT INTO questao (descricao, id, resposta) VALUES ('Esta satisfeito com seu trabalho', '1', 'Sim ou Não');
INSERT INTO questao (descricao, id, resposta) VALUES ('Indicaria a instituição', '1', 'Sim ou Não');
INSERT INTO questao (descricao, id, resposta) VALUES ('Satisfeito com a gestão', '1', 'Sim ou Não');



--resposta
INSERT INTO resposta (resp, id_resp) VALUES ('Sim', '1');


--formulario
INSERT INTO formulario (id_form, nome, criador, data_inicial, data_final) VALUES ('1', 'satisfacao', 'Paula', '2016-12-02', '2016-12-06');
INSERT INTO formulario (id_form, nome, criador, data_inicial, data_final) VALUES ('1', 'satisfacao', 'Joao', '2016-12-02', '2016-12-06');
INSERT INTO formulario (id_form, nome, criador, data_inicial, data_final) VALUES ('1', 'satisfacao', 'Pedro', '2016-12-02', '2016-12-06');




--chave primaria pessoa
ALTER TABLE ONLY pessoa
    ADD CONSTRAINT pkpessoa PRIMARY KEY (cpf);


--chave primaria professor   
ALTER TABLE ONLY professor
    ADD CONSTRAINT pkprofessor PRIMARY KEY (siape);

--chave primaria 
ALTER TABLE ONLY aluno
    ADD CONSTRAINT pkaluno PRIMARY KEY (nro_matricula);    

    
    

