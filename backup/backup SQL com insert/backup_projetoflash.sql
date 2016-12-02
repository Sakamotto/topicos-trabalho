--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.5
-- Dumped by pg_dump version 9.5.5

-- Started on 2016-12-02 12:26:41 BRST

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

SET search_path = flash, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 184 (class 1259 OID 17775)
-- Name: area_conhecimento; Type: TABLE; Schema: flash; Owner: postgres
--

CREATE TABLE area_conhecimento (
    area_conhecimento_id integer NOT NULL,
    descricao character varying NOT NULL
);


ALTER TABLE area_conhecimento OWNER TO postgres;

--
-- TOC entry 185 (class 1259 OID 17781)
-- Name: area_conhecimento_area_conhecimento_id_seq; Type: SEQUENCE; Schema: flash; Owner: postgres
--

CREATE SEQUENCE area_conhecimento_area_conhecimento_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE area_conhecimento_area_conhecimento_id_seq OWNER TO postgres;

--
-- TOC entry 2312 (class 0 OID 0)
-- Dependencies: 185
-- Name: area_conhecimento_area_conhecimento_id_seq; Type: SEQUENCE OWNED BY; Schema: flash; Owner: postgres
--

ALTER SEQUENCE area_conhecimento_area_conhecimento_id_seq OWNED BY area_conhecimento.area_conhecimento_id;


--
-- TOC entry 186 (class 1259 OID 17783)
-- Name: curso; Type: TABLE; Schema: flash; Owner: postgres
--

CREATE TABLE curso (
    curso_id integer NOT NULL,
    nome character varying NOT NULL,
    regime character varying NOT NULL,
    duracao integer NOT NULL,
    sigla character varying NOT NULL
);


ALTER TABLE curso OWNER TO postgres;

--
-- TOC entry 187 (class 1259 OID 17789)
-- Name: curso_curso_id_seq; Type: SEQUENCE; Schema: flash; Owner: postgres
--

CREATE SEQUENCE curso_curso_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE curso_curso_id_seq OWNER TO postgres;

--
-- TOC entry 2313 (class 0 OID 0)
-- Dependencies: 187
-- Name: curso_curso_id_seq; Type: SEQUENCE OWNED BY; Schema: flash; Owner: postgres
--

ALTER SEQUENCE curso_curso_id_seq OWNED BY curso.curso_id;


--
-- TOC entry 188 (class 1259 OID 17791)
-- Name: dia_semana; Type: TABLE; Schema: flash; Owner: postgres
--

CREATE TABLE dia_semana (
    dia_semana_id integer NOT NULL,
    nome_dia character varying NOT NULL
);


ALTER TABLE dia_semana OWNER TO postgres;

--
-- TOC entry 189 (class 1259 OID 17797)
-- Name: dia_semana_dia_semana_id_seq; Type: SEQUENCE; Schema: flash; Owner: postgres
--

CREATE SEQUENCE dia_semana_dia_semana_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE dia_semana_dia_semana_id_seq OWNER TO postgres;

--
-- TOC entry 2314 (class 0 OID 0)
-- Dependencies: 189
-- Name: dia_semana_dia_semana_id_seq; Type: SEQUENCE OWNED BY; Schema: flash; Owner: postgres
--

ALTER SEQUENCE dia_semana_dia_semana_id_seq OWNED BY dia_semana.dia_semana_id;


--
-- TOC entry 190 (class 1259 OID 17799)
-- Name: disciplina; Type: TABLE; Schema: flash; Owner: postgres
--

CREATE TABLE disciplina (
    disciplina_id integer NOT NULL,
    nome character varying NOT NULL,
    carga_horaria integer NOT NULL,
    periodo integer NOT NULL,
    curso_id integer NOT NULL,
    area_conhecimento_id integer NOT NULL
);


ALTER TABLE disciplina OWNER TO postgres;

--
-- TOC entry 191 (class 1259 OID 17805)
-- Name: disciplina_disciplina_id_seq; Type: SEQUENCE; Schema: flash; Owner: postgres
--

CREATE SEQUENCE disciplina_disciplina_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE disciplina_disciplina_id_seq OWNER TO postgres;

--
-- TOC entry 2315 (class 0 OID 0)
-- Dependencies: 191
-- Name: disciplina_disciplina_id_seq; Type: SEQUENCE OWNED BY; Schema: flash; Owner: postgres
--

ALTER SEQUENCE disciplina_disciplina_id_seq OWNED BY disciplina.disciplina_id;


--
-- TOC entry 192 (class 1259 OID 17807)
-- Name: endereco; Type: TABLE; Schema: flash; Owner: postgres
--

CREATE TABLE endereco (
    endereco_id integer NOT NULL,
    municipio character varying NOT NULL,
    bairro character varying NOT NULL,
    endereco character varying NOT NULL,
    numero integer NOT NULL,
    cep character varying NOT NULL
);


ALTER TABLE endereco OWNER TO postgres;

--
-- TOC entry 193 (class 1259 OID 17813)
-- Name: endereco_endereco_id_seq; Type: SEQUENCE; Schema: flash; Owner: postgres
--

CREATE SEQUENCE endereco_endereco_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE endereco_endereco_id_seq OWNER TO postgres;

--
-- TOC entry 2316 (class 0 OID 0)
-- Dependencies: 193
-- Name: endereco_endereco_id_seq; Type: SEQUENCE OWNED BY; Schema: flash; Owner: postgres
--

ALTER SEQUENCE endereco_endereco_id_seq OWNED BY endereco.endereco_id;


--
-- TOC entry 194 (class 1259 OID 17815)
-- Name: espaco; Type: TABLE; Schema: flash; Owner: postgres
--

CREATE TABLE espaco (
    espaco_id integer NOT NULL,
    bloco character varying NOT NULL,
    numero integer NOT NULL,
    tipo_id integer NOT NULL
);


ALTER TABLE espaco OWNER TO postgres;

--
-- TOC entry 195 (class 1259 OID 17821)
-- Name: espaco_espaco_id_seq; Type: SEQUENCE; Schema: flash; Owner: postgres
--

CREATE SEQUENCE espaco_espaco_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE espaco_espaco_id_seq OWNER TO postgres;

--
-- TOC entry 2317 (class 0 OID 0)
-- Dependencies: 195
-- Name: espaco_espaco_id_seq; Type: SEQUENCE OWNED BY; Schema: flash; Owner: postgres
--

ALTER SEQUENCE espaco_espaco_id_seq OWNED BY espaco.espaco_id;


--
-- TOC entry 196 (class 1259 OID 17823)
-- Name: horario; Type: TABLE; Schema: flash; Owner: postgres
--

CREATE TABLE horario (
    horario_id integer NOT NULL,
    hora_inicio integer DEFAULT 0 NOT NULL,
    minuto_inicio integer DEFAULT 0 NOT NULL,
    hora_fim integer DEFAULT 0 NOT NULL,
    minuto_fim integer DEFAULT 0 NOT NULL
);


ALTER TABLE horario OWNER TO postgres;

--
-- TOC entry 197 (class 1259 OID 17830)
-- Name: horario_horario_id_seq; Type: SEQUENCE; Schema: flash; Owner: postgres
--

CREATE SEQUENCE horario_horario_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE horario_horario_id_seq OWNER TO postgres;

--
-- TOC entry 2318 (class 0 OID 0)
-- Dependencies: 197
-- Name: horario_horario_id_seq; Type: SEQUENCE OWNED BY; Schema: flash; Owner: postgres
--

ALTER SEQUENCE horario_horario_id_seq OWNED BY horario.horario_id;


--
-- TOC entry 202 (class 1259 OID 17845)
-- Name: requisito_disciplina; Type: TABLE; Schema: flash; Owner: postgres
--

CREATE TABLE requisito_disciplina (
    disciplina_id integer NOT NULL,
    disciplina_pre_requisito_id integer NOT NULL
);


ALTER TABLE requisito_disciplina OWNER TO postgres;

--
-- TOC entry 198 (class 1259 OID 17832)
-- Name: professor; Type: TABLE; Schema: flash; Owner: postgres
--

CREATE TABLE professor (
    professor_id integer NOT NULL,
    nome character varying NOT NULL,
    email character varying,
    data_nascimento date,
    rg character varying,
    cpf character varying,
    matricula character varying NOT NULL,
    endereco_id integer NOT NULL
);


ALTER TABLE professor OWNER TO postgres;

--
-- TOC entry 199 (class 1259 OID 17838)
-- Name: professor_disciplina; Type: TABLE; Schema: flash; Owner: postgres
--

CREATE TABLE professor_disciplina (
    professor_disciplina_id integer NOT NULL,
    professor_id integer NOT NULL,
    disciplina_id integer NOT NULL
);


ALTER TABLE professor_disciplina OWNER TO postgres;

--
-- TOC entry 200 (class 1259 OID 17841)
-- Name: professor_disciplina_professor_disciplina_id_seq; Type: SEQUENCE; Schema: flash; Owner: postgres
--

CREATE SEQUENCE professor_disciplina_professor_disciplina_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE professor_disciplina_professor_disciplina_id_seq OWNER TO postgres;

--
-- TOC entry 2319 (class 0 OID 0)
-- Dependencies: 200
-- Name: professor_disciplina_professor_disciplina_id_seq; Type: SEQUENCE OWNED BY; Schema: flash; Owner: postgres
--

ALTER SEQUENCE professor_disciplina_professor_disciplina_id_seq OWNED BY professor_disciplina.professor_disciplina_id;


--
-- TOC entry 201 (class 1259 OID 17843)
-- Name: professor_professor_id_seq; Type: SEQUENCE; Schema: flash; Owner: postgres
--

CREATE SEQUENCE professor_professor_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE professor_professor_id_seq OWNER TO postgres;

--
-- TOC entry 2320 (class 0 OID 0)
-- Dependencies: 201
-- Name: professor_professor_id_seq; Type: SEQUENCE OWNED BY; Schema: flash; Owner: postgres
--

ALTER SEQUENCE professor_professor_id_seq OWNED BY professor.professor_id;


--
-- TOC entry 203 (class 1259 OID 17848)
-- Name: requisito_periodo; Type: TABLE; Schema: flash; Owner: postgres
--

CREATE TABLE requisito_periodo (
    disciplina_id integer NOT NULL,
    periodo integer NOT NULL
);


ALTER TABLE requisito_periodo OWNER TO postgres;

--
-- TOC entry 204 (class 1259 OID 17851)
-- Name: semestre; Type: TABLE; Schema: flash; Owner: postgres
--

CREATE TABLE semestre (
    semestre_id integer NOT NULL,
    ano integer NOT NULL,
    semestre integer NOT NULL
);


ALTER TABLE semestre OWNER TO postgres;

--
-- TOC entry 205 (class 1259 OID 17854)
-- Name: semestre_semestre_id_seq; Type: SEQUENCE; Schema: flash; Owner: postgres
--

CREATE SEQUENCE semestre_semestre_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE semestre_semestre_id_seq OWNER TO postgres;

--
-- TOC entry 2321 (class 0 OID 0)
-- Dependencies: 205
-- Name: semestre_semestre_id_seq; Type: SEQUENCE OWNED BY; Schema: flash; Owner: postgres
--

ALTER SEQUENCE semestre_semestre_id_seq OWNED BY semestre.semestre_id;


--
-- TOC entry 206 (class 1259 OID 17856)
-- Name: sub_area; Type: TABLE; Schema: flash; Owner: postgres
--

CREATE TABLE sub_area (
    area_conhecimento_id integer NOT NULL,
    sub_area_conhecimento_id integer NOT NULL
);


ALTER TABLE sub_area OWNER TO postgres;

--
-- TOC entry 207 (class 1259 OID 17859)
-- Name: sub_area_conhecimento_area_conhecimento_id_seq; Type: SEQUENCE; Schema: flash; Owner: postgres
--

CREATE SEQUENCE sub_area_conhecimento_area_conhecimento_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE sub_area_conhecimento_area_conhecimento_id_seq OWNER TO postgres;

--
-- TOC entry 2322 (class 0 OID 0)
-- Dependencies: 207
-- Name: sub_area_conhecimento_area_conhecimento_id_seq; Type: SEQUENCE OWNED BY; Schema: flash; Owner: postgres
--

ALTER SEQUENCE sub_area_conhecimento_area_conhecimento_id_seq OWNED BY sub_area.area_conhecimento_id;


--
-- TOC entry 208 (class 1259 OID 17861)
-- Name: tipo_espaco; Type: TABLE; Schema: flash; Owner: postgres
--

CREATE TABLE tipo_espaco (
    tipo_id integer NOT NULL,
    descricao character varying NOT NULL
);


ALTER TABLE tipo_espaco OWNER TO postgres;

--
-- TOC entry 209 (class 1259 OID 17867)
-- Name: tipo_espaco_tipo_id_seq; Type: SEQUENCE; Schema: flash; Owner: postgres
--

CREATE SEQUENCE tipo_espaco_tipo_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE tipo_espaco_tipo_id_seq OWNER TO postgres;

--
-- TOC entry 2323 (class 0 OID 0)
-- Dependencies: 209
-- Name: tipo_espaco_tipo_id_seq; Type: SEQUENCE OWNED BY; Schema: flash; Owner: postgres
--

ALTER SEQUENCE tipo_espaco_tipo_id_seq OWNED BY tipo_espaco.tipo_id;


--
-- TOC entry 2108 (class 2604 OID 17870)
-- Name: area_conhecimento_id; Type: DEFAULT; Schema: flash; Owner: postgres
--

ALTER TABLE ONLY area_conhecimento ALTER COLUMN area_conhecimento_id SET DEFAULT nextval('area_conhecimento_area_conhecimento_id_seq'::regclass);


--
-- TOC entry 2109 (class 2604 OID 17871)
-- Name: curso_id; Type: DEFAULT; Schema: flash; Owner: postgres
--

ALTER TABLE ONLY curso ALTER COLUMN curso_id SET DEFAULT nextval('curso_curso_id_seq'::regclass);


--
-- TOC entry 2110 (class 2604 OID 17872)
-- Name: dia_semana_id; Type: DEFAULT; Schema: flash; Owner: postgres
--

ALTER TABLE ONLY dia_semana ALTER COLUMN dia_semana_id SET DEFAULT nextval('dia_semana_dia_semana_id_seq'::regclass);


--
-- TOC entry 2111 (class 2604 OID 17873)
-- Name: disciplina_id; Type: DEFAULT; Schema: flash; Owner: postgres
--

ALTER TABLE ONLY disciplina ALTER COLUMN disciplina_id SET DEFAULT nextval('disciplina_disciplina_id_seq'::regclass);


--
-- TOC entry 2112 (class 2604 OID 17874)
-- Name: endereco_id; Type: DEFAULT; Schema: flash; Owner: postgres
--

ALTER TABLE ONLY endereco ALTER COLUMN endereco_id SET DEFAULT nextval('endereco_endereco_id_seq'::regclass);


--
-- TOC entry 2113 (class 2604 OID 17875)
-- Name: espaco_id; Type: DEFAULT; Schema: flash; Owner: postgres
--

ALTER TABLE ONLY espaco ALTER COLUMN espaco_id SET DEFAULT nextval('espaco_espaco_id_seq'::regclass);


--
-- TOC entry 2118 (class 2604 OID 17876)
-- Name: horario_id; Type: DEFAULT; Schema: flash; Owner: postgres
--

ALTER TABLE ONLY horario ALTER COLUMN horario_id SET DEFAULT nextval('horario_horario_id_seq'::regclass);


--
-- TOC entry 2119 (class 2604 OID 17877)
-- Name: professor_id; Type: DEFAULT; Schema: flash; Owner: postgres
--

ALTER TABLE ONLY professor ALTER COLUMN professor_id SET DEFAULT nextval('professor_professor_id_seq'::regclass);


--
-- TOC entry 2120 (class 2604 OID 17878)
-- Name: professor_disciplina_id; Type: DEFAULT; Schema: flash; Owner: postgres
--

ALTER TABLE ONLY professor_disciplina ALTER COLUMN professor_disciplina_id SET DEFAULT nextval('professor_disciplina_professor_disciplina_id_seq'::regclass);


--
-- TOC entry 2121 (class 2604 OID 17879)
-- Name: semestre_id; Type: DEFAULT; Schema: flash; Owner: postgres
--

ALTER TABLE ONLY semestre ALTER COLUMN semestre_id SET DEFAULT nextval('semestre_semestre_id_seq'::regclass);


--
-- TOC entry 2122 (class 2604 OID 17880)
-- Name: area_conhecimento_id; Type: DEFAULT; Schema: flash; Owner: postgres
--

ALTER TABLE ONLY sub_area ALTER COLUMN area_conhecimento_id SET DEFAULT nextval('sub_area_conhecimento_area_conhecimento_id_seq'::regclass);


--
-- TOC entry 2123 (class 2604 OID 17881)
-- Name: tipo_id; Type: DEFAULT; Schema: flash; Owner: postgres
--

ALTER TABLE ONLY tipo_espaco ALTER COLUMN tipo_id SET DEFAULT nextval('tipo_espaco_tipo_id_seq'::regclass);


--
-- TOC entry 2282 (class 0 OID 17775)
-- Dependencies: 184
-- Data for Name: area_conhecimento; Type: TABLE DATA; Schema: flash; Owner: postgres
--

INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1, 'Ciências Exatas e da Terra');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (2, 'Matemática');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (3, 'Álgebra');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (4, 'Conjuntos');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (5, 'Lógica Matemática');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (6, 'Teoria dos Números');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (7, 'Grupos de Álgebra Não-Comutaviva');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (8, 'Álgebra Comutativa');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (9, 'Geometria Algébrica');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (10, 'Análise');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (11, 'Análise Complexa');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (12, 'Análise Funcional');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (13, 'Análise Funcional Não-Linear');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (14, 'Equações Diferenciais Ordinárias');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (15, 'Equações Diferenciais Parciais');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (16, 'Equações Diferenciais Funcionais');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (17, 'Geometria e Topologia');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (18, 'Geometria Diferencial');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (19, 'Topologia Algébrica');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (20, 'Topologia das Variedades');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (21, 'Sistemas Dinâmicos');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (22, 'Teoria das Singularidades e Teoria das Catástrofes');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (23, 'Teoria das Folheações');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (24, 'Matemática Aplicada');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (25, 'Física Matemática');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (26, 'Análise Numérica');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (27, 'Matemática Discreta e Combinatória');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (28, 'Probabilidade e Estatística');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (29, 'Probabilidade');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (30, 'Teoria Geral e Fundamentos da Probabilidade');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (31, 'Teoria Geral e Processos Estocásticos');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (32, 'Teoremas de Limite');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (33, 'Processos Markovianos');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (34, 'Análise Estocástica');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (35, 'Processos Estocásticos Especiais');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (36, 'Estatística');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (37, 'Fundamentos da Estatística');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (38, 'Inferência Paramétrica');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (39, 'Inferência Não-Paramétrica');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (40, 'Inferência em Processos Estocásticos');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (41, 'Análise Multivariada');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (42, 'Regressão e Correlação');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (43, 'Planejamento de Experimentos');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (44, 'Análise de Dados');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (45, 'Probabilidade e Estatística Aplicadas');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (46, 'Ciência da Computação');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (47, 'Teoria da Computação');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (48, 'Computabilidade e Modelos de Computação');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (49, 'Linguagem Formais e Autômatos');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (50, 'Análise de Algoritmos e Complexidade de Computação');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (51, 'Lógicas e Semântica de Programas');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (52, 'Matemática da Computação');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (53, 'Matemática Simbólica');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (54, 'Modelos Analíticos e de Simulação');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (55, 'Metodologia e Técnicas da Computação');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (56, 'Linguagens de Programação');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (57, 'Engenharia de Software');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (58, 'Banco de Dados');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (59, 'Sistemas de Informação');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (60, 'Processamento Gráfico (Graphics)');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (61, 'Sistemas de Computação');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (62, 'Hardware');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (63, 'Arquitetura de Sistemas de Computação');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (64, 'Software Básico');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (65, 'Teleinformática');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (66, 'Astronomia');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (67, 'Astronomia de Posição e Mecânica Celeste');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (68, 'Astronomia Fundamental');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (69, 'Astronomia Dinâmica');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (70, 'Astrofísica Estelar');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (71, 'Astrofísica do Meio Interestelar');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (72, 'Meio Interestelar');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (73, 'Nebulosa');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (74, 'Astrofísica Extragalactica');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (75, 'Galáxias');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (76, 'Aglomerados de Galáxias');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (77, 'Quasares');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (78, 'Cosmologia');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (79, 'Astrofísica do Sistema Solar');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (80, 'Física Solar');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (81, 'Movimento da Terra');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (82, 'Sistema Planetário');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (83, 'Instrumentação Astronômica');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (84, 'Astronomia Ótica');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (85, 'Radioastronomia');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (86, 'Astronomia Espacial');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (87, 'Processamento de Dados Astronômicos');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (88, 'Física');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (89, 'Física Geral');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (90, 'Métodos Matemáticos da Física');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (91, 'Física Clássica e Física Quântica; Mecânica e Campos');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (92, 'Relatividade e Gravitação');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (93, 'Física Estatística e Termodinâmica');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (94, 'Metrologia, Técnicas Gerais de Laboratório, Sistema de Instrumentação');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (95, 'Instrumentação Específica de Uso Geral em Física');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (96, 'Áreas Clássicas de Fenomenologia e suas Aplicações');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (97, 'Eletricidade e Magnetismo; Campos e Partículas Carregadas');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (98, 'Ótica');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (99, 'Acústica');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (100, 'Transferência de Calor; Processos Térmicos e Termodinâmicos');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (101, 'Mecânica, Elasticidade e Reologia');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (102, 'Dinâmica dos Fluídos');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (103, 'Física das Partículas Elementares e Campos');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (104, 'Teoria Geral de Partículas e Campos');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (105, 'Teorias Específicas e Modelos de Interação; Sistemática de Partículas; Raios Cósmicos');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (106, 'Reações Específicas e Fenomiologia de Partículas');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (107, 'Propriedades de Partículas Específicas e Ressonâncias');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (108, 'Física Nuclear');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (109, 'Estrutura Nuclear');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (110, 'Desintegração Nuclear e Radioatividade');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (111, 'Reações Nucleares e Espalhamento Geral');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (112, 'Reações Nucleares e Espalhamento (Reações Específicas)');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (113, 'Propriedades de Núcleos Específicos');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (114, 'Métodos Experimentais e Instrumentação para Partículas Elementares e Física Nuclear');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (115, 'Física Atômica e Molecular');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (116, 'Estrutura Eletrônica de Átomos e Moléculas; Teoria');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (117, 'Espectros Atômicos e Integração de Fótons');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (118, 'Espectros Moleculares e Interações de Fótons com Moléculas');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (119, 'Processos de Colisão e Interações de Átomos e Moléculas');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (120, 'Inf. sobre Átomos e Moléculas Obtidos Experimentalmente; Instrumentação e Técnicas');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (121, 'Estudos de Átomos e Moléculas Especiais');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (122, 'Física dos Fluídos, Física de Plasmas e Descargas Elétricas');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (250, 'Genética Animal');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (123, 'Cinética e Teoria de Transporte de Fluídos; Propriedades Físicas de Gases');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (124, 'Física de Plasmas e Descargas Elétricas');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (125, 'Física da Matéria Condensada');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (126, 'Estrutura de Líquidos e Sólidos; Cristalografia');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (127, 'Propriedades Mecânicas e Acústicas da Matéria Condensada');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (128, 'Dinâmica da Rede e Estatística de Cristais');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (129, 'Equação de Estado, Equilíbrio de Fases e Transições de Fase');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (130, 'Propriedades Térmicas da Matéria Condensada');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (131, 'Propriedades de Transportes de Matéria Condensada (Não Eletrônica)');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (132, 'Campos Quânticos e Sólidos, Hélio, Líquido, Sólido');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (133, 'Superfícies e Interfaces; Películas e Filamentos');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (134, 'Estados Eletrônicos');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (135, 'Transp. Eletrônicos e Prop. Elétricas de Superfícies; Interfaces e Películas');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (136, 'Estruturas Eletrônicas e Propriedades Elétricas de Superfícies; Interf. e Partículas');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (137, 'Supercondutividade');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (138, 'Materiais Magnéticos e Propriedades Magnéticas');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (139, 'Ressonância Mag. e Relax. na Mat. Condens; Efeitos Mosbauer; Corr. Ang. Pertubada');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (140, 'Materiais Dielétricos e Propriedades Dielétricas');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (141, 'Prop. Óticas e Espectrosc. da Mat. Condens; Outras Inter. da Mat. com Rad. e Part.');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (142, 'Emissão Eletrônica e Iônica por Líquidos e Sólidos; Fenômenos de Impacto');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (143, 'Química');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (144, 'Química Orgânica');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (145, 'Estrutura, Conformação e Estereoquímica');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (146, 'Síntese Orgânica');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (147, 'Físico-Química Orgânica');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (148, 'Fotoquímica Orgânica');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (149, 'Química dos Produtos Naturais');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (150, 'Evolução, Sistemática e Ecologia Química');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (151, 'Polímeros e Colóides');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (152, 'Química Inorgânica');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (153, 'Campos de Coordenação');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (154, 'Não-Metais e Seus Compostos');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (155, 'Compostos Organo-Metálicos');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (156, 'Determinação de Estrutura de Compostos Inorgânicos');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (157, 'Foto-Química Inorgânica');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (158, 'Físico Química Inorgânica');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (159, 'Química Bio-Inorgânica');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (160, 'Físico-Química');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (161, 'Cinética Química e Catálise');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (162, 'Eletroquímica');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (163, 'Espectroscopia');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (164, 'Química de Interfaces');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (165, 'Química do Estado Condensado');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (166, 'Química Nuclear e Radioquímica');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (167, 'Química Teórica');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (168, 'Termodinâmica Química');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (169, 'Química Analítica');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (170, 'Separação');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (171, 'Métodos Óticos de Análise');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (172, 'Eletroanalítica');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (173, 'Gravimetria');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (174, 'Titimetria');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (175, 'Instrumentação Analítica');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (176, 'Análise de Traços e Química Ambiental');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (177, 'Geociências');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (178, 'Geologia');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (179, 'Mineralogia');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (180, 'Petrologia');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (181, 'Geoquímica');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (182, 'Geologia Regional');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (183, 'Geotectônica');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (184, 'Geocronologia');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (185, 'Cartografia Geológica');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (186, 'Metalogenia');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (187, 'Hidrogeologia');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (188, 'Prospecção Mineral');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (189, 'Sedimentologia');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (190, 'Paleontologia Estratigráfica');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (191, 'Estratigrafia');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (192, 'Geologia Ambiental');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (193, 'Geofísica');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (194, 'Geomagnetismo');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (195, 'Sismologia');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (196, 'Geotermia e Fluxo Térmico');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (197, 'Propriedades Físicas das Rochas');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (198, 'Geofísica Nuclear');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (199, 'Sensoriamento Remoto');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (200, 'Aeronomia');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (201, 'Desenvolvimento de Instrumentação Geofísica');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (202, 'Geofísica Aplicada');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (203, 'Meteorologia');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (204, 'Meteorologia Dinâmica');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (205, 'Meteorologia Sinótica');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (206, 'Meteorologia Física');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (207, 'Química da Atmosfera');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (208, 'Instrumentação Meteorológica');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (209, 'Climatologia');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (210, 'Micrometeorologia');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (211, 'Sensoriamento Remoto da Atmosfera');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (212, 'Meteorologia Aplicada');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (213, 'Geodésia');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (214, 'Geodésia Física');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (215, 'Geodésia Geométrica');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (216, 'Geodésia Celeste');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (217, 'Fotogrametria');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (218, 'Cartografia Básica');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (219, 'Geografia Física');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (220, 'Geomorfologia');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (221, 'Climatologia Geográfica');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (222, 'Pedologia');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (223, 'Hidrogeografia');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (224, 'Geoecologia');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (225, 'Fotogeografia (Físico-Ecológica)');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (226, 'Geocartografia');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (227, 'Oceanografia');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (228, 'Oceanografia Biológica');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (229, 'Interação entre os Organismos Marinhos e os Parâmetros Ambientais');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (230, 'Oceanografia Física');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (231, 'Variáveis Físicas da Água do Mar');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (232, 'Movimento da Água do Mar');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (233, 'Origem das Massas de Água');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (234, 'Interação do Oceano com o Leito do Mar');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (235, 'Interação do Oceano com a Atmosfera');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (236, 'Oceanografia Química');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (237, 'Propriedades Químicas da Água do Mar');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (238, 'Interações Químico-Biológicas/Geológicas das Substâncias Químicas da Água do Mar');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (239, 'Oceanografia Geológica');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (240, 'Geomorfologia Submarina');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (241, 'Sedimentologia Marinha');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (242, 'Geofísica Marinha');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (243, 'Geoquímica Marinha');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (244, 'Ciências Biológicas');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (245, 'Biologia Geral');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (246, 'Genética');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (247, 'Genética Quantitativa');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (248, 'Genética Molecular e de Microorganismos');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (249, 'Genética Vegetal');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (251, 'Genética Humana e Médica');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (252, 'Mutagenese');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (253, 'Botânica');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (254, 'Paleobotânica');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (255, 'Morfologia Vegetal');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (256, 'Morfologia Externa');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (257, 'Citologia Vegetal');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (258, 'Anatomia Vegetal');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (259, 'Palinologia');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (260, 'Fisiologia Vegetal');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (261, 'Nutrição e Crescimento Vegetal');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (262, 'Reprodução Vegetal');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (263, 'Ecofisiologia Vegetal');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (264, 'Taxonomia Vegetal');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (265, 'Taxonomia de Criptógamos');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (266, 'Taxonomia de Fanerógamos');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (267, 'Fitogeografia');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (268, 'Botânica Aplicada');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (269, 'Zoologia');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (270, 'Paleozoologia');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (271, 'Morfologia dos Grupos Recentes');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (272, 'Fisiologia dos Grupos Recentes');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (273, 'Comportamento Animal');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (274, 'Taxonomia dos Grupos Recentes');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (275, 'Zoologia Aplicada');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (276, 'Conservação das Espécies Animais');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (277, 'Utilização dos Animais');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (278, 'Controle Populacional de Animais');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (279, 'Ecologia');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (280, 'Ecologia Teórica');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (281, 'Ecologia de Ecossistemas');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (282, 'Ecologia Aplicada');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (283, 'Morfologia');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (284, 'Citologia e Biologia Celular');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (285, 'Embriologia');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (286, 'Histologia');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (287, 'Anatomia');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (288, 'Anatomia Humana');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (289, 'Anatomia Animal');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (290, 'Fisiologia');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (291, 'Fisiologia Geral');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (292, 'Fisiologia de Órgãos e Sistemas');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (293, 'Neurofisiologia');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (294, 'Fisiologia Cardiovascular');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (295, 'Fisiologia da Respiração');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (296, 'Fisiologia Renal');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (297, 'Fisiologia Endócrina');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (298, 'Fisiologia da Digestão');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (299, 'Cinesiologia');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (300, 'Fisiologia do Esforço');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (301, 'Fisiologia Comparada');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (302, 'Bioquímica');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (303, 'Química de Macromoléculas');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (304, 'Proteínas');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (305, 'Lipídeos');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (306, 'Glicídeos');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (307, 'Bioquímica dos Microorganismos');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (308, 'Metabolismo e Bioenergética');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (309, 'Biologia Molecular');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (310, 'Enzimologia');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (311, 'Biofísica');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (312, 'Biofísica Molecular');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (313, 'Biofísica Celular');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (314, 'Biofísica de Processos e Sistemas');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (315, 'Radiologia e Fotobiologia');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (316, 'Farmacologia');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (317, 'Farmacologia Geral');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (318, 'Farmacocinética');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (319, 'Biodisponibilidade');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (320, 'Farmacologia Autonômica');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (321, 'Neuropsicofarmacologia');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (322, 'Farmacologia Cardiorenal');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (323, 'Farmacologia Bioquímica e Molecular');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (324, 'Etnofarmacologia');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (325, 'Toxicologia');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (326, 'Farmacologia Clínica');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (327, 'Imunologia');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (328, 'Imunoquímica');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (329, 'Imunologia Celular');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (330, 'Imunogenética');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (331, 'Imunologia Aplicada');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (332, 'Microbiologia');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (333, 'Biologia e Fisiologia dos Microorganismos');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (334, 'Virologia');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (335, 'Bacterologia');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (336, 'Micologia');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (337, 'Microbiologia Aplicada');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (338, 'Microbiologia Médica');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (339, 'Microbiologia Industrial e de Fermentação');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (340, 'Parasitologia');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (341, 'Protozoologia de Parasitos');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (342, 'Protozoologia Parasitária Humana');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (343, 'Protozoologia Parasitária Animal');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (344, 'Helmintologia de Parasitos');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (345, 'Helmintologia Humana');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (346, 'Helmintologia Animal');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (347, 'Entomologia e Malacologia de Parasitos e Vetores');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (348, 'Engenharias');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (349, 'Engenharia Civil');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (350, 'Construção Civil');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (351, 'Materiais e Componentes de Construção');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (352, 'Processos Construtivos');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (353, 'Instalações Prediais');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (354, 'Estruturas');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (355, 'Estruturas de Concreto');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (356, 'Estruturas de Madeiras');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (357, 'Estruturas Metálicas');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (358, 'Mecânica das Estruturas');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (359, 'Geotécnica');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (360, 'Fundações e Escavações');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (361, 'Mecânicas das Rochas');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (362, 'Mecânicas dos Solos');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (363, 'Obras de Terra e Enrocamento');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (364, 'Pavimentos');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (365, 'Engenharia Hidráulica');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (366, 'Hidráulica');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (367, 'Hidrologia');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (368, 'Infra-Estrutura de Transportes');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (369, 'Aeroportos; Projeto e Construção');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (370, 'Ferrovias; Projetos e Construção');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (371, 'Portos e Vias Nevegáveis; Projeto e Construção');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (372, 'Rodovias; Projeto e Construção');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (373, 'Engenharia de Minas');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (374, 'Pesquisa Mineral');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (375, 'Caracterização do Minério');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (376, 'Dimensionamento de Jazidas');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (377, 'Lavra');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (378, 'Lavra a Céu Aberto');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (379, 'Lavra de Mina Subterrânea');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (380, 'Equipamentos de Lavra');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (381, 'Tratamento de Minérios');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (382, 'Métodos de Concentração e Enriquecimento de Minérios');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (383, 'Equipamentos de Beneficiamento de Minérios');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (384, 'Engenharia de Materiais e Metalúrgica');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (385, 'Instalações e Equipamentos Metalúrgicos');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (386, 'Instalações Metalúrgicas');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (387, 'Equipamentos Metalúrgicos');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (388, 'Metalurgia Extrativa');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (389, 'Aglomeração');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (390, 'Eletrometalurgia');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (391, 'Hidrometalurgia');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (392, 'Pirometalurgia');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (393, 'Metalurgia de Transformação');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (394, 'Conformação Mecânica');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (395, 'Fundição');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (396, 'Metalurgia de Pó');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (397, 'Recobrimentos');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (398, 'Soldagem');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (399, 'Tratamentos Térmicos, Mecânicos e Químicos');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (400, 'Usinagem');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (401, 'Metalurgia Física');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (402, 'Estrutura dos Metais e Ligas');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (403, 'Propriedades Físicas dos Metais e Ligas');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (404, 'Propriedades Mecânicas dos Metais e Ligas');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (405, 'Transformação de Fases');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (406, 'Corrosão');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (407, 'Materiais Não-Metálicos');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (408, 'Extração e Transformação de Materiais');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (409, 'Cerâmicos');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (410, 'Materiais Conjugados Não-Metálicos');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (411, 'Polímeros, Aplicações');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (412, 'Engenharia Elétrica');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (413, 'Materiais Elétricos');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (414, 'Materiais Condutores');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (415, 'Materiais e Componentes Semicondutores');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (416, 'Materiais e Dispositivos Supercondutores');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (417, 'Materiais Dielétricos, Piezoelétricos e Ferroelétricos');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (418, 'Materiais e Componentes Eletroóticos e Magnetoóticos, Materiais Fotoelétricos');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (419, 'Materiais e Dispositivos Magnéticos');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (420, 'Medidas Elétricas, Magnéticas e Eletrônicas; Instrumentação');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (421, 'Medidas Elétricas');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (422, 'Medidas Magnéticas');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (423, 'Instrumentação Eletromecânica');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (424, 'Instrumentação Eletrônica');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (425, 'Sistemas Eletrônicos de Medida e de Controle');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (426, 'Circuitos Elétricos, Magnéticos e Eletrônicos');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (427, 'Teoria Geral dos Circuitos Elétricos');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (428, 'Circuitos Lineares e Não-Lineares');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (429, 'Circuitos Eletrônicos');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (430, 'Circuitos Magnéticos , Magnetismos e Eletromagnetismos');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (431, 'Sistemas Elétricos de Potência');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (432, 'Geração da Energia Elétrica');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (433, 'Transmissão da Energia Elétrica, Distribuição da Energia Elétrica');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (434, 'Conversão e Retificação da Energia Elétrica');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (435, 'Medição, Controle, Correção e Proteção de Sistemas Elétricos  de Potência');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (436, 'Máquinas Elétricas e Dispositivos de Potência');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (437, 'Instalações Elétricas e Industriais');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (438, 'Eletrônica Industrial, Sistemas e Controles Eletrônicos');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (439, 'Eletrônica Industrial');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (440, 'Automação Eletrônica de Processos Elétricos e Industriais');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (441, 'Controle de Processos Eletrônicos, Retroalimentação');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (442, 'Telecomunicações');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (443, 'Teoria Eletromagnetica, Microondas, Propagação de Ondas, Antenas');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (444, 'Radionavegação e Radioastronomia');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (445, 'Sistemas deTelecomunicações');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (446, 'Engenharia Mecânica');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (447, 'Fenômenos de Transporte');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (448, 'Transferência de Calor');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (449, 'Mecânica dos Fluídos');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (450, 'Dinâmica dos Gases');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (451, 'Princípios Variacionais e Métodos Numéricos');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (452, 'Engenharia Térmica');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (453, 'Termodinâmica');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (454, 'Controle Ambiental');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (455, 'Aproveitamento da Energia');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (456, 'Mecânica dos Sólidos');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (457, 'Mecânica dos Corpos Sólidos, Elásticos e Plásticos');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (458, 'Dinâmica dos Corpos Rígidos, Elásticos e Plásticos');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (459, 'Análise de Tensões');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (460, 'Termoelasticidade');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (461, 'Projetos de Máquinas');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (462, 'Teoria dos Mecanismos');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (463, 'Estática e Dinâmica Aplicada');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (464, 'Elementos de Máquinas');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (465, 'Fundamentos Gerais de Projetos das Máquinas');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (466, 'Máquinas, Motores e Equipamentos');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (467, 'Métodos de Síntese e Otimização Aplicados ao Projeto Mecânico');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (468, 'Controle de Sistemas Mecânicos');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (469, 'Aproveitamento de Energia');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (470, 'Processos de Fabricação');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (471, 'Matrizes e Ferramentas');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (472, 'Maquinas de Usinagem e Conformação');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (473, 'Controle Numérico');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (474, 'Robotização');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (475, 'Processos de Fabricação, Seleção Econômica');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (476, 'Engenharia Química');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (477, 'Processos Industriais de Engenharia Química');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (478, 'Processos Bioquímicos');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (479, 'Processos Orgânicos');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (480, 'Processos Inorgânicos');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (481, 'Operações Industriais e Equipamentos para Engenharia Química');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (482, 'Reatores Químicos');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (483, 'Operações Características de Processos Bioquímicos');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (484, 'Operações de Separação e Mistura');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (485, 'Tecnologia Química');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (486, 'Balanços Globais de Matéria e Energia');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (487, 'Água');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (488, 'Álcool');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (489, 'Alimentos');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (490, 'Borrachas');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (491, 'Carvão');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (492, 'Cerâmica');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (493, 'Cimento');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (494, 'Couro');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (495, 'Detergentes');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (496, 'Fertilizantes');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (497, 'Medicamentos');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (498, 'Metais Não-Ferrosos');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (499, 'Óleos');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (500, 'Papel e Celulose');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (501, 'Petróleo e Petroquímica');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (502, 'Polímeros');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (503, 'Produtos Naturais');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (504, 'Têxteis');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (505, 'Tratamentos e Aproveitamento de Rejeitos');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (506, 'Xisto');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (507, 'Engenharia Sanitária');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (508, 'Recursos Hídricos');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (509, 'Planejamento Integrado dos Recursos Hídricos');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (510, 'Tecnologia e Problemas Sanitários de Irrigação');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (511, 'Águas Subterráneas e Poços Profundos');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (512, 'Controle de Enchentes e de Barragens');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (513, 'Tratamento de Águas de Abastecimento e Residuárias');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (514, 'Química Sanitária');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (515, 'Processos Simplificados de Tratamento de Águas');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (635, 'Aviões');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (516, 'Técnicas Convencionais de Tratamento de Águas');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (517, 'Técnicas Avançadas de Tratamento de Águas');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (518, 'Estudos e Caracterização de Efluentes Industriais');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (519, 'Layout de Processos Industriais');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (520, 'Resíduos Radioativos');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (521, 'Saneamento Básico');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (522, 'Técnicas de Abastecimento da Água');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (523, 'Drenagem de Águas Residuárias');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (524, 'Drenagem Urbana de Águas Pluviais');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (525, 'Residuos Sólidos, Domésticos e Industriais');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (526, 'Limpeza Pública');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (527, 'Instalações Hidráulico-Sanitárias');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (528, 'Saneamento Ambiental');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (529, 'Ecologia Aplicada a Engenharia Sanitária');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (530, 'Microbiologia Aplicada e Engenharia Sanitária');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (531, 'Parasitologia Aplicada a Engenharia Sanitária');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (532, 'Qualidade do Ar, das Águas e do Solo');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (533, 'Controle da Poluição');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (534, 'Legislação Ambiental');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (535, 'Engenharia de Produção');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (536, 'Gerência de Produção');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (537, 'Planejamento de Instalações Industriais');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (538, 'Planejamento, Projeto e Controle de Sistemas de Produção');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (539, 'Higiene e Segurança do Trabalho');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (540, 'Suprimentos');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (541, 'Garantia de Controle de Qualidade');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (542, 'Pesquisa Operacional');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (543, 'Processos Estocásticos e Teoria das Filas');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (544, 'Programação Linear, Não-Linear, Mista e Dinâmica');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (545, 'Séries Temporais');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (546, 'Teoria dos Grafos');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (547, 'Teoria dos Jogos');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (548, 'Engenharia do Produto');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (549, 'Ergonomia');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (550, 'Metodologia de Projeto do Produto');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (551, 'Processos de Trabalho');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (552, 'Gerência do Projeto e do Produto');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (553, 'Desenvolvimento de Produto');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (554, 'Engenharia Econômica');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (555, 'Estudo de Mercado');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (556, 'Localização Industrial');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (557, 'Análise de Custos');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (558, 'Economia de Tecnologia');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (559, 'Vida Econômica dos Equipamentos');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (560, 'Avaliação de Projetos');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (561, 'Engenharia Nuclear');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (562, 'Aplicações de Radioisótopos');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (563, 'Produção de Radioisótopos');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (564, 'Aplicações Industriais de Radioisótopos');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (565, 'Instrumentação para Medida e Controle de Radiação');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (566, 'Fusão Controlada');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (567, 'Processos Industriais da Fusão Controlada');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (568, 'Problemas Tecnológicos da Fusão Controlada');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (569, 'Combustível Nuclear');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (570, 'Extração de Combustível Nuclear');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (571, 'Conversão, Enriquecimento e Fabricação de Combustível Nuclear');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (572, 'Reprocessamento de Combustível Nuclear');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (573, 'Rejeitos de Combustível Nuclear');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (574, 'Tecnologia dos Reatores');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (575, 'Núcleo do Reator');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (576, 'Materiais Nucleares e Blindagem de Reatores');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (577, 'Transferência de Calor em Reatores');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (578, 'Geração e Integração com Sistemas Elétricos  em Reatores');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (579, 'Instrumentação para Operação e Controle de Reatores');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (580, 'Segurança, Localização e Licenciamento de Reatores');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (581, 'Aspectos Econômicos de Reatores');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (582, 'Engenharia de Transportes');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (583, 'Planejamento de Transportes');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (584, 'Planejamento e Organização do Sistema de Transporte');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (585, 'Economia dos Transportes');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (586, 'Veículos e Equipamentos de Controle');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (587, 'Vias de Transporte');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (588, 'Veículos de Transportes');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (589, 'Estação de Transporte');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (590, 'Equipamentos Auxiliares e Controles');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (591, 'Operações de Transportes');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (592, 'Engenharia de Tráfego');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (593, 'Capacidade de Vias de Transporte');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (594, 'Operação de Sistemas de Transporte');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (595, 'Engenharia Naval e Oceânica');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (596, 'Hidrodinâmica de Navios e Sistemas Oceânicos');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (597, 'Resistência Hidrodinâmica');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (598, 'Propulsão de Navios');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (599, 'Estruturas Navais e Oceânicas');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (600, 'Análise Teórica e Experimental de Estrutura');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (601, 'Dinâmica Estrutural Naval e Oceânica');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (602, 'Síntese Estrutural Naval e Oceânica');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (603, 'Máquinas Marítimas');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (604, 'Análise de Sistemas Propulsores');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (605, 'Controle e Automação de Sistemas Propulsores');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (606, 'Equipamentos Auxiliares do Sistema Propulsivo');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (607, 'Motor de Propulsão');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (608, 'Projeto de Navios e de Sistemas Oceânicos');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (609, 'Projetos de Navios');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (610, 'Projetos de Sistemas Oceânicos Fixos e Semi-Fixos');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (611, 'Projetos de Embarcações Não-Convencionais');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (612, 'Tecnologia de Construção Naval e de Sistemas Oceânicos');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (613, 'Métodos de Fabricação de Navios e Sistemas Oceânicos');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (614, 'Soldagem de Estruturas Navais e Oceânicos');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (615, 'Custos de Construção Naval');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (616, 'Normatização e Certificação de Qualidade de Navios');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (617, 'Engenharia Aeroespacial');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (618, 'Aerodinâmica');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (619, 'Aerodinâmica de Aeronaves Espaciais');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (620, 'Aerodinâmica dos Processos Geofísicos e Interplanetários');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (621, 'Dinâmica de Vôo');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (622, 'Trajetórias e Órbitas');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (623, 'Estabilidade e Controle');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (624, 'Estruturas Aeroespaciais');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (625, 'Aeroelasticicidade');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (626, 'Fadiga');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (627, 'Projeto de Estruturas Aeroespaciais');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (628, 'Materiais e Processos para Engenharia Aeronáutica e Aeroespacial');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (629, 'Propulsão Aeroespacial');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (630, 'Combustão e Escoamento com Reações Químicas');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (631, 'Propulsão de Foguetes');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (632, 'Máquinas de Fluxo');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (633, 'Motores Alternativos');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (634, 'Sistemas Aeroespaciais');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (636, 'Foguetes');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (637, 'Helicópteros');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (638, 'Hovercraft');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (639, 'Satélites e Outros Dispositivos Aeroespaciais');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (640, 'Normatização e Certificação de Qualidade de Aeronaves e Componentes');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (641, 'Manutenção de Sistemas Aeroespaciais');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (642, 'Engenharia Biomédica');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (643, 'Bioengenharia');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (644, 'Processamento de Sinais Biológicos');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (645, 'Modelagem de Fenômenos Biológicos');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (646, 'Modelagem de Sistemas Biológicos');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (647, 'Engenharia Médica');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (648, 'Biomateriais e Materiais Biocompatíveis');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (649, 'Transdutores para Aplicações Biomédicas');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (650, 'Instrumentação Odontológica e Médico-Hospitalar');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (651, 'Tecnologia de Próteses');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (652, 'Ciências da Saúde');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (653, 'Medicina');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (654, 'Clínica Médica');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (655, 'Angiologia');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (656, 'Dermatologia');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (657, 'Alergologia e Imunologia Clínica');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (658, 'Cancerologia');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (659, 'Hematologia');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (660, 'Endocrinologia');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (661, 'Neurologia');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (662, 'Pediatria');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (663, 'Doenças Infecciosas e Parasitárias');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (664, 'Cardiologia');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (665, 'Gastroenterologia');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (666, 'Pneumologia');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (667, 'Nefrologia');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (668, 'Reumatologia');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (669, 'Ginecologia e Obstetrícia');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (670, 'Fisiatria');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (671, 'Oftalmologia');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (672, 'Ortopedia');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (673, 'Cirurgia');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (674, 'Cirurgia Plástica e Restauradora');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (675, 'Cirurgia Otorrinolaringológica');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (676, 'Cirurgia Oftalmológica');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (677, 'Cirurgia Cardiovascular');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (678, 'Cirurgia Toráxica');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (679, 'Cirurgia Gastroenterologia');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (680, 'Cirurgia Pediátrica');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (681, 'Neurocirurgia');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (682, 'Cirurgia Urológica');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (683, 'Cirurgia Proctológica');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (684, 'Cirurgia Ortopédica');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (685, 'Cirurgia Traumatológica');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (686, 'Anestesiologia');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (687, 'Cirurgia Experimental');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (688, 'Saúde Materno-Infantil');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (689, 'Psiquiatria');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (690, 'Anatomia Patológica e Patologia Clínica');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (691, 'Radiologia Médica');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (692, 'Medicina Legal e Deontologia');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (693, 'Odontologia');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (694, 'Clínica Odontológica');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (695, 'Cirurgia Buco-Maxilo-Facial');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (696, 'Ortodontia');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (697, 'Odontopediatria');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (698, 'Periodontia');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (699, 'Endodontia');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (700, 'Radiologia Odontológica');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (701, 'Odontologia Social e Preventiva');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (702, 'Materiais Odontológicos');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (703, 'Farmácia');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (704, 'Farmacotecnia');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (705, 'Farmacognosia');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (706, 'Análise Toxicológica');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (707, 'Análise e Controle de Medicamentos');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (708, 'Bromatologia');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (709, 'Enfermagem');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (710, 'Enfermagem Médico-Cirúrgica');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (711, 'Enfermagem Obstétrica');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (712, 'Enfermagem Pediátrica');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (713, 'Enfermagem Psiquiátrica');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (714, 'Enfermagem de Doenças Contagiosas');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (715, 'Enfermagem de Saúde Pública');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (716, 'Nutrição');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (717, 'Bioquímica da Nutrição');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (718, 'Dietética');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (719, 'Análise Nutricional de População');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (720, 'Desnutrição e Desenvolvimento Fisiológico');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (721, 'Saúde Coletiva');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (722, 'Epidemiologia');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (723, 'Saúde Pública');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (724, 'Medicina Preventiva');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (725, 'Fonoaudiologia');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (726, 'Fisioterapia e Terapia Ocupacional');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (727, 'Educação Física');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (728, 'Ciências Agrárias');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (729, 'Agronomia');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (730, 'Ciência do Solo');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (731, 'Gênese, Morfologia e Classificação dos Solos');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (732, 'Física do Solo');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (733, 'Química do Solo');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (734, 'Microbiologia e Bioquímica do Solo');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (735, 'Fertilidade do Solo e Adubação');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (736, 'Manejo e Conservação do Solo');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (737, 'Fitossanidade');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (738, 'Fitopatologia');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (739, 'Entomologia Agrícola');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (740, 'Parasitologia Agrícola');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (741, 'Microbiologia Agrícola');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (742, 'Defesa Fitossanitária');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (743, 'Fitotecnia');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (744, 'Manejo e Tratos Culturais');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (745, 'Mecanização Agrícola');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (746, 'Produção e Beneficiamento de Sementes');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (747, 'Produção de Mudas');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (748, 'Melhoramento Vegetal');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (749, 'Fisiologia de Plantas Cultivadas');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (750, 'Matologia');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (751, 'Floricultura, Parques e Jardins');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (752, 'Floricultura');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (753, 'Parques e Jardins');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (754, 'Arborização de Vias Públicas');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (755, 'Agrometeorologia');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (756, 'Extensão Rural');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (757, 'Recursos Florestais e Engenharia Florestal');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (758, 'Silvicultura');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (759, 'Dendrologia');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (760, 'Florestamento e Reflorestamento');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (761, 'Genética e Melhoramento Florestal');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (762, 'Sementes Florestais');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (763, 'Nutrição Florestal');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (764, 'Fisiologia Florestal');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (765, 'Solos Florestais');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (766, 'Proteção Florestal');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (767, 'Manejo Florestal');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (768, 'Economia Florestal');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (769, 'Política e Legislação Florestal');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (770, 'Administração Florestal');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (771, 'Dendrometria e Inventário Florestal');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (772, 'Fotointerpretação Florestal');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (773, 'Ordenamento Florestal');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (774, 'Técnicas e Operações Florestais');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (775, 'Exploração Florestal');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (776, 'Mecanização Florestal');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (777, 'Tecnologia e Utilização de Produtos Florestais');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (778, 'Anatomia e Identificação de Produtos Florestais');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (779, 'Propriedades Fisico-Mecânicas da Madeira');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (780, 'Relações Água-Madeira e Secagem');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (781, 'Tratamento da Madeira');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (782, 'Processamento Mecânico da Madeira');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (783, 'Química da Madeira');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (784, 'Resinas de Madeiras');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (785, 'Tecnologia de Celulose e Papel');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (786, 'Tecnologia de Chapas');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (787, 'Conservação da Natureza');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (788, 'Hidrologia Florestal');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (789, 'Conservação de Áreas Silvestres');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (790, 'Conservação de Bacias Hidrográficas');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (791, 'Recuperação de Areas Degradadas');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (792, 'Energia de Biomassa Florestal');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (793, 'Engenharia Agrícola');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (794, 'Máquinas e Implementos Agrícolas');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (795, 'Engenharia de Água e Solo');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (796, 'Irrigação e Drenagem');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (797, 'Conservação de Solo e Água');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (798, 'Engenharia de Processamento de Produtos Agrícolas');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (799, 'Pré-Processamento de Produtos Agrícolas');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (800, 'Armazenamento de Produtos Agrícolas');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (801, 'Transferência de Produtos Agrícolas');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (802, 'Construções Rurais e Ambiência');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (803, 'Assentamento Rural');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (804, 'Engenharia de Construções Rurais');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (805, 'Saneamento Rural');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (806, 'Energização Rural');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (807, 'Zootecnia');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (808, 'Ecologia dos Animais Domésticos e Etologia');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (809, 'Genética e Melhoramento dos Animais Domésticos');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (810, 'Nutrição e Alimentação Animal');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (811, 'Exigências Nutricionais dos Animais');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (812, 'Avaliação de Alimentos para Animais');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (813, 'Conservação de Alimentos para Animais');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (814, 'Pastagem e Forragicultura');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (815, 'Avaliação, Produção e Conservação de Forragens');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (816, 'Manejo e Conservação de Pastagens');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (817, 'Fisiologia de Plantas Forrageiras');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (818, 'Melhoramento de Plantas Forrageiras e Produção de Sementes');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (819, 'Toxicologia e Plantas Tóxicas');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (820, 'Produção Animal');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (821, 'Criação de Animais');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (822, 'Manejo de Animais');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (823, 'Instalações para Produção Animal');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (824, 'Medicina Veterinária');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (825, 'Clínica e Cirurgia Animal');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (826, 'Anestesiologia Animal');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (827, 'Técnica Cirúrgica Animal');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (828, 'Radiologia de Animais');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (829, 'Farmacologia e Terapêutica Animal');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (830, 'Obstetrícia Animal');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (831, 'Clínica Veterinária');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (832, 'Clínica Cirúrgica Animal');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (833, 'Toxicologia Animal');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (834, 'Medicina Veterinária Preventiva');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (835, 'Epidemiologia Animal');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (836, 'Saneamento Aplicado a Saúde do Homem');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (837, 'Doenças Infecciosas de Animais');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (838, 'Doenças Parasitárias de Animais');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (839, 'Saúde Animal (Programas Sanitários)');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (840, 'Patologia Animal');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (841, 'Patologia Aviária');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (842, 'Anatomia Patologia Animal');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (843, 'Patologia Clínica Animal');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (844, 'Reprodução Animal');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (845, 'Ginecologia e Andrologia Animal');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (846, 'Inseminação Artificial Animal');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (847, 'Fisiopatologia da Reprodução Animal');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (848, 'Inspeção de Produtos de Origem Animal');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (849, 'Recursos Pesqueiros e Engenharia de Pesca');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (850, 'Recursos Pesqueiros Marinhos');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (851, 'Fatores Abióticos do Mar');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (852, 'Avaliação de Estoques Pesqueiros Marinhos');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (853, 'Exploração Pesqueira Marinha');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (854, 'Manejo e Conservação de Recursos Pesqueiros Marinhos');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (855, 'Recursos Pesqueiros de Águas Interiores');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (856, 'Fatores Abióticos de Águas Interiores');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (857, 'Avaliação de Estoques Pesqueiros de Águas Interiores');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (858, 'Explotação Pesqueira de Águas Interiores');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (859, 'Manejo e Conservação de Recursos Pesqueiros de Águas Interiores');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (860, 'Aqüicultura');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (861, 'Maricultura');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (862, 'Carcinocultura');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (863, 'Ostreicultura');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (864, 'Piscicultura');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (865, 'Engenharia de Pesca');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (866, 'Ciência e Tecnologia de Alimentos');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (867, 'Ciência de Alimentos');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (868, 'Valor Nutritivo de Alimentos');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (869, 'Química, Física, Fisico-Química e Bioquímica dos Alim. e das Mat-Primas Alimentares');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (870, 'Microbiologia de Alimentos');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (871, 'Fisiologia Pós-Colheita');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (872, 'Toxicidade e Resíduos de Pesticidas em Alimentos');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (873, 'Avaliação e Controle de Qualidade de Alimentos');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (874, 'Padrões, Legislação e Fiscalização de Alimentos');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (875, 'Tecnologia de Alimentos');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (876, 'Tecnologia de Produtos de Origem Animal');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (877, 'Tecnologia de Produtos de Origem Vegetal');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (878, 'Tecnologia das Bebidas');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (879, 'Tecnologia de Alimentos Dietéticos e Nutricionais');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (880, 'Aproveitamento de Subprodutos');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (881, 'Embalagens de Produtos Alimentares');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (882, 'Engenharia de Alimentos');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (883, 'Instalações Industriais de Produção de Alimentos');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (884, 'Armazenamento de Alimentos');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (885, 'Ciências Sociais Aplicadas');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (886, 'Direito');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (887, 'Teoria do Direito');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (888, 'Teoria Geral do Direito');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (889, 'Teoria Geral do Processo');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (890, 'Teoria do Estado');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (891, 'História do Direito');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (892, 'Filosofia do Direito');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (893, 'Lógica Jurídica');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (894, 'Sociologia Jurídica');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (895, 'Antropologia Jurídica');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (896, 'Direito Público');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (897, 'Direito Tributário');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (898, 'Direito Penal');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (899, 'Direito Processual Penal');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (900, 'Direito Processual Civil');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (901, 'Direito Constitucional');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (902, 'Direito Administrativo');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (903, 'Direito Internacional Público');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (904, 'Direito Privado');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (905, 'Direito Civil');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (906, 'Direito Comercial');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (907, 'Direito do Trabalho');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (908, 'Direito Internacional Privado');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (909, 'Direitos Especiais');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (910, 'Administração');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (911, 'Administração de Empresas');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (912, 'Administração da Produção');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (913, 'Administração Financeira');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (914, 'Mercadologia');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (915, 'Negócios Internacionais');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (916, 'Administração de Recursos Humanos');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (917, 'Administração Pública');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (918, 'Contabilidade e Finanças Públicas');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (919, 'Organizações Públicas');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (920, 'Política e Planejamento Governamentais');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (921, 'Administração de Pessoal');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (922, 'Planejamento em Ciência e Tecnologia');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (923, 'Administração de Setores Específicos');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (924, 'Ciências Contábeis');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (925, 'Economia');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (926, 'Teoria Econômica');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (927, 'Economia Geral');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (928, 'Teoria Geral da Economia');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (929, 'História do Pensamento Econômico');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (930, 'História Econômica');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (931, 'Sistemas Econômicos');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (932, 'Métodos Quantitativos em Economia');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (933, 'Métodos e Modelos Matemáticos, Econométricos e Estatísticos');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (934, 'Estatística Sócio-Econômica');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (935, 'Contabilidade Nacional');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (936, 'Economia Matemática');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (937, 'Economia Monetária e Fiscal');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (938, 'Teoria Monetária e Financeira');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (939, 'Instituições Monetárias e Financeiras do Brasil');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (940, 'Finanças Públicas Internas');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (941, 'Política Fiscal do Brasil');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (942, 'Crescimento, Flutuações e Planejamento Econômico');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (943, 'Crescimento e Desenvolvimento Econômico');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (944, 'Teoria e Política de Planejamento Econômico');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (945, 'Flutuações Cíclicas e Projeções Econômicas');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (946, 'Inflação');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (947, 'Economia Internacional');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (948, 'Teoria do Comércio Internacional');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (949, 'Relações do Comércio; Política Comercial; Integração Econômica');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (950, 'Balanço de Pagamentos; Finanças Internacionais');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (951, 'Investimentos Internacionais e Ajuda Externa');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (952, 'Economia dos Recursos Humanos');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (953, 'Treinamento e Alocação de Mão-de-Obra; Oferta de Mão-de-Obra e Força de Trabalho');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (954, 'Mercado de Trabalho; Política do Governo');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (955, 'Sindicatos, Dissídios Coletivos, Relações de Emprego (Empregador/Empregado)');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (956, 'Capital Humano');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (957, 'Demografia Econômica');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (958, 'Economia Industrial');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (959, 'Organização Industrial e  Estudos Industriais');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (960, 'Mudança Tecnológica');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (961, 'Economia do Bem-Estar Social');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (962, 'Economia dos Programas de Bem-Estar Social');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (963, 'Economia do Consumidor');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (964, 'Economia Regional e Urbana');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (965, 'Economia Regional');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (966, 'Economia Urbana');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (967, 'Renda e Tributação');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (968, 'Economias Agrária e dos Recursos Naturais');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (969, 'Economia Agrária');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (970, 'Economia dos Recursos Naturais');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (971, 'Arquitetura e Urbanismo');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (972, 'Fundamentos de Arquitetura e Urbanismo');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (973, 'História da Arquitetura e Urbanismo');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (974, 'Teoria da Arquitetura');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (975, 'História do Urbanismo');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (976, 'Teoria do Urbanismo');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (977, 'Projeto de Arquitetura e Urbanismo');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (978, 'Planejamento e Projetos da Edificação');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (979, 'Planejamento e Projeto do Espaço Urbano');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (980, 'Planejamento e Projeto do Equipamento');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (981, 'Tecnologia de Arquitetura e Urbanismo');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (982, 'Adequação Ambiental');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (983, 'Paisagismo');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (984, 'Desenvolvimento Histórico do Paisagismo');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (985, 'Conceituação de Paisagísmo e Metodologia do Paisagismo');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (986, 'Estudos de Organização do Espaço Exterior');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (987, 'Projetos de Espaços Livres Urbanos');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (988, 'Planejamento Urbano e Regional');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (989, 'Fundamentos do Planejamento Urbano e Regional');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (990, 'Teoria do Planejamento Urbano e Regional');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (991, 'Teoria da Urbanização');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (992, 'Política Urbana');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (993, 'História Urbana');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (994, 'Métodos e Técnicas do Planejamento Urbano e Regional');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (995, 'Informação, Cadastro e Mapeamento');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (996, 'Técnica de Previsão Urbana e Regional');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (997, 'Técnicas de Análise e Avaliação Urbana e Regional');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (998, 'Técnicas de Planejamento e Projeto Urbanos e Regionais');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (999, 'Serviços Urbanos e Regionais');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1000, 'Administração Municipal e Urbana');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1001, 'Estudos da Habitação');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1002, 'Aspectos Sociais do Planejamento Urbano e Regional');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1003, 'Aspectos Econômicos do Planejamento Urbano e Regional');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1004, 'Aspectos Físico-Ambientais do Planejamento Urbano e Regional');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1005, 'Serviços Comunitários');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1006, 'Infra-Estruturas Urbanas e Regionais');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1007, 'Transporte e Tráfego Urbano e Regional');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1008, 'Legislação Urbana e Regional');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1009, 'Demografia');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1010, 'Distribuição Espacial');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1011, 'Distribuição Espacial Geral');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1012, 'Distribuição Espacial Urbana');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1013, 'Distribuição Espacial Rural');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1014, 'Tendência Populacional');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1015, 'Tendências Passadas');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1016, 'Taxas e Estimativas Correntes');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1017, 'Projeções');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1018, 'Componentes da Dinâmica Demográfica');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1019, 'Fecundidade');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1020, 'Mortalidade');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1021, 'Migração');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1022, 'Nupcialidade e Família');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1023, 'Casamento e Divórcio');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1024, 'Família e Reprodução');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1025, 'Demografia Histórica');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1026, 'Natalidade, Mortalidade, Migração');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1027, 'Métodos e Técnicas de Demografia Histórica');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1028, 'Política Pública e População');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1029, 'Política Populacional');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1030, 'Políticas de Redistribuição de População');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1031, 'Políticas de Planejamento Familiar');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1032, 'Fontes de Dados Demográficos');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1033, 'Ciência da Informação');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1034, 'Teoria da Informação');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1035, 'Teoria Geral da Informação');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1036, 'Processos da Comunicação');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1037, 'Representação da Informação');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1038, 'Biblioteconomia');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1039, 'Teoria da Classificação');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1040, 'Métodos Quantitativos. Bibliometria');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1041, 'Técnicas de Recuperação de Informação');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1042, 'Processos de Disseminação da Informação');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1043, 'Arquivologia');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1044, 'Organização de Arquivos');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1045, 'Museologia');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1046, 'Comunicação');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1047, 'Teoria da Comunicação');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1048, 'Jornalismo e Editoração');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1049, 'Teoria e Ética do Jornalismo');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1050, 'Organização Editorial de Jornais');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1051, 'Organização Comercial de Jornais');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1052, 'Jornalismo Especializado (Comunitário, Rural, Empresarial, Científico)');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1053, 'Rádio e Televisão');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1054, 'Radiodifusão');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1055, 'Videodifusão');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1056, 'Relações Públicas e Propaganda');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1057, 'Comunicação Visual');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1058, 'Serviço Social');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1059, 'Fundamentos do Serviço Social');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1060, 'Serviço Social Aplicado');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1061, 'Serviço Social do Trabalho');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1062, 'Serviço Social da Educação');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1063, 'Serviço Social do Menor');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1064, 'Serviço Social da Saúde');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1065, 'Serviço Social da Habitação');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1066, 'Economia Doméstica');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1067, 'Desenho Industrial');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1068, 'Programação Visual');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1069, 'Desenho de Produto');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1070, 'Turismo');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1071, 'Ciências Humanas');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1072, 'Filosofia');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1073, 'História da Filosofia');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1074, 'Metafísica');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1075, 'Lógica');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1076, 'Ética');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1077, 'Epistemologia');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1078, 'Filosofia Brasileira');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1079, 'Sociologia');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1080, 'Fundamentos da Sociologia');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1081, 'Teoria Sociológica');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1082, 'História da Sociologia');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1083, 'Sociologia do Conhecimento');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1084, 'Sociologia do Desenvolvimento');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1085, 'Sociologia Urbana');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1086, 'Sociologia Rural');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1087, 'Sociologia da Saúde');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1088, 'Outras Sociologias Específicas');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1089, 'Antropologia');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1090, 'Teoria Antropológica');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1091, 'Etnologia Indígena');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1092, 'Antropologia Urbana');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1093, 'Antropologia Rural');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1094, 'Antropologia das Populações Afro-Brasileiras');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1095, 'Arqueologia');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1096, 'Teoria e Método em Arqueologia');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1097, 'Arqueologia Pré-Histórica');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1098, 'Arqueologia Histórica');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1099, 'História');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1100, 'Teoria e Filosofia da História');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1101, 'História Antiga e Medieval');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1102, 'História Moderna e Contemporânea');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1103, 'História da América');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1104, 'História dos Estados Unidos');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1105, 'História Latino-Americana');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1106, 'História do Brasil');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1107, 'História do Brasil Colônia');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1108, 'História do Brasil Império');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1109, 'História do Brasil República');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1110, 'História Regional do Brasil');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1111, 'História das Ciências');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1112, 'Geografia');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1113, 'Geografia Humana');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1114, 'Geografia da População');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1115, 'Geografia Agrária');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1116, 'Geografia Urbana');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1117, 'Geografia Econômica');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1118, 'Geografia Política');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1119, 'Geografia Regional');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1120, 'Teoria do Desenvolvimento Regional');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1121, 'Regionalização');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1122, 'Análise Regional');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1123, 'Psicologia');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1124, 'Fundamentos e Medidas da Psicologia');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1125, 'História, Teorias e Sistemas em Psicologia');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1126, 'Metodologia, Instrumentação e Equipamento em Psicologia');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1127, 'Construção e Validade de Testes, Escalas e Outras Medidas Psicológicas');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1128, 'Técnicas de Processamento Estatístico, Matemático e Computacional em Psicologia');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1129, 'Psicologia Experimental');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1130, 'Processos Perceptuais e Motores');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1131, 'Processos de Aprendizagem, Memória e Motivação');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1132, 'Processos Cognitivos e Atencionais');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1133, 'Estados Subjetivos e Emoção');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1134, 'Psicologia Fisiológica');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1135, 'Neurologia, Eletrofisiologia e Comportamento');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1136, 'Processos Psico-Fisiológicos');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1137, 'Estimulação Elétrica e com Drogas; Comportamento');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1138, 'Psicobiologia');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1139, 'Psicologia Comparativa');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1140, 'Estudos Naturalísticos do Comportamento Animal');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1141, 'Mecanismos Instintivos e Processos Sociais em Animais');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1142, 'Psicologia Social');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1143, 'Relações Interpessoais');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1144, 'Processos Grupais e de Comunicação');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1145, 'Papéis e Estruturas Sociais; Indivíduo');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1146, 'Psicologia Cognitiva');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1147, 'Psicologia do Desenvolvimento Humano');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1148, 'Processos Perceptuais e Cognitivos; Desenvolvimento');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1149, 'Desenvolvimento Social e da Personalidade');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1150, 'Psicologia do Ensino e da Aprendizagem');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1151, 'Planejamento Institucional');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1152, 'Programação de Condições de Ensino');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1153, 'Treinamento de Pessoal');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1154, 'Aprendizagem e Desempenho Acadêmicos');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1155, 'Ensino e Aprendizagem na Sala de Aula');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1156, 'Psicologia do Trabalho e Organizacional');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1157, 'Análise Institucional');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1158, 'Recrutamento e Seleção de Pessoal');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1159, 'Treinamento e Avaliação');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1160, 'Fatores Humanos no Trabalho');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1161, 'Planejamento Ambiental e Comportamento Humano');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1162, 'Tratamento e Prevenção Psicológica');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1163, 'Intervenção Terapêutica');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1164, 'Programas de Atendimento Comunitário');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1165, 'Treinamento e Reabilitação');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1166, 'Desvios da Conduta');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1167, 'Distúrbios da Linguagem');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1168, 'Distúrbios Psicossomáticos');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1169, 'Educação');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1170, 'Fundamentos da Educação');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1171, 'Filosofia da Educação');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1172, 'História da Educação');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1173, 'Sociologia da Educação');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1174, 'Antropologia Educacional');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1175, 'Economia da Educação');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1176, 'Psicologia Educacional');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1177, 'Administração Educacional');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1178, 'Administração de Sistemas Educacionais');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1179, 'Administração de Unidades Educativas');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1180, 'Planejamento e Avaliação Educacional');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1181, 'Política Educacional');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1182, 'Planejamento Educacional');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1183, 'Avaliação de Sistemas, Instituições, Planos e Programas Educacionais');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1184, 'Ensino-Aprendizagem');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1185, 'Teorias da Instrução');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1186, 'Métodos e Técnicas de Ensino');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1187, 'Tecnologia Educacional');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1188, 'Avaliação da Aprendizagem');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1189, 'Currículo');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1190, 'Teoria Geral de Planejamento e Desenvolvimento Curricular');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1191, 'Currículos Específicos para Níveis e Tipos de Educação');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1192, 'Orientação e Aconselhamento');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1193, 'Orientação Educacional');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1194, 'Orientação Vocacional');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1195, 'Tópicos Específicos de Educação');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1196, 'Educação de Adultos');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1197, 'Educação Permanente');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1198, 'Educação Rural');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1199, 'Educação em Periferias Urbanas');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1200, 'Educação Especial');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1201, 'Educação Pré-Escolar');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1202, 'Ensino Profissionalizante');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1203, 'Ciência Política');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1204, 'Teoria Política');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1205, 'Teoria Política Clássica');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1206, 'Teoria Política Medieval');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1207, 'Teoria Política Moderna');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1208, 'Teoria Política Contemporânea');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1209, 'Estado e Governo');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1210, 'Estrutura e Transformação do Estado');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1211, 'Sistemas Governamentais Comparados');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1212, 'Relações Intergovernamentais');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1213, 'Estudos do Poder Local');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1214, 'Instituições Governamentais Específicas');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1215, 'Comportamento Político');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1216, 'Estudos Eleitorais e Partidos Políticos');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1217, 'Atitude e Ideologias Políticas');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1218, 'Conflitos e Coalizões Políticas');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1219, 'Comportamento Legislativo');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1220, 'Classes Sociais e Grupos de Interesse');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1221, 'Políticas Públicas');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1222, 'Análise do Processo Decisório');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1223, 'Técnicas de Antecipação');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1224, 'Política Internacional');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1225, 'Política Externa do Brasil');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1226, 'Organizações Internacionais');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1227, 'Integração Internacional, Conflito, Guerra e Paz');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1228, 'Relações Internacionais, Bilaterais e Multilaterais');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1229, 'Teologia');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1230, 'História da Teologia');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1231, 'Teologia Moral');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1232, 'Teologia Sistemática');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1233, 'Teologia Pastoral');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1234, 'Lingüística, Letras e Artes');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1235, 'Lingüística');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1236, 'Teoria e Análise Lingüística');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1237, 'Filosofia da Linguagem');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1238, 'Lingüística Histórica');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1239, 'Sociolingüística e Dialetologia');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1240, 'Psicolingüística');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1241, 'Lingüística Aplicada');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1242, 'Letras');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1243, 'Língua Portuguesa');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1244, 'Línguas Estrangeiras Modernas');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1245, 'Línguas Clássicas');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1246, 'Línguas Indígenas');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1247, 'Teoria Literária');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1248, 'Literatura Brasileira');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1249, 'Outras Literaturas Vernáculas');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1250, 'Literaturas Estrangeiras Modernas');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1251, 'Literaturas Clássicas');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1252, 'Literatura Comparada');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1253, 'Artes');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1254, 'Fundamentos e Crítica das Artes');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1255, 'Teoria da Arte');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1256, 'História da Arte');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1257, 'Crítica da Arte');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1258, 'Artes Plásticas');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1259, 'Pintura');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1260, 'Desenho');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1261, 'Gravura');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1262, 'Escultura');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1263, 'Tecelagem');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1264, 'Música');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1265, 'Regência');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1266, 'Instrumentação Musical');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1267, 'Composição Musical');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1268, 'Canto');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1269, 'Dança');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1270, 'Execução da Dança');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1271, 'Coreografia');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1272, 'Teatro');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1273, 'Dramaturgia');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1274, 'Direção Teatral');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1275, 'Cenografia');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1276, 'Interpretação Teatral');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1277, 'Ópera');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1278, 'Fotografia');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1279, 'Cinema');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1280, 'Administração e Produção de Filmes');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1281, 'Roteiro e Direção Cinematográficos');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1282, 'Técnicas de Registro e Processamento de Filmes');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1283, 'Interpretação Cinematográfica');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1284, 'Artes do Vídeo');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1285, 'Educação Artística');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1286, 'Outros');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1287, 'Administração Hospitalar');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1288, 'Administração Rural');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1289, 'Carreira Militar');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1290, 'Carreira Religiosa');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1291, 'Ciências');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1292, 'Biomedicina');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1293, 'Ciências Atuarias');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1294, 'Ciências Sociais');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1295, 'Decoração');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1296, 'Desenho de Moda');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1297, 'Desenho de Projetos');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1298, 'Diplomacia');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1299, 'Engenharia de Agrimensura');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1300, 'Engenharia Cartografica');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1301, 'Engenharia de Armamentos');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1302, 'Engenharia Mecatrônica');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1303, 'Engenharia Textil');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1304, 'Estudos Sociais');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1305, 'Historia Natural');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1306, 'Química Industrial');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1307, 'Relações Internacionais');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1308, 'Relações Públicas');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1309, 'Secretariado Executivo');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1310, 'Multidisciplinar');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1311, 'Programação e Linguagem');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1312, 'Fundamentos Computação');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1313, 'Programação e Linguagem');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1314, 'Redes e Internet');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1315, 'Formação Complementar');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1316, 'Formação Suplementar');
INSERT INTO area_conhecimento (area_conhecimento_id, descricao) VALUES (1317, 'Flexibilização Curricular');


--
-- TOC entry 2324 (class 0 OID 0)
-- Dependencies: 185
-- Name: area_conhecimento_area_conhecimento_id_seq; Type: SEQUENCE SET; Schema: flash; Owner: postgres
--

SELECT pg_catalog.setval('area_conhecimento_area_conhecimento_id_seq', 1, false);


--
-- TOC entry 2284 (class 0 OID 17783)
-- Dependencies: 186
-- Data for Name: curso; Type: TABLE DATA; Schema: flash; Owner: postgres
--

INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1, 'Bacharelado em Sistemas de Informação', 'Créditos', 2520, 'BSI');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (2, 'Engenharia de Controle e Automação', 'Créditos', 3645, 'ECA');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (3, 'Geografia                                      ', 'Créditos', 6317, 'G');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (4, 'Educação                                       ', 'Créditos', 2467, 'E');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (5, 'Química de Produtos Naturais                   ', 'Créditos', 6674, 'QPN');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (6, 'Ciência de Alimentos                           ', 'Créditos', 3139, 'CA');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (7, 'Biologia de Água Doce e Pesca Interior         ', 'Créditos', 8741, 'BDPI');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (8, 'Ciências Biológicas (Botânica)                 ', 'Créditos', 4227, 'CB');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (9, 'Biologia (Ecologia)                            ', 'Créditos', 3090, 'B');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (10, 'Ciências Biológicas (Entomologia)              ', 'Créditos', 8349, 'CB');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (11, 'Ciências de Florestas Tropicais                ', 'Créditos', 7732, 'CFT');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (12, 'Planejamento do Desenvolvimento                ', 'Créditos', 5472, 'PD');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (13, 'Direito (Direito Público)                      ', 'Créditos', 2702, 'DP');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (14, 'Engenharia Elétrica                            ', 'Créditos', 7142, 'EE');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (15, 'Ciências Biológicas                            ', 'Créditos', 299, 'CB');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (16, 'Física                                         ', 'Créditos', 2812, 'F');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (17, 'Química                                        ', 'Créditos', 165, 'Q');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (18, 'Letras (Lingüística e Teoria Literária)        ', 'Créditos', 3000, 'LTL');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (19, 'Psicologia (Teoria e Pesquisa do Comportamento)', 'Créditos', 8907, 'PPC');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (20, 'Engenharia Química                             ', 'Créditos', 6767, 'EQ');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (21, 'Antropologia                                   ', 'Créditos', 2987, 'A');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (22, 'Medicina Tropical                              ', 'Créditos', 5837, 'MT');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (23, 'Geofísica                                      ', 'Créditos', 944, 'G');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (24, 'Geologia e Geoquímica                          ', 'Créditos', 1391, 'GG');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (25, 'Engenharia Mecânica                            ', 'Créditos', 8935, 'EM');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (26, 'Desenvolvimento Sustentável do Trópico Úmido   ', 'Créditos', 9847, 'DST');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (27, 'Ciência Animal                                 ', 'Créditos', 7732, 'CA');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (28, 'Zoologia                                       ', 'Créditos', 5506, 'Z');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (29, 'Agronomia                                      ', 'Créditos', 1951, 'A');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (30, 'Ciências Florestais                            ', 'Créditos', 2135, 'CF');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (31, 'Educacao                                       ', 'Créditos', 5474, 'E');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (32, 'Políticas Públicas                             ', 'Créditos', 2278, 'PP');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (33, 'Química                                        ', 'Créditos', 5976, 'Q');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (34, 'Engenharia de Eletricidade                     ', 'Créditos', 6, 'EE');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (35, 'Educação                                       ', 'Créditos', 9446, 'E');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (36, 'Educação                                       ', 'Créditos', 9442, 'E');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (37, 'Física                                         ', 'Créditos', 6095, 'F');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (38, 'Matemática                                     ', 'Créditos', 8100, 'M');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (39, 'Química Orgânica                               ', 'Créditos', 3150, 'QO');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (40, 'Química Inorgânica                             ', 'Créditos', 7343, 'QI');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (41, 'Bioquímica                                     ', 'Créditos', 2533, 'B');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (42, 'Farmacologia                                   ', 'Créditos', 3310, 'F');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (43, 'Sociologia                                     ', 'Créditos', 5404, 'S');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (44, 'Economia                                       ', 'Créditos', 6338, 'E');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (45, 'Engenharia Civil (Recursos Hídricos)           ', 'Créditos', 1505, 'ECH');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (46, 'Direito (Direito e Desenvolvimento)            ', 'Créditos', 6690, 'DD');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (47, 'Agronomia (Fitotecnia)                         ', 'Créditos', 3191, 'A');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (48, 'Agronomia (Solos e Nutrição de Plantas)        ', 'Créditos', 7912, 'ANP');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (49, 'Agronomia (Irrigação e Drenagem)               ', 'Créditos', 1915, 'AD');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (50, 'Economia Rural                                 ', 'Créditos', 1734, 'ER');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (51, 'Zootecnia                                      ', 'Créditos', 8946, 'Z');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (52, 'Tecnologia de Alimentos                        ', 'Créditos', 53, 'TA');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (53, 'Letras                                         ', 'Créditos', 1143, 'L');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (54, 'Patologia                                      ', 'Créditos', 9156, 'P');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (55, 'Engenharia de Pesca                            ', 'Créditos', 7864, 'EP');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (56, 'Enfermagem                                     ', 'Créditos', 8028, 'E');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (57, 'Cirurgia                                       ', 'Créditos', 7225, 'C');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (58, 'Lingüística                                    ', 'Créditos', 2519, 'L');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (59, 'Saúde Pública                                  ', 'Créditos', 6587, 'SP');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (60, 'Geologia                                       ', 'Créditos', 2568, 'G');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (61, 'Desenvolvimento e Meio Ambiente                ', 'Créditos', 8012, 'DMA');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (62, 'Medicina (Clínica Médica)                      ', 'Créditos', 6120, 'MM');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (63, 'Ciência da Computação                          ', 'Créditos', 1962, 'CC');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (64, 'Ciências Veterinárias                          ', 'Créditos', 1737, 'CV');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (65, 'Saúde Pública                                  ', 'Créditos', 6569, 'SP');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (66, 'Educação                                       ', 'Créditos', 7970, 'E');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (67, 'Psicobiologia                                  ', 'Créditos', 806, 'P');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (68, 'Ciências Sociais                               ', 'Créditos', 1784, 'CS');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (69, 'Patologia Oral                                 ', 'Créditos', 6080, 'PO');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (70, 'Odontologia Social                             ', 'Créditos', 558, 'OS');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (71, 'Administração                                  ', 'Créditos', 5471, 'A');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (72, 'Engenharia Elétrica                            ', 'Créditos', 5655, 'EE');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (73, 'Engenharia Mecânica                            ', 'Créditos', 2030, 'EM');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (74, 'Física                                         ', 'Créditos', 3266, 'F');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (75, 'Engenharia Química                             ', 'Créditos', 145, 'EQ');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (76, 'Química                                        ', 'Créditos', 3919, 'Q');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (77, 'Estudos da Linguagem                           ', 'Créditos', 4990, 'EL');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (78, 'Clínicas Odontológicas                         ', 'Créditos', 9483, 'CO');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (79, 'Geociências                                    ', 'Créditos', 1246, 'G');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (80, 'Geodinâmica e Geofísica                        ', 'Créditos', 3927, 'GG');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (81, 'Fitotecnia                                     ', 'Créditos', 4332, 'F');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (82, 'Educação                                       ', 'Créditos', 2941, 'E');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (83, 'Física                                         ', 'Créditos', 6446, 'F');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (84, 'Meteorologia                                   ', 'Créditos', 7051, 'M');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (85, 'Sociologia [J. Pessoa]                         ', 'Créditos', 5503, 'SP');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (86, 'Filosofia                                      ', 'Créditos', 9730, 'F');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (87, 'Psicologia (Psicologia Social)                 ', 'Créditos', 8132, 'PS');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (88, 'Engenharia Biomédica                           ', 'Créditos', 7438, 'EB');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (89, 'Engenharia Civil                               ', 'Créditos', 6907, 'EC');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (90, 'Engenharia Elétrica                            ', 'Créditos', 136, 'EE');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (91, 'Engenharia Mecânica [J. Pessoa]                ', 'Créditos', 8508, 'EMP');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (92, 'Engenharia de Produção                         ', 'Créditos', 8921, 'EP');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (93, 'Engenharia Química [C. Grande]                 ', 'Créditos', 6171, 'EQG');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (94, 'Informática                                    ', 'Créditos', 2237, 'I');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (95, 'Produtos Naturais e Sintéticos Bioativos       ', 'Créditos', 7532, 'PNSB');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (96, 'Enfermagem                                     ', 'Créditos', 4351, 'E');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (97, 'Administração                                  ', 'Créditos', 6503, 'A');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (98, 'Ciência da Informação                          ', 'Créditos', 332, 'CI');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (99, 'Serviço Social                                 ', 'Créditos', 7382, 'SS');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (100, 'Agronomia [Areia]                              ', 'Créditos', 7238, 'A');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (101, 'Manejo de Solo e Água [Areia]                  ', 'Créditos', 6166, 'MS');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (102, 'Economia Rural [C. Grande]                     ', 'Créditos', 5626, 'ERG');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (103, 'Sociologia Rural                               ', 'Créditos', 6532, 'SR');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (104, 'Zootecnia [Areia]                              ', 'Créditos', 1011, 'Z');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (105, 'Ciência e Tecnologia de Alimentos              ', 'Créditos', 1081, 'CTA');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (106, 'Letras                                         ', 'Créditos', 6140, 'L');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (107, 'Economia [J. Pessoa]                           ', 'Créditos', 7792, 'EP');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (108, 'Engenharia Mecânica [C. Grande]                ', 'Créditos', 3607, 'EMG');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (109, 'Ciências Biológicas (Zoologia)                 ', 'Créditos', 1942, 'CB');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (110, 'Química                                        ', 'Créditos', 7506, 'Q');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (111, 'Genética                                       ', 'Créditos', 6716, 'G');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (112, 'Engenharia de Minas                            ', 'Créditos', 7230, 'EM');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (113, 'Odontologia (Diagnóstico Bucal)                ', 'Créditos', 1353, 'OB');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (114, 'Matemática                                     ', 'Créditos', 6942, 'M');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (115, 'Engenharia Civil [C. Grande]                   ', 'Créditos', 2506, 'ECG');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (116, 'Engenharia Química                             ', 'Créditos', 3902, 'EQ');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (117, 'Engenharia Agrícola                            ', 'Créditos', 6123, 'EA');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (118, 'Educação                                       ', 'Créditos', 6751, 'E');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (119, 'Física                                         ', 'Créditos', 1272, 'F');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (120, 'Matemática                                     ', 'Créditos', 5877, 'M');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (121, 'Ciência da Computação                          ', 'Créditos', 1608, 'CC');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (122, 'Geociências                                    ', 'Créditos', 1202, 'G');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (123, 'Biofísica                                      ', 'Créditos', 7641, 'B');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (124, 'Bioquímica                                     ', 'Créditos', 2793, 'B');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (125, 'Biologia de Fungos                             ', 'Créditos', 4811, 'BF');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (126, 'Ciências Biológicas (Fisiologia)               ', 'Créditos', 8011, 'CB');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (127, 'Sociologia                                     ', 'Créditos', 3275, 'S');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (128, 'Antropologia                                   ', 'Créditos', 9389, 'A');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (129, 'Filosofia                                      ', 'Créditos', 7973, 'F');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (130, 'História                                       ', 'Créditos', 7379, 'H');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (131, 'Geografia                                      ', 'Créditos', 6239, 'G');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (132, 'Economia                                       ', 'Créditos', 1326, 'E');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (133, 'Psicologia (Psicologia Cognitiva)              ', 'Créditos', 9473, 'PC');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (134, 'Engenharia Elétrica                            ', 'Créditos', 5650, 'EE');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (135, 'Tecnologias Energéticas Nucleares              ', 'Créditos', 7481, 'TEN');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (136, 'Medicina (Anatomia Patológica)                 ', 'Créditos', 9053, 'MP');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (137, 'Cirurgia                                       ', 'Créditos', 681, 'C');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (138, 'Medicina Tropical                              ', 'Créditos', 35, 'MT');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (139, 'Medicina (Pediatria)                           ', 'Créditos', 9499, 'M');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (140, 'Ciências Farmacêuticas                         ', 'Créditos', 4844, 'CF');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (141, 'Nutrição                                       ', 'Créditos', 1552, 'N');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (142, 'Direito                                        ', 'Créditos', 3288, 'D');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (143, 'Desenvolvimento Urbano                         ', 'Créditos', 9955, 'DU');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (144, 'Serviço Social                                 ', 'Créditos', 3987, 'SS');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (145, 'Letras                                         ', 'Créditos', 248, 'L');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (146, 'Ciência Política                               ', 'Créditos', 9518, 'CP');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (147, 'Oceanografia                                   ', 'Créditos', 644, 'O');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (148, 'Química                                        ', 'Créditos', 2345, 'Q');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (149, 'Genética                                       ', 'Créditos', 6123, 'G');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (150, 'Biologia Vegetal                               ', 'Créditos', 4974, 'BV');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (151, 'Medicina Interna                               ', 'Créditos', 8369, 'MI');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (152, 'Engenharia Civil                               ', 'Créditos', 8270, 'EC');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (153, 'Biologia Animal                                ', 'Créditos', 7327, 'BA');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (154, 'Medicina                                       ', 'Créditos', 4905, 'M');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (155, 'Neuro-Psiquiatria                              ', 'Créditos', 8580, 'N');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (156, 'Engenharia Química                             ', 'Créditos', 4240, 'EQ');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (157, 'Ciências Biológicas                            ', 'Créditos', 1178, 'CB');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (158, 'Administração                                  ', 'Créditos', 1206, 'A');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (159, 'Biotecnologia de Produtos Bioativos            ', 'Créditos', 944, 'BPB');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (160, 'Botânica                                       ', 'Créditos', 9054, 'B');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (161, 'Agronomia (Fitossanidade)                      ', 'Créditos', 1167, 'A');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (162, 'Agronomia (Ciência do Solo)                    ', 'Créditos', 2239, 'AS');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (163, 'Administração Rural e Comunicação Rural        ', 'Créditos', 7457, 'ARCR');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (164, 'Medicina Veterinária                           ', 'Créditos', 3184, 'MV');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (165, 'Zootecnia                                      ', 'Créditos', 576, 'Z');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (166, 'Odontologia (Odontopediatria)                  ', 'Créditos', 1327, 'O');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (167, 'Odontologia (Dentística e Endodontia)          ', 'Créditos', 3664, 'OE');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (168, 'Odontologia Preventiva e Social                ', 'Créditos', 6368, 'OPS');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (169, 'Saúde Materno Infantil                         ', 'Créditos', 4768, 'SMI');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (170, 'Letras e Lingüística                           ', 'Créditos', 5339, 'LL');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (171, 'Física da Matéria Condensada                   ', 'Créditos', 2290, 'FMC');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (172, 'Química e Biotecnologia                        ', 'Créditos', 2747, 'QB');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (173, 'Administração                                  ', 'Créditos', 6535, 'A');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (174, 'Geografia                                      ', 'Créditos', 62, 'G');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (175, 'Educação                                       ', 'Créditos', 3545, 'E');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (176, 'Educação                                       ', 'Créditos', 1294, 'E');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (177, 'Física                                         ', 'Créditos', 5303, 'F');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (178, 'Matemática                                     ', 'Créditos', 9684, 'M');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (179, 'Química                                        ', 'Créditos', 9467, 'Q');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (180, 'Geologia                                       ', 'Créditos', 3629, 'G');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (181, 'Geoquímica e Meio Ambiente                     ', 'Créditos', 2688, 'GMA');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (182, 'Geofísica                                      ', 'Créditos', 5807, 'G');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (183, 'Biologia (Botânica)                            ', 'Créditos', 7860, 'B');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (184, 'Economia                                       ', 'Créditos', 317, 'E');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (185, 'Patologia Humana                               ', 'Créditos', 5629, 'PH');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (186, 'Medicina                                       ', 'Créditos', 7867, 'M');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (187, 'Saúde Coletiva                                 ', 'Créditos', 1135, 'SC');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (188, 'Enfermagem                                     ', 'Créditos', 9629, 'E');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (189, 'Direito                                        ', 'Créditos', 3940, 'D');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (190, 'Ciências Agrárias                              ', 'Créditos', 7198, 'CA');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (191, 'Letras e Lingüística                           ', 'Créditos', 3, 'LL');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (192, 'Arquitetura e Urbanismo                        ', 'Créditos', 8288, 'AU');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (193, 'Administração                                  ', 'Créditos', 3008, 'A');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (194, 'Engenharia Química                             ', 'Créditos', 9681, 'EQ');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (195, 'História                                       ', 'Créditos', 8184, 'H');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (196, 'Ciências Sociais                               ', 'Créditos', 9777, 'CS');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (197, 'Comunicação e Cultura Contemporânea            ', 'Créditos', 3047, 'CCC');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (198, 'Imunologia                                     ', 'Créditos', 1209, 'I');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (199, 'Música                                         ', 'Créditos', 9280, 'M');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (200, 'Odontologia                                    ', 'Créditos', 7189, 'O');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (201, 'Geografia                                      ', 'Créditos', 9172, 'G');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (202, 'Nutrição                                       ', 'Créditos', 7751, 'N');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (203, 'Educação                                       ', 'Créditos', 7818, 'E');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (204, 'Ciências Fisiológicas                          ', 'Créditos', 6550, 'CF');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (205, 'Engenharia Ambiental                           ', 'Créditos', 2933, 'EA');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (206, 'Engenharia Elétrica                            ', 'Créditos', 8741, 'EE');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (207, 'Física                                         ', 'Créditos', 7758, 'F');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (208, 'Psicologia                                     ', 'Créditos', 1392, 'P');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (209, 'Informática                                    ', 'Créditos', 1571, 'I');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (210, 'Economia                                       ', 'Créditos', 8321, 'E');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (211, 'Doenças Infecciosas                            ', 'Créditos', 2259, 'DI');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (212, 'Engenharia Mecânica                            ', 'Créditos', 255, 'EM');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (213, 'Educação                                       ', 'Créditos', 3983, 'E');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (214, 'Física                                         ', 'Créditos', 6657, 'F');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (215, 'Matemática                                     ', 'Créditos', 1303, 'M');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (216, 'Engenharia de Sistemas e Computação            ', 'Créditos', 7056, 'ESC');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (217, 'Estatística                                    ', 'Créditos', 3589, 'E');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (218, 'Química Orgânica                               ', 'Créditos', 3157, 'QO');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (219, 'Matemática Aplicada                            ', 'Créditos', 7687, 'MA');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (220, 'Ciência e Tecnologia de Polímeros              ', 'Créditos', 8938, 'CTP');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (221, 'Química de Produtos Naturais                   ', 'Créditos', 4505, 'QPN');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (222, 'Físico-Química                                 ', 'Créditos', 239, 'F');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (223, 'Geologia                                       ', 'Créditos', 292, 'G');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (224, 'Ciências Biológicas (Biofísica)                ', 'Créditos', 5472, 'CB');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (225, 'Bioquímica                                     ', 'Créditos', 2965, 'B');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (226, 'Ciências Biológicas (Botânica)                 ', 'Créditos', 1707, 'CB');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (227, 'Ciências Biológicas (Farmac. e Terap. Experimen', 'Créditos', 9522, 'CBTE');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (228, 'Ciências Biológicas (Genética)                 ', 'Créditos', 6669, 'CB');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (229, 'Ciências (Microbiologia)                       ', 'Créditos', 5634, 'C');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (230, 'Ciências Biológicas (Zoologia)                 ', 'Créditos', 3325, 'CB');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (231, 'Sociologia e Antropologia                      ', 'Créditos', 4718, 'SA');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (232, 'Antropologia Social                            ', 'Créditos', 4039, 'AS');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (233, 'Filosofia                                      ', 'Créditos', 9739, 'F');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (234, 'História                                       ', 'Créditos', 740, 'H');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (235, 'Geografia                                      ', 'Créditos', 1785, 'G');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (236, 'Economia da Industria e da Tecnologia          ', 'Créditos', 6450, 'EIT');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (237, 'Engenharia Biomédica                           ', 'Créditos', 6083, 'EB');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (238, 'Engenharia Civil                               ', 'Créditos', 9249, 'EC');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (239, 'Engenharia Elétrica                            ', 'Créditos', 143, 'EE');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (240, 'Engenharia Mecânica                            ', 'Créditos', 2930, 'EM');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (241, 'Engenharia Metalúrgica e de Materiais          ', 'Créditos', 1219, 'EMM');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (242, 'Engenharia Oceânica                            ', 'Créditos', 1472, 'EO');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (243, 'Engenharia Nuclear                             ', 'Créditos', 808, 'EN');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (244, 'Engenharia (Pesq. Operac. e Gerenc. de Produção', 'Créditos', 6943, 'EOGP');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (245, 'Engenharia Química                             ', 'Créditos', 6538, 'EQ');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (246, 'Tecnologia de Processos Químicos e Bioquímicos ', 'Créditos', 2571, 'TPQB');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (247, 'Engenharia de Transportes                      ', 'Créditos', 5463, 'ET');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (248, 'Medicina (Anatomia Patológica)                 ', 'Créditos', 8136, 'MP');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (249, 'Medicina (Cardiologia)                         ', 'Créditos', 7926, 'M');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (250, 'Medicina (Cirurgia Geral)                      ', 'Créditos', 6355, 'MG');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (251, 'Medicina (Dermatologia)                        ', 'Créditos', 5887, 'M');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (252, 'Medicina (Endocrinologia)                      ', 'Créditos', 620, 'M');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (253, 'Medicina (Gastroenterologia)                   ', 'Créditos', 3357, 'M');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (254, 'Clínica Médica                                 ', 'Créditos', 3999, 'CM');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (255, 'Medicina (Doenças Infecciosas e Parasitárias)  ', 'Créditos', 8865, 'MIP');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (256, 'Nefrologia                                     ', 'Créditos', 374, 'N');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (257, 'Medicina (Ortopedia e Traumatologia)           ', 'Créditos', 8717, 'MT');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (258, 'Psiquiatria e Saúde Mental                     ', 'Créditos', 280, 'PSM');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (259, 'Medicina (Radiologia)                          ', 'Créditos', 467, 'M');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (260, 'Odontologia (Ortodontia)                       ', 'Créditos', 6115, 'O');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (261, 'Enfermagem                                     ', 'Créditos', 7270, 'E');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (262, 'Administração                                  ', 'Créditos', 9788, 'A');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (263, 'Comunicação                                    ', 'Créditos', 8034, 'C');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (264, 'Planejamento Urbano e Regional                 ', 'Créditos', 220, 'PUR');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (265, 'Serviço Social                                 ', 'Créditos', 4797, 'SS');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (266, 'Lingüística                                    ', 'Créditos', 3612, 'L');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (267, 'Letras (Letras Clássicas)                      ', 'Créditos', 8513, 'LC');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (268, 'Letras (Letras Vernáculas)                     ', 'Créditos', 7765, 'LV');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (269, 'Letras (Ciência da Literatura)                 ', 'Créditos', 1526, 'LL');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (270, 'Música                                         ', 'Créditos', 7795, 'M');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (271, 'Otorrinolaringologia                           ', 'Créditos', 5676, 'O');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (272, 'Oftalmologia                                   ', 'Créditos', 5023, 'O');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (273, 'Odontologia (Periodontia)                      ', 'Créditos', 3103, 'O');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (274, 'Odontologia (Odontopediatria)                  ', 'Créditos', 7245, 'O');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (275, 'Nutrição                                       ', 'Créditos', 5139, 'N');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (276, 'Interdisciplinar de Lingüística Aplicada       ', 'Créditos', 1149, 'ILA');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (277, 'Letras Neolatinas                              ', 'Créditos', 9986, 'LN');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (278, 'Química Biológica                              ', 'Créditos', 7769, 'QB');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (279, 'Arquitetura                                    ', 'Créditos', 8803, 'A');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (280, 'Artes Visuais                                  ', 'Créditos', 4591, 'AV');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (281, 'Ciência da Informação                          ', 'Créditos', 4706, 'CI');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (282, 'Ecologia                                       ', 'Créditos', 8956, 'E');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (283, 'Teoria Psicanalítica                           ', 'Créditos', 5043, 'TP');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (284, 'Psicologia                                     ', 'Créditos', 2673, 'P');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (285, 'Ciências Farmacêuticas                         ', 'Créditos', 7244, 'CF');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (286, 'Biotecnologia Vegetal                          ', 'Créditos', 6618, 'BV');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (287, 'Psicossociologia de Comunid. e Ecologia Social ', 'Créditos', 8518, 'PCES');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (288, 'Planejamento Energético                        ', 'Créditos', 3712, 'PE');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (289, 'Urbanismo                                      ', 'Créditos', 1966, 'U');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (290, 'Química Inorgânica                             ', 'Créditos', 996, 'QI');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (291, 'Ciências Morfológicas                          ', 'Créditos', 7794, 'CM');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (292, 'Química Orgânica                               ', 'Créditos', 1631, 'QO');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (293, 'Agronomia (Ciência do Solo)                    ', 'Créditos', 2187, 'AS');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (294, 'Ciências Veterinárias                          ', 'Créditos', 4673, 'CV');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (295, 'Ciência e Tecnologia de Alimentos              ', 'Créditos', 6923, 'CTA');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (296, 'Desenvolvimento, Agricultura e Sociedade       ', 'Créditos', 6481, 'DAS');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (297, 'Microbiologia Veterinária                      ', 'Créditos', 2667, 'MV');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (298, 'Medicina Veterinária                           ', 'Créditos', 1914, 'MV');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (299, 'Fitotecnia                                     ', 'Créditos', 4593, 'F');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (300, 'Ciências Ambientais e Florestais               ', 'Créditos', 7664, 'CAF');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (301, 'Biologia Animal                                ', 'Créditos', 5754, 'BA');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (302, 'Educação                                       ', 'Créditos', 5888, 'E');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (303, 'Física                                         ', 'Créditos', 7125, 'F');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (304, 'Matemática                                     ', 'Créditos', 378, 'M');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (305, 'Geociências (Geoquímica)                       ', 'Créditos', 7488, 'G');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (306, 'História                                       ', 'Créditos', 477, 'H');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (307, 'Engenharia Civil                               ', 'Créditos', 7243, 'EC');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (308, 'Patologia (Anatomia Patológica)                ', 'Créditos', 7301, 'PP');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (309, 'Medicina (Cirurgia Gastroenterológica)         ', 'Créditos', 7592, 'MG');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (310, 'Medicina (Cirurgia Torácica)                   ', 'Créditos', 902, 'MT');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (311, 'Medicina (Dermatologia)                        ', 'Créditos', 1115, 'M');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (312, 'Medicina (Pneumologia)                         ', 'Créditos', 1623, 'M');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (313, 'Medicina (Pediatria)                           ', 'Créditos', 1950, 'M');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (314, 'Odontologia (Odontologia Social)               ', 'Créditos', 5451, 'OS');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (315, 'Medicina Veterinária (Hig. Veter. Proc. Tecn. P', 'Créditos', 9486, 'MVVP');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (316, 'Letras                                         ', 'Créditos', 2162, 'L');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (317, 'Patologia Experimental                         ', 'Créditos', 8056, 'PE');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (318, 'Patologia Buco-Dental                          ', 'Créditos', 2828, 'PB');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (319, 'Engenharia de Produção                         ', 'Créditos', 4880, 'EP');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (320, 'Medicina (Cardiologia)                         ', 'Créditos', 7032, 'M');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (321, 'Economia                                       ', 'Créditos', 859, 'E');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (322, 'Medicina Veterinária (Patologia Veterinária)   ', 'Créditos', 5904, 'MVV');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (323, 'Medicina Veterinária (Cir. e Clínica Veterinári', 'Créditos', 1214, 'MVCV');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (324, 'Medicina (Neurologia)                          ', 'Créditos', 2524, 'M');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (325, 'Administracao                                  ', 'Créditos', 7746, 'A');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (326, 'Química Orgânica                               ', 'Créditos', 9211, 'QO');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (327, 'Geologia e Geofísica Marinha                   ', 'Créditos', 6207, 'GGM');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (328, 'Medicina (Doenças Infecciosas e Parasitárias)  ', 'Créditos', 6267, 'MIP');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (329, 'Antropologia                                   ', 'Créditos', 8542, 'A');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (330, 'Engenharia Metalúrgica                         ', 'Créditos', 3471, 'EM');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (331, 'Ciência Política                               ', 'Créditos', 8859, 'CP');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (332, 'Ciência da Computação                          ', 'Créditos', 714, 'CC');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (333, 'Computação Aplicada e Automação                ', 'Créditos', 6852, 'CAA');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (334, 'Engenharia Mecânica                            ', 'Créditos', 2374, 'EM');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (335, 'Ciência Ambiental                              ', 'Créditos', 8401, 'CA');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (336, 'Biologia Marinha                               ', 'Créditos', 3560, 'BM');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (337, 'Biologia (Biociências Nucleares)               ', 'Créditos', 7675, 'BN');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (338, 'Medicina (Cardiologia)                         ', 'Créditos', 9597, 'M');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (339, 'Medicina (Endocrinologia)                      ', 'Créditos', 6305, 'M');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (340, 'Saúde Coletiva                                 ', 'Créditos', 8419, 'SC');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (341, 'Medicina (Nefrologia)                          ', 'Créditos', 6590, 'M');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (342, 'Educação                                       ', 'Créditos', 1586, 'E');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (343, 'Odontologia                                    ', 'Créditos', 9749, 'O');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (344, 'Letras                                         ', 'Créditos', 4104, 'L');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (345, 'Medicina (Urologia)                            ', 'Créditos', 7757, 'M');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (346, 'Psicologia Social                              ', 'Créditos', 4203, 'PS');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (347, 'Ciências Contábeis                             ', 'Créditos', 8888, 'CC');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (348, 'Direito                                        ', 'Créditos', 5990, 'D');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (349, 'Filosofia                                      ', 'Créditos', 8153, 'F');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (350, 'Morfologia                                     ', 'Créditos', 7207, 'M');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (351, 'Microbiologia                                  ', 'Créditos', 5575, 'M');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (352, 'Modelagem Computacional                        ', 'Créditos', 7947, 'MC');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (353, 'Análise de Bacias: Form. Preenc. e Tect. Modifi', 'Créditos', 2660, 'ABFP');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (354, 'Educação                                       ', 'Créditos', 2696, 'E');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (355, 'Física                                         ', 'Créditos', 3803, 'F');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (356, 'Matemática                                     ', 'Créditos', 3960, 'M');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (357, 'Informática                                    ', 'Créditos', 5292, 'I');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (358, 'Química (Química Analítica Inorgânica)         ', 'Créditos', 252, 'QAI');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (359, 'Filosofia                                      ', 'Créditos', 1700, 'F');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (360, 'Teologia                                       ', 'Créditos', 2343, 'T');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (361, 'Economia                                       ', 'Créditos', 3767, 'E');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (362, 'Psicologia (Psicologia Clínica)                ', 'Créditos', 6553, 'PC');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (363, 'Engenharia Civil                               ', 'Créditos', 1968, 'EC');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (364, 'Engenharia Elétrica                            ', 'Créditos', 7751, 'EE');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (365, 'Engenharia Mecânica                            ', 'Créditos', 2502, 'EM');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (366, 'Engenharia Metalúrgica                         ', 'Créditos', 2335, 'EM');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (367, 'Engenharia de Produção                         ', 'Créditos', 517, 'EP');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (368, 'Medicina (Endocrinologia)                      ', 'Créditos', 5491, 'M');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (369, 'Administração de Empresas                      ', 'Créditos', 5857, 'AE');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (370, 'Direito                                        ', 'Créditos', 7939, 'D');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (371, 'Serviço Social                                 ', 'Créditos', 2632, 'SS');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (372, 'Letras                                         ', 'Créditos', 9039, 'L');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (373, 'História Social da Cultura                     ', 'Créditos', 8776, 'HSC');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (374, 'Relações Internacionais                        ', 'Créditos', 4627, 'RI');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (375, 'Filosofia                                      ', 'Créditos', 8094, 'F');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (376, 'Psicologia (Psicologia Social)                 ', 'Créditos', 8771, 'PS');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (377, 'Direito                                        ', 'Créditos', 9981, 'D');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (378, 'Educação Física                                ', 'Créditos', 7308, 'EF');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (379, 'Química                                        ', 'Créditos', 844, 'Q');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (380, 'Engenharia Elétrica                            ', 'Créditos', 438, 'EE');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (381, 'Engenharia Mecânica                            ', 'Créditos', 8872, 'EM');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (382, 'Ciência dos Materiais                          ', 'Créditos', 4223, 'CM');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (383, 'Engenharia Nuclear                             ', 'Créditos', 7325, 'EN');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (384, 'Sistemas e Computação                          ', 'Créditos', 4053, 'SC');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (385, 'Engenharia de Transportes                      ', 'Créditos', 146, 'ET');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (386, 'Matemática                                     ', 'Créditos', 8481, 'M');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (387, 'Física                                         ', 'Créditos', 1200, 'F');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (388, 'Biologia Parasitária                           ', 'Créditos', 533, 'BP');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (389, 'Saúde Pública                                  ', 'Créditos', 1459, 'SP');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (390, 'Medicina Tropical                              ', 'Créditos', 9885, 'MT');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (391, 'Biologia Celular e Molecular                   ', 'Créditos', 2518, 'BCM');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (392, 'Saúde da Criança e da Mulher                   ', 'Créditos', 7354, 'SCM');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (393, 'Economia                                       ', 'Créditos', 5446, 'E');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (394, 'Administração Pública                          ', 'Créditos', 8368, 'AP');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (395, 'Sociologia                                     ', 'Créditos', 1750, 'S');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (396, 'Ciência Política (Ciência Política e Sociologia', 'Créditos', 1552, 'CPPS');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (397, 'Astronomia                                     ', 'Créditos', 4475, 'A');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (398, 'Geofísica                                      ', 'Créditos', 9548, 'G');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (399, 'Música                                         ', 'Créditos', 3820, 'M');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (400, 'Educação Matemática                            ', 'Créditos', 5579, 'EM');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (401, 'Educação                                       ', 'Créditos', 3683, 'E');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (402, 'Enfermagem                                     ', 'Créditos', 6466, 'E');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (403, 'Memória Social e Documento                     ', 'Créditos', 2759, 'MSD');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (404, 'Teatro                                         ', 'Créditos', 2857, 'T');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (405, 'Música                                         ', 'Créditos', 1385, 'M');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (406, 'Tecnologia                                     ', 'Créditos', 5169, 'T');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (407, 'Biociências e Biotecnologia                    ', 'Créditos', 9319, 'BB');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (408, 'Educação                                       ', 'Créditos', 5266, 'E');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (409, 'Física                                         ', 'Créditos', 4525, 'F');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (410, 'Matemática                                     ', 'Créditos', 8844, 'M');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (411, 'Ciência da Computação                          ', 'Créditos', 234, 'CC');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (412, 'Química                                        ', 'Créditos', 9951, 'Q');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (413, 'Bioquímica e Imunologia                        ', 'Créditos', 1005, 'BI');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (414, 'Ciências Biológicas (Fisiologia e Farmacologia)', 'Créditos', 4167, 'CBF');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (415, 'Ciências Biológicas (Microbiologia)            ', 'Créditos', 1093, 'CB');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (416, 'Biologia Celular                               ', 'Créditos', 4888, 'BC');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (417, 'Parasitologia                                  ', 'Créditos', 9896, 'P');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (418, 'Ciência Política                               ', 'Créditos', 4995, 'CP');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (419, 'Filosofia                                      ', 'Créditos', 500, 'F');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (420, 'Economia                                       ', 'Créditos', 3728, 'E');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (421, 'Saneamento, Meio Ambiente e Recursos Hídricos  ', 'Créditos', 9282, 'SMAR');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (422, 'Engenharia Elétrica                            ', 'Créditos', 2971, 'EE');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (423, 'Engenharia Mecânica                            ', 'Créditos', 6121, 'EM');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (424, 'Engenharia Metalúrgica e de Minas              ', 'Créditos', 4495, 'EMM');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (425, 'Ciências Técnicas Nucleares                    ', 'Créditos', 492, 'CTN');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (426, 'Patologia                                      ', 'Créditos', 7891, 'P');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (427, 'Cirurgia                                       ', 'Créditos', 2743, 'C');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (428, 'Medicina (Dermatologia)                        ', 'Créditos', 8483, 'M');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (429, 'Medicina (Medicina Tropical)                   ', 'Créditos', 3350, 'MT');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (430, 'Oftalmologia                                   ', 'Créditos', 2262, 'O');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (431, 'Odontologia                                    ', 'Créditos', 6610, 'O');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (432, 'Administração                                  ', 'Créditos', 553, 'A');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (433, 'Direito                                        ', 'Créditos', 8930, 'D');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (434, 'Ciência da Informação                          ', 'Créditos', 6000, 'CI');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (435, 'Zootecnia                                      ', 'Créditos', 3176, 'Z');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (436, 'Medicina Veterinária                           ', 'Créditos', 9799, 'MV');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (437, 'Ciência de Alimentos                           ', 'Créditos', 6963, 'CA');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (438, 'Sociologia                                     ', 'Créditos', 2521, 'S');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (439, 'Demografia                                     ', 'Créditos', 1296, 'D');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (440, 'Medicina (Pediatria)                           ', 'Créditos', 2545, 'M');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (441, 'Ecologia (Conservação e Manejo da Vida Silvestr', 'Créditos', 288, 'EMVS');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (442, 'Geografia                                      ', 'Créditos', 8292, 'G');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (443, 'Engenharia de Estruturas                       ', 'Créditos', 3279, 'EE');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (444, 'Geologia                                       ', 'Créditos', 3963, 'G');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (445, 'Educação Física                                ', 'Créditos', 9260, 'EF');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (446, 'Psicologia                                     ', 'Créditos', 4029, 'P');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (447, 'Ciência Animal                                 ', 'Créditos', 6727, 'CA');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (448, 'História                                       ', 'Créditos', 3861, 'H');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (449, 'Engenharia Química                             ', 'Créditos', 2145, 'EQ');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (450, 'Saúde Pública                                  ', 'Créditos', 960, 'SP');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (451, 'Enfermagem                                     ', 'Créditos', 6392, 'E');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (452, 'Sociologia e Política                          ', 'Créditos', 2780, 'SP');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (453, 'Medicina (Gastroenterologia)                   ', 'Créditos', 7861, 'M');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (454, 'Arquitetura                                    ', 'Créditos', 4132, 'A');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (455, 'Estudos Lingüísticos                           ', 'Créditos', 7198, 'EL');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (456, 'Estudos Literários                             ', 'Créditos', 2816, 'EL');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (457, 'Fitotecnia (Produção Vegetal)                  ', 'Créditos', 1449, 'FV');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (458, 'Agronomia (Fitopatologia)                      ', 'Créditos', 3716, 'A');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (459, 'Microbiologia Agrícola                         ', 'Créditos', 7628, 'MA');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (460, 'Genética e Melhoramento                        ', 'Créditos', 2385, 'GM');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (461, 'Ciências Agrárias (Fisiologia Vegetal)         ', 'Créditos', 3413, 'CAV');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (462, 'Engenharia Agrícola                            ', 'Créditos', 5394, 'EA');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (463, 'Agronomia (Solos e Nutrição de Plantas)        ', 'Créditos', 7620, 'ANP');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (464, 'Extensão Rural                                 ', 'Créditos', 1656, 'ER');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (465, 'Economia Aplicada                              ', 'Créditos', 301, 'EA');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (466, 'Zootecnia                                      ', 'Créditos', 9173, 'Z');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (467, 'Ciência Florestal                              ', 'Créditos', 6808, 'CF');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (468, 'Ciência e Tecnologia de Alimentos              ', 'Créditos', 1602, 'CTA');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (469, 'Agronomia (Meteorologia Agrícola)              ', 'Créditos', 6147, 'AA');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (470, 'Agroquímica                                    ', 'Créditos', 2356, 'A');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (471, 'Entomologia                                    ', 'Créditos', 464, 'E');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (472, 'Engenharia Civil                               ', 'Créditos', 4137, 'EC');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (473, 'Economia Doméstica                             ', 'Créditos', 7355, 'ED');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (474, 'Medicina Veterinária                           ', 'Créditos', 1782, 'MV');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (475, 'Botânica                                       ', 'Créditos', 9255, 'B');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (476, 'Engenharia Elétrica                            ', 'Créditos', 579, 'EE');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (477, 'Engenharia Mecânica                            ', 'Créditos', 6390, 'EM');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (478, 'Engenharia de Produção                         ', 'Créditos', 3965, 'EP');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (479, 'Agronomia (Fitotecnia)                         ', 'Créditos', 6635, 'A');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (480, 'Agronomia (Solos e Nutrição de Plantas)        ', 'Créditos', 6638, 'ANP');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (481, 'Administração                                  ', 'Créditos', 3801, 'A');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (482, 'Zootecnia                                      ', 'Créditos', 7604, 'Z');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (483, 'Ciência dos Alimentos                          ', 'Créditos', 4301, 'CA');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (484, 'Agronomia (Genética e Melhoramento de Plantas) ', 'Créditos', 1392, 'AMP');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (485, 'Agronomia (Entomologia)                        ', 'Créditos', 7466, 'A');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (486, 'Agronomia (Fisiologia Vegetal)                 ', 'Créditos', 1309, 'AV');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (487, 'Engenharia Agrícola                            ', 'Créditos', 8422, 'EA');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (488, 'Engenharia Florestal                           ', 'Créditos', 5359, 'EF');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (489, 'Agronomia (Estatística e Experimentação Agropec', 'Créditos', 996, 'AEA');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (490, 'Agronomia (Agroquímica e Agrobioquímica)       ', 'Créditos', 8973, 'AA');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (491, 'Agronomia (Fitopatologia)                      ', 'Créditos', 9167, 'A');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (492, 'Filosofia                                      ', 'Créditos', 7704, 'F');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (493, 'Letras                                         ', 'Créditos', 2727, 'L');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (494, 'Ciências Biológicas (Zoologia)                 ', 'Créditos', 2152, 'CB');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (495, 'Ciência da Religião                            ', 'Créditos', 4441, 'CR');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (496, 'Educação                                       ', 'Créditos', 1080, 'E');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (497, 'Engenharia Elétrica                            ', 'Créditos', 4898, 'EE');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (498, 'Engenharia Mecânica                            ', 'Créditos', 9988, 'EM');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (499, 'Educação                                       ', 'Créditos', 270, 'E');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (500, 'Imunologia e Parasitologia Aplicadas           ', 'Créditos', 4749, 'IPA');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (501, 'Engenharia Química                             ', 'Créditos', 8197, 'EQ');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (502, 'Genética e Bioquímica                          ', 'Créditos', 1730, 'GB');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (503, 'Lingüística                                    ', 'Créditos', 1999, 'L');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (504, 'Desenvolvimento Econômico                      ', 'Créditos', 523, 'DE');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (505, 'Geografia                                      ', 'Créditos', 7160, 'G');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (506, 'Evolução Crustal e Recursos Naturais           ', 'Créditos', 8650, 'ECRN');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (507, 'Engenharia Civil                               ', 'Créditos', 9709, 'EC');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (508, 'Engenharia Mineral                             ', 'Créditos', 9865, 'EM');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (509, 'Letras                                         ', 'Créditos', 1718, 'L');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (510, 'Tratamento da Informação Espacial              ', 'Créditos', 1379, 'TIE');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (511, 'Odontologia                                    ', 'Créditos', 573, 'O');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (512, 'Patologia                                      ', 'Créditos', 1667, 'P');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (513, 'Tecnologia                                     ', 'Créditos', 366, 'T');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (514, 'Educação                                       ', 'Créditos', 5005, 'E');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (515, 'Educação Especial (Educ. do Indivíduo Especial)', 'Créditos', 2993, 'EEIE');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (516, 'Ecologia e Recursos Naturais                   ', 'Créditos', 8955, 'ERN');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (517, 'Ciência e Engenharia dos Materiais             ', 'Créditos', 3428, 'CEM');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (518, 'Química                                        ', 'Créditos', 8396, 'Q');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (519, 'Engenharia Química                             ', 'Créditos', 7654, 'EQ');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (520, 'Matemática                                     ', 'Créditos', 8631, 'M');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (521, 'Ciências da Computação                         ', 'Créditos', 3282, 'CC');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (522, 'Ciências Sociais                               ', 'Créditos', 4655, 'CS');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (523, 'Filosofia                                      ', 'Créditos', 4447, 'F');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (524, 'Física                                         ', 'Créditos', 2081, 'F');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (525, 'Genética e Evolução                            ', 'Créditos', 1839, 'GE');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (526, 'Engenharia de Produção                         ', 'Créditos', 7485, 'EP');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (527, 'Ciências Fisiológicas                          ', 'Créditos', 3764, 'CF');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (528, 'Engenharia Urbana                              ', 'Créditos', 449, 'EU');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (529, 'Fisioterapia                                   ', 'Créditos', 3502, 'F');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (530, 'Educação                                       ', 'Créditos', 2466, 'E');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (531, 'Física [Sp-Capital]                            ', 'Créditos', 9445, 'F');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (532, 'Ensino Ciências (Modalidade Física e Química)  ', 'Créditos', 110, 'ECFQ');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (533, 'Astronomia                                     ', 'Créditos', 8327, 'A');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (534, 'Matemática [Sp-Capital]                        ', 'Créditos', 9111, 'M');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (535, 'Matemática Aplicada [Sp-Capital]               ', 'Créditos', 5471, 'MA');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (536, 'Estatística                                    ', 'Créditos', 262, 'E');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (537, 'Química (Química Inorgânica)                   ', 'Créditos', 4876, 'QI');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (538, 'Química Orgânica                               ', 'Créditos', 1290, 'QO');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (539, 'Química (Química Analítica) [Sp-Capital]       ', 'Créditos', 7557, 'QA');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (540, 'Química (Físico-Química)                       ', 'Créditos', 6152, 'Q');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (541, 'Geociências (Mineralogia e Petrologia)         ', 'Créditos', 4516, 'GP');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (542, 'Oceanografia (Oceanografia Física)             ', 'Créditos', 6671, 'OF');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (543, 'Geofísica                                      ', 'Créditos', 5352, 'G');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (544, 'Ciências Biológicas (Bioquímica)               ', 'Créditos', 8666, 'CB');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (545, 'Ciências Biológicas (Botânica)                 ', 'Créditos', 5135, 'CB');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (546, 'Farmacologia                                   ', 'Créditos', 591, 'F');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (547, 'Ciências Biológicas (Biologia Genética)        ', 'Créditos', 2671, 'CBG');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (548, 'Ciências Biológicas (Microbiologia)            ', 'Créditos', 6769, 'CB');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (549, 'Ciências (Anatomia Funcional: Estrutura e Ultra', 'Créditos', 7967, 'CFEU');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (550, 'Ciências (Biologia Celular e Tecidual)         ', 'Créditos', 3179, 'CCT');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (551, 'Oceanografia (Oceanografia Biológica)          ', 'Créditos', 1780, 'OB');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (552, 'Ciências (Biologia da Relação Patógeno-Hospedei', 'Créditos', 4205, 'CRP');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (553, 'Ciências Biológicas (Zoologia)                 ', 'Créditos', 3472, 'CB');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (554, 'Sociologia                                     ', 'Créditos', 8044, 'S');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (555, 'Ciência Social (Antropologia Social)           ', 'Créditos', 3249, 'CSS');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (556, 'Ciência Política                               ', 'Créditos', 8284, 'CP');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (557, 'Filosofia                                      ', 'Créditos', 325, 'F');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (558, 'História Social                                ', 'Créditos', 5796, 'HS');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (559, 'História Econômica                             ', 'Créditos', 2866, 'HE');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (560, 'Geografia (Geografia Física)                   ', 'Créditos', 2078, 'GF');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (561, 'Geografia (Geografia Humana)                   ', 'Créditos', 1966, 'GH');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (562, 'Economia                                       ', 'Créditos', 6762, 'E');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (563, 'Psicologia (Psicologia Experimental)           ', 'Créditos', 9581, 'PE');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (564, 'Psicologia Escolar e do Desenvolvimento Humano ', 'Créditos', 1462, 'PEDH');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (565, 'Psicologia Clínica                             ', 'Créditos', 7652, 'PC');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (566, 'Psicologia Social                              ', 'Créditos', 6663, 'PS');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (567, 'Engenharia Elétrica [Sp-Capital]               ', 'Créditos', 1902, 'EE');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (568, 'Engenharia Mecânica [Sp-Capital]               ', 'Créditos', 491, 'EM');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (569, 'Medicina Veterinária (Reprodução Animal)       ', 'Créditos', 4611, 'MVA');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (570, 'Engenharia Metalúrgica [Sp-Capital]            ', 'Créditos', 9275, 'EM');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (571, 'Engenharia Naval                               ', 'Créditos', 2619, 'EN');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (572, 'Tecnologia Nuclear                             ', 'Créditos', 4771, 'TN');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (573, 'Engenharia (Engenharia de Produção)            ', 'Créditos', 5188, 'EP');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (574, 'Engenharia Química                             ', 'Créditos', 2106, 'EQ');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (575, 'Engenharia de Transportes [Sp-Capital]         ', 'Créditos', 5735, 'ET');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (576, 'Patologia                                      ', 'Créditos', 6122, 'P');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (577, 'Patologia Experimental e Comparada             ', 'Créditos', 2548, 'PEC');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (578, 'Medicina (Clínica Cirúrgica) [Sp-Capital]      ', 'Créditos', 5018, 'MC');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (579, 'Medicina (Dermatologia)                        ', 'Créditos', 9902, 'M');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (580, 'Alergia e Imunopatologia                       ', 'Créditos', 3023, 'AI');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (581, 'Endocrinologia                                 ', 'Créditos', 3964, 'E');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (582, 'Gastroenterologia Clínica                      ', 'Créditos', 6736, 'GC');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (583, 'Medicina (Obstetrícia e Ginecologia)           ', 'Créditos', 6669, 'MG');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (584, 'Medicina (Hematologia)                         ', 'Créditos', 7943, 'M');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (585, 'Medicina (Medicina Preventiva) [Sp-Capital]    ', 'Créditos', 6095, 'MP');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (586, 'Saúde Pública                                  ', 'Créditos', 9943, 'SP');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (587, 'Doenças Infecciosas e Parasitárias             ', 'Créditos', 612, 'DIP');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (588, 'Neurologia                                     ', 'Créditos', 3682, 'N');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (589, 'Otorrinolaringologia                           ', 'Créditos', 9665, 'O');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (590, 'Medicina (Pediatria) [Sp-Capital]              ', 'Créditos', 5378, 'M');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (591, 'Psiquiatria                                    ', 'Créditos', 8981, 'P');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (592, 'Medicina (Reumatologia)                        ', 'Créditos', 8759, 'M');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (593, 'Odontologia (Ortodontia) [Sp-Capital]          ', 'Créditos', 7923, 'O');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (594, 'Odontologia (Odontopediatria) [Sp-Capital]     ', 'Créditos', 7822, 'O');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (595, 'Tecnologia Bioquímico-Farmacêutica             ', 'Créditos', 7128, 'TB');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (596, 'Farmácia (Análises Clínicas)                   ', 'Créditos', 7189, 'FC');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (597, 'Toxicologia e Análises Toxicológicas           ', 'Créditos', 1306, 'TAT');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (598, 'Fármacos e Medicamentos [Sp-Capital]           ', 'Créditos', 760, 'FM');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (599, 'Toxicologia                                    ', 'Créditos', 4730, 'T');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (600, 'Enfermagem                                     ', 'Créditos', 988, 'E');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (601, 'Educação Física                                ', 'Créditos', 638, 'EF');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (602, 'Administração                                  ', 'Créditos', 6395, 'A');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (603, 'Controladoria e Contabilidade                  ', 'Créditos', 5065, 'CC');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (604, 'Ciências da Comunicação                        ', 'Créditos', 6543, 'CC');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (605, 'Arquitetura e Urbanismo [Sp-Capital]           ', 'Créditos', 3517, 'AU');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (606, 'Nutrição Animal                                ', 'Créditos', 7398, 'NA');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (607, 'Anatomia dos Animais Domésticos                ', 'Créditos', 6023, 'AAD');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (608, 'Ciência dos Alimentos [Sp-Capital]             ', 'Créditos', 6202, 'CA');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (609, 'Lingüística                                    ', 'Créditos', 2790, 'L');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (610, 'Letras (Língua e Literatura Italiana)          ', 'Créditos', 9012, 'LLI');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (611, 'Letras (Língua e Literatura Alemã)             ', 'Créditos', 5271, 'LLA');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (612, 'Letras (Letras Clássicas)                      ', 'Créditos', 4049, 'LC');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (613, 'Filologia e Língua Portuguesa                  ', 'Créditos', 8116, 'FLP');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (614, 'Letras (Língua e Literatura Francesa)          ', 'Créditos', 5452, 'LLF');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (615, 'Estudos Linguísticos e Literários em Inglês    ', 'Créditos', 6551, 'ELLI');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (616, 'Literatura Brasileira                          ', 'Créditos', 5780, 'LB');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (617, 'Letras (Literatura Portuguesa)                 ', 'Créditos', 4624, 'LP');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (618, 'Letras (Teoria Literária e Literatura Comparada', 'Créditos', 5414, 'LLLC');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (619, 'Letras (Língua Espanhola e Literaturas Espanhol', 'Créditos', 1066, 'LELE');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (620, 'Artes                                          ', 'Créditos', 5380, 'A');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (621, 'Ortopedia e Traumatologia                      ', 'Créditos', 29, 'OT');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (622, 'Ecologia                                       ', 'Créditos', 9064, 'E');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (623, 'Nefrologia                                     ', 'Créditos', 5634, 'N');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (624, 'Pneumologia                                    ', 'Créditos', 8279, 'P');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (625, 'Direito                                        ', 'Créditos', 4207, 'D');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (626, 'Enfermagem (Interunidades)                     ', 'Créditos', 2575, 'E');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (627, 'Imunologia [Sp-Capital]                        ', 'Créditos', 6759, 'I');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (628, 'Oftalmologia [Sp-Capital]                      ', 'Créditos', 452, 'O');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (629, 'Epidemiologia Experimental Aplicada A Zoonoses ', 'Créditos', 9148, 'EEAA');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (630, 'Meteorologia                                   ', 'Créditos', 7051, 'M');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (631, 'Cardiologia                                    ', 'Créditos', 5157, 'C');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (632, 'Geociências (Recursos Minerais e Hidrogeologia)', 'Créditos', 1178, 'GMH');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (633, 'Geociências (Geoquímica e Geotectônica)        ', 'Créditos', 6253, 'GG');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (634, 'Geociências (Geologia Sedimentar)              ', 'Créditos', 9643, 'GS');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (635, 'Urologia                                       ', 'Créditos', 8477, 'U');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (636, 'Engenharia Civil [Sp-Capital]                  ', 'Créditos', 3206, 'EC');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (637, 'Engenharia Mineral                             ', 'Créditos', 1841, 'EM');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (638, 'Anestesiologia                                 ', 'Créditos', 4070, 'A');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (639, 'Radiologia                                     ', 'Créditos', 4486, 'R');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (640, 'Integração da América Latina                   ', 'Créditos', 5910, 'IAL');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (641, 'Língua Hebraica, Literatura e Cultura Judaica  ', 'Créditos', 8956, 'LHLC');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (642, 'Odontologia (Endodontia) [Sp-Capital]          ', 'Créditos', 8215, 'O');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (643, 'Odontologia (Periodontia) [Sp-Capital]         ', 'Créditos', 2134, 'O');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (644, 'Odontologia (Diagnóstico Bucal) [Sp-Capital]   ', 'Créditos', 4374, 'OB');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (645, 'Odontologia (Patologia Bucal) [Sp-Capital]     ', 'Créditos', 2106, 'OB');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (646, 'Odontologia (Prótese Dentária)                 ', 'Créditos', 5159, 'OD');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (647, 'Odontologia (Dentística) [Sp-Capital]          ', 'Créditos', 1861, 'O');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (648, 'Odontologia (Clínica Integrada)                ', 'Créditos', 8902, 'OI');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (649, 'Ciência Ambiental                              ', 'Créditos', 3350, 'CA');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (650, 'Odontologia (Materiais Dentários)              ', 'Créditos', 4537, 'OD');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (651, 'Interunidades em Energia                       ', 'Créditos', 124, 'IE');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (652, 'Clínica Veterinária                            ', 'Créditos', 735, 'CV');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (653, 'Arqueologia                                    ', 'Créditos', 2795, 'A');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (654, 'Ciências (Medicina Legal)                      ', 'Créditos', 2590, 'CL');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (655, 'Medicina (Cirurgia do Aparelho Digestivo)      ', 'Créditos', 4880, 'MAD');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (656, 'Oncologia                                      ', 'Créditos', 781, 'O');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (657, 'Medicina Veterinária                           ', 'Créditos', 2714, 'MV');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (658, 'Biotecnologia                                  ', 'Créditos', 9875, 'B');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (659, 'Medicina (Cirurgia Torácica e Cardiovascular)  ', 'Créditos', 185, 'MTC');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (660, 'Psicologia (Neurociências e Comportamento)     ', 'Créditos', 8902, 'PC');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (661, 'Nutrição Humana Aplicada                       ', 'Créditos', 5, 'NHA');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (662, 'Zootecnia (Qualidade e Produtividade Animal)   ', 'Créditos', 4182, 'ZPA');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (663, 'Odontologia (Deontologia e Odontologia Legal)  ', 'Créditos', 6319, 'OOL');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (664, 'Letras (Est. Comp. de Liter. de Língua Portugue', 'Créditos', 4226, 'LCLL');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (665, 'Medicina (Emergências Clínicas)                ', 'Créditos', 7849, 'MC');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (666, 'Ciências (Fisiologia Geral)                    ', 'Créditos', 3519, 'CG');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (667, 'Ciências (Fisiologia Humana)                   ', 'Créditos', 2470, 'CH');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (668, 'Ciências Biológicas (Bioestatística) [Rib. Pret', 'Créditos', 5468, 'CBP');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (669, 'Bioquímica [Rib. Preto]                        ', 'Créditos', 6813, 'BP');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (670, 'Ciências Biológicas (Farmacologia) [Rib. Preto]', 'Créditos', 8305, 'CBP');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (671, 'Fisiologia [Rib. Preto]                        ', 'Créditos', 9308, 'FP');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (672, 'Ciências Biológicas (Genética) [Rib. Preto]    ', 'Créditos', 6034, 'CBP');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (673, 'Biologia Celular e Molecular                   ', 'Créditos', 6903, 'BCM');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (674, 'Patologia Humana [Rib.Preto]                   ', 'Créditos', 5888, 'PH');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (675, 'Medicina (Clínica Cirúrgica) [Rib. Preto]      ', 'Créditos', 4141, 'MCP');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (676, 'Medicina (Tocoginecologia) [Rib.Preto]         ', 'Créditos', 1352, 'M');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (677, 'Medicina (Clínica Médica) [Rib. Preto]         ', 'Créditos', 3010, 'MMP');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (678, 'Saúde na Comunidae                             ', 'Créditos', 8655, 'SC');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (679, 'Medicina (Neurologia) [Rib.Preto]              ', 'Créditos', 1311, 'M');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (680, 'Oftalmologia [Rib.Preto]                       ', 'Créditos', 5909, 'O');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (681, 'Medicina (Ortopedia e Traumatologia) [Rib.Preto', 'Créditos', 8334, 'MT');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (682, 'Medicina (Pediatria) [Rib.Preto]               ', 'Créditos', 7849, 'M');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (683, 'Enfermagem Psiquiátrica [Rib. Preto]           ', 'Créditos', 2995, 'EPP');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (684, 'Enfermagem Fundamental [Rib. Preto]            ', 'Créditos', 1022, 'EFP');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (685, 'Entomologia [Rib. Preto]                       ', 'Créditos', 937, 'EP');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (686, 'Odontologia (Reabilitação Oral) [Rib.Preto]    ', 'Créditos', 5009, 'OO');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (687, 'Psicobiologia [Rib.Preto]                      ', 'Créditos', 3932, 'P');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (688, 'Física Aplicada à Medicina e Biologia [Rib. Pre', 'Créditos', 7586, 'FAMB');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (689, 'Ciências Farmacêuticas [Rib. Preto]            ', 'Créditos', 6014, 'CFP');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (690, 'Imunologia Básica e Aplicada [Rib. Preto]      ', 'Créditos', 253, 'IBAP');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (691, 'Enfermagem em Saúde Pública [Rib. Preto]       ', 'Créditos', 3340, 'ESPP');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (692, 'Medicina (Otorrinolaringologia) [Rib.Preto]    ', 'Créditos', 6888, 'M');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (693, 'Medicina (Saúde Mental) [Rib.Preto]            ', 'Créditos', 4736, 'MM');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (694, 'Química [Rib.Preto]                            ', 'Créditos', 9987, 'Q');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (695, 'Entomologia [Esalq]                            ', 'Créditos', 4558, 'E');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (696, 'Agronomia (Fitopatologia) [Esalq]              ', 'Créditos', 8035, 'A');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (697, 'Fitotecnia [Esalq]                             ', 'Créditos', 5941, 'F');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (698, 'Agronomia (Genética e Melhoramento de Plantas) ', 'Créditos', 2496, 'AMP');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (699, 'Agronomia (Microbiologia Agrícola) [Esalq]     ', 'Créditos', 6741, 'AA');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (700, 'Agronomia (Solos e Nutrição de Plantas) [Esalq]', 'Créditos', 5618, 'ANP');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (701, 'Irrigação e Drenagem [Esalq]                   ', 'Créditos', 2565, 'ID');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (702, 'Agronomia (Estatística e Experimentação Agronôm', 'Créditos', 5773, 'AEA');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (703, 'Agronomia ( Física do Ambiente Agrícola ) Esalq', 'Créditos', 2247, 'AFAA');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (704, 'Ciências (Economia Aplicada) [Esalq]           ', 'Créditos', 6963, 'CA');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (705, 'Ciência Animal e Pastagens [Esalq]             ', 'Créditos', 4399, 'CAP');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (706, 'Ciências Florestais [Esalq]                    ', 'Créditos', 9597, 'CF');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (707, 'Ciência e Tecnologia de Alimentos [Esalq]      ', 'Créditos', 3402, 'CTA');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (708, 'Fisiologia Bioquímica de Plantas [Esalq]       ', 'Créditos', 9551, 'FBP');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (709, 'Máquinas Agrícolas [Esalq]                     ', 'Créditos', 6865, 'MA');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (710, 'Ciência e Tecnologia de Madeiras [Esalq]       ', 'Créditos', 4832, 'CTM');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (711, 'Física [S.Carlos]                              ', 'Créditos', 7738, 'F');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (712, 'Matemática [S.Carlos]                          ', 'Créditos', 2609, 'M');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (713, 'Ciência da Computação e Matemática Computaciona', 'Créditos', 1940, 'CCMC');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (714, 'Físico-Química [S. Carlos]                     ', 'Créditos', 3091, 'FC');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (715, 'Bioengenharia [S.Carlos]                       ', 'Créditos', 9142, 'B');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (716, 'Engenharia Civil (Engenharia de Estruturas) [S.', 'Créditos', 7561, 'ECE');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (717, 'Engenharia Hidráulica e Saneamento [S.Carlos]  ', 'Créditos', 6067, 'EHS');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (718, 'Geotecnia [S.Carlos]                           ', 'Créditos', 9176, 'G');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (719, 'Engenharia Elétrica [S. Carlos]                ', 'Créditos', 6543, 'EEC');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (720, 'Engenharia Mecânica [S. Carlos]                ', 'Créditos', 7943, 'EMC');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (721, 'Engenharia Metalúrgica [S. Carlos]             ', 'Créditos', 2723, 'EMC');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (722, 'Engenharia de Transportes [S.Carlos]           ', 'Créditos', 8597, 'ET');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (723, 'Arquitetura [S.Carlos]                         ', 'Créditos', 7046, 'A');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (724, 'Química (Química Analítica) [S.Carlos]         ', 'Créditos', 7897, 'QA');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (725, 'Ciências da Engenharia Ambiental [S.Carlos]    ', 'Créditos', 20, 'CEA');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (726, 'Ciência e Engenharia de Materiais [S.Carlos]   ', 'Créditos', 6168, 'CEM');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (727, 'Engenharia de produção                         ', 'Créditos', 1083, 'E');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (728, 'Odontologia (Dentística) [Bauru]               ', 'Créditos', 6501, 'O');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (729, 'Odontologia (Estomatologia) [Bauru]            ', 'Créditos', 8426, 'O');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (730, 'Odontologia (Odontopediatria) [Bauru]          ', 'Créditos', 3719, 'O');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (731, 'Odontologia (Ortodontia) [Bauru]               ', 'Créditos', 6573, 'O');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (732, 'Odontologia (Reabilitação Oral) [Bauru]        ', 'Créditos', 9815, 'OO');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (733, 'Odontologia (Periodontia) [Bauru]              ', 'Créditos', 544, 'O');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (734, 'Odontologia (Endodontia) [Bauru]               ', 'Créditos', 9212, 'O');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (735, 'Odontologia (Patologia Bucal) [Bauru]          ', 'Créditos', 8830, 'OB');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (736, 'Educação                                       ', 'Créditos', 1031, 'E');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (737, 'Física                                         ', 'Créditos', 5573, 'F');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (738, 'Matemática                                     ', 'Créditos', 8798, 'M');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (739, 'Matemática Aplicada                            ', 'Créditos', 3319, 'MA');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (740, 'Ciência da Computação                          ', 'Créditos', 3022, 'CC');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (741, 'Estatística                                    ', 'Créditos', 1877, 'E');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (742, 'Química                                        ', 'Créditos', 8903, 'Q');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (743, 'Biologia Vegetal                               ', 'Créditos', 2677, 'BV');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (744, 'Ecologia                                       ', 'Créditos', 7470, 'E');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (745, 'Ciências Biológicas (Fisiologia)               ', 'Créditos', 7280, 'CB');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (746, 'Biologia (Imunologia)                          ', 'Créditos', 5597, 'B');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (747, 'Biologia e Patologia Buco-Dental [Piracicaba]  ', 'Créditos', 4359, 'BPB');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (748, 'Sociologia                                     ', 'Créditos', 6075, 'S');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (749, 'Antropologia Social                            ', 'Créditos', 7864, 'AS');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (750, 'Ciência Política                               ', 'Créditos', 2054, 'CP');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (751, 'Lógica e Filosofia da Ciência                  ', 'Créditos', 1361, 'LFC');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (752, 'História                                       ', 'Créditos', 6509, 'H');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (753, 'Economia                                       ', 'Créditos', 6181, 'E');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (754, 'Engenharia Elétrica                            ', 'Créditos', 1623, 'EE');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (755, 'Engenharia Mecânica                            ', 'Créditos', 8770, 'EM');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (756, 'Ciências Médicas                               ', 'Créditos', 8195, 'CM');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (757, 'Genética e Biologia Molecular                  ', 'Créditos', 4511, 'GBM');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (758, 'Engenharia Agrícola                            ', 'Créditos', 7689, 'EA');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (759, 'Ciência de Alimentos                           ', 'Créditos', 7299, 'CA');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (760, 'Tecnologia de Alimentos                        ', 'Créditos', 8165, 'TA');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (761, 'Engenharia de Alimentos                        ', 'Créditos', 6571, 'EA');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (762, 'Lingüística                                    ', 'Créditos', 7630, 'L');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (763, 'TEORIA E HISTÓRIA LITERÁRIA                    ', 'Créditos', 4565, 'TEHL');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (764, 'Odontologia [Piracicaba]                       ', 'Créditos', 1148, 'O');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (765, 'Biologia Celular e estrutural                  ', 'Créditos', 2633, 'BC');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (766, 'Engenharia Química                             ', 'Créditos', 8568, 'EQ');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (767, 'Materiais Dentários [Piracicaba]               ', 'Créditos', 4235, 'MD');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (768, 'Radiologia Odontologica [Piracicaba]           ', 'Créditos', 5163, 'RO');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (769, 'Geociências                                    ', 'Créditos', 8770, 'G');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (770, 'Ciências Sociais                               ', 'Créditos', 2814, 'CS');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (771, 'Biologia Funcional e Molecular                 ', 'Créditos', 7806, 'BFM');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (772, 'Engenharia Civil                               ', 'Créditos', 4155, 'EC');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (773, 'Alimentos e Nutrição                           ', 'Créditos', 1155, 'AN');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (774, 'Lingüística Aplicada                           ', 'Créditos', 1987, 'LA');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (775, 'Multimeios                                     ', 'Créditos', 3864, 'M');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (776, 'Educação Física                                ', 'Créditos', 9294, 'EF');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (777, 'Política Científica e Tecnológica              ', 'Créditos', 3876, 'PCT');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (778, 'Engenharia de Petróleo                         ', 'Créditos', 3076, 'EP');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (779, 'Planejamento de Sistemas Energéticos/Área Inter', 'Créditos', 5535, 'PSEI');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (780, 'Farmacologia                                   ', 'Créditos', 779, 'F');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (781, 'Parasitologia                                  ', 'Créditos', 9282, 'P');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (782, 'Odontologia (Fisiologia e Biofísica do Sist. Es', 'Créditos', 2604, 'OBSE');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (783, 'Pediatria                                      ', 'Créditos', 2289, 'P');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (784, 'Odontologia Legal e Deontologia [Piracicaba]   ', 'Créditos', 2560, 'OLD');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (785, 'Saúde Mental                                   ', 'Créditos', 7916, 'SM');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (786, 'Saúde Coletiva                                 ', 'Créditos', 2654, 'SC');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (787, 'Artes                                          ', 'Créditos', 5983, 'A');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (788, 'Demografia                                     ', 'Créditos', 1055, 'D');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (789, 'Tocoginecologia                                ', 'Créditos', 6682, 'T');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (790, 'Cirurgia                                       ', 'Créditos', 6319, 'C');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (791, 'Clínica Odontológica [Piracicaba]              ', 'Créditos', 5999, 'CO');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (792, 'Clínica Médica                                 ', 'Créditos', 7591, 'CM');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (793, 'Filosofia                                      ', 'Créditos', 6872, 'F');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (794, 'Ciências Biológicas (Morfologia)               ', 'Créditos', 8073, 'CB');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (795, 'Ciências Biológicas (Microbiologia)            ', 'Créditos', 2536, 'CB');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (796, 'Agronomia (Produção Vegetal) [Jaboticabal]     ', 'Créditos', 1479, 'AV');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (797, 'Zootecnia (Produção Animal) [Jaboticabal]      ', 'Créditos', 1101, 'ZA');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (798, 'Ciências Biológicas (Zoologia) [Rio Claro]     ', 'Créditos', 5231, 'CBC');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (799, 'Geografia [Rio Claro]                          ', 'Créditos', 8528, 'GC');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (800, 'Ciências Biológicas (Biologia Vegetal) [Rio Cla', 'Créditos', 9267, 'CBVC');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (801, 'Odontologia (Dentística Restauradora) [Araraqua', 'Créditos', 9530, 'OR');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (802, 'Letras (Lingüística e Língua Portuguesa) [Arara', 'Créditos', 3615, 'LLP');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (803, 'Odontologia (Odontopediatria) [Araraquara]     ', 'Créditos', 9543, 'O');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (804, 'Ciências Biológicas (Zoologia) [Botucatu]      ', 'Créditos', 7938, 'CB');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (805, 'Letras [Sjrp]                                  ', 'Créditos', 8449, 'L');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (806, 'Letras (Estudos Literários) [Araraquara]       ', 'Créditos', 7030, 'LL');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (807, 'Sociologia [Araraquara]                        ', 'Créditos', 9298, 'S');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (808, 'História [Assis]                               ', 'Créditos', 771, 'H');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (809, 'Letras [Assis]                                 ', 'Créditos', 7317, 'L');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (810, 'Agronomia (Energia na Agricultura) [Botucatu]  ', 'Créditos', 1218, 'AA');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (811, 'Medicina Veterinária [Botucatu]                ', 'Créditos', 5871, 'MV');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (812, 'Ciências Biológicas (Genética) [Sjrp]          ', 'Créditos', 5980, 'CB');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (813, 'Ciências Biológicas (Anatomia) [Botucatu]      ', 'Créditos', 6132, 'CB');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (814, 'Ciências Biológicas (Botânica) [Botucatu]      ', 'Créditos', 105, 'CB');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (815, 'Ciências Biológicas (Genética) [Botucatu]      ', 'Créditos', 9529, 'CB');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (816, 'Engenharia Mecânica [Guaratinguetá]            ', 'Créditos', 8834, 'EM');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (817, 'Agronomia (Genética e Melhoramento de Plantas) ', 'Créditos', 4092, 'AMP');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (818, 'Zootecnia (Melhoramento Genético Animal) [Jabot', 'Créditos', 2849, 'ZGA');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (819, 'Educação Matemática [Rio Claro]                ', 'Créditos', 4662, 'EMC');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (820, 'Agronomia (Proteção de Plantas) [Botucatu]     ', 'Créditos', 8184, 'AP');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (821, 'Geociências (Geociências e Meio Ambiente) [Rio ', 'Créditos', 8636, 'GMA');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (822, 'Agronomia (Entomologia Agrícola) [Jaboticabal] ', 'Créditos', 4724, 'AA');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (823, 'Agronomia (Irrigação e Drenagem) [Botucatu]    ', 'Créditos', 8509, 'AD');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (824, 'Agronomia (Agricultura) [Botucatu]             ', 'Créditos', 9789, 'A');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (825, 'Educação [Marília]                             ', 'Créditos', 662, 'E');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (826, 'Ciências Biológicas (Microbiologia Aplicada) [R', 'Créditos', 516, 'CBA');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (827, 'Odontologia (Prótese Buco-Maxilo Facial) [S.J.C', 'Créditos', 9449, 'OBF');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (828, 'Ciências Biológicas (Biologia Celular e Molecul', 'Créditos', 7295, 'CBCM');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (829, 'Ciências Matemática [Sjrp]                     ', 'Créditos', 9923, 'CM');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (830, 'Zootecnia (Nutrição e Produção Animal) [Botucat', 'Créditos', 4944, 'ZPA');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (831, 'Aquicultura [Jaboticabal]                      ', 'Créditos', 7607, 'A');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (832, 'Agronomia (Produção e Tecnologia de Sementes) [', 'Créditos', 9847, 'ATS');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (833, 'Física [Guararatinguetá]                       ', 'Créditos', 8654, 'F');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (834, 'Medicina Veterinária (Patologia Animal) [Jaboti', 'Créditos', 6763, 'MVA');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (835, 'Alimentos e Nutrição [Araraquara]              ', 'Créditos', 8740, 'AN');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (836, 'Patologia [Botucatu]                           ', 'Créditos', 5660, 'P');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (837, 'Medicina Veterinária (Medicina Veterinária Prev', 'Créditos', 956, 'MVVP');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (838, 'Odontologia (Ortodontia) [Araraquara]          ', 'Créditos', 6113, 'O');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (839, 'Odontologia (Periodontia) [Araraquara]         ', 'Créditos', 3176, 'O');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (840, 'Odontologia (Endodontia) [Araraquara]          ', 'Créditos', 4894, 'O');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (841, 'Ciências da Motricidade [Rio Claro]            ', 'Créditos', 9015, 'CMC');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (842, 'Artes                                          ', 'Créditos', 3167, 'A');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (843, 'Doenças Tropicais [Botucatu]                   ', 'Créditos', 3626, 'DT');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (844, 'Engenharia Elétrica [Ilha Solteira]            ', 'Créditos', 5490, 'EES');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (845, 'Serviço Social [Franca]                        ', 'Créditos', 7424, 'SS');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (846, 'Biofísica Molecular [Sjrp]                     ', 'Créditos', 6474, 'BM');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (847, 'Cirurgia Veterinária [Jaboticabal]             ', 'Créditos', 5452, 'CV');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (848, 'Odontologia (Odontologia Restauradora) [S.J.Cam', 'Créditos', 5389, 'OR');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (849, 'Química [Araraquara]                           ', 'Créditos', 4381, 'Q');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (850, 'Odontologia (Odontologia Preventiva e Social) [', 'Créditos', 4339, 'OPS');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (851, 'Educação                                       ', 'Créditos', 6820, 'E');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (852, 'Educação (Psicologia da Educação)              ', 'Créditos', 8404, 'EE');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (853, 'Educação (Currículo)                           ', 'Créditos', 2597, 'E');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (854, 'Educação Matemática                            ', 'Créditos', 4968, 'EM');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (855, 'Ciências Sociais                               ', 'Créditos', 4548, 'CS');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (856, 'Filosofia                                      ', 'Créditos', 9520, 'F');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (857, 'Ciências da Religião                           ', 'Créditos', 960, 'CR');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (858, 'História                                       ', 'Créditos', 8372, 'H');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (859, 'Economia                                       ', 'Créditos', 3839, 'E');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (860, 'Psicologia (Psicologia Social)                 ', 'Créditos', 8662, 'PS');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (861, 'Psicologia (Psicologia Clínica)                ', 'Créditos', 2227, 'PC');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (862, 'Administração                                  ', 'Créditos', 9287, 'A');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (863, 'Ciências Contábeis e Atuariais                 ', 'Créditos', 720, 'CCA');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (864, 'Direito                                        ', 'Créditos', 9501, 'D');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (865, 'Serviço Social                                 ', 'Créditos', 3168, 'SS');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (866, 'Comunicação e Semiótica                        ', 'Créditos', 2024, 'CS');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (867, 'Língua Portuguesa                              ', 'Créditos', 4387, 'LP');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (868, 'Lingüística Aplicada ao Ensino de Línguas      ', 'Créditos', 3295, 'LAEL');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (869, 'Fonoaudiologia                                 ', 'Créditos', 1159, 'F');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (870, 'Filosofia                                      ', 'Créditos', 3935, 'F');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (871, 'Psicologia                                     ', 'Créditos', 7328, 'P');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (872, 'Biblioteconomia e Ciência da Informação        ', 'Créditos', 4154, 'BCI');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (873, 'Educação                                       ', 'Créditos', 8710, 'E');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (874, 'Educação                                       ', 'Créditos', 3278, 'E');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (875, 'Ciências Biológicas (Biologia Molecular)       ', 'Créditos', 9178, 'CBM');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (876, 'Farmacologia                                   ', 'Créditos', 5157, 'F');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (877, 'Microbiologia e Imunologia                     ', 'Créditos', 6621, 'MI');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (878, 'Patologia                                      ', 'Créditos', 7854, 'P');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (879, 'Medicina (Cardiologia)                         ', 'Créditos', 5256, 'M');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (880, 'Medicina (Neurocirurgia)                       ', 'Créditos', 7937, 'M');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (881, 'Medicina (Gastroenterologia Cirúrgica)         ', 'Créditos', 3673, 'MC');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (882, 'Medicina (Cirurgia Cardiovascular)             ', 'Créditos', 5000, 'MC');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (883, 'Medicina (Endocrinologia Clínica)              ', 'Créditos', 98, 'MC');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (884, 'Gastroenterologia                              ', 'Créditos', 4150, 'G');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (885, 'Medicina (Obstetrícia)                         ', 'Créditos', 1485, 'M');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (886, 'Medicina (Ginecologia)                         ', 'Créditos', 7087, 'M');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (887, 'Medicina (Hematologia)                         ', 'Créditos', 4382, 'M');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (888, 'Medicina (Nefrologia)                          ', 'Créditos', 2287, 'M');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (889, 'Medicina (Neurologia)                          ', 'Créditos', 7244, 'M');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (890, 'Medicina (Otorrinolaringologia)                ', 'Créditos', 2869, 'M');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (891, 'Medicina (Pediatria)                           ', 'Créditos', 8689, 'M');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (892, 'Medicina (Pneumologia)                         ', 'Créditos', 8778, 'M');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (893, 'Medicina (Urologia)                            ', 'Créditos', 5200, 'M');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (894, 'Medicina (Dermatologia)                        ', 'Créditos', 4685, 'M');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (895, 'Medicina (Oftalmologia)                        ', 'Créditos', 1537, 'M');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (896, 'Distúrbios da Comunicação Humana (Fonoaudiologi', 'Créditos', 4060, 'DCH');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (897, 'Técnicas Operatórias e Cirurgia Experimental   ', 'Créditos', 5837, 'TOCE');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (898, 'Medicina (Radiologia Clinica)                  ', 'Créditos', 8672, 'MC');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (899, 'Doenças Infecciosas e Parasitárias             ', 'Créditos', 5681, 'DIP');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (900, 'Reumatologia                                   ', 'Créditos', 661, 'R');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (901, 'Psiquiatria e Psicologia Médica                ', 'Créditos', 8609, 'PPM');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (902, 'Psicobiologia                                  ', 'Créditos', 1072, 'P');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (903, 'Morfologia                                     ', 'Créditos', 4976, 'M');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (904, 'Enfermagem                                     ', 'Créditos', 9246, 'E');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (905, 'Ortopedia e Traumatologia                      ', 'Créditos', 969, 'OT');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (906, 'Cirurgia Plástica Reparadora                   ', 'Créditos', 7185, 'CPR');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (907, 'Epidemiologia                                  ', 'Créditos', 6004, 'E');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (908, 'Nutrição                                       ', 'Créditos', 2736, 'N');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (909, 'Reabilitação                                   ', 'Créditos', 4142, 'R');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (910, 'Cirurgia Pediátrica                            ', 'Créditos', 5704, 'CP');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (911, 'Computação Aplicada                            ', 'Créditos', 432, 'CA');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (912, 'Meteorologia                                   ', 'Créditos', 9237, 'M');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (913, 'Sensoriamento Remoto                           ', 'Créditos', 8338, 'SR');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (914, 'Astrofísica                                    ', 'Créditos', 4562, 'A');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (915, 'Engenharia e Tecnologia Espaciais              ', 'Créditos', 5317, 'ETE');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (916, 'Geofísica Espacial                             ', 'Créditos', 7867, 'GE');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (917, 'Física                                         ', 'Créditos', 549, 'F');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (918, 'Engenharia Eletrônica e Computação             ', 'Créditos', 1555, 'EEC');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (919, 'Engenharia Aeronáutica e Mecânica              ', 'Créditos', 6097, 'EAM');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (920, 'Engenharia de Infra-Estrutura Aeronáutica      ', 'Créditos', 3179, 'EIA');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (921, 'Administração de Empresas                      ', 'Créditos', 4299, 'AE');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (922, 'Economia de Empresas                           ', 'Créditos', 4562, 'EE');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (923, 'Administração Pública e Governo                ', 'Créditos', 6886, 'APG');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (924, 'Física (IFT)                                   ', 'Créditos', 7130, 'F');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (925, 'Medicina (Gastroenterologia)                   ', 'Créditos', 5967, 'M');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (926, 'Ciências da Religião                           ', 'Créditos', 5944, 'CR');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (927, 'Psicologia da Saúde                            ', 'Créditos', 2322, 'PS');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (928, 'Comunicação Social                             ', 'Créditos', 1483, 'CS');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (929, 'Administração                                  ', 'Créditos', 3360, 'A');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (930, 'Odontologia                                    ', 'Créditos', 6048, 'O');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (931, 'Medicina (Cirurgia)                            ', 'Créditos', 383, 'M');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (932, 'Medicina (Clínica Médica)                      ', 'Créditos', 9300, 'MM');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (933, 'Medicina (Tocoginecologia)                     ', 'Créditos', 1335, 'M');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (934, 'Medicina (Pediatria)                           ', 'Créditos', 553, 'M');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (935, 'Medicina (Otorrinolaringologia)                ', 'Créditos', 4052, 'M');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (936, 'Odontologia                                    ', 'Créditos', 8796, 'O');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (937, 'Ciências (Energia Nuclear na Agricultura) [Cena', 'Créditos', 8409, 'CNA');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (938, 'Engenharia Elétrica                            ', 'Créditos', 700, 'EE');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (939, 'Engenharia de Materiais                        ', 'Créditos', 3962, 'EM');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (940, 'Biotecnologia Industrial                       ', 'Créditos', 6113, 'BI');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (941, 'Ciências da Saúde                              ', 'Créditos', 5417, 'CS');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (942, 'Educação                                       ', 'Créditos', 3178, 'E');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (943, 'Direito                                        ', 'Créditos', 6718, 'D');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (944, 'Medicina (Gastroenterologia Cirúrgica)         ', 'Créditos', 2764, 'MC');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (945, 'Medicina (Cirurgia de Cabeça e Pescoço)        ', 'Créditos', 5305, 'MCP');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (946, 'Odontologia (Cirurgia e Traumatologia Buco-Maxi', 'Créditos', 7245, 'OTB');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (947, 'Odontologia (Odontopediatria) [Araçatuba]      ', 'Créditos', 4881, 'O');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (948, 'Biotecnologia [Araraquara]                     ', 'Créditos', 982, 'B');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (949, 'Educação Escolar [Araraquara]                  ', 'Créditos', 3610, 'EE');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (950, 'Cirurgia [Botucatu]                            ', 'Créditos', 9822, 'C');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (951, 'Agronomia (Horticultura) [Botucatu]            ', 'Créditos', 1299, 'A');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (952, 'Fisiopatologia em Clínica Médica [Botucatu]    ', 'Créditos', 9968, 'FCM');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (953, 'Ciências Biológicas (Farmacologia) [Botucatu]  ', 'Créditos', 4878, 'CB');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (954, 'Pediatria [Botucatu]                           ', 'Créditos', 7551, 'P');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (955, 'Anestesiologia [Botucatu]                      ', 'Créditos', 2058, 'A');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (956, 'Ginecologia e Obstetrícia [Botucatu]           ', 'Créditos', 2400, 'GO');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (957, 'História [Franca]                              ', 'Créditos', 6037, 'H');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (958, 'Geografia [P. Prudente]                        ', 'Créditos', 2695, 'GP');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (959, 'Ciências Cartográficas [P. Prudente]           ', 'Créditos', 4727, 'CCP');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (960, 'Geociências (Geologia Regional) [Rio Claro]    ', 'Créditos', 6901, 'GRC');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (961, 'Odontologia (Radiologia Odontológica) [S.J.Camp', 'Créditos', 1032, 'OO');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (962, 'Odontologia (Prótese Parcial Fixa) [S.J.Campos]', 'Créditos', 6437, 'OPF');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (963, 'Ortodontia [Piracicaba]                        ', 'Créditos', 9408, 'O');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (964, 'Educação                                       ', 'Créditos', 3471, 'E');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (965, 'Ciências Geodésicas                            ', 'Créditos', 9215, 'CG');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (966, 'Ciências (Bioquímica)                          ', 'Créditos', 5964, 'C');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (967, 'Botânica                                       ', 'Créditos', 5437, 'B');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (968, 'Ciências Biológicas (Entomologia)              ', 'Créditos', 1458, 'CB');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (969, 'Genética                                       ', 'Créditos', 1183, 'G');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (970, 'Biologia Celular e Molecular                   ', 'Créditos', 8216, 'BCM');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (971, 'Zoologia                                       ', 'Créditos', 705, 'Z');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (972, 'História                                       ', 'Créditos', 1245, 'H');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (973, 'Medicina (Cardiologia)                         ', 'Créditos', 6349, 'M');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (974, 'Medicina Interna                               ', 'Créditos', 781, 'MI');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (975, 'Medicina (Pediatria)                           ', 'Créditos', 8471, 'M');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (976, 'Ciências do Solo                               ', 'Créditos', 3277, 'CS');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (977, 'Engenharia Florestal                           ', 'Créditos', 969, 'EF');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (978, 'Letras                                         ', 'Créditos', 5842, 'L');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (979, 'Direito                                        ', 'Créditos', 3653, 'D');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (980, 'Medicina (Clínica Cirúrgica)                   ', 'Créditos', 8556, 'MC');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (981, 'Tecnologia de Alimentos                        ', 'Créditos', 6645, 'TA');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (982, 'Física                                         ', 'Créditos', 1292, 'F');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (983, 'Engenharia de Recursos Hídricos e Ambiental    ', 'Créditos', 2054, 'ERHA');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (984, 'Ciências Veterinárias                          ', 'Créditos', 1300, 'CV');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (985, 'Desenvolvimento Econômico                      ', 'Créditos', 9290, 'DE');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (986, 'Administração                                  ', 'Créditos', 2651, 'A');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (987, 'Química                                        ', 'Créditos', 7652, 'Q');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (988, 'Antropologia Social                            ', 'Créditos', 3966, 'AS');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (989, 'Geologia                                       ', 'Créditos', 3070, 'G');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (990, 'Meio Ambiente e Desenvolvimento                ', 'Créditos', 359, 'MAD');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (991, 'Agronomia (Produção Vegetal)                   ', 'Créditos', 8812, 'AV');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (992, 'Sociologia                                     ', 'Créditos', 5094, 'S');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (993, 'Direito Negocial                               ', 'Créditos', 3743, 'DN');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (994, 'Ciência de Alimentos                           ', 'Créditos', 252, 'CA');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (995, 'Genética e Melhoramento                        ', 'Créditos', 2549, 'GM');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (996, 'Microbiologia                                  ', 'Créditos', 8696, 'M');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (997, 'Medicina (Ciência da Saúde)                    ', 'Créditos', 579, 'MS');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (998, 'Saúde Coletiva                                 ', 'Créditos', 2998, 'SC');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (999, 'Ciência Animal                                 ', 'Créditos', 9851, 'CA');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1000, 'Letras                                         ', 'Créditos', 2113, 'L');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1001, 'Agronomia                                      ', 'Créditos', 9692, 'A');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1002, 'Física                                         ', 'Créditos', 3411, 'F');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1003, 'Ciências Biológicas (Biologia Celular)         ', 'Créditos', 4093, 'CBC');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1004, 'Química                                        ', 'Créditos', 2599, 'Q');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1005, 'Engenharia Química                             ', 'Créditos', 6273, 'EQ');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1006, 'Educação                                       ', 'Créditos', 4689, 'E');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1007, 'Ecologia de Ambientes Aquáticos Continentais   ', 'Créditos', 9096, 'EAAC');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1008, 'Zootecnia                                      ', 'Créditos', 4742, 'Z');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1009, 'Agronomia                                      ', 'Créditos', 6553, 'A');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1010, 'Física                                         ', 'Créditos', 2613, 'F');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1011, 'Engenharia Elétrica e Informática Industrial   ', 'Créditos', 811, 'EEII');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1012, 'Tecnologia                                     ', 'Créditos', 3519, 'T');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1013, 'Engenharia Agrícola                            ', 'Créditos', 5354, 'EA');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1014, 'Matemática e Computação Científica             ', 'Créditos', 8648, 'MCC');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1015, 'História                                       ', 'Créditos', 7583, 'H');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1016, 'Engenharia Elétrica                            ', 'Créditos', 9492, 'EE');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1017, 'Engenharia Mecânica                            ', 'Créditos', 4070, 'EM');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1018, 'Engenharia de Produção                         ', 'Créditos', 9299, 'EP');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1019, 'Odontologia                                    ', 'Créditos', 5025, 'O');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1020, 'Enfermagem                                     ', 'Créditos', 5937, 'E');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1021, 'Administração                                  ', 'Créditos', 8725, 'A');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1022, 'Direito                                        ', 'Créditos', 7822, 'D');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1023, 'Letras (Inglês e Literatura Correspondente)    ', 'Créditos', 6751, 'LLC');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1024, 'Literatura                                     ', 'Créditos', 5728, 'L');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1025, 'Lingüística                                    ', 'Créditos', 912, 'L');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1026, 'Educação                                       ', 'Créditos', 3868, 'E');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1027, 'Geografia                                      ', 'Créditos', 9229, 'G');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1028, 'Antropologia Social                            ', 'Créditos', 3021, 'AS');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1029, 'Sociologia Política                            ', 'Créditos', 5447, 'SP');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1030, 'Aquicultura                                    ', 'Créditos', 6347, 'A');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1031, 'Física                                         ', 'Créditos', 2051, 'F');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1032, 'Ciência dos Alimentos                          ', 'Créditos', 8079, 'CA');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1033, 'Química                                        ', 'Créditos', 55, 'Q');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1034, 'Engenharia Civil                               ', 'Créditos', 653, 'EC');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1035, 'Farmacologia                                   ', 'Créditos', 5046, 'F');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1036, 'Ciência da Computação                          ', 'Créditos', 7048, 'CC');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1037, 'Ciências Médicas                               ', 'Créditos', 8116, 'CM');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1038, 'Neurociências                                  ', 'Créditos', 7989, 'N');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1039, 'Engenharia Química                             ', 'Créditos', 7767, 'EQ');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1040, 'Ciência e Engenharia de Materiais              ', 'Créditos', 8812, 'CEM');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1041, 'Economia                                       ', 'Créditos', 5664, 'E');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1042, 'Engenharia Ambiental                           ', 'Créditos', 751, 'EA');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1043, 'Biotecnologia                                  ', 'Créditos', 2450, 'B');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1044, 'Psicologia                                     ', 'Créditos', 4654, 'P');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1045, 'Ciências Humanas                               ', 'Créditos', 5719, 'CH');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1046, 'Ciência e Engenharia de Materiais              ', 'Créditos', 3005, 'CEM');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1047, 'Ciências do Solo                               ', 'Créditos', 150, 'CS');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1048, 'Educação                                       ', 'Créditos', 2934, 'E');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1049, 'Física                                         ', 'Créditos', 1504, 'F');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1050, 'Matemática                                     ', 'Créditos', 4242, 'M');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1051, 'Ciência da Computação                          ', 'Créditos', 3834, 'CC');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1052, 'Geociências                                    ', 'Créditos', 7780, 'G');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1053, 'Ciências Biológicas (Bioquimica)               ', 'Créditos', 6139, 'CB');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1054, 'Botânica                                       ', 'Créditos', 124, 'B');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1055, 'Ecologia                                       ', 'Créditos', 3866, 'E');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1056, 'Ciências Biológicas (Fisiologia)               ', 'Créditos', 7804, 'CB');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1057, 'Genética e Biologia Molecular                  ', 'Créditos', 9284, 'GBM');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1058, 'Ciências Biológicas (Neurociências)            ', 'Créditos', 6356, 'CB');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1059, 'Sociologia                                     ', 'Créditos', 4352, 'S');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1060, 'Economia                                       ', 'Créditos', 4143, 'E');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1061, 'Engenharia Civil (Estruturas)                  ', 'Créditos', 1622, 'EC');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1062, 'Recursos Hídricos e Saneamento Ambiente        ', 'Créditos', 9706, 'RHSA');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1063, 'Engenharia de Minas, Metalúrgica e de Materiais', 'Créditos', 4610, 'EMMM');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1064, 'Medicina (Cardiologia)                         ', 'Créditos', 8185, 'M');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1065, 'Medicina (Gastroenterologia)                   ', 'Créditos', 5757, 'M');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1066, 'Medicina (Nefrologia)                          ', 'Créditos', 8899, 'M');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1067, 'Medicina (Pneumologia)                         ', 'Créditos', 3100, 'M');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1068, 'Ciências Farmacêuticas                         ', 'Créditos', 2311, 'CF');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1069, 'Administração                                  ', 'Créditos', 220, 'A');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1070, 'Planejamento Urbano e Regional                 ', 'Créditos', 3033, 'PUR');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1071, 'Economia Rural                                 ', 'Créditos', 6761, 'ER');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1072, 'Ciências Veterinárias                          ', 'Créditos', 4316, 'CV');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1073, 'Letras                                         ', 'Créditos', 1455, 'L');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1074, 'Filosofia                                      ', 'Créditos', 430, 'F');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1075, 'Ciência Política                               ', 'Créditos', 2632, 'CP');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1076, 'Antropologia Social                            ', 'Créditos', 9310, 'AS');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1077, 'Agronomia (Fitotecnia)                         ', 'Créditos', 1158, 'A');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1078, 'Zootecnia                                      ', 'Créditos', 4147, 'Z');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1079, 'Ciência do Solo                                ', 'Créditos', 3999, 'CS');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1080, 'Medicina (Clínica Médica)                      ', 'Créditos', 3203, 'MM');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1081, 'Química                                        ', 'Créditos', 5640, 'Q');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1082, 'Direito                                        ', 'Créditos', 5937, 'D');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1083, 'História                                       ', 'Créditos', 9460, 'H');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1084, 'Música                                         ', 'Créditos', 6330, 'M');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1085, 'Engenharia Mecânica                            ', 'Créditos', 6400, 'EM');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1086, 'Psicologia do Desenvolvimento                  ', 'Créditos', 434, 'PD');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1087, 'Microbiologia Agrícola e do Ambiente           ', 'Créditos', 320, 'MAA');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1088, 'Arquitetura                                    ', 'Créditos', 4919, 'A');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1089, 'Medicina (Pediatria)                           ', 'Créditos', 7918, 'M');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1090, 'Ciências do Movimento Humano                   ', 'Créditos', 9974, 'CMH');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1091, 'Sensoriamento Remoto                           ', 'Créditos', 3224, 'SR');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1092, 'Odontologia (Patologia Bucal)                  ', 'Créditos', 6302, 'OB');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1093, 'Medicina Cirurgia                              ', 'Créditos', 7685, 'MC');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1094, 'Artes Visuais                                  ', 'Créditos', 1172, 'AV');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1095, 'Ciências dos Materiais                         ', 'Créditos', 5782, 'CM');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1096, 'Biologia Animal                                ', 'Créditos', 3903, 'BA');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1097, 'Engenharia Química                             ', 'Créditos', 6828, 'EQ');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1098, 'Engenharia de Produção                         ', 'Créditos', 6021, 'EP');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1099, 'Medicina (Endocrinologia)                      ', 'Créditos', 354, 'M');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1100, 'Matemática Aplicada                            ', 'Créditos', 9941, 'MA');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1101, 'Biologia Celular e Molecular                   ', 'Créditos', 664, 'BCM');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1102, 'Educação                                       ', 'Créditos', 9268, 'E');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1103, 'Filosofia                                      ', 'Créditos', 6011, 'F');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1104, 'Engenharia Elétrica                            ', 'Créditos', 8204, 'EE');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1105, 'Engenharia de Produção                         ', 'Créditos', 8355, 'EP');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1106, 'Ciência do Movimento Humano                    ', 'Créditos', 8906, 'CMH');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1107, 'Agronomia                                      ', 'Créditos', 291, 'A');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1108, 'Engenharia Agrícola                            ', 'Créditos', 9691, 'EA');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1109, 'Extensão Rural                                 ', 'Créditos', 4661, 'ER');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1110, 'Zootecnia                                      ', 'Créditos', 1088, 'Z');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1111, 'Medicina Veterinária                           ', 'Créditos', 1755, 'MV');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1112, 'Química                                        ', 'Créditos', 6625, 'Q');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1113, 'Ciência e Tecnologia dos Alimentos             ', 'Créditos', 8197, 'CTA');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1114, 'Letras                                         ', 'Créditos', 7447, 'L');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1115, 'Engenharia Florestal                           ', 'Créditos', 1207, 'EF');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1116, 'Distúrbios da Comunicação Humana               ', 'Créditos', 6775, 'DCH');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1117, 'Ciência e Tecnologia Farmacêuticas             ', 'Créditos', 9152, 'CTF');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1118, 'Física                                         ', 'Créditos', 5087, 'F');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1119, 'Engenharia Civil                               ', 'Créditos', 1728, 'EC');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1120, 'Endodontia                                     ', 'Créditos', 2354, 'E');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1121, 'Odontologia (Cirurgia e Traumatologia Buco-Maxi', 'Créditos', 9970, 'OTB');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1122, 'Zootecnia                                      ', 'Créditos', 9480, 'Z');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1123, 'Veterinária                                    ', 'Créditos', 5622, 'V');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1124, 'Ciência e Tecnologia Agroindustrial            ', 'Créditos', 772, 'CTA');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1125, 'Agronomia                                      ', 'Créditos', 4710, 'A');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1126, 'Epidemiologia                                  ', 'Créditos', 788, 'E');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1127, 'Biotecnologia                                  ', 'Créditos', 1539, 'B');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1128, 'Educação                                       ', 'Créditos', 3598, 'E');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1129, 'Ciência e Tecnologia de Sementes               ', 'Créditos', 9988, 'CTS');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1130, 'Fisiologia Vegetal                             ', 'Créditos', 4587, 'FV');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1131, 'Oceanografia Biológica                         ', 'Créditos', 5563, 'OB');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1132, 'Educação Ambiental                             ', 'Créditos', 7317, 'EA');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1133, 'Engenharia Oceânica                            ', 'Créditos', 8130, 'EO');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1134, 'Oceanografia Física, Química e Geológica       ', 'Créditos', 4960, 'OFQG');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1135, 'Educação                                       ', 'Créditos', 5746, 'E');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1136, 'Biociências (Zoologia)                         ', 'Créditos', 5002, 'B');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1137, 'Filosofia                                      ', 'Créditos', 4625, 'F');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1138, 'História                                       ', 'Créditos', 4392, 'H');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1139, 'Psicologia                                     ', 'Créditos', 121, 'P');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1140, 'Odontologia (Cirurgia e Traumatologia Buco-Maxi', 'Créditos', 581, 'OTB');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1141, 'Serviço Social                                 ', 'Créditos', 7016, 'SS');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1142, 'Lingüística e Letras                           ', 'Créditos', 7992, 'LL');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1143, 'Odontologia (Estomatologia Clínica)            ', 'Créditos', 4902, 'OC');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1144, 'Teologia                                       ', 'Créditos', 6896, 'T');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1145, 'Direito                                        ', 'Créditos', 9066, 'D');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1146, 'Medicina e Ciências da Saúde                   ', 'Créditos', 1574, 'MCS');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1147, 'Engenharia Elétrica                            ', 'Créditos', 3308, 'EE');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1148, 'CIÊNCIA DA COMPUTAÇÃO                          ', 'Créditos', 2151, 'CDC');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1149, 'Comunicação                                    ', 'Créditos', 7946, 'C');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1150, 'História                                       ', 'Créditos', 867, 'H');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1151, 'Geologia                                       ', 'Créditos', 8699, 'G');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1152, 'Educação                                       ', 'Créditos', 8727, 'E');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1153, 'Ciência da Comunicação                         ', 'Créditos', 2746, 'CC');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1154, 'Biotecnologia                                  ', 'Créditos', 8768, 'B');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1155, 'Farmacologia                                   ', 'Créditos', 2630, 'F');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1156, 'Patologia                                      ', 'Créditos', 9335, 'P');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1157, 'Medicina (Hepatologia)                         ', 'Créditos', 1807, 'M');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1158, 'Teologia                                       ', 'Créditos', 6345, 'T');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1159, 'Ciências da Saúde (Cardiologia)                ', 'Créditos', 2358, 'CS');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1160, 'Desenvolvimento Regional                       ', 'Créditos', 8615, 'DR');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1161, 'Modelagem Matemática                           ', 'Créditos', 4556, 'MM');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1162, 'Educação nas Ciências                          ', 'Créditos', 4757, 'EC');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1163, 'Educação                                       ', 'Créditos', 7502, 'E');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1164, 'Agricultura Tropical                           ', 'Créditos', 9462, 'AT');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1165, 'Ecologia e Conservação da Biodiversidade       ', 'Créditos', 8186, 'ECB');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1166, 'Saúde e Ambiente                               ', 'Créditos', 4031, 'SA');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1167, 'Educação                                       ', 'Créditos', 8064, 'E');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1168, 'Saúde Coletiva                                 ', 'Créditos', 5916, 'SC');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1169, 'Física                                         ', 'Créditos', 9321, 'F');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1170, 'Ecologia e Conservação                         ', 'Créditos', 3215, 'EC');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1171, 'Química                                        ', 'Créditos', 9074, 'Q');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1172, 'Matemática                                     ', 'Créditos', 2456, 'M');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1173, 'História                                       ', 'Créditos', 3253, 'H');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1174, 'Medicina Tropical                              ', 'Créditos', 5291, 'MT');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1175, 'Letras e Lingüística                           ', 'Créditos', 8995, 'LL');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1176, 'Biologia                                       ', 'Créditos', 7242, 'B');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1177, 'Agronomia                                      ', 'Créditos', 9020, 'A');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1178, 'Educação                                       ', 'Créditos', 7947, 'E');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1179, 'Direito Agrário                                ', 'Créditos', 5304, 'DA');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1180, 'Física                                         ', 'Créditos', 2531, 'F');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1181, 'Filosofia                                      ', 'Créditos', 8387, 'F');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1182, 'Geografia                                      ', 'Créditos', 6051, 'G');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1183, 'Medicina Veterinária (Sanidade e Produção Anima', 'Créditos', 6889, 'MVPA');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1184, 'Engenharia Civil                               ', 'Créditos', 7972, 'EC');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1185, 'Educação                                       ', 'Créditos', 8414, 'E');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1186, 'Física                                         ', 'Créditos', 4247, 'F');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1187, 'Matemática                                     ', 'Créditos', 1602, 'M');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1188, 'Estatística e Métodos Quantitativos            ', 'Créditos', 7646, 'EMQ');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1189, 'Química                                        ', 'Créditos', 4809, 'Q');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1190, 'Geologia                                       ', 'Créditos', 3195, 'G');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1191, 'Ciências Biológicas (Biologia Molecular)       ', 'Créditos', 6130, 'CBM');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1192, 'Ecologia                                       ', 'Créditos', 7326, 'E');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1193, 'Sociologia                                     ', 'Créditos', 2537, 'S');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1194, 'Antropologia                                   ', 'Créditos', 6854, 'A');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1195, 'História                                       ', 'Créditos', 7134, 'H');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1196, 'Economia                                       ', 'Créditos', 3338, 'E');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1197, 'Psicologia                                     ', 'Créditos', 6199, 'P');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1198, 'Engenharia Elétrica                            ', 'Créditos', 6017, 'EE');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1199, 'Medicina Tropical                              ', 'Créditos', 6879, 'MT');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1200, 'Administração                                  ', 'Créditos', 4309, 'A');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1201, 'Direito                                        ', 'Créditos', 7560, 'D');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1202, 'Ciência da Informação                          ', 'Créditos', 461, 'CI');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1203, 'Comunicação                                    ', 'Créditos', 7952, 'C');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1204, 'Fitopatologia                                  ', 'Créditos', 7386, 'F');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1205, 'Literatura                                     ', 'Créditos', 2456, 'L');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1206, 'Lingüística                                    ', 'Créditos', 8208, 'L');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1207, 'Medicina (Clínica Médica)                      ', 'Créditos', 8332, 'MM');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1208, 'Relações Internacionais                        ', 'Créditos', 2935, 'RI');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1209, 'Ciência Política                               ', 'Créditos', 1969, 'CP');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1210, 'Engenharia Mecânica                            ', 'Créditos', 7654, 'EM');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1211, 'Estudos Comparados sobre as Américas           ', 'Créditos', 3868, 'ECA');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1212, 'Transportes                                    ', 'Créditos', 4737, 'T');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1213, 'Patologia Molecular                            ', 'Créditos', 7504, 'PM');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1214, 'Geotecnia                                      ', 'Créditos', 7673, 'G');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1215, 'Ciência da Computação                          ', 'Créditos', 6560, 'CC');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1216, 'Nutrição Humana                                ', 'Créditos', 9380, 'NH');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1217, 'Política Social                                ', 'Créditos', 2455, 'PS');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1218, 'Estruturas e Construcao Civil                  ', 'Créditos', 5929, 'ECC');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1219, 'Botânica                                       ', 'Créditos', 5203, 'B');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1220, 'CIÊNCIAS AGRÁRIAS                              ', 'Créditos', 2186, 'CA');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1221, 'Tecnologia Ambiental e Recursos Hídricos       ', 'Créditos', 4996, 'TARH');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1222, 'Arquitetura e Urbanismo                        ', 'Créditos', 3876, 'AU');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1223, 'Geografia                                      ', 'Créditos', 4151, 'G');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1224, 'Desenvolvimento Sustentável                    ', 'Créditos', 2096, 'DS');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1225, 'Biologia Animal                                ', 'Créditos', 1023, 'BA');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1226, 'Educação                                       ', 'Créditos', 2435, 'E');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1227, 'Ciências da Reabilitação                       ', 'Créditos', 9045, 'CR');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1228, 'Estudos Populacionais e Pesquisas Sociais      ', 'Créditos', 8870, 'EPPS');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1229, 'Teologia                                       ', 'Créditos', 7729, 'T');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1230, 'Oncologia                                      ', 'Créditos', 5306, 'O');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1231, 'Medicina ( Ortopedia e Traumatologia )         ', 'Créditos', 9596, 'MOT');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1232, 'Patologia                                      ', 'Créditos', 6762, 'P');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1233, 'Princípios da Cirurgia                         ', 'Créditos', 1533, 'PC');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1234, 'Medicina Tropical e Infectologia               ', 'Créditos', 4135, 'MTI');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1235, 'Agronomia                                      ', 'Créditos', 9085, 'A');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1236, 'Medicina (Pediatria)                           ', 'Créditos', 6955, 'M');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1237, 'Engenharia e Ciência de Alimentos              ', 'Créditos', 8824, 'ECA');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1238, 'Habitação: Planejamento e Tecnologia           ', 'Créditos', 3192, 'HPT');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1239, 'Direito                                        ', 'Créditos', 6329, 'D');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1240, 'Engenharia Elétrica                            ', 'Créditos', 6216, 'EE');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1241, 'Engenharia Mecânica                            ', 'Créditos', 2010, 'EM');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1242, 'Informática Aplicada                           ', 'Créditos', 4715, 'IA');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1243, 'Medicina (Pediatria)                           ', 'Créditos', 4310, 'M');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1244, 'Psicologia Experimental: Análise do Comportamen', 'Créditos', 5970, 'PEAC');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1245, 'Clínica Médica                                 ', 'Créditos', 9522, 'CM');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1246, 'Economia Empresarial                           ', 'Créditos', 7106, 'EE');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1247, 'Geografia                                      ', 'Créditos', 8492, 'G');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1248, 'Saúde Coletiva                                 ', 'Créditos', 6323, 'SC');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1249, 'Direito                                        ', 'Créditos', 8246, 'D');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1250, 'Geografia                                      ', 'Créditos', 2477, 'G');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1251, 'ENGENHARIA                                     ', 'Créditos', 1091, 'E');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1252, 'Engenharia e Ciência dos Materiais             ', 'Créditos', 2195, 'ECM');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1253, 'Produção Vegetal                               ', 'Créditos', 5473, 'PV');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1254, 'Ciências Sociais                               ', 'Créditos', 6075, 'CS');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1255, 'Física                                         ', 'Créditos', 3994, 'F');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1256, 'Desenvolvimento Regional e Meio Ambiente       ', 'Créditos', 2340, 'DRMA');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1257, 'Desenvolvimento e Meio Ambiente                ', 'Créditos', 5408, 'DMA');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1258, 'Artes Cênicas                                  ', 'Créditos', 9823, 'AC');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1259, 'Geografia                                      ', 'Créditos', 8947, 'G');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1260, 'Engenharia Elétrica e de Computação            ', 'Créditos', 6051, 'EEC');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1261, 'Engenharia Elétrica                            ', 'Créditos', 771, 'EE');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1262, 'Saúde e Ambiente                               ', 'Créditos', 4777, 'SA');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1263, 'Ciências Farmacêuticas                         ', 'Créditos', 7735, 'CF');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1264, 'Comunicação Social                             ', 'Créditos', 1978, 'CS');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1265, 'Engenharia de Produção                         ', 'Créditos', 5242, 'EP');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1266, 'Estatística                                    ', 'Créditos', 8254, 'E');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1267, 'Genética                                       ', 'Créditos', 8326, 'G');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1268, 'Medicina (Obstetrícia e Ginecologia)           ', 'Créditos', 6061, 'MG');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1269, 'Ciências Biológicas                            ', 'Créditos', 8127, 'CB');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1270, 'Engenharia de Materiais                        ', 'Créditos', 1942, 'EM');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1271, 'Ciências Jurídicas                             ', 'Créditos', 1027, 'CJ');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1272, 'Engenharia de Produção                         ', 'Créditos', 3642, 'EP');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1273, 'Engenharia Mecânica                            ', 'Créditos', 3253, 'EM');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1274, 'Estatística                                    ', 'Créditos', 2543, 'E');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1275, 'Saúde Coletiva                                 ', 'Créditos', 1605, 'SC');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1276, 'Comunicação e Informação                       ', 'Créditos', 1825, 'CI');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1277, 'Métodos Numéricos em Engenharia                ', 'Créditos', 2570, 'MNE');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1278, 'Informática                                    ', 'Créditos', 7068, 'I');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1279, 'Enfermagem                                     ', 'Créditos', 5643, 'E');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1280, 'Engenharia Elétrica                            ', 'Créditos', 1352, 'EE');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1281, 'Geografia                                      ', 'Créditos', 6058, 'G');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1282, 'Psicologia Social e Institucional              ', 'Créditos', 3052, 'PSI');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1283, 'Ciências Biológicas (Fisiologia)               ', 'Créditos', 5527, 'CB');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1284, 'Informática                                    ', 'Créditos', 422, 'I');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1285, 'Odontologia                                    ', 'Créditos', 234, 'O');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1286, 'Saúde Coletiva                                 ', 'Créditos', 152, 'SC');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1287, 'Bioecologia Aquática                           ', 'Créditos', 7227, 'BA');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1288, 'Bioquímica                                     ', 'Créditos', 597, 'B');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1289, 'Fitopatologia                                  ', 'Créditos', 336, 'F');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1290, 'Zootecnia                                      ', 'Créditos', 8741, 'Z');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1291, 'Agroecossistemas                               ', 'Créditos', 5452, 'A');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1372, 'Agricultura Tropical e Subtropical             ', 'Créditos', 5734, 'ATS');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1292, 'Educação Física                                ', 'Créditos', 2998, 'EF');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1293, 'Filosofia                                      ', 'Créditos', 2940, 'F');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1294, 'Metrologia Científica e Industrial             ', 'Créditos', 5873, 'MCI');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1295, 'Recursos Genéticos Vegetais                    ', 'Créditos', 9312, 'RGV');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1296, 'Saúde Pública                                  ', 'Créditos', 1069, 'SP');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1297, 'Ciências Biológicas (Bioquímica Toxicológica)  ', 'Créditos', 9860, 'CBT');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1298, 'Integração Latino-Americana                    ', 'Créditos', 6211, 'IL');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1299, 'Medicina de Urgência                           ', 'Créditos', 5914, 'MU');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1300, 'Clínica Médica                                 ', 'Créditos', 8999, 'CM');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1301, 'Medicina Interna e Terapêutica                 ', 'Créditos', 5014, 'MIT');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1302, 'Direito                                        ', 'Créditos', 7000, 'D');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1303, 'Química                                        ', 'Créditos', 8345, 'Q');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1304, 'Sexologia                                      ', 'Créditos', 129, 'S');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1305, 'Engenharia de Produção                         ', 'Créditos', 1837, 'EP');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1306, 'Arte                                           ', 'Créditos', 3984, 'A');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1307, 'Odontologia                                    ', 'Créditos', 7912, 'O');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1308, 'Ciências Florestais                            ', 'Créditos', 8887, 'CF');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1309, 'Direito                                        ', 'Créditos', 7423, 'D');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1310, 'Ciências Farmacêuticas [Araraquara]            ', 'Créditos', 7528, 'CF');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1311, 'Ciências Jurídicas                             ', 'Créditos', 3296, 'CJ');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1312, 'Engenharia Biomédica                           ', 'Créditos', 1006, 'EB');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1313, 'Agronomia                                      ', 'Créditos', 7597, 'A');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1314, 'Zootecnia [Ilha Solteira]                      ', 'Créditos', 492, 'ZS');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1315, 'Educação                                       ', 'Créditos', 4823, 'E');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1316, 'Microbiologia [Jaboticabal]                    ', 'Créditos', 3762, 'M');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1317, 'Gerontologia                                   ', 'Créditos', 8348, 'G');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1318, 'Qualidade                                      ', 'Créditos', 6079, 'Q');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1319, 'Engenharia Mecânica [Ilha Solteira]            ', 'Créditos', 253, 'EMS');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1320, 'Ciência da Computação [Sp-Capital]             ', 'Créditos', 3656, 'CC');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1321, 'Letras (Língua Literatura e Cultura Japonesa)  ', 'Créditos', 466, 'LLCJ');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1322, 'Odontologia (Odontologia Restauradora) [Rib.Pre', 'Créditos', 3855, 'OR');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1323, 'Psicologia [Rib.Preto]                         ', 'Créditos', 3715, 'P');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1324, 'Odontologia (Cirurgia e Traumatologia Buco-Maxi', 'Créditos', 4529, 'OTB');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1325, 'Tocoginecologia                                ', 'Créditos', 5839, 'T');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1326, 'Desenvolvimento e Meio Ambiente                ', 'Créditos', 77, 'DMA');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1327, 'Design                                         ', 'Créditos', 1716, 'D');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1328, 'Ciência da Arte                                ', 'Créditos', 2714, 'CA');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1329, 'Comunicação, Imagem e Informação               ', 'Créditos', 4049, 'CII');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1330, 'Neuroimunologia                                ', 'Créditos', 29, 'N');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1331, 'Saúde Pública [Nesc/Pe]                        ', 'Créditos', 7743, 'SP');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1332, 'Metrologia para a Qualidade Industrial         ', 'Créditos', 1296, 'MQI');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1333, 'Ciências Agrárias                              ', 'Créditos', 9229, 'CA');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1334, 'Matemática                                     ', 'Créditos', 1691, 'M');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1335, 'Engenharia                                     ', 'Créditos', 4198, 'E');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1336, 'Desenvolvimento e Meio Ambiente                ', 'Créditos', 2347, 'DMA');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1337, 'Desenvolvimento e Meio Ambiente                ', 'Créditos', 4974, 'DMA');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1338, 'Medicina (Cardiologia)                         ', 'Créditos', 6026, 'M');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1339, 'História                                       ', 'Créditos', 9990, 'H');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1340, 'Química                                        ', 'Créditos', 7402, 'Q');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1341, 'Física                                         ', 'Créditos', 2677, 'F');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1342, 'Fitossanidade                                  ', 'Créditos', 4182, 'F');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1343, 'Ecologia e Conservação de Recursos Naturais    ', 'Créditos', 2498, 'ECRN');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1344, 'Ciências Biológicas (Doenças Parasitárias)     ', 'Créditos', 5204, 'CBP');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1345, 'Genética e Biologia Molecular                  ', 'Créditos', 7640, 'GBM');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1346, 'Sustentabilidade Sócio-Econômica e Ambiental   ', 'Créditos', 6945, 'SSA');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1347, 'Recursos Naturais                              ', 'Créditos', 8128, 'RN');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1348, 'Agronegócios                                   ', 'Créditos', 4570, 'A');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1349, 'Administração Pública                          ', 'Créditos', 7595, 'AP');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1350, 'História Social                                ', 'Créditos', 9664, 'HS');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1351, 'Educação                                       ', 'Créditos', 3162, 'E');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1352, 'Sociologia                                     ', 'Créditos', 7909, 'S');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1353, 'Ciência de Alimentos                           ', 'Créditos', 2437, 'CA');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1354, 'Ciência Animal                                 ', 'Créditos', 5159, 'CA');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1355, 'Engenharia e Ciência de Alimentos [Sjrp]       ', 'Créditos', 3014, 'ECA');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1356, 'Matemática Aplicada [Sjrp]                     ', 'Créditos', 9262, 'MA');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1357, 'Enfermagem                                     ', 'Créditos', 8762, 'E');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1358, 'Clínica Médica                                 ', 'Créditos', 2322, 'CM');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1359, 'Medicina Interna                               ', 'Créditos', 4247, 'MI');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1360, 'Serviço Social                                 ', 'Créditos', 7913, 'SS');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1361, 'Desenvolvimento Econômico, Espaço e Meio Ambien', 'Créditos', 5681, 'DEEM');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1362, 'Arquitetura e Urbanismo                        ', 'Créditos', 2331, 'AU');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1363, 'Administração                                  ', 'Créditos', 9032, 'A');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1364, 'Economia Social e do Trabalho                  ', 'Créditos', 8891, 'EST');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1365, 'História Econômica                             ', 'Créditos', 5933, 'HE');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1366, 'Direito                                        ', 'Créditos', 6352, 'D');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1367, 'Artes Visuais                                  ', 'Créditos', 5215, 'AV');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1368, 'Engenharia Sanitária                           ', 'Créditos', 9592, 'ES');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1369, 'Engenharia Civil                               ', 'Créditos', 8966, 'EC');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1370, 'Engenharia de Energia                          ', 'Créditos', 7329, 'EE');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1371, 'Gestão Empresarial                             ', 'Créditos', 136, 'GE');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1373, 'Letras                                         ', 'Créditos', 6474, 'L');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1374, 'Distúrbios do Desenvolvimento                  ', 'Créditos', 5419, 'DD');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1375, 'Engenharia Mecânica                            ', 'Créditos', 4673, 'EM');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1376, 'Urbanismo                                      ', 'Créditos', 5867, 'U');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1377, 'Física                                         ', 'Créditos', 6467, 'F');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1378, 'Economia                                       ', 'Créditos', 888, 'E');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1379, 'Lingüística Aplicada                           ', 'Créditos', 7876, 'LA');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1380, 'Enfermagem                                     ', 'Créditos', 2912, 'E');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1381, 'Psicanálise                                    ', 'Créditos', 5612, 'P');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1382, 'Agronomia (Produção Vegetal)                   ', 'Créditos', 4280, 'AV');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1383, 'Meteorologia                                   ', 'Créditos', 1854, 'M');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1384, 'Psicologia                                     ', 'Créditos', 3385, 'P');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1385, 'Artes Visuais                                  ', 'Créditos', 297, 'AV');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1386, 'História                                       ', 'Créditos', 9718, 'H');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1387, 'Geografia                                      ', 'Créditos', 8507, 'G');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1388, 'Engenharia                                     ', 'Créditos', 3389, 'E');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1389, 'Tecnologia Educacional nas Ciências da Saúde   ', 'Créditos', 8191, 'TECS');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1390, 'Engenharia de Produção                         ', 'Créditos', 4662, 'EP');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1391, 'Sistemas e Computação                          ', 'Créditos', 6227, 'SC');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1392, 'Biologia Vegetal                               ', 'Créditos', 4902, 'BV');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1393, 'Farmácia                                       ', 'Créditos', 199, 'F');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1394, 'Agronomia (Ciências do Solo) [Jaboticabal]     ', 'Créditos', 8344, 'AS');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1395, 'Filosofia [Marília]                            ', 'Créditos', 4833, 'F');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1396, 'Estudos Lingüísticos [Sjrp]                    ', 'Créditos', 5462, 'EL');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1397, 'Administração de Empresas                      ', 'Créditos', 9350, 'AE');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1398, 'Engenharia de Produção                         ', 'Créditos', 5743, 'EP');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1399, 'Direito                                        ', 'Créditos', 549, 'D');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1400, 'Ciências (Fisiopatologia Experimental)         ', 'Créditos', 353, 'CE');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1401, 'Biologia Comparada                             ', 'Créditos', 1797, 'BC');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1402, 'Ciências do Mar                                ', 'Créditos', 4944, 'CM');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1403, 'Disturbios da Comunicação                      ', 'Créditos', 2004, 'DC');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1404, 'Análise Regional                               ', 'Créditos', 893, 'AR');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1405, 'Ciencias da Saude                              ', 'Créditos', 6204, 'CS');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1406, 'Historia                                       ', 'Créditos', 9786, 'H');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1407, 'Historia                                       ', 'Créditos', 6729, 'H');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1408, 'Odontologia (Endodontia)                       ', 'Créditos', 7486, 'O');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1409, 'Educacao                                       ', 'Créditos', 1601, 'E');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1410, 'Odontologia                                    ', 'Créditos', 242, 'O');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1411, 'Educação para a Ciência -UNESP-Bauru           ', 'Créditos', 4643, 'EC');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1412, 'Ciencias e Praticas Educativas                 ', 'Créditos', 2566, 'CPE');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1413, 'Historia da Ciencia                            ', 'Créditos', 9, 'HC');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1414, 'Agricultura Familiares e Desenvolvimento Susten', 'Créditos', 2513, 'AFDS');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1415, 'Linguistica Aplicada                           ', 'Créditos', 2334, 'LA');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1416, 'Ciências Veterinarias                          ', 'Créditos', 7816, 'CV');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1417, 'Agronomia (Sistema de Producao ) - UNESP - Ilha', 'Créditos', 3704, 'APUI');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1418, 'Engenharia Eletrica                            ', 'Créditos', 6919, 'EE');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1419, 'Estomatopatologia                              ', 'Créditos', 7187, 'E');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1420, 'Saude Coletiva-Unesp-Bot                       ', 'Créditos', 7228, 'SC');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1421, 'Ciencia da Motricidade Humana                  ', 'Créditos', 1285, 'CMH');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1422, 'Educacao                                       ', 'Créditos', 7741, 'E');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1423, 'Historia- UEM/UEL                              ', 'Créditos', 7662, 'HU');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1424, 'História                                       ', 'Créditos', 9703, 'H');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1425, 'Psicologia                                     ', 'Créditos', 882, 'P');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1426, 'Sociologia                                     ', 'Créditos', 516, 'S');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1427, 'Oceanografia Quimica e Geologica               ', 'Créditos', 3409, 'OQG');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1428, 'Letras                                         ', 'Créditos', 7380, 'L');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1429, 'Musica                                         ', 'Créditos', 5862, 'M');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1430, 'Desenvolvimento Rural                          ', 'Créditos', 495, 'DR');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1431, 'Ciencias Sociais                               ', 'Créditos', 5541, 'CS');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1432, 'Filosofia                                      ', 'Créditos', 2783, 'F');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1433, 'Ciências Contábeis                             ', 'Créditos', 2410, 'CC');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1434, 'Zootecnia-UFRPE-UFPB-UFC                       ', 'Créditos', 3132, 'Z');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1435, 'Estatistica                                    ', 'Créditos', 9569, 'E');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1436, 'Processos Biotecnologicos                      ', 'Créditos', 7821, 'PB');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1437, 'Odontologia(Periodontia)                       ', 'Créditos', 4136, 'O');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1438, 'Medicina Veterinaria [Jaboticabal]             ', 'Créditos', 8507, 'MV');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1439, 'Fisica - UEM-UEL                               ', 'Créditos', 855, 'FU');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1440, 'Quimica                                        ', 'Créditos', 2494, 'Q');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1441, 'Comunicação e Linguagens                       ', 'Créditos', 3232, 'CL');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1442, 'Comunicação e Mercado                          ', 'Créditos', 4465, 'CM');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1443, 'Ciência e Engenharia de Materiais              ', 'Créditos', 8306, 'CEM');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1444, 'Engenharia Mecânica                            ', 'Créditos', 7750, 'EM');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1445, 'Engenharia Elétrica                            ', 'Créditos', 5038, 'EE');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1446, 'Sociologia e Direito                           ', 'Créditos', 256, 'SD');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1447, 'Gerontologia                                   ', 'Créditos', 684, 'G');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1448, 'Eduacao,Arte e Historia da Cultura             ', 'Créditos', 3881, 'EHC');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1449, 'Zoologia de Vertebrados                        ', 'Créditos', 2417, 'ZV');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1450, 'Farmacologia                                   ', 'Créditos', 5031, 'F');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1451, 'Ciências Fisiológicas- Fisiologia Animal Compar', 'Créditos', 8591, 'CFFA');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1452, 'Ciências Sociais                               ', 'Créditos', 1666, 'CS');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1453, 'Ciências Sociais                               ', 'Créditos', 8517, 'CS');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1454, 'Turismo e Hotelaria                            ', 'Créditos', 3567, 'TH');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1455, 'Administracao: Gestão Moderna de Negócios      ', 'Créditos', 1640, 'AGMN');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1456, 'Econômia                                       ', 'Créditos', 4024, 'E');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1457, 'Direito                                        ', 'Créditos', 5946, 'D');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1458, 'Ciencias Criminais                             ', 'Créditos', 2904, 'CC');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1459, 'Direitos das Obrigacões                        ', 'Créditos', 1065, 'DO');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1460, 'Produção Animal                                ', 'Créditos', 4129, 'PA');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1461, 'Bioquimica Agricola                            ', 'Créditos', 7254, 'BA');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1462, 'Medicina Veterinaria Tropical                  ', 'Créditos', 1422, 'MVT');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1463, 'CIÊNCIAS DO MOVIMENTO HUMANO                   ', 'Créditos', 1928, 'CDMH');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1464, 'Odontologia (Cirurgia e Traumatologia Buco-Maxi', 'Créditos', 7319, 'OTB');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1465, 'Odontologia                                    ', 'Créditos', 7064, 'O');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1466, 'Engenharia de Reservatorio e de Exploracao     ', 'Créditos', 9507, 'ERE');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1467, 'Ciências Fisiológicas                          ', 'Créditos', 3188, 'CF');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1468, 'História                                       ', 'Créditos', 6073, 'H');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1469, 'Economia Aplicada                              ', 'Créditos', 5416, 'EA');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1470, 'Modelagem Computacional                        ', 'Créditos', 7392, 'MC');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1471, 'Engenharia e Ciência de Materiais              ', 'Créditos', 9783, 'ECM');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1472, 'MICROBIOLOGIA                                  ', 'Créditos', 6370, 'M');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1473, 'ENGENHARIA DE ALIMENTOS                        ', 'Créditos', 5730, 'EDA');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1474, 'Botânica                                       ', 'Créditos', 3513, 'B');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1475, 'Gerontologia Biomédica                         ', 'Créditos', 8015, 'GB');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1476, 'Computação Aplicada                            ', 'Créditos', 6597, 'CA');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1477, 'Epidemiologia                                  ', 'Créditos', 579, 'E');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1478, 'ADMINISTRAÇÃO- UEM/UEL                         ', 'Créditos', 4607, 'AU');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1479, 'Agronomia                                      ', 'Créditos', 5248, 'A');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1480, 'QUÍMICA DOS RECURSOS NATURAIS                  ', 'Créditos', 9623, 'QDRN');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1481, 'ECONOMIA -Unesp Araraquara                     ', 'Créditos', 1593, 'EA');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1482, 'CIÊNCIAS SOCIAIS                               ', 'Créditos', 2296, 'CS');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1483, 'Engenharia Biomédica                           ', 'Créditos', 558, 'EB');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1484, 'Biotecnologia                                  ', 'Créditos', 2009, 'B');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1485, 'REABILITAÇÃO ORAL- Araraquara                  ', 'Créditos', 5868, 'ROA');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1486, 'FISIOPATOLOGIA CLÍNICA E EXPERIMENTAL          ', 'Créditos', 327, 'FCEE');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1487, 'RECURSOS FLORESTAIS-ESALQ                      ', 'Créditos', 979, 'RF');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1488, 'ENGENHARIA MECÂNICA E DE MATERIAIS             ', 'Créditos', 9659, 'EMED');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1489, 'PSICOLOGIA                                     ', 'Créditos', 7264, 'P');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1490, 'Geociencias                                    ', 'Créditos', 2286, 'G');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1491, 'CIÊNCIAS DO AMBIENTE E SUSTENTABILIDADE NA AMAZ', 'Créditos', 763, 'CDAE');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1492, 'CIÊNCIAS AGRÁRIAS                              ', 'Créditos', 3842, 'CA');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1493, 'FISICA QUIMICA E NEUROCIÊNCIAS                 ', 'Créditos', 8846, 'FQEN');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1494, 'LETRAS                                         ', 'Créditos', 2121, 'L');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1495, 'CIÊNCIA DA NUTRIÇÃO                            ', 'Créditos', 7501, 'CDN');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1496, 'FISICA APLICADA                                ', 'Créditos', 5896, 'FA');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1497, 'SERVIÇO SOCIAL E POLÍTICA SOCIAL               ', 'Créditos', 783, 'SSEP');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1498, 'PSICOLOGIA-Assis                               ', 'Créditos', 7018, 'P');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1499, 'AGRONOMIA                                      ', 'Créditos', 1899, 'A');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1500, 'Ciências Biológicas                            ', 'Créditos', 8672, 'CB');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1501, 'Geografia, Meio Ambiente e Desenvolvimento     ', 'Créditos', 2674, 'GMAD');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1502, 'Ciências e Engenharia de Petróleo              ', 'Créditos', 4150, 'CEP');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1503, 'BIOLOGIA EXPERIMENTAL                          ', 'Créditos', 5521, 'BE');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1504, 'EDUCAÇÃO-Formação de Professores               ', 'Créditos', 2061, 'EP');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1505, 'PSICOLOGIA                                     ', 'Créditos', 8152, 'P');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1506, 'Ciências da Religião                           ', 'Créditos', 9392, 'CR');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1507, 'ENGENHARIA AMBIENTAL URBANA                    ', 'Créditos', 9010, 'EAU');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1508, 'CIÊNCIA DE MATERIAIS                           ', 'Créditos', 5121, 'CDM');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1509, 'Química                                        ', 'Créditos', 1437, 'Q');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1510, 'MATERIAIS PARA ENGENHARIA                      ', 'Créditos', 1265, 'MPE');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1511, 'Estudos da Linguagem                           ', 'Créditos', 9093, 'EL');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1512, 'Engenharia e Ciência dos Materiais             ', 'Créditos', 4401, 'ECM');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1513, 'Física                                         ', 'Créditos', 451, 'F');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1514, 'CIÊNCIA DOS MATERIAIS                          ', 'Créditos', 9892, 'CDM');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1515, 'ENSINO, FILOSOFIA E HISTÓRIA DAS CIÊNCIAS      ', 'Créditos', 4000, 'EFEH');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1516, 'Informática na Educação                        ', 'Créditos', 5388, 'IE');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1517, 'Meteorologia                                   ', 'Créditos', 9134, 'M');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1518, 'ENGENHARIA ELETRICA                            ', 'Créditos', 9990, 'EE');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1519, 'Ciências Farmaceuticas                         ', 'Créditos', 6296, 'CF');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1520, 'ENGENHARIA CIVIL                               ', 'Créditos', 8535, 'EC');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1521, 'GENÉTICA E BIOLOGIA MOLECULAR                  ', 'Créditos', 9491, 'GEBM');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1522, 'ENGENHARIA QUÍMICA                             ', 'Créditos', 637, 'EQ');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1523, 'BIOMETRIA                                      ', 'Créditos', 2039, 'B');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1524, 'ARQUITETURA E URBANISMO                        ', 'Créditos', 4652, 'AEU');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1525, 'ECOLOGIA E BIOMONITORAMENTO                    ', 'Créditos', 7472, 'EEB');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1526, 'Analises Clinicas                              ', 'Créditos', 7601, 'AC');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1527, 'CIÊNCIAS DA SAÚDE                              ', 'Créditos', 7940, 'CDS');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1528, 'Biologia                                       ', 'Créditos', 6841, 'B');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1529, 'BIOLOGIA AMBIENTAL                             ', 'Créditos', 1624, 'BA');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1530, 'CONSTRUÇÃO CIVIL                               ', 'Créditos', 8218, 'CC');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1531, 'RADIOPROTEÇÃO E DOSIMETRIA                     ', 'Créditos', 7772, 'RED');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1532, 'Microbiologia Agrícola                         ', 'Créditos', 7908, 'MA');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1533, 'Biotecnologia                                  ', 'Créditos', 84, 'B');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1534, 'ENGENHARIA QUIMICA                             ', 'Créditos', 2790, 'EQ');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1535, 'Física                                         ', 'Créditos', 9666, 'F');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1536, 'CIÊNCIAS FARMACÊUTICAS: INSUMOS E MEDICAMENTOS ', 'Créditos', 2093, 'CFIE');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1537, 'Odontologia                                    ', 'Créditos', 6171, 'O');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1538, 'Tecnologias Ambientais                         ', 'Créditos', 1678, 'TA');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1539, 'Ciência da Computação                          ', 'Créditos', 8142, 'CC');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1540, 'SERVIÇO SOCIAL                                 ', 'Créditos', 9763, 'SS');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1541, 'FÍSICA-RC                                      ', 'Créditos', 9326, 'F');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1542, 'HISTÓRIA DAS CIÊNCIAS                          ', 'Créditos', 215, 'HDC');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1543, 'Saúde na Comunidade (Ribeirão Preto)           ', 'Créditos', 7424, 'SCP');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1544, 'EDUCAÇÃO                                       ', 'Créditos', 2454, 'E');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1545, 'ODONTOLOGIA-UFPB/UFBA                          ', 'Créditos', 2115, 'O');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1546, 'ADMINISTRAÇÃO DE EMPRESAS                      ', 'Créditos', 4964, 'ADE');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1547, 'Ciencias Agrarias                              ', 'Créditos', 1643, 'CA');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1548, 'COMUNICAÇÃO                                    ', 'Créditos', 1466, 'C');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1549, 'Engenharia Mecânica                            ', 'Créditos', 6439, 'EM');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1550, 'PSICOLOGIA CLÍNICA                             ', 'Créditos', 1635, 'PC');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1551, 'ENGENHARIA QUÍMICA                             ', 'Créditos', 3912, 'EQ');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1552, 'Psicologia                                     ', 'Créditos', 6483, 'P');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1553, 'Aquicultura                                    ', 'Créditos', 7818, 'A');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1554, 'Psiquiatria                                    ', 'Créditos', 5870, 'P');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1555, 'Engenharia de Materiais                        ', 'Créditos', 2488, 'EM');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1556, 'Educação                                       ', 'Créditos', 485, 'E');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1557, 'Psicologia                                     ', 'Créditos', 3101, 'P');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1558, 'ODONTOLOGIA (BIOPATOLOGIA BUCAL)               ', 'Créditos', 4645, 'OB');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1559, 'Música                                         ', 'Créditos', 9247, 'M');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1560, 'Biologia Animal-SJRP                           ', 'Créditos', 5297, 'BA');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1561, 'ENGENHARIA CIVIL                               ', 'Créditos', 4229, 'EC');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1562, 'Engenharia de Transportes                      ', 'Créditos', 4258, 'ET');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1563, 'Planejamento e Gestão Ambiental                ', 'Créditos', 5442, 'PGA');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1564, 'Letras (História da Literatura)                ', 'Créditos', 3839, 'LL');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1565, 'Enfermagem                                     ', 'Créditos', 3037, 'E');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1566, 'Matemática Aplicada                            ', 'Créditos', 5396, 'MA');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1567, 'Engenharia Civil                               ', 'Créditos', 4830, 'EC');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1568, 'CIÊNCIAS GEODÉSICAS E TECNOLOGIAS DA GEOINFORMA', 'Créditos', 7450, 'CGET');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1569, 'Ciências Contábeis                             ', 'Créditos', 3173, 'CC');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1570, 'CIÊNCIAS BIOLÓGICAS                            ', 'Créditos', 8251, 'CB');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1571, 'DIREITO TRIBUTÁRIO E EMPRESARIAL               ', 'Créditos', 8683, 'DTEE');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1572, 'EDUCAÇÃO                                       ', 'Créditos', 3406, 'E');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1573, 'Educação                                       ', 'Créditos', 9933, 'E');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1574, 'Saúde e Comportamento                          ', 'Créditos', 2589, 'SC');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1575, 'Economia de Empresas                           ', 'Créditos', 7152, 'EE');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1576, 'POLÍTICAS SOCIAIS                              ', 'Créditos', 2681, 'PS');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1577, 'ECOLOGIA DE AGROECOSSISTEMAS                   ', 'Créditos', 2574, 'EDA');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1578, 'Fisiopatologia Médica                          ', 'Créditos', 8060, 'FM');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1579, 'Engenharia de Alimentos                        ', 'Créditos', 8077, 'EA');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1580, 'CIÊNCIAS BIOLÓGICAS: FARMACOLOGIA BIOQUÍMICA MO', 'Créditos', 5156, 'CBFB');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1581, 'BIOLOGIA VEGETAL                               ', 'Créditos', 9287, 'BV');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1582, 'Botânica                                       ', 'Créditos', 8803, 'B');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1583, 'Engenharia Ambiental                           ', 'Créditos', 199, 'EA');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1584, 'Lingüística                                    ', 'Créditos', 6365, 'L');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1585, 'Agriculturas Amazônicas                        ', 'Créditos', 3929, 'AA');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1586, 'Ciência Animal                                 ', 'Créditos', 1075, 'CA');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1587, 'Agroecologia                                   ', 'Créditos', 9910, 'A');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1588, 'Ensino das Ciências                            ', 'Créditos', 7259, 'EC');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1589, 'Literatura e Diversidade Cultural              ', 'Créditos', 6142, 'LDC');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1590, 'Redes de Computadores                          ', 'Créditos', 9539, 'RC');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1591, 'Medicina (Clínica Obstétrica)                  ', 'Créditos', 5001, 'MO');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1592, 'Tisiologia e Pneumologia                       ', 'Créditos', 7555, 'TP');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1593, 'Medicina (Ginecologia)                         ', 'Créditos', 2591, 'M');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1594, 'Engenharia de Reservatório e de Exploração     ', 'Créditos', 3926, 'ERE');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1595, 'Música                                         ', 'Créditos', 5587, 'M');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1596, 'Engenharia de Barragens                        ', 'Créditos', 4248, 'EB');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1597, 'Odontologia                                    ', 'Créditos', 881, 'O');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1598, 'Modelagem Matemática em Finanças               ', 'Créditos', 3897, 'MMF');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1599, 'Pesquisa e Desenvolvimento (Biotecnologia Médic', 'Créditos', 7855, 'PDM');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1600, 'Economia da Saúde                              ', 'Créditos', 1072, 'ES');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1601, 'Fisiologia do Exercício                        ', 'Créditos', 7539, 'FE');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1602, 'Tecnologia Ambiental                           ', 'Créditos', 1979, 'TA');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1603, 'Clínica Odontológica                           ', 'Créditos', 9811, 'CO');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1604, 'Engenharia de Produção                         ', 'Créditos', 9346, 'EP');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1605, 'Patologia Tropical                             ', 'Créditos', 4290, 'PT');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1606, 'Ciências Farmacêuticas                         ', 'Créditos', 5173, 'CF');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1607, 'Enfermagem                                     ', 'Créditos', 4719, 'E');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1608, 'Filosofia                                      ', 'Créditos', 822, 'F');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1609, 'Ciências da Saúde                              ', 'Créditos', 4828, 'CS');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1610, 'Gestão Pública para o Desenvolvimento do Nordes', 'Créditos', 9576, 'GPDN');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1611, 'Educação e Contemporaneidade                   ', 'Créditos', 4567, 'EC');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1612, 'Sistemas de Gestão                             ', 'Créditos', 2097, 'SG');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1613, 'Engenharia de Computação                       ', 'Créditos', 2786, 'EC');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1614, 'Direito                                        ', 'Créditos', 9149, 'D');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1615, 'Direito                                        ', 'Créditos', 2785, 'D');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1616, 'Promoção de Saúde                              ', 'Créditos', 4505, 'PS');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1617, 'Lasers em Odontologia                          ', 'Créditos', 2053, 'LO');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1618, 'Projeto e Operação de Sistemas Nucleares       ', 'Créditos', 7723, 'POSN');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1619, 'Ciências                                       ', 'Créditos', 8218, 'C');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1620, 'Serviço Social                                 ', 'Créditos', 9421, 'SS');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1621, 'Odontologia (Radiologia Buco-Maxilo-Facial)    ', 'Créditos', 8174, 'OB');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1622, 'Nutrição Humana                                ', 'Créditos', 1560, 'NH');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1623, 'Planejamento Urbano e Regional                 ', 'Créditos', 7561, 'PUR');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1624, 'Bioengenharia                                  ', 'Créditos', 7342, 'B');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1625, 'Ortodontia                                     ', 'Créditos', 9018, 'O');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1626, 'Odontologia                                    ', 'Créditos', 8432, 'O');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1627, 'Odontologia (Implantologia)                    ', 'Créditos', 9666, 'O');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1628, 'Odontologia                                    ', 'Créditos', 331, 'O');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1629, 'Tecnologia Ambiental                           ', 'Créditos', 9742, 'TA');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1630, 'Engenharia de Computação                       ', 'Créditos', 4906, 'EC');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1631, 'Serviço Social e Política Social               ', 'Créditos', 4133, 'SSPS');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1632, 'Letras e Cultura Regional                      ', 'Créditos', 8925, 'LCR');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1633, 'Turismo                                        ', 'Créditos', 3570, 'T');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1634, 'Direito                                        ', 'Créditos', 6635, 'D');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1635, 'Saúde Coletiva                                 ', 'Créditos', 8693, 'SC');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1636, 'Engenharia: Energia, Ambiente e Materiais      ', 'Créditos', 2108, 'EEAM');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1637, 'Letras                                         ', 'Créditos', 3778, 'L');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1638, 'Gestão do Patrimônio Cultural                  ', 'Créditos', 5422, 'GPC');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1639, 'Engenharia de Processos                        ', 'Créditos', 6721, 'EP');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1640, 'Recursos Pesqueiros e Aquicultura              ', 'Créditos', 4629, 'RPA');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1641, 'Química                                        ', 'Créditos', 710, 'Q');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1642, 'Ciências Ambientais                            ', 'Créditos', 3039, 'CA');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1643, 'Ciencias Biologicas (Zoologia)                 ', 'Créditos', 9349, 'CB');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1644, 'Filosofia                                      ', 'Créditos', 9399, 'F');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1645, 'Psicologia                                     ', 'Créditos', 5854, 'P');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1646, 'Ciências Ambientais                            ', 'Créditos', 5693, 'CA');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1647, 'Ciências Veterinárias                          ', 'Créditos', 6536, 'CV');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1648, 'Ciências Econômicas                            ', 'Créditos', 6330, 'CE');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1649, 'Agronomia ( Fitotecnia)                        ', 'Créditos', 5533, 'AF');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1650, 'ENGENHARIA ELETRICA                            ', 'Créditos', 606, 'EE');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1651, 'CIÊNCIAS FARMACÊUTICAS                         ', 'Créditos', 3856, 'CF');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1652, 'DIREITO POLÍTICO E ECONÔMICO                   ', 'Créditos', 2447, 'DPEE');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1653, 'ENGENHARIA ELETRICA                            ', 'Créditos', 9342, 'EE');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1654, 'Filosofia                                      ', 'Créditos', 8860, 'F');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1655, 'Nutrição                                       ', 'Créditos', 6098, 'N');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1656, 'Arquitertura e Urbanismo                       ', 'Créditos', 7478, 'AU');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1657, 'Engenharia Urbana ( J.Pessoa)                  ', 'Créditos', 8062, 'EUJ');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1658, 'QUÍMICA ANALÍTICA                              ', 'Créditos', 8784, 'QA');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1659, 'Educação                                       ', 'Créditos', 888, 'E');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1660, 'CIÊNCIAS DA RELIGIÃO                           ', 'Créditos', 4469, 'CDR');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1661, 'Ecologia e Manejo de Recursos Naturais         ', 'Créditos', 5735, 'EMRN');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1662, 'Matemática Computacional                       ', 'Créditos', 6936, 'MC');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1663, 'Odontopediatria [Rib. Preto]                   ', 'Créditos', 775, 'OP');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1664, 'Ciências da Saúde                              ', 'Créditos', 9259, 'CS');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1665, 'Administração                                  ', 'Créditos', 5947, 'A');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1666, 'Política Social                                ', 'Créditos', 988, 'PS');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1667, 'CIÊNCIAS FLORESTAIS                            ', 'Créditos', 952, 'CF');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1668, 'Ciências da Saúde                              ', 'Créditos', 5902, 'CS');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1669, 'Administração                                  ', 'Créditos', 2809, 'A');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1670, 'Ciências Contábeis                             ', 'Créditos', 7101, 'CC');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1671, 'Direito                                        ', 'Créditos', 708, 'D');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1672, 'Ciências da Reabilitação                       ', 'Créditos', 2909, 'CR');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1673, 'GESTÃO DE POLÍTICAS PÚBLICAS                   ', 'Créditos', 9482, 'GDPP');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1674, 'Ciência da Informação                          ', 'Créditos', 7641, 'CI');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1675, 'Engenharia de Edificações e Saneamento         ', 'Créditos', 1569, 'EES');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1676, 'Biotecnologia                                  ', 'Créditos', 7762, 'B');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1677, 'Zoologia                                       ', 'Créditos', 1214, 'Z');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1678, 'Ensino de Ciência e Educação Matemática        ', 'Créditos', 6746, 'ECEM');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1679, 'Patologia Experimental                         ', 'Créditos', 1027, 'PE');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1680, 'Educação Científica e Tecnológica              ', 'Créditos', 7922, 'ECT');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1681, 'Engenharia Ambiental                           ', 'Créditos', 7698, 'EA');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1682, 'Economia                                       ', 'Créditos', 1802, 'E');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1683, 'Educação de Ciências e Matemática              ', 'Créditos', 6977, 'ECM');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1684, 'Vigilãncia Sanitária                           ', 'Créditos', 7221, 'VS');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1685, 'Teatro                                         ', 'Créditos', 5390, 'T');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1686, 'Ciência da Computação                          ', 'Créditos', 531, 'CC');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1687, 'Filosofia                                      ', 'Créditos', 6716, 'F');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1688, 'CIÊNCIA DA COMPUTAÇÃO                          ', 'Créditos', 6349, 'CDC');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1689, 'Odontologia                                    ', 'Créditos', 7915, 'O');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1690, 'Educação                                       ', 'Créditos', 8024, 'E');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1691, 'Comunicação                                    ', 'Créditos', 5914, 'C');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1692, 'BIODIVERSIDADE VEGETAL E MEIO AMBIENTE         ', 'Créditos', 760, 'BVEM');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1693, 'Educação                                       ', 'Créditos', 8342, 'E');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1694, 'Engenharia Civil                               ', 'Créditos', 9135, 'EC');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1695, 'Geografia                                      ', 'Créditos', 9785, 'G');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1696, 'Filosofia                                      ', 'Créditos', 7395, 'F');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1697, 'GENÉTICA E BIOLOGIA MOLECULAR                  ', 'Créditos', 7619, 'GEBM');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1698, 'Literatura e Crítica Literária                 ', 'Créditos', 531, 'LCL');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1699, 'ENTOMOLOGIA E CONSERVAÇÃO DA BIODIVERSIDADE    ', 'Créditos', 5970, 'EECD');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1700, 'Pós-Graduação em Quimica                       ', 'Créditos', 3498, 'PQ');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1701, 'Direito                                        ', 'Créditos', 7529, 'D');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1702, 'Direito Processual e Cidadania                 ', 'Créditos', 2491, 'DPC');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1703, 'Genética e Melhoramento                        ', 'Créditos', 8191, 'GM');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1704, 'Ciência e Tecnologia das Radiações e dos Materi', 'Créditos', 2043, 'CTRM');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1705, 'ENFERMAGEM NA SAÚDE DO ADULTO                  ', 'Créditos', 8353, 'ENSD');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1706, 'Mestrado em Educação                           ', 'Créditos', 2259, 'ME');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1707, 'Enfermagem                                     ', 'Créditos', 5138, 'E');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1708, 'Psicologia                                     ', 'Créditos', 6286, 'P');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1709, 'Lingüística                                    ', 'Créditos', 9313, 'L');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1710, 'Engenharia de Produção                         ', 'Créditos', 2287, 'EP');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1711, 'Patologia Tropical                             ', 'Créditos', 5989, 'PT');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1712, 'Agriculturas Amazônicas                        ', 'Créditos', 3121, 'AA');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1713, 'Ciência Animal                                 ', 'Créditos', 7587, 'CA');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1714, 'Educação Em Ciências e Matemáticas             ', 'Créditos', 9508, 'EECM');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1715, 'Ciências Sociais                               ', 'Créditos', 8604, 'CS');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1716, 'Programa de Pós-Graduação Em Economia          ', 'Créditos', 1741, 'PPEE');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1717, 'Sustentabilidade de Ecossistemas               ', 'Créditos', 6665, 'SE');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1718, 'Agroecologia                                   ', 'Créditos', 3729, 'A');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1719, 'Desenvolvimento e Meio Ambiente                ', 'Créditos', 1534, 'DMA');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1720, 'Políticas Públicas                             ', 'Créditos', 3696, 'PP');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1721, 'Ciências Farmacêuticas                         ', 'Créditos', 7251, 'CF');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1722, 'Toco-Ginecologia                               ', 'Créditos', 1625, 'T');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1723, 'Ciências Marinhas Tropicais                    ', 'Créditos', 8926, 'CMT');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1724, 'Ligüística Aplicada                            ', 'Créditos', 9609, 'LA');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1725, 'Políticas Públicas e Sociedade                 ', 'Créditos', 7576, 'PPS');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1726, 'Enfermagem                                     ', 'Créditos', 2086, 'E');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1727, 'Filosofia                                      ', 'Créditos', 977, 'F');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1728, 'Ciências da Saúde                              ', 'Créditos', 9350, 'CS');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1729, 'Ensino de Ciências Naturais e Matemática       ', 'Créditos', 5775, 'ECNM');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1730, 'Gestão Pública Para O Desenvolvimento do Nordes', 'Créditos', 2343, 'GPPO');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1731, 'Ensino das Ciências                            ', 'Créditos', 9195, 'EC');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1732, 'Odontologia                                    ', 'Créditos', 7570, 'O');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1733, ' Ciências da Saude                             ', 'Créditos', 6971, 'CS');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1734, 'Ciência da Informação                          ', 'Créditos', 7635, 'CI');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1735, 'Gerenciamento e Tecnologia Ambiental No Process', 'Créditos', 9415, 'GTAN');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1736, 'Literatura e Diversidade Cultural              ', 'Créditos', 6664, 'LDC');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1737, 'Educação e Contemporaneidade                   ', 'Créditos', 1016, 'EC');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1738, 'Cultura & Turismo - Parceria Uesc/Ufba         ', 'Créditos', 745, 'CTPU');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1739, 'Ciências Contábeis                             ', 'Créditos', 9411, 'CC');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1740, 'Redes de Computadores                          ', 'Créditos', 7723, 'RC');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1741, 'Regulação da Indústria de Energia              ', 'Créditos', 7639, 'RIE');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1742, 'Mestrado Em Administração Estratégica          ', 'Créditos', 2852, 'MEAE');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1743, 'Administração                                  ', 'Créditos', 9046, 'A');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1744, 'Direito                                        ', 'Créditos', 7777, 'D');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1745, 'Ciência Política                               ', 'Créditos', 2380, 'CP');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1746, 'Engenharia Ambiental                           ', 'Créditos', 8651, 'EA');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1747, 'Sistemas de Gestão                             ', 'Créditos', 13, 'SG');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1748, ' Medicina                                      ', 'Créditos', 8069, 'M');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1749, 'Engenharia de Computação                       ', 'Créditos', 1095, 'EC');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1750, 'Direito                                        ', 'Créditos', 3277, 'D');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1751, 'Administração e Desenvolvimento Empresarial    ', 'Créditos', 3845, 'ADE');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1752, 'Odontologia                                    ', 'Créditos', 4494, 'O');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1753, 'Engenharia de Reservatório e de Exploração     ', 'Créditos', 990, 'ERE');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1754, 'Cognição e Linguagem                           ', 'Créditos', 4662, 'CL');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1755, 'Administração                                  ', 'Créditos', 5534, 'A');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1756, 'Economia                                       ', 'Créditos', 2430, 'E');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1757, 'Odontologia                                    ', 'Créditos', 3420, 'O');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1758, 'Direito                                        ', 'Créditos', 2708, 'D');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1759, 'Direito                                        ', 'Créditos', 58, 'D');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1760, 'Música                                         ', 'Créditos', 1449, 'M');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1761, 'Ciências da Reabilitação                       ', 'Créditos', 4073, 'CR');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1762, ' Clínica Médica                                ', 'Créditos', 3569, 'CM');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1763, 'Engenharia de Barragens                        ', 'Créditos', 6193, 'EB');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1764, 'Odontologia                                    ', 'Créditos', 8448, 'O');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1765, 'Administração                                  ', 'Créditos', 7850, 'A');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1766, 'FISIOTERAPIA                                   ', 'Créditos', 4994, 'F');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1767, 'Direito                                        ', 'Créditos', 6709, 'D');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1768, 'Pós-Graduação Em Engenharia Elétrica           ', 'Créditos', 1484, 'PEEE');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1769, 'Administração                                  ', 'Créditos', 9219, 'A');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1770, 'Modelagem Matemática Em Finanças               ', 'Créditos', 6729, 'MMEF');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1771, 'Língua, Literatura e Cultura Arabe             ', 'Créditos', 3417, 'LLCA');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1772, 'Literatura e Cultura Russa                     ', 'Créditos', 1925, 'LCR');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1773, 'Estética e História da Arte                    ', 'Créditos', 8160, 'EHA');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1774, 'Odontologia                                    ', 'Créditos', 5272, 'O');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1775, 'Psicologia da Saúde                            ', 'Créditos', 1343, 'PS');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1776, ' Odontologia Em Saúde Coletiva                 ', 'Créditos', 7383, 'OESC');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1777, 'Música                                         ', 'Créditos', 966, 'M');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1778, 'Comunicação                                    ', 'Créditos', 9788, 'C');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1779, 'Pesquisa e Desenvolvimento (Biotecnologia Médic', 'Créditos', 1378, 'PDM');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1780, 'Fisiologia do Exercicio                        ', 'Créditos', 9300, 'FE');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1781, 'Economia da Saúde                              ', 'Créditos', 2, 'ES');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1782, 'Mestrado Em Direito                            ', 'Créditos', 4704, 'MED');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1783, 'Engenharia Mecânica                            ', 'Créditos', 8598, 'EM');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1784, 'Tecnologia Ambiental                           ', 'Créditos', 4358, 'TA');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1785, 'Clínica Odontológica                           ', 'Créditos', 1332, 'CO');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1786, 'Planejamento Urbano e Regional                 ', 'Créditos', 6790, 'PUR');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1787, 'Bioengenharia                                  ', 'Créditos', 8179, 'B');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1788, 'Ortodontia                                     ', 'Créditos', 7209, 'O');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1789, 'Educação                                       ', 'Créditos', 4250, 'E');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1790, 'Comunicação                                    ', 'Créditos', 5501, 'C');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1791, 'Odontologia (Implantologia)                    ', 'Créditos', 5880, 'O');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1792, 'Odontologia                                    ', 'Créditos', 4497, 'O');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1793, 'Análises Clínicas                              ', 'Créditos', 5489, 'AC');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1794, 'Saúde Materno Infantil                         ', 'Créditos', 1611, 'SMI');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1795, 'Tecnologia Ambiental                           ', 'Créditos', 9002, 'TA');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1796, 'Engenharia de Computação                       ', 'Créditos', 1720, 'EC');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1797, 'Processos Industriais                          ', 'Créditos', 5600, 'PI');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1798, 'Administração                                  ', 'Créditos', 2333, 'A');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1799, 'Educação                                       ', 'Créditos', 5849, 'E');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1800, 'Promoção de Saúde                              ', 'Créditos', 2854, 'PS');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1801, 'Controladoria e Contabilidade Estratégica      ', 'Créditos', 5507, 'CCE');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1802, 'Administração de Empresas                      ', 'Créditos', 9399, 'AE');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1803, 'Administração                                  ', 'Créditos', 6610, 'A');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1804, 'Lasers Em Odontologia                          ', 'Créditos', 9785, 'LEO');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1805, 'Sistema Constitucional de Garantia de Direitos ', 'Créditos', 869, 'SCGD');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1806, 'Hospitalidade                                  ', 'Créditos', 7982, 'H');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1807, 'Ciências da Reabilitação Neuro-Motora          ', 'Créditos', 8186, 'CRN');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1808, 'Ciências                                       ', 'Créditos', 9777, 'C');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1809, 'Odontologia                                    ', 'Créditos', 8545, 'O');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1810, 'Engenharia de Produção e Sistemas              ', 'Créditos', 9709, 'EPS');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1811, 'Ciências Sociais Aplicadas                     ', 'Créditos', 5785, 'CSA');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1812, 'Odontologia                                    ', 'Créditos', 9419, 'O');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1813, 'Letras -Linguagem e Sociedade                  ', 'Créditos', 2827, 'LS');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1814, 'Serviço Social                                 ', 'Créditos', 8699, 'SS');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1815, 'Educação                                       ', 'Créditos', 5449, 'E');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1816, 'Ensino de Física                               ', 'Créditos', 6003, 'EF');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1817, 'Relações Internacionais                        ', 'Créditos', 2638, 'RI');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1818, 'Biotecnologia Agricola                         ', 'Créditos', 927, 'BA');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1819, 'Ciências Sociais Aplicadas                     ', 'Créditos', 9159, 'CSA');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1820, 'Turismo                                        ', 'Créditos', 8222, 'T');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1821, 'Direito                                        ', 'Créditos', 3760, 'D');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1822, 'Letras e Cultura Regional                      ', 'Créditos', 2313, 'LCR');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1823, 'Ciências Médicas                               ', 'Créditos', 1059, 'CM');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1824, 'Ciências da Saúde (Cardiologia)                ', 'Créditos', 1190, 'CS');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1825, 'Saúde Coletiva                                 ', 'Créditos', 7677, 'SC');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1826, 'Ensino de Ciências e Matemática                ', 'Créditos', 9000, 'ECM');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1827, 'Engenharia: Energia, Ambiente e Materiais      ', 'Créditos', 9747, 'EEAM');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1828, 'Desenvolvimento, Gestão e Cidadania            ', 'Créditos', 5857, 'DGC');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1829, 'Geografia                                      ', 'Créditos', 9340, 'G');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1830, 'Física e Meio Ambiente                         ', 'Créditos', 3008, 'FMA');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1831, 'Letras                                         ', 'Créditos', 7975, 'L');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1832, 'Ciência da Computação                          ', 'Créditos', 5276, 'CC');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1833, 'Ciência Animal                                 ', 'Créditos', 3739, 'CA');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1834, 'Geografia                                      ', 'Créditos', 653, 'G');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1835, 'Agronegócios                                   ', 'Créditos', 9657, 'A');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1836, 'Desenvolvimento Local                          ', 'Créditos', 2525, 'DL');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1837, 'Psicologia                                     ', 'Créditos', 2323, 'P');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1838, 'Meio Ambiente e Desenvolvimento Regional       ', 'Créditos', 9039, 'MADR');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1839, 'Produção Agroindustrial                        ', 'Créditos', 8409, 'PA');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1840, 'Odontologia (Radiologia Buco Maxilo Facial)    ', 'Créditos', 6043, 'OBMF');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1841, 'Gestão do Patrimônio Cultural                  ', 'Créditos', 79, 'GPC');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1842, 'Nutrição Humana                                ', 'Créditos', 1117, 'NH');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1843, 'Ciências Genômicas e Biotecnologia             ', 'Créditos', 1018, 'CGB');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1844, 'Gestão do Conhecimento e Tecnologia da Informaç', 'Créditos', 5485, 'GCTI');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1845, 'Diplomacia                                     ', 'Créditos', 4871, 'D');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1846, 'Ciência Política                               ', 'Créditos', 2556, 'CP');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1847, 'DESENVOLVIMENTO E MEIO AMBIENTE                ', 'Créditos', 3868, 'DEMA');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1848, 'ECONOMIA                                       ', 'Créditos', 8440, 'E');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1849, 'MECATRÔNICA                                    ', 'Créditos', 7056, 'M');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1850, 'Biologia Celular e Molecular                   ', 'Créditos', 9719, 'BCM');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1851, 'Ciências da Saúde                              ', 'Créditos', 7757, 'CS');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1852, 'Ciências da Saúde                              ', 'Créditos', 5102, 'CS');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1853, 'Análises Clínicas                              ', 'Créditos', 7287, 'AC');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1854, 'Educação Física                                ', 'Créditos', 5497, 'EF');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1855, 'Desenvolvimento Regional e Agronegócios        ', 'Créditos', 867, 'DRA');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1856, 'Biologia Vegetal                               ', 'Créditos', 167, 'BV');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1857, 'Linguística Aplicada                           ', 'Créditos', 5242, 'LA');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1858, 'MESTRADO EM CIRURGIA                           ', 'Créditos', 8421, 'MEC');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1859, 'Matemática                                     ', 'Créditos', 505, 'M');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1860, 'MEDICINA VETERINÁRIA EM PEQUENOS RUMINANTES    ', 'Créditos', 5488, 'MVEP');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1861, 'Desenho Industrial (Bauru)                     ', 'Créditos', 3256, 'DI');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1862, 'Biotecnologia                                  ', 'Créditos', 500, 'B');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1863, 'ODONTOLOGIA                                    ', 'Créditos', 5154, 'O');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1864, 'Ciência Animal                                 ', 'Créditos', 5177, 'CA');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1865, 'Informática                                    ', 'Créditos', 4432, 'I');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1866, 'Sociedade e Cultura na Amazônia                ', 'Créditos', 5297, 'SCA');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1867, 'Ciência do Solo                                ', 'Créditos', 564, 'CS');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1868, 'Arqueologia                                    ', 'Créditos', 5483, 'A');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1869, 'Educação                                       ', 'Créditos', 49, 'E');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1870, 'Agronomia ( Melhoramento Genético de Plantas)  ', 'Créditos', 9906, 'AMGP');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1871, 'Sistemas Mecatrônicos                          ', 'Créditos', 8964, 'SM');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1872, 'Genética, Conservação e Biologia Evolutiva     ', 'Créditos', 6348, 'GCBE');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1873, 'Geografia                                      ', 'Créditos', 455, 'G');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1874, 'Química                                        ', 'Créditos', 1341, 'Q');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1875, 'Sistemas Agrosilvopastoris no Semi-Arido       ', 'Créditos', 6051, 'SAS');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1876, 'Física                                         ', 'Créditos', 4200, 'F');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1877, 'Ciências Médicas                               ', 'Créditos', 305, 'CM');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1878, 'Cirurgia e Experimentação                      ', 'Créditos', 7134, 'CE');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1879, 'Zoologia                                       ', 'Créditos', 5682, 'Z');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1880, 'Direito                                        ', 'Créditos', 7808, 'D');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1881, 'Matematica                                     ', 'Créditos', 6902, 'M');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1882, 'Doenças Tropicais e Infecciosas                ', 'Créditos', 2714, 'DTI');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1883, 'Odontologia                                    ', 'Créditos', 9141, 'O');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1884, 'Direito Constitucional                         ', 'Créditos', 1951, 'DC');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1885, 'Educação em Saúde                              ', 'Créditos', 2118, 'ES');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1886, 'Informatica Aplicada                           ', 'Créditos', 5931, 'IA');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1887, 'Psicologia                                     ', 'Créditos', 6957, 'P');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1888, 'Saude e Meio Ambiente                          ', 'Créditos', 2562, 'SMA');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1889, 'Sociologia                                     ', 'Créditos', 2504, 'S');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1890, 'Educação                                       ', 'Créditos', 9844, 'E');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1891, 'Educação                                       ', 'Créditos', 2748, 'E');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1892, 'Engenharia e Ciência dos materiais             ', 'Créditos', 531, 'EC');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1893, 'Bioinformatica                                 ', 'Créditos', 8977, 'B');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1894, 'Engenharia Automotiva ( Profissionalizante)    ', 'Créditos', 6606, 'EAP');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1895, 'Quimica                                        ', 'Créditos', 2449, 'Q');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1896, 'Cirurgia Plástica                              ', 'Créditos', 2253, 'CP');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1897, 'Odontopediatria e Ortodontia (Profissionalizant', 'Créditos', 6870, 'OO');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1898, 'Administração da Prática Oftalmológica (Profiss', 'Créditos', 4982, 'APO');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1899, 'Administração ( Profissionalizante)            ', 'Créditos', 3645, 'AP');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1900, 'Administração ( Profissionalizante)            ', 'Créditos', 2632, 'AP');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1901, 'Administração e Negócios ( Profissionalizante) ', 'Créditos', 2290, 'ANP');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1902, 'Mestrado Profissionalizante em Engenharia de Re', 'Créditos', 1150, 'MPER');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1903, 'Engenharia Mecânica                            ', 'Créditos', 9420, 'EM');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1904, 'Agronomia                                      ', 'Créditos', 2705, 'A');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1905, 'CIÊNCIA DA INFORMAÇÃO                          ', 'Créditos', 3678, 'CDI');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1906, 'Saúde Coletiva                                 ', 'Créditos', 915, 'SC');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1907, 'PRODUÇÃO VEGETAL                               ', 'Créditos', 2742, 'PV');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1908, 'TEOLOGIA                                       ', 'Créditos', 7203, 'T');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1909, 'PLANEJAMENTO REGIONAL E GESTÃO DA CIDADE (PROFI', 'Créditos', 984, 'PREG');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1910, 'MESTRADO EM LETRAS                             ', 'Créditos', 5706, 'MEL');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1911, 'Clínica Médica                                 ', 'Créditos', 1822, 'CM');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1912, 'Diversidade Vegetal: Conhecer e Conservar      ', 'Créditos', 356, 'DVCC');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1913, 'Administração                                  ', 'Créditos', 5618, 'A');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1914, 'Engenharia Elétrica                            ', 'Créditos', 6668, 'EE');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1915, 'Astronomia                                     ', 'Créditos', 4460, 'A');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1916, 'Ciências Médicas                               ', 'Créditos', 4017, 'CM');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1917, 'Ciência e Tecnologia de Alimentos              ', 'Créditos', 9257, 'CTA');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1918, 'Ciências                                       ', 'Créditos', 794, 'C');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1919, 'Estudos de Linguagem                           ', 'Créditos', 4904, 'EL');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1920, 'Engenharia Civil                               ', 'Créditos', 4400, 'EC');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1921, 'Psicologia                                     ', 'Créditos', 9786, 'P');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1922, 'Parasitologia                                  ', 'Créditos', 3133, 'P');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1923, 'Ciências Sociais                               ', 'Créditos', 1514, 'CS');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1924, 'Engenharia                                     ', 'Créditos', 2906, 'E');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1925, 'Produção Vegetal                               ', 'Créditos', 6284, 'PV');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1926, 'CIÊNCIA E TECNOLOGIA AMBIENTAL                 ', 'Créditos', 7077, 'CETA');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1927, 'CIÊNCIAS DA SAUDE                              ', 'Créditos', 1511, 'CDS');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1928, 'Odontologia Preventiva e Social                ', 'Créditos', 8327, 'OPS');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1929, 'Educação Física                                ', 'Créditos', 8913, 'EF');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1930, 'CIÊNCIAS DA REABILITAÇÃO                       ', 'Créditos', 7931, 'CDR');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1931, 'Administração e Desenvolvimento Rural          ', 'Créditos', 9281, 'ADR');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1932, 'CIÊNCIAS VETERINÁRIAS                          ', 'Créditos', 7642, 'CV');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1933, 'Filosofia                                      ', 'Créditos', 6191, 'F');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1934, 'CIÊNCIA E TECNOLOGIA DE MATERIAIS              ', 'Créditos', 2478, 'CETD');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1935, 'Microbiologia, Parasitologia e Patologia       ', 'Créditos', 5247, 'MPP');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1936, 'Comunicação                                    ', 'Créditos', 3998, 'C');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1937, 'Estética e História da Arte                    ', 'Créditos', 3211, 'EHA');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1938, 'História                                       ', 'Créditos', 3494, 'H');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1939, 'Microbiologia Médica                           ', 'Créditos', 9845, 'MM');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1940, 'Tecnologia em Saúde                            ', 'Créditos', 8775, 'TS');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1941, 'CIÊNCIAS DA SAÚDE                              ', 'Créditos', 214, 'CDS');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1942, 'ZOOTECNIA                                      ', 'Créditos', 4280, 'Z');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1943, 'EDUCAÇÃO/RC                                    ', 'Créditos', 5068, 'E');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1944, 'Telecomunicações                               ', 'Créditos', 3930, 'T');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1945, 'Desenvolvimento Regional e Meio Ambiente       ', 'Créditos', 6233, 'DRMA');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1946, 'Ensino em Biociências e Saúde                  ', 'Créditos', 2556, 'EBS');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1947, 'Educação                                       ', 'Créditos', 9055, 'E');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1948, 'Pesquisa Clínica em Doenças Infecciosas        ', 'Créditos', 8878, 'PCDI');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1949, 'BIOLOGIA ORAL                                  ', 'Créditos', 9268, 'BO');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1950, 'CIÊNCIA E TECNOLOGIA DE ALIMENTOS              ', 'Créditos', 9628, 'CETD');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1951, 'DIREITO DAS RELAÇÕES INTERNACIONAIS            ', 'Créditos', 8073, 'DDRI');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1952, 'Odontologia                                    ', 'Créditos', 9430, 'O');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1953, 'Ciências Farmacêuticas                         ', 'Créditos', 1762, 'CF');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1954, 'PRODUÇÃO VEGETAL                               ', 'Créditos', 477, 'PV');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1955, 'FISIOTERAPIA                                   ', 'Créditos', 6033, 'F');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1956, 'Química                                        ', 'Créditos', 2602, 'Q');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1957, 'CIÊNCIAS FLORESTAIS E AMBIENTAIS               ', 'Créditos', 3554, 'CFEA');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1958, 'ADMINISTRAÇÃO                                  ', 'Créditos', 6867, 'A');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1959, 'AGRICULTURA NO TRÓPICO ÚMIDO                   ', 'Créditos', 8185, 'ANT');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1960, 'Ciências da Saude                              ', 'Créditos', 3368, 'CS');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1961, 'MESTRADO EM DIREITO AMBIENTAL                  ', 'Créditos', 2398, 'MEDA');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1962, 'ODONTOLOGIA                                    ', 'Créditos', 6129, 'O');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1963, 'SERVIÇO SOCIAL                                 ', 'Créditos', 5881, 'SS');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1964, 'FISICA                                         ', 'Créditos', 5874, 'F');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1965, 'ODONTOLOGIA                                    ', 'Créditos', 2019, 'O');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1966, 'BIOLOGIA DE AGENTES INFECCIOSOS E PARASITÁRIOS ', 'Créditos', 1744, 'BDAI');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1967, 'MESTRADO EM MATEMÁTICA E ESTATÍSTICA           ', 'Créditos', 8806, 'MEME');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1968, 'CIÊNCIAS DO AMBIENTE                           ', 'Créditos', 1256, 'CDA');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1969, 'ENFERMAGEM                                     ', 'Créditos', 8584, 'E');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1970, 'MESTRADO EM EDUCAÇÃO FÍSICA                    ', 'Créditos', 418, 'MEEF');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1971, 'GESTÃO URBANA                                  ', 'Créditos', 7411, 'GU');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1972, 'FILOSOFIA                                      ', 'Créditos', 687, 'F');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1973, 'EDUCAÇÃO PARA A CIÊNCIA E A MATEMATICA         ', 'Créditos', 9855, 'EPAC');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1974, 'MESTRADO EM ENFERMAGEM                         ', 'Créditos', 1535, 'MEE');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1975, 'AGRONOMIA                                      ', 'Créditos', 2570, 'A');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1976, 'ENGENHARIA DE PRODUÇÃO                         ', 'Créditos', 4660, 'EDP');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1977, 'MESTRADO EM ODONTOLOGIA                        ', 'Créditos', 3298, 'MEO');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1978, 'CIÊNCIA JURÍDICA                               ', 'Créditos', 9398, 'CJ');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1979, 'DESENVOLVIMENTO DE TECNOLOGIA                  ', 'Créditos', 5160, 'DDT');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1980, 'PSICOLOGIA                                     ', 'Créditos', 8990, 'P');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1981, 'EDUCAÇÃO                                       ', 'Créditos', 9657, 'E');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1982, 'DIREITO                                        ', 'Créditos', 225, 'D');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1983, 'ESTUDOS DA TRADUÇÃO                            ', 'Créditos', 5725, 'EDT');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1984, 'ODONTOLOGIA                                    ', 'Créditos', 1662, 'O');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1985, 'CIÊNCIAS DA NUTRIÇÃO - J.P.                    ', 'Créditos', 2151, 'CDNJ');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1986, 'GEOGRAFIA                                      ', 'Créditos', 7304, 'G');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1987, 'CONTABILIDADE                                  ', 'Créditos', 976, 'C');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1988, 'ADMINISTRAÇÃO                                  ', 'Créditos', 9324, 'A');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1989, 'CIÊNCIA E ENGENHARIA DE MATERIAIS              ', 'Créditos', 449, 'CEED');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1990, 'GEOGRAFIA                                      ', 'Créditos', 3795, 'G');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1991, 'GEOMÁTICA                                      ', 'Créditos', 4820, 'G');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1992, 'DESIGN                                         ', 'Créditos', 313, 'D');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1993, 'ADMINISTRAÇÃO                                  ', 'Créditos', 5711, 'A');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1994, 'ENGENHARIA CIVIL                               ', 'Créditos', 6314, 'EC');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1995, 'CIÊNCIAS DA LINGUAGEM                          ', 'Créditos', 5521, 'CDL');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1996, 'MATERIAIS                                      ', 'Créditos', 605, 'M');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1997, 'Diagnóstico Genético Muscular                  ', 'Créditos', 9459, 'DGM');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1998, 'DIREITO                                        ', 'Créditos', 7043, 'D');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (1999, 'ECOLOGIA E EVOLUÇÃO                            ', 'Créditos', 6850, 'EEE');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (2000, 'CIÊNCIAS MEDICAS                               ', 'Créditos', 866, 'CM');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (2001, 'CIÊNCIAS MECÂNICAS                             ', 'Créditos', 1896, 'CM');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (2002, 'CIÊNCIAS DA COMPUTAÇÃO                         ', 'Créditos', 4447, 'CDC');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (2003, 'ENSINO DE CIÊNCIAS                             ', 'Créditos', 8529, 'EDC');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (2004, 'ADMINISTRAÇÃO E DESENVOLVIMENTO RURAL          ', 'Créditos', 6523, 'AEDR');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (2005, 'SOCIOLOGIA                                     ', 'Créditos', 7147, 'S');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (2006, 'DINÂMICA DO ESPAÇO HABITADO                    ', 'Créditos', 7798, 'DDEH');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (2007, 'MATEMÁTICA                                     ', 'Créditos', 5508, 'M');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (2008, 'ATENÇÃO À SAÚDE COLETIVA                       ', 'Créditos', 6250, 'ASC');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (2009, 'LETRAS                                         ', 'Créditos', 1032, 'L');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (2010, 'AGROECOSSISTEMAS                               ', 'Créditos', 9895, 'A');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (2011, 'RELACÕES INTERNACIONAIS                        ', 'Créditos', 8172, 'RI');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (2012, 'ARQUITETURA E URBANISMO                        ', 'Créditos', 7121, 'AEU');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (2013, 'ODONTOLOGIA                                    ', 'Créditos', 501, 'O');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (2014, 'NEUROLOGIA                                     ', 'Créditos', 3292, 'N');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (2015, 'ODONTOLOGIA                                    ', 'Créditos', 6358, 'O');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (2016, 'ENGENHARIA CIVIL                               ', 'Créditos', 8747, 'EC');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (2017, 'CIÊNCIAS NATURAIS                              ', 'Créditos', 509, 'CN');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (2018, 'BIOINFORMÁTICA                                 ', 'Créditos', 2164, 'B');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (2019, 'CIRURGIA                                       ', 'Créditos', 8508, 'C');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (2020, 'OFTALMOLOGIA                                   ', 'Créditos', 8447, 'O');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (2021, 'ENGENHARIA AMBIENTAL                           ', 'Créditos', 7467, 'EA');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (2022, 'CLÍNICA ODONTOLÓGICA                           ', 'Créditos', 8630, 'CO');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (2023, 'LETRAS                                         ', 'Créditos', 2540, 'L');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (2024, 'TURISMO E MEIO AMBIENTE                        ', 'Créditos', 9607, 'TEMA');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (2025, 'CIÊNCIAS DA SAÚDE                              ', 'Créditos', 2359, 'CDS');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (2026, 'ENGENHARIA DE SISTEMAS LOGÍSTICOS              ', 'Créditos', 1209, 'EDSL');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (2027, 'ADMINISTRAÇÃO DE ORGANIZAÇÕES                  ', 'Créditos', 6248, 'ADO');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (2028, 'ENSINO E HISTÓRIA DE CIÊNCIAS DA TERRA         ', 'Créditos', 7153, 'EEHD');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (2029, '''RELAÇÕES INTERNACIONAIS (UNESP/UNICAMP/PUC-SP)', 'Créditos', 4299, 'I');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (2030, 'INFORMÁTICA EM SAÚDE                           ', 'Créditos', 2345, 'IES');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (2031, 'MEDICINA (DERMATOLOGIA CLÍNICA E CIRÚRGICA)    ', 'Créditos', 96, 'MCEC');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (2032, 'ENSINO EM CIÊNCIAS DA SAÚDE                    ', 'Créditos', 8723, 'EECD');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (2033, 'REABILITAÇÃO                                   ', 'Créditos', 7545, 'R');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (2034, 'GESTÃO DE NEGÓCIOS                             ', 'Créditos', 4795, 'GDN');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (2035, 'COMUNICAÇÃO                                    ', 'Créditos', 5435, 'C');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (2036, 'PRODUÇÃO INTEGRADA EM AGROECOSSISTEMAS         ', 'Créditos', 8119, 'PIEA');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (2037, 'CIÊNCIAS DA SAÚDE                              ', 'Créditos', 1800, 'CDS');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (2038, 'EDUCAÇÃO, ADMINISTRAÇÃO E COMUNICAÇÃO          ', 'Créditos', 7903, 'EAEC');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (2039, 'FÍSICA E ASTRONOMIA                            ', 'Créditos', 3349, 'FEA');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (2040, 'EDUCAÇÃO                                       ', 'Créditos', 8034, 'E');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (2041, 'MEDICINA VETERINÁRIA                           ', 'Créditos', 2289, 'MV');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (2042, 'FILOSOFIA                                      ', 'Créditos', 1701, 'F');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (2043, 'EDUCAÇÃO FÍSICA                                ', 'Créditos', 9403, 'EF');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (2044, 'ODONTOLOGIA                                    ', 'Créditos', 6967, 'O');
INSERT INTO curso (curso_id, nome, regime, duracao, sigla) VALUES (2045, 'CIÊNCIAS                                       ', 'Créditos', 8640, 'C');


--
-- TOC entry 2325 (class 0 OID 0)
-- Dependencies: 187
-- Name: curso_curso_id_seq; Type: SEQUENCE SET; Schema: flash; Owner: postgres
--

SELECT pg_catalog.setval('curso_curso_id_seq', 2047, true);


--
-- TOC entry 2286 (class 0 OID 17791)
-- Dependencies: 188
-- Data for Name: dia_semana; Type: TABLE DATA; Schema: flash; Owner: postgres
--

INSERT INTO dia_semana (dia_semana_id, nome_dia) VALUES (1, 'Domingo');
INSERT INTO dia_semana (dia_semana_id, nome_dia) VALUES (2, 'Segunda-feira');
INSERT INTO dia_semana (dia_semana_id, nome_dia) VALUES (3, 'Terça-feira');
INSERT INTO dia_semana (dia_semana_id, nome_dia) VALUES (4, 'Quarta-feira');
INSERT INTO dia_semana (dia_semana_id, nome_dia) VALUES (5, 'Quinta-feira');
INSERT INTO dia_semana (dia_semana_id, nome_dia) VALUES (6, 'Sexta-feira');
INSERT INTO dia_semana (dia_semana_id, nome_dia) VALUES (7, 'Sábado');


--
-- TOC entry 2326 (class 0 OID 0)
-- Dependencies: 189
-- Name: dia_semana_dia_semana_id_seq; Type: SEQUENCE SET; Schema: flash; Owner: postgres
--

SELECT pg_catalog.setval('dia_semana_dia_semana_id_seq', 1, false);


--
-- TOC entry 2288 (class 0 OID 17799)
-- Dependencies: 190
-- Data for Name: disciplina; Type: TABLE DATA; Schema: flash; Owner: postgres
--

INSERT INTO disciplina (disciplina_id, nome, carga_horaria, periodo, curso_id, area_conhecimento_id) VALUES (1, 'Lógica', 60, 1, 1, 2);
INSERT INTO disciplina (disciplina_id, nome, carga_horaria, periodo, curso_id, area_conhecimento_id) VALUES (2, 'Cálculo 1', 90, 1, 1, 2);
INSERT INTO disciplina (disciplina_id, nome, carga_horaria, periodo, curso_id, area_conhecimento_id) VALUES (3, 'Programação 1', 90, 1, 1, 1313);
INSERT INTO disciplina (disciplina_id, nome, carga_horaria, periodo, curso_id, area_conhecimento_id) VALUES (4, 'Comunicação Empresarial', 30, 1, 1, 1071);
INSERT INTO disciplina (disciplina_id, nome, carga_horaria, periodo, curso_id, area_conhecimento_id) VALUES (5, 'Fundamentos de Sistemas de Informação', 60, 1, 1, 1312);
INSERT INTO disciplina (disciplina_id, nome, carga_horaria, periodo, curso_id, area_conhecimento_id) VALUES (6, 'Metodologia da Pesquisa', 30, 1, 1, 1071);
INSERT INTO disciplina (disciplina_id, nome, carga_horaria, periodo, curso_id, area_conhecimento_id) VALUES (7, 'Matemática Discreta', 60, 2, 1, 2);
INSERT INTO disciplina (disciplina_id, nome, carga_horaria, periodo, curso_id, area_conhecimento_id) VALUES (8, 'Cálculo 2', 90, 2, 1, 2);
INSERT INTO disciplina (disciplina_id, nome, carga_horaria, periodo, curso_id, area_conhecimento_id) VALUES (9, 'Programação 2', 90, 2, 1, 1313);
INSERT INTO disciplina (disciplina_id, nome, carga_horaria, periodo, curso_id, area_conhecimento_id) VALUES (10, 'Arquitetura e Organização de Computadores', 60, 2, 1, 1312);
INSERT INTO disciplina (disciplina_id, nome, carga_horaria, periodo, curso_id, area_conhecimento_id) VALUES (11, 'Teoria Geral da Administração', 60, 2, 1, 1315);
INSERT INTO disciplina (disciplina_id, nome, carga_horaria, periodo, curso_id, area_conhecimento_id) VALUES (12, 'Probabilidade e Estatística', 60, 3, 1, 2);
INSERT INTO disciplina (disciplina_id, nome, carga_horaria, periodo, curso_id, area_conhecimento_id) VALUES (13, 'Estrutura de Dados', 60, 3, 1, 1313);
INSERT INTO disciplina (disciplina_id, nome, carga_horaria, periodo, curso_id, area_conhecimento_id) VALUES (14, 'Teoria Geral de Sistemas', 60, 3, 1, 1312);
INSERT INTO disciplina (disciplina_id, nome, carga_horaria, periodo, curso_id, area_conhecimento_id) VALUES (15, 'Sistemas Operacionais', 60, 3, 1, 1314);
INSERT INTO disciplina (disciplina_id, nome, carga_horaria, periodo, curso_id, area_conhecimento_id) VALUES (16, 'Administração Financeira', 60, 3, 1, 1315);
INSERT INTO disciplina (disciplina_id, nome, carga_horaria, periodo, curso_id, area_conhecimento_id) VALUES (17, 'Banco de Dados 1', 60, 4, 1, 58);
INSERT INTO disciplina (disciplina_id, nome, carga_horaria, periodo, curso_id, area_conhecimento_id) VALUES (18, 'Programação Orientada a Objetos 1', 60, 4, 1, 1313);
INSERT INTO disciplina (disciplina_id, nome, carga_horaria, periodo, curso_id, area_conhecimento_id) VALUES (19, 'Análise de Sistemas', 60, 4, 1, 57);
INSERT INTO disciplina (disciplina_id, nome, carga_horaria, periodo, curso_id, area_conhecimento_id) VALUES (20, 'Sistemas de Apoio a Decisão', 30, 4, 1, 57);
INSERT INTO disciplina (disciplina_id, nome, carga_horaria, periodo, curso_id, area_conhecimento_id) VALUES (21, 'Redes de Computadores', 60, 4, 1, 1314);
INSERT INTO disciplina (disciplina_id, nome, carga_horaria, periodo, curso_id, area_conhecimento_id) VALUES (22, 'Sociologia', 30, 4, 1, 1071);
INSERT INTO disciplina (disciplina_id, nome, carga_horaria, periodo, curso_id, area_conhecimento_id) VALUES (23, 'Linguagens Formais e Autômatos', 60, 5, 1, 1312);
INSERT INTO disciplina (disciplina_id, nome, carga_horaria, periodo, curso_id, area_conhecimento_id) VALUES (24, 'Banco de Dados 2', 60, 5, 1, 58);
INSERT INTO disciplina (disciplina_id, nome, carga_horaria, periodo, curso_id, area_conhecimento_id) VALUES (25, 'Programação Orientada a Objetos 2', 60, 5, 1, 1313);
INSERT INTO disciplina (disciplina_id, nome, carga_horaria, periodo, curso_id, area_conhecimento_id) VALUES (26, 'Engenharia de Software', 60, 5, 1, 57);
INSERT INTO disciplina (disciplina_id, nome, carga_horaria, periodo, curso_id, area_conhecimento_id) VALUES (27, 'Projeto de Sistemas', 60, 5, 1, 57);
INSERT INTO disciplina (disciplina_id, nome, carga_horaria, periodo, curso_id, area_conhecimento_id) VALUES (28, 'Anteprojeto', 30, 6, 1, 1316);
INSERT INTO disciplina (disciplina_id, nome, carga_horaria, periodo, curso_id, area_conhecimento_id) VALUES (29, 'Empreendedorismo', 60, 6, 1, 1316);
INSERT INTO disciplina (disciplina_id, nome, carga_horaria, periodo, curso_id, area_conhecimento_id) VALUES (30, 'Técnicas de Programação Avançada', 60, 6, 1, 1313);
INSERT INTO disciplina (disciplina_id, nome, carga_horaria, periodo, curso_id, area_conhecimento_id) VALUES (31, 'Gerência de Projetos de Software', 60, 6, 1, 57);
INSERT INTO disciplina (disciplina_id, nome, carga_horaria, periodo, curso_id, area_conhecimento_id) VALUES (32, 'Sistemas Distribuidos', 60, 6, 1, 1314);
INSERT INTO disciplina (disciplina_id, nome, carga_horaria, periodo, curso_id, area_conhecimento_id) VALUES (33, 'Administração da Produção e Logística', 30, 6, 1, 1315);
INSERT INTO disciplina (disciplina_id, nome, carga_horaria, periodo, curso_id, area_conhecimento_id) VALUES (34, 'Projeto de Diplomação 1', 60, 7, 1, 1316);
INSERT INTO disciplina (disciplina_id, nome, carga_horaria, periodo, curso_id, area_conhecimento_id) VALUES (35, 'Laboratório de Engenharia de Software', 60, 7, 1, 57);
INSERT INTO disciplina (disciplina_id, nome, carga_horaria, periodo, curso_id, area_conhecimento_id) VALUES (36, 'Comércio Eletrônico', 60, 7, 1, 1314);
INSERT INTO disciplina (disciplina_id, nome, carga_horaria, periodo, curso_id, area_conhecimento_id) VALUES (37, 'Desenvolvimento Web', 60, 7, 1, 1314);
INSERT INTO disciplina (disciplina_id, nome, carga_horaria, periodo, curso_id, area_conhecimento_id) VALUES (38, 'Gestão de Sistemas de Informação', 60, 7, 1, 57);
INSERT INTO disciplina (disciplina_id, nome, carga_horaria, periodo, curso_id, area_conhecimento_id) VALUES (39, 'Projeto de Diplomação 2', 90, 8, 1, 1316);
INSERT INTO disciplina (disciplina_id, nome, carga_horaria, periodo, curso_id, area_conhecimento_id) VALUES (40, 'Ética e Legislação', 30, 8, 1, 1071);
INSERT INTO disciplina (disciplina_id, nome, carga_horaria, periodo, curso_id, area_conhecimento_id) VALUES (41, 'Informática e Sociedade', 30, 8, 1, 1071);


--
-- TOC entry 2327 (class 0 OID 0)
-- Dependencies: 191
-- Name: disciplina_disciplina_id_seq; Type: SEQUENCE SET; Schema: flash; Owner: postgres
--

SELECT pg_catalog.setval('disciplina_disciplina_id_seq', 1, false);


--
-- TOC entry 2290 (class 0 OID 17807)
-- Dependencies: 192
-- Data for Name: endereco; Type: TABLE DATA; Schema: flash; Owner: postgres
--

INSERT INTO endereco (endereco_id, municipio, bairro, endereco, numero, cep) VALUES (1, 'Georgia', 'Washington', '580 Fahey Inlet', 768, '94755');
INSERT INTO endereco (endereco_id, municipio, bairro, endereco, numero, cep) VALUES (2, 'Pennsylvania', 'San Francisco', '78021 Effie Meadows', 102, '41683');
INSERT INTO endereco (endereco_id, municipio, bairro, endereco, numero, cep) VALUES (3, 'Arkansas', 'Washington', '052 Bins Pine', 63, '19578');
INSERT INTO endereco (endereco_id, municipio, bairro, endereco, numero, cep) VALUES (4, 'Idaho', 'Miami', '881 Clint Square', 788, '08097');
INSERT INTO endereco (endereco_id, municipio, bairro, endereco, numero, cep) VALUES (5, 'Mississippi', 'Miami', '1088 Balistreri Ranch', 990, '36579');
INSERT INTO endereco (endereco_id, municipio, bairro, endereco, numero, cep) VALUES (6, 'Connecticut', 'San Francisco', '628 Hegmann Prairie', 783, '49950');
INSERT INTO endereco (endereco_id, municipio, bairro, endereco, numero, cep) VALUES (7, 'Kentucky', 'Miami', '893 Kreiger Ville', 863, '45250');
INSERT INTO endereco (endereco_id, municipio, bairro, endereco, numero, cep) VALUES (8, 'Colorado', 'Miami', '5832 Gerson Street', 8, '87912');
INSERT INTO endereco (endereco_id, municipio, bairro, endereco, numero, cep) VALUES (9, 'Hawaii', 'Washington', '162 Purdy Curve', 906, '66088');
INSERT INTO endereco (endereco_id, municipio, bairro, endereco, numero, cep) VALUES (10, 'Pennsylvania', 'Washington', '32653 Konopelski Views', 374, '16810');
INSERT INTO endereco (endereco_id, municipio, bairro, endereco, numero, cep) VALUES (11, 'Indiana', 'Washington', '7680 Harry Common', 83, '18764');
INSERT INTO endereco (endereco_id, municipio, bairro, endereco, numero, cep) VALUES (12, 'North Dakota', 'Washington', '098 Conor Centers', 950, '11102');
INSERT INTO endereco (endereco_id, municipio, bairro, endereco, numero, cep) VALUES (13, 'Oregon', 'Miami', '88095 Hauck Spring', 581, '64625');
INSERT INTO endereco (endereco_id, municipio, bairro, endereco, numero, cep) VALUES (14, 'Louisiana', 'Washington', '90190 Runte Landing', 323, '62594');
INSERT INTO endereco (endereco_id, municipio, bairro, endereco, numero, cep) VALUES (15, 'Washington', 'Miami', '716 Waters Fields', 116, '53422');
INSERT INTO endereco (endereco_id, municipio, bairro, endereco, numero, cep) VALUES (16, 'Wyoming', 'San Francisco', '3955 Frami Lake', 106, '37394');
INSERT INTO endereco (endereco_id, municipio, bairro, endereco, numero, cep) VALUES (17, 'New York', 'San Francisco', '961 Edgar Rest', 769, '02774');
INSERT INTO endereco (endereco_id, municipio, bairro, endereco, numero, cep) VALUES (18, 'Illinois', 'New York', '33633 Wellington Circle', 969, '16731');
INSERT INTO endereco (endereco_id, municipio, bairro, endereco, numero, cep) VALUES (19, 'New Mexico', 'Miami', '7676 Ruecker Keys', 448, '86443');
INSERT INTO endereco (endereco_id, municipio, bairro, endereco, numero, cep) VALUES (20, 'Alaska', 'New York', '916 Hoyt Roads', 347, '48846');
INSERT INTO endereco (endereco_id, municipio, bairro, endereco, numero, cep) VALUES (21, 'Vermont', 'Miami', '382 Schumm Neck', 171, '57299');
INSERT INTO endereco (endereco_id, municipio, bairro, endereco, numero, cep) VALUES (22, 'Delaware', 'New York', '50754 Bartell Burgs', 680, '81319');
INSERT INTO endereco (endereco_id, municipio, bairro, endereco, numero, cep) VALUES (23, 'Wyoming', 'Miami', '725 Adele Shoals', 965, '91880');
INSERT INTO endereco (endereco_id, municipio, bairro, endereco, numero, cep) VALUES (24, 'Pennsylvania', 'New York', '909 Bayer Way', 960, '87847');
INSERT INTO endereco (endereco_id, municipio, bairro, endereco, numero, cep) VALUES (25, 'Wisconsin', 'Washington', '187 Bryana Turnpike', 608, '46940');
INSERT INTO endereco (endereco_id, municipio, bairro, endereco, numero, cep) VALUES (26, 'Alabama', 'San Francisco', '9999 Stroman Club', 612, '79714');
INSERT INTO endereco (endereco_id, municipio, bairro, endereco, numero, cep) VALUES (27, 'Vermont', 'Miami', '61344 Cleo Spring', 495, '21580');
INSERT INTO endereco (endereco_id, municipio, bairro, endereco, numero, cep) VALUES (28, 'Missouri', 'Miami', '250 Wintheiser Vista', 916, '55871');
INSERT INTO endereco (endereco_id, municipio, bairro, endereco, numero, cep) VALUES (29, 'Oklahoma', 'New York', '64362 Hertha Circle', 575, '35425');
INSERT INTO endereco (endereco_id, municipio, bairro, endereco, numero, cep) VALUES (30, 'Georgia', 'San Francisco', '300 Allen Extensions', 462, '93305');
INSERT INTO endereco (endereco_id, municipio, bairro, endereco, numero, cep) VALUES (31, 'Texas', 'New York', '57017 Brock Pines', 463, '35430');
INSERT INTO endereco (endereco_id, municipio, bairro, endereco, numero, cep) VALUES (32, 'Wyoming', 'Miami', '60940 Katlyn Stream', 443, '14121');
INSERT INTO endereco (endereco_id, municipio, bairro, endereco, numero, cep) VALUES (33, 'Hawaii', 'Miami', '3304 Schmidt Squares', 271, '75283');
INSERT INTO endereco (endereco_id, municipio, bairro, endereco, numero, cep) VALUES (34, 'Montana', 'New York', '81976 Aliya Valley', 985, '31578');
INSERT INTO endereco (endereco_id, municipio, bairro, endereco, numero, cep) VALUES (35, 'Missouri', 'San Francisco', '6202 River Divide', 83, '02667');
INSERT INTO endereco (endereco_id, municipio, bairro, endereco, numero, cep) VALUES (36, 'North Dakota', 'San Francisco', '055 Mandy Fields', 412, '21792');
INSERT INTO endereco (endereco_id, municipio, bairro, endereco, numero, cep) VALUES (37, 'Hawaii', 'Miami', '98022 Garrick Island', 128, '58277');
INSERT INTO endereco (endereco_id, municipio, bairro, endereco, numero, cep) VALUES (38, 'Missouri', 'Miami', '217 Sandra Ways', 64, '70299');
INSERT INTO endereco (endereco_id, municipio, bairro, endereco, numero, cep) VALUES (39, 'Tennessee', 'San Francisco', '25859 Titus Parkway', 683, '18278');
INSERT INTO endereco (endereco_id, municipio, bairro, endereco, numero, cep) VALUES (40, 'Missouri', 'Washington', '6341 Danny Estates', 469, '27278');
INSERT INTO endereco (endereco_id, municipio, bairro, endereco, numero, cep) VALUES (41, 'Arizona', 'San Francisco', '201 Hamill Land', 783, '75081');
INSERT INTO endereco (endereco_id, municipio, bairro, endereco, numero, cep) VALUES (42, 'Wyoming', 'Miami', '0719 Scottie Plain', 73, '79248');
INSERT INTO endereco (endereco_id, municipio, bairro, endereco, numero, cep) VALUES (43, 'Missouri', 'San Francisco', '19106 Kozey Squares', 611, '07206');
INSERT INTO endereco (endereco_id, municipio, bairro, endereco, numero, cep) VALUES (44, 'Indiana', 'San Francisco', '05305 Purdy Locks', 520, '34608');
INSERT INTO endereco (endereco_id, municipio, bairro, endereco, numero, cep) VALUES (45, 'Colorado', 'Miami', '787 Linda Squares', 238, '72210');
INSERT INTO endereco (endereco_id, municipio, bairro, endereco, numero, cep) VALUES (46, 'Mississippi', 'Miami', '187 Shaylee Flats', 476, '56718');
INSERT INTO endereco (endereco_id, municipio, bairro, endereco, numero, cep) VALUES (47, 'Oregon', 'Miami', '9349 Hammes Light', 315, '40188');
INSERT INTO endereco (endereco_id, municipio, bairro, endereco, numero, cep) VALUES (48, 'Colorado', 'Miami', '7498 Marley Stream', 562, '94819');
INSERT INTO endereco (endereco_id, municipio, bairro, endereco, numero, cep) VALUES (49, 'New Mexico', 'New York', '9791 Renner Roads', 892, '30565');
INSERT INTO endereco (endereco_id, municipio, bairro, endereco, numero, cep) VALUES (50, 'New Mexico', 'Miami', '0805 Ryan Highway', 60, '44624');
INSERT INTO endereco (endereco_id, municipio, bairro, endereco, numero, cep) VALUES (51, 'Montana', 'Miami', '0621 Garett Mountains', 550, '75895');
INSERT INTO endereco (endereco_id, municipio, bairro, endereco, numero, cep) VALUES (52, 'New Mexico', 'Miami', '33536 Dagmar Brook', 809, '49448');
INSERT INTO endereco (endereco_id, municipio, bairro, endereco, numero, cep) VALUES (53, 'South Carolina', 'Washington', '1835 Sim Shore', 416, '01896');
INSERT INTO endereco (endereco_id, municipio, bairro, endereco, numero, cep) VALUES (54, 'Ohio', 'San Francisco', '5714 McClure Gardens', 374, '36500');
INSERT INTO endereco (endereco_id, municipio, bairro, endereco, numero, cep) VALUES (55, 'Nebraska', 'Miami', '23398 Jaleel Burg', 626, '95309');
INSERT INTO endereco (endereco_id, municipio, bairro, endereco, numero, cep) VALUES (56, 'Wyoming', 'Miami', '8762 Streich Islands', 9, '02353');
INSERT INTO endereco (endereco_id, municipio, bairro, endereco, numero, cep) VALUES (57, 'Texas', 'Washington', '442 Cletus Wells', 908, '89875');
INSERT INTO endereco (endereco_id, municipio, bairro, endereco, numero, cep) VALUES (58, 'North Carolina', 'New York', '877 Jacklyn Route', 984, '04844');
INSERT INTO endereco (endereco_id, municipio, bairro, endereco, numero, cep) VALUES (59, 'Arkansas', 'Washington', '731 Shields Path', 288, '19217');
INSERT INTO endereco (endereco_id, municipio, bairro, endereco, numero, cep) VALUES (60, 'Colorado', 'Washington', '0458 Becker Lake', 125, '84608');
INSERT INTO endereco (endereco_id, municipio, bairro, endereco, numero, cep) VALUES (61, 'Oregon', 'Miami', '49048 Ashlee Lake', 171, '39810');
INSERT INTO endereco (endereco_id, municipio, bairro, endereco, numero, cep) VALUES (62, 'Oklahoma', 'San Francisco', '549 Blick Radial', 357, '64321');
INSERT INTO endereco (endereco_id, municipio, bairro, endereco, numero, cep) VALUES (63, 'Maine', 'New York', '476 Keira Landing', 403, '06799');
INSERT INTO endereco (endereco_id, municipio, bairro, endereco, numero, cep) VALUES (64, 'Vermont', 'San Francisco', '1488 Wilfredo Viaduct', 309, '38396');
INSERT INTO endereco (endereco_id, municipio, bairro, endereco, numero, cep) VALUES (65, 'Nevada', 'Washington', '1895 Schmitt Lake', 188, '24019');
INSERT INTO endereco (endereco_id, municipio, bairro, endereco, numero, cep) VALUES (66, 'Florida', 'Miami', '8058 Lue Harbors', 699, '41064');
INSERT INTO endereco (endereco_id, municipio, bairro, endereco, numero, cep) VALUES (67, 'Arkansas', 'San Francisco', '23337 Jayson Parkways', 568, '42998');
INSERT INTO endereco (endereco_id, municipio, bairro, endereco, numero, cep) VALUES (68, 'Pennsylvania', 'New York', '07062 Medhurst Corners', 133, '68459');
INSERT INTO endereco (endereco_id, municipio, bairro, endereco, numero, cep) VALUES (69, 'Wyoming', 'San Francisco', '06152 Olson Trace', 861, '30043');
INSERT INTO endereco (endereco_id, municipio, bairro, endereco, numero, cep) VALUES (70, 'Vermont', 'New York', '3687 Norbert Spring', 423, '00492');
INSERT INTO endereco (endereco_id, municipio, bairro, endereco, numero, cep) VALUES (71, 'Maryland', 'New York', '92062 Cameron Tunnel', 346, '15934');
INSERT INTO endereco (endereco_id, municipio, bairro, endereco, numero, cep) VALUES (72, 'Rhode Island', 'San Francisco', '7141 Ziemann Lakes', 407, '02042');
INSERT INTO endereco (endereco_id, municipio, bairro, endereco, numero, cep) VALUES (73, 'North Dakota', 'Washington', '9888 Ryan Manor', 782, '06351');
INSERT INTO endereco (endereco_id, municipio, bairro, endereco, numero, cep) VALUES (74, 'South Dakota', 'Miami', '58164 Ratke Orchard', 984, '31499');
INSERT INTO endereco (endereco_id, municipio, bairro, endereco, numero, cep) VALUES (75, 'Arkansas', 'Miami', '8199 Gutmann Summit', 870, '27565');
INSERT INTO endereco (endereco_id, municipio, bairro, endereco, numero, cep) VALUES (76, 'Oklahoma', 'Washington', '9027 Jaleel Tunnel', 16, '52546');
INSERT INTO endereco (endereco_id, municipio, bairro, endereco, numero, cep) VALUES (77, 'California', 'San Francisco', '6532 Roselyn Walks', 897, '67058');
INSERT INTO endereco (endereco_id, municipio, bairro, endereco, numero, cep) VALUES (78, 'Alabama', 'Miami', '449 Rutherford Fort', 748, '47635');
INSERT INTO endereco (endereco_id, municipio, bairro, endereco, numero, cep) VALUES (79, 'Alabama', 'Washington', '09656 Barton Squares', 875, '27031');
INSERT INTO endereco (endereco_id, municipio, bairro, endereco, numero, cep) VALUES (80, 'Kansas', 'Miami', '402 Crona Roads', 939, '42562');
INSERT INTO endereco (endereco_id, municipio, bairro, endereco, numero, cep) VALUES (81, 'Alaska', 'New York', '5176 Whitney Key', 82, '59190');
INSERT INTO endereco (endereco_id, municipio, bairro, endereco, numero, cep) VALUES (82, 'Montana', 'Miami', '9943 Marta Ranch', 605, '87748');
INSERT INTO endereco (endereco_id, municipio, bairro, endereco, numero, cep) VALUES (83, 'Georgia', 'San Francisco', '585 Berge Divide', 345, '35439');
INSERT INTO endereco (endereco_id, municipio, bairro, endereco, numero, cep) VALUES (84, 'Washington', 'San Francisco', '80224 Ziemann Lodge', 543, '18599');
INSERT INTO endereco (endereco_id, municipio, bairro, endereco, numero, cep) VALUES (85, 'Massachusetts', 'Miami', '762 Andre Wall', 38, '30463');
INSERT INTO endereco (endereco_id, municipio, bairro, endereco, numero, cep) VALUES (86, 'Nebraska', 'Miami', '009 Halvorson Islands', 183, '51018');
INSERT INTO endereco (endereco_id, municipio, bairro, endereco, numero, cep) VALUES (87, 'Pennsylvania', 'San Francisco', '20338 Waelchi Prairie', 562, '42023');
INSERT INTO endereco (endereco_id, municipio, bairro, endereco, numero, cep) VALUES (88, 'Indiana', 'New York', '691 Abshire Common', 323, '14955');
INSERT INTO endereco (endereco_id, municipio, bairro, endereco, numero, cep) VALUES (89, 'Connecticut', 'Washington', '1505 Oma Fall', 874, '33436');
INSERT INTO endereco (endereco_id, municipio, bairro, endereco, numero, cep) VALUES (90, 'Hawaii', 'New York', '35564 Juston Turnpike', 609, '85522');
INSERT INTO endereco (endereco_id, municipio, bairro, endereco, numero, cep) VALUES (91, 'California', 'New York', '25412 Anderson Lodge', 425, '45824');
INSERT INTO endereco (endereco_id, municipio, bairro, endereco, numero, cep) VALUES (92, 'Massachusetts', 'San Francisco', '919 Walter Villages', 58, '00445');
INSERT INTO endereco (endereco_id, municipio, bairro, endereco, numero, cep) VALUES (93, 'Arkansas', 'New York', '215 Dibbert Fields', 120, '16542');
INSERT INTO endereco (endereco_id, municipio, bairro, endereco, numero, cep) VALUES (94, 'Alabama', 'San Francisco', '058 Coty Spurs', 265, '29524');
INSERT INTO endereco (endereco_id, municipio, bairro, endereco, numero, cep) VALUES (95, 'Massachusetts', 'Washington', '7458 Mayert Springs', 914, '30177');
INSERT INTO endereco (endereco_id, municipio, bairro, endereco, numero, cep) VALUES (96, 'Wyoming', 'San Francisco', '3442 Santiago Ferry', 202, '68267');
INSERT INTO endereco (endereco_id, municipio, bairro, endereco, numero, cep) VALUES (97, 'California', 'Miami', '058 Aileen Well', 866, '81395');
INSERT INTO endereco (endereco_id, municipio, bairro, endereco, numero, cep) VALUES (98, 'Rhode Island', 'San Francisco', '15897 Harris Center', 700, '97114');
INSERT INTO endereco (endereco_id, municipio, bairro, endereco, numero, cep) VALUES (99, 'Hawaii', 'San Francisco', '0564 Manley Orchard', 945, '71470');
INSERT INTO endereco (endereco_id, municipio, bairro, endereco, numero, cep) VALUES (100, 'Georgia', 'Miami', '65333 Bechtelar Via', 797, '07986');


--
-- TOC entry 2328 (class 0 OID 0)
-- Dependencies: 193
-- Name: endereco_endereco_id_seq; Type: SEQUENCE SET; Schema: flash; Owner: postgres
--

SELECT pg_catalog.setval('endereco_endereco_id_seq', 1, false);


--
-- TOC entry 2292 (class 0 OID 17815)
-- Dependencies: 194
-- Data for Name: espaco; Type: TABLE DATA; Schema: flash; Owner: postgres
--

INSERT INTO espaco (espaco_id, bloco, numero, tipo_id) VALUES (1, '1', 101, 1);
INSERT INTO espaco (espaco_id, bloco, numero, tipo_id) VALUES (2, '1', 102, 2);
INSERT INTO espaco (espaco_id, bloco, numero, tipo_id) VALUES (3, '1', 103, 1);
INSERT INTO espaco (espaco_id, bloco, numero, tipo_id) VALUES (4, '1', 104, 1);
INSERT INTO espaco (espaco_id, bloco, numero, tipo_id) VALUES (5, '1', 105, 1);
INSERT INTO espaco (espaco_id, bloco, numero, tipo_id) VALUES (6, '1', 106, 1);
INSERT INTO espaco (espaco_id, bloco, numero, tipo_id) VALUES (7, '1', 107, 1);
INSERT INTO espaco (espaco_id, bloco, numero, tipo_id) VALUES (8, '1', 108, 2);
INSERT INTO espaco (espaco_id, bloco, numero, tipo_id) VALUES (9, '1', 109, 1);
INSERT INTO espaco (espaco_id, bloco, numero, tipo_id) VALUES (10, '2', 201, 1);
INSERT INTO espaco (espaco_id, bloco, numero, tipo_id) VALUES (11, '2', 202, 1);
INSERT INTO espaco (espaco_id, bloco, numero, tipo_id) VALUES (12, '2', 203, 1);
INSERT INTO espaco (espaco_id, bloco, numero, tipo_id) VALUES (13, '2', 204, 1);
INSERT INTO espaco (espaco_id, bloco, numero, tipo_id) VALUES (14, '2', 205, 1);
INSERT INTO espaco (espaco_id, bloco, numero, tipo_id) VALUES (15, '2', 206, 1);
INSERT INTO espaco (espaco_id, bloco, numero, tipo_id) VALUES (16, '2', 207, 1);
INSERT INTO espaco (espaco_id, bloco, numero, tipo_id) VALUES (17, '2', 208, 1);
INSERT INTO espaco (espaco_id, bloco, numero, tipo_id) VALUES (18, '2', 209, 1);
INSERT INTO espaco (espaco_id, bloco, numero, tipo_id) VALUES (19, '3', 301, 1);
INSERT INTO espaco (espaco_id, bloco, numero, tipo_id) VALUES (20, '3', 302, 1);
INSERT INTO espaco (espaco_id, bloco, numero, tipo_id) VALUES (21, '3', 303, 1);
INSERT INTO espaco (espaco_id, bloco, numero, tipo_id) VALUES (22, '3', 304, 1);
INSERT INTO espaco (espaco_id, bloco, numero, tipo_id) VALUES (23, '3', 305, 1);
INSERT INTO espaco (espaco_id, bloco, numero, tipo_id) VALUES (24, '3', 306, 2);
INSERT INTO espaco (espaco_id, bloco, numero, tipo_id) VALUES (25, '3', 307, 1);
INSERT INTO espaco (espaco_id, bloco, numero, tipo_id) VALUES (26, '3', 308, 1);
INSERT INTO espaco (espaco_id, bloco, numero, tipo_id) VALUES (27, '3', 309, 2);
INSERT INTO espaco (espaco_id, bloco, numero, tipo_id) VALUES (28, '4', 401, 1);
INSERT INTO espaco (espaco_id, bloco, numero, tipo_id) VALUES (29, '4', 402, 2);
INSERT INTO espaco (espaco_id, bloco, numero, tipo_id) VALUES (30, '4', 403, 1);
INSERT INTO espaco (espaco_id, bloco, numero, tipo_id) VALUES (31, '4', 404, 2);
INSERT INTO espaco (espaco_id, bloco, numero, tipo_id) VALUES (32, '4', 405, 1);
INSERT INTO espaco (espaco_id, bloco, numero, tipo_id) VALUES (33, '4', 406, 1);
INSERT INTO espaco (espaco_id, bloco, numero, tipo_id) VALUES (34, '4', 407, 1);
INSERT INTO espaco (espaco_id, bloco, numero, tipo_id) VALUES (35, '4', 408, 2);
INSERT INTO espaco (espaco_id, bloco, numero, tipo_id) VALUES (36, '4', 409, 1);
INSERT INTO espaco (espaco_id, bloco, numero, tipo_id) VALUES (37, '7', 701, 1);
INSERT INTO espaco (espaco_id, bloco, numero, tipo_id) VALUES (38, '7', 702, 2);
INSERT INTO espaco (espaco_id, bloco, numero, tipo_id) VALUES (39, '7', 703, 2);
INSERT INTO espaco (espaco_id, bloco, numero, tipo_id) VALUES (40, '7', 704, 2);
INSERT INTO espaco (espaco_id, bloco, numero, tipo_id) VALUES (41, '7', 705, 1);
INSERT INTO espaco (espaco_id, bloco, numero, tipo_id) VALUES (42, '7', 706, 1);
INSERT INTO espaco (espaco_id, bloco, numero, tipo_id) VALUES (43, '7', 707, 1);
INSERT INTO espaco (espaco_id, bloco, numero, tipo_id) VALUES (44, '7', 708, 1);
INSERT INTO espaco (espaco_id, bloco, numero, tipo_id) VALUES (45, '7', 709, 1);


--
-- TOC entry 2329 (class 0 OID 0)
-- Dependencies: 195
-- Name: espaco_espaco_id_seq; Type: SEQUENCE SET; Schema: flash; Owner: postgres
--

SELECT pg_catalog.setval('espaco_espaco_id_seq', 1, false);


--
-- TOC entry 2294 (class 0 OID 17823)
-- Dependencies: 196
-- Data for Name: horario; Type: TABLE DATA; Schema: flash; Owner: postgres
--

INSERT INTO horario (horario_id, hora_inicio, minuto_inicio, hora_fim, minuto_fim) VALUES (1, 7, 30, 9, 20);
INSERT INTO horario (horario_id, hora_inicio, minuto_inicio, hora_fim, minuto_fim) VALUES (23, 9, 40, 11, 30);
INSERT INTO horario (horario_id, hora_inicio, minuto_inicio, hora_fim, minuto_fim) VALUES (28, 11, 30, 13, 20);


--
-- TOC entry 2330 (class 0 OID 0)
-- Dependencies: 197
-- Name: horario_horario_id_seq; Type: SEQUENCE SET; Schema: flash; Owner: postgres
--

SELECT pg_catalog.setval('horario_horario_id_seq', 29, true);


--
-- TOC entry 2296 (class 0 OID 17832)
-- Dependencies: 198
-- Data for Name: professor; Type: TABLE DATA; Schema: flash; Owner: postgres
--

INSERT INTO professor (professor_id, nome, email, data_nascimento, rg, cpf, matricula, endereco_id) VALUES (1, 'Sofia Barker', 'luke.ratliff@yahoo.com', '2002-01-25', '141-33-9280', '82310832782', '549719', 1);
INSERT INTO professor (professor_id, nome, email, data_nascimento, rg, cpf, matricula, endereco_id) VALUES (2, 'Jackson Summers', 'wolf@gmail.com', '1942-08-12', '507-72-6251', '42677376652', '990716', 2);
INSERT INTO professor (professor_id, nome, email, data_nascimento, rg, cpf, matricula, endereco_id) VALUES (3, 'Lucas Santos', 'solomon@yahoo.com', '1942-02-02', '747-22-8418', '80601235568', '686938', 3);
INSERT INTO professor (professor_id, nome, email, data_nascimento, rg, cpf, matricula, endereco_id) VALUES (4, 'Brooklyn Church', 'luke.trujillo@mail.com', '1953-06-07', '118-73-3864', '62548709590', '069547', 4);
INSERT INTO professor (professor_id, nome, email, data_nascimento, rg, cpf, matricula, endereco_id) VALUES (5, 'Reagan Griffith', 'blake@gmail.com', '2005-01-04', '178-77-3235', '80608598623', '769545', 5);
INSERT INTO professor (professor_id, nome, email, data_nascimento, rg, cpf, matricula, endereco_id) VALUES (6, 'Josiah Gibbs', 'talley@mail.com', '1995-09-26', '347-99-6908', '68113651535', '810264', 6);
INSERT INTO professor (professor_id, nome, email, data_nascimento, rg, cpf, matricula, endereco_id) VALUES (7, 'Alex Cotton', 'wilder@yahoo.com', '1955-09-25', '602-13-4429', '03490504305', '210224', 7);
INSERT INTO professor (professor_id, nome, email, data_nascimento, rg, cpf, matricula, endereco_id) VALUES (8, 'Gabriella Douglas', 'justice@yahoo.com', '1974-05-29', '179-64-2889', '13530876461', '923256', 8);
INSERT INTO professor (professor_id, nome, email, data_nascimento, rg, cpf, matricula, endereco_id) VALUES (9, 'Violet Pitts', 'lucas@yahoo.com', '1999-05-07', '073-52-6234', '08028313035', '054648', 9);
INSERT INTO professor (professor_id, nome, email, data_nascimento, rg, cpf, matricula, endereco_id) VALUES (10, 'Owen Dale', 'samuelbullock@yahoo.com', '1972-05-29', '115-40-4230', '88024724243', '032601', 10);
INSERT INTO professor (professor_id, nome, email, data_nascimento, rg, cpf, matricula, endereco_id) VALUES (11, 'Austin Moss', 'olson@mail.com', '1937-05-15', '562-11-7791', '49838500666', '014885', 11);
INSERT INTO professor (professor_id, nome, email, data_nascimento, rg, cpf, matricula, endereco_id) VALUES (12, 'Charles Tucker', 'hanson@yahoo.com', '1970-12-24', '867-51-0153', '71586514954', '893125', 12);
INSERT INTO professor (professor_id, nome, email, data_nascimento, rg, cpf, matricula, endereco_id) VALUES (13, 'Kylie Dickerson', 'porter@gmail.com', '1963-07-13', '710-22-0347', '70611707276', '689915', 13);
INSERT INTO professor (professor_id, nome, email, data_nascimento, rg, cpf, matricula, endereco_id) VALUES (14, 'Ariana Santiago', 'wood@gmail.com', '1978-05-08', '152-69-0650', '21177944910', '933127', 14);
INSERT INTO professor (professor_id, nome, email, data_nascimento, rg, cpf, matricula, endereco_id) VALUES (15, 'Thomas Avila', 'alexa.kirby@gmail.com', '1986-12-20', '371-77-6925', '62658853084', '325107', 15);
INSERT INTO professor (professor_id, nome, email, data_nascimento, rg, cpf, matricula, endereco_id) VALUES (16, 'Henry Herring', 'abbott@mail.com', '1964-09-11', '841-67-5290', '73687104710', '032953', 16);
INSERT INTO professor (professor_id, nome, email, data_nascimento, rg, cpf, matricula, endereco_id) VALUES (17, 'Levi Horn', 'isaac.chapman@mail.com', '2011-05-03', '123-97-4674', '07449737833', '193457', 17);
INSERT INTO professor (professor_id, nome, email, data_nascimento, rg, cpf, matricula, endereco_id) VALUES (18, 'Samuel Rivera', 'mia.walter@gmail.com', '1993-04-08', '174-17-9199', '21562964801', '583179', 18);
INSERT INTO professor (professor_id, nome, email, data_nascimento, rg, cpf, matricula, endereco_id) VALUES (19, 'Gavin Hyde', 'briannalawrence@yahoo.com', '1944-02-09', '631-28-8498', '38347003394', '970718', 19);
INSERT INTO professor (professor_id, nome, email, data_nascimento, rg, cpf, matricula, endereco_id) VALUES (20, 'Savannah Vargas', 'james.mack@yahoo.com', '1932-12-09', '389-61-0809', '32176523717', '578596', 20);
INSERT INTO professor (professor_id, nome, email, data_nascimento, rg, cpf, matricula, endereco_id) VALUES (21, 'Alexa Lane', 'elijahsolis@yahoo.com', '1928-09-05', '447-35-9815', '49186459767', '748187', 21);
INSERT INTO professor (professor_id, nome, email, data_nascimento, rg, cpf, matricula, endereco_id) VALUES (22, 'Aiden Lyons', 'oliver.kramer@mail.com', '1983-02-03', '001-92-1188', '43643929951', '937475', 22);
INSERT INTO professor (professor_id, nome, email, data_nascimento, rg, cpf, matricula, endereco_id) VALUES (23, 'Mia Mcfadden', 'coffey@gmail.com', '1970-08-22', '673-04-4444', '55063932452', '715642', 23);
INSERT INTO professor (professor_id, nome, email, data_nascimento, rg, cpf, matricula, endereco_id) VALUES (24, 'Colton Rodriquez', 'webster@gmail.com', '1944-06-20', '736-83-9570', '97117803720', '800117', 24);
INSERT INTO professor (professor_id, nome, email, data_nascimento, rg, cpf, matricula, endereco_id) VALUES (25, 'Wyatt Pitts', 'dotson@mail.com', '1927-10-11', '751-39-7100', '52706310405', '812061', 25);
INSERT INTO professor (professor_id, nome, email, data_nascimento, rg, cpf, matricula, endereco_id) VALUES (26, 'Bailey Clarke', 'roy@gmail.com', '1916-01-13', '866-05-6564', '67447667242', '601943', 26);
INSERT INTO professor (professor_id, nome, email, data_nascimento, rg, cpf, matricula, endereco_id) VALUES (27, 'Molly Clay', 'cantu@gmail.com', '1944-06-18', '863-64-5383', '31847374204', '730258', 27);
INSERT INTO professor (professor_id, nome, email, data_nascimento, rg, cpf, matricula, endereco_id) VALUES (28, 'Allison Anderson', 'kirby@gmail.com', '1936-04-13', '838-90-6529', '55040444214', '428520', 28);
INSERT INTO professor (professor_id, nome, email, data_nascimento, rg, cpf, matricula, endereco_id) VALUES (29, 'Emma Perez', 'castillo@yahoo.com', '1971-03-16', '585-81-7553', '22823024867', '968352', 29);
INSERT INTO professor (professor_id, nome, email, data_nascimento, rg, cpf, matricula, endereco_id) VALUES (30, 'Aubree Flynn', 'clarke@yahoo.com', '2002-11-08', '710-73-5109', '89814307483', '299040', 30);
INSERT INTO professor (professor_id, nome, email, data_nascimento, rg, cpf, matricula, endereco_id) VALUES (31, 'Angel Mueller', 'merritt@gmail.com', '1963-11-12', '158-48-1161', '33193076066', '332249', 31);
INSERT INTO professor (professor_id, nome, email, data_nascimento, rg, cpf, matricula, endereco_id) VALUES (32, 'Zoe Marquez', 'schmidt@gmail.com', '1963-05-22', '104-58-7059', '09317871577', '898055', 32);
INSERT INTO professor (professor_id, nome, email, data_nascimento, rg, cpf, matricula, endereco_id) VALUES (33, 'Madelyn Bartlett', 'valencia@gmail.com', '2005-04-09', '488-31-5277', '18388542907', '271853', 33);
INSERT INTO professor (professor_id, nome, email, data_nascimento, rg, cpf, matricula, endereco_id) VALUES (34, 'Madeline Carroll', 'salas@gmail.com', '1986-02-22', '448-01-2933', '41562663895', '835291', 34);
INSERT INTO professor (professor_id, nome, email, data_nascimento, rg, cpf, matricula, endereco_id) VALUES (35, 'Julian Williamson', 'dorsey@yahoo.com', '1997-11-09', '574-91-0733', '64829049120', '592873', 35);
INSERT INTO professor (professor_id, nome, email, data_nascimento, rg, cpf, matricula, endereco_id) VALUES (36, 'Alexa Peterson', 'brooklyncole@mail.com', '2009-05-30', '840-28-2484', '67452979907', '348158', 36);
INSERT INTO professor (professor_id, nome, email, data_nascimento, rg, cpf, matricula, endereco_id) VALUES (37, 'Violet Langley', 'ella.stephenson@gmail.com', '1947-06-15', '687-49-5588', '34990508467', '929153', 37);
INSERT INTO professor (professor_id, nome, email, data_nascimento, rg, cpf, matricula, endereco_id) VALUES (38, 'Arianna Deleon', 'petty@gmail.com', '1982-03-26', '207-33-0337', '10876341644', '962999', 38);
INSERT INTO professor (professor_id, nome, email, data_nascimento, rg, cpf, matricula, endereco_id) VALUES (39, 'Morgan Ewing', 'abigail.delgado@yahoo.com', '2005-08-15', '231-28-7335', '93337190839', '376080', 39);
INSERT INTO professor (professor_id, nome, email, data_nascimento, rg, cpf, matricula, endereco_id) VALUES (40, 'Cameron Boone', 'chen@gmail.com', '1948-05-29', '620-27-5615', '60280680473', '246610', 40);
INSERT INTO professor (professor_id, nome, email, data_nascimento, rg, cpf, matricula, endereco_id) VALUES (41, 'Austin Richmond', 'ariafrank@gmail.com', '2005-08-04', '790-01-3278', '77434414235', '312625', 41);
INSERT INTO professor (professor_id, nome, email, data_nascimento, rg, cpf, matricula, endereco_id) VALUES (42, 'Kevin Wyatt', 'owengay@yahoo.com', '1985-05-22', '108-73-5550', '24705705491', '909501', 42);
INSERT INTO professor (professor_id, nome, email, data_nascimento, rg, cpf, matricula, endereco_id) VALUES (43, 'Nathaniel Mccarthy', 'miamcguire@gmail.com', '1929-04-11', '459-38-9952', '74672949214', '663831', 43);
INSERT INTO professor (professor_id, nome, email, data_nascimento, rg, cpf, matricula, endereco_id) VALUES (44, 'Jason Price', 'nolan@yahoo.com', '1968-09-04', '082-96-2829', '48721876444', '263472', 44);
INSERT INTO professor (professor_id, nome, email, data_nascimento, rg, cpf, matricula, endereco_id) VALUES (45, 'Hunter Gonzalez', 'oliverchristensen@mail.com', '1925-06-24', '512-77-9018', '99996690342', '128587', 45);
INSERT INTO professor (professor_id, nome, email, data_nascimento, rg, cpf, matricula, endereco_id) VALUES (46, 'Melanie Britt', 'henry.trujillo@yahoo.com', '1941-12-13', '176-01-2495', '45544889007', '792698', 46);
INSERT INTO professor (professor_id, nome, email, data_nascimento, rg, cpf, matricula, endereco_id) VALUES (47, 'Justin Berger', 'chloesimmons@mail.com', '1937-03-27', '788-42-3990', '06271529615', '955575', 47);
INSERT INTO professor (professor_id, nome, email, data_nascimento, rg, cpf, matricula, endereco_id) VALUES (48, 'Gavin Bowman', 'frederick@gmail.com', '2009-03-12', '820-95-4651', '66223343906', '866916', 48);
INSERT INTO professor (professor_id, nome, email, data_nascimento, rg, cpf, matricula, endereco_id) VALUES (49, 'Wyatt Aguirre', 'calderon@gmail.com', '2012-03-24', '068-20-5315', '35016847975', '480572', 49);
INSERT INTO professor (professor_id, nome, email, data_nascimento, rg, cpf, matricula, endereco_id) VALUES (50, 'Madison Aguilar', 'brodybentley@mail.com', '1947-07-15', '183-81-6199', '70552044539', '374410', 50);
INSERT INTO professor (professor_id, nome, email, data_nascimento, rg, cpf, matricula, endereco_id) VALUES (51, 'Nicholas Glenn', 'oliver@gmail.com', '1996-08-20', '677-18-2754', '00124757421', '884829', 51);
INSERT INTO professor (professor_id, nome, email, data_nascimento, rg, cpf, matricula, endereco_id) VALUES (52, 'Jackson Austin', 'sophia.blankenship@yahoo.com', '1964-03-29', '641-56-7403', '68329047709', '208984', 52);
INSERT INTO professor (professor_id, nome, email, data_nascimento, rg, cpf, matricula, endereco_id) VALUES (53, 'Gabriel Williams', 'addison.gates@gmail.com', '1995-09-24', '604-17-9881', '81957799560', '085254', 53);
INSERT INTO professor (professor_id, nome, email, data_nascimento, rg, cpf, matricula, endereco_id) VALUES (54, 'Xavier Mccoy', 'montgomery@mail.com', '1943-08-08', '803-76-9159', '50099297914', '779201', 54);
INSERT INTO professor (professor_id, nome, email, data_nascimento, rg, cpf, matricula, endereco_id) VALUES (55, 'Robert Houston', 'austin.lott@mail.com', '1979-08-17', '861-65-1672', '25354405556', '797200', 55);
INSERT INTO professor (professor_id, nome, email, data_nascimento, rg, cpf, matricula, endereco_id) VALUES (56, 'Ella Roy', 'robbins@gmail.com', '1939-05-05', '691-59-7751', '97980958390', '118753', 56);
INSERT INTO professor (professor_id, nome, email, data_nascimento, rg, cpf, matricula, endereco_id) VALUES (57, 'Landon Hood', 'jasonreynolds@mail.com', '1961-01-10', '072-30-2183', '12878705467', '840726', 57);
INSERT INTO professor (professor_id, nome, email, data_nascimento, rg, cpf, matricula, endereco_id) VALUES (58, 'Nathaniel Hughes', 'oliver.mccray@gmail.com', '1954-09-01', '729-34-3583', '94730389689', '937693', 58);
INSERT INTO professor (professor_id, nome, email, data_nascimento, rg, cpf, matricula, endereco_id) VALUES (59, 'Lillian Weeks', 'smith@mail.com', '2010-12-19', '379-23-8515', '72754759441', '936713', 59);
INSERT INTO professor (professor_id, nome, email, data_nascimento, rg, cpf, matricula, endereco_id) VALUES (60, 'Trinity Bush', 'samanthawood@gmail.com', '2013-02-13', '625-60-4420', '08684057368', '173216', 60);
INSERT INTO professor (professor_id, nome, email, data_nascimento, rg, cpf, matricula, endereco_id) VALUES (61, 'Cameron Blankenship', 'barron@gmail.com', '1941-11-22', '844-27-0472', '19606012700', '718340', 61);
INSERT INTO professor (professor_id, nome, email, data_nascimento, rg, cpf, matricula, endereco_id) VALUES (62, 'Gianna Dale', 'jasmine.mayer@mail.com', '1976-05-07', '747-29-8206', '30076236188', '141363', 62);
INSERT INTO professor (professor_id, nome, email, data_nascimento, rg, cpf, matricula, endereco_id) VALUES (63, 'Robert Delacruz', 'genesis.keller@yahoo.com', '1997-03-17', '885-55-1897', '90062414585', '163612', 63);
INSERT INTO professor (professor_id, nome, email, data_nascimento, rg, cpf, matricula, endereco_id) VALUES (64, 'Colton Conley', 'stephenson@gmail.com', '1930-04-13', '450-74-0034', '62970337304', '052638', 64);
INSERT INTO professor (professor_id, nome, email, data_nascimento, rg, cpf, matricula, endereco_id) VALUES (65, 'Luke Mcmahon', 'mills@gmail.com', '1924-12-02', '861-63-1933', '66714637357', '884625', 65);
INSERT INTO professor (professor_id, nome, email, data_nascimento, rg, cpf, matricula, endereco_id) VALUES (66, 'Khloe Barnes', 'booth@gmail.com', '1944-02-06', '405-38-1827', '46664230100', '037710', 66);
INSERT INTO professor (professor_id, nome, email, data_nascimento, rg, cpf, matricula, endereco_id) VALUES (67, 'Morgan Hopkins', 'eva.mendoza@mail.com', '1934-05-29', '016-93-2923', '98168175271', '818623', 67);
INSERT INTO professor (professor_id, nome, email, data_nascimento, rg, cpf, matricula, endereco_id) VALUES (68, 'Allison Pruitt', 'waters@gmail.com', '2003-07-13', '343-33-4599', '84203464625', '952932', 68);
INSERT INTO professor (professor_id, nome, email, data_nascimento, rg, cpf, matricula, endereco_id) VALUES (69, 'Ayden Gross', 'strickland@yahoo.com', '1989-06-17', '400-82-6037', '29411015271', '098000', 69);
INSERT INTO professor (professor_id, nome, email, data_nascimento, rg, cpf, matricula, endereco_id) VALUES (70, 'Bailey Bean', 'berg@gmail.com', '2012-10-07', '221-25-6002', '90791816761', '568291', 70);
INSERT INTO professor (professor_id, nome, email, data_nascimento, rg, cpf, matricula, endereco_id) VALUES (71, 'Hudson Todd', 'ramos@mail.com', '1924-05-20', '003-40-3650', '52096233437', '378213', 71);
INSERT INTO professor (professor_id, nome, email, data_nascimento, rg, cpf, matricula, endereco_id) VALUES (72, 'Kylie Bailey', 'hooper@yahoo.com', '1969-02-13', '645-48-1556', '69584668536', '502518', 72);
INSERT INTO professor (professor_id, nome, email, data_nascimento, rg, cpf, matricula, endereco_id) VALUES (73, 'Aiden Vega', 'long@mail.com', '1981-01-25', '293-11-2638', '60159854962', '688429', 73);
INSERT INTO professor (professor_id, nome, email, data_nascimento, rg, cpf, matricula, endereco_id) VALUES (74, 'Lydia Fisher', 'annabonner@gmail.com', '1999-10-30', '893-40-3696', '19338724972', '108487', 74);
INSERT INTO professor (professor_id, nome, email, data_nascimento, rg, cpf, matricula, endereco_id) VALUES (75, 'Nicholas Mccall', 'elijahvalentine@gmail.com', '1986-11-21', '859-79-0319', '15814744901', '099566', 75);
INSERT INTO professor (professor_id, nome, email, data_nascimento, rg, cpf, matricula, endereco_id) VALUES (76, 'Isaiah Briggs', 'spears@mail.com', '1967-12-07', '450-36-1661', '31987101111', '761234', 76);
INSERT INTO professor (professor_id, nome, email, data_nascimento, rg, cpf, matricula, endereco_id) VALUES (77, 'Liam Strong', 'stellawhitley@yahoo.com', '2003-08-17', '290-30-2892', '91620633400', '553247', 77);
INSERT INTO professor (professor_id, nome, email, data_nascimento, rg, cpf, matricula, endereco_id) VALUES (78, 'Autumn Aguilar', 'juliadorsey@yahoo.com', '1992-12-31', '087-82-4998', '17475412067', '311821', 78);
INSERT INTO professor (professor_id, nome, email, data_nascimento, rg, cpf, matricula, endereco_id) VALUES (79, 'Angel Joyner', 'skylarhoffman@mail.com', '1965-01-30', '735-93-9189', '19343540230', '993858', 79);
INSERT INTO professor (professor_id, nome, email, data_nascimento, rg, cpf, matricula, endereco_id) VALUES (80, 'Serenity Sampson', 'julian.burt@mail.com', '1939-07-26', '410-18-2325', '71572185937', '368582', 80);
INSERT INTO professor (professor_id, nome, email, data_nascimento, rg, cpf, matricula, endereco_id) VALUES (81, 'Skylar Spencer', 'aaliyah.bray@gmail.com', '1977-06-27', '561-04-5439', '44726888080', '055110', 81);
INSERT INTO professor (professor_id, nome, email, data_nascimento, rg, cpf, matricula, endereco_id) VALUES (82, 'Sophie Atkins', 'baldwin@yahoo.com', '1923-05-11', '737-68-0873', '75470908500', '729930', 82);
INSERT INTO professor (professor_id, nome, email, data_nascimento, rg, cpf, matricula, endereco_id) VALUES (83, 'Jacob Miller', 'mcdaniel@gmail.com', '1977-01-21', '654-57-6379', '29682675154', '882055', 83);
INSERT INTO professor (professor_id, nome, email, data_nascimento, rg, cpf, matricula, endereco_id) VALUES (84, 'Noah Bolton', 'butler@gmail.com', '1946-07-08', '246-83-5323', '48068046224', '127957', 84);
INSERT INTO professor (professor_id, nome, email, data_nascimento, rg, cpf, matricula, endereco_id) VALUES (85, 'Cameron Gillespie', 'kimberly.pace@yahoo.com', '1925-11-13', '288-12-2216', '92570753971', '875935', 85);
INSERT INTO professor (professor_id, nome, email, data_nascimento, rg, cpf, matricula, endereco_id) VALUES (86, 'Justin Torres', 'ashley@yahoo.com', '1977-07-13', '814-37-1180', '10406415803', '237100', 86);
INSERT INTO professor (professor_id, nome, email, data_nascimento, rg, cpf, matricula, endereco_id) VALUES (87, 'Reagan Wells', 'heath@yahoo.com', '1940-09-27', '307-22-8230', '82260445373', '544240', 87);
INSERT INTO professor (professor_id, nome, email, data_nascimento, rg, cpf, matricula, endereco_id) VALUES (88, 'Kayden Cabrera', 'perez@yahoo.com', '1942-11-29', '431-99-1080', '42758737264', '481830', 88);
INSERT INTO professor (professor_id, nome, email, data_nascimento, rg, cpf, matricula, endereco_id) VALUES (89, 'Trinity Hobbs', 'mills@gmail.com', '1950-01-10', '603-64-4932', '08178470659', '073111', 89);
INSERT INTO professor (professor_id, nome, email, data_nascimento, rg, cpf, matricula, endereco_id) VALUES (90, 'Sydney Mays', 'nataliestanley@gmail.com', '1998-10-18', '042-79-7019', '34414800234', '174316', 90);
INSERT INTO professor (professor_id, nome, email, data_nascimento, rg, cpf, matricula, endereco_id) VALUES (91, 'Leah Conner', 'davidson@mail.com', '1963-09-14', '484-25-0518', '29640501123', '838497', 91);
INSERT INTO professor (professor_id, nome, email, data_nascimento, rg, cpf, matricula, endereco_id) VALUES (92, 'Sophie Dotson', 'mullen@mail.com', '1934-10-13', '424-73-0605', '55499739790', '443789', 92);
INSERT INTO professor (professor_id, nome, email, data_nascimento, rg, cpf, matricula, endereco_id) VALUES (93, 'Dylan Rivera', 'frost@gmail.com', '1972-03-10', '627-79-3564', '30078162033', '391397', 93);
INSERT INTO professor (professor_id, nome, email, data_nascimento, rg, cpf, matricula, endereco_id) VALUES (94, 'Lydia Clay', 'mayer@gmail.com', '1990-03-08', '174-70-2677', '33319882945', '718516', 94);
INSERT INTO professor (professor_id, nome, email, data_nascimento, rg, cpf, matricula, endereco_id) VALUES (95, 'Ashley Stuart', 'wilder@yahoo.com', '1923-01-18', '489-15-9744', '57478906389', '101584', 95);
INSERT INTO professor (professor_id, nome, email, data_nascimento, rg, cpf, matricula, endereco_id) VALUES (96, 'Henry Reilly', 'lucy.sheppard@mail.com', '1925-12-21', '472-91-2264', '36068381820', '882758', 96);
INSERT INTO professor (professor_id, nome, email, data_nascimento, rg, cpf, matricula, endereco_id) VALUES (97, 'Genesis Mays', 'berger@mail.com', '1982-08-30', '093-76-1558', '97900318151', '485033', 97);
INSERT INTO professor (professor_id, nome, email, data_nascimento, rg, cpf, matricula, endereco_id) VALUES (98, 'Charlotte Bradshaw', 'burt@mail.com', '2013-10-06', '851-39-2363', '28555654130', '631995', 98);
INSERT INTO professor (professor_id, nome, email, data_nascimento, rg, cpf, matricula, endereco_id) VALUES (99, 'Colton Bright', 'fuentes@gmail.com', '1986-05-09', '470-75-7890', '11717345069', '127623', 99);
INSERT INTO professor (professor_id, nome, email, data_nascimento, rg, cpf, matricula, endereco_id) VALUES (100, 'Jonathan Lopez', 'makayla.blevins@yahoo.com', '1999-11-04', '612-88-7623', '83306519596', '705753', 100);


--
-- TOC entry 2297 (class 0 OID 17838)
-- Dependencies: 199
-- Data for Name: professor_disciplina; Type: TABLE DATA; Schema: flash; Owner: postgres
--

INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (282, 1, 1);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (283, 1, 2);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (284, 1, 3);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (285, 1, 4);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (286, 1, 5);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (287, 1, 6);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (288, 1, 7);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (289, 1, 8);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (290, 1, 9);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (291, 1, 10);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (292, 1, 11);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (293, 1, 12);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (294, 1, 13);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (295, 1, 14);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (296, 1, 15);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (297, 1, 16);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (298, 1, 17);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (299, 1, 18);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (300, 1, 19);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (301, 1, 20);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (302, 1, 21);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (303, 1, 22);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (304, 1, 23);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (305, 1, 24);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (306, 1, 25);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (307, 1, 26);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (308, 1, 27);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (309, 1, 28);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (310, 1, 29);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (311, 1, 30);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (312, 1, 31);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (313, 1, 32);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (314, 1, 33);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (315, 1, 34);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (316, 1, 35);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (317, 1, 36);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (318, 1, 37);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (319, 1, 38);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (320, 1, 39);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (321, 1, 40);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (322, 1, 41);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (323, 2, 1);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (324, 2, 2);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (325, 2, 3);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (326, 2, 4);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (327, 2, 5);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (328, 2, 6);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (329, 2, 7);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (330, 2, 8);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (331, 2, 9);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (332, 2, 10);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (333, 2, 11);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (334, 2, 12);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (335, 2, 13);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (336, 2, 14);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (337, 2, 15);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (338, 2, 16);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (339, 2, 17);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (340, 2, 18);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (341, 2, 19);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (342, 2, 20);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (343, 2, 21);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (344, 2, 22);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (345, 2, 23);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (346, 2, 24);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (347, 2, 25);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (348, 2, 26);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (349, 2, 27);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (350, 2, 28);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (351, 2, 29);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (352, 2, 30);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (353, 2, 31);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (354, 2, 32);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (355, 2, 33);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (356, 2, 34);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (357, 2, 35);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (358, 2, 36);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (359, 2, 37);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (360, 2, 38);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (361, 2, 39);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (362, 2, 40);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (363, 2, 41);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (364, 3, 1);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (365, 3, 2);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (366, 3, 3);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (367, 3, 4);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (368, 3, 5);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (369, 3, 6);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (370, 3, 7);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (371, 3, 8);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (372, 3, 9);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (373, 3, 10);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (374, 3, 11);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (375, 3, 12);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (376, 3, 13);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (377, 3, 14);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (378, 3, 15);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (379, 3, 16);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (380, 3, 17);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (381, 3, 18);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (382, 3, 19);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (383, 3, 20);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (384, 3, 21);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (385, 3, 22);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (386, 3, 23);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (387, 3, 24);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (388, 3, 25);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (389, 3, 26);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (390, 3, 27);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (391, 3, 28);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (392, 3, 29);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (393, 3, 30);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (394, 3, 31);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (395, 3, 32);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (396, 3, 33);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (397, 3, 34);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (398, 3, 35);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (399, 3, 36);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (400, 3, 37);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (401, 3, 38);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (402, 3, 39);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (403, 3, 40);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (404, 3, 41);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (405, 4, 1);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (406, 4, 2);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (407, 4, 3);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (408, 4, 4);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (409, 4, 5);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (410, 4, 6);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (411, 4, 7);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (412, 4, 8);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (413, 4, 9);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (414, 4, 10);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (415, 4, 11);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (416, 4, 12);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (417, 4, 13);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (418, 4, 14);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (419, 4, 15);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (420, 4, 16);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (421, 4, 17);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (422, 4, 18);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (423, 4, 19);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (424, 4, 20);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (425, 4, 21);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (426, 4, 22);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (427, 4, 23);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (428, 4, 24);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (429, 4, 25);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (430, 4, 26);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (431, 4, 27);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (432, 4, 28);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (433, 4, 29);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (434, 4, 30);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (435, 4, 31);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (436, 4, 32);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (437, 4, 33);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (438, 4, 34);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (439, 4, 35);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (440, 4, 36);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (441, 4, 37);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (442, 4, 38);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (443, 4, 39);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (444, 4, 40);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (445, 4, 41);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (446, 5, 1);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (447, 5, 2);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (448, 5, 3);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (449, 5, 4);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (450, 5, 5);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (451, 5, 6);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (452, 5, 7);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (453, 5, 8);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (454, 5, 9);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (455, 5, 10);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (456, 5, 11);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (457, 5, 12);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (458, 5, 13);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (459, 5, 14);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (460, 5, 15);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (461, 5, 16);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (462, 5, 17);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (463, 5, 18);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (464, 5, 19);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (465, 5, 20);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (466, 5, 21);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (467, 5, 22);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (468, 5, 23);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (469, 5, 24);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (470, 5, 25);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (471, 5, 26);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (472, 5, 27);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (473, 5, 28);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (474, 5, 29);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (475, 5, 30);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (476, 5, 31);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (477, 5, 32);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (478, 5, 33);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (479, 5, 34);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (480, 5, 35);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (481, 5, 36);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (482, 5, 37);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (483, 5, 38);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (484, 5, 39);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (485, 5, 40);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (486, 5, 41);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (487, 6, 1);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (488, 6, 2);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (489, 6, 3);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (490, 6, 4);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (491, 6, 5);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (492, 6, 6);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (493, 6, 7);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (494, 6, 8);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (495, 6, 9);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (496, 6, 10);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (497, 6, 11);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (498, 6, 12);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (499, 6, 13);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (500, 6, 14);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (501, 6, 15);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (502, 6, 16);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (503, 6, 17);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (504, 6, 18);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (505, 6, 19);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (506, 6, 20);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (507, 6, 21);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (508, 6, 22);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (509, 6, 23);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (510, 6, 24);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (511, 6, 25);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (512, 6, 26);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (513, 6, 27);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (514, 6, 28);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (515, 6, 29);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (516, 6, 30);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (517, 6, 31);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (518, 6, 32);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (519, 6, 33);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (520, 6, 34);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (521, 6, 35);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (522, 6, 36);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (523, 6, 37);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (524, 6, 38);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (525, 6, 39);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (526, 6, 40);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (527, 6, 41);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (528, 7, 1);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (529, 7, 2);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (530, 7, 3);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (531, 7, 4);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (532, 7, 5);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (533, 7, 6);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (534, 7, 7);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (535, 7, 8);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (536, 7, 9);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (537, 7, 10);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (538, 7, 11);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (539, 7, 12);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (540, 7, 13);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (541, 7, 14);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (542, 7, 15);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (543, 7, 16);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (544, 7, 17);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (545, 7, 18);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (546, 7, 19);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (547, 7, 20);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (548, 7, 21);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (549, 7, 22);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (550, 7, 23);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (551, 7, 24);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (552, 7, 25);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (553, 7, 26);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (554, 7, 27);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (555, 7, 28);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (556, 7, 29);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (557, 7, 30);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (558, 7, 31);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (559, 7, 32);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (560, 7, 33);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (561, 7, 34);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (562, 7, 35);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (563, 7, 36);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (564, 7, 37);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (565, 7, 38);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (566, 7, 39);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (567, 7, 40);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (568, 7, 41);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (569, 8, 1);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (570, 8, 2);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (571, 8, 3);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (572, 8, 4);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (573, 8, 5);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (574, 8, 6);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (575, 8, 7);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (576, 8, 8);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (577, 8, 9);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (578, 8, 10);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (579, 8, 11);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (580, 8, 12);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (581, 8, 13);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (582, 8, 14);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (583, 8, 15);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (584, 8, 16);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (585, 8, 17);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (586, 8, 18);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (587, 8, 19);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (588, 8, 20);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (589, 8, 21);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (590, 8, 22);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (591, 8, 23);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (592, 8, 24);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (593, 8, 25);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (594, 8, 26);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (595, 8, 27);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (596, 8, 28);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (597, 8, 29);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (598, 8, 30);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (599, 8, 31);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (600, 8, 32);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (601, 8, 33);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (602, 8, 34);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (603, 8, 35);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (604, 8, 36);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (605, 8, 37);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (606, 8, 38);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (607, 8, 39);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (608, 8, 40);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (609, 8, 41);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (610, 9, 1);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (611, 9, 2);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (612, 9, 3);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (613, 9, 4);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (614, 9, 5);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (615, 9, 6);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (616, 9, 7);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (617, 9, 8);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (618, 9, 9);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (619, 9, 10);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (620, 9, 11);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (621, 9, 12);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (622, 9, 13);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (623, 9, 14);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (624, 9, 15);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (625, 9, 16);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (626, 9, 17);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (627, 9, 18);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (628, 9, 19);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (629, 9, 20);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (630, 9, 21);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (631, 9, 22);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (632, 9, 23);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (633, 9, 24);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (634, 9, 25);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (635, 9, 26);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (636, 9, 27);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (637, 9, 28);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (638, 9, 29);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (639, 9, 30);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (640, 9, 31);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (641, 9, 32);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (642, 9, 33);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (643, 9, 34);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (644, 9, 35);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (645, 9, 36);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (646, 9, 37);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (647, 9, 38);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (648, 9, 39);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (649, 9, 40);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (650, 9, 41);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (651, 10, 1);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (652, 10, 2);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (653, 10, 3);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (654, 10, 4);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (655, 10, 5);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (656, 10, 6);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (657, 10, 7);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (658, 10, 8);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (659, 10, 9);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (660, 10, 10);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (661, 10, 11);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (662, 10, 12);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (663, 10, 13);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (664, 10, 14);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (665, 10, 15);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (666, 10, 16);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (667, 10, 17);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (668, 10, 18);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (669, 10, 19);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (670, 10, 20);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (671, 10, 21);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (672, 10, 22);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (673, 10, 23);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (674, 10, 24);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (675, 10, 25);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (676, 10, 26);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (677, 10, 27);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (678, 10, 28);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (679, 10, 29);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (680, 10, 30);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (681, 10, 31);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (682, 10, 32);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (683, 10, 33);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (684, 10, 34);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (685, 10, 35);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (686, 10, 36);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (687, 10, 37);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (688, 10, 38);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (689, 10, 39);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (690, 10, 40);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (691, 10, 41);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (692, 11, 1);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (693, 11, 2);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (694, 11, 3);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (695, 11, 4);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (696, 11, 5);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (697, 11, 6);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (698, 11, 7);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (699, 11, 8);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (700, 11, 9);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (701, 11, 10);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (702, 11, 11);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (703, 11, 12);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (704, 11, 13);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (705, 11, 14);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (706, 11, 15);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (707, 11, 16);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (708, 11, 17);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (709, 11, 18);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (710, 11, 19);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (711, 11, 20);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (712, 11, 21);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (713, 11, 22);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (714, 11, 23);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (715, 11, 24);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (716, 11, 25);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (717, 11, 26);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (718, 11, 27);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (719, 11, 28);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (720, 11, 29);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (721, 11, 30);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (722, 11, 31);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (723, 11, 32);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (724, 11, 33);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (725, 11, 34);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (726, 11, 35);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (727, 11, 36);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (728, 11, 37);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (729, 11, 38);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (730, 11, 39);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (731, 11, 40);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (732, 11, 41);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (733, 12, 1);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (734, 12, 2);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (735, 12, 3);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (736, 12, 4);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (737, 12, 5);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (738, 12, 6);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (739, 12, 7);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (740, 12, 8);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (741, 12, 9);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (742, 12, 10);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (743, 12, 11);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (744, 12, 12);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (745, 12, 13);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (746, 12, 14);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (747, 12, 15);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (748, 12, 16);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (749, 12, 17);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (750, 12, 18);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (751, 12, 19);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (752, 12, 20);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (753, 12, 21);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (754, 12, 22);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (755, 12, 23);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (756, 12, 24);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (757, 12, 25);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (758, 12, 26);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (759, 12, 27);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (760, 12, 28);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (761, 12, 29);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (762, 12, 30);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (763, 12, 31);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (764, 12, 32);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (765, 12, 33);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (766, 12, 34);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (767, 12, 35);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (768, 12, 36);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (769, 12, 37);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (770, 12, 38);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (771, 12, 39);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (772, 12, 40);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (773, 12, 41);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (774, 13, 1);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (775, 13, 2);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (776, 13, 3);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (777, 13, 4);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (778, 13, 5);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (779, 13, 6);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (780, 13, 7);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (781, 13, 8);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (782, 13, 9);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (783, 13, 10);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (784, 13, 11);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (785, 13, 12);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (786, 13, 13);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (787, 13, 14);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (788, 13, 15);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (789, 13, 16);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (790, 13, 17);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (791, 13, 18);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (792, 13, 19);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (793, 13, 20);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (794, 13, 21);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (795, 13, 22);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (796, 13, 23);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (797, 13, 24);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (798, 13, 25);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (799, 13, 26);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (800, 13, 27);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (801, 13, 28);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (802, 13, 29);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (803, 13, 30);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (804, 13, 31);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (805, 13, 32);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (806, 13, 33);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (807, 13, 34);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (808, 13, 35);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (809, 13, 36);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (810, 13, 37);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (811, 13, 38);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (812, 13, 39);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (813, 13, 40);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (814, 13, 41);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (815, 14, 1);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (816, 14, 2);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (817, 14, 3);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (818, 14, 4);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (819, 14, 5);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (820, 14, 6);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (821, 14, 7);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (822, 14, 8);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (823, 14, 9);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (824, 14, 10);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (825, 14, 11);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (826, 14, 12);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (827, 14, 13);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (828, 14, 14);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (829, 14, 15);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (830, 14, 16);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (831, 14, 17);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (832, 14, 18);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (833, 14, 19);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (834, 14, 20);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (835, 14, 21);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (836, 14, 22);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (837, 14, 23);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (838, 14, 24);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (839, 14, 25);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (840, 14, 26);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (841, 14, 27);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (842, 14, 28);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (843, 14, 29);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (844, 14, 30);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (845, 14, 31);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (846, 14, 32);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (847, 14, 33);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (848, 14, 34);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (849, 14, 35);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (850, 14, 36);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (851, 14, 37);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (852, 14, 38);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (853, 14, 39);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (854, 14, 40);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (855, 14, 41);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (856, 15, 1);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (857, 15, 2);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (858, 15, 3);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (859, 15, 4);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (860, 15, 5);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (861, 15, 6);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (862, 15, 7);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (863, 15, 8);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (864, 15, 9);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (865, 15, 10);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (866, 15, 11);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (867, 15, 12);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (868, 15, 13);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (869, 15, 14);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (870, 15, 15);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (871, 15, 16);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (872, 15, 17);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (873, 15, 18);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (874, 15, 19);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (875, 15, 20);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (876, 15, 21);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (877, 15, 22);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (878, 15, 23);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (879, 15, 24);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (880, 15, 25);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (881, 15, 26);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (882, 15, 27);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (883, 15, 28);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (884, 15, 29);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (885, 15, 30);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (886, 15, 31);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (887, 15, 32);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (888, 15, 33);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (889, 15, 34);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (890, 15, 35);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (891, 15, 36);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (892, 15, 37);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (893, 15, 38);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (894, 15, 39);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (895, 15, 40);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (896, 15, 41);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (897, 16, 1);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (898, 16, 2);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (899, 16, 3);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (900, 16, 4);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (901, 16, 5);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (902, 16, 6);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (903, 16, 7);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (904, 16, 8);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (905, 16, 9);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (906, 16, 10);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (907, 16, 11);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (908, 16, 12);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (909, 16, 13);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (910, 16, 14);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (911, 16, 15);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (912, 16, 16);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (913, 16, 17);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (914, 16, 18);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (915, 16, 19);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (916, 16, 20);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (917, 16, 21);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (918, 16, 22);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (919, 16, 23);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (920, 16, 24);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (921, 16, 25);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (922, 16, 26);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (923, 16, 27);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (924, 16, 28);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (925, 16, 29);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (926, 16, 30);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (927, 16, 31);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (928, 16, 32);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (929, 16, 33);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (930, 16, 34);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (931, 16, 35);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (932, 16, 36);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (933, 16, 37);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (934, 16, 38);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (935, 16, 39);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (936, 16, 40);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (937, 16, 41);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (938, 17, 1);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (939, 17, 2);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (940, 17, 3);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (941, 17, 4);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (942, 17, 5);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (943, 17, 6);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (944, 17, 7);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (945, 17, 8);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (946, 17, 9);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (947, 17, 10);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (948, 17, 11);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (949, 17, 12);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (950, 17, 13);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (951, 17, 14);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (952, 17, 15);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (953, 17, 16);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (954, 17, 17);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (955, 17, 18);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (956, 17, 19);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (957, 17, 20);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (958, 17, 21);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (959, 17, 22);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (960, 17, 23);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (961, 17, 24);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (962, 17, 25);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (963, 17, 26);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (964, 17, 27);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (965, 17, 28);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (966, 17, 29);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (967, 17, 30);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (968, 17, 31);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (969, 17, 32);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (970, 17, 33);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (971, 17, 34);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (972, 17, 35);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (973, 17, 36);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (974, 17, 37);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (975, 17, 38);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (976, 17, 39);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (977, 17, 40);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (978, 17, 41);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (979, 18, 1);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (980, 18, 2);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (981, 18, 3);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (982, 18, 4);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (983, 18, 5);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (984, 18, 6);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (985, 18, 7);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (986, 18, 8);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (987, 18, 9);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (988, 18, 10);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (989, 18, 11);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (990, 18, 12);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (991, 18, 13);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (992, 18, 14);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (993, 18, 15);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (994, 18, 16);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (995, 18, 17);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (996, 18, 18);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (997, 18, 19);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (998, 18, 20);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (999, 18, 21);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1000, 18, 22);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1001, 18, 23);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1002, 18, 24);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1003, 18, 25);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1004, 18, 26);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1005, 18, 27);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1006, 18, 28);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1007, 18, 29);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1008, 18, 30);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1009, 18, 31);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1010, 18, 32);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1011, 18, 33);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1012, 18, 34);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1013, 18, 35);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1014, 18, 36);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1015, 18, 37);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1016, 18, 38);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1017, 18, 39);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1018, 18, 40);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1019, 18, 41);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1020, 19, 1);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1021, 19, 2);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1022, 19, 3);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1023, 19, 4);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1024, 19, 5);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1025, 19, 6);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1026, 19, 7);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1027, 19, 8);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1028, 19, 9);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1029, 19, 10);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1030, 19, 11);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1031, 19, 12);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1032, 19, 13);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1033, 19, 14);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1034, 19, 15);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1035, 19, 16);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1036, 19, 17);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1037, 19, 18);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1038, 19, 19);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1039, 19, 20);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1040, 19, 21);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1041, 19, 22);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1042, 19, 23);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1043, 19, 24);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1044, 19, 25);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1045, 19, 26);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1046, 19, 27);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1047, 19, 28);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1048, 19, 29);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1049, 19, 30);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1050, 19, 31);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1051, 19, 32);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1052, 19, 33);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1053, 19, 34);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1054, 19, 35);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1055, 19, 36);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1056, 19, 37);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1057, 19, 38);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1058, 19, 39);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1059, 19, 40);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1060, 19, 41);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1061, 20, 1);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1062, 20, 2);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1063, 20, 3);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1064, 20, 4);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1065, 20, 5);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1066, 20, 6);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1067, 20, 7);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1068, 20, 8);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1069, 20, 9);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1070, 20, 10);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1071, 20, 11);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1072, 20, 12);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1073, 20, 13);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1074, 20, 14);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1075, 20, 15);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1076, 20, 16);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1077, 20, 17);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1078, 20, 18);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1079, 20, 19);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1080, 20, 20);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1081, 20, 21);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1082, 20, 22);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1083, 20, 23);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1084, 20, 24);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1085, 20, 25);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1086, 20, 26);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1087, 20, 27);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1088, 20, 28);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1089, 20, 29);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1090, 20, 30);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1091, 20, 31);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1092, 20, 32);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1093, 20, 33);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1094, 20, 34);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1095, 20, 35);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1096, 20, 36);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1097, 20, 37);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1098, 20, 38);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1099, 20, 39);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1100, 20, 40);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1101, 20, 41);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1102, 21, 1);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1103, 21, 2);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1104, 21, 3);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1105, 21, 4);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1106, 21, 5);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1107, 21, 6);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1108, 21, 7);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1109, 21, 8);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1110, 21, 9);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1111, 21, 10);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1112, 21, 11);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1113, 21, 12);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1114, 21, 13);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1115, 21, 14);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1116, 21, 15);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1117, 21, 16);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1118, 21, 17);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1119, 21, 18);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1120, 21, 19);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1121, 21, 20);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1122, 21, 21);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1123, 21, 22);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1124, 21, 23);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1125, 21, 24);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1126, 21, 25);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1127, 21, 26);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1128, 21, 27);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1129, 21, 28);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1130, 21, 29);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1131, 21, 30);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1132, 21, 31);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1133, 21, 32);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1134, 21, 33);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1135, 21, 34);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1136, 21, 35);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1137, 21, 36);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1138, 21, 37);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1139, 21, 38);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1140, 21, 39);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1141, 21, 40);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1142, 21, 41);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1143, 22, 1);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1144, 22, 2);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1145, 22, 3);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1146, 22, 4);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1147, 22, 5);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1148, 22, 6);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1149, 22, 7);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1150, 22, 8);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1151, 22, 9);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1152, 22, 10);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1153, 22, 11);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1154, 22, 12);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1155, 22, 13);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1156, 22, 14);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1157, 22, 15);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1158, 22, 16);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1159, 22, 17);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1160, 22, 18);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1161, 22, 19);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1162, 22, 20);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1163, 22, 21);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1164, 22, 22);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1165, 22, 23);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1166, 22, 24);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1167, 22, 25);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1168, 22, 26);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1169, 22, 27);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1170, 22, 28);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1171, 22, 29);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1172, 22, 30);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1173, 22, 31);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1174, 22, 32);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1175, 22, 33);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1176, 22, 34);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1177, 22, 35);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1178, 22, 36);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1179, 22, 37);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1180, 22, 38);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1181, 22, 39);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1182, 22, 40);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1183, 22, 41);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1184, 23, 1);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1185, 23, 2);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1186, 23, 3);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1187, 23, 4);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1188, 23, 5);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1189, 23, 6);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1190, 23, 7);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1191, 23, 8);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1192, 23, 9);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1193, 23, 10);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1194, 23, 11);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1195, 23, 12);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1196, 23, 13);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1197, 23, 14);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1198, 23, 15);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1199, 23, 16);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1200, 23, 17);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1201, 23, 18);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1202, 23, 19);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1203, 23, 20);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1204, 23, 21);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1205, 23, 22);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1206, 23, 23);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1207, 23, 24);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1208, 23, 25);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1209, 23, 26);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1210, 23, 27);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1211, 23, 28);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1212, 23, 29);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1213, 23, 30);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1214, 23, 31);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1215, 23, 32);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1216, 23, 33);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1217, 23, 34);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1218, 23, 35);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1219, 23, 36);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1220, 23, 37);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1221, 23, 38);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1222, 23, 39);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1223, 23, 40);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1224, 23, 41);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1225, 24, 1);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1226, 24, 2);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1227, 24, 3);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1228, 24, 4);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1229, 24, 5);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1230, 24, 6);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1231, 24, 7);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1232, 24, 8);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1233, 24, 9);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1234, 24, 10);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1235, 24, 11);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1236, 24, 12);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1237, 24, 13);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1238, 24, 14);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1239, 24, 15);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1240, 24, 16);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1241, 24, 17);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1242, 24, 18);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1243, 24, 19);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1244, 24, 20);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1245, 24, 21);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1246, 24, 22);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1247, 24, 23);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1248, 24, 24);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1249, 24, 25);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1250, 24, 26);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1251, 24, 27);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1252, 24, 28);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1253, 24, 29);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1254, 24, 30);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1255, 24, 31);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1256, 24, 32);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1257, 24, 33);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1258, 24, 34);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1259, 24, 35);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1260, 24, 36);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1261, 24, 37);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1262, 24, 38);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1263, 24, 39);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1264, 24, 40);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1265, 24, 41);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1266, 25, 1);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1267, 25, 2);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1268, 25, 3);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1269, 25, 4);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1270, 25, 5);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1271, 25, 6);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1272, 25, 7);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1273, 25, 8);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1274, 25, 9);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1275, 25, 10);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1276, 25, 11);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1277, 25, 12);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1278, 25, 13);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1279, 25, 14);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1280, 25, 15);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1281, 25, 16);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1282, 25, 17);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1283, 25, 18);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1284, 25, 19);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1285, 25, 20);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1286, 25, 21);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1287, 25, 22);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1288, 25, 23);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1289, 25, 24);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1290, 25, 25);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1291, 25, 26);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1292, 25, 27);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1293, 25, 28);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1294, 25, 29);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1295, 25, 30);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1296, 25, 31);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1297, 25, 32);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1298, 25, 33);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1299, 25, 34);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1300, 25, 35);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1301, 25, 36);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1302, 25, 37);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1303, 25, 38);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1304, 25, 39);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1305, 25, 40);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1306, 25, 41);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1307, 26, 1);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1308, 26, 2);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1309, 26, 3);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1310, 26, 4);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1311, 26, 5);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1312, 26, 6);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1313, 26, 7);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1314, 26, 8);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1315, 26, 9);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1316, 26, 10);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1317, 26, 11);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1318, 26, 12);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1319, 26, 13);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1320, 26, 14);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1321, 26, 15);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1322, 26, 16);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1323, 26, 17);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1324, 26, 18);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1325, 26, 19);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1326, 26, 20);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1327, 26, 21);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1328, 26, 22);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1329, 26, 23);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1330, 26, 24);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1331, 26, 25);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1332, 26, 26);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1333, 26, 27);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1334, 26, 28);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1335, 26, 29);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1336, 26, 30);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1337, 26, 31);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1338, 26, 32);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1339, 26, 33);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1340, 26, 34);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1341, 26, 35);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1342, 26, 36);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1343, 26, 37);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1344, 26, 38);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1345, 26, 39);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1346, 26, 40);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1347, 26, 41);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1348, 27, 1);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1349, 27, 2);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1350, 27, 3);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1351, 27, 4);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1352, 27, 5);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1353, 27, 6);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1354, 27, 7);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1355, 27, 8);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1356, 27, 9);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1357, 27, 10);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1358, 27, 11);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1359, 27, 12);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1360, 27, 13);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1361, 27, 14);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1362, 27, 15);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1363, 27, 16);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1364, 27, 17);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1365, 27, 18);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1366, 27, 19);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1367, 27, 20);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1368, 27, 21);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1369, 27, 22);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1370, 27, 23);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1371, 27, 24);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1372, 27, 25);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1373, 27, 26);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1374, 27, 27);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1375, 27, 28);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1376, 27, 29);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1377, 27, 30);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1378, 27, 31);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1379, 27, 32);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1380, 27, 33);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1381, 27, 34);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1382, 27, 35);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1383, 27, 36);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1384, 27, 37);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1385, 27, 38);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1386, 27, 39);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1387, 27, 40);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1388, 27, 41);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1389, 28, 1);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1390, 28, 2);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1391, 28, 3);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1392, 28, 4);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1393, 28, 5);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1394, 28, 6);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1395, 28, 7);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1396, 28, 8);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1397, 28, 9);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1398, 28, 10);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1399, 28, 11);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1400, 28, 12);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1401, 28, 13);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1402, 28, 14);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1403, 28, 15);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1404, 28, 16);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1405, 28, 17);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1406, 28, 18);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1407, 28, 19);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1408, 28, 20);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1409, 28, 21);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1410, 28, 22);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1411, 28, 23);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1412, 28, 24);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1413, 28, 25);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1414, 28, 26);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1415, 28, 27);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1416, 28, 28);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1417, 28, 29);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1418, 28, 30);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1419, 28, 31);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1420, 28, 32);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1421, 28, 33);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1422, 28, 34);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1423, 28, 35);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1424, 28, 36);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1425, 28, 37);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1426, 28, 38);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1427, 28, 39);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1428, 28, 40);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1429, 28, 41);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1430, 29, 1);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1431, 29, 2);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1432, 29, 3);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1433, 29, 4);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1434, 29, 5);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1435, 29, 6);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1436, 29, 7);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1437, 29, 8);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1438, 29, 9);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1439, 29, 10);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1440, 29, 11);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1441, 29, 12);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1442, 29, 13);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1443, 29, 14);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1444, 29, 15);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1445, 29, 16);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1446, 29, 17);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1447, 29, 18);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1448, 29, 19);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1449, 29, 20);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1450, 29, 21);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1451, 29, 22);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1452, 29, 23);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1453, 29, 24);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1454, 29, 25);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1455, 29, 26);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1456, 29, 27);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1457, 29, 28);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1458, 29, 29);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1459, 29, 30);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1460, 29, 31);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1461, 29, 32);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1462, 29, 33);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1463, 29, 34);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1464, 29, 35);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1465, 29, 36);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1466, 29, 37);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1467, 29, 38);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1468, 29, 39);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1469, 29, 40);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1470, 29, 41);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1471, 30, 1);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1472, 30, 2);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1473, 30, 3);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1474, 30, 4);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1475, 30, 5);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1476, 30, 6);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1477, 30, 7);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1478, 30, 8);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1479, 30, 9);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1480, 30, 10);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1481, 30, 11);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1482, 30, 12);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1483, 30, 13);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1484, 30, 14);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1485, 30, 15);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1486, 30, 16);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1487, 30, 17);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1488, 30, 18);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1489, 30, 19);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1490, 30, 20);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1491, 30, 21);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1492, 30, 22);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1493, 30, 23);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1494, 30, 24);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1495, 30, 25);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1496, 30, 26);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1497, 30, 27);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1498, 30, 28);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1499, 30, 29);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1500, 30, 30);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1501, 30, 31);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1502, 30, 32);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1503, 30, 33);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1504, 30, 34);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1505, 30, 35);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1506, 30, 36);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1507, 30, 37);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1508, 30, 38);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1509, 30, 39);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1510, 30, 40);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1511, 30, 41);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1512, 31, 1);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1513, 31, 2);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1514, 31, 3);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1515, 31, 4);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1516, 31, 5);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1517, 31, 6);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1518, 31, 7);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1519, 31, 8);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1520, 31, 9);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1521, 31, 10);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1522, 31, 11);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1523, 31, 12);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1524, 31, 13);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1525, 31, 14);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1526, 31, 15);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1527, 31, 16);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1528, 31, 17);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1529, 31, 18);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1530, 31, 19);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1531, 31, 20);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1532, 31, 21);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1533, 31, 22);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1534, 31, 23);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1535, 31, 24);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1536, 31, 25);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1537, 31, 26);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1538, 31, 27);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1539, 31, 28);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1540, 31, 29);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1541, 31, 30);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1542, 31, 31);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1543, 31, 32);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1544, 31, 33);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1545, 31, 34);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1546, 31, 35);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1547, 31, 36);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1548, 31, 37);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1549, 31, 38);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1550, 31, 39);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1551, 31, 40);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1552, 31, 41);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1553, 32, 1);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1554, 32, 2);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1555, 32, 3);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1556, 32, 4);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1557, 32, 5);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1558, 32, 6);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1559, 32, 7);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1560, 32, 8);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1561, 32, 9);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1562, 32, 10);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1563, 32, 11);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1564, 32, 12);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1565, 32, 13);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1566, 32, 14);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1567, 32, 15);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1568, 32, 16);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1569, 32, 17);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1570, 32, 18);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1571, 32, 19);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1572, 32, 20);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1573, 32, 21);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1574, 32, 22);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1575, 32, 23);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1576, 32, 24);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1577, 32, 25);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1578, 32, 26);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1579, 32, 27);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1580, 32, 28);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1581, 32, 29);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1582, 32, 30);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1583, 32, 31);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1584, 32, 32);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1585, 32, 33);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1586, 32, 34);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1587, 32, 35);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1588, 32, 36);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1589, 32, 37);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1590, 32, 38);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1591, 32, 39);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1592, 32, 40);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1593, 32, 41);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1594, 33, 1);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1595, 33, 2);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1596, 33, 3);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1597, 33, 4);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1598, 33, 5);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1599, 33, 6);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1600, 33, 7);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1601, 33, 8);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1602, 33, 9);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1603, 33, 10);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1604, 33, 11);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1605, 33, 12);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1606, 33, 13);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1607, 33, 14);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1608, 33, 15);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1609, 33, 16);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1610, 33, 17);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1611, 33, 18);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1612, 33, 19);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1613, 33, 20);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1614, 33, 21);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1615, 33, 22);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1616, 33, 23);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1617, 33, 24);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1618, 33, 25);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1619, 33, 26);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1620, 33, 27);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1621, 33, 28);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1622, 33, 29);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1623, 33, 30);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1624, 33, 31);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1625, 33, 32);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1626, 33, 33);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1627, 33, 34);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1628, 33, 35);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1629, 33, 36);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1630, 33, 37);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1631, 33, 38);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1632, 33, 39);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1633, 33, 40);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1634, 33, 41);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1635, 34, 1);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1636, 34, 2);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1637, 34, 3);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1638, 34, 4);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1639, 34, 5);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1640, 34, 6);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1641, 34, 7);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1642, 34, 8);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1643, 34, 9);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1644, 34, 10);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1645, 34, 11);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1646, 34, 12);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1647, 34, 13);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1648, 34, 14);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1649, 34, 15);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1650, 34, 16);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1651, 34, 17);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1652, 34, 18);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1653, 34, 19);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1654, 34, 20);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1655, 34, 21);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1656, 34, 22);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1657, 34, 23);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1658, 34, 24);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1659, 34, 25);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1660, 34, 26);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1661, 34, 27);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1662, 34, 28);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1663, 34, 29);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1664, 34, 30);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1665, 34, 31);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1666, 34, 32);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1667, 34, 33);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1668, 34, 34);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1669, 34, 35);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1670, 34, 36);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1671, 34, 37);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1672, 34, 38);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1673, 34, 39);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1674, 34, 40);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1675, 34, 41);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1676, 35, 1);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1677, 35, 2);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1678, 35, 3);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1679, 35, 4);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1680, 35, 5);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1681, 35, 6);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1682, 35, 7);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1683, 35, 8);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1684, 35, 9);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1685, 35, 10);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1686, 35, 11);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1687, 35, 12);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1688, 35, 13);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1689, 35, 14);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1690, 35, 15);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1691, 35, 16);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1692, 35, 17);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1693, 35, 18);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1694, 35, 19);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1695, 35, 20);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1696, 35, 21);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1697, 35, 22);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1698, 35, 23);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1699, 35, 24);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1700, 35, 25);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1701, 35, 26);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1702, 35, 27);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1703, 35, 28);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1704, 35, 29);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1705, 35, 30);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1706, 35, 31);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1707, 35, 32);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1708, 35, 33);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1709, 35, 34);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1710, 35, 35);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1711, 35, 36);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1712, 35, 37);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1713, 35, 38);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1714, 35, 39);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1715, 35, 40);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1716, 35, 41);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1717, 36, 1);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1718, 36, 2);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1719, 36, 3);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1720, 36, 4);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1721, 36, 5);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1722, 36, 6);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1723, 36, 7);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1724, 36, 8);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1725, 36, 9);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1726, 36, 10);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1727, 36, 11);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1728, 36, 12);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1729, 36, 13);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1730, 36, 14);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1731, 36, 15);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1732, 36, 16);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1733, 36, 17);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1734, 36, 18);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1735, 36, 19);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1736, 36, 20);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1737, 36, 21);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1738, 36, 22);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1739, 36, 23);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1740, 36, 24);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1741, 36, 25);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1742, 36, 26);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1743, 36, 27);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1744, 36, 28);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1745, 36, 29);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1746, 36, 30);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1747, 36, 31);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1748, 36, 32);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1749, 36, 33);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1750, 36, 34);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1751, 36, 35);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1752, 36, 36);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1753, 36, 37);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1754, 36, 38);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1755, 36, 39);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1756, 36, 40);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1757, 36, 41);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1758, 37, 1);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1759, 37, 2);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1760, 37, 3);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1761, 37, 4);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1762, 37, 5);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1763, 37, 6);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1764, 37, 7);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1765, 37, 8);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1766, 37, 9);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1767, 37, 10);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1768, 37, 11);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1769, 37, 12);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1770, 37, 13);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1771, 37, 14);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1772, 37, 15);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1773, 37, 16);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1774, 37, 17);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1775, 37, 18);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1776, 37, 19);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1777, 37, 20);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1778, 37, 21);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1779, 37, 22);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1780, 37, 23);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1781, 37, 24);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1782, 37, 25);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1783, 37, 26);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1784, 37, 27);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1785, 37, 28);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1786, 37, 29);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1787, 37, 30);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1788, 37, 31);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1789, 37, 32);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1790, 37, 33);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1791, 37, 34);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1792, 37, 35);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1793, 37, 36);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1794, 37, 37);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1795, 37, 38);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1796, 37, 39);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1797, 37, 40);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1798, 37, 41);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1799, 38, 1);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1800, 38, 2);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1801, 38, 3);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1802, 38, 4);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1803, 38, 5);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1804, 38, 6);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1805, 38, 7);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1806, 38, 8);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1807, 38, 9);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1808, 38, 10);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1809, 38, 11);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1810, 38, 12);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1811, 38, 13);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1812, 38, 14);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1813, 38, 15);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1814, 38, 16);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1815, 38, 17);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1816, 38, 18);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1817, 38, 19);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1818, 38, 20);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1819, 38, 21);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1820, 38, 22);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1821, 38, 23);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1822, 38, 24);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1823, 38, 25);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1824, 38, 26);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1825, 38, 27);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1826, 38, 28);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1827, 38, 29);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1828, 38, 30);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1829, 38, 31);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1830, 38, 32);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1831, 38, 33);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1832, 38, 34);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1833, 38, 35);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1834, 38, 36);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1835, 38, 37);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1836, 38, 38);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1837, 38, 39);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1838, 38, 40);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1839, 38, 41);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1840, 39, 1);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1841, 39, 2);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1842, 39, 3);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1843, 39, 4);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1844, 39, 5);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1845, 39, 6);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1846, 39, 7);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1847, 39, 8);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1848, 39, 9);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1849, 39, 10);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1850, 39, 11);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1851, 39, 12);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1852, 39, 13);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1853, 39, 14);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1854, 39, 15);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1855, 39, 16);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1856, 39, 17);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1857, 39, 18);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1858, 39, 19);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1859, 39, 20);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1860, 39, 21);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1861, 39, 22);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1862, 39, 23);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1863, 39, 24);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1864, 39, 25);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1865, 39, 26);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1866, 39, 27);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1867, 39, 28);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1868, 39, 29);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1869, 39, 30);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1870, 39, 31);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1871, 39, 32);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1872, 39, 33);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1873, 39, 34);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1874, 39, 35);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1875, 39, 36);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1876, 39, 37);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1877, 39, 38);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1878, 39, 39);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1879, 39, 40);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1880, 39, 41);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1881, 40, 1);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1882, 40, 2);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1883, 40, 3);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1884, 40, 4);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1885, 40, 5);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1886, 40, 6);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1887, 40, 7);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1888, 40, 8);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1889, 40, 9);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1890, 40, 10);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1891, 40, 11);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1892, 40, 12);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1893, 40, 13);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1894, 40, 14);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1895, 40, 15);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1896, 40, 16);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1897, 40, 17);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1898, 40, 18);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1899, 40, 19);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1900, 40, 20);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1901, 40, 21);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1902, 40, 22);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1903, 40, 23);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1904, 40, 24);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1905, 40, 25);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1906, 40, 26);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1907, 40, 27);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1908, 40, 28);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1909, 40, 29);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1910, 40, 30);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1911, 40, 31);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1912, 40, 32);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1913, 40, 33);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1914, 40, 34);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1915, 40, 35);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1916, 40, 36);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1917, 40, 37);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1918, 40, 38);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1919, 40, 39);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1920, 40, 40);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1921, 40, 41);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1922, 41, 1);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1923, 41, 2);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1924, 41, 3);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1925, 41, 4);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1926, 41, 5);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1927, 41, 6);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1928, 41, 7);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1929, 41, 8);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1930, 41, 9);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1931, 41, 10);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1932, 41, 11);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1933, 41, 12);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1934, 41, 13);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1935, 41, 14);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1936, 41, 15);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1937, 41, 16);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1938, 41, 17);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1939, 41, 18);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1940, 41, 19);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1941, 41, 20);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1942, 41, 21);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1943, 41, 22);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1944, 41, 23);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1945, 41, 24);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1946, 41, 25);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1947, 41, 26);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1948, 41, 27);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1949, 41, 28);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1950, 41, 29);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1951, 41, 30);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1952, 41, 31);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1953, 41, 32);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1954, 41, 33);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1955, 41, 34);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1956, 41, 35);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1957, 41, 36);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1958, 41, 37);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1959, 41, 38);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1960, 41, 39);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1961, 41, 40);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1962, 41, 41);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1963, 42, 1);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1964, 42, 2);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1965, 42, 3);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1966, 42, 4);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1967, 42, 5);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1968, 42, 6);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1969, 42, 7);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1970, 42, 8);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1971, 42, 9);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1972, 42, 10);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1973, 42, 11);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1974, 42, 12);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1975, 42, 13);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1976, 42, 14);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1977, 42, 15);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1978, 42, 16);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1979, 42, 17);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1980, 42, 18);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1981, 42, 19);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1982, 42, 20);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1983, 42, 21);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1984, 42, 22);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1985, 42, 23);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1986, 42, 24);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1987, 42, 25);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1988, 42, 26);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1989, 42, 27);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1990, 42, 28);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1991, 42, 29);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1992, 42, 30);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1993, 42, 31);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1994, 42, 32);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1995, 42, 33);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1996, 42, 34);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1997, 42, 35);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1998, 42, 36);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (1999, 42, 37);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2000, 42, 38);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2001, 42, 39);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2002, 42, 40);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2003, 42, 41);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2004, 43, 1);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2005, 43, 2);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2006, 43, 3);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2007, 43, 4);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2008, 43, 5);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2009, 43, 6);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2010, 43, 7);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2011, 43, 8);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2012, 43, 9);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2013, 43, 10);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2014, 43, 11);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2015, 43, 12);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2016, 43, 13);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2017, 43, 14);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2018, 43, 15);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2019, 43, 16);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2020, 43, 17);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2021, 43, 18);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2022, 43, 19);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2023, 43, 20);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2024, 43, 21);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2025, 43, 22);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2026, 43, 23);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2027, 43, 24);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2028, 43, 25);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2029, 43, 26);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2030, 43, 27);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2031, 43, 28);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2032, 43, 29);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2033, 43, 30);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2034, 43, 31);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2035, 43, 32);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2036, 43, 33);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2037, 43, 34);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2038, 43, 35);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2039, 43, 36);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2040, 43, 37);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2041, 43, 38);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2042, 43, 39);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2043, 43, 40);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2044, 43, 41);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2045, 44, 1);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2046, 44, 2);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2047, 44, 3);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2048, 44, 4);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2049, 44, 5);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2050, 44, 6);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2051, 44, 7);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2052, 44, 8);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2053, 44, 9);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2054, 44, 10);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2055, 44, 11);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2056, 44, 12);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2057, 44, 13);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2058, 44, 14);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2059, 44, 15);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2060, 44, 16);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2061, 44, 17);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2062, 44, 18);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2063, 44, 19);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2064, 44, 20);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2065, 44, 21);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2066, 44, 22);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2067, 44, 23);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2068, 44, 24);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2069, 44, 25);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2070, 44, 26);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2071, 44, 27);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2072, 44, 28);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2073, 44, 29);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2074, 44, 30);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2075, 44, 31);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2076, 44, 32);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2077, 44, 33);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2078, 44, 34);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2079, 44, 35);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2080, 44, 36);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2081, 44, 37);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2082, 44, 38);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2083, 44, 39);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2084, 44, 40);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2085, 44, 41);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2086, 45, 1);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2087, 45, 2);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2088, 45, 3);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2089, 45, 4);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2090, 45, 5);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2091, 45, 6);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2092, 45, 7);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2093, 45, 8);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2094, 45, 9);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2095, 45, 10);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2096, 45, 11);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2097, 45, 12);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2098, 45, 13);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2099, 45, 14);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2100, 45, 15);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2101, 45, 16);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2102, 45, 17);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2103, 45, 18);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2104, 45, 19);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2105, 45, 20);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2106, 45, 21);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2107, 45, 22);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2108, 45, 23);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2109, 45, 24);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2110, 45, 25);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2111, 45, 26);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2112, 45, 27);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2113, 45, 28);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2114, 45, 29);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2115, 45, 30);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2116, 45, 31);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2117, 45, 32);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2118, 45, 33);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2119, 45, 34);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2120, 45, 35);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2121, 45, 36);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2122, 45, 37);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2123, 45, 38);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2124, 45, 39);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2125, 45, 40);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2126, 45, 41);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2127, 46, 1);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2128, 46, 2);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2129, 46, 3);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2130, 46, 4);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2131, 46, 5);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2132, 46, 6);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2133, 46, 7);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2134, 46, 8);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2135, 46, 9);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2136, 46, 10);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2137, 46, 11);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2138, 46, 12);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2139, 46, 13);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2140, 46, 14);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2141, 46, 15);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2142, 46, 16);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2143, 46, 17);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2144, 46, 18);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2145, 46, 19);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2146, 46, 20);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2147, 46, 21);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2148, 46, 22);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2149, 46, 23);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2150, 46, 24);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2151, 46, 25);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2152, 46, 26);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2153, 46, 27);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2154, 46, 28);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2155, 46, 29);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2156, 46, 30);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2157, 46, 31);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2158, 46, 32);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2159, 46, 33);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2160, 46, 34);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2161, 46, 35);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2162, 46, 36);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2163, 46, 37);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2164, 46, 38);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2165, 46, 39);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2166, 46, 40);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2167, 46, 41);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2168, 47, 1);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2169, 47, 2);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2170, 47, 3);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2171, 47, 4);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2172, 47, 5);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2173, 47, 6);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2174, 47, 7);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2175, 47, 8);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2176, 47, 9);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2177, 47, 10);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2178, 47, 11);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2179, 47, 12);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2180, 47, 13);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2181, 47, 14);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2182, 47, 15);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2183, 47, 16);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2184, 47, 17);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2185, 47, 18);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2186, 47, 19);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2187, 47, 20);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2188, 47, 21);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2189, 47, 22);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2190, 47, 23);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2191, 47, 24);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2192, 47, 25);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2193, 47, 26);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2194, 47, 27);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2195, 47, 28);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2196, 47, 29);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2197, 47, 30);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2198, 47, 31);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2199, 47, 32);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2200, 47, 33);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2201, 47, 34);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2202, 47, 35);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2203, 47, 36);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2204, 47, 37);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2205, 47, 38);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2206, 47, 39);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2207, 47, 40);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2208, 47, 41);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2209, 48, 1);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2210, 48, 2);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2211, 48, 3);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2212, 48, 4);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2213, 48, 5);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2214, 48, 6);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2215, 48, 7);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2216, 48, 8);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2217, 48, 9);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2218, 48, 10);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2219, 48, 11);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2220, 48, 12);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2221, 48, 13);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2222, 48, 14);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2223, 48, 15);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2224, 48, 16);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2225, 48, 17);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2226, 48, 18);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2227, 48, 19);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2228, 48, 20);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2229, 48, 21);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2230, 48, 22);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2231, 48, 23);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2232, 48, 24);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2233, 48, 25);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2234, 48, 26);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2235, 48, 27);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2236, 48, 28);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2237, 48, 29);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2238, 48, 30);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2239, 48, 31);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2240, 48, 32);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2241, 48, 33);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2242, 48, 34);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2243, 48, 35);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2244, 48, 36);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2245, 48, 37);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2246, 48, 38);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2247, 48, 39);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2248, 48, 40);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2249, 48, 41);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2250, 49, 1);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2251, 49, 2);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2252, 49, 3);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2253, 49, 4);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2254, 49, 5);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2255, 49, 6);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2256, 49, 7);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2257, 49, 8);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2258, 49, 9);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2259, 49, 10);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2260, 49, 11);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2261, 49, 12);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2262, 49, 13);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2263, 49, 14);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2264, 49, 15);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2265, 49, 16);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2266, 49, 17);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2267, 49, 18);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2268, 49, 19);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2269, 49, 20);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2270, 49, 21);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2271, 49, 22);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2272, 49, 23);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2273, 49, 24);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2274, 49, 25);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2275, 49, 26);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2276, 49, 27);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2277, 49, 28);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2278, 49, 29);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2279, 49, 30);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2280, 49, 31);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2281, 49, 32);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2282, 49, 33);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2283, 49, 34);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2284, 49, 35);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2285, 49, 36);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2286, 49, 37);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2287, 49, 38);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2288, 49, 39);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2289, 49, 40);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2290, 49, 41);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2291, 50, 1);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2292, 50, 2);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2293, 50, 3);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2294, 50, 4);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2295, 50, 5);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2296, 50, 6);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2297, 50, 7);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2298, 50, 8);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2299, 50, 9);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2300, 50, 10);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2301, 50, 11);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2302, 50, 12);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2303, 50, 13);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2304, 50, 14);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2305, 50, 15);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2306, 50, 16);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2307, 50, 17);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2308, 50, 18);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2309, 50, 19);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2310, 50, 20);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2311, 50, 21);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2312, 50, 22);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2313, 50, 23);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2314, 50, 24);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2315, 50, 25);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2316, 50, 26);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2317, 50, 27);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2318, 50, 28);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2319, 50, 29);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2320, 50, 30);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2321, 50, 31);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2322, 50, 32);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2323, 50, 33);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2324, 50, 34);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2325, 50, 35);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2326, 50, 36);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2327, 50, 37);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2328, 50, 38);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2329, 50, 39);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2330, 50, 40);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2331, 50, 41);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2332, 51, 1);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2333, 51, 2);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2334, 51, 3);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2335, 51, 4);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2336, 51, 5);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2337, 51, 6);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2338, 51, 7);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2339, 51, 8);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2340, 51, 9);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2341, 51, 10);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2342, 51, 11);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2343, 51, 12);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2344, 51, 13);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2345, 51, 14);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2346, 51, 15);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2347, 51, 16);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2348, 51, 17);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2349, 51, 18);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2350, 51, 19);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2351, 51, 20);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2352, 51, 21);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2353, 51, 22);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2354, 51, 23);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2355, 51, 24);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2356, 51, 25);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2357, 51, 26);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2358, 51, 27);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2359, 51, 28);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2360, 51, 29);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2361, 51, 30);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2362, 51, 31);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2363, 51, 32);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2364, 51, 33);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2365, 51, 34);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2366, 51, 35);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2367, 51, 36);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2368, 51, 37);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2369, 51, 38);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2370, 51, 39);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2371, 51, 40);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2372, 51, 41);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2373, 52, 1);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2374, 52, 2);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2375, 52, 3);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2376, 52, 4);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2377, 52, 5);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2378, 52, 6);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2379, 52, 7);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2380, 52, 8);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2381, 52, 9);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2382, 52, 10);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2383, 52, 11);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2384, 52, 12);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2385, 52, 13);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2386, 52, 14);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2387, 52, 15);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2388, 52, 16);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2389, 52, 17);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2390, 52, 18);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2391, 52, 19);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2392, 52, 20);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2393, 52, 21);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2394, 52, 22);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2395, 52, 23);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2396, 52, 24);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2397, 52, 25);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2398, 52, 26);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2399, 52, 27);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2400, 52, 28);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2401, 52, 29);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2402, 52, 30);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2403, 52, 31);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2404, 52, 32);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2405, 52, 33);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2406, 52, 34);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2407, 52, 35);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2408, 52, 36);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2409, 52, 37);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2410, 52, 38);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2411, 52, 39);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2412, 52, 40);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2413, 52, 41);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2414, 53, 1);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2415, 53, 2);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2416, 53, 3);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2417, 53, 4);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2418, 53, 5);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2419, 53, 6);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2420, 53, 7);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2421, 53, 8);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2422, 53, 9);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2423, 53, 10);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2424, 53, 11);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2425, 53, 12);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2426, 53, 13);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2427, 53, 14);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2428, 53, 15);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2429, 53, 16);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2430, 53, 17);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2431, 53, 18);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2432, 53, 19);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2433, 53, 20);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2434, 53, 21);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2435, 53, 22);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2436, 53, 23);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2437, 53, 24);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2438, 53, 25);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2439, 53, 26);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2440, 53, 27);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2441, 53, 28);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2442, 53, 29);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2443, 53, 30);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2444, 53, 31);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2445, 53, 32);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2446, 53, 33);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2447, 53, 34);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2448, 53, 35);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2449, 53, 36);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2450, 53, 37);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2451, 53, 38);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2452, 53, 39);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2453, 53, 40);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2454, 53, 41);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2455, 54, 1);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2456, 54, 2);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2457, 54, 3);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2458, 54, 4);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2459, 54, 5);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2460, 54, 6);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2461, 54, 7);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2462, 54, 8);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2463, 54, 9);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2464, 54, 10);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2465, 54, 11);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2466, 54, 12);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2467, 54, 13);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2468, 54, 14);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2469, 54, 15);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2470, 54, 16);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2471, 54, 17);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2472, 54, 18);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2473, 54, 19);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2474, 54, 20);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2475, 54, 21);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2476, 54, 22);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2477, 54, 23);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2478, 54, 24);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2479, 54, 25);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2480, 54, 26);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2481, 54, 27);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2482, 54, 28);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2483, 54, 29);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2484, 54, 30);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2485, 54, 31);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2486, 54, 32);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2487, 54, 33);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2488, 54, 34);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2489, 54, 35);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2490, 54, 36);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2491, 54, 37);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2492, 54, 38);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2493, 54, 39);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2494, 54, 40);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2495, 54, 41);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2496, 55, 1);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2497, 55, 2);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2498, 55, 3);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2499, 55, 4);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2500, 55, 5);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2501, 55, 6);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2502, 55, 7);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2503, 55, 8);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2504, 55, 9);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2505, 55, 10);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2506, 55, 11);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2507, 55, 12);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2508, 55, 13);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2509, 55, 14);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2510, 55, 15);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2511, 55, 16);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2512, 55, 17);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2513, 55, 18);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2514, 55, 19);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2515, 55, 20);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2516, 55, 21);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2517, 55, 22);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2518, 55, 23);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2519, 55, 24);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2520, 55, 25);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2521, 55, 26);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2522, 55, 27);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2523, 55, 28);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2524, 55, 29);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2525, 55, 30);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2526, 55, 31);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2527, 55, 32);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2528, 55, 33);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2529, 55, 34);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2530, 55, 35);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2531, 55, 36);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2532, 55, 37);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2533, 55, 38);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2534, 55, 39);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2535, 55, 40);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2536, 55, 41);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2537, 56, 1);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2538, 56, 2);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2539, 56, 3);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2540, 56, 4);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2541, 56, 5);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2542, 56, 6);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2543, 56, 7);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2544, 56, 8);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2545, 56, 9);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2546, 56, 10);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2547, 56, 11);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2548, 56, 12);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2549, 56, 13);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2550, 56, 14);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2551, 56, 15);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2552, 56, 16);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2553, 56, 17);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2554, 56, 18);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2555, 56, 19);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2556, 56, 20);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2557, 56, 21);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2558, 56, 22);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2559, 56, 23);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2560, 56, 24);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2561, 56, 25);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2562, 56, 26);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2563, 56, 27);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2564, 56, 28);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2565, 56, 29);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2566, 56, 30);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2567, 56, 31);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2568, 56, 32);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2569, 56, 33);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2570, 56, 34);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2571, 56, 35);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2572, 56, 36);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2573, 56, 37);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2574, 56, 38);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2575, 56, 39);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2576, 56, 40);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2577, 56, 41);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2578, 57, 1);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2579, 57, 2);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2580, 57, 3);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2581, 57, 4);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2582, 57, 5);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2583, 57, 6);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2584, 57, 7);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2585, 57, 8);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2586, 57, 9);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2587, 57, 10);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2588, 57, 11);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2589, 57, 12);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2590, 57, 13);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2591, 57, 14);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2592, 57, 15);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2593, 57, 16);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2594, 57, 17);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2595, 57, 18);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2596, 57, 19);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2597, 57, 20);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2598, 57, 21);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2599, 57, 22);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2600, 57, 23);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2601, 57, 24);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2602, 57, 25);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2603, 57, 26);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2604, 57, 27);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2605, 57, 28);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2606, 57, 29);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2607, 57, 30);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2608, 57, 31);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2609, 57, 32);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2610, 57, 33);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2611, 57, 34);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2612, 57, 35);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2613, 57, 36);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2614, 57, 37);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2615, 57, 38);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2616, 57, 39);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2617, 57, 40);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2618, 57, 41);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2619, 58, 1);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2620, 58, 2);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2621, 58, 3);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2622, 58, 4);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2623, 58, 5);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2624, 58, 6);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2625, 58, 7);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2626, 58, 8);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2627, 58, 9);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2628, 58, 10);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2629, 58, 11);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2630, 58, 12);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2631, 58, 13);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2632, 58, 14);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2633, 58, 15);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2634, 58, 16);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2635, 58, 17);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2636, 58, 18);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2637, 58, 19);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2638, 58, 20);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2639, 58, 21);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2640, 58, 22);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2641, 58, 23);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2642, 58, 24);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2643, 58, 25);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2644, 58, 26);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2645, 58, 27);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2646, 58, 28);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2647, 58, 29);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2648, 58, 30);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2649, 58, 31);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2650, 58, 32);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2651, 58, 33);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2652, 58, 34);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2653, 58, 35);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2654, 58, 36);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2655, 58, 37);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2656, 58, 38);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2657, 58, 39);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2658, 58, 40);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2659, 58, 41);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2660, 59, 1);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2661, 59, 2);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2662, 59, 3);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2663, 59, 4);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2664, 59, 5);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2665, 59, 6);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2666, 59, 7);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2667, 59, 8);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2668, 59, 9);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2669, 59, 10);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2670, 59, 11);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2671, 59, 12);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2672, 59, 13);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2673, 59, 14);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2674, 59, 15);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2675, 59, 16);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2676, 59, 17);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2677, 59, 18);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2678, 59, 19);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2679, 59, 20);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2680, 59, 21);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2681, 59, 22);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2682, 59, 23);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2683, 59, 24);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2684, 59, 25);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2685, 59, 26);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2686, 59, 27);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2687, 59, 28);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2688, 59, 29);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2689, 59, 30);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2690, 59, 31);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2691, 59, 32);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2692, 59, 33);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2693, 59, 34);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2694, 59, 35);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2695, 59, 36);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2696, 59, 37);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2697, 59, 38);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2698, 59, 39);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2699, 59, 40);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2700, 59, 41);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2701, 60, 1);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2702, 60, 2);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2703, 60, 3);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2704, 60, 4);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2705, 60, 5);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2706, 60, 6);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2707, 60, 7);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2708, 60, 8);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2709, 60, 9);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2710, 60, 10);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2711, 60, 11);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2712, 60, 12);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2713, 60, 13);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2714, 60, 14);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2715, 60, 15);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2716, 60, 16);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2717, 60, 17);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2718, 60, 18);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2719, 60, 19);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2720, 60, 20);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2721, 60, 21);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2722, 60, 22);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2723, 60, 23);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2724, 60, 24);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2725, 60, 25);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2726, 60, 26);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2727, 60, 27);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2728, 60, 28);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2729, 60, 29);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2730, 60, 30);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2731, 60, 31);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2732, 60, 32);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2733, 60, 33);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2734, 60, 34);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2735, 60, 35);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2736, 60, 36);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2737, 60, 37);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2738, 60, 38);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2739, 60, 39);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2740, 60, 40);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2741, 60, 41);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2742, 61, 1);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2743, 61, 2);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2744, 61, 3);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2745, 61, 4);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2746, 61, 5);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2747, 61, 6);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2748, 61, 7);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2749, 61, 8);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2750, 61, 9);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2751, 61, 10);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2752, 61, 11);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2753, 61, 12);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2754, 61, 13);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2755, 61, 14);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2756, 61, 15);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2757, 61, 16);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2758, 61, 17);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2759, 61, 18);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2760, 61, 19);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2761, 61, 20);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2762, 61, 21);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2763, 61, 22);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2764, 61, 23);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2765, 61, 24);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2766, 61, 25);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2767, 61, 26);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2768, 61, 27);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2769, 61, 28);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2770, 61, 29);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2771, 61, 30);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2772, 61, 31);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2773, 61, 32);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2774, 61, 33);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2775, 61, 34);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2776, 61, 35);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2777, 61, 36);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2778, 61, 37);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2779, 61, 38);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2780, 61, 39);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2781, 61, 40);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2782, 61, 41);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2783, 62, 1);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2784, 62, 2);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2785, 62, 3);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2786, 62, 4);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2787, 62, 5);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2788, 62, 6);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2789, 62, 7);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2790, 62, 8);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2791, 62, 9);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2792, 62, 10);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2793, 62, 11);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2794, 62, 12);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2795, 62, 13);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2796, 62, 14);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2797, 62, 15);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2798, 62, 16);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2799, 62, 17);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2800, 62, 18);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2801, 62, 19);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2802, 62, 20);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2803, 62, 21);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2804, 62, 22);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2805, 62, 23);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2806, 62, 24);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2807, 62, 25);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2808, 62, 26);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2809, 62, 27);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2810, 62, 28);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2811, 62, 29);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2812, 62, 30);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2813, 62, 31);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2814, 62, 32);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2815, 62, 33);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2816, 62, 34);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2817, 62, 35);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2818, 62, 36);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2819, 62, 37);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2820, 62, 38);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2821, 62, 39);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2822, 62, 40);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2823, 62, 41);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2824, 63, 1);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2825, 63, 2);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2826, 63, 3);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2827, 63, 4);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2828, 63, 5);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2829, 63, 6);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2830, 63, 7);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2831, 63, 8);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2832, 63, 9);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2833, 63, 10);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2834, 63, 11);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2835, 63, 12);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2836, 63, 13);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2837, 63, 14);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2838, 63, 15);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2839, 63, 16);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2840, 63, 17);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2841, 63, 18);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2842, 63, 19);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2843, 63, 20);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2844, 63, 21);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2845, 63, 22);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2846, 63, 23);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2847, 63, 24);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2848, 63, 25);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2849, 63, 26);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2850, 63, 27);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2851, 63, 28);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2852, 63, 29);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2853, 63, 30);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2854, 63, 31);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2855, 63, 32);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2856, 63, 33);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2857, 63, 34);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2858, 63, 35);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2859, 63, 36);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2860, 63, 37);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2861, 63, 38);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2862, 63, 39);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2863, 63, 40);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2864, 63, 41);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2865, 64, 1);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2866, 64, 2);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2867, 64, 3);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2868, 64, 4);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2869, 64, 5);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2870, 64, 6);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2871, 64, 7);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2872, 64, 8);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2873, 64, 9);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2874, 64, 10);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2875, 64, 11);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2876, 64, 12);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2877, 64, 13);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2878, 64, 14);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2879, 64, 15);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2880, 64, 16);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2881, 64, 17);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2882, 64, 18);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2883, 64, 19);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2884, 64, 20);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2885, 64, 21);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2886, 64, 22);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2887, 64, 23);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2888, 64, 24);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2889, 64, 25);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2890, 64, 26);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2891, 64, 27);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2892, 64, 28);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2893, 64, 29);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2894, 64, 30);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2895, 64, 31);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2896, 64, 32);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2897, 64, 33);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2898, 64, 34);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2899, 64, 35);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2900, 64, 36);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2901, 64, 37);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2902, 64, 38);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2903, 64, 39);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2904, 64, 40);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2905, 64, 41);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2906, 65, 1);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2907, 65, 2);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2908, 65, 3);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2909, 65, 4);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2910, 65, 5);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2911, 65, 6);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2912, 65, 7);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2913, 65, 8);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2914, 65, 9);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2915, 65, 10);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2916, 65, 11);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2917, 65, 12);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2918, 65, 13);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2919, 65, 14);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2920, 65, 15);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2921, 65, 16);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2922, 65, 17);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2923, 65, 18);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2924, 65, 19);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2925, 65, 20);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2926, 65, 21);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2927, 65, 22);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2928, 65, 23);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2929, 65, 24);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2930, 65, 25);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2931, 65, 26);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2932, 65, 27);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2933, 65, 28);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2934, 65, 29);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2935, 65, 30);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2936, 65, 31);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2937, 65, 32);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2938, 65, 33);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2939, 65, 34);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2940, 65, 35);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2941, 65, 36);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2942, 65, 37);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2943, 65, 38);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2944, 65, 39);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2945, 65, 40);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2946, 65, 41);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2947, 66, 1);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2948, 66, 2);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2949, 66, 3);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2950, 66, 4);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2951, 66, 5);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2952, 66, 6);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2953, 66, 7);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2954, 66, 8);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2955, 66, 9);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2956, 66, 10);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2957, 66, 11);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2958, 66, 12);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2959, 66, 13);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2960, 66, 14);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2961, 66, 15);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2962, 66, 16);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2963, 66, 17);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2964, 66, 18);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2965, 66, 19);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2966, 66, 20);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2967, 66, 21);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2968, 66, 22);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2969, 66, 23);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2970, 66, 24);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2971, 66, 25);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2972, 66, 26);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2973, 66, 27);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2974, 66, 28);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2975, 66, 29);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2976, 66, 30);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2977, 66, 31);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2978, 66, 32);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2979, 66, 33);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2980, 66, 34);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2981, 66, 35);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2982, 66, 36);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2983, 66, 37);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2984, 66, 38);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2985, 66, 39);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2986, 66, 40);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2987, 66, 41);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2988, 67, 1);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2989, 67, 2);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2990, 67, 3);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2991, 67, 4);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2992, 67, 5);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2993, 67, 6);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2994, 67, 7);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2995, 67, 8);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2996, 67, 9);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2997, 67, 10);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2998, 67, 11);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (2999, 67, 12);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3000, 67, 13);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3001, 67, 14);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3002, 67, 15);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3003, 67, 16);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3004, 67, 17);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3005, 67, 18);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3006, 67, 19);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3007, 67, 20);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3008, 67, 21);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3009, 67, 22);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3010, 67, 23);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3011, 67, 24);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3012, 67, 25);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3013, 67, 26);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3014, 67, 27);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3015, 67, 28);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3016, 67, 29);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3017, 67, 30);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3018, 67, 31);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3019, 67, 32);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3020, 67, 33);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3021, 67, 34);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3022, 67, 35);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3023, 67, 36);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3024, 67, 37);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3025, 67, 38);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3026, 67, 39);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3027, 67, 40);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3028, 67, 41);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3029, 68, 1);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3030, 68, 2);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3031, 68, 3);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3032, 68, 4);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3033, 68, 5);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3034, 68, 6);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3035, 68, 7);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3036, 68, 8);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3037, 68, 9);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3038, 68, 10);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3039, 68, 11);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3040, 68, 12);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3041, 68, 13);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3042, 68, 14);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3043, 68, 15);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3044, 68, 16);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3045, 68, 17);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3046, 68, 18);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3047, 68, 19);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3048, 68, 20);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3049, 68, 21);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3050, 68, 22);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3051, 68, 23);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3052, 68, 24);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3053, 68, 25);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3054, 68, 26);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3055, 68, 27);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3056, 68, 28);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3057, 68, 29);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3058, 68, 30);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3059, 68, 31);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3060, 68, 32);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3061, 68, 33);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3062, 68, 34);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3063, 68, 35);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3064, 68, 36);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3065, 68, 37);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3066, 68, 38);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3067, 68, 39);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3068, 68, 40);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3069, 68, 41);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3070, 69, 1);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3071, 69, 2);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3072, 69, 3);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3073, 69, 4);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3074, 69, 5);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3075, 69, 6);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3076, 69, 7);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3077, 69, 8);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3078, 69, 9);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3079, 69, 10);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3080, 69, 11);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3081, 69, 12);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3082, 69, 13);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3083, 69, 14);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3084, 69, 15);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3085, 69, 16);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3086, 69, 17);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3087, 69, 18);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3088, 69, 19);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3089, 69, 20);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3090, 69, 21);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3091, 69, 22);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3092, 69, 23);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3093, 69, 24);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3094, 69, 25);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3095, 69, 26);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3096, 69, 27);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3097, 69, 28);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3098, 69, 29);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3099, 69, 30);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3100, 69, 31);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3101, 69, 32);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3102, 69, 33);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3103, 69, 34);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3104, 69, 35);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3105, 69, 36);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3106, 69, 37);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3107, 69, 38);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3108, 69, 39);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3109, 69, 40);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3110, 69, 41);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3111, 70, 1);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3112, 70, 2);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3113, 70, 3);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3114, 70, 4);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3115, 70, 5);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3116, 70, 6);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3117, 70, 7);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3118, 70, 8);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3119, 70, 9);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3120, 70, 10);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3121, 70, 11);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3122, 70, 12);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3123, 70, 13);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3124, 70, 14);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3125, 70, 15);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3126, 70, 16);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3127, 70, 17);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3128, 70, 18);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3129, 70, 19);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3130, 70, 20);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3131, 70, 21);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3132, 70, 22);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3133, 70, 23);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3134, 70, 24);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3135, 70, 25);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3136, 70, 26);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3137, 70, 27);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3138, 70, 28);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3139, 70, 29);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3140, 70, 30);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3141, 70, 31);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3142, 70, 32);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3143, 70, 33);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3144, 70, 34);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3145, 70, 35);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3146, 70, 36);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3147, 70, 37);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3148, 70, 38);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3149, 70, 39);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3150, 70, 40);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3151, 70, 41);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3152, 71, 1);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3153, 71, 2);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3154, 71, 3);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3155, 71, 4);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3156, 71, 5);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3157, 71, 6);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3158, 71, 7);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3159, 71, 8);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3160, 71, 9);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3161, 71, 10);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3162, 71, 11);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3163, 71, 12);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3164, 71, 13);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3165, 71, 14);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3166, 71, 15);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3167, 71, 16);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3168, 71, 17);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3169, 71, 18);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3170, 71, 19);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3171, 71, 20);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3172, 71, 21);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3173, 71, 22);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3174, 71, 23);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3175, 71, 24);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3176, 71, 25);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3177, 71, 26);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3178, 71, 27);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3179, 71, 28);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3180, 71, 29);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3181, 71, 30);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3182, 71, 31);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3183, 71, 32);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3184, 71, 33);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3185, 71, 34);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3186, 71, 35);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3187, 71, 36);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3188, 71, 37);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3189, 71, 38);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3190, 71, 39);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3191, 71, 40);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3192, 71, 41);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3193, 72, 1);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3194, 72, 2);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3195, 72, 3);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3196, 72, 4);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3197, 72, 5);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3198, 72, 6);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3199, 72, 7);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3200, 72, 8);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3201, 72, 9);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3202, 72, 10);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3203, 72, 11);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3204, 72, 12);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3205, 72, 13);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3206, 72, 14);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3207, 72, 15);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3208, 72, 16);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3209, 72, 17);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3210, 72, 18);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3211, 72, 19);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3212, 72, 20);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3213, 72, 21);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3214, 72, 22);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3215, 72, 23);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3216, 72, 24);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3217, 72, 25);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3218, 72, 26);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3219, 72, 27);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3220, 72, 28);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3221, 72, 29);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3222, 72, 30);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3223, 72, 31);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3224, 72, 32);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3225, 72, 33);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3226, 72, 34);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3227, 72, 35);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3228, 72, 36);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3229, 72, 37);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3230, 72, 38);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3231, 72, 39);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3232, 72, 40);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3233, 72, 41);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3234, 73, 1);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3235, 73, 2);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3236, 73, 3);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3237, 73, 4);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3238, 73, 5);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3239, 73, 6);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3240, 73, 7);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3241, 73, 8);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3242, 73, 9);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3243, 73, 10);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3244, 73, 11);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3245, 73, 12);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3246, 73, 13);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3247, 73, 14);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3248, 73, 15);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3249, 73, 16);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3250, 73, 17);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3251, 73, 18);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3252, 73, 19);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3253, 73, 20);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3254, 73, 21);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3255, 73, 22);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3256, 73, 23);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3257, 73, 24);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3258, 73, 25);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3259, 73, 26);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3260, 73, 27);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3261, 73, 28);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3262, 73, 29);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3263, 73, 30);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3264, 73, 31);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3265, 73, 32);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3266, 73, 33);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3267, 73, 34);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3268, 73, 35);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3269, 73, 36);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3270, 73, 37);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3271, 73, 38);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3272, 73, 39);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3273, 73, 40);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3274, 73, 41);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3275, 74, 1);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3276, 74, 2);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3277, 74, 3);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3278, 74, 4);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3279, 74, 5);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3280, 74, 6);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3281, 74, 7);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3282, 74, 8);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3283, 74, 9);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3284, 74, 10);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3285, 74, 11);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3286, 74, 12);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3287, 74, 13);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3288, 74, 14);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3289, 74, 15);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3290, 74, 16);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3291, 74, 17);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3292, 74, 18);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3293, 74, 19);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3294, 74, 20);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3295, 74, 21);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3296, 74, 22);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3297, 74, 23);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3298, 74, 24);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3299, 74, 25);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3300, 74, 26);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3301, 74, 27);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3302, 74, 28);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3303, 74, 29);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3304, 74, 30);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3305, 74, 31);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3306, 74, 32);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3307, 74, 33);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3308, 74, 34);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3309, 74, 35);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3310, 74, 36);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3311, 74, 37);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3312, 74, 38);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3313, 74, 39);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3314, 74, 40);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3315, 74, 41);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3316, 75, 1);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3317, 75, 2);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3318, 75, 3);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3319, 75, 4);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3320, 75, 5);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3321, 75, 6);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3322, 75, 7);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3323, 75, 8);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3324, 75, 9);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3325, 75, 10);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3326, 75, 11);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3327, 75, 12);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3328, 75, 13);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3329, 75, 14);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3330, 75, 15);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3331, 75, 16);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3332, 75, 17);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3333, 75, 18);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3334, 75, 19);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3335, 75, 20);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3336, 75, 21);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3337, 75, 22);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3338, 75, 23);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3339, 75, 24);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3340, 75, 25);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3341, 75, 26);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3342, 75, 27);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3343, 75, 28);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3344, 75, 29);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3345, 75, 30);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3346, 75, 31);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3347, 75, 32);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3348, 75, 33);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3349, 75, 34);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3350, 75, 35);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3351, 75, 36);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3352, 75, 37);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3353, 75, 38);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3354, 75, 39);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3355, 75, 40);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3356, 75, 41);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3357, 76, 1);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3358, 76, 2);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3359, 76, 3);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3360, 76, 4);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3361, 76, 5);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3362, 76, 6);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3363, 76, 7);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3364, 76, 8);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3365, 76, 9);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3366, 76, 10);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3367, 76, 11);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3368, 76, 12);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3369, 76, 13);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3370, 76, 14);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3371, 76, 15);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3372, 76, 16);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3373, 76, 17);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3374, 76, 18);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3375, 76, 19);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3376, 76, 20);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3377, 76, 21);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3378, 76, 22);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3379, 76, 23);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3380, 76, 24);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3381, 76, 25);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3382, 76, 26);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3383, 76, 27);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3384, 76, 28);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3385, 76, 29);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3386, 76, 30);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3387, 76, 31);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3388, 76, 32);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3389, 76, 33);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3390, 76, 34);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3391, 76, 35);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3392, 76, 36);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3393, 76, 37);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3394, 76, 38);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3395, 76, 39);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3396, 76, 40);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3397, 76, 41);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3398, 77, 1);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3399, 77, 2);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3400, 77, 3);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3401, 77, 4);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3402, 77, 5);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3403, 77, 6);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3404, 77, 7);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3405, 77, 8);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3406, 77, 9);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3407, 77, 10);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3408, 77, 11);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3409, 77, 12);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3410, 77, 13);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3411, 77, 14);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3412, 77, 15);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3413, 77, 16);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3414, 77, 17);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3415, 77, 18);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3416, 77, 19);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3417, 77, 20);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3418, 77, 21);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3419, 77, 22);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3420, 77, 23);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3421, 77, 24);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3422, 77, 25);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3423, 77, 26);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3424, 77, 27);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3425, 77, 28);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3426, 77, 29);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3427, 77, 30);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3428, 77, 31);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3429, 77, 32);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3430, 77, 33);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3431, 77, 34);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3432, 77, 35);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3433, 77, 36);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3434, 77, 37);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3435, 77, 38);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3436, 77, 39);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3437, 77, 40);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3438, 77, 41);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3439, 78, 1);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3440, 78, 2);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3441, 78, 3);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3442, 78, 4);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3443, 78, 5);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3444, 78, 6);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3445, 78, 7);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3446, 78, 8);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3447, 78, 9);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3448, 78, 10);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3449, 78, 11);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3450, 78, 12);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3451, 78, 13);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3452, 78, 14);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3453, 78, 15);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3454, 78, 16);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3455, 78, 17);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3456, 78, 18);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3457, 78, 19);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3458, 78, 20);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3459, 78, 21);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3460, 78, 22);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3461, 78, 23);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3462, 78, 24);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3463, 78, 25);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3464, 78, 26);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3465, 78, 27);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3466, 78, 28);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3467, 78, 29);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3468, 78, 30);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3469, 78, 31);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3470, 78, 32);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3471, 78, 33);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3472, 78, 34);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3473, 78, 35);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3474, 78, 36);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3475, 78, 37);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3476, 78, 38);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3477, 78, 39);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3478, 78, 40);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3479, 78, 41);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3480, 79, 1);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3481, 79, 2);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3482, 79, 3);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3483, 79, 4);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3484, 79, 5);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3485, 79, 6);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3486, 79, 7);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3487, 79, 8);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3488, 79, 9);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3489, 79, 10);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3490, 79, 11);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3491, 79, 12);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3492, 79, 13);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3493, 79, 14);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3494, 79, 15);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3495, 79, 16);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3496, 79, 17);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3497, 79, 18);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3498, 79, 19);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3499, 79, 20);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3500, 79, 21);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3501, 79, 22);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3502, 79, 23);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3503, 79, 24);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3504, 79, 25);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3505, 79, 26);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3506, 79, 27);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3507, 79, 28);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3508, 79, 29);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3509, 79, 30);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3510, 79, 31);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3511, 79, 32);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3512, 79, 33);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3513, 79, 34);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3514, 79, 35);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3515, 79, 36);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3516, 79, 37);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3517, 79, 38);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3518, 79, 39);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3519, 79, 40);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3520, 79, 41);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3521, 80, 1);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3522, 80, 2);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3523, 80, 3);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3524, 80, 4);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3525, 80, 5);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3526, 80, 6);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3527, 80, 7);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3528, 80, 8);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3529, 80, 9);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3530, 80, 10);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3531, 80, 11);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3532, 80, 12);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3533, 80, 13);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3534, 80, 14);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3535, 80, 15);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3536, 80, 16);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3537, 80, 17);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3538, 80, 18);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3539, 80, 19);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3540, 80, 20);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3541, 80, 21);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3542, 80, 22);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3543, 80, 23);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3544, 80, 24);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3545, 80, 25);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3546, 80, 26);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3547, 80, 27);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3548, 80, 28);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3549, 80, 29);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3550, 80, 30);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3551, 80, 31);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3552, 80, 32);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3553, 80, 33);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3554, 80, 34);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3555, 80, 35);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3556, 80, 36);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3557, 80, 37);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3558, 80, 38);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3559, 80, 39);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3560, 80, 40);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3561, 80, 41);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3562, 81, 1);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3563, 81, 2);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3564, 81, 3);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3565, 81, 4);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3566, 81, 5);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3567, 81, 6);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3568, 81, 7);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3569, 81, 8);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3570, 81, 9);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3571, 81, 10);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3572, 81, 11);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3573, 81, 12);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3574, 81, 13);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3575, 81, 14);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3576, 81, 15);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3577, 81, 16);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3578, 81, 17);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3579, 81, 18);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3580, 81, 19);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3581, 81, 20);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3582, 81, 21);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3583, 81, 22);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3584, 81, 23);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3585, 81, 24);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3586, 81, 25);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3587, 81, 26);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3588, 81, 27);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3589, 81, 28);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3590, 81, 29);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3591, 81, 30);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3592, 81, 31);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3593, 81, 32);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3594, 81, 33);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3595, 81, 34);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3596, 81, 35);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3597, 81, 36);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3598, 81, 37);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3599, 81, 38);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3600, 81, 39);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3601, 81, 40);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3602, 81, 41);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3603, 82, 1);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3604, 82, 2);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3605, 82, 3);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3606, 82, 4);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3607, 82, 5);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3608, 82, 6);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3609, 82, 7);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3610, 82, 8);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3611, 82, 9);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3612, 82, 10);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3613, 82, 11);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3614, 82, 12);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3615, 82, 13);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3616, 82, 14);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3617, 82, 15);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3618, 82, 16);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3619, 82, 17);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3620, 82, 18);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3621, 82, 19);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3622, 82, 20);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3623, 82, 21);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3624, 82, 22);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3625, 82, 23);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3626, 82, 24);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3627, 82, 25);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3628, 82, 26);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3629, 82, 27);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3630, 82, 28);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3631, 82, 29);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3632, 82, 30);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3633, 82, 31);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3634, 82, 32);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3635, 82, 33);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3636, 82, 34);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3637, 82, 35);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3638, 82, 36);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3639, 82, 37);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3640, 82, 38);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3641, 82, 39);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3642, 82, 40);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3643, 82, 41);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3644, 83, 1);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3645, 83, 2);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3646, 83, 3);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3647, 83, 4);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3648, 83, 5);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3649, 83, 6);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3650, 83, 7);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3651, 83, 8);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3652, 83, 9);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3653, 83, 10);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3654, 83, 11);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3655, 83, 12);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3656, 83, 13);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3657, 83, 14);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3658, 83, 15);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3659, 83, 16);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3660, 83, 17);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3661, 83, 18);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3662, 83, 19);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3663, 83, 20);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3664, 83, 21);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3665, 83, 22);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3666, 83, 23);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3667, 83, 24);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3668, 83, 25);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3669, 83, 26);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3670, 83, 27);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3671, 83, 28);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3672, 83, 29);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3673, 83, 30);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3674, 83, 31);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3675, 83, 32);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3676, 83, 33);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3677, 83, 34);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3678, 83, 35);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3679, 83, 36);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3680, 83, 37);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3681, 83, 38);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3682, 83, 39);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3683, 83, 40);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3684, 83, 41);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3685, 84, 1);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3686, 84, 2);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3687, 84, 3);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3688, 84, 4);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3689, 84, 5);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3690, 84, 6);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3691, 84, 7);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3692, 84, 8);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3693, 84, 9);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3694, 84, 10);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3695, 84, 11);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3696, 84, 12);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3697, 84, 13);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3698, 84, 14);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3699, 84, 15);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3700, 84, 16);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3701, 84, 17);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3702, 84, 18);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3703, 84, 19);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3704, 84, 20);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3705, 84, 21);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3706, 84, 22);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3707, 84, 23);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3708, 84, 24);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3709, 84, 25);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3710, 84, 26);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3711, 84, 27);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3712, 84, 28);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3713, 84, 29);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3714, 84, 30);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3715, 84, 31);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3716, 84, 32);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3717, 84, 33);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3718, 84, 34);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3719, 84, 35);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3720, 84, 36);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3721, 84, 37);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3722, 84, 38);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3723, 84, 39);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3724, 84, 40);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3725, 84, 41);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3726, 85, 1);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3727, 85, 2);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3728, 85, 3);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3729, 85, 4);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3730, 85, 5);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3731, 85, 6);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3732, 85, 7);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3733, 85, 8);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3734, 85, 9);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3735, 85, 10);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3736, 85, 11);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3737, 85, 12);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3738, 85, 13);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3739, 85, 14);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3740, 85, 15);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3741, 85, 16);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3742, 85, 17);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3743, 85, 18);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3744, 85, 19);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3745, 85, 20);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3746, 85, 21);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3747, 85, 22);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3748, 85, 23);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3749, 85, 24);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3750, 85, 25);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3751, 85, 26);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3752, 85, 27);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3753, 85, 28);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3754, 85, 29);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3755, 85, 30);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3756, 85, 31);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3757, 85, 32);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3758, 85, 33);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3759, 85, 34);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3760, 85, 35);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3761, 85, 36);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3762, 85, 37);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3763, 85, 38);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3764, 85, 39);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3765, 85, 40);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3766, 85, 41);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3767, 86, 1);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3768, 86, 2);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3769, 86, 3);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3770, 86, 4);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3771, 86, 5);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3772, 86, 6);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3773, 86, 7);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3774, 86, 8);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3775, 86, 9);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3776, 86, 10);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3777, 86, 11);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3778, 86, 12);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3779, 86, 13);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3780, 86, 14);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3781, 86, 15);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3782, 86, 16);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3783, 86, 17);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3784, 86, 18);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3785, 86, 19);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3786, 86, 20);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3787, 86, 21);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3788, 86, 22);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3789, 86, 23);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3790, 86, 24);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3791, 86, 25);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3792, 86, 26);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3793, 86, 27);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3794, 86, 28);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3795, 86, 29);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3796, 86, 30);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3797, 86, 31);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3798, 86, 32);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3799, 86, 33);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3800, 86, 34);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3801, 86, 35);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3802, 86, 36);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3803, 86, 37);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3804, 86, 38);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3805, 86, 39);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3806, 86, 40);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3807, 86, 41);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3808, 87, 1);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3809, 87, 2);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3810, 87, 3);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3811, 87, 4);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3812, 87, 5);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3813, 87, 6);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3814, 87, 7);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3815, 87, 8);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3816, 87, 9);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3817, 87, 10);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3818, 87, 11);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3819, 87, 12);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3820, 87, 13);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3821, 87, 14);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3822, 87, 15);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3823, 87, 16);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3824, 87, 17);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3825, 87, 18);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3826, 87, 19);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3827, 87, 20);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3828, 87, 21);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3829, 87, 22);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3830, 87, 23);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3831, 87, 24);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3832, 87, 25);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3833, 87, 26);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3834, 87, 27);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3835, 87, 28);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3836, 87, 29);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3837, 87, 30);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3838, 87, 31);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3839, 87, 32);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3840, 87, 33);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3841, 87, 34);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3842, 87, 35);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3843, 87, 36);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3844, 87, 37);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3845, 87, 38);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3846, 87, 39);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3847, 87, 40);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3848, 87, 41);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3849, 88, 1);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3850, 88, 2);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3851, 88, 3);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3852, 88, 4);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3853, 88, 5);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3854, 88, 6);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3855, 88, 7);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3856, 88, 8);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3857, 88, 9);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3858, 88, 10);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3859, 88, 11);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3860, 88, 12);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3861, 88, 13);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3862, 88, 14);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3863, 88, 15);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3864, 88, 16);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3865, 88, 17);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3866, 88, 18);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3867, 88, 19);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3868, 88, 20);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3869, 88, 21);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3870, 88, 22);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3871, 88, 23);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3872, 88, 24);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3873, 88, 25);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3874, 88, 26);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3875, 88, 27);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3876, 88, 28);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3877, 88, 29);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3878, 88, 30);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3879, 88, 31);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3880, 88, 32);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3881, 88, 33);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3882, 88, 34);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3883, 88, 35);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3884, 88, 36);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3885, 88, 37);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3886, 88, 38);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3887, 88, 39);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3888, 88, 40);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3889, 88, 41);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3890, 89, 1);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3891, 89, 2);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3892, 89, 3);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3893, 89, 4);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3894, 89, 5);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3895, 89, 6);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3896, 89, 7);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3897, 89, 8);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3898, 89, 9);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3899, 89, 10);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3900, 89, 11);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3901, 89, 12);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3902, 89, 13);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3903, 89, 14);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3904, 89, 15);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3905, 89, 16);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3906, 89, 17);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3907, 89, 18);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3908, 89, 19);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3909, 89, 20);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3910, 89, 21);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3911, 89, 22);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3912, 89, 23);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3913, 89, 24);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3914, 89, 25);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3915, 89, 26);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3916, 89, 27);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3917, 89, 28);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3918, 89, 29);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3919, 89, 30);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3920, 89, 31);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3921, 89, 32);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3922, 89, 33);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3923, 89, 34);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3924, 89, 35);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3925, 89, 36);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3926, 89, 37);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3927, 89, 38);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3928, 89, 39);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3929, 89, 40);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3930, 89, 41);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3931, 90, 1);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3932, 90, 2);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3933, 90, 3);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3934, 90, 4);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3935, 90, 5);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3936, 90, 6);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3937, 90, 7);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3938, 90, 8);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3939, 90, 9);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3940, 90, 10);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3941, 90, 11);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3942, 90, 12);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3943, 90, 13);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3944, 90, 14);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3945, 90, 15);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3946, 90, 16);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3947, 90, 17);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3948, 90, 18);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3949, 90, 19);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3950, 90, 20);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3951, 90, 21);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3952, 90, 22);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3953, 90, 23);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3954, 90, 24);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3955, 90, 25);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3956, 90, 26);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3957, 90, 27);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3958, 90, 28);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3959, 90, 29);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3960, 90, 30);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3961, 90, 31);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3962, 90, 32);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3963, 90, 33);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3964, 90, 34);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3965, 90, 35);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3966, 90, 36);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3967, 90, 37);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3968, 90, 38);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3969, 90, 39);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3970, 90, 40);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3971, 90, 41);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3972, 91, 1);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3973, 91, 2);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3974, 91, 3);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3975, 91, 4);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3976, 91, 5);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3977, 91, 6);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3978, 91, 7);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3979, 91, 8);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3980, 91, 9);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3981, 91, 10);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3982, 91, 11);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3983, 91, 12);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3984, 91, 13);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3985, 91, 14);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3986, 91, 15);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3987, 91, 16);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3988, 91, 17);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3989, 91, 18);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3990, 91, 19);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3991, 91, 20);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3992, 91, 21);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3993, 91, 22);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3994, 91, 23);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3995, 91, 24);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3996, 91, 25);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3997, 91, 26);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3998, 91, 27);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (3999, 91, 28);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4000, 91, 29);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4001, 91, 30);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4002, 91, 31);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4003, 91, 32);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4004, 91, 33);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4005, 91, 34);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4006, 91, 35);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4007, 91, 36);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4008, 91, 37);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4009, 91, 38);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4010, 91, 39);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4011, 91, 40);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4012, 91, 41);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4013, 92, 1);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4014, 92, 2);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4015, 92, 3);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4016, 92, 4);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4017, 92, 5);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4018, 92, 6);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4019, 92, 7);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4020, 92, 8);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4021, 92, 9);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4022, 92, 10);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4023, 92, 11);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4024, 92, 12);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4025, 92, 13);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4026, 92, 14);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4027, 92, 15);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4028, 92, 16);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4029, 92, 17);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4030, 92, 18);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4031, 92, 19);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4032, 92, 20);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4033, 92, 21);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4034, 92, 22);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4035, 92, 23);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4036, 92, 24);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4037, 92, 25);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4038, 92, 26);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4039, 92, 27);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4040, 92, 28);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4041, 92, 29);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4042, 92, 30);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4043, 92, 31);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4044, 92, 32);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4045, 92, 33);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4046, 92, 34);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4047, 92, 35);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4048, 92, 36);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4049, 92, 37);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4050, 92, 38);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4051, 92, 39);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4052, 92, 40);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4053, 92, 41);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4054, 93, 1);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4055, 93, 2);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4056, 93, 3);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4057, 93, 4);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4058, 93, 5);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4059, 93, 6);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4060, 93, 7);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4061, 93, 8);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4062, 93, 9);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4063, 93, 10);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4064, 93, 11);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4065, 93, 12);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4066, 93, 13);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4067, 93, 14);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4068, 93, 15);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4069, 93, 16);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4070, 93, 17);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4071, 93, 18);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4072, 93, 19);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4073, 93, 20);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4074, 93, 21);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4075, 93, 22);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4076, 93, 23);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4077, 93, 24);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4078, 93, 25);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4079, 93, 26);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4080, 93, 27);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4081, 93, 28);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4082, 93, 29);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4083, 93, 30);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4084, 93, 31);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4085, 93, 32);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4086, 93, 33);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4087, 93, 34);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4088, 93, 35);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4089, 93, 36);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4090, 93, 37);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4091, 93, 38);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4092, 93, 39);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4093, 93, 40);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4094, 93, 41);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4095, 94, 1);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4096, 94, 2);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4097, 94, 3);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4098, 94, 4);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4099, 94, 5);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4100, 94, 6);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4101, 94, 7);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4102, 94, 8);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4103, 94, 9);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4104, 94, 10);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4105, 94, 11);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4106, 94, 12);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4107, 94, 13);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4108, 94, 14);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4109, 94, 15);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4110, 94, 16);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4111, 94, 17);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4112, 94, 18);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4113, 94, 19);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4114, 94, 20);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4115, 94, 21);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4116, 94, 22);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4117, 94, 23);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4118, 94, 24);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4119, 94, 25);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4120, 94, 26);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4121, 94, 27);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4122, 94, 28);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4123, 94, 29);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4124, 94, 30);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4125, 94, 31);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4126, 94, 32);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4127, 94, 33);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4128, 94, 34);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4129, 94, 35);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4130, 94, 36);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4131, 94, 37);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4132, 94, 38);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4133, 94, 39);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4134, 94, 40);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4135, 94, 41);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4136, 95, 1);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4137, 95, 2);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4138, 95, 3);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4139, 95, 4);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4140, 95, 5);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4141, 95, 6);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4142, 95, 7);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4143, 95, 8);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4144, 95, 9);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4145, 95, 10);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4146, 95, 11);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4147, 95, 12);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4148, 95, 13);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4149, 95, 14);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4150, 95, 15);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4151, 95, 16);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4152, 95, 17);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4153, 95, 18);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4154, 95, 19);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4155, 95, 20);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4156, 95, 21);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4157, 95, 22);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4158, 95, 23);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4159, 95, 24);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4160, 95, 25);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4161, 95, 26);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4162, 95, 27);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4163, 95, 28);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4164, 95, 29);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4165, 95, 30);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4166, 95, 31);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4167, 95, 32);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4168, 95, 33);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4169, 95, 34);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4170, 95, 35);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4171, 95, 36);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4172, 95, 37);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4173, 95, 38);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4174, 95, 39);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4175, 95, 40);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4176, 95, 41);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4177, 96, 1);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4178, 96, 2);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4179, 96, 3);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4180, 96, 4);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4181, 96, 5);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4182, 96, 6);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4183, 96, 7);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4184, 96, 8);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4185, 96, 9);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4186, 96, 10);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4187, 96, 11);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4188, 96, 12);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4189, 96, 13);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4190, 96, 14);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4191, 96, 15);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4192, 96, 16);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4193, 96, 17);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4194, 96, 18);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4195, 96, 19);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4196, 96, 20);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4197, 96, 21);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4198, 96, 22);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4199, 96, 23);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4200, 96, 24);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4201, 96, 25);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4202, 96, 26);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4203, 96, 27);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4204, 96, 28);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4205, 96, 29);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4206, 96, 30);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4207, 96, 31);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4208, 96, 32);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4209, 96, 33);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4210, 96, 34);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4211, 96, 35);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4212, 96, 36);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4213, 96, 37);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4214, 96, 38);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4215, 96, 39);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4216, 96, 40);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4217, 96, 41);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4218, 97, 1);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4219, 97, 2);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4220, 97, 3);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4221, 97, 4);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4222, 97, 5);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4223, 97, 6);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4224, 97, 7);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4225, 97, 8);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4226, 97, 9);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4227, 97, 10);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4228, 97, 11);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4229, 97, 12);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4230, 97, 13);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4231, 97, 14);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4232, 97, 15);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4233, 97, 16);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4234, 97, 17);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4235, 97, 18);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4236, 97, 19);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4237, 97, 20);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4238, 97, 21);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4239, 97, 22);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4240, 97, 23);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4241, 97, 24);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4242, 97, 25);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4243, 97, 26);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4244, 97, 27);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4245, 97, 28);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4246, 97, 29);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4247, 97, 30);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4248, 97, 31);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4249, 97, 32);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4250, 97, 33);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4251, 97, 34);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4252, 97, 35);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4253, 97, 36);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4254, 97, 37);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4255, 97, 38);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4256, 97, 39);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4257, 97, 40);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4258, 97, 41);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4259, 98, 1);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4260, 98, 2);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4261, 98, 3);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4262, 98, 4);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4263, 98, 5);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4264, 98, 6);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4265, 98, 7);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4266, 98, 8);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4267, 98, 9);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4268, 98, 10);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4269, 98, 11);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4270, 98, 12);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4271, 98, 13);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4272, 98, 14);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4273, 98, 15);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4274, 98, 16);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4275, 98, 17);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4276, 98, 18);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4277, 98, 19);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4278, 98, 20);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4279, 98, 21);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4280, 98, 22);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4281, 98, 23);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4282, 98, 24);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4283, 98, 25);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4284, 98, 26);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4285, 98, 27);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4286, 98, 28);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4287, 98, 29);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4288, 98, 30);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4289, 98, 31);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4290, 98, 32);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4291, 98, 33);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4292, 98, 34);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4293, 98, 35);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4294, 98, 36);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4295, 98, 37);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4296, 98, 38);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4297, 98, 39);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4298, 98, 40);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4299, 98, 41);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4300, 99, 1);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4301, 99, 2);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4302, 99, 3);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4303, 99, 4);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4304, 99, 5);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4305, 99, 6);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4306, 99, 7);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4307, 99, 8);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4308, 99, 9);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4309, 99, 10);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4310, 99, 11);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4311, 99, 12);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4312, 99, 13);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4313, 99, 14);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4314, 99, 15);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4315, 99, 16);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4316, 99, 17);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4317, 99, 18);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4318, 99, 19);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4319, 99, 20);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4320, 99, 21);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4321, 99, 22);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4322, 99, 23);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4323, 99, 24);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4324, 99, 25);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4325, 99, 26);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4326, 99, 27);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4327, 99, 28);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4328, 99, 29);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4329, 99, 30);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4330, 99, 31);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4331, 99, 32);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4332, 99, 33);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4333, 99, 34);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4334, 99, 35);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4335, 99, 36);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4336, 99, 37);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4337, 99, 38);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4338, 99, 39);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4339, 99, 40);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4340, 99, 41);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4341, 100, 1);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4342, 100, 2);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4343, 100, 3);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4344, 100, 4);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4345, 100, 5);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4346, 100, 6);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4347, 100, 7);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4348, 100, 8);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4349, 100, 9);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4350, 100, 10);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4351, 100, 11);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4352, 100, 12);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4353, 100, 13);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4354, 100, 14);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4355, 100, 15);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4356, 100, 16);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4357, 100, 17);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4358, 100, 18);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4359, 100, 19);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4360, 100, 20);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4361, 100, 21);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4362, 100, 22);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4363, 100, 23);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4364, 100, 24);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4365, 100, 25);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4366, 100, 26);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4367, 100, 27);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4368, 100, 28);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4369, 100, 29);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4370, 100, 30);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4371, 100, 31);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4372, 100, 32);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4373, 100, 33);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4374, 100, 34);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4375, 100, 35);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4376, 100, 36);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4377, 100, 37);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4378, 100, 38);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4379, 100, 39);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4380, 100, 40);
INSERT INTO professor_disciplina (professor_disciplina_id, professor_id, disciplina_id) VALUES (4381, 100, 41);


--
-- TOC entry 2331 (class 0 OID 0)
-- Dependencies: 200
-- Name: professor_disciplina_professor_disciplina_id_seq; Type: SEQUENCE SET; Schema: flash; Owner: postgres
--

SELECT pg_catalog.setval('professor_disciplina_professor_disciplina_id_seq', 4381, true);


--
-- TOC entry 2332 (class 0 OID 0)
-- Dependencies: 201
-- Name: professor_professor_id_seq; Type: SEQUENCE SET; Schema: flash; Owner: postgres
--

SELECT pg_catalog.setval('professor_professor_id_seq', 1, false);


--
-- TOC entry 2300 (class 0 OID 17845)
-- Dependencies: 202
-- Data for Name: requisito_disciplina; Type: TABLE DATA; Schema: flash; Owner: postgres
--

INSERT INTO requisito_disciplina (disciplina_id, disciplina_pre_requisito_id) VALUES (7, 1);
INSERT INTO requisito_disciplina (disciplina_id, disciplina_pre_requisito_id) VALUES (8, 2);
INSERT INTO requisito_disciplina (disciplina_id, disciplina_pre_requisito_id) VALUES (9, 3);
INSERT INTO requisito_disciplina (disciplina_id, disciplina_pre_requisito_id) VALUES (12, 2);
INSERT INTO requisito_disciplina (disciplina_id, disciplina_pre_requisito_id) VALUES (13, 8);
INSERT INTO requisito_disciplina (disciplina_id, disciplina_pre_requisito_id) VALUES (14, 5);
INSERT INTO requisito_disciplina (disciplina_id, disciplina_pre_requisito_id) VALUES (15, 10);
INSERT INTO requisito_disciplina (disciplina_id, disciplina_pre_requisito_id) VALUES (16, 11);
INSERT INTO requisito_disciplina (disciplina_id, disciplina_pre_requisito_id) VALUES (18, 13);
INSERT INTO requisito_disciplina (disciplina_id, disciplina_pre_requisito_id) VALUES (20, 14);
INSERT INTO requisito_disciplina (disciplina_id, disciplina_pre_requisito_id) VALUES (21, 15);
INSERT INTO requisito_disciplina (disciplina_id, disciplina_pre_requisito_id) VALUES (23, 7);
INSERT INTO requisito_disciplina (disciplina_id, disciplina_pre_requisito_id) VALUES (24, 17);
INSERT INTO requisito_disciplina (disciplina_id, disciplina_pre_requisito_id) VALUES (25, 18);
INSERT INTO requisito_disciplina (disciplina_id, disciplina_pre_requisito_id) VALUES (26, 19);
INSERT INTO requisito_disciplina (disciplina_id, disciplina_pre_requisito_id) VALUES (27, 19);
INSERT INTO requisito_disciplina (disciplina_id, disciplina_pre_requisito_id) VALUES (30, 25);
INSERT INTO requisito_disciplina (disciplina_id, disciplina_pre_requisito_id) VALUES (31, 26);
INSERT INTO requisito_disciplina (disciplina_id, disciplina_pre_requisito_id) VALUES (32, 18);
INSERT INTO requisito_disciplina (disciplina_id, disciplina_pre_requisito_id) VALUES (32, 21);
INSERT INTO requisito_disciplina (disciplina_id, disciplina_pre_requisito_id) VALUES (33, 11);
INSERT INTO requisito_disciplina (disciplina_id, disciplina_pre_requisito_id) VALUES (34, 28);
INSERT INTO requisito_disciplina (disciplina_id, disciplina_pre_requisito_id) VALUES (35, 25);
INSERT INTO requisito_disciplina (disciplina_id, disciplina_pre_requisito_id) VALUES (35, 31);
INSERT INTO requisito_disciplina (disciplina_id, disciplina_pre_requisito_id) VALUES (36, 11);
INSERT INTO requisito_disciplina (disciplina_id, disciplina_pre_requisito_id) VALUES (36, 26);
INSERT INTO requisito_disciplina (disciplina_id, disciplina_pre_requisito_id) VALUES (37, 32);
INSERT INTO requisito_disciplina (disciplina_id, disciplina_pre_requisito_id) VALUES (38, 5);
INSERT INTO requisito_disciplina (disciplina_id, disciplina_pre_requisito_id) VALUES (38, 11);
INSERT INTO requisito_disciplina (disciplina_id, disciplina_pre_requisito_id) VALUES (39, 34);
INSERT INTO requisito_disciplina (disciplina_id, disciplina_pre_requisito_id) VALUES (41, 22);


--
-- TOC entry 2301 (class 0 OID 17848)
-- Dependencies: 203
-- Data for Name: requisito_periodo; Type: TABLE DATA; Schema: flash; Owner: postgres
--

INSERT INTO requisito_periodo (disciplina_id, periodo) VALUES (23, 1);
INSERT INTO requisito_periodo (disciplina_id, periodo) VALUES (24, 1);
INSERT INTO requisito_periodo (disciplina_id, periodo) VALUES (25, 1);
INSERT INTO requisito_periodo (disciplina_id, periodo) VALUES (26, 1);
INSERT INTO requisito_periodo (disciplina_id, periodo) VALUES (27, 1);
INSERT INTO requisito_periodo (disciplina_id, periodo) VALUES (28, 1);
INSERT INTO requisito_periodo (disciplina_id, periodo) VALUES (28, 2);
INSERT INTO requisito_periodo (disciplina_id, periodo) VALUES (28, 3);
INSERT INTO requisito_periodo (disciplina_id, periodo) VALUES (28, 4);
INSERT INTO requisito_periodo (disciplina_id, periodo) VALUES (29, 1);


--
-- TOC entry 2302 (class 0 OID 17851)
-- Dependencies: 204
-- Data for Name: semestre; Type: TABLE DATA; Schema: flash; Owner: postgres
--

INSERT INTO semestre (semestre_id, ano, semestre) VALUES (1, 2009, 1);
INSERT INTO semestre (semestre_id, ano, semestre) VALUES (2, 2009, 2);
INSERT INTO semestre (semestre_id, ano, semestre) VALUES (3, 2010, 1);
INSERT INTO semestre (semestre_id, ano, semestre) VALUES (4, 2010, 2);
INSERT INTO semestre (semestre_id, ano, semestre) VALUES (5, 2013, 1);
INSERT INTO semestre (semestre_id, ano, semestre) VALUES (6, 2013, 2);
INSERT INTO semestre (semestre_id, ano, semestre) VALUES (7, 2014, 1);
INSERT INTO semestre (semestre_id, ano, semestre) VALUES (8, 2014, 2);
INSERT INTO semestre (semestre_id, ano, semestre) VALUES (9, 2015, 1);
INSERT INTO semestre (semestre_id, ano, semestre) VALUES (10, 2015, 2);
INSERT INTO semestre (semestre_id, ano, semestre) VALUES (11, 2016, 1);
INSERT INTO semestre (semestre_id, ano, semestre) VALUES (12, 2016, 2);


--
-- TOC entry 2333 (class 0 OID 0)
-- Dependencies: 205
-- Name: semestre_semestre_id_seq; Type: SEQUENCE SET; Schema: flash; Owner: postgres
--

SELECT pg_catalog.setval('semestre_semestre_id_seq', 12, true);


--
-- TOC entry 2304 (class 0 OID 17856)
-- Dependencies: 206
-- Data for Name: sub_area; Type: TABLE DATA; Schema: flash; Owner: postgres
--



--
-- TOC entry 2334 (class 0 OID 0)
-- Dependencies: 207
-- Name: sub_area_conhecimento_area_conhecimento_id_seq; Type: SEQUENCE SET; Schema: flash; Owner: postgres
--

SELECT pg_catalog.setval('sub_area_conhecimento_area_conhecimento_id_seq', 1, false);


--
-- TOC entry 2306 (class 0 OID 17861)
-- Dependencies: 208
-- Data for Name: tipo_espaco; Type: TABLE DATA; Schema: flash; Owner: postgres
--

INSERT INTO tipo_espaco (tipo_id, descricao) VALUES (1, 'Sala');
INSERT INTO tipo_espaco (tipo_id, descricao) VALUES (2, 'Laboratório');


--
-- TOC entry 2335 (class 0 OID 0)
-- Dependencies: 209
-- Name: tipo_espaco_tipo_id_seq; Type: SEQUENCE SET; Schema: flash; Owner: postgres
--

SELECT pg_catalog.setval('tipo_espaco_tipo_id_seq', 2, true);


--
-- TOC entry 2125 (class 2606 OID 17885)
-- Name: area_conhecimento_pk; Type: CONSTRAINT; Schema: flash; Owner: postgres
--

ALTER TABLE ONLY area_conhecimento
    ADD CONSTRAINT area_conhecimento_pk PRIMARY KEY (area_conhecimento_id);


--
-- TOC entry 2127 (class 2606 OID 17887)
-- Name: curso_pk; Type: CONSTRAINT; Schema: flash; Owner: postgres
--

ALTER TABLE ONLY curso
    ADD CONSTRAINT curso_pk PRIMARY KEY (curso_id);


--
-- TOC entry 2129 (class 2606 OID 17889)
-- Name: dia_semana_id; Type: CONSTRAINT; Schema: flash; Owner: postgres
--

ALTER TABLE ONLY dia_semana
    ADD CONSTRAINT dia_semana_id PRIMARY KEY (dia_semana_id);


--
-- TOC entry 2131 (class 2606 OID 17891)
-- Name: disciplina_pk; Type: CONSTRAINT; Schema: flash; Owner: postgres
--

ALTER TABLE ONLY disciplina
    ADD CONSTRAINT disciplina_pk PRIMARY KEY (disciplina_id);


--
-- TOC entry 2133 (class 2606 OID 17893)
-- Name: endereco_pk; Type: CONSTRAINT; Schema: flash; Owner: postgres
--

ALTER TABLE ONLY endereco
    ADD CONSTRAINT endereco_pk PRIMARY KEY (endereco_id);


--
-- TOC entry 2135 (class 2606 OID 17895)
-- Name: espaco_pk; Type: CONSTRAINT; Schema: flash; Owner: postgres
--

ALTER TABLE ONLY espaco
    ADD CONSTRAINT espaco_pk PRIMARY KEY (espaco_id);


--
-- TOC entry 2137 (class 2606 OID 17897)
-- Name: horario_pk; Type: CONSTRAINT; Schema: flash; Owner: postgres
--

ALTER TABLE ONLY horario
    ADD CONSTRAINT horario_pk PRIMARY KEY (horario_id);


--
-- TOC entry 2141 (class 2606 OID 17899)
-- Name: professor_disciplina_pk; Type: CONSTRAINT; Schema: flash; Owner: postgres
--

ALTER TABLE ONLY professor_disciplina
    ADD CONSTRAINT professor_disciplina_pk PRIMARY KEY (professor_disciplina_id);


--
-- TOC entry 2139 (class 2606 OID 17901)
-- Name: professor_pk; Type: CONSTRAINT; Schema: flash; Owner: postgres
--

ALTER TABLE ONLY professor
    ADD CONSTRAINT professor_pk PRIMARY KEY (professor_id);


--
-- TOC entry 2143 (class 2606 OID 17903)
-- Name: requisito_disciplina_pk; Type: CONSTRAINT; Schema: flash; Owner: postgres
--

ALTER TABLE ONLY requisito_disciplina
    ADD CONSTRAINT requisito_disciplina_pk PRIMARY KEY (disciplina_id, disciplina_pre_requisito_id);


--
-- TOC entry 2145 (class 2606 OID 17905)
-- Name: requisito_periodo_pk; Type: CONSTRAINT; Schema: flash; Owner: postgres
--

ALTER TABLE ONLY requisito_periodo
    ADD CONSTRAINT requisito_periodo_pk PRIMARY KEY (disciplina_id, periodo);


--
-- TOC entry 2147 (class 2606 OID 17907)
-- Name: semestre_id_pk; Type: CONSTRAINT; Schema: flash; Owner: postgres
--

ALTER TABLE ONLY semestre
    ADD CONSTRAINT semestre_id_pk PRIMARY KEY (semestre_id);


--
-- TOC entry 2149 (class 2606 OID 17909)
-- Name: sub_area_pk; Type: CONSTRAINT; Schema: flash; Owner: postgres
--

ALTER TABLE ONLY sub_area
    ADD CONSTRAINT sub_area_pk PRIMARY KEY (area_conhecimento_id, sub_area_conhecimento_id);


--
-- TOC entry 2151 (class 2606 OID 17911)
-- Name: tipo_espaco_pk; Type: CONSTRAINT; Schema: flash; Owner: postgres
--

ALTER TABLE ONLY tipo_espaco
    ADD CONSTRAINT tipo_espaco_pk PRIMARY KEY (tipo_id);


--
-- TOC entry 2163 (class 2620 OID 18015)
-- Name: historico_disciplinas; Type: TRIGGER; Schema: flash; Owner: postgres
--

CREATE TRIGGER historico_disciplinas BEFORE UPDATE ON disciplina FOR EACH ROW EXECUTE PROCEDURE historico_disciplinas();


--
-- TOC entry 2164 (class 2620 OID 18079)
-- Name: horarios_unicos; Type: TRIGGER; Schema: flash; Owner: postgres
--

CREATE TRIGGER horarios_unicos BEFORE INSERT OR UPDATE ON horario FOR EACH ROW EXECUTE PROCEDURE horarios_unicos();


--
-- TOC entry 2152 (class 2606 OID 17912)
-- Name: area_conhecimento_disciplina_fk; Type: FK CONSTRAINT; Schema: flash; Owner: postgres
--

ALTER TABLE ONLY disciplina
    ADD CONSTRAINT area_conhecimento_disciplina_fk FOREIGN KEY (area_conhecimento_id) REFERENCES area_conhecimento(area_conhecimento_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2161 (class 2606 OID 17917)
-- Name: area_conhecimento_fk; Type: FK CONSTRAINT; Schema: flash; Owner: postgres
--

ALTER TABLE ONLY sub_area
    ADD CONSTRAINT area_conhecimento_fk FOREIGN KEY (area_conhecimento_id) REFERENCES area_conhecimento(area_conhecimento_id) ON UPDATE CASCADE;


--
-- TOC entry 2162 (class 2606 OID 17922)
-- Name: area_conhecimento_sub_area_fk; Type: FK CONSTRAINT; Schema: flash; Owner: postgres
--

ALTER TABLE ONLY sub_area
    ADD CONSTRAINT area_conhecimento_sub_area_fk FOREIGN KEY (sub_area_conhecimento_id) REFERENCES area_conhecimento(area_conhecimento_id) ON UPDATE CASCADE;


--
-- TOC entry 2153 (class 2606 OID 17927)
-- Name: curso_disciplina_fk; Type: FK CONSTRAINT; Schema: flash; Owner: postgres
--

ALTER TABLE ONLY disciplina
    ADD CONSTRAINT curso_disciplina_fk FOREIGN KEY (curso_id) REFERENCES curso(curso_id);


--
-- TOC entry 2158 (class 2606 OID 17937)
-- Name: disciplina_fk; Type: FK CONSTRAINT; Schema: flash; Owner: postgres
--

ALTER TABLE ONLY requisito_disciplina
    ADD CONSTRAINT disciplina_fk FOREIGN KEY (disciplina_id) REFERENCES disciplina(disciplina_id);


--
-- TOC entry 2156 (class 2606 OID 17942)
-- Name: disciplina_professor_disciplina_fk; Type: FK CONSTRAINT; Schema: flash; Owner: postgres
--

ALTER TABLE ONLY professor_disciplina
    ADD CONSTRAINT disciplina_professor_disciplina_fk FOREIGN KEY (disciplina_id) REFERENCES disciplina(disciplina_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2160 (class 2606 OID 17947)
-- Name: disciplina_requisito_curso_fk; Type: FK CONSTRAINT; Schema: flash; Owner: postgres
--

ALTER TABLE ONLY requisito_periodo
    ADD CONSTRAINT disciplina_requisito_curso_fk FOREIGN KEY (disciplina_id) REFERENCES disciplina(disciplina_id);


--
-- TOC entry 2159 (class 2606 OID 17952)
-- Name: disciplina_requisito_fk; Type: FK CONSTRAINT; Schema: flash; Owner: postgres
--

ALTER TABLE ONLY requisito_disciplina
    ADD CONSTRAINT disciplina_requisito_fk FOREIGN KEY (disciplina_pre_requisito_id) REFERENCES disciplina(disciplina_id);


--
-- TOC entry 2155 (class 2606 OID 17957)
-- Name: endereco_professor_fk; Type: FK CONSTRAINT; Schema: flash; Owner: postgres
--

ALTER TABLE ONLY professor
    ADD CONSTRAINT endereco_professor_fk FOREIGN KEY (endereco_id) REFERENCES endereco(endereco_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2157 (class 2606 OID 17977)
-- Name: professor_professor_disciplina_fk; Type: FK CONSTRAINT; Schema: flash; Owner: postgres
--

ALTER TABLE ONLY professor_disciplina
    ADD CONSTRAINT professor_professor_disciplina_fk FOREIGN KEY (professor_id) REFERENCES professor(professor_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2154 (class 2606 OID 17987)
-- Name: tipo_espaco_fk; Type: FK CONSTRAINT; Schema: flash; Owner: postgres
--

ALTER TABLE ONLY espaco
    ADD CONSTRAINT tipo_espaco_fk FOREIGN KEY (tipo_id) REFERENCES tipo_espaco(tipo_id);


-- Completed on 2016-12-02 12:26:41 BRST

--
-- PostgreSQL database dump complete
--

