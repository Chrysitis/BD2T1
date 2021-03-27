--
-- PostgreSQL database dump
--

-- Dumped from database version 12.6 (Ubuntu 12.6-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.6 (Ubuntu 12.6-0ubuntu0.20.04.1)

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
-- Name: categorias; Type: TABLE; Schema: public; Owner: litki
--

CREATE TABLE public.categorias (
    idcategoria integer NOT NULL,
    category character varying(25) NOT NULL
);


ALTER TABLE public.categorias OWNER TO litki;

--
-- Name: categorias_idcategoria_seq; Type: SEQUENCE; Schema: public; Owner: litki
--

CREATE SEQUENCE public.categorias_idcategoria_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.categorias_idcategoria_seq OWNER TO litki;

--
-- Name: categorias_idcategoria_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: litki
--

ALTER SEQUENCE public.categorias_idcategoria_seq OWNED BY public.categorias.idcategoria;


--
-- Name: empleados; Type: TABLE; Schema: public; Owner: litki
--

CREATE TABLE public.empleados (
    idempleado integer NOT NULL,
    idgenero integer NOT NULL,
    nombre character varying(25) NOT NULL,
    apellido character varying(25) NOT NULL,
    salario numeric NOT NULL
);


ALTER TABLE public.empleados OWNER TO litki;

--
-- Name: empleados_idempleado_seq; Type: SEQUENCE; Schema: public; Owner: litki
--

CREATE SEQUENCE public.empleados_idempleado_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.empleados_idempleado_seq OWNER TO litki;

--
-- Name: empleados_idempleado_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: litki
--

ALTER SEQUENCE public.empleados_idempleado_seq OWNED BY public.empleados.idempleado;


--
-- Name: empleados_idgenero_seq; Type: SEQUENCE; Schema: public; Owner: litki
--

CREATE SEQUENCE public.empleados_idgenero_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.empleados_idgenero_seq OWNER TO litki;

--
-- Name: empleados_idgenero_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: litki
--

ALTER SEQUENCE public.empleados_idgenero_seq OWNED BY public.empleados.idgenero;


--
-- Name: generos; Type: TABLE; Schema: public; Owner: litki
--

CREATE TABLE public.generos (
    idgenero integer NOT NULL,
    genero character varying(10) NOT NULL
);


ALTER TABLE public.generos OWNER TO litki;

--
-- Name: generos_idgenero_seq; Type: SEQUENCE; Schema: public; Owner: litki
--

CREATE SEQUENCE public.generos_idgenero_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.generos_idgenero_seq OWNER TO litki;

--
-- Name: generos_idgenero_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: litki
--

ALTER SEQUENCE public.generos_idgenero_seq OWNED BY public.generos.idgenero;


--
-- Name: locales; Type: TABLE; Schema: public; Owner: litki
--

CREATE TABLE public.locales (
    idlocal integer NOT NULL,
    nombre character varying(30) NOT NULL,
    ubicacion character varying(30) NOT NULL,
    telefono character varying(15) NOT NULL
);


ALTER TABLE public.locales OWNER TO litki;

--
-- Name: locales_idlocal_seq; Type: SEQUENCE; Schema: public; Owner: litki
--

CREATE SEQUENCE public.locales_idlocal_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.locales_idlocal_seq OWNER TO litki;

--
-- Name: locales_idlocal_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: litki
--

ALTER SEQUENCE public.locales_idlocal_seq OWNED BY public.locales.idlocal;


--
-- Name: localesempleados; Type: TABLE; Schema: public; Owner: litki
--

CREATE TABLE public.localesempleados (
    idempleado integer NOT NULL,
    idlocal integer NOT NULL
);


ALTER TABLE public.localesempleados OWNER TO litki;

--
-- Name: localesempleados_idempleado_seq; Type: SEQUENCE; Schema: public; Owner: litki
--

CREATE SEQUENCE public.localesempleados_idempleado_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.localesempleados_idempleado_seq OWNER TO litki;

--
-- Name: localesempleados_idempleado_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: litki
--

ALTER SEQUENCE public.localesempleados_idempleado_seq OWNED BY public.localesempleados.idempleado;


--
-- Name: localesempleados_idlocal_seq; Type: SEQUENCE; Schema: public; Owner: litki
--

CREATE SEQUENCE public.localesempleados_idlocal_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.localesempleados_idlocal_seq OWNER TO litki;

--
-- Name: localesempleados_idlocal_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: litki
--

ALTER SEQUENCE public.localesempleados_idlocal_seq OWNED BY public.localesempleados.idlocal;


--
-- Name: productos; Type: TABLE; Schema: public; Owner: litki
--

CREATE TABLE public.productos (
    idproducto integer NOT NULL,
    idcategoria integer NOT NULL,
    producto character varying(25) NOT NULL,
    cantproducto integer NOT NULL,
    precio numeric NOT NULL
);


ALTER TABLE public.productos OWNER TO litki;

--
-- Name: productos_idcategoria_seq; Type: SEQUENCE; Schema: public; Owner: litki
--

CREATE SEQUENCE public.productos_idcategoria_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.productos_idcategoria_seq OWNER TO litki;

--
-- Name: productos_idcategoria_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: litki
--

ALTER SEQUENCE public.productos_idcategoria_seq OWNED BY public.productos.idcategoria;


--
-- Name: productos_idproducto_seq; Type: SEQUENCE; Schema: public; Owner: litki
--

CREATE SEQUENCE public.productos_idproducto_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.productos_idproducto_seq OWNER TO litki;

--
-- Name: productos_idproducto_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: litki
--

ALTER SEQUENCE public.productos_idproducto_seq OWNED BY public.productos.idproducto;


--
-- Name: productoslocales; Type: TABLE; Schema: public; Owner: litki
--

CREATE TABLE public.productoslocales (
    idproducto integer NOT NULL,
    idlocal integer NOT NULL
);


ALTER TABLE public.productoslocales OWNER TO litki;

--
-- Name: productoslocales_idlocal_seq; Type: SEQUENCE; Schema: public; Owner: litki
--

CREATE SEQUENCE public.productoslocales_idlocal_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.productoslocales_idlocal_seq OWNER TO litki;

--
-- Name: productoslocales_idlocal_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: litki
--

ALTER SEQUENCE public.productoslocales_idlocal_seq OWNED BY public.productoslocales.idlocal;


--
-- Name: productoslocales_idproducto_seq; Type: SEQUENCE; Schema: public; Owner: litki
--

CREATE SEQUENCE public.productoslocales_idproducto_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.productoslocales_idproducto_seq OWNER TO litki;

--
-- Name: productoslocales_idproducto_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: litki
--

ALTER SEQUENCE public.productoslocales_idproducto_seq OWNED BY public.productoslocales.idproducto;


--
-- Name: categorias idcategoria; Type: DEFAULT; Schema: public; Owner: litki
--

ALTER TABLE ONLY public.categorias ALTER COLUMN idcategoria SET DEFAULT nextval('public.categorias_idcategoria_seq'::regclass);


--
-- Name: empleados idempleado; Type: DEFAULT; Schema: public; Owner: litki
--

ALTER TABLE ONLY public.empleados ALTER COLUMN idempleado SET DEFAULT nextval('public.empleados_idempleado_seq'::regclass);


--
-- Name: empleados idgenero; Type: DEFAULT; Schema: public; Owner: litki
--

ALTER TABLE ONLY public.empleados ALTER COLUMN idgenero SET DEFAULT nextval('public.empleados_idgenero_seq'::regclass);


--
-- Name: generos idgenero; Type: DEFAULT; Schema: public; Owner: litki
--

ALTER TABLE ONLY public.generos ALTER COLUMN idgenero SET DEFAULT nextval('public.generos_idgenero_seq'::regclass);


--
-- Name: locales idlocal; Type: DEFAULT; Schema: public; Owner: litki
--

ALTER TABLE ONLY public.locales ALTER COLUMN idlocal SET DEFAULT nextval('public.locales_idlocal_seq'::regclass);


--
-- Name: localesempleados idempleado; Type: DEFAULT; Schema: public; Owner: litki
--

ALTER TABLE ONLY public.localesempleados ALTER COLUMN idempleado SET DEFAULT nextval('public.localesempleados_idempleado_seq'::regclass);


--
-- Name: localesempleados idlocal; Type: DEFAULT; Schema: public; Owner: litki
--

ALTER TABLE ONLY public.localesempleados ALTER COLUMN idlocal SET DEFAULT nextval('public.localesempleados_idlocal_seq'::regclass);


--
-- Name: productos idproducto; Type: DEFAULT; Schema: public; Owner: litki
--

ALTER TABLE ONLY public.productos ALTER COLUMN idproducto SET DEFAULT nextval('public.productos_idproducto_seq'::regclass);


--
-- Name: productos idcategoria; Type: DEFAULT; Schema: public; Owner: litki
--

ALTER TABLE ONLY public.productos ALTER COLUMN idcategoria SET DEFAULT nextval('public.productos_idcategoria_seq'::regclass);


--
-- Name: productoslocales idproducto; Type: DEFAULT; Schema: public; Owner: litki
--

ALTER TABLE ONLY public.productoslocales ALTER COLUMN idproducto SET DEFAULT nextval('public.productoslocales_idproducto_seq'::regclass);


--
-- Name: productoslocales idlocal; Type: DEFAULT; Schema: public; Owner: litki
--

ALTER TABLE ONLY public.productoslocales ALTER COLUMN idlocal SET DEFAULT nextval('public.productoslocales_idlocal_seq'::regclass);


--
-- Data for Name: categorias; Type: TABLE DATA; Schema: public; Owner: litki
--

COPY public.categorias (idcategoria, category) FROM stdin;
4	limpieza
8	bebidas
9	verduras
\.


--
-- Data for Name: empleados; Type: TABLE DATA; Schema: public; Owner: litki
--

COPY public.empleados (idempleado, idgenero, nombre, apellido, salario) FROM stdin;
4	5	Adriana	Lopez	650000
7	6	Daniel	Barrantes	650000
10	5	Mina	Murray	657458
11	6	Abate	Faria	8795756
12	6	Francis	Cromarty	456758
13	5	Elizabeth	Lavenza	867567
14	5	James	Laurence	946568
15	5	Jane	Bennet	978576
16	5	Yolanda	Flores	564568
17	6	Kevin	Brown	586089
18	5	Daniela	Aguirre	768568
19	5	Alina	Duarte	987567
20	6	Roberto	Rodriguez	765867
8	6	Christopher	Acosta	896000
\.


--
-- Data for Name: generos; Type: TABLE DATA; Schema: public; Owner: litki
--

COPY public.generos (idgenero, genero) FROM stdin;
5	F
6	M
\.


--
-- Data for Name: locales; Type: TABLE DATA; Schema: public; Owner: litki
--

COPY public.locales (idlocal, nombre, ubicacion, telefono) FROM stdin;
2	Central	Centro	27683465
4	TestLocal	Siquirres	84623546
5	delPacifico	Puntarenas	 50626931465
6	SucursaldelNorte	Alajuela	 50624768345
7	Central	Cartago	 50625263460
8	SucursalSecundaria	Heredia	 50622720036
9	New Caribeñal	New Centro	 50627767534
\.


--
-- Data for Name: localesempleados; Type: TABLE DATA; Schema: public; Owner: litki
--

COPY public.localesempleados (idempleado, idlocal) FROM stdin;
4	2
7	2
10	4
11	4
12	5
13	5
14	6
15	6
16	7
17	7
18	8
19	8
\.


--
-- Data for Name: productos; Type: TABLE DATA; Schema: public; Owner: litki
--

COPY public.productos (idproducto, idcategoria, producto, cantproducto, precio) FROM stdin;
8	4	Clorox	12	1375
9	4	Suavitel	12	950
17	8	Ginger Ale	12	850
18	8	Coca-Cola	12	850
19	4	Desinfectante	36	525
20	4	Trapo	19	255
21	4	Jabon	36	350
22	8	Frescoleche	49	525
23	8	Jugo de Naranja	92	1235
24	8	Hi-C	9	925
25	9	Tomate	26	850
26	9	Papa	57	1350
27	9	Zanahoria	97	450
\.


--
-- Data for Name: productoslocales; Type: TABLE DATA; Schema: public; Owner: litki
--

COPY public.productoslocales (idproducto, idlocal) FROM stdin;
17	2
8	2
8	2
24	4
25	4
26	4
27	2
21	5
20	5
19	5
17	5
27	2
9	4
26	5
21	2
\.


--
-- Name: categorias_idcategoria_seq; Type: SEQUENCE SET; Schema: public; Owner: litki
--

SELECT pg_catalog.setval('public.categorias_idcategoria_seq', 11, true);


--
-- Name: empleados_idempleado_seq; Type: SEQUENCE SET; Schema: public; Owner: litki
--

SELECT pg_catalog.setval('public.empleados_idempleado_seq', 20, true);


--
-- Name: empleados_idgenero_seq; Type: SEQUENCE SET; Schema: public; Owner: litki
--

SELECT pg_catalog.setval('public.empleados_idgenero_seq', 1, false);


--
-- Name: generos_idgenero_seq; Type: SEQUENCE SET; Schema: public; Owner: litki
--

SELECT pg_catalog.setval('public.generos_idgenero_seq', 6, true);


--
-- Name: locales_idlocal_seq; Type: SEQUENCE SET; Schema: public; Owner: litki
--

SELECT pg_catalog.setval('public.locales_idlocal_seq', 9, true);


--
-- Name: localesempleados_idempleado_seq; Type: SEQUENCE SET; Schema: public; Owner: litki
--

SELECT pg_catalog.setval('public.localesempleados_idempleado_seq', 1, false);


--
-- Name: localesempleados_idlocal_seq; Type: SEQUENCE SET; Schema: public; Owner: litki
--

SELECT pg_catalog.setval('public.localesempleados_idlocal_seq', 1, false);


--
-- Name: productos_idcategoria_seq; Type: SEQUENCE SET; Schema: public; Owner: litki
--

SELECT pg_catalog.setval('public.productos_idcategoria_seq', 1, false);


--
-- Name: productos_idproducto_seq; Type: SEQUENCE SET; Schema: public; Owner: litki
--

SELECT pg_catalog.setval('public.productos_idproducto_seq', 30, true);


--
-- Name: productoslocales_idlocal_seq; Type: SEQUENCE SET; Schema: public; Owner: litki
--

SELECT pg_catalog.setval('public.productoslocales_idlocal_seq', 1, false);


--
-- Name: productoslocales_idproducto_seq; Type: SEQUENCE SET; Schema: public; Owner: litki
--

SELECT pg_catalog.setval('public.productoslocales_idproducto_seq', 1, true);


--
-- Name: categorias categorias_pkey; Type: CONSTRAINT; Schema: public; Owner: litki
--

ALTER TABLE ONLY public.categorias
    ADD CONSTRAINT categorias_pkey PRIMARY KEY (idcategoria);


--
-- Name: empleados empleados_pkey; Type: CONSTRAINT; Schema: public; Owner: litki
--

ALTER TABLE ONLY public.empleados
    ADD CONSTRAINT empleados_pkey PRIMARY KEY (idempleado);


--
-- Name: generos generos_pkey; Type: CONSTRAINT; Schema: public; Owner: litki
--

ALTER TABLE ONLY public.generos
    ADD CONSTRAINT generos_pkey PRIMARY KEY (idgenero);


--
-- Name: locales locales_pkey; Type: CONSTRAINT; Schema: public; Owner: litki
--

ALTER TABLE ONLY public.locales
    ADD CONSTRAINT locales_pkey PRIMARY KEY (idlocal);


--
-- Name: productos productos_pkey; Type: CONSTRAINT; Schema: public; Owner: litki
--

ALTER TABLE ONLY public.productos
    ADD CONSTRAINT productos_pkey PRIMARY KEY (idproducto);


--
-- Name: empleados empleados_idgenero_fkey; Type: FK CONSTRAINT; Schema: public; Owner: litki
--

ALTER TABLE ONLY public.empleados
    ADD CONSTRAINT empleados_idgenero_fkey FOREIGN KEY (idgenero) REFERENCES public.generos(idgenero) ON DELETE CASCADE;


--
-- Name: localesempleados localesempleados_idempleado_fkey; Type: FK CONSTRAINT; Schema: public; Owner: litki
--

ALTER TABLE ONLY public.localesempleados
    ADD CONSTRAINT localesempleados_idempleado_fkey FOREIGN KEY (idempleado) REFERENCES public.empleados(idempleado) ON DELETE CASCADE;


--
-- Name: localesempleados localesempleados_idlocal_fkey; Type: FK CONSTRAINT; Schema: public; Owner: litki
--

ALTER TABLE ONLY public.localesempleados
    ADD CONSTRAINT localesempleados_idlocal_fkey FOREIGN KEY (idlocal) REFERENCES public.locales(idlocal) ON DELETE CASCADE;


--
-- Name: productos productos_idcategoria_fkey; Type: FK CONSTRAINT; Schema: public; Owner: litki
--

ALTER TABLE ONLY public.productos
    ADD CONSTRAINT productos_idcategoria_fkey FOREIGN KEY (idcategoria) REFERENCES public.categorias(idcategoria) ON DELETE CASCADE;


--
-- Name: productoslocales productoslocales_idlocal_fkey; Type: FK CONSTRAINT; Schema: public; Owner: litki
--

ALTER TABLE ONLY public.productoslocales
    ADD CONSTRAINT productoslocales_idlocal_fkey FOREIGN KEY (idlocal) REFERENCES public.locales(idlocal) ON DELETE CASCADE;


--
-- Name: productoslocales productoslocales_idproducto_fkey; Type: FK CONSTRAINT; Schema: public; Owner: litki
--

ALTER TABLE ONLY public.productoslocales
    ADD CONSTRAINT productoslocales_idproducto_fkey FOREIGN KEY (idproducto) REFERENCES public.productos(idproducto) ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

