--Trabalho Final BD1


--Grupo DE-R
--Nome: Edson Junio Sousa Sobrinho
--Nome: Marco Tulio
--Nome: Luiz Eduardo


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

--deletar esquema desatualizado
DROP SCHEMA IF EXISTS consultaopiniao CASCADE;

--criação do schema consultaopiniao
CREATE SCHEMA consultaopiniao;

ALTER SCHEMA consultaopiniao OWNER TO postgres;

SET search_path = consultaopiniao, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;




--deletando tabelas desatualizadas
DROP TABLE IF EXISTS 
   pessoa, 
   aluno,
   professor, 
   tecnico,
   terceirizado,
   unidade_acadêmica,
   unidade_administrativa,
   curso,
   questao,
   formulario,
   resposta CASCADE
   ;



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
        nome_p character varying(250) NOT NULL,
	siape character(11) NOT NULL,
	un_academica character varying(20) NOT NULL,
	reg_trabalho character varying(40) NOT NULL
);	

ALTER TABLE professor OWNER TO postgres;


--TABELA ALUNO
CREATE TABLE aluno(
	nome_a character varying(250) NOT NULL,
	nro_matricula character(11) NOT NULL,
	curso character varying(50) NOT NULL
);

ALTER TABLE aluno OWNER TO postgres;



--TABELA TECNICO
CREATE TABLE tecnico(
	nome_t character varying(250) NOT NULL,
	siape character(11) NOT NULL,
	un_adm character(5) NOT NULL
);

ALTER TABLE tecnico OWNER TO postgres;



--TABELA TERCEIRIZADO
CREATE TABLE terceirizado(
	nome_te character varying(250) NOT NULL,
	empresa character varying(20) NOT NULL,
	setor character varying(20) NOT NULL,
	sigla_ua character(5) NOT NULL
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
	sigla_c character(5) NOT NULL,
	nome_c character varying(150) NOT NULL,
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
	id_resp character(3) NOT NULL,
	id_f character(3) NOT NULL

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




--deletando dados anteriores desatualizados
DELETE FROM pessoa;
DELETE FROM aluno;
DELETE FROM professor;
DELETE FROM tecnico;
DELETE FROM terceirizado;
DELETE FROM unidade_acadêmica;
DELETE FROM unidade_administrativa;
DELETE FROM curso;
DELETE FROM questao;
DELETE FROM formulario;
DELETE FROM resposta;





--POVOAMENTO DO BANCO

--pessoa
INSERT INTO pessoa (nome, cpf, data_nasc, email_inst, email_sec) VALUES ('Paula', '32112354397', '1995-02-20', 'paula@ufu.com.br', 'paula@email.com.br');
INSERT INTO pessoa (nome, cpf, data_nasc, email_inst, email_sec) VALUES ('Joao', '32112354836', '1990-04-16', 'joao@ufu.com.br', 'joao@email.com.br');
INSERT INTO pessoa (nome, cpf, data_nasc, email_inst, email_sec) VALUES ('Pedro', '32118989397', '1985-09-06', 'pedro@ufu.com.br', 'pedrp@email.com.br');
INSERT INTO pessoa (nome, cpf, data_nasc, email_inst, email_sec) VALUES ('Roberta', '32163154397', '1989-10-20', 'roberta@ufu.com.br', 'roberta@email.com.br');
INSERT INTO pessoa (nome, cpf, data_nasc, email_inst, email_sec) VALUES ('Juliana', '32163159997', '1980-10-08', 'juliana@ufu.com.br', 'juliana@email.com.br');
INSERT INTO pessoa (nome, cpf, data_nasc, email_inst, email_sec) VALUES ('Conrado Botelho', '42112354397', '1995-02-20', 'conrado@ufu.com.br', 'conrado@email.com.br');
INSERT INTO pessoa (nome, cpf, data_nasc, email_inst, email_sec) VALUES ('Julia', '52112354836', '1990-04-16', 'julia@ufu.com.br', 'julia@email.com.br');
INSERT INTO pessoa (nome, cpf, data_nasc, email_inst, email_sec) VALUES ('Antonio Carlos', '62118989397', '1985-09-06', 'antonio@ufu.com.br', 'antonio@email.com.br');
INSERT INTO pessoa (nome, cpf, data_nasc, email_inst, email_sec) VALUES ('Bruno Vieria', '72163154397', '1989-10-20', 'bruno@ufu.com.br', 'bruno@email.com.br');
INSERT INTO pessoa (nome, cpf, data_nasc, email_inst, email_sec) VALUES ('Marcos silva', '82163159997', '1980-10-08', 'marcos@ufu.com.br', 'marcos@email.com.br');
INSERT INTO pessoa (nome, cpf, data_nasc, email_inst, email_sec) VALUES ('Ronaldo', '32115854397', '1995-02-20', 'ronaldo@ufu.com.br', 'ronaldo@email.com.br');
INSERT INTO pessoa (nome, cpf, data_nasc, email_inst, email_sec) VALUES ('Leila', '32112354936', '1990-04-16', 'leila@ufu.com.br', 'leila@email.com.br');
INSERT INTO pessoa (nome, cpf, data_nasc, email_inst, email_sec) VALUES ('Cristina', '32118979397', '1985-07-06', 'cristina@ufu.com.br', 'cristina@email.com.br');
INSERT INTO pessoa (nome, cpf, data_nasc, email_inst, email_sec) VALUES ('Manuela', '32163113397', '1989-10-20', 'manuela@ufu.com.br', 'manuela@email.com.br');
INSERT INTO pessoa (nome, cpf, data_nasc, email_inst, email_sec) VALUES ('Fabiana', '32163196988', '1980-05-08', 'fabiana@ufu.com.br', 'fabiana@email.com.br');
INSERT INTO pessoa (nome, cpf, data_nasc, email_inst, email_sec) VALUES ('Luana', '42112358377', '1995-02-20', 'luana@ufu.com.br', 'luana@email.com.br');
INSERT INTO pessoa (nome, cpf, data_nasc, email_inst, email_sec) VALUES ('Bruna', '52122354866', '1990-01-16', 'bruna@ufu.com.br', 'bruna@email.com.br');
INSERT INTO pessoa (nome, cpf, data_nasc, email_inst, email_sec) VALUES ('Maria', '62113389397', '1985-09-06', 'maria@ufu.com.br', 'maria@email.com.br');
INSERT INTO pessoa (nome, cpf, data_nasc, email_inst, email_sec) VALUES ('Helena', '72163122397', '1989-10-20', 'helena@ufu.com.br', 'helena@email.com.br');
INSERT INTO pessoa (nome, cpf, data_nasc, email_inst, email_sec) VALUES ('Marta', '82163119997', '1980-10-08', 'marta@ufu.com.br', 'marta@email.com.br');


--aluno
INSERT INTO aluno (nome_a, nro_matricula, curso) VALUES ('Paula', '32112BSI397', 'Sistemas de informação');
INSERT INTO aluno (nome_a, nro_matricula, curso) VALUES ('Joao', '32112BSI399', 'Sistemas de informação');
INSERT INTO aluno (nome_a, nro_matricula, curso) VALUES ('Pedro', '32112DIR397', 'Direito');
INSERT INTO aluno (nome_a, nro_matricula, curso) VALUES ('Roberta', '32112CCI397', 'Ciencia da computação');
INSERT INTO aluno (nome_a, nro_matricula, curso) VALUES ('Juliana', '32112ADM397', 'Administração');

--tecnico
INSERT INTO tecnico (nome_t, siape, un_adm) VALUES ('Conrado Botelho', '3211TUFU397', 'UNSAN');
INSERT INTO tecnico (nome_t, siape, un_adm) VALUES ('Julia', '3212TUFU397', 'UNSAN');
INSERT INTO tecnico (nome_t, siape, un_adm) VALUES ('Antonio Carlos', '3213TUFU397', 'UNSAN');
INSERT INTO tecnico (nome_t, siape, un_adm) VALUES ('Bruno Vieria', '3214TUFU397', 'EDUCA');
INSERT INTO tecnico (nome_t, siape, un_adm) VALUES ('Marcos silva', '3215TUFU397', 'UNUMU');

--professor
INSERT INTO professor (nome_p, siape, un_academica, reg_trabalho) VALUES ('Ronaldo', '4648PUFU886', 'FACOM', 'Dedicação exclusiva');
INSERT INTO professor (nome_p, siape, un_academica, reg_trabalho) VALUES ('Leila', '4648PUFU887', 'FACOM', '20hs');
INSERT INTO professor (nome_p, siape, un_academica, reg_trabalho) VALUES ('Cristina', '4648PUFU888', 'FAMAT', '40hs');
INSERT INTO professor (nome_p, siape, un_academica, reg_trabalho) VALUES ('Manuela', '4648PUFU889', 'FAMED', '40hs');
INSERT INTO professor (nome_p, siape, un_academica, reg_trabalho) VALUES ('Fabiana', '4648PUFU890', 'FAGEN', 'Dedicação exclusiva');

--terceirizado
INSERT INTO terceirizado (nome_te, empresa, setor, sigla_ua) VALUES ('Luana', 'tanus', 'limpeza', 'UNSAN');
INSERT INTO terceirizado (nome_te, empresa, setor, sigla_ua) VALUES ('Bruna', 'core', 'segurança', 'UNSAN' );
INSERT INTO terceirizado (nome_te, empresa, setor, sigla_ua) VALUES ('Maria', 'nation', 'reparos', 'UNSAN');
INSERT INTO terceirizado (nome_te, empresa, setor, sigla_ua) VALUES ('Helena', 'seatle pintura', 'pintura', 'UNSAN');
INSERT INTO terceirizado (nome_te, empresa, setor, sigla_ua) VALUES ('Marta', 'orvalho', 'jardinagem', 'UNSAN');

--unidade academica
INSERT INTO unidade_acadêmica (sigla, nome, area) VALUES ('FACOM', 'Faculdade de computação', 'Exatas');
INSERT INTO unidade_acadêmica (sigla, nome, area) VALUES ('FAMAT', 'Faculdade de matematica', 'Exatas');
INSERT INTO unidade_acadêmica (sigla, nome, area) VALUES ('FAMED', 'Faculdade de medicina', 'Biologicas');
INSERT INTO unidade_acadêmica (sigla, nome, area) VALUES ('FAGEN', 'Faculdade de gestão em negocios', 'Exatas');
INSERT INTO unidade_acadêmica (sigla, nome, area) VALUES ('FACIC', 'Faculdade de ciencias contabeis', 'Exatas');

--unidade administrativa
INSERT INTO unidade_administrativa (sigla, nome) VALUES ('UNSAN', 'Unidade Santa Mônica');
INSERT INTO unidade_administrativa (sigla, nome) VALUES ('EDUCA', 'Unidade Educação fisica');
INSERT INTO unidade_administrativa (sigla, nome) VALUES ('UNUMU', 'Unidade Umuarama');
INSERT INTO unidade_administrativa (sigla, nome) VALUES ('UNMON', 'Unidade monte carmelo');
INSERT INTO unidade_administrativa (sigla, nome) VALUES ('UNPON', 'Unidade Pontal');



--curso
INSERT INTO curso (sigla_c, nome_c, un_acad) VALUES ('BSI', 'Sistemas de informação', 'FACOM');
INSERT INTO curso (sigla_c, nome_c, un_acad) VALUES ('CC', 'Ciencias da Computação', 'FACOM');
INSERT INTO curso (sigla_c, nome_c, un_acad) VALUES ('MAT', 'Matematica', 'FAMAT');
INSERT INTO curso (sigla_c, nome_c, un_acad) VALUES ('CIC', 'Ciências Contábeis', 'FACIC');
INSERT INTO curso (sigla_c, nome_c, un_acad) VALUES ('MED', 'Medicina', 'FAMED');



--questao
INSERT INTO questao (descricao, id_questao, resposta) VALUES ('Esta satisfeito com seu trabalho', '1', 'Sim ou Não');
INSERT INTO questao (descricao, id_questao, resposta) VALUES ('Indicaria a instituição', '2', 'Sim ou Não');
INSERT INTO questao (descricao, id_questao, resposta) VALUES ('Satisfeito com a gestão', '3', 'Sim ou Não');
INSERT INTO questao (descricao, id_questao, resposta) VALUES ('Como voce avalia a gestão', '4', 'Muito Bom, Bom, Regular, Ruim');
INSERT INTO questao (descricao, id_questao, resposta) VALUES ('Sugestão para melhorias', '5', 'resposta pessoal ou abstenção');



--resposta
INSERT INTO resposta (resp, id_resp, id_f) VALUES ('Sim', '1', '1' );
INSERT INTO resposta (resp, id_resp, id_f) VALUES ('Não', '2', '1' );
INSERT INTO resposta (resp, id_resp, id_f) VALUES ('Sim', '3', '1');
INSERT INTO resposta (resp, id_resp, id_f) VALUES ('Bom', '4', '1');
INSERT INTO resposta (resp, id_resp, id_f) VALUES ('Gerar novos empregos', '5', '1');
INSERT INTO resposta (resp, id_resp, id_f) VALUES ('Gerar novos empregos', '5', '6');


--formulario
INSERT INTO formulario (id_form, nome, criador, data_inicial, data_final) VALUES ('1', 'satisfacao', 'Paula', '2016-12-02', '2016-12-06');
INSERT INTO formulario (id_form, nome, criador, data_inicial, data_final) VALUES ('2', 'satisfacao', 'Joao', '2016-12-02', '2016-12-06');
INSERT INTO formulario (id_form, nome, criador, data_inicial, data_final) VALUES ('3', 'satisfacao', 'Pedro', '2016-12-02', '2016-12-20');
INSERT INTO formulario (id_form, nome, criador, data_inicial, data_final) VALUES ('4', 'satisfacao', 'Pedro', '2016-12-03', '2016-12-10');
INSERT INTO formulario (id_form, nome, criador, data_inicial, data_final) VALUES ('5', 'satisfacao', 'Pedro', '2016-12-04', '2016-12-10');
INSERT INTO formulario (id_form, nome, criador, data_inicial, data_final) VALUES ('6', 'satisfacao', 'Bruna', '2016-12-04', '2016-12-10');




--chave primaria pessoa
ALTER TABLE ONLY pessoa
    ADD CONSTRAINT pkpessoa PRIMARY KEY (cpf);


--chave primaria professor   
ALTER TABLE ONLY professor
    ADD CONSTRAINT pkprofessor PRIMARY KEY (siape);

--chave primaria curso
ALTER TABLE ONLY curso
    ADD CONSTRAINT pkcurso PRIMARY KEY (sigla_c);      

--chave primaria aluno
ALTER TABLE ONLY aluno
    ADD CONSTRAINT pkaluno PRIMARY KEY (nro_matricula); 

--chave primaria tecnico
ALTER TABLE ONLY tecnico
    ADD CONSTRAINT pktecnico PRIMARY KEY (siape);


--chave primaria formulario
ALTER TABLE ONLY formulario
    ADD CONSTRAINT pkformulario PRIMARY KEY (id_form);

--chave primaria unidade_acadêmica  
ALTER TABLE ONLY unidade_acadêmica
    ADD CONSTRAINT pkunidade_acadêmica PRIMARY KEY (sigla);     
    

--chave primaria unidade_administrativa  
ALTER TABLE ONLY unidade_administrativa
    ADD CONSTRAINT pkunidade_administrativa PRIMARY KEY (sigla);

--chave primaria resposta   
ALTER TABLE ONLY resposta
    ADD CONSTRAINT pkresposta PRIMARY KEY (id_resp, id_f);     

--chave primaria questao 
ALTER TABLE ONLY questao
    ADD CONSTRAINT pkquestao PRIMARY KEY (id_questao);     
 
    
--compo com valor unico tabela pessoa, email institucional
ALTER TABLE ONLY pessoa
    ADD CONSTRAINT uqemail_inst UNIQUE (email_inst);


--compo com valor unico tabela pessoa, email secundario
ALTER TABLE ONLY pessoa
    ADD CONSTRAINT uqemail_sec UNIQUE (email_sec);      


--chave estrangeira de resposta refenciando questão
ALTER TABLE ONLY resposta
    ADD CONSTRAINT fkid_resp FOREIGN KEY (id_resp) REFERENCES questao(id_questao);   


--chave estrangeira de curso refenciando unidade academica
ALTER TABLE ONLY curso
    ADD CONSTRAINT fkun_acad FOREIGN KEY (un_acad) REFERENCES unidade_acadêmica(sigla);       


--chave estrangeira de terceirizado refenciando unidade administrativa
ALTER TABLE ONLY terceirizado
    ADD CONSTRAINT fksigla_ua FOREIGN KEY (sigla_ua) REFERENCES unidade_administrativa(sigla);


--chave estrangeira de resposta refenciando formulario    
ALTER TABLE ONLY resposta
    ADD CONSTRAINT fkid_f FOREIGN KEY (id_f) REFERENCES formulario(id_form)
    ON DELETE CASCADE; 

--chave estrangeira para empresa em terceirizado
ALTER TABLE ONLY terceirizado
    ADD CONSTRAINT pkterceirizado PRIMARY KEY (nome_te, empresa, setor, sigla_ua);   








--atualizar formularios com data inicial de 02-12-2016 para 05-12-2016
 UPDATE formulario SET data_inicial = '2016-12-05' WHERE data_inicial = '2016-12-02';  

--atualizar formularios com data final de 10-12-2016 para 27-12-2016
 UPDATE formulario SET data_final = '2016-12-27' WHERE data_final = '2016-12-10'; 

 --atualizar educa para unedu 
 UPDATE unidade_administrativa SET sigla = 'UNEDU' WHERE sigla = 'EDUCA';

--deletando formulario de id 6
DELETE FROM formulario WHERE id_form = '6'; 

  
    
       

    
    

