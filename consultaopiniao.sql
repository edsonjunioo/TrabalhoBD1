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


/*
ALTER SCHEMA consultaopiniao OWNER TO postgres;

SET search_path = banco, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;
*/



CREATE TABLE pessoa (
	nome character varying(250) NOT NULL,
	cpf character(11) NOT NULL,
	data_nasc date NOT NULL,
	email_inst character varying(100),
	email_sec  character varying(100)
);

--ALTER TABLE pessoa OWNER TO postgres;


CREATE TABLE professor (
	siape character(11) NOT NULL,
	un_academica character varying(20) NOT NULL,
	reg_trabalho character varying(40) NOT NULL
);	

--ALTER TABLE professor OWNER TO postgres;





	
	




