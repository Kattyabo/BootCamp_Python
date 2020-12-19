--
-- PostgreSQL database dump
--

-- Dumped from database version 13.1
-- Dumped by pg_dump version 13.1

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: profesores; Type: TABLE; Schema: public; Owner: usuario_mi_base
--

CREATE TABLE public.profesores (
    id bigint NOT NULL,
    nombre character varying(25) NOT NULL,
    apellido character varying(50),
    escuela character varying(50),
    fecha_contratacion date,
    sueldo numeric
);


ALTER TABLE public.profesores OWNER TO usuario_mi_base;

--
-- Name: profesores_id_seq; Type: SEQUENCE; Schema: public; Owner: usuario_mi_base
--

CREATE SEQUENCE public.profesores_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.profesores_id_seq OWNER TO usuario_mi_base;

--
-- Name: profesores_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: usuario_mi_base
--

ALTER SEQUENCE public.profesores_id_seq OWNED BY public.profesores.id;


--
-- Name: profesores id; Type: DEFAULT; Schema: public; Owner: usuario_mi_base
--

ALTER TABLE ONLY public.profesores ALTER COLUMN id SET DEFAULT nextval('public.profesores_id_seq'::regclass);


--
-- Data for Name: profesores; Type: TABLE DATA; Schema: public; Owner: usuario_mi_base
--

COPY public.profesores (id, nombre, apellido, escuela, fecha_contratacion, sueldo) FROM stdin;
2	Juanita	Perez	Gabriela Mistral	2011-10-30	234000
3	Bruce	Lee	Republica Popular China	1993-05-22	780945
4	Juan Alberto	Valdivieso	Sagrada Concepcion	2005-08-01	3400000
5	Pablo	Rojas	E-34	2011-10-30	300000
6	Nicolas	Echenique	Bendito Coraz¢n de Mar¡a	2005-08-30	8900000
7	Jericho	Jorquera	A-18 Abrazo de Maipu	2010-10-22	67500
1	Caupolic n	Catrileo	Santiago de la extremadura	2000-10-26	780000
8	Juanit|a	Catrileo	Santiago de la extremadura	2000-10-26	78000
1	JUANITA	Catrileo	Santiago de la extremadura	2000-10-26	780000
\.


--
-- Name: profesores_id_seq; Type: SEQUENCE SET; Schema: public; Owner: usuario_mi_base
--

SELECT pg_catalog.setval('public.profesores_id_seq', 8, true);


--
-- Name: profesores profesores_pkey; Type: CONSTRAINT; Schema: public; Owner: usuario_mi_base
--

ALTER TABLE ONLY public.profesores
    ADD CONSTRAINT profesores_pkey PRIMARY KEY (nombre);


--
-- PostgreSQL database dump complete
--

