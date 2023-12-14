--
-- PostgreSQL database dump
--

-- Dumped from database version 16.1
-- Dumped by pg_dump version 16.1

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
-- Name: product_gpu; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.product_gpu (
    product_id integer NOT NULL,
    product_name character varying(255),
    product_description character varying(255),
    product_review character varying(255),
    product_img character varying(255),
    product_price character varying(255)
);


ALTER TABLE public.product_gpu OWNER TO postgres;

--
-- Name: product_gpu_product_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.product_gpu_product_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.product_gpu_product_id_seq OWNER TO postgres;

--
-- Name: product_gpu_product_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.product_gpu_product_id_seq OWNED BY public.product_gpu.product_id;


--
-- Name: product_motherboard; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.product_motherboard (
    product_id integer NOT NULL,
    product_name character varying(255),
    product_description character varying(255),
    product_review character varying(255),
    product_img character varying(255),
    product_price character varying(255)
);


ALTER TABLE public.product_motherboard OWNER TO postgres;

--
-- Name: product_motherboard_product_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.product_motherboard_product_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.product_motherboard_product_id_seq OWNER TO postgres;

--
-- Name: product_motherboard_product_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.product_motherboard_product_id_seq OWNED BY public.product_motherboard.product_id;


--
-- Name: product_proc; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.product_proc (
    product_id integer NOT NULL,
    product_name character varying(255),
    product_description character varying(255),
    product_review character varying(255),
    product_img character varying(255),
    product_price character varying(255)
);


ALTER TABLE public.product_proc OWNER TO postgres;

--
-- Name: product_proc_product_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.product_proc_product_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.product_proc_product_id_seq OWNER TO postgres;

--
-- Name: product_proc_product_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.product_proc_product_id_seq OWNED BY public.product_proc.product_id;


--
-- Name: product_ram; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.product_ram (
    product_id integer NOT NULL,
    product_name character varying(255),
    product_description character varying(255),
    product_review character varying(255),
    product_img character varying(255),
    product_price character varying(255)
);


ALTER TABLE public.product_ram OWNER TO postgres;

--
-- Name: product_ram_product_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.product_ram_product_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.product_ram_product_id_seq OWNER TO postgres;

--
-- Name: product_ram_product_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.product_ram_product_id_seq OWNED BY public.product_ram.product_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id integer NOT NULL,
    username character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    password character varying(255) NOT NULL
);


ALTER TABLE public.users OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.users_id_seq OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: product_gpu product_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_gpu ALTER COLUMN product_id SET DEFAULT nextval('public.product_gpu_product_id_seq'::regclass);


--
-- Name: product_motherboard product_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_motherboard ALTER COLUMN product_id SET DEFAULT nextval('public.product_motherboard_product_id_seq'::regclass);


--
-- Name: product_proc product_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_proc ALTER COLUMN product_id SET DEFAULT nextval('public.product_proc_product_id_seq'::regclass);


--
-- Name: product_ram product_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_ram ALTER COLUMN product_id SET DEFAULT nextval('public.product_ram_product_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: product_gpu; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.product_gpu (product_id, product_name, product_description, product_review, product_img, product_price) FROM stdin;
1	Материнская плата GIGABYTE Z790 GAMING X AX	[LGA 1700, Intel Z790, 4xDDR5-4800 МГц, 3xPCI-Ex16, 4xM.2, Standard-ATX]	C:\\Users\\mizgu\\OneDrive\\Рабочий стол\\сайты\\сайт\\proc-images\\review (5).svg	C:\\Users\\mizgu\\OneDrive\\Рабочий стол\\сайты\\сайт\\videocard-images\\videocard (1).svg	41 999 ₽
\.


--
-- Data for Name: product_motherboard; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.product_motherboard (product_id, product_name, product_description, product_review, product_img, product_price) FROM stdin;
3	Материнская плата GIGABYTE Z790 GAMING X AX	erg	[LGA 1700, Intel Z790, 4xDDR5-4800 МГц, 3xPCI-Ex16, 4xM.2, Standard-ATX]	C:\\Users\\mizgu\\OneDrive\\Рабочий стол\\сайты\\сайт\\motherboard-images\\motherboard (1).svg	25 699 ₽
\.


--
-- Data for Name: product_proc; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.product_proc (product_id, product_name, product_description, product_review, product_img, product_price) FROM stdin;
1	Процессор Intel Core i5-12400F OEM	[LGA 1700, 6 x 2.5 ГГц, L2 - 7.5 МБ, L3 - 18 МБ, 2 х DDR4, DDR5-4800 МГц, TDP 117 Вт]	C:\\Users\\mizgu\\OneDrive\\Рабочий стол\\сайты\\сайт\\proc-images\\review (4).svg	C:\\Users\\mizgu\\OneDrive\\Рабочий стол\\сайты\\сайт\\proc-images\\proc-product (4).svg	18 699 ₽
\.


--
-- Data for Name: product_ram; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.product_ram (product_id, product_name, product_description, product_review, product_img, product_price) FROM stdin;
1	Оперативная память G.Skill AEGIS	[F4-3200C16D-16GIS] 16 ГБ [DDR4, 8 ГБx2 шт, 3200 МГц, 16-18-18-38]	C:\\Users\\mizgu\\OneDrive\\Рабочий стол\\сайты\\сайт\\proc-images\\review (8).svg	C:\\Users\\mizgu\\OneDrive\\Рабочий стол\\сайты\\сайт\\ram-images\\ram (3).svg	3 799 ₽
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (id, username, email, password) FROM stdin;
1	Test	test@test.test	$2b$10$g48hfwzC3rg/3slOt9Px/es9A7p4Y097TLgLdWrTQF1yD.TDVDB8G
\.


--
-- Name: product_gpu_product_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.product_gpu_product_id_seq', 2, true);


--
-- Name: product_motherboard_product_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.product_motherboard_product_id_seq', 5, true);


--
-- Name: product_proc_product_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.product_proc_product_id_seq', 8, true);


--
-- Name: product_ram_product_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.product_ram_product_id_seq', 1, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_id_seq', 3, true);


--
-- Name: product_gpu product_gpu_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_gpu
    ADD CONSTRAINT product_gpu_pkey PRIMARY KEY (product_id);


--
-- Name: product_motherboard product_motherboard_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_motherboard
    ADD CONSTRAINT product_motherboard_pkey PRIMARY KEY (product_id);


--
-- Name: product_proc product_proc_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_proc
    ADD CONSTRAINT product_proc_pkey PRIMARY KEY (product_id);


--
-- Name: product_ram product_ram_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_ram
    ADD CONSTRAINT product_ram_pkey PRIMARY KEY (product_id);


--
-- Name: users users_email_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key UNIQUE (email);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

