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
	un_adm character varying(20) NOT NULL
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


--professor
INSERT INTO professor (siape, un_academica, reg_trabalho) VALUES ('4648186', 'UFU', 'Dedicação exclusiva');



--curso
INSERT INTO curso (sigla, nome, un_acad) VALUES ('BSI', 'Sistemas de informação', 'UFU');



