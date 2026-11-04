--
-- PostgreSQL database dump
--

\restrict NxVrkIEmBel1R2xJCIQfYSwXIUvtXwwvrdi1gHi3MIyJm7jJXlhfC8DFNQyL5Z5

-- Dumped from database version 17.11
-- Dumped by pg_dump version 17.11

-- Started on 2026-11-04 19:54:01

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
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
-- TOC entry 218 (class 1259 OID 16410)
-- Name: grados; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.grados (
    id integer NOT NULL,
    nombre character varying(100) NOT NULL
);


ALTER TABLE public.grados OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 16409)
-- Name: grados_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.grados_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.grados_id_seq OWNER TO postgres;

--
-- TOC entry 4936 (class 0 OID 0)
-- Dependencies: 217
-- Name: grados_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.grados_id_seq OWNED BY public.grados.id;


--
-- TOC entry 224 (class 1259 OID 16447)
-- Name: intentos_retos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.intentos_retos (
    id integer NOT NULL,
    usuario_id integer NOT NULL,
    reto_id integer NOT NULL,
    estado character varying(30) NOT NULL,
    puntuacion_obtenida integer DEFAULT 0,
    fecha_intento timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.intentos_retos OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 16446)
-- Name: intentos_retos_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.intentos_retos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.intentos_retos_id_seq OWNER TO postgres;

--
-- TOC entry 4937 (class 0 OID 0)
-- Dependencies: 223
-- Name: intentos_retos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.intentos_retos_id_seq OWNED BY public.intentos_retos.id;


--
-- TOC entry 222 (class 1259 OID 16432)
-- Name: retos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.retos (
    id integer NOT NULL,
    titulo character varying(100) NOT NULL,
    descripcion text NOT NULL,
    tipo character varying(50) NOT NULL,
    dificultad character varying(20) NOT NULL,
    grado_id integer
);


ALTER TABLE public.retos OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 16431)
-- Name: retos_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.retos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.retos_id_seq OWNER TO postgres;

--
-- TOC entry 4938 (class 0 OID 0)
-- Dependencies: 221
-- Name: retos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.retos_id_seq OWNED BY public.retos.id;


--
-- TOC entry 220 (class 1259 OID 16417)
-- Name: usuarios; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.usuarios (
    id integer NOT NULL,
    nombre character varying(50) NOT NULL,
    email character varying(100) NOT NULL,
    password character varying(255) NOT NULL,
    puntuacion integer DEFAULT 0,
    grado_id integer
);


ALTER TABLE public.usuarios OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 16416)
-- Name: usuarios_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.usuarios_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.usuarios_id_seq OWNER TO postgres;

--
-- TOC entry 4939 (class 0 OID 0)
-- Dependencies: 219
-- Name: usuarios_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.usuarios_id_seq OWNED BY public.usuarios.id;


--
-- TOC entry 4757 (class 2604 OID 16413)
-- Name: grados id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.grados ALTER COLUMN id SET DEFAULT nextval('public.grados_id_seq'::regclass);


--
-- TOC entry 4761 (class 2604 OID 16450)
-- Name: intentos_retos id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.intentos_retos ALTER COLUMN id SET DEFAULT nextval('public.intentos_retos_id_seq'::regclass);


--
-- TOC entry 4760 (class 2604 OID 16435)
-- Name: retos id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.retos ALTER COLUMN id SET DEFAULT nextval('public.retos_id_seq'::regclass);


--
-- TOC entry 4758 (class 2604 OID 16420)
-- Name: usuarios id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuarios ALTER COLUMN id SET DEFAULT nextval('public.usuarios_id_seq'::regclass);


--
-- TOC entry 4924 (class 0 OID 16410)
-- Dependencies: 218
-- Data for Name: grados; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.grados (id, nombre) FROM stdin;
1	Desarrollo de Aplicaciones Multiplataforma (DAM)
2	Desarrollo de Aplicaciones Web (DAW)
3	Administración de Sistemas Informáticos en Red (ASIR)
\.


--
-- TOC entry 4930 (class 0 OID 16447)
-- Dependencies: 224
-- Data for Name: intentos_retos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.intentos_retos (id, usuario_id, reto_id, estado, puntuacion_obtenida, fecha_intento) FROM stdin;
\.


--
-- TOC entry 4928 (class 0 OID 16432)
-- Dependencies: 222
-- Data for Name: retos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.retos (id, titulo, descripcion, tipo, dificultad, grado_id) FROM stdin;
1	Depurar bucle infinito en Java	Encuentra por qué el bucle while no termina en la clase Main.java.	DEBUGGING	FACIL	1
2	Consulta multitabla SQL	Escribe una sentencia JOIN para obtener los pedidos de la tienda online.	SQL	MEDIO	2
3	Implementar método equals y hashCode	Sobrescribe los métodos correctamente en la entidad Cliente.	IMPLEMENTACION	DIFICIL	1
\.


--
-- TOC entry 4926 (class 0 OID 16417)
-- Dependencies: 220
-- Data for Name: usuarios; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.usuarios (id, nombre, email, password, puntuacion, grado_id) FROM stdin;
1	Ana Gómez	ana.gomez@test.com	hashed_pass_123	50	1
2	Carlos Ruiz	carlos.ruiz@test.com	hashed_pass_456	20	2
3	Lucía Martí	lucia.marti@test.com	hashed_pass_789	90	1
\.


--
-- TOC entry 4940 (class 0 OID 0)
-- Dependencies: 217
-- Name: grados_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.grados_id_seq', 3, true);


--
-- TOC entry 4941 (class 0 OID 0)
-- Dependencies: 223
-- Name: intentos_retos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.intentos_retos_id_seq', 1, false);


--
-- TOC entry 4942 (class 0 OID 0)
-- Dependencies: 221
-- Name: retos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.retos_id_seq', 3, true);


--
-- TOC entry 4943 (class 0 OID 0)
-- Dependencies: 219
-- Name: usuarios_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.usuarios_id_seq', 3, true);


--
-- TOC entry 4765 (class 2606 OID 16415)
-- Name: grados grados_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.grados
    ADD CONSTRAINT grados_pkey PRIMARY KEY (id);


--
-- TOC entry 4773 (class 2606 OID 16454)
-- Name: intentos_retos intentos_retos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.intentos_retos
    ADD CONSTRAINT intentos_retos_pkey PRIMARY KEY (id);


--
-- TOC entry 4771 (class 2606 OID 16439)
-- Name: retos retos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.retos
    ADD CONSTRAINT retos_pkey PRIMARY KEY (id);


--
-- TOC entry 4767 (class 2606 OID 16425)
-- Name: usuarios usuarios_email_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key UNIQUE (email);


--
-- TOC entry 4769 (class 2606 OID 16423)
-- Name: usuarios usuarios_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_pkey PRIMARY KEY (id);


--
-- TOC entry 4774 (class 2606 OID 16426)
-- Name: usuarios fk_grado; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT fk_grado FOREIGN KEY (grado_id) REFERENCES public.grados(id);


--
-- TOC entry 4776 (class 2606 OID 16460)
-- Name: intentos_retos fk_intento_reto; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.intentos_retos
    ADD CONSTRAINT fk_intento_reto FOREIGN KEY (reto_id) REFERENCES public.retos(id);


--
-- TOC entry 4777 (class 2606 OID 16455)
-- Name: intentos_retos fk_intento_usuario; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.intentos_retos
    ADD CONSTRAINT fk_intento_usuario FOREIGN KEY (usuario_id) REFERENCES public.usuarios(id);


--
-- TOC entry 4775 (class 2606 OID 16440)
-- Name: retos fk_reto_grado; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.retos
    ADD CONSTRAINT fk_reto_grado FOREIGN KEY (grado_id) REFERENCES public.grados(id);


-- Completed on 2026-11-04 19:54:01

--
-- PostgreSQL database dump complete
--

\unrestrict NxVrkIEmBel1R2xJCIQfYSwXIUvtXwwvrdi1gHi3MIyJm7jJXlhfC8DFNQyL5Z5

