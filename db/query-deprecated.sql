--
-- PostgreSQL database dump
--

-- Dumped from database version 11.5 (Ubuntu 11.5-3.pgdg18.04+1)
-- Dumped by pg_dump version 12.1

-- Started on 2020-04-16 10:43:12

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

--
-- TOC entry 9 (class 3079 OID 17135)
-- Name: btree_gin; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS btree_gin WITH SCHEMA public;


--
-- TOC entry 4112 (class 0 OID 0)
-- Dependencies: 9
-- Name: EXTENSION btree_gin; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION btree_gin IS 'support for indexing common datatypes in GIN';


--
-- TOC entry 5 (class 3079 OID 17676)
-- Name: btree_gist; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS btree_gist WITH SCHEMA public;


--
-- TOC entry 4113 (class 0 OID 0)
-- Dependencies: 5
-- Name: EXTENSION btree_gist; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION btree_gist IS 'support for indexing common datatypes in GiST';


--
-- TOC entry 16 (class 3079 OID 16661)
-- Name: citext; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS citext WITH SCHEMA public;


--
-- TOC entry 4114 (class 0 OID 0)
-- Dependencies: 16
-- Name: EXTENSION citext; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION citext IS 'data type for case-insensitive character strings';


--
-- TOC entry 7 (class 3079 OID 17573)
-- Name: cube; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS cube WITH SCHEMA public;


--
-- TOC entry 4115 (class 0 OID 0)
-- Dependencies: 7
-- Name: EXTENSION cube; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION cube IS 'data type for multidimensional cubes';


--
-- TOC entry 22 (class 3079 OID 16384)
-- Name: dblink; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS dblink WITH SCHEMA public;


--
-- TOC entry 4116 (class 0 OID 0)
-- Dependencies: 22
-- Name: EXTENSION dblink; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION dblink IS 'connect to other PostgreSQL databases from within a database';


--
-- TOC entry 10 (class 3079 OID 17130)
-- Name: dict_int; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS dict_int WITH SCHEMA public;


--
-- TOC entry 4117 (class 0 OID 0)
-- Dependencies: 10
-- Name: EXTENSION dict_int; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION dict_int IS 'text search dictionary template for integers';


--
-- TOC entry 4 (class 3079 OID 18299)
-- Name: dict_xsyn; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS dict_xsyn WITH SCHEMA public;


--
-- TOC entry 4118 (class 0 OID 0)
-- Dependencies: 4
-- Name: EXTENSION dict_xsyn; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION dict_xsyn IS 'text search dictionary template for extended synonym processing';


--
-- TOC entry 6 (class 3079 OID 17660)
-- Name: earthdistance; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS earthdistance WITH SCHEMA public;


--
-- TOC entry 4119 (class 0 OID 0)
-- Dependencies: 6
-- Name: EXTENSION earthdistance; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION earthdistance IS 'calculate great-circle distances on the surface of the Earth';


--
-- TOC entry 17 (class 3079 OID 16650)
-- Name: fuzzystrmatch; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS fuzzystrmatch WITH SCHEMA public;


--
-- TOC entry 4120 (class 0 OID 0)
-- Dependencies: 17
-- Name: EXTENSION fuzzystrmatch; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION fuzzystrmatch IS 'determine similarities and distance between strings';


--
-- TOC entry 11 (class 3079 OID 17007)
-- Name: hstore; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS hstore WITH SCHEMA public;


--
-- TOC entry 4121 (class 0 OID 0)
-- Dependencies: 11
-- Name: EXTENSION hstore; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION hstore IS 'data type for storing sets of (key, value) pairs';


--
-- TOC entry 12 (class 3079 OID 16889)
-- Name: intarray; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS intarray WITH SCHEMA public;


--
-- TOC entry 4122 (class 0 OID 0)
-- Dependencies: 12
-- Name: EXTENSION intarray; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION intarray IS 'functions, operators, and index support for 1-D arrays of integers';


--
-- TOC entry 20 (class 3079 OID 16444)
-- Name: ltree; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS ltree WITH SCHEMA public;


--
-- TOC entry 4123 (class 0 OID 0)
-- Dependencies: 20
-- Name: EXTENSION ltree; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION ltree IS 'data type for hierarchical tree-like structures';


--
-- TOC entry 2 (class 3079 OID 18311)
-- Name: pg_stat_statements; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS pg_stat_statements WITH SCHEMA public;


--
-- TOC entry 4124 (class 0 OID 0)
-- Dependencies: 2
-- Name: EXTENSION pg_stat_statements; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION pg_stat_statements IS 'track execution statistics of all SQL statements executed';


--
-- TOC entry 13 (class 3079 OID 16812)
-- Name: pg_trgm; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS pg_trgm WITH SCHEMA public;


--
-- TOC entry 4125 (class 0 OID 0)
-- Dependencies: 13
-- Name: EXTENSION pg_trgm; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION pg_trgm IS 'text similarity measurement and index searching based on trigrams';


--
-- TOC entry 14 (class 3079 OID 16775)
-- Name: pgcrypto; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS pgcrypto WITH SCHEMA public;


--
-- TOC entry 4126 (class 0 OID 0)
-- Dependencies: 14
-- Name: EXTENSION pgcrypto; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION pgcrypto IS 'cryptographic functions';


--
-- TOC entry 8 (class 3079 OID 17571)
-- Name: pgrowlocks; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS pgrowlocks WITH SCHEMA public;


--
-- TOC entry 4127 (class 0 OID 0)
-- Dependencies: 8
-- Name: EXTENSION pgrowlocks; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION pgrowlocks IS 'show row-level locking information';


--
-- TOC entry 19 (class 3079 OID 16619)
-- Name: pgstattuple; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS pgstattuple WITH SCHEMA public;


--
-- TOC entry 4128 (class 0 OID 0)
-- Dependencies: 19
-- Name: EXTENSION pgstattuple; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION pgstattuple IS 'show tuple-level statistics';


--
-- TOC entry 18 (class 3079 OID 16629)
-- Name: tablefunc; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS tablefunc WITH SCHEMA public;


--
-- TOC entry 4129 (class 0 OID 0)
-- Dependencies: 18
-- Name: EXTENSION tablefunc; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION tablefunc IS 'functions that manipulate whole tables, including crosstab';


--
-- TOC entry 3 (class 3079 OID 18304)
-- Name: unaccent; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS unaccent WITH SCHEMA public;


--
-- TOC entry 4130 (class 0 OID 0)
-- Dependencies: 3
-- Name: EXTENSION unaccent; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION unaccent IS 'text search dictionary that removes accents';


--
-- TOC entry 15 (class 3079 OID 16764)
-- Name: uuid-ossp; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS "uuid-ossp" WITH SCHEMA public;


--
-- TOC entry 4131 (class 0 OID 0)
-- Dependencies: 15
-- Name: EXTENSION "uuid-ossp"; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION "uuid-ossp" IS 'generate universally unique identifiers (UUIDs)';


--
-- TOC entry 21 (class 3079 OID 16430)
-- Name: xml2; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS xml2 WITH SCHEMA public;


--
-- TOC entry 4132 (class 0 OID 0)
-- Dependencies: 21
-- Name: EXTENSION xml2; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION xml2 IS 'XPath querying and XSLT';


SET default_tablespace = '';

--
-- TOC entry 236 (class 1259 OID 420350)
-- Name: data_manual; Type: TABLE; Schema: public; Owner: qqhewwyp
--

CREATE TABLE public.data_manual (
    id integer NOT NULL,
    id_lahan integer NOT NULL,
    deskripsi character varying,
    aktivitas character varying,
    waktu date
);


ALTER TABLE public.data_manual OWNER TO qqhewwyp;

--
-- TOC entry 238 (class 1259 OID 420359)
-- Name: data_manual_id_lahan_seq; Type: SEQUENCE; Schema: public; Owner: qqhewwyp
--

CREATE SEQUENCE public.data_manual_id_lahan_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.data_manual_id_lahan_seq OWNER TO qqhewwyp;

--
-- TOC entry 4133 (class 0 OID 0)
-- Dependencies: 238
-- Name: data_manual_id_lahan_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: qqhewwyp
--

ALTER SEQUENCE public.data_manual_id_lahan_seq OWNED BY public.data_manual.id_lahan;


--
-- TOC entry 237 (class 1259 OID 420353)
-- Name: data_manual_id_seq; Type: SEQUENCE; Schema: public; Owner: qqhewwyp
--

CREATE SEQUENCE public.data_manual_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.data_manual_id_seq OWNER TO qqhewwyp;

--
-- TOC entry 4134 (class 0 OID 0)
-- Dependencies: 237
-- Name: data_manual_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: qqhewwyp
--

ALTER SEQUENCE public.data_manual_id_seq OWNED BY public.data_manual.id;


--
-- TOC entry 230 (class 1259 OID 420257)
-- Name: data_sensor; Type: TABLE; Schema: public; Owner: qqhewwyp
--

CREATE TABLE public.data_sensor (
    id integer NOT NULL,
    suhu numeric,
    kelembaban_udara numeric,
    tekanan_udara numeric,
    kecepatan_angin numeric,
    kelembaban_tanah numeric,
    intensitas_cahaya numeric,
    id_lahan integer NOT NULL,
    cuaca character varying,
    waktu date
);


ALTER TABLE public.data_sensor OWNER TO qqhewwyp;

--
-- TOC entry 232 (class 1259 OID 420287)
-- Name: data_sensor_id_lahan_seq; Type: SEQUENCE; Schema: public; Owner: qqhewwyp
--

CREATE SEQUENCE public.data_sensor_id_lahan_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.data_sensor_id_lahan_seq OWNER TO qqhewwyp;

--
-- TOC entry 4135 (class 0 OID 0)
-- Dependencies: 232
-- Name: data_sensor_id_lahan_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: qqhewwyp
--

ALTER SEQUENCE public.data_sensor_id_lahan_seq OWNED BY public.data_sensor.id_lahan;


--
-- TOC entry 231 (class 1259 OID 420260)
-- Name: data_sensor_id_seq; Type: SEQUENCE; Schema: public; Owner: qqhewwyp
--

CREATE SEQUENCE public.data_sensor_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.data_sensor_id_seq OWNER TO qqhewwyp;

--
-- TOC entry 4136 (class 0 OID 0)
-- Dependencies: 231
-- Name: data_sensor_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: qqhewwyp
--

ALTER SEQUENCE public.data_sensor_id_seq OWNED BY public.data_sensor.id;


--
-- TOC entry 224 (class 1259 OID 420193)
-- Name: lahan; Type: TABLE; Schema: public; Owner: qqhewwyp
--

CREATE TABLE public.lahan (
    id integer NOT NULL,
    nama character varying,
    deskripsi character varying
);


ALTER TABLE public.lahan OWNER TO qqhewwyp;

--
-- TOC entry 225 (class 1259 OID 420196)
-- Name: lahan_id_seq; Type: SEQUENCE; Schema: public; Owner: qqhewwyp
--

CREATE SEQUENCE public.lahan_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.lahan_id_seq OWNER TO qqhewwyp;

--
-- TOC entry 4137 (class 0 OID 0)
-- Dependencies: 225
-- Name: lahan_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: qqhewwyp
--

ALTER SEQUENCE public.lahan_id_seq OWNED BY public.lahan.id;


--
-- TOC entry 241 (class 1259 OID 420395)
-- Name: lahan_tanaman; Type: TABLE; Schema: public; Owner: qqhewwyp
--

CREATE TABLE public.lahan_tanaman (
    id integer NOT NULL,
    id_tanaman integer NOT NULL,
    id_lahan integer NOT NULL
);


ALTER TABLE public.lahan_tanaman OWNER TO qqhewwyp;

--
-- TOC entry 244 (class 1259 OID 420418)
-- Name: lahan_tanaman_id_lahan_seq; Type: SEQUENCE; Schema: public; Owner: qqhewwyp
--

CREATE SEQUENCE public.lahan_tanaman_id_lahan_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.lahan_tanaman_id_lahan_seq OWNER TO qqhewwyp;

--
-- TOC entry 4138 (class 0 OID 0)
-- Dependencies: 244
-- Name: lahan_tanaman_id_lahan_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: qqhewwyp
--

ALTER SEQUENCE public.lahan_tanaman_id_lahan_seq OWNED BY public.lahan_tanaman.id_lahan;


--
-- TOC entry 242 (class 1259 OID 420398)
-- Name: lahan_tanaman_id_seq; Type: SEQUENCE; Schema: public; Owner: qqhewwyp
--

CREATE SEQUENCE public.lahan_tanaman_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.lahan_tanaman_id_seq OWNER TO qqhewwyp;

--
-- TOC entry 4139 (class 0 OID 0)
-- Dependencies: 242
-- Name: lahan_tanaman_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: qqhewwyp
--

ALTER SEQUENCE public.lahan_tanaman_id_seq OWNED BY public.lahan_tanaman.id;


--
-- TOC entry 243 (class 1259 OID 420407)
-- Name: lahan_tanaman_id_tanaman_seq; Type: SEQUENCE; Schema: public; Owner: qqhewwyp
--

CREATE SEQUENCE public.lahan_tanaman_id_tanaman_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.lahan_tanaman_id_tanaman_seq OWNER TO qqhewwyp;

--
-- TOC entry 4140 (class 0 OID 0)
-- Dependencies: 243
-- Name: lahan_tanaman_id_tanaman_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: qqhewwyp
--

ALTER SEQUENCE public.lahan_tanaman_id_tanaman_seq OWNED BY public.lahan_tanaman.id_tanaman;


--
-- TOC entry 233 (class 1259 OID 420318)
-- Name: panen; Type: TABLE; Schema: public; Owner: qqhewwyp
--

CREATE TABLE public.panen (
    id integer NOT NULL,
    id_lahan integer NOT NULL,
    description character varying,
    waktu date,
    hasil numeric,
    profit numeric
);


ALTER TABLE public.panen OWNER TO qqhewwyp;

--
-- TOC entry 235 (class 1259 OID 420333)
-- Name: panen_id_lahan_seq; Type: SEQUENCE; Schema: public; Owner: qqhewwyp
--

CREATE SEQUENCE public.panen_id_lahan_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.panen_id_lahan_seq OWNER TO qqhewwyp;

--
-- TOC entry 4141 (class 0 OID 0)
-- Dependencies: 235
-- Name: panen_id_lahan_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: qqhewwyp
--

ALTER SEQUENCE public.panen_id_lahan_seq OWNED BY public.panen.id_lahan;


--
-- TOC entry 234 (class 1259 OID 420322)
-- Name: panen_id_seq; Type: SEQUENCE; Schema: public; Owner: qqhewwyp
--

CREATE SEQUENCE public.panen_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.panen_id_seq OWNER TO qqhewwyp;

--
-- TOC entry 4142 (class 0 OID 0)
-- Dependencies: 234
-- Name: panen_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: qqhewwyp
--

ALTER SEQUENCE public.panen_id_seq OWNED BY public.panen.id;


--
-- TOC entry 222 (class 1259 OID 420159)
-- Name: pengguna; Type: TABLE; Schema: public; Owner: qqhewwyp
--

CREATE TABLE public.pengguna (
    id integer NOT NULL,
    nama character varying,
    email character varying,
    password character varying,
    role character varying,
    no_telepon numeric,
    created_at timestamp with time zone
);


ALTER TABLE public.pengguna OWNER TO qqhewwyp;

--
-- TOC entry 223 (class 1259 OID 420162)
-- Name: pengguna_id_seq; Type: SEQUENCE; Schema: public; Owner: qqhewwyp
--

CREATE SEQUENCE public.pengguna_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pengguna_id_seq OWNER TO qqhewwyp;

--
-- TOC entry 4143 (class 0 OID 0)
-- Dependencies: 223
-- Name: pengguna_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: qqhewwyp
--

ALTER SEQUENCE public.pengguna_id_seq OWNED BY public.pengguna.id;


--
-- TOC entry 226 (class 1259 OID 420212)
-- Name: pengguna_lahan; Type: TABLE; Schema: public; Owner: qqhewwyp
--

CREATE TABLE public.pengguna_lahan (
    id integer NOT NULL,
    id_pengguna integer NOT NULL,
    id_lahan integer NOT NULL
);


ALTER TABLE public.pengguna_lahan OWNER TO qqhewwyp;

--
-- TOC entry 229 (class 1259 OID 420232)
-- Name: pengguna_lahan_id_lahan_seq; Type: SEQUENCE; Schema: public; Owner: qqhewwyp
--

CREATE SEQUENCE public.pengguna_lahan_id_lahan_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pengguna_lahan_id_lahan_seq OWNER TO qqhewwyp;

--
-- TOC entry 4144 (class 0 OID 0)
-- Dependencies: 229
-- Name: pengguna_lahan_id_lahan_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: qqhewwyp
--

ALTER SEQUENCE public.pengguna_lahan_id_lahan_seq OWNED BY public.pengguna_lahan.id_lahan;


--
-- TOC entry 228 (class 1259 OID 420221)
-- Name: pengguna_lahan_id_pengguna_seq; Type: SEQUENCE; Schema: public; Owner: qqhewwyp
--

CREATE SEQUENCE public.pengguna_lahan_id_pengguna_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pengguna_lahan_id_pengguna_seq OWNER TO qqhewwyp;

--
-- TOC entry 4145 (class 0 OID 0)
-- Dependencies: 228
-- Name: pengguna_lahan_id_pengguna_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: qqhewwyp
--

ALTER SEQUENCE public.pengguna_lahan_id_pengguna_seq OWNED BY public.pengguna_lahan.id_pengguna;


--
-- TOC entry 227 (class 1259 OID 420215)
-- Name: pengguna_lahan_id_seq; Type: SEQUENCE; Schema: public; Owner: qqhewwyp
--

CREATE SEQUENCE public.pengguna_lahan_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pengguna_lahan_id_seq OWNER TO qqhewwyp;

--
-- TOC entry 4146 (class 0 OID 0)
-- Dependencies: 227
-- Name: pengguna_lahan_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: qqhewwyp
--

ALTER SEQUENCE public.pengguna_lahan_id_seq OWNED BY public.pengguna_lahan.id;


--
-- TOC entry 239 (class 1259 OID 420381)
-- Name: tanaman; Type: TABLE; Schema: public; Owner: qqhewwyp
--

CREATE TABLE public.tanaman (
    id integer NOT NULL,
    nama character varying,
    jenis character varying,
    deskripsi character varying
);


ALTER TABLE public.tanaman OWNER TO qqhewwyp;

--
-- TOC entry 240 (class 1259 OID 420384)
-- Name: tanaman_id_seq; Type: SEQUENCE; Schema: public; Owner: qqhewwyp
--

CREATE SEQUENCE public.tanaman_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tanaman_id_seq OWNER TO qqhewwyp;

--
-- TOC entry 4147 (class 0 OID 0)
-- Dependencies: 240
-- Name: tanaman_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: qqhewwyp
--

ALTER SEQUENCE public.tanaman_id_seq OWNED BY public.tanaman.id;


--
-- TOC entry 3949 (class 2604 OID 420355)
-- Name: data_manual id; Type: DEFAULT; Schema: public; Owner: qqhewwyp
--

ALTER TABLE ONLY public.data_manual ALTER COLUMN id SET DEFAULT nextval('public.data_manual_id_seq'::regclass);


--
-- TOC entry 3950 (class 2604 OID 420361)
-- Name: data_manual id_lahan; Type: DEFAULT; Schema: public; Owner: qqhewwyp
--

ALTER TABLE ONLY public.data_manual ALTER COLUMN id_lahan SET DEFAULT nextval('public.data_manual_id_lahan_seq'::regclass);


--
-- TOC entry 3945 (class 2604 OID 420262)
-- Name: data_sensor id; Type: DEFAULT; Schema: public; Owner: qqhewwyp
--

ALTER TABLE ONLY public.data_sensor ALTER COLUMN id SET DEFAULT nextval('public.data_sensor_id_seq'::regclass);


--
-- TOC entry 3946 (class 2604 OID 420289)
-- Name: data_sensor id_lahan; Type: DEFAULT; Schema: public; Owner: qqhewwyp
--

ALTER TABLE ONLY public.data_sensor ALTER COLUMN id_lahan SET DEFAULT nextval('public.data_sensor_id_lahan_seq'::regclass);


--
-- TOC entry 3941 (class 2604 OID 420198)
-- Name: lahan id; Type: DEFAULT; Schema: public; Owner: qqhewwyp
--

ALTER TABLE ONLY public.lahan ALTER COLUMN id SET DEFAULT nextval('public.lahan_id_seq'::regclass);


--
-- TOC entry 3952 (class 2604 OID 420400)
-- Name: lahan_tanaman id; Type: DEFAULT; Schema: public; Owner: qqhewwyp
--

ALTER TABLE ONLY public.lahan_tanaman ALTER COLUMN id SET DEFAULT nextval('public.lahan_tanaman_id_seq'::regclass);


--
-- TOC entry 3953 (class 2604 OID 420409)
-- Name: lahan_tanaman id_tanaman; Type: DEFAULT; Schema: public; Owner: qqhewwyp
--

ALTER TABLE ONLY public.lahan_tanaman ALTER COLUMN id_tanaman SET DEFAULT nextval('public.lahan_tanaman_id_tanaman_seq'::regclass);


--
-- TOC entry 3954 (class 2604 OID 420420)
-- Name: lahan_tanaman id_lahan; Type: DEFAULT; Schema: public; Owner: qqhewwyp
--

ALTER TABLE ONLY public.lahan_tanaman ALTER COLUMN id_lahan SET DEFAULT nextval('public.lahan_tanaman_id_lahan_seq'::regclass);


--
-- TOC entry 3947 (class 2604 OID 420324)
-- Name: panen id; Type: DEFAULT; Schema: public; Owner: qqhewwyp
--

ALTER TABLE ONLY public.panen ALTER COLUMN id SET DEFAULT nextval('public.panen_id_seq'::regclass);


--
-- TOC entry 3948 (class 2604 OID 420335)
-- Name: panen id_lahan; Type: DEFAULT; Schema: public; Owner: qqhewwyp
--

ALTER TABLE ONLY public.panen ALTER COLUMN id_lahan SET DEFAULT nextval('public.panen_id_lahan_seq'::regclass);


--
-- TOC entry 3940 (class 2604 OID 420164)
-- Name: pengguna id; Type: DEFAULT; Schema: public; Owner: qqhewwyp
--

ALTER TABLE ONLY public.pengguna ALTER COLUMN id SET DEFAULT nextval('public.pengguna_id_seq'::regclass);


--
-- TOC entry 3942 (class 2604 OID 420217)
-- Name: pengguna_lahan id; Type: DEFAULT; Schema: public; Owner: qqhewwyp
--

ALTER TABLE ONLY public.pengguna_lahan ALTER COLUMN id SET DEFAULT nextval('public.pengguna_lahan_id_seq'::regclass);


--
-- TOC entry 3943 (class 2604 OID 420223)
-- Name: pengguna_lahan id_pengguna; Type: DEFAULT; Schema: public; Owner: qqhewwyp
--

ALTER TABLE ONLY public.pengguna_lahan ALTER COLUMN id_pengguna SET DEFAULT nextval('public.pengguna_lahan_id_pengguna_seq'::regclass);


--
-- TOC entry 3944 (class 2604 OID 420234)
-- Name: pengguna_lahan id_lahan; Type: DEFAULT; Schema: public; Owner: qqhewwyp
--

ALTER TABLE ONLY public.pengguna_lahan ALTER COLUMN id_lahan SET DEFAULT nextval('public.pengguna_lahan_id_lahan_seq'::regclass);


--
-- TOC entry 3951 (class 2604 OID 420386)
-- Name: tanaman id; Type: DEFAULT; Schema: public; Owner: qqhewwyp
--

ALTER TABLE ONLY public.tanaman ALTER COLUMN id SET DEFAULT nextval('public.tanaman_id_seq'::regclass);


--
-- TOC entry 3970 (class 2606 OID 420369)
-- Name: data_manual data_manual_pkey; Type: CONSTRAINT; Schema: public; Owner: qqhewwyp
--

ALTER TABLE ONLY public.data_manual
    ADD CONSTRAINT data_manual_pkey PRIMARY KEY (id);


--
-- TOC entry 3964 (class 2606 OID 420267)
-- Name: data_sensor data_sensor_pkey; Type: CONSTRAINT; Schema: public; Owner: qqhewwyp
--

ALTER TABLE ONLY public.data_sensor
    ADD CONSTRAINT data_sensor_pkey PRIMARY KEY (id);


--
-- TOC entry 3958 (class 2606 OID 420211)
-- Name: lahan lahan_pkey; Type: CONSTRAINT; Schema: public; Owner: qqhewwyp
--

ALTER TABLE ONLY public.lahan
    ADD CONSTRAINT lahan_pkey PRIMARY KEY (id);


--
-- TOC entry 3977 (class 2606 OID 420417)
-- Name: lahan_tanaman lahan_tanaman_pkey; Type: CONSTRAINT; Schema: public; Owner: qqhewwyp
--

ALTER TABLE ONLY public.lahan_tanaman
    ADD CONSTRAINT lahan_tanaman_pkey PRIMARY KEY (id);


--
-- TOC entry 3968 (class 2606 OID 420343)
-- Name: panen panen_pkey; Type: CONSTRAINT; Schema: public; Owner: qqhewwyp
--

ALTER TABLE ONLY public.panen
    ADD CONSTRAINT panen_pkey PRIMARY KEY (id);


--
-- TOC entry 3962 (class 2606 OID 420239)
-- Name: pengguna_lahan pengguna_lahan_pkey; Type: CONSTRAINT; Schema: public; Owner: qqhewwyp
--

ALTER TABLE ONLY public.pengguna_lahan
    ADD CONSTRAINT pengguna_lahan_pkey PRIMARY KEY (id);


--
-- TOC entry 3956 (class 2606 OID 420192)
-- Name: pengguna pengguna_pkey; Type: CONSTRAINT; Schema: public; Owner: qqhewwyp
--

ALTER TABLE ONLY public.pengguna
    ADD CONSTRAINT pengguna_pkey PRIMARY KEY (id);


--
-- TOC entry 3973 (class 2606 OID 420394)
-- Name: tanaman tanaman_pkey; Type: CONSTRAINT; Schema: public; Owner: qqhewwyp
--

ALTER TABLE ONLY public.tanaman
    ADD CONSTRAINT tanaman_pkey PRIMARY KEY (id);


--
-- TOC entry 3959 (class 1259 OID 420245)
-- Name: fki_foreign; Type: INDEX; Schema: public; Owner: qqhewwyp
--

CREATE INDEX fki_foreign ON public.pengguna_lahan USING btree (id_pengguna);


--
-- TOC entry 3960 (class 1259 OID 420256)
-- Name: fki_to_lahan; Type: INDEX; Schema: public; Owner: qqhewwyp
--

CREATE INDEX fki_to_lahan ON public.pengguna_lahan USING btree (id_lahan);


--
-- TOC entry 3965 (class 1259 OID 420307)
-- Name: fki_to_lahan2; Type: INDEX; Schema: public; Owner: qqhewwyp
--

CREATE INDEX fki_to_lahan2 ON public.data_sensor USING btree (id_lahan);


--
-- TOC entry 3966 (class 1259 OID 420349)
-- Name: fki_to_lahan3; Type: INDEX; Schema: public; Owner: qqhewwyp
--

CREATE INDEX fki_to_lahan3 ON public.panen USING btree (id_lahan);


--
-- TOC entry 3971 (class 1259 OID 420380)
-- Name: fki_to_lahan4; Type: INDEX; Schema: public; Owner: qqhewwyp
--

CREATE INDEX fki_to_lahan4 ON public.data_manual USING btree (id_lahan);


--
-- TOC entry 3974 (class 1259 OID 420430)
-- Name: fki_to_lahan5; Type: INDEX; Schema: public; Owner: qqhewwyp
--

CREATE INDEX fki_to_lahan5 ON public.lahan_tanaman USING btree (id_lahan);


--
-- TOC entry 3975 (class 1259 OID 420436)
-- Name: fki_to_tanaman; Type: INDEX; Schema: public; Owner: qqhewwyp
--

CREATE INDEX fki_to_tanaman ON public.lahan_tanaman USING btree (id_tanaman);


--
-- TOC entry 3979 (class 2606 OID 420251)
-- Name: pengguna_lahan to_lahan; Type: FK CONSTRAINT; Schema: public; Owner: qqhewwyp
--

ALTER TABLE ONLY public.pengguna_lahan
    ADD CONSTRAINT to_lahan FOREIGN KEY (id_lahan) REFERENCES public.lahan(id) NOT VALID;


--
-- TOC entry 3980 (class 2606 OID 420302)
-- Name: data_sensor to_lahan2; Type: FK CONSTRAINT; Schema: public; Owner: qqhewwyp
--

ALTER TABLE ONLY public.data_sensor
    ADD CONSTRAINT to_lahan2 FOREIGN KEY (id_lahan) REFERENCES public.lahan(id) NOT VALID;


--
-- TOC entry 3981 (class 2606 OID 420344)
-- Name: panen to_lahan3; Type: FK CONSTRAINT; Schema: public; Owner: qqhewwyp
--

ALTER TABLE ONLY public.panen
    ADD CONSTRAINT to_lahan3 FOREIGN KEY (id_lahan) REFERENCES public.lahan(id) NOT VALID;


--
-- TOC entry 3982 (class 2606 OID 420375)
-- Name: data_manual to_lahan4; Type: FK CONSTRAINT; Schema: public; Owner: qqhewwyp
--

ALTER TABLE ONLY public.data_manual
    ADD CONSTRAINT to_lahan4 FOREIGN KEY (id_lahan) REFERENCES public.lahan(id) NOT VALID;


--
-- TOC entry 3983 (class 2606 OID 420425)
-- Name: lahan_tanaman to_lahan5; Type: FK CONSTRAINT; Schema: public; Owner: qqhewwyp
--

ALTER TABLE ONLY public.lahan_tanaman
    ADD CONSTRAINT to_lahan5 FOREIGN KEY (id_lahan) REFERENCES public.lahan(id) NOT VALID;


--
-- TOC entry 3978 (class 2606 OID 420240)
-- Name: pengguna_lahan to_pengguna; Type: FK CONSTRAINT; Schema: public; Owner: qqhewwyp
--

ALTER TABLE ONLY public.pengguna_lahan
    ADD CONSTRAINT to_pengguna FOREIGN KEY (id_pengguna) REFERENCES public.pengguna(id) NOT VALID;


--
-- TOC entry 3984 (class 2606 OID 420431)
-- Name: lahan_tanaman to_tanaman; Type: FK CONSTRAINT; Schema: public; Owner: qqhewwyp
--

ALTER TABLE ONLY public.lahan_tanaman
    ADD CONSTRAINT to_tanaman FOREIGN KEY (id_tanaman) REFERENCES public.tanaman(id) NOT VALID;


-- Completed on 2020-04-16 10:47:57

--
-- PostgreSQL database dump complete
--

