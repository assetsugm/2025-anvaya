--
-- PostgreSQL database dump
--

\restrict IKcdqh8cMIbLIAIUcQCWQSu3AOBLq7SoT4OzfvE4JHhw8gSDtcxvXyhWf1tyGch

-- Dumped from database version 17.7 (Debian 17.7-3.pgdg13+1)
-- Dumped by pg_dump version 17.6

-- Started on 2026-01-24 10:01:02 UTC

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
-- TOC entry 231 (class 1259 OID 35099)
-- Name: admin; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.admin (
    id_admin bigint NOT NULL,
    email_admin character varying(255) NOT NULL,
    password character varying(255) NOT NULL,
    remember_token character varying(100),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.admin OWNER TO postgres;

--
-- TOC entry 230 (class 1259 OID 35098)
-- Name: admin_id_admin_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.admin_id_admin_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.admin_id_admin_seq OWNER TO postgres;

--
-- TOC entry 3636 (class 0 OID 0)
-- Dependencies: 230
-- Name: admin_id_admin_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.admin_id_admin_seq OWNED BY public.admin.id_admin;


--
-- TOC entry 249 (class 1259 OID 35211)
-- Name: aspirasi; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aspirasi (
    id_aspirasi bigint NOT NULL,
    nama_pengirim character varying(255) NOT NULL,
    judul_aspirasi character varying(255) NOT NULL,
    isi_aspirasi character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.aspirasi OWNER TO postgres;

--
-- TOC entry 248 (class 1259 OID 35210)
-- Name: aspirasi_id_aspirasi_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.aspirasi_id_aspirasi_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.aspirasi_id_aspirasi_seq OWNER TO postgres;

--
-- TOC entry 3637 (class 0 OID 0)
-- Dependencies: 248
-- Name: aspirasi_id_aspirasi_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.aspirasi_id_aspirasi_seq OWNED BY public.aspirasi.id_aspirasi;


--
-- TOC entry 223 (class 1259 OID 35055)
-- Name: cache; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cache (
    key character varying(255) NOT NULL,
    value text NOT NULL,
    expiration integer NOT NULL
);


ALTER TABLE public.cache OWNER TO postgres;

--
-- TOC entry 224 (class 1259 OID 35062)
-- Name: cache_locks; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cache_locks (
    key character varying(255) NOT NULL,
    owner character varying(255) NOT NULL,
    expiration integer NOT NULL
);


ALTER TABLE public.cache_locks OWNER TO postgres;

--
-- TOC entry 247 (class 1259 OID 35197)
-- Name: color_pallete; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.color_pallete (
    id_color_pallete bigint NOT NULL,
    id_kabinet bigint NOT NULL,
    primary_color character varying(255),
    secondary_color character varying(255),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.color_pallete OWNER TO postgres;

--
-- TOC entry 246 (class 1259 OID 35196)
-- Name: color_pallete_id_color_pallete_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.color_pallete_id_color_pallete_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.color_pallete_id_color_pallete_seq OWNER TO postgres;

--
-- TOC entry 3638 (class 0 OID 0)
-- Dependencies: 246
-- Name: color_pallete_id_color_pallete_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.color_pallete_id_color_pallete_seq OWNED BY public.color_pallete.id_color_pallete;


--
-- TOC entry 237 (class 1259 OID 35126)
-- Name: divisi; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.divisi (
    id_divisi bigint NOT NULL,
    id_kabinet bigint NOT NULL,
    nama_divisi character varying(255) NOT NULL,
    deskripsi_divisi text NOT NULL,
    tugas_dan_tanggung_jawab text NOT NULL,
    foto_sampul_divisi text NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.divisi OWNER TO postgres;

--
-- TOC entry 236 (class 1259 OID 35125)
-- Name: divisi_id_divisi_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.divisi_id_divisi_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.divisi_id_divisi_seq OWNER TO postgres;

--
-- TOC entry 3639 (class 0 OID 0)
-- Dependencies: 236
-- Name: divisi_id_divisi_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.divisi_id_divisi_seq OWNED BY public.divisi.id_divisi;


--
-- TOC entry 243 (class 1259 OID 35173)
-- Name: dokumentasi; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.dokumentasi (
    id_dokumentasi bigint NOT NULL,
    id_proker bigint NOT NULL,
    isi_dokumentasi character varying(255),
    keterangan_hari integer,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.dokumentasi OWNER TO postgres;

--
-- TOC entry 242 (class 1259 OID 35172)
-- Name: dokumentasi_id_dokumentasi_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.dokumentasi_id_dokumentasi_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.dokumentasi_id_dokumentasi_seq OWNER TO postgres;

--
-- TOC entry 3640 (class 0 OID 0)
-- Dependencies: 242
-- Name: dokumentasi_id_dokumentasi_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.dokumentasi_id_dokumentasi_seq OWNED BY public.dokumentasi.id_dokumentasi;


--
-- TOC entry 229 (class 1259 OID 35087)
-- Name: failed_jobs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.failed_jobs (
    id bigint NOT NULL,
    uuid character varying(255) NOT NULL,
    connection text NOT NULL,
    queue text NOT NULL,
    payload text NOT NULL,
    exception text NOT NULL,
    failed_at timestamp(0) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE public.failed_jobs OWNER TO postgres;

--
-- TOC entry 228 (class 1259 OID 35086)
-- Name: failed_jobs_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.failed_jobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.failed_jobs_id_seq OWNER TO postgres;

--
-- TOC entry 3641 (class 0 OID 0)
-- Dependencies: 228
-- Name: failed_jobs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.failed_jobs_id_seq OWNED BY public.failed_jobs.id;


--
-- TOC entry 227 (class 1259 OID 35079)
-- Name: job_batches; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.job_batches (
    id character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    total_jobs integer NOT NULL,
    pending_jobs integer NOT NULL,
    failed_jobs integer NOT NULL,
    failed_job_ids text NOT NULL,
    options text,
    cancelled_at integer,
    created_at integer NOT NULL,
    finished_at integer
);


ALTER TABLE public.job_batches OWNER TO postgres;

--
-- TOC entry 226 (class 1259 OID 35070)
-- Name: jobs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.jobs (
    id bigint NOT NULL,
    queue character varying(255) NOT NULL,
    payload text NOT NULL,
    attempts smallint NOT NULL,
    reserved_at integer,
    available_at integer NOT NULL,
    created_at integer NOT NULL
);


ALTER TABLE public.jobs OWNER TO postgres;

--
-- TOC entry 225 (class 1259 OID 35069)
-- Name: jobs_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.jobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.jobs_id_seq OWNER TO postgres;

--
-- TOC entry 3642 (class 0 OID 0)
-- Dependencies: 225
-- Name: jobs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.jobs_id_seq OWNED BY public.jobs.id;


--
-- TOC entry 235 (class 1259 OID 35117)
-- Name: kabinet; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.kabinet (
    id_kabinet bigint NOT NULL,
    nama_kabinet character varying(255) NOT NULL,
    logo_kabinet character varying(255),
    foto_sampul_kabinet character varying(255),
    visi_kabinet text NOT NULL,
    misi_kabinet text NOT NULL,
    makna_kabinet text,
    tahun_awal_kabinet integer NOT NULL,
    tahun_akhir_kabinet integer NOT NULL,
    deskripsi_kabinet text NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.kabinet OWNER TO postgres;

--
-- TOC entry 234 (class 1259 OID 35116)
-- Name: kabinet_id_kabinet_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.kabinet_id_kabinet_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.kabinet_id_kabinet_seq OWNER TO postgres;

--
-- TOC entry 3643 (class 0 OID 0)
-- Dependencies: 234
-- Name: kabinet_id_kabinet_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.kabinet_id_kabinet_seq OWNED BY public.kabinet.id_kabinet;


--
-- TOC entry 233 (class 1259 OID 35108)
-- Name: mahasiswa; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.mahasiswa (
    id_mhs bigint NOT NULL,
    nama_mhs character varying(255) NOT NULL,
    foto_profil_mhs character varying(255),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.mahasiswa OWNER TO postgres;

--
-- TOC entry 232 (class 1259 OID 35107)
-- Name: mahasiswa_id_mhs_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.mahasiswa_id_mhs_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.mahasiswa_id_mhs_seq OWNER TO postgres;

--
-- TOC entry 3644 (class 0 OID 0)
-- Dependencies: 232
-- Name: mahasiswa_id_mhs_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.mahasiswa_id_mhs_seq OWNED BY public.mahasiswa.id_mhs;


--
-- TOC entry 218 (class 1259 OID 35022)
-- Name: migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.migrations (
    id integer NOT NULL,
    migration character varying(255) NOT NULL,
    batch integer NOT NULL
);


ALTER TABLE public.migrations OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 35021)
-- Name: migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.migrations_id_seq OWNER TO postgres;

--
-- TOC entry 3645 (class 0 OID 0)
-- Dependencies: 217
-- Name: migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.migrations_id_seq OWNED BY public.migrations.id;


--
-- TOC entry 221 (class 1259 OID 35039)
-- Name: password_reset_tokens; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.password_reset_tokens (
    email character varying(255) NOT NULL,
    token character varying(255) NOT NULL,
    created_at timestamp(0) without time zone
);


ALTER TABLE public.password_reset_tokens OWNER TO postgres;

--
-- TOC entry 241 (class 1259 OID 35159)
-- Name: proker; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.proker (
    id_proker bigint NOT NULL,
    id_divisi bigint NOT NULL,
    judul_proker character varying(255) NOT NULL,
    foto_sampul_proker character varying(255) NOT NULL,
    deskripsi_proker text NOT NULL,
    deskripsi_kegiatan_proker text NOT NULL,
    jumlah_hari_proker integer NOT NULL,
    status_proker character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.proker OWNER TO postgres;

--
-- TOC entry 240 (class 1259 OID 35158)
-- Name: proker_id_proker_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.proker_id_proker_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.proker_id_proker_seq OWNER TO postgres;

--
-- TOC entry 3646 (class 0 OID 0)
-- Dependencies: 240
-- Name: proker_id_proker_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.proker_id_proker_seq OWNED BY public.proker.id_proker;


--
-- TOC entry 222 (class 1259 OID 35046)
-- Name: sessions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sessions (
    id character varying(255) NOT NULL,
    user_id bigint,
    ip_address character varying(45),
    user_agent text,
    payload text NOT NULL,
    last_activity integer NOT NULL
);


ALTER TABLE public.sessions OWNER TO postgres;

--
-- TOC entry 239 (class 1259 OID 35140)
-- Name: staff; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.staff (
    id_staff bigint NOT NULL,
    id_divisi bigint NOT NULL,
    id_mhs bigint NOT NULL,
    nama_jabatan character varying(255) NOT NULL,
    foto_pose_staff character varying(255),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.staff OWNER TO postgres;

--
-- TOC entry 238 (class 1259 OID 35139)
-- Name: staff_id_staff_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.staff_id_staff_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.staff_id_staff_seq OWNER TO postgres;

--
-- TOC entry 3647 (class 0 OID 0)
-- Dependencies: 238
-- Name: staff_id_staff_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.staff_id_staff_seq OWNED BY public.staff.id_staff;


--
-- TOC entry 220 (class 1259 OID 35029)
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    email_verified_at timestamp(0) without time zone,
    password character varying(255) NOT NULL,
    remember_token character varying(100),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.users OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 35028)
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.users_id_seq OWNER TO postgres;

--
-- TOC entry 3648 (class 0 OID 0)
-- Dependencies: 219
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- TOC entry 251 (class 1259 OID 35220)
-- Name: voteds; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.voteds (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    nim character(18) NOT NULL,
    avatar character varying(255) NOT NULL,
    vision text NOT NULL,
    mission text NOT NULL,
    cv character varying(255),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.voteds OWNER TO postgres;

--
-- TOC entry 250 (class 1259 OID 35219)
-- Name: voteds_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.voteds_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.voteds_id_seq OWNER TO postgres;

--
-- TOC entry 3649 (class 0 OID 0)
-- Dependencies: 250
-- Name: voteds_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.voteds_id_seq OWNED BY public.voteds.id;


--
-- TOC entry 253 (class 1259 OID 35231)
-- Name: voters; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.voters (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    code character(6) NOT NULL,
    voted_id bigint,
    sended timestamp(0) without time zone,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.voters OWNER TO postgres;

--
-- TOC entry 252 (class 1259 OID 35230)
-- Name: voters_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.voters_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.voters_id_seq OWNER TO postgres;

--
-- TOC entry 3650 (class 0 OID 0)
-- Dependencies: 252
-- Name: voters_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.voters_id_seq OWNED BY public.voters.id;


--
-- TOC entry 245 (class 1259 OID 35185)
-- Name: waktu_proker; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.waktu_proker (
    id_waktu_proker bigint NOT NULL,
    id_proker bigint NOT NULL,
    tanggal_kegiatan date NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.waktu_proker OWNER TO postgres;

--
-- TOC entry 244 (class 1259 OID 35184)
-- Name: waktu_proker_id_waktu_proker_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.waktu_proker_id_waktu_proker_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.waktu_proker_id_waktu_proker_seq OWNER TO postgres;

--
-- TOC entry 3651 (class 0 OID 0)
-- Dependencies: 244
-- Name: waktu_proker_id_waktu_proker_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.waktu_proker_id_waktu_proker_seq OWNED BY public.waktu_proker.id_waktu_proker;


--
-- TOC entry 3374 (class 2604 OID 35102)
-- Name: admin id_admin; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin ALTER COLUMN id_admin SET DEFAULT nextval('public.admin_id_admin_seq'::regclass);


--
-- TOC entry 3383 (class 2604 OID 35214)
-- Name: aspirasi id_aspirasi; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aspirasi ALTER COLUMN id_aspirasi SET DEFAULT nextval('public.aspirasi_id_aspirasi_seq'::regclass);


--
-- TOC entry 3382 (class 2604 OID 35200)
-- Name: color_pallete id_color_pallete; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.color_pallete ALTER COLUMN id_color_pallete SET DEFAULT nextval('public.color_pallete_id_color_pallete_seq'::regclass);


--
-- TOC entry 3377 (class 2604 OID 35129)
-- Name: divisi id_divisi; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.divisi ALTER COLUMN id_divisi SET DEFAULT nextval('public.divisi_id_divisi_seq'::regclass);


--
-- TOC entry 3380 (class 2604 OID 35176)
-- Name: dokumentasi id_dokumentasi; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dokumentasi ALTER COLUMN id_dokumentasi SET DEFAULT nextval('public.dokumentasi_id_dokumentasi_seq'::regclass);


--
-- TOC entry 3372 (class 2604 OID 35090)
-- Name: failed_jobs id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.failed_jobs ALTER COLUMN id SET DEFAULT nextval('public.failed_jobs_id_seq'::regclass);


--
-- TOC entry 3371 (class 2604 OID 35073)
-- Name: jobs id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.jobs ALTER COLUMN id SET DEFAULT nextval('public.jobs_id_seq'::regclass);


--
-- TOC entry 3376 (class 2604 OID 35120)
-- Name: kabinet id_kabinet; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.kabinet ALTER COLUMN id_kabinet SET DEFAULT nextval('public.kabinet_id_kabinet_seq'::regclass);


--
-- TOC entry 3375 (class 2604 OID 35111)
-- Name: mahasiswa id_mhs; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mahasiswa ALTER COLUMN id_mhs SET DEFAULT nextval('public.mahasiswa_id_mhs_seq'::regclass);


--
-- TOC entry 3369 (class 2604 OID 35025)
-- Name: migrations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.migrations ALTER COLUMN id SET DEFAULT nextval('public.migrations_id_seq'::regclass);


--
-- TOC entry 3379 (class 2604 OID 35162)
-- Name: proker id_proker; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.proker ALTER COLUMN id_proker SET DEFAULT nextval('public.proker_id_proker_seq'::regclass);


--
-- TOC entry 3378 (class 2604 OID 35143)
-- Name: staff id_staff; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.staff ALTER COLUMN id_staff SET DEFAULT nextval('public.staff_id_staff_seq'::regclass);


--
-- TOC entry 3370 (class 2604 OID 35032)
-- Name: users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- TOC entry 3384 (class 2604 OID 35223)
-- Name: voteds id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.voteds ALTER COLUMN id SET DEFAULT nextval('public.voteds_id_seq'::regclass);


--
-- TOC entry 3385 (class 2604 OID 35234)
-- Name: voters id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.voters ALTER COLUMN id SET DEFAULT nextval('public.voters_id_seq'::regclass);


--
-- TOC entry 3381 (class 2604 OID 35188)
-- Name: waktu_proker id_waktu_proker; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.waktu_proker ALTER COLUMN id_waktu_proker SET DEFAULT nextval('public.waktu_proker_id_waktu_proker_seq'::regclass);


--
-- TOC entry 3608 (class 0 OID 35099)
-- Dependencies: 231
-- Data for Name: admin; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.admin (id_admin, email_admin, password, remember_token, created_at, updated_at) FROM stdin;
1	arsyadkamaluddin@gmail.com	$2y$12$FF2697042rBw7zFJEyNQ9O3HapS1.pLwti3AprhQ2yviVFatW7eJO	\N	2026-01-17 16:48:10	2026-01-17 16:48:11
\.


--
-- TOC entry 3626 (class 0 OID 35211)
-- Dependencies: 249
-- Data for Name: aspirasi; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.aspirasi (id_aspirasi, nama_pengirim, judul_aspirasi, isi_aspirasi, created_at, updated_at) FROM stdin;
\.


--
-- TOC entry 3600 (class 0 OID 35055)
-- Dependencies: 223
-- Data for Name: cache; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cache (key, value, expiration) FROM stdin;
\.


--
-- TOC entry 3601 (class 0 OID 35062)
-- Dependencies: 224
-- Data for Name: cache_locks; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cache_locks (key, owner, expiration) FROM stdin;
\.


--
-- TOC entry 3624 (class 0 OID 35197)
-- Dependencies: 247
-- Data for Name: color_pallete; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.color_pallete (id_color_pallete, id_kabinet, primary_color, secondary_color, created_at, updated_at) FROM stdin;
1	1	#e65a41	#000000	2024-12-04 05:42:24	2024-12-04 05:42:24
5	4	#cb2a2a	#f9b90b	2025-04-18 11:57:45	2025-04-18 11:57:45
\.


--
-- TOC entry 3614 (class 0 OID 35126)
-- Dependencies: 237
-- Data for Name: divisi; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.divisi (id_divisi, id_kabinet, nama_divisi, deskripsi_divisi, tugas_dan_tanggung_jawab, foto_sampul_divisi, created_at, updated_at) FROM stdin;
1	1	PSDM	Divisi Pengembangan Sumber Daya Manusia (PSDM) memiliki peran penting dalam meningkatkan kompetensi mahasiswa TRPL, menjaga keseimbangan dalam pemenuhan kebutuhan anggota himpunan, serta mengoptimalkan sumber daya untuk mencapai tujuan bersama. Selain itu, divisi ini juga bertanggung jawab dalam mempererat hubungan kekeluargaan antara anggota ASSETS dan mahasiswa TRPL, menciptakan lingkungan yang kondusif bagi pertumbuhan dan kesuksesan bersama.	Menyelenggarakan First Gathering Pengurus ASSETS.\\r\\nMengadakan acara penyambutan mahasiswa baru (SERIES).\\r\\nMengorganisir kegiatan belajar bersama.\\r\\nMengadakan acara BOOST sebagai penutup rangkaian pengenalan mahasiswa baru.\\r\\nMengurus pengadaan korsa dan atribut identitas TRPL.	vnwLI84i2BJB3Ta9erkf1VjcRP3uVtjwn6j7id5E.jpg	2024-12-04 05:43:54	2025-04-18 07:49:05
2	1	MinKat	Divisi Minat dan Bakat bertugas mewadahi minat dan bakat baik dari bidang olahraga, seni,sains terapan maupun esport seluruh mahasiswa/i Teknologi Rekayasa Perangkat Lunak .Divisi Minat dan Bakat bertanggung jawab atas berlangsungnya Unit Kegiatan Mahasiswa (UKM) di prodi Teknologi Rekayasa Perangkat Lunak dan rutin mengadakan Liga TRPL, serta turut mengkoordinasi atlet dan seniman dalam pengikutsertaan dan menyukseskan TGES (TEDI GAMES AND ELECTRONIC SPORT) yang diselenggarakan rutin setiap tahun.	Menyelenggarakan Event tahunan yang bernama LIGA TRPL. \\r\\nMenyelenggarakan Fun Match baik sport maupun e-sport. \\r\\nMenyaring atlet dan Seniman untuk Event tahunan Departemen yaitu TGES.	ARze2dLLoIi79GNynX6HyLhjly14Jre4e89ypnyX.png	2024-12-13 14:16:05	2025-04-18 07:48:23
3	1	HumPub	Divisi yang menjadi garda terdepan dalam membangun, menjalin, dan memperluas relasi, komunikasi, mampu bekerjasama dengan berbagai pihak internal maupun eksternal. Sebagai representasi dan jembatan penghubung antara ASSETS dengan pihak/lembaga terkait dengan tujuan untuk membangun dan menjaga branding organisasi dengan mengelola sosial media ASSETS sebagai media komunikasi.	Humas\\r\\nBertanggung jawab sebagai penghubung informasi terhadap pihak eksternal.\\r\\nMenyampaikan undangan kepada pihak yang bersangkutan.\\r\\nMenjadi jembatan antar organisasi.\\r\\nBerkoordinasi dengan Divisi lain terhadap program kerja yang berkaitan dengan humas maupun tidak berkaitan.\\r\\nMembangun dan memelihara citra positif organisasi.\\r\\nPublikasi\\r\\nMembuat rancangan publikasi sosial media berdasarkan timeline bersama divisi media kreatif .\\r\\nMembuat caption sosial media mengenai kegiatan-kegiatan yang dilaksanakan oleh assets.\\r\\nMembuat rancangan konten video sebagai media penyebaran informasi.	Gtc3mvvTal5b29SnNj6Y1fjFDcBA2QGkNiCySJAR.png	2024-12-13 14:18:32	2025-04-18 07:47:55
4	1	KaStrad	KASTRAD (Kajian Strategi dan Advokasi) adalah divisi yang berfokus pada kajian strategis serta advokasi terhadap isu-isu yang relevan bagi mahasiswa. KASTRAD bertujuan untuk menjadi wadah bagi mahasiswa dalam menyampaikan aspirasi, serta merumuskan solusi inovatif guna meningkatkan kualitas akademik dan kesejahteraan mahasiswa TRPL UGM. Dengan strategi yang efektif, divisi ini dapat mencapai tujuan dan memberikan dampak positif bagi komunitasnya.	Melakukan kajian strategis terhadap isu-isu yang berdampak pada mahasiswa TRPL.\\r\\nMenyelenggarakan forum diskusi serta hearing dengan pihak akademik guna menyampaikan aspirasi mahasiswa.\\r\\nMengadvokasi kepentingan mahasiswa terkait kebijakan kampus, beasiswa, dan UKT.\\r\\nMempublikasikan informasi terkini mengenai kebijakan akademik dan kemahasiswaan melalui media sosial.\\r\\nMenjalin komunikasi yang baik dengan pihak departemen dalam memperjuangkan aspirasi mahasiswa.	WYTkQZ0qyAszFFqc09aCSOn3JF2DVAe7uNybGB0A.png	2024-12-13 14:18:48	2025-04-18 07:47:24
5	1	MedKraf	Divisi Media dan Kreatif (Medkraf) bertujuan untuk membangun citra positif kabinet dengan menghadirkan kreativitas, branding yang kuat, serta konten berkualitas. Divisi ini berperan dalam menyampaikan informasi kepada mahasiswa dan staf melalui berbagai platform media sosial dengan pendekatan visual dan naratif yang menarik.	Meneliti dan mengikuti tren terbaru dalam desain serta komunikasi media.\\r\\nMengembangkan konten visual dan tulisan yang mendukung visi serta misi kabinet.\\r\\nMemastikan kualitas dan konsistensi dalam semua materi produksi serta mengkoordinasikan tim agar mencapai tenggat waktu.\\r\\nMenyusun cerita serta narasi yang menarik untuk tujuan komunikasi spesifik.\\r\\nMengelola proses produksi dari tahap konsep hingga penyebaran konten.	YyEBjNf5ExleZTmIfuKTxDoPcIAiGsepFaChp4HT.png	2024-12-13 14:19:07	2025-04-18 07:46:30
6	1	Pengurus Harian	Divisi yang bertugas untuk memastikan kelancaran berbagai program kerja yang dikerjakan oleh divisi - divisi yang lain serta bertanggung jawab atas koordinasi internal, manajemen administratif, dan membantu divisi lainnya dalam mencapai tujuan bersama. Selain itu divisi ini juga berfungsi sebagai penghubung utama antar anggota organisasi, menciptakan komunikasi yang efektif, serta menjaga keharmonisan kerja tim. Dengan manajemen yang efisien, PH berperan penting dalam menjaga kelangsungan dan efektivitas kegiatan ASSETS TRPL UGM	Ketua Umum & Sekretaris Jendral\\r\\nMenyusun arah strategis organisasi dan memastikan visi serta misi ASSETS berjalan sesuai dengan tujuan jangka panjang.\\r\\nMemastikan tata kelola organisasi berjalan efektif, termasuk pengambilan keputusan yang melibatkan seluruh pengurus dan didasarkan pada data yang relevan. \\r\\nMengawasi pelaksanaan program kerja, memastikan koordinasi antarbidang berjalan optimal. \\r\\nMengelola konflik internal dan eksternal, serta memastikan keberlanjutan organisasi melalui kebijakan yang adaptif\\r\\nSekretaris\\r\\nMengatur seluruh tata kesekretariatan, penerbitan nomor surat, proposal, dan LPJ di bawah regulasi KMTEDI\\r\\nBendahara\\r\\nMengatur sistem keuangan ASSETS.\\r\\nMengelola anggaran dan realisasi program kerja setiap divisi. \\r\\nMenarik KAS pengurus ASSETS. \\r\\nMembuat pembukuan pemasukan dan pengeluaran ASSETS	r8uEIv1yqil5qDaxSyajlM6Z2px2Fd7q3ey4kF24.png	2024-12-13 14:25:21	2025-04-22 06:46:43
14	4	Pengurus Harian	Divisi Pengurus Harian (PH) merupakan pusat koordinasi internal yang memastikan seluruh program kerja antardivisi berjalan dengan lancar. Divisi ini bertanggung jawab atas manajemen administratif, menjaga komunikasi yang efektif antaranggota, serta menciptakan kerja tim yang harmonis. PH memiliki peran penting dalam menjaga stabilitas, efektivitas, dan keberlanjutan kegiatan ASSETS TRPL UGM.	Ketua Umum dan Sekretaris Jenderal bertugas menyusun arah strategis organisasi agar sejalan dengan visi dan misi ASSETS, memastikan tata kelola berjalan secara efektif dan partisipatif, mengawasi pelaksanaan program kerja di tiap bidang, serta menyelesaikan konflik internal maupun eksternal melalui kebijakan yang adaptif. Sekretaris memiliki tanggung jawab dalam mengatur administrasi, mulai dari surat-menyurat, proposal, hingga laporan pertanggungjawaban (LPJ), serta memastikan seluruh dokumen sesuai dengan regulasi KMTEDI. Sementara itu, Bendahara berperan dalam mengatur sistem keuangan organisasi secara transparan, mengelola anggaran dan realisasi dana dari setiap program kerja, menarik iuran kas pengurus, serta mencatat seluruh pemasukan dan pengeluaran ASSETS.	JsHgVLH4mkrRLAPsXPK9JexPXqrhtiS4slwpDvb9.jpg	2025-04-22 06:57:27	2025-06-03 13:54:16
15	4	PSDM	Divisi Pengembangan Sumber Daya Manusia (PSDM) memiliki peran penting dalam meningkatkan kompetensi mahasiswa TRPL, menjaga keseimbangan dalam pemenuhan kebutuhan anggota himpunan, serta mengoptimalkan sumber daya untuk mencapai tujuan bersama. Selain itu, divisi ini juga bertanggung jawab dalam mempererat hubungan kekeluargaan antara anggota ASSETS dan mahasiswa TRPL, menciptakan lingkungan yang kondusif bagi pertumbuhan dan kesuksesan bersama.	PSDM bertanggung jawab menyelenggarakan First Gathering sebagai ajang pengenalan dan penyelarasan program kerja antardivisi. Divisi ini juga mengadakan acara orientasi mahasiswa baru TRPL bernama SERIES, yang berlangsung selama tiga hari untuk memperkenalkan lingkungan akademik dan mempererat hubungan antarangkatan. Sebagai penutup rangkaian pengenalan, PSDM mengadakan acara BOOST selama dua hari satu malam untuk memperkuat rasa kekeluargaan dan memilih Ketua Angkatan. Selain itu, divisi ini mengorganisir kegiatan Belajar Bareng ASSETS sebagai bimbingan belajar rutin menjelang UTS dan UAS, serta mengurus pengadaan atribut identitas TRPL melalui program kewirausahaan, seperti korsa, jersey, dan jaket himpunan.	HQtyI5M331hIQ1mZ1PtXpQuiGIJ5veL3cuTIusnS.jpg	2025-04-22 06:59:28	2025-06-03 13:52:53
16	4	Kastrad	KASTRAD (Kajian Strategi dan Advokasi) adalah divisi yang berfokus pada kajian strategis serta advokasi terhadap isu-isu yang relevan bagi mahasiswa. KASTRAD bertujuan untuk menjadi wadah bagi mahasiswa dalam menyampaikan aspirasi, serta merumuskan solusi inovatif guna meningkatkan kualitas akademik dan kesejahteraan mahasiswa TRPL UGM. Dengan strategi yang efektif, divisi ini dapat mencapai tujuan dan memberikan dampak positif bagi komunitasnya.	KASTRAD bertugas melakukan kajian strategis terhadap isu-isu yang relevan dan berdampak bagi mahasiswa TRPL, baik dalam aspek akademik maupun sosial. Divisi ini menyelenggarakan forum diskusi serta kegiatan hearing sebagai sarana penyampaian aspirasi kepada pihak akademik. Selain itu, KASTRAD mengadvokasi kepentingan mahasiswa dalam hal kebijakan kampus, beasiswa, dan UKT, serta aktif mempublikasikan informasi terkini mengenai kebijakan melalui media sosial. Untuk memperkuat peran advokasi, KASTRAD juga menjalin komunikasi intensif dengan pihak departemen demi memperjuangkan suara mahasiswa secara efektif.	CtqK8LoKAVh7DyRzJWbDBrxXgZPwMmAZXPwJGEEO.jpg	2025-04-22 07:01:39	2025-06-03 13:51:37
17	4	Humpub	Divisi yang menjadi garda terdepan dalam membangun, menjalin, dan memperluas relasi, komunikasi, mampu bekerjasama dengan berbagai pihak internal maupun eksternal. Sebagai representasi dan jembatan penghubung antara ASSETS dengan pihak/lembaga terkait dengan tujuan untuk membangun dan menjaga branding organisasi dengan mengelola sosial media ASSETS sebagai media komunikasi.	Dalam bidang humas, HUMPUB bertugas sebagai penghubung informasi antara ASSETS dengan pihak eksternal, menyampaikan undangan resmi kepada pihak terkait, menjadi jembatan antarorganisasi, serta menjaga komunikasi dan koordinasi lintas divisi baik yang berkaitan langsung maupun tidak dengan bidang kehumasan. Selain itu, humas juga bertanggung jawab dalam membangun dan memelihara citra positif organisasi di lingkungan internal maupun eksternal.\\r\\nSementara di bidang publikasi, HUMPUB bertugas menyusun rancangan publikasi media sosial berdasarkan timeline bersama divisi media kreatif, membuat caption untuk berbagai kegiatan yang dilaksanakan ASSETS, serta merancang konten video sebagai sarana penyebaran informasi yang menarik dan informatif.	9dycp039ibUoQKqOXtUTrffUh1lLn7lbNUpF0VBP.jpg	2025-04-22 07:02:58	2025-06-03 13:49:46
18	4	Medkraf	Divisi Media dan Kreatif (Medkraf) bertujuan untuk membangun citra positif kabinet dengan menghadirkan kreativitas, branding yang kuat, serta konten berkualitas. Divisi ini berperan dalam menyampaikan informasi kepada mahasiswa dan staf melalui berbagai platform media sosial dengan pendekatan visual dan naratif yang menarik.	Divisi Media dan Kreatif (Medkraf) bertanggung jawab untuk meneliti dan mengikuti tren terbaru dalam desain serta komunikasi media. Divisi ini mengembangkan konten visual dan tulisan yang mendukung visi serta misi kabinet, memastikan kualitas dan konsistensi dalam semua materi produksi, dan mengkoordinasikan tim untuk mencapai tenggat waktu yang ditentukan. Medkraf juga menyusun cerita serta narasi yang menarik untuk tujuan komunikasi spesifik dan mengelola proses produksi dari tahap konsep hingga penyebaran konten. Semua program kerja divisi ini ditujukan untuk memperkenalkan serta membangun citra positif kabinet dan ASSETS di kalangan mahasiswa, serta memastikan komunikasi yang efektif antara organisasi dan publik.	VDzv3SskCmXomjoTyqoebMP7NrNZFnLPkusRzjyu.jpg	2025-04-22 07:05:26	2025-06-03 13:48:17
19	4	Iptek	Divisi Iptek memiliki tugas utama untuk mengelola official website ASSETS beserta pengembangan fiturnya yang menyesuaikan terhadap kebutuhan semua divisi didalam ASSETS serta sebagai pintu utama terhadap informasi ASSETS kepada publik. Selain itu divisi ini juga membantu mahasiswa semester awal untuk lebih siap dalam menghadapi mata kuliah Proyek Aplikasi Dasar serta bekerjasama dengan KOMATIK dalam percepatan pengenalan perlombaan untuk memberikan wawasan awal terhadap dunia perlombaan sehingga diharapkan mahasiswa TRPL lebih matang ketika mempersiapkan tim untuk mengikuti lomba.	Divisi IPTEK bertugas untuk bekerja sama dengan divisi Humas dalam pengembangan dan pemeliharaan website profil ASSETS. Divisi ini juga bertanggung jawab dalam mengembangkan fitur pada website sesuai dengan kebutuhan ASSETS atau divisi lainnya, serta memberikan pelatihan singkat kepada mahasiswa terkait beberapa tech stack untuk mendukung pelaksanaan mata kuliah Proyek Aplikasi Dasar. Selain itu, divisi IPTEK bekerja sama dengan KOMATIK dalam pengenalan dunia perlombaan, memberikan wawasan dan dukungan kepada mahasiswa dalam mengikuti berbagai kompetisi teknologi.	psSMhDOm0jE40LdNE0omFtSetTezzX0jaLEMSWqM.jpg	2025-04-22 07:06:39	2025-06-03 13:46:21
\.


--
-- TOC entry 3620 (class 0 OID 35173)
-- Dependencies: 243
-- Data for Name: dokumentasi; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.dokumentasi (id_dokumentasi, id_proker, isi_dokumentasi, keterangan_hari, created_at, updated_at) FROM stdin;
\.


--
-- TOC entry 3606 (class 0 OID 35087)
-- Dependencies: 229
-- Data for Name: failed_jobs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.failed_jobs (id, uuid, connection, queue, payload, exception, failed_at) FROM stdin;
\.


--
-- TOC entry 3604 (class 0 OID 35079)
-- Dependencies: 227
-- Data for Name: job_batches; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.job_batches (id, name, total_jobs, pending_jobs, failed_jobs, failed_job_ids, options, cancelled_at, created_at, finished_at) FROM stdin;
\.


--
-- TOC entry 3603 (class 0 OID 35070)
-- Dependencies: 226
-- Data for Name: jobs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.jobs (id, queue, payload, attempts, reserved_at, available_at, created_at) FROM stdin;
\.


--
-- TOC entry 3612 (class 0 OID 35117)
-- Dependencies: 235
-- Data for Name: kabinet; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.kabinet (id_kabinet, nama_kabinet, logo_kabinet, foto_sampul_kabinet, visi_kabinet, misi_kabinet, makna_kabinet, tahun_awal_kabinet, tahun_akhir_kabinet, deskripsi_kabinet, created_at, updated_at) FROM stdin;
1	Amara	0TKxjHuXsJV5iHzmeVTG8Btcj39HSetswBFUGnnG.svg	aNb91LHuJ6lt6w13zcKQHI0KboEKV7DG66PSmKb1.jpg	Mewujudkan ASSETS sebagai wadah yang kredibel dan aktif bagi mahasiswa TRPL, serta membangun pondasi kuat untuk rencana jangka panjang	Mewujudkan ASSETS sebagai wadah yang terbuka bagi setiap mahasiswa TRPL. Membangun jejaring yang kuat baik internal maupun eksternal. Menjembatani tiap elemen dalam prodi TRPL, serta mempererat relasi eksternal TRPL. Menjadikan ASSETS sebagai himpunan mahasiswa yang memiliki program kerja yang konstruktif. Berkomitmen aktif dalam segala kegiatan departemen , fakultas, maupun universitas	Simbol keabadian, keteraturan, dan keindahan tak terbatas yang merepresentasikan perjalanan menuju kesempurnaan dan harmoni abadi.	2023	2024	Kabinet Amara, sebuah entitas yang mewujudkan keabadian dan keteguhan, menyusun simbolisme yang tak terbatas, menggema dalam gagasan tentang sebuah kabinet yang tak berujung. Dalam filosofi logo ini, dua kalimat tersebut berpadu menjadi aliran estetika yang melambangkan keindahan yang tak lekang oleh waktu.\\r\\n\\r\\nDengan bentuknya yang melingkar, logo ini membangkitkan kesan akan ruang dan waktu yang tanpa batas, menggambarkan esensi keabadian dengan harmoni yang merangkul segala dimensi kehidupan. Sementara itu, elemen-elemen yang tersusun rapi dan simetris memperkuat kesan keselarasan yang teratur dalam perjalanan tiada akhir menuju keabadian itu sendiri.	2024-12-04 05:39:57	2025-04-18 08:07:24
4	Anvaya	u0pm22KjnwB2MwYCpWRWl2jIRGOP6cwAYhxg6PIk.png	UwBOmjOvYNgOfl9gChvL298wXwLvbVGHwFdWD6xD.png	Mewujudukan ASSETS sebagai wadah pengembangan keterampilan, inovasi, serta kolaborasi antar mahasiswa yang berlandaskan nilai-nilai profesionalisme, integritas, dan semangat keberlanjutan.	Mewujudkan ASSETS sebagai wadah untuk menampung aspirasi mahasiswa Memperkuat kolaborasi dan jejaring baik eksternal maupun internal Menyelenggarakan kegiatan yang dapat mengasah dan meningkatkan keterampilan serta potensi mahasiswa Menanamkan nilai-nilai profesionalisme dan integritas dalam setiap kegiatan Membangun ekosistem pembelajaran kolaboratif antara mahasiswa, dosen, dan praktisi industri untuk mendorong inovasi berkelanjutan.	Anvaya melambangkan kesinambungan nilai-nilai luhur dari generasi ke generasi tanpa kehilangan jati diri. Seperti sungai yang mengalir, kabinet ini memastikan kemajuan tetap berakar pada prinsip yang kuat, menjembatani masa lalu dan masa depan dengan semangat keberlanjutan.	2024	2025	Anvaya melambangkan kesinambungan nilai-nilai luhur dari generasi ke generasi tanpa kehilangan jati diri. Seperti sungai yang mengalir, kabinet ini memastikan kemajuan tetap berakar pada prinsip yang kuat, menjembatani masa lalu dan masa depan dengan semangat keberlanjutan.	2025-04-18 11:56:30	2025-06-08 07:42:40
\.


--
-- TOC entry 3610 (class 0 OID 35108)
-- Dependencies: 233
-- Data for Name: mahasiswa; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.mahasiswa (id_mhs, nama_mhs, foto_profil_mhs, created_at, updated_at) FROM stdin;
12	Daffa Askar Fathin	1JH04Aj6YikYHC9FmBMC6VncW1xnIBeCHlgm6YjK.png	2024-12-13 14:33:05	2024-12-13 14:33:05
13	Muhammad Farhan Nugroho	jrW6ilkffPfMV5rpyhazWc4XWh1kGQUz2XYY66lM.png	2024-12-13 14:33:20	2024-12-13 14:33:20
14	Rahmat Nur Panghegar	70VRRUty8CoS14ZmssjckOrY6s2uJzGbb2mkvNpX.png	2024-12-13 14:33:45	2024-12-13 14:33:45
15	Ahmad Luthfi A	MRtx1bLSj52bnMbtOXhKA5Zh8M4535WE4ygLBJN8.jpg	2024-12-13 14:34:00	2025-06-03 15:39:28
16	Nadzira Azhani F	nQcBAVumBbYsc0Cx7AOeOg66IoF81wIt1XGBf2bV.jpg	2024-12-13 14:34:23	2025-06-15 00:03:42
17	Robertus Dimas	nYBlCJzb3euAa1t6yWh0u3ky0fS1OuBdMPDbXNN7.png	2024-12-13 14:34:50	2024-12-13 14:34:50
18	Bima Bayu Sofana	kHapbxB8CarCdQAFeGi3TbSojYHGjq0frvRQKhoh.png	2024-12-13 14:35:10	2024-12-13 14:35:10
19	Asyifa Dzaky	cRZ7p9g7ylZdICbQkuF8beehjkHbIT0aFZY9zenn.png	2024-12-13 14:35:36	2024-12-13 14:35:36
20	Septyan Yaumul F	xH6D1qs0bKEM8oy1NJEFGlL4ySgzQAsT9Gmx1xR1.png	2024-12-13 14:35:51	2024-12-13 14:35:51
21	Afra Cendekia Putri Jallil	AuhLnMgEQRlUWK9nyPuw80qE9ihWWfx0imfkzMO0.png	2024-12-13 14:42:32	2024-12-13 14:42:32
22	Muhammad Ernestiyo Guevara	GOitMTLyD4xOSI9UFOPztynZjrJpueEkuCZ4rTuc.png	2024-12-13 14:43:01	2025-07-12 02:20:34
24	Nino Aulia Nahara	zf12ebnBNiEMVmJLkYLFwzbOGLFpGwPt400dgAhe.png	2024-12-13 14:45:38	2024-12-13 14:45:38
35	Nadia Eka Febrianti	6tni7aLjNvDz1y1Xatbpqjn0x1Chg4ivjmj278d4.png	2025-04-18 10:12:13	2025-04-18 10:12:13
36	Zefanya Diego F	ktYCZEo91CqhFTb05Ey5SQJMkGfWjV4eQGQFq5jf.png	2025-04-18 10:13:33	2025-04-18 10:13:33
37	Mahendra Yuda P	P4H77CBDjVBAeahVkRgw3jNPZxQpRBGa6fCgkwvL.png	2025-04-18 10:14:11	2025-04-18 10:14:11
38	Syahla Naiimah	PhbpFb13Wgi4NhFKLkpoT8DpdqIacGb4G2BH7ryI.png	2025-04-18 10:14:53	2025-07-12 02:20:20
39	Naufal Adhitya P	uhDtOpQerDbuNW8lOvxjMZ7Skfqfq0G9jAgWqnbr.png	2025-04-18 10:15:32	2025-04-18 10:15:32
40	Belda Putri Pramono	hn7aL8bVS0ZFCbj751YwkGaMpPjn85TfFlOJ1sSr.jpg	2025-04-18 10:16:25	2025-06-15 00:01:37
41	Laily Nuriyatul F	NNACoxF3n5CoNZoxFI49axpT06UIyHzwG8FFgx6s.jpg	2025-04-18 10:17:53	2025-06-15 00:04:39
44	M. Hanif Syauqi	Rqnkng9zCqNM7MG5yT7Nf1gRjg3vY5E8wnbH0qh3.png	2025-04-18 11:32:19	2025-04-18 11:32:19
46	Aminah Nurul Huda	NZWJfdY1IA74p8Ey7KJsRO95KG0bAkWkiAfs2LkV.png	2025-04-18 11:33:27	2025-04-18 11:33:27
47	Wahhab Awwaluddin	9yeCwBPJeWritFnwNVfAikVFoeo6vtFFj26mrwWc.png	2025-04-18 11:34:16	2025-04-18 11:34:16
48	Aurelius Bevan Yudira	HwTRweamzBnlHqhJynt1Bn6gp9PaFhnXOZ0OL53N.png	2025-04-18 11:34:49	2025-04-18 11:34:49
50	Amelia Ayu Tri C	akA4uZlZWKOnepr3EK04840fiYe3yBVsKqd4RiFb.png	2025-04-18 11:36:25	2025-04-18 11:36:25
51	Marsha Bilqis N	061ZhOMatpX2paQcLfuHlSLsd00KXtXLMCGrkXcy.png	2025-04-18 11:36:53	2025-04-18 11:36:53
52	Muhammad Rifai	kt3g398F9JppUUZd6PZMqpE65LVzlLEtbbsE04kz.png	2025-04-18 11:37:24	2025-04-18 11:37:24
53	Ananda Hirzi T	TUy5wCzPCjW2DM4x8h4SGDHs6gltEgeVbVmnldrN.png	2025-04-18 11:38:01	2025-04-18 11:38:01
55	Ajeng Cerelia Evin	KtYbS1RYJ6P6KkWIyxMun5YGpdB9dgoRbfqkf1Sg.jpg	2025-04-18 16:57:28	2025-04-18 16:57:28
56	Aldy Ardiansyah	BEr4lU3fF2L7Na5tWJaa3zPhVoFsJ9GZt5PwcEG9.jpg	2025-04-18 16:57:47	2025-04-18 16:57:47
57	Ashila Najla Salsabilla WD	XZKlpRUN4E5kavPyaUlWI2wzEsfFKVk3Bw5hxSdI.jpg	2025-04-18 16:58:05	2025-04-18 16:58:05
59	Ryvalino Dhanu Ekaputra	8nUYYxds3PP0TKgwIskCTdWezCSNhaM3Rf41T7N3.jpg	2025-04-18 16:58:41	2025-04-18 16:58:41
60	Muhammad Robbi Firmansyah	9hgZN9NM2GdyygUgKkr1BZzz619doXEpSOsPxIiA.jpg	2025-04-18 16:58:58	2025-04-18 16:58:58
61	Mohamad Dwi Affriza	o1vOAqXzXIIDa380dXDtzCarfA2XB3jHJ3ifbLmD.jpg	2025-04-20 16:30:54	2025-04-20 16:30:54
64	Miftah Sabirah	mF43W2hVb7LK3h1MlaPF2pH5gRXg8rDF4wgBqXb0.jpg	2025-04-22 01:27:47	2025-04-22 01:27:47
65	Dimal Karim Ahmad	DLStsTBLPoNfowN5lVQGyyaesFFn3J6sTMlMBT8G.png	2025-04-22 01:28:08	2025-07-12 02:35:19
66	Muhammad Rizky Aziz	nKOhEOsnQ5XqPwbsvHPdOIjbGRN0oMYzxbIYmx5U.jpg	2025-04-22 01:29:00	2025-04-22 01:29:00
67	Dragan Abrisam Widijanto	Eok5KJ48LSMnvGOX8dO9X5cTZeWcWYuxPz6NdNlP.jpg	2025-04-22 01:29:25	2025-04-22 01:29:25
68	Govan Dwi Aditya	1plVXkkSIkYQwCQpjxxl4XrgkA3xFP5oFnCskEyn.jpg	2025-04-22 06:30:29	2025-06-03 15:54:06
69	Huda Muhammad Nur	ZpNA7q7onbhDmdSWDxWcE54WTgcrclBs1mzf5rb5.jpg	2025-04-22 06:31:15	2025-04-22 06:31:15
70	Heinrich Radhitya	euG4bFzKRXIOsz3BqnsNKWeHZFU0bk4qdz6vUHtf.jpg	2025-04-22 06:32:03	2025-04-22 06:32:03
71	Nawal Rizky Kautsar	kXQTHOWF8T53D9NOJMoqjMJeZenSqcURAdOyIVoV.jpg	2025-04-22 06:32:31	2025-04-22 06:32:31
72	Anisah Salma Rafida	hRLGdOrTVIwNVJILGilzxmJnmvwpo2EdKGQ4kBCy.jpg	2025-04-22 06:32:51	2025-04-22 06:32:51
73	Wildan Dzaky Ramadhani	5QB1OVPhlr8mTO2MBkhlFDQMf6hJWlukGs9E2h2l.jpg	2025-04-22 06:33:28	2025-04-22 06:33:28
74	Rifqi Renaldo	PPi9cStA8piGKSfkSi9mQT76yiVEXIiDMks4xBtt.png	2025-04-22 06:37:39	2025-07-12 02:37:27
81	Yodhimas Geffananda	ITXgQ918rXw71uuT18XL13DVZNQhdyYNMVqFd8wI.jpg	2025-04-29 02:36:55	2025-04-29 02:36:55
82	Rioga Natayudha	6GKXDlmPSXSwp2BHYg57Z2dYsBXNULfuaFgpbASq.jpg	2025-04-29 02:37:20	2025-04-29 02:37:20
83	Risma Saputri	S3wbfEQT8TP4LZO78uxy8hvMbReNLE21Wr6AvEl7.jpg	2025-04-29 02:37:43	2025-04-29 02:37:43
84	Charizza Thunjung	Aq5mUkJVZlutO7ooCIkqhABgIedeY6stG4HjzpZH.jpg	2025-04-29 02:38:01	2025-04-29 02:38:01
85	Luthfi Lisana S	CibhoHC1VBTEmXUO7O9vy2byq4TFOH8LYdGIGGl4.jpg	2025-04-29 02:38:31	2025-04-29 02:38:31
86	Marwah Kamila A	HXVxufUcHMJW8dmM8rfbAlt7kqtinL8seCROoA21.jpg	2025-04-29 02:38:49	2025-04-29 02:38:49
88	Alif Rizqullah Maruf	4hx8QdFyL6GmHQq3OnwFqmEHhMNvHfI69ZLolaeC.jpg	2025-06-02 01:04:18	2025-06-02 01:04:18
100	Darriel Markerizal	rn4AaUZukEhwhUaynX07e4VZsSXKV6lV5woYEM6K.jpg	2025-06-03 13:23:01	2025-06-03 13:23:01
101	Rasyid Kusnady	bll3pnuCdgH5s2XUQOXNWYNGKM4Jajh7tsbQRFaU.jpg	2025-06-03 13:23:22	2025-06-03 13:23:22
102	M. Syuja Rizqullah	32aTkTpqb6IbCJGS6RuRVd7mkUSSKvWjQ6AFfAgW.jpg	2025-06-03 13:23:39	2025-06-03 13:23:39
103	Deandra Santoso	TcxKXkyd06ZdmWYtFPLcnfuiXqPHOh5WQrIDJt1V.jpg	2025-06-03 13:23:57	2025-06-15 00:41:07
104	Maritza Angelina	nT08wgYMqGG5YgYrqQCCqG1hIrSYQgf5KvngmXLN.jpg	2025-06-03 13:24:18	2025-06-03 13:24:18
105	Zhazha Nurani	84acFgANXaybFlGMDkqHz0t9JtFYLXj5hxyxmT2Q.jpg	2025-06-03 13:24:38	2025-06-15 00:39:10
106	Mulia Simanjuntak	hOqcfQtuOA6GOFtcLC386lfYVr3uBqf9IyCzyfn3.jpg	2025-06-03 13:25:00	2025-06-15 00:39:26
107	Resanti D Cahyani	E9c08Uk0B5WlZNRuKLaBqAOp3EKEBfQqWemhyKbO.jpg	2025-06-03 13:25:21	2025-06-03 13:25:21
108	Syafira Naila	Cpz6jJdNDh49t074XhA1OUoKyiUL88htb0cLgRun.jpg	2025-06-03 15:54:58	2025-06-03 15:54:58
109	Fairuz Zahirah Abhista	R8ksicwHjm2cOtgcdYF8BDz2olmPGXXgAhfDrWXU.jpg	2025-06-03 15:55:23	2025-06-03 15:55:23
110	Gurveender Jeet Kaur	kEvoW42j8Oqnx9z0PE53u2vF0U0OpzD86bT4k2Rk.jpg	2025-06-03 15:55:37	2025-06-03 15:55:37
111	Rizky Maulidia Salsabila	dMSJv05HBB6dUjqXAEGEWgGVouSJVubKR374rRkq.jpg	2025-06-03 15:55:54	2025-06-03 15:55:54
112	Syakira Zahratul Firdaus	BmtSXC97auw6Cyhb4h9lOvEZ2JfyGg0ecqDDGSr6.jpg	2025-06-15 00:01:59	2025-06-15 00:01:59
113	Kamila Anisa	FSGljyyHQAYGaGtV7FiWlQxAk8DTaZnxO3ZOxs9t.jpg	2025-06-15 00:02:21	2025-06-15 00:02:21
114	Putri Nurdiana	yZLAqCJPn6PvEvH8tgVI9DGNo6Te6tky7qVMbpEV.jpg	2025-06-15 00:02:53	2025-06-15 00:02:53
115	Tito Alla Khairi	1dhEvUuL985yl8PgxOJy8L7GtWtHvmEcu7Mreuur.jpg	2025-06-15 00:03:13	2025-06-15 00:03:13
116	David Antonio Syahputra	MnX0YsXuZJWGya2TACv8hmp8gPuZ3OYh2VfT25tG.jpg	2025-06-15 00:03:27	2025-06-15 00:03:27
117	Safira Dwita Ramadhani	u5uidVrnT9f163oCgjslfeswI3dDEwU620h85TZK.jpg	2025-06-15 00:04:01	2025-06-15 00:04:01
118	Avirza Radyatanza	GdHM7zrztZfcFQFY3hNTh7ihNmrJZ9DgVezWxB7y.jpg	2025-06-15 00:04:15	2025-06-15 00:04:15
119	Ayu Atikah	F0wYWSB95zNeU1T2YvmpQwt5hdq1hXyqqwgWKjGk.jpg	2025-06-15 00:04:56	2025-06-15 00:04:56
120	Kamaluddin Arsyad	0P9Kx6n1fjjkhljlHYKxbkQireTKGqs79GAGfvOS.jpg	2025-06-15 00:22:04	2025-06-15 00:22:04
121	Dias Lintang	fRUiOW4Qgwb04R6ZqXmHEYVcur9UWEcAyYBPXG3I.jpg	2025-06-15 00:22:16	2025-06-15 00:22:16
122	Yusuf Catur Saputro	w6WZbHyKtKrqJf1tCXsIcvBbBukeYP1jnnN8hH9M.jpg	2025-06-15 00:22:34	2025-06-15 00:22:34
123	Ghani Zulhusni Bahri	5HT9L880aB8TGgPIUymkUbSYUQ2hAD17kmbCe4l6.jpg	2025-06-15 00:23:01	2025-06-15 00:23:01
124	Azril Fahmiardi	kcTYpZMqlFkuvROnTYQhepwtlrKnQ4mrFVHgyfLV.jpg	2025-06-15 00:23:16	2025-06-15 00:23:16
125	Faradis Yulianto	IosRfHZxdsnGoMugsQRFE4hseu8AjqVfwkbRgtmi.jpg	2025-06-15 00:23:37	2025-06-15 00:23:37
126	Muhammad Zidan Alhilali	GZneEUiWQJFafT9Eb9mlXtrYCw2ho0uEH2J2AHxv.jpg	2025-06-15 00:23:52	2025-06-15 00:23:52
127	Irene Talitha Tyas Raharjo	R5ENjjPWXNMeieDiZvByqecah33QYaLSvaTyfoVN.jpg	2025-06-15 00:40:31	2025-06-15 00:40:31
128	Rizki Nur Ikhsan	MPJLVVa5EHbF627PcYOt5OueC9boIpOA1G9r4Ur3.jpg	2025-06-15 00:40:48	2025-06-15 00:40:48
129	Prihastomo Budi Satrio	LAyD8x5RP05uUy51KxwwMCfMpVQ9Ad9DA8GyehkY.jpg	2025-06-15 00:41:28	2025-06-15 00:41:28
130	Delviano Khairu Attahira	vr2J4mbLFOPTFyzPbMpyTyuBLG4qgoTRZA1mQySC.jpg	2025-06-15 00:41:41	2025-06-15 00:41:41
131	Dimas Satria Widjatmiko	4Ov1Lj2RifmXeQHdjXxwNirFuqS2wcyLD94nHPOn.png	2025-07-12 01:46:18	2025-07-12 01:46:18
132	Rua Adelia	q9bHITDM4zGHvI0uPdZoveChieZjNlDAMyMdtRwz.png	2025-07-12 02:20:46	2025-07-12 02:20:46
133	Muhammad Krisvananta Muflih Afif	XgugJRwWgV0vdM563FJMMqMHxSAhnNtivnZu9i50.png	2025-07-12 02:21:02	2025-07-12 02:21:02
134	Nawwaf Zayyan Musyafa	dMzWPlLLhQWUebKZ92VSHsP3Fn90NLkx3ZO8NZfQ.png	2025-07-12 02:21:19	2025-07-12 02:21:19
135	Aliya Khansa Kamaliya	WzovHzoTvFXimIa8SBfSs7DYOIoJ5qBheY1ZvE3z.png	2025-07-12 02:21:35	2025-07-12 02:21:35
136	Aulia Rahma	KYNgybSnScuQC03awlrkpB1sfzJYjF0jO4fOSI32.png	2025-07-12 02:22:05	2025-07-12 02:22:05
137	Dzakiya Hakima Adila	5eESkFORPCrMJ8wZCiscbQ3kkRrL6mioOeaRx41S.png	2025-07-12 02:22:18	2025-07-12 02:22:18
138	Hayyina Attaqiyya	557XcVGtWi8HMesf7qNd6rP6DNzBCtYyPR19fWRy.png	2025-07-12 02:22:33	2025-07-12 02:22:33
139	Muhammad Hisyam Ardiansyah	m6rjuzyLI5tIu2E6CsPrJTqJ9b88AyP1e0c0latU.png	2025-07-12 02:35:38	2025-07-12 02:35:38
140	Najmina Kinanti Putri	xWWMOPeGvFuIqkpy6JtgQY2e8EwjhQiOzYOcBELX.png	2025-07-12 02:35:58	2025-07-12 02:35:58
141	Ayu Mirnawati	AXsbjMOV78elOSXQtPdLmp7KbJENmhI50HC6m8i9.png	2025-07-12 02:36:13	2025-07-12 02:36:13
142	Rizky Laksmitha	fPMOnTaW7keYHsyTu0V5bUjM8jOKz5NxPufsGupt.png	2025-07-12 02:36:24	2025-07-12 02:36:24
143	Devia Artika Maharani	MNjYYkSxeWEB5TFUvJbrw6AgXtIES4PLdk1G54Mp.png	2025-07-12 02:36:40	2025-07-12 02:36:40
144	Siti Nur Azizah	HOWtCDnIhTVER9SYxi1A1KYobRSKpPUeFwYDoJMr.png	2025-07-12 02:37:04	2025-07-12 02:37:04
145	Azzhara Armelia Aina	QaESEsVThdEf4UeG27zj6FFbuDY5fjHfgwmiTRVP.png	2025-07-12 02:37:16	2025-07-12 02:37:16
\.


--
-- TOC entry 3595 (class 0 OID 35022)
-- Dependencies: 218
-- Data for Name: migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.migrations (id, migration, batch) FROM stdin;
1	0001_01_01_000000_create_users_table	1
2	0001_01_01_000001_create_cache_table	1
3	0001_01_01_000002_create_jobs_table	1
4	2024_10_19_040420_create_admin_table	1
5	2024_10_19_040658_create_mahasiswa_table	1
6	2024_10_19_040736_create_kabinet_table	1
7	2024_10_19_040822_create_divisi_table	1
8	2024_10_19_041057_create_staff_table	1
9	2024_10_19_041130_create_proker_table	1
10	2024_10_19_041311_create_dokumentasi_table	1
11	2024_10_19_042435_create_waktu_proker_table	1
12	2024_10_19_042609_create_collor_pallete_table	1
13	2024_10_29_102453_create_aspirasi_tabel	1
14	2025_11_13_033708_create_voteds_table	1
15	2025_11_13_033709_create_voters_table	1
\.


--
-- TOC entry 3598 (class 0 OID 35039)
-- Dependencies: 221
-- Data for Name: password_reset_tokens; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.password_reset_tokens (email, token, created_at) FROM stdin;
\.


--
-- TOC entry 3618 (class 0 OID 35159)
-- Dependencies: 241
-- Data for Name: proker; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.proker (id_proker, id_divisi, judul_proker, foto_sampul_proker, deskripsi_proker, deskripsi_kegiatan_proker, jumlah_hari_proker, status_proker, created_at, updated_at) FROM stdin;
\.


--
-- TOC entry 3599 (class 0 OID 35046)
-- Dependencies: 222
-- Data for Name: sessions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.sessions (id, user_id, ip_address, user_agent, payload, last_activity) FROM stdin;
8EGJsQ9QqFn69rIMJTdHO4nWp7dzzMFxM8RfM764	\N	172.20.0.1	Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36	YTozOntzOjY6Il90b2tlbiI7czo0MDoiQ2Q3TlpEMjVTMlRkSHlrZjN1aHJWVFNudWl6UVdKdE9pZExoZ0VZNSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly9hbnZheWEuYXNzZXRzdWdtLmNvbS92b3RpbmciO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19	1768990906
sbAPgw5Dm56wk8ogVpVA1i85zE0lg1bYrqnzxvwd	\N	172.20.0.1	Mozilla/5.0 (iPhone; CPU iPhone OS 15_8 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/120.0.6099.119 Mobile/15E148 Safari/604.1	YTozOntzOjY6Il90b2tlbiI7czo0MDoiTDVhVTN2Z0ZXOWR0SXZvQ3NNTFFScU44eEdkSzZmUWlZRFJjQjUyZSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly9hbnZheWEuYXNzZXRzdWdtLmNvbS92b3RpbmciO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19	1768991621
e2jiw6vuQTLXqGrnoQkW1dqf2BxUsBVnI5TEOAwe	\N	172.20.0.1	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36	YTozOntzOjY6Il90b2tlbiI7czo0MDoic2RmVkh1TjRQNkQ5UXVqSFZnZ3dmTG9xdGxldWYwQ2lyTVFXMGxiNCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjA6Imh0dHA6Ly9hc3NldHN1Z20uY29tIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==	1768989635
Tx4ct1gtV4u24vkg2rT9gdx1etbiA86XGObrml9S	\N	172.20.0.1	WhatsApp/2.23.20.0	YTozOntzOjY6Il90b2tlbiI7czo0MDoiMzR5THdFTEs5d0Fob1lqTThtblVHOEhpa0NzYUZsdGRVa3BYNDVGOSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly9hbnZheWEuYXNzZXRzdWdtLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=	1768993193
KlnS1Ga2Qza2H6b4kY5N8iPxzlb6dKEngDDtYJ9U	\N	172.20.0.1	Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Mobile Safari/537.36	YTozOntzOjY6Il90b2tlbiI7czo0MDoiOUU2YjhDMU16RVA2WWVkek8zaWNjS1lVVTZJbnU0Wjhsb0duZTN4NiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly9hbnZheWEuYXNzZXRzdWdtLmNvbS92b3RpbmciO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19	1768993029
F6cMpUJkov8yZMqqFIPZ2oArJfkTo3wu0AdL1ivZ	\N	172.20.0.1	Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/29.0 Chrome/136.0.0.0 Mobile Safari/537.36	YTozOntzOjY6Il90b2tlbiI7czo0MDoid0pZSHlidUFTV3MxQ2hXOWdyUkdJb0VyY3E2T3lzYzI3ZHAwNGxzaCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly9hbnZheWEuYXNzZXRzdWdtLmNvbS92b3RpbmciO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19	1768996283
nN0hwUMh3fDuhgJd1fRiWD9L2iWBl7aeEZXq8fMy	\N	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36	YTozOntzOjY6Il90b2tlbiI7czo0MDoiUkdoc2duRnpoYzRZNDRMRGJYRTQzdnZ1clhXVXU2QURxQjBHV2V2dyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly9hbnZheWEuYXNzZXRzdWdtLmNvbS92b3RpbmciO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19	1768997019
J4BMsZHUdunRF9vcGPBGNZCZjk7iEIGNi8WPeucj	\N	172.20.0.1	Mozilla/5.0 (iPhone; CPU iPhone OS 17_5_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/144.0.7559.85 Mobile/15E148 Safari/604.1	YTozOntzOjY6Il90b2tlbiI7czo0MDoiYjViYUpHUjdUUnU1TWxEYmtRTDNQVkZqUnJSZmV1amlPYXplRXJyNyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly9hbnZheWEuYXNzZXRzdWdtLmNvbS92b3RpbmciO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19	1769003303
G7UnHIiPr0zvo6tI8gu8ykiGSRPCQJm8wiqDKmgS	\N	172.20.0.1	okhttp/5.3.0	YTozOntzOjY6Il90b2tlbiI7czo0MDoiMmhSMlF2QmN4RnJOeTNLbkFMSDI0VkVJTjZUVDNlU0xFRnByRmtuSiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjA6Imh0dHA6Ly9hc3NldHN1Z20uY29tIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==	1769009363
WPMM3ejpsgQ3OYoiR8Z27RyQSQ77FavNKTmvt2VW	\N	172.20.0.1	Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36	YTozOntzOjY6Il90b2tlbiI7czo0MDoiYUFBZXNVQ0YycjdWaFJ5ZlBNTGNWZDFIWWlzMW5xSjkwY0FGUnU3SCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjA6Imh0dHA6Ly9hc3NldHN1Z20uY29tIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==	1769028686
DQRHyQFhkmed1F2BapVclygK4JL2Bm5KIWYctybi	\N	172.20.0.1	Mozilla/5.0 (compatible; SaaSBrowserBot/1.0; +https://saasbrowser.com/bot)	YTozOntzOjY6Il90b2tlbiI7czo0MDoibjltR3JEQW13Q1ZXaklPeGlianF3cW5xV0ZKU2FhOFlOcXcxNEduVSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjA6Imh0dHA6Ly9hc3NldHN1Z20uY29tIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==	1769047906
mwczuNA0JgcAV7pfnOKWWAlIkMklAv8B4tT1hyHh	\N	172.20.0.1	WhatsApp/2.23.20.0	YTozOntzOjY6Il90b2tlbiI7czo0MDoiSU9VeWtUSzQ4UWFaQkU2M1pVeldwbkxZY3BOaUs2WktLNU9lOTNQUiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly9hbnZheWEuYXNzZXRzdWdtLmNvbS92b3RpbmciO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19	1768993197
bKdVnV3TnTJfpYWap2R2apL5WNXpBLaIoHdZ8EQ6	\N	172.20.0.1	Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Mobile Safari/537.36	YTozOntzOjY6Il90b2tlbiI7czo0MDoiTVdybFE0VThyN1A5dnVuaTJUZ3hnVUNDZzdVdENZa1AzdUVpVm5OaCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly9hbnZheWEuYXNzZXRzdWdtLmNvbS92b3RpbmciO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19	1769000895
QlcUAnJtkcSKgJAs2yukM0uMdATZYsPnSLNlazEs	\N	172.20.0.1	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36	YTozOntzOjY6Il90b2tlbiI7czo0MDoidlY1VHdFQWxLWmRqMVA0eG50dlBWbUdpb0wwQjhZRUpBR3hrM3NrSCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly9hc3NldHN1Z20uY29tL3ZvdGluZyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=	1769003686
grfHMnLZpMuQGpIOOH40AEsrAnVMw8Y613VUQ1Dv	\N	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/138.0.7204.23 Safari/537.36	YTozOntzOjY6Il90b2tlbiI7czo0MDoidjBGYjY4bjdwRGpzbU9EZm9nRUx4YWU1aGg2b3FlSGxTTHBnNHpFayI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjA6Imh0dHA6Ly9hc3NldHN1Z20uY29tIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==	1769009388
vNLqNjeZ8Va9OFC8qb5oEWLxrThPgWZ6pZMPS5FG	\N	172.20.0.1	Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.2 Mobile/15E148 Safari/604.1	YTozOntzOjY6Il90b2tlbiI7czo0MDoicUh4RThqTVBtWmNBazhoMmtGSlZ6WmhFaVc0WHYzcU9TWVB6S0ZsUCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly9hbnZheWEuYXNzZXRzdWdtLmNvbS92b3RpbmciO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19	1768989714
mA0IkOctXTytqu9al1O5Cpq4VHkeF82jw1ZmJMkN	\N	172.20.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36	YTozOntzOjY6Il90b2tlbiI7czo0MDoiZTdjd204RXBYTEZ4OFA5UHg4eVhHUmFOSUJYejZ5QUpldnBJNk13aSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly9hbnZheWEuYXNzZXRzdWdtLmNvbS92b3RpbmciO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19	1768991246
pLAZ31bjiDCrTfHl3tlX4SMVgWS2NhY8yDWVPJVr	\N	172.20.0.1	Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Mobile Safari/537.36	YTozOntzOjY6Il90b2tlbiI7czo0MDoiZ1ltRW81NHNpTGxTT2VJbGNpczVGWnBtbldvMW56Q3BPMlY4cVkyUyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly9hbnZheWEuYXNzZXRzdWdtLmNvbS92b3RpbmciO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19	1769029289
xPfJeXu6QIrkylQYV6YxcJIG0LeJZ0ue36wGhCfL	\N	172.20.0.1	Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Mobile Safari/537.36	YTozOntzOjY6Il90b2tlbiI7czo0MDoiZk9Ib0NJTE96TUNRbmNLdURIaWFYZ1lDZ1pCZTJXQlNVU21sTGgzcSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly9hbnZheWEuYXNzZXRzdWdtLmNvbS92b3RpbmciO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19	1768990778
0P8wQSvRarOizWorO8whufqhGBHUckhdSPeFW2KY	\N	172.20.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36	YTozOntzOjY6Il90b2tlbiI7czo0MDoibzhUaHVha05qbVJ2UnRacDh2MUxFc2VpVUM3UVdrT0poSHl5NmIyYiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDI6Imh0dHA6Ly9hc3NldHN1Z20uY29tLz91dG1fc291cmNlPVJlbnQ1U0JFUiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=	1769052207
5fVAc8VLfNdlZu0VdUgo9ILduqEOcZfvJSiJSAPy	\N	172.20.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36	YTozOntzOjY6Il90b2tlbiI7czo0MDoiQ1ZyQXpyR1NsZjVSbkEwOTZWSThVNzRhVXZLa21mUHpTT0RVa1dTWiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly9hbnZheWEuYXNzZXRzdWdtLmNvbS92b3RpbmciO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19	1768991716
Fo99eAuSAlvgC4r7v9Cxv8a83z5KyPfJe8kYP1YY	\N	172.20.0.1	Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Mobile Safari/537.36	YTozOntzOjY6Il90b2tlbiI7czo0MDoicVhYblJOdlgxd0lxaE5wUnBjM1pnYjNBS2JMQnRONW5HVWJZVzlwcyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly9hbnZheWEuYXNzZXRzdWdtLmNvbS92b3RpbmciO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19	1768993205
vJzNrkexJOZEcizLfc5jcL6lhyBCZNQ9z8Sk2qKL	\N	172.20.0.1	python-requests/2.25.1	YTozOntzOjY6Il90b2tlbiI7czo0MDoiZ0lsTHNrMloyT281WUZPVU05bzZJa3pzS09yVGdYMEt3cDZrOG1IZyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjA6Imh0dHA6Ly9hc3NldHN1Z20uY29tIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==	1768990264
T18BX9N1BwhJoshaFzdZcnfBlVqiAhnxz45QQDFN	\N	172.20.0.1	Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.2 Mobile/15E148 Safari/604.1	YTozOntzOjY6Il90b2tlbiI7czo0MDoiNWZtYlJiSzd6dlhhT0JMUU9TY21PR290WUpXTnRUNUdhSzVDb093OCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHA6Ly9hbnZheWEuYXNzZXRzdWdtLmNvbS9zL3F3Y3ZqaiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=	1768990806
VwgNUzXCBKqrCw9yyhLsUj8yIRblw9tFDcGd55nH	\N	172.20.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 Edg/140.0.0.0	YTozOntzOjY6Il90b2tlbiI7czo0MDoiWEp1ODNzQmVCYzZ0Q1hHejdNakI0V1FmbDVzSFRxSlZlNkp6b2JieSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly9hbnZheWEuYXNzZXRzdWdtLmNvbS92b3RpbmciO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19	1768991735
4CS5JbGvyHvxnGJ4NOwxappVv7iG8IPb8CjWui8B	\N	172.20.0.1	Mozilla/5.0 (Linux; Android 13; Redmi Note 10 5G Build/TP1A.220624.014) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.7049.79 Mobile Safari/537.36 XiaoMi/MiuiBrowser/14.49.1-gn	YTozOntzOjY6Il90b2tlbiI7czo0MDoicTBqTDMyZ1l1QXl1OFhEVW1ESnRHSTFZSlJreTRremNIU25SS1ZNTiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly9hbnZheWEuYXNzZXRzdWdtLmNvbS92b3RpbmciO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19	1768993342
lEPwj0gcQmyB6UK9NgVKWvlnMe1NFiZVCIgmKpf2	\N	172.20.0.1	Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Mobile Safari/537.36	YTozOntzOjY6Il90b2tlbiI7czo0MDoiSVdrNk1YYkRqSzRpZ0xOdm00dXl5Z1hzemg4MDZ1bVVjR0lVd1lpQiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly9hbnZheWEuYXNzZXRzdWdtLmNvbS92b3RpbmciO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19	1768997635
2aG9pcl0rtKh9kr1ac5LdldFMn3SCaOMq4BiZeuS	\N	172.20.0.1	Mozilla/5.0 (iPhone; CPU iPhone OS 18_5 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.5 Mobile/15E148 Safari/604.1	YTozOntzOjY6Il90b2tlbiI7czo0MDoiaHRzS0dVQUZpdGlTbHFLQU9XU1I3T0tORE1wNHd0OExzTEp6bnFPbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly9hbnZheWEuYXNzZXRzdWdtLmNvbS92b3RpbmciO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19	1769006492
FAITJwpiw8ljjkHNAnTZiaDYfSAz0RroI6kbXPuC	\N	172.20.0.1	Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36	YTozOntzOjY6Il90b2tlbiI7czo0MDoieGxPc1NLQnBBZ25SQmdheXlyNzk5SmhMMDhTQWpyTkdMblpoQkVaUiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly9hbnZheWEuYXNzZXRzdWdtLmNvbS92b3RpbmciO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19	1769012989
hmzRs6rQ1kO5U87cbp1YcjQx7exa9Cn61VkbAOHa	\N	172.20.0.1	Mozilla/5.0 (iPhone; CPU iPhone OS 18_0_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/144.0.7559.85 Mobile/15E148 Safari/604.1	YTozOntzOjY6Il90b2tlbiI7czo0MDoiTndlVDFkeHBaS054cE9xMFVHUTJsSGFnRUVLOHRKQ0FIcG5wdVlWdSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly9hbnZheWEuYXNzZXRzdWdtLmNvbS92b3RpbmciO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19	1769032074
mP6zUnqf1wyM3VoIZqR2oTx2G2Gy4h3vVZM34Cv0	\N	172.20.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36	YTozOntzOjY6Il90b2tlbiI7czo0MDoiT0R1M3Q2bFpBckJtVU1WRGhtMmpuQWg3ejJGVnB3S2IyenZSUW5HUiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDQ6Imh0dHA6Ly9hc3NldHN1Z20uY29tLz91dG1fY2FtcGFpZ249UEItU0JFUkFOIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==	1769052325
XOSEhLpU2TE2qlqQp5hJCUwHGtRTTNb5VnL7mr5t	\N	172.20.0.1	Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Mobile Safari/537.36	YTozOntzOjY6Il90b2tlbiI7czo0MDoiWkU3b0hxYVZ1SHNrUUlIMlNxQ3IyMGFPenpUWGZRR1VvcEhvelE0ZiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly9hbnZheWEuYXNzZXRzdWdtLmNvbS92b3RpbmciO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19	1768990606
D6GKygXViqAu6BKUIsTq8gJ9xVr70E9gijJx00CQ	\N	172.20.0.1	Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Mobile Safari/537.36	YTozOntzOjY6Il90b2tlbiI7czo0MDoiN3pkUnkzc0Vkc1A5ZHBJa2VvQ0E3Wm9OSkZTalpzUHh2dDAwM3FCaCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly9hbnZheWEuYXNzZXRzdWdtLmNvbS92b3RpbmciO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19	1768994082
AqjxNaSr1YJkD6Vk5yuhidOs9NtFLPBYgaRYgNa7	\N	172.20.0.1	Mozilla/5.0 (iPhone; CPU iPhone OS 18_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.6 Mobile/15E148 Safari/604.1	YTozOntzOjY6Il90b2tlbiI7czo0MDoidUV1eVdxVFdlRjE0MEYwWnh1UHBKejFLUHRnMWhTUm15ZmhCS3daUiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly9hbnZheWEuYXNzZXRzdWdtLmNvbS92b3RpbmciO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19	1768997693
oYsBfzlU16MIPP1FCobSbJDG263s4toFd6bvtx73	\N	172.20.0.1	Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Mobile Safari/537.36	YTozOntzOjY6Il90b2tlbiI7czo0MDoiTGJ0ME9xOWYwbnJDOEJWaXZpUElGWnJjZHBhOGVOUzR2RFd4UHFEUyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly9hbnZheWEuYXNzZXRzdWdtLmNvbS92b3RpbmciO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19	1769006983
m2oL4kEDHtqtya1qR85Egp6mjVw2nsvEqVihnhbw	\N	172.20.0.1	Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)	YTozOntzOjY6Il90b2tlbiI7czo0MDoiZ1g3RGdNUmZaSWFqcXVzZXBhVjVkdHFhTEVYdGJrUUpnU2M2SmtlVSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDc6Imh0dHA6Ly9hbnZheWEuYXNzZXRzdWdtLmNvbS9jYWJpbmV0LzEvc3RydWN0dXJlIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==	1769015772
mXy9BjuR2FV4hGOAVfhMJLKHZ5hmNnixTHxeA1EB	\N	172.20.0.1	Mozilla/5.0 zgrab/0.x	YTozOntzOjY6Il90b2tlbiI7czo0MDoiSlhBQ05lYm5FSDhMNXNsMjdRVVVHSGZPTWRMcm9PSEhIYXM0dVhJNyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjA6Imh0dHA6Ly9hc3NldHN1Z20uY29tIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==	1769035238
qtWMra4XUsUVGEoi6J2FitOFCEYdS60VzmrWWOXY	\N	172.20.0.1	Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Mobile Safari/537.36	YTozOntzOjY6Il90b2tlbiI7czo0MDoiaFZScmV4Q2ljWEw2V1hFMWowR0xLeWVWclB6b0laR3BrQ1BLdzM5bCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDc6Imh0dHA6Ly9hbnZheWEuYXNzZXRzdWdtLmNvbS9jYWJpbmV0LzQvc3RydWN0dXJlIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==	1768991285
4zklFAF1FMb95MTwdHcFCvvAYhpuzliJCrR7FMIb	\N	172.20.0.1	Mozilla/5.0 (iPhone; CPU iPhone OS 18_1_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.1.1 Mobile/15E148 Safari/604.1	YTozOntzOjY6Il90b2tlbiI7czo0MDoiZ3dxaUlnejA5SEx1Wm5iTTBJbmhiZUhFMFdLQVJpNFhFUnlmYXBjVyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly9hbnZheWEuYXNzZXRzdWdtLmNvbS92b3RpbmciO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19	1768991822
NkJSki9yJDH9GDtpFvU9tnTPM3WhH2PnY5IGWF2d	\N	172.20.0.1	Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Mobile Safari/537.36	YTozOntzOjY6Il90b2tlbiI7czo0MDoiSGpDVWVsa2ZZdDVXcDhveGwxYW1UNmVKT3FCWmtxV1VYbVJXMnhlSiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly9hbnZheWEuYXNzZXRzdWdtLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=	1769054753
AP5SnoTjky326I8oVasyPGryihjzHBD13qpC0zMz	\N	172.20.0.1	Mozilla/5.0 (iPhone; CPU iPhone OS 26_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/125.0.6422.80 Mobile/15E148 Safari/604.1	YTozOntzOjY6Il90b2tlbiI7czo0MDoiWEVsdGtCampaVU9QclZ5WmY4anRVbXF4YjkweloxclFkb2VnM2xFeSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly9hbnZheWEuYXNzZXRzdWdtLmNvbS92b3RpbmciO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19	1768990853
8LGvIK4wFWXgNZ7kyRgAdWgHMxIF3g4p8MrKjczi	\N	172.20.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36 Edg/144.0.0.0	YTozOntzOjY6Il90b2tlbiI7czo0MDoieTdJbEhPeHA3WFgyVzRUcGpqTXgzUEE4QVl0TDdRUVh0T1V6WlFWWCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly9hbnZheWEuYXNzZXRzdWdtLmNvbS92b3RpbmciO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19	1768994082
ZGKeAhGnqTnB6ipJv2N5xSGXsKFiNM6N1hKuhj7V	\N	172.20.0.1	Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Mobile Safari/537.36	YTozOntzOjY6Il90b2tlbiI7czo0MDoiMGNhbnk5bXhWOHNtZDFFZVFZNmdDQ0FISk1ORWJ5ekQ2aUZNa0RZbSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly9hbnZheWEuYXNzZXRzdWdtLmNvbS92b3RpbmciO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19	1768991341
Gx3e9205HttkZjqwJWYzK7azpGjtNLUrTZXRdrKZ	\N	172.20.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36 Edg/144.0.0.0	YTozOntzOjY6Il90b2tlbiI7czo0MDoiWnZscDZsUDBGZXNGbEN1Vkt5d3dSazU4cjJ2VFhqZUc1Q0lxc0pPWiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly9hbnZheWEuYXNzZXRzdWdtLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=	1768990619
Ap5SG16lMuiAgejCZh3qm66cj5dliklNACEnCKkW	\N	172.20.0.1	Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/29.0 Chrome/136.0.0.0 Mobile Safari/537.36	YTozOntzOjY6Il90b2tlbiI7czo0MDoiUWFrYUxPc3VybEdtdGxSV1VMQUlTSVZIYVVzdlVNa0lEdDV0dXhOcCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly9hbnZheWEuYXNzZXRzdWdtLmNvbS92b3RpbmciO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19	1768990816
cpJ7l12giAxUMzG1Q8f7OLkdPUfYgHUekYyLk5tH	\N	172.20.0.1	Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Mobile Safari/537.36	YTozOntzOjY6Il90b2tlbiI7czo0MDoiVmVvZHNTSWdVZFRtbjBXeldyd2l0dVlxeVhNZGFpU2JoYjJpTXk2UiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly9hbnZheWEuYXNzZXRzdWdtLmNvbS92b3RpbmciO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19	1768991916
JAzuyrgTo8dkuwWRVI8EbrN5DpMLgaAF2efz0Mzi	\N	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36	YTozOntzOjY6Il90b2tlbiI7czo0MDoiZUdzbmxvS0pmVjJxVjlteFFjZEUzUDZxMVNlaElTV2hLQTl0bjFHVSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly9hbnZheWEuYXNzZXRzdWdtLmNvbS92b3RpbmciO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19	1768998095
zBn8tGIwLykvIGH5oz88aFfP5skaOmnHX7SEj5Sm	\N	172.20.0.1	Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Mobile Safari/537.36	YTozOntzOjY6Il90b2tlbiI7czo0MDoiRUU0N09FUTRSSXBKb1U0dnE1WlYycE55MnRCS1dRTnpzZFlBbkF5WiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly9hbnZheWEuYXNzZXRzdWdtLmNvbS92b3RpbmciO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19	1769008400
5NNrx5xqxn5VELYTZC6OWTcG6LPNE6mTTgPUAypj	\N	172.20.0.1	Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)	YTozOntzOjY6Il90b2tlbiI7czo0MDoiUEtTQjdzYWQ1NGtCSjVmSWJpUjgwM2tLSVJJMlk1Mmp5Mnpqd3kwcSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDc6Imh0dHA6Ly9hbnZheWEuYXNzZXRzdWdtLmNvbS9jYWJpbmV0LzQvc3RydWN0dXJlIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==	1769015774
T1A7cc9e72PMPfU7ZvSv9kPyu2bKva7HSC6695ip	\N	172.20.0.1	Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Mobile Safari/537.36	YTozOntzOjY6Il90b2tlbiI7czo0MDoiWlNpZGRqam9YY1dVbVUzZUpBS0Y3Yk1GUkV5VFZ6ZG1hV0o4azNQdCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly9hbnZheWEuYXNzZXRzdWdtLmNvbS9hYm91dCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=	1769037426
bKC6Jg5lj8O6CqM66Q5TA51EyslRJzJ3c2aFPbaI	\N	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36	YTozOntzOjY6Il90b2tlbiI7czo0MDoib3R6QUlNbDVmZk9Id0ttM1prYjdLd0xjb3dnQmtIT3ptb0JlVE1CMCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly9hbnZheWEuYXNzZXRzdWdtLmNvbS92b3RpbmciO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19	1769054787
mTUQc1FoeVjBTJ4EmnvwPiBMbZReslonGg46Gx84	\N	172.20.0.1	Mozilla/5.0 (iPhone; CPU iPhone OS 17_3_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/144.0.7559.85 Mobile/15E148 Safari/604.1	YTozOntzOjY6Il90b2tlbiI7czo0MDoiaG11WnVKZ21zRnh0NWFjZFpMU2FZMTNHTnd3MmhjN3RGMW45VXhEQSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly9hbnZheWEuYXNzZXRzdWdtLmNvbS92b3RpbmciO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19	1768994311
VHihpaWvKHMndzDUCI5n7elobJFEQyz9wBCVj3H5	\N	172.20.0.1	Mozilla/5.0 (iPhone; CPU iPhone OS 18_7_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/143.0.7499.151 Mobile/15E148 Safari/604.1	YTozOntzOjY6Il90b2tlbiI7czo0MDoidkpxOGRkZGVTaUpiRHRIemlNeUpSc1JOM3VpVE9EcVp3VFZPdG5RcSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjA6Imh0dHA6Ly9hc3NldHN1Z20uY29tIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==	1768998631
vTNe9DtWWaV5xTlNw4DYcG7p9AgZ9CbMoJhzxTzU	\N	172.20.0.1	Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)	YTozOntzOjY6Il90b2tlbiI7czo0MDoiTkVTdDNVVXZrOU5FdFBvVmEweVRaOXJMeDBVdHFHVmlFTDFwd004OCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly9hbnZheWEuYXNzZXRzdWdtLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=	1769008827
pFmv5KRJCmRfDeKDbGoHDNqmXsbquszFml6txYqh	\N	172.20.0.1	Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Mobile Safari/537.36	YTozOntzOjY6Il90b2tlbiI7czo0MDoiYW1jODBUcmRhOG1BMTRnWE94WjV4eEd0OENiaTg0a2k5MmZHc1R6UyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjA6Imh0dHA6Ly9hc3NldHN1Z20uY29tIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==	1768991360
O3jgrpUffxJm1mcotZaepfxQjVKKYlHuDZeKMcjN	\N	172.20.0.1	Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Mobile Safari/537.36	YTozOntzOjY6Il90b2tlbiI7czo0MDoiZVg1UXA5WTVGMnlPSTF2d2JidjNQajR4ZXVOUDBIUEZONjdYNWF5MSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly9hbnZheWEuYXNzZXRzdWdtLmNvbS92b3RpbmciO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19	1768991904
aVgSuASrkX5VTB7Nte9ZDh8r4Mkwd1Bab5iUecnx	\N	172.20.0.1	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11) AppleWebKit/601.1.27 (KHTML, like Gecko) Chrome/47.0.2526.106 Safari/601.1.27	YTozOntzOjY6Il90b2tlbiI7czo0MDoiQXF4anMzbzFwa3JRSXpMUTJrMTJXSWRLc1lLRUFFZUNiejIxYjRoNCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjA6Imh0dHA6Ly9hc3NldHN1Z20uY29tIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==	1769026095
Y6xWaTp98U84icC71bfbYH9bZd4e9RtSUPpj9JL7	\N	172.20.0.1	Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.2 Mobile/15E148 Safari/604.1	YTozOntzOjY6Il90b2tlbiI7czo0MDoiTEVWOXZ1TksyWTgzam9mNUw3ZndMU2hoWDhldng2b2ppNmFoaXpQNCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjA6Imh0dHA6Ly9hc3NldHN1Z20uY29tIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==	1769040964
q5TGbiisrN59Q2DVWO5T767odmsow1CONTalCw6I	\N	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36	YTozOntzOjY6Il90b2tlbiI7czo0MDoiZmxjN0szQ2dqdUExRHVoVDBialNYNUpIQ1RlRzJYNHZXTTBSS0s2UyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly9hbnZheWEuYXNzZXRzdWdtLmNvbS92b3RpbmciO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19	1768990685
OsAGqoqaXWIdpqIkvM6k993EDOC2N3DGcOMu00hx	\N	172.20.0.1	Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Mobile Safari/537.36	YTozOntzOjY6Il90b2tlbiI7czo0MDoicHNsSWJVNXdUREd2MU9zYlN4YkZXbE10bGxkdnFaOTdwZk9YcDVONCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly9hbnZheWEuYXNzZXRzdWdtLmNvbS92b3RpbmciO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19	1768990870
vZNf5u9KZ4STl09xhfChiNoGmibRmKhbgGkuZxHd	\N	172.20.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	YTozOntzOjY6Il90b2tlbiI7czo0MDoiS0tzc1V6VUN4bE1sVURKeVdoU3BuMEFBWUJmRWtiRjJhSFlNeDhINCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjA6Imh0dHA6Ly9hc3NldHN1Z20uY29tIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==	1768995464
9NU54xcjm7vArIpsXc3prNFWymNZdFuaw9AuyRaL	\N	172.20.0.1	Mozilla/5.0 (compatible; MJ12bot/v2.0.4; http://mj12bot.com/)	YTozOntzOjY6Il90b2tlbiI7czo0MDoibFNYV3ZmdWFaZnpIckhoZG5rdU1hQm1ZVmJmUnRDNUxkbVBOUUZpRiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjA6Imh0dHA6Ly9hc3NldHN1Z20uY29tIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==	1768999667
Ikht9Oekecu7qD34m4uu0gjSUb2MTWL8av61SIIv	\N	172.20.0.1	Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)	YTozOntzOjY6Il90b2tlbiI7czo0MDoibVIySDhkdDlwWU9ITWdydm55NUxKQVF4dVJTOGxySDdsNWU0cWhzdiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly9hbnZheWEuYXNzZXRzdWdtLmNvbS9hYm91dCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=	1769008829
q5sObF5GsZgiUWI3Z686rH3ENFJEVGugo4rleZio	\N	172.20.0.1	Go-http-client/1.1	YTozOntzOjY6Il90b2tlbiI7czo0MDoiVDlUZFh3MG9DRW9VMGk4TTBnWVB1RVRYNnp2ejUzWU1yQjlMZWNPSyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjA6Imh0dHA6Ly9hc3NldHN1Z20uY29tIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==	1769026119
BbQRSMQamyfJSVfvXQtJQpHtr4nWvhygBDzIjy8o	\N	172.20.0.1	Mozilla/5.0	YTozOntzOjY6Il90b2tlbiI7czo0MDoiN09BcjN2OU5yaElORVplREhTVFNGeVUyTlFSV0FkSW5HSGdWV1JmYiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjA6Imh0dHA6Ly9hc3NldHN1Z20uY29tIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==	1769041842
AMARLrTXr98KduH2IYwE2cUN2sLJ6NtT7nM96qfZ	1	172.20.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36 Edg/144.0.0.0	YTo0OntzOjY6Il90b2tlbiI7czo0MDoidVE3bFdQTThjRDZKeHRGazl5VmdvS0RlMnRzdzFtQ09hUng5OE9WWSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDA6Imh0dHA6Ly9hbnZheWEuYXNzZXRzdWdtLmNvbS9hZG1pbi9wZW1pcmEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUyOiJsb2dpbl9hZG1pbl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7fQ==	1769055030
yINT8nmIXcFbocsFiOnsjexEmAXd7uXhXWb99MO7	\N	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36	YTozOntzOjY6Il90b2tlbiI7czo0MDoiUmpHa2lJVUEzbnBlUkU5YW50MEFDbUhaTDBVVkpJN2hjSGlkdjh5UiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly9hbnZheWEuYXNzZXRzdWdtLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=	1768991164
wlh6tbqotvyXvGvG6qVbBAK8givKiSsBDH7ykv1h	\N	172.20.0.1	Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Mobile Safari/537.36	YTozOntzOjY6Il90b2tlbiI7czo0MDoiWEw2aW1JTWpwbnFDN0JFOUMyY1hOZFJ4cmhjbUxiQUJyNjIxMkhYbSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly9hbnZheWEuYXNzZXRzdWdtLmNvbS92b3RpbmciO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19	1768991383
X2Hv3Bm4WkRh61JEjVFil1YeVJ6Vvg24fsLEK4Zm	\N	172.20.0.1	Mozilla/5.0 (iPhone; CPU iPhone OS 17_5_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/144.0.7559.85 Mobile/15E148 Safari/604.1	YTozOntzOjY6Il90b2tlbiI7czo0MDoiQzVuZEd4blN0dmNsRVVDamplZ2R3c0pUUGpPUHlvM2M1aTBKMUtiMiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly9hbnZheWEuYXNzZXRzdWdtLmNvbS92b3RpbmciO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19	1768991929
xJh7V0CWBj5Y72C2WIzCQgF0aqUQfIScywqobaOg	\N	172.20.0.1	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/601.2.4 (KHTML, like Gecko) Version/9.0.1 Safari/601.2.4 facebookexternalhit/1.1 Facebot Twitterbot/1.0	YTozOntzOjY6Il90b2tlbiI7czo0MDoiS0gyZmNwNk1hclpwZE11eVdIRktiSkp4cFZXOXk3czk4S0RhWmVYWCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHA6Ly9hbnZheWEuYXNzZXRzdWdtLmNvbS9zL202eG1hNSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=	1768991463
pxYX8GLCsudjcNoPIyewhizlmkonzn0TWOCpRuJc	\N	172.20.0.1	python-requests/2.32.5	YTozOntzOjY6Il90b2tlbiI7czo0MDoiUjI2ZUowN0FzeWN1ZlBnOVl3aE5qaUxjRnVxcWhFSGpCZWx6ckVVZiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjA6Imh0dHA6Ly9hc3NldHN1Z20uY29tIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==	1768985452
Eh5eN5C8KC3uEFxiev5irkz6jA9sMQfkLMV4Kx5d	\N	172.20.0.1	Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Mobile Safari/537.36	YTozOntzOjY6Il90b2tlbiI7czo0MDoiV3VLZ2VjdmZrYzRTMVdXaXR4SlI4aUlDTDNQWjg2VUVwZDdUYk5TViI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly9hbnZheWEuYXNzZXRzdWdtLmNvbS92b3RpbmciO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19	1768990594
TUpFXhy0x3iUkTYCXRD4QWWDTZdzYAOrue5sXFxz	\N	172.20.0.1	Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Mobile Safari/537.36	YTozOntzOjY6Il90b2tlbiI7czo0MDoiY1d4a29Cc1p0b2hYSGh1RFgzTm8wSnE3SFVXR29FSnlDV0Y1RlJpWCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly9hbnZheWEuYXNzZXRzdWdtLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=	1768992028
bROa9Re7wFreQLFIimOCeyd2vJXifxKnyrIgZhDS	\N	172.20.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36	YTozOntzOjY6Il90b2tlbiI7czo0MDoiYWxkUW92OGlKRXRyVW1kZlQybHN0Z2RHcXRINEpyQkh5NUQ3d2VRMSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly9hbnZheWEuYXNzZXRzdWdtLmNvbS92b3RpbmciO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19	1768995923
sYbS9U05g4MhGGy6sRPpSVwQwqnHc6bCEQVOgv5g	\N	172.20.0.1	Mozilla/5.0 (iPhone; CPU iPhone OS 18_0_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.0.1 Mobile/15E148 Safari/604.1	YTozOntzOjY6Il90b2tlbiI7czo0MDoiUDhjMG1kWEFwT0plWVlzazVQd0dEczVOZWNhdHlDeWhXYk5QeEFHMSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly9hbnZheWEuYXNzZXRzdWdtLmNvbS92b3RpbmciO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19	1769000243
36RldA42elgVv2hpzYRv1WdBSato6JrtTHomr8Xu	\N	172.20.0.1	Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)	YTozOntzOjY6Il90b2tlbiI7czo0MDoiZ3hBT1FpVlFDZWVuTEJxRzFMN2daeGZtRjNLalZGbXg3dnBaZXFmQiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU6Imh0dHA6Ly9hbnZheWEuYXNzZXRzdWdtLmNvbS9hcnRpY2xlIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==	1769008831
wLaCsoPMmEW2I0sZSMtRu6wdW6Yp2eWiesk6WXDI	\N	172.20.0.1	Dalvik/2.1.0 (Linux; U; Android 9.0; ZTE BA520 Build/MRA58K)	YTozOntzOjY6Il90b2tlbiI7czo0MDoiUUx6V0d5Nk1KSm1lMXJsSUxwMUFvRXNma1lzcXZxRFBiRVdhQVRNUiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjA6Imh0dHA6Ly9hc3NldHN1Z20uY29tIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==	1769026147
gwlDitjfj605iUYUPsoQptpPBy9kZDMtV12CiQdp	\N	172.20.0.1	Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Mobile Safari/537.36	YTozOntzOjY6Il90b2tlbiI7czo0MDoieml2SFl6Nkt2eEJJRVZCS25sNUNKbDBYYzFWRmVHeXlncVJBSXUxUSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly9hbnZheWEuYXNzZXRzdWdtLmNvbS92b3RpbmciO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19	1769046940
TrTaXMatAcIfETQ9nlCR4cckwjKcUVqh1gX5TR2v	\N	172.20.0.1	Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Mobile Safari/537.36	YTozOntzOjY6Il90b2tlbiI7czo0MDoieW5nYVEzTEQ2cVV1M08zQmJFQlRhZWNMOGprOHB0RVMwdmRyQm8zRiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly9hbnZheWEuYXNzZXRzdWdtLmNvbS92b3RpbmciO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19	1768988200
EcSpCmeq4gTjEN8YbrvNSknugdcYbGiDhHFcZiuH	\N	172.20.0.1	Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Mobile Safari/537.36	YTozOntzOjY6Il90b2tlbiI7czo0MDoiVkhPc3VrS2RuUE90U3huNnQ2Vk5DNkkxWk1KVTBkQ25iVkJuOHV1SSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly9hbnZheWEuYXNzZXRzdWdtLmNvbS92b3RpbmciO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19	1768996129
sJTgjOxIp7MTNtXUD1Io673PzKRMoOpn2jsFyDCC	\N	172.20.0.1	Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Mobile Safari/537.36	YTozOntzOjY6Il90b2tlbiI7czo0MDoiRkdoOEgwTU52cnRTd2JEV1UwZUhGdlRSSVBZaW16ejgwdTJ3UTFLNCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly9hbnZheWEuYXNzZXRzdWdtLmNvbS92b3RpbmciO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19	1768991486
PSBC6D54VauXEqZPVZdqvNtMJQIOwBzjJUXRIHlp	\N	172.20.0.1	Mozilla/5.0 (iPhone; CPU iPhone OS 18_7_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/143.0.7499.151 Mobile/15E148 Safari/604.1	YTozOntzOjY6Il90b2tlbiI7czo0MDoiOHNZVThHVVJQRXNZcGJrbzB3TkVTOUxHZ2kzWTNGM2xWSVV3WE5aciI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjA6Imh0dHA6Ly9hc3NldHN1Z20uY29tIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==	1769000554
5DcMK3PV01xrX2OeOh0K6s7hVBq9d4D35hS3kc0X	\N	172.20.0.1	Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Mobile Safari/537.36	YTozOntzOjY6Il90b2tlbiI7czo0MDoidW9YanVXMVcwQ3ByNTh4T21nd0dyc2JpYTdWeUkxY0hhNFN3Y2ZZaCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly9hbnZheWEuYXNzZXRzdWdtLmNvbS92b3RpbmciO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19	1768992475
VqDx0VoE35h6jIuOMWEBlBuE5d4Y4ySTuo6JbfeA	\N	172.20.0.1	Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Mobile Safari/537.36	YTozOntzOjY6Il90b2tlbiI7czo0MDoiTW5hcTZMRHdVZkVwVnFaQzJTNk9tTUxuUEc2aHNzSDlBVHhERmFRcSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly9hbnZheWEuYXNzZXRzdWdtLmNvbS92b3RpbmciO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19	1768990711
JIU2Stom4FaNxvzowToVN7fKgGMK977s9ynlnXrz	\N	172.20.0.1	Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)	YTozOntzOjY6Il90b2tlbiI7czo0MDoiU0tNakUzcjZYQm9KMkE5RFdkWnBLUnIzUTdVdGNjbFVKSGY5cTVJUyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc6Imh0dHA6Ly9hbnZheWEuYXNzZXRzdWdtLmNvbS9jYWJpbmV0LzEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19	1769008833
O4UDMMS5tWdHn49MpF2UU8527v6hNrV5vHYd4Mbn	\N	172.20.0.1	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11) AppleWebKit/601.1.27 (KHTML, like Gecko) Chrome/47.0.2526.106 Safari/601.1.27	YTozOntzOjY6Il90b2tlbiI7czo0MDoibTdkSm1odmVKNFkyOG9FM3ByOWdxZXVrRU5Vb3FtbTZLZ2NuampYNyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjA6Imh0dHA6Ly9hc3NldHN1Z20uY29tIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==	1769026369
001HekDzhXT1Q8e0vG7kvAvtEkmWdSE4G1Bdq81M	\N	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36	YTozOntzOjY6Il90b2tlbiI7czo0MDoiNFFwd1AwaG05dFU2Rm1XZWtVbnVlOXB2M0lmcnVkamJJRkREckF2biI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjA6Imh0dHA6Ly9hc3NldHN1Z20uY29tIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==	1769047162
TNkUy4uIZlstKuaNTBfzkklng1e8GuD6Q7QavCmR	\N	172.20.0.1	WhatsApp/2.23.20.0	YTozOntzOjY6Il90b2tlbiI7czo0MDoiNFdTZEJQeGgxcmw1YnZqOU1jaVBYdUVoaXg4aFk3dzNTNzRjaWg0bCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHA6Ly9hbnZheWEuYXNzZXRzdWdtLmNvbS9zL202eG1hNSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=	1768991491
iJJmHogxdM8DhfjEH7sbKaopD6rRwuGOLdeDjjwW	\N	172.20.0.1	Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Mobile Safari/537.36	YTozOntzOjY6Il90b2tlbiI7czo0MDoiZm92WGJ2TG5LOU5Za3JESmVhWjk2djdBTWhwTzJma1N5UXZ2VXlwbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly9hbnZheWEuYXNzZXRzdWdtLmNvbS92b3RpbmciO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19	1768992676
303OQTVgXJ2uXC2nniX98yC2mTtuoKKfQsuciJAD	\N	172.20.0.1	Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/28.0 Chrome/130.0.0.0 Mobile Safari/537.36	YTozOntzOjY6Il90b2tlbiI7czo0MDoiT2RaNmNrQ3JSQnY3Y2tWZjRXdmdRcVNrUHVYWDUyVmpnWmF0eHpiaSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly9hbnZheWEuYXNzZXRzdWdtLmNvbS92b3RpbmciO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19	1768996159
aOQnElW9yS3ik7QL8py8JUdiuVa2ByUVk8Rn00Vx	\N	172.20.0.1	Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Mobile Safari/537.36	YTozOntzOjY6Il90b2tlbiI7czo0MDoiVXdCOFZxc0JhcEtySldHdEdSQWM4MUNZckVWRXNDNGhGUms5QWhEWiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly9hbnZheWEuYXNzZXRzdWdtLmNvbS92b3RpbmciO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19	1768989620
qy8uAhcGyPfi3SIkWvpyrbH3HHd2GRvFPBCHqbq8	\N	172.20.0.1	Mozilla/5.0 (Windows NT 6.1; WOW64; rv:59.0) Gecko/20100101 Firefox/59.0	YTozOntzOjY6Il90b2tlbiI7czo0MDoiN0lmczVtR0xBVmxOSnN5c3d6TFR4Z09rTjUyVml6RUdndDUxS2tXQSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly9hbnZheWEuYXNzZXRzdWdtLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=	1768990646
3mLubf2UzTHHGIXjF6tjt58DH2Zh9qzG01B06SZ1	\N	172.20.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36 Edg/144.0.0.0	YTozOntzOjY6Il90b2tlbiI7czo0MDoiSzdZUlhmNjVuZTlzcUt5YUFjdkhrZzJWQ0QzZEdyd09Ua2tvdGpWRyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly9hbnZheWEuYXNzZXRzdWdtLmNvbS92b3RpbmciO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19	1769002878
sy42xSyKqaHm3ZOPwJnFQ7rk1AGfu23CM6EvUG98	\N	172.20.0.1	Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)	YTozOntzOjY6Il90b2tlbiI7czo0MDoieW1VUWhTQjNkb2ZGbUZxZFozZll2eGxBNkpnRDlaWmN4NFNrWHAzZyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc6Imh0dHA6Ly9hbnZheWEuYXNzZXRzdWdtLmNvbS9jYWJpbmV0LzQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19	1769008835
2OwqzbD99PpkyE6I7egx3gW8l543jHHYCNbugJ6p	\N	172.20.0.1	Mozilla/5.0 (iPhone; CPU iPhone OS 9_2_1 like Mac OS X) AppleWebKit/601.1.46 (KHTML, like Gecko) Version/9.0 MQQBrowser/8.5.1 Mobile/13D15 Safari/601.1 MttCustomUA/2 QBWebViewType/1 WKType/1	YTozOntzOjY6Il90b2tlbiI7czo0MDoiM0tXUXRFQmZwbGZIcUVRcmwySFJNb2FwVWlZOVlsT3ZqM3lxOGtVdCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjA6Imh0dHA6Ly9hc3NldHN1Z20uY29tIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==	1769027037
5OaIfcbKB7YUwwoZEYMMArWLe8N8eEYKRoRDhe5s	\N	172.20.0.1	Mozilla/5.0 (iPhone; CPU iPhone OS 18_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.0 Mobile/15E148 Safari/604.1	YTozOntzOjY6Il90b2tlbiI7czo0MDoiRDNYZmVqSGRzdzc5Nk5TZjZMaXEwYkpXRmt1cTRBTDE0M1RCWGo3TyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly9hbnZheWEuYXNzZXRzdWdtLmNvbS92b3RpbmciO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19	1769047367
QR5gTpzlEKEoU97Isz11jBLrhhNu7c9oYJn9cyn8	\N	172.20.0.1	Mozilla/5.0	YTozOntzOjY6Il90b2tlbiI7czo0MDoieGxOZFJkc1RieVpjMXB0aDIxQVdiU3lLbzQyWWNIWnhlM1lqdWtiViI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjA6Imh0dHA6Ly9hc3NldHN1Z20uY29tIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==	1768989205
G0iKWHqUABE5ZnyaLPjVApBfAKeNPwpKFsI1mNkw	\N	172.20.0.1	Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Mobile Safari/537.36	YTozOntzOjY6Il90b2tlbiI7czo0MDoiR2xHbk00T0RzcXQxNmVQMkdxUHZmNzlnbmFzOE9PMlVkYTV2UzZDNiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly9hbnZheWEuYXNzZXRzdWdtLmNvbS92b3RpbmciO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19	1768990654
LKaB6IGnO0K0ZxDGgwnn2X9inSCpie56KA9gycVD	\N	172.20.0.1	Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.2 Mobile/15E148 Safari/604.1	YTozOntzOjY6Il90b2tlbiI7czo0MDoiT2NUWVdLSld0YkVmamVBMmlWQzNjN1k5RTVEbEROSDlaUWYyYUVWZCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly9hbnZheWEuYXNzZXRzdWdtLmNvbS92b3RpbmciO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19	1768991513
WUBM8uryFIzbkusPaFjbGrt4T6MCeWXGIK1wVs9t	\N	172.20.0.1	Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Mobile Safari/537.36	YTozOntzOjY6Il90b2tlbiI7czo0MDoiWGhtVWxDZ0tiUk9hV2xDbHY2Z1VNY2F4aGozdjNoR01INmRDT2JIWCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly9hbnZheWEuYXNzZXRzdWdtLmNvbS92b3RpbmciO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19	1768992828
c0cN3N97gPACt2AXceWMzsdet4vZsAsOLALq8NQX	\N	172.20.0.1	Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/29.0 Chrome/136.0.0.0 Mobile Safari/537.36	YTozOntzOjY6Il90b2tlbiI7czo0MDoiQWRIanNkWFhrU1J4dFVhN29OVG1VTzNuZk9HTXo3QlQxalJhUEh3RiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly9hbnZheWEuYXNzZXRzdWdtLmNvbS92b3RpbmciO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19	1768996320
LUo6xPJnLdi6P91HEvHU8VSEyzR36Wv01pGBzKZn	\N	172.20.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:147.0) Gecko/20100101 Firefox/147.0	YTozOntzOjY6Il90b2tlbiI7czo0MDoicGNLM1hmWEhFaGpMN0xsbWowMzRuUG41NkFVN1Q1blJYVVd2dVR4biI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly9hbnZheWEuYXNzZXRzdWdtLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=	1769002931
leCRfwtz5JkKIZM4noJkx0c1JhNh7KWKQqEJBhQh	\N	172.20.0.1	Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)	YTozOntzOjY6Il90b2tlbiI7czo0MDoic1VTV3YxYnU0cXJuWWJuOU9rc2xtWUdzRngxaU1BdTl2SnZmTmpVbyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly9hbnZheWEuYXNzZXRzdWdtLmNvbS92b3RpbmciO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19	1769008836
\.


--
-- TOC entry 3616 (class 0 OID 35140)
-- Dependencies: 239
-- Data for Name: staff; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.staff (id_staff, id_divisi, id_mhs, nama_jabatan, foto_pose_staff, created_at, updated_at) FROM stdin;
32	1	12	Kepala Divisi	1JH04Aj6YikYHC9FmBMC6VncW1xnIBeCHlgm6YjK.png	2025-04-18 10:09:16	2025-04-22 11:06:23
33	1	13	Wakil Kepala Divisi	jrW6ilkffPfMV5rpyhazWc4XWh1kGQUz2XYY66lM.png	2025-04-18 10:09:40	2025-04-22 11:06:23
34	1	14	Staff	70VRRUty8CoS14ZmssjckOrY6s2uJzGbb2mkvNpX.png	2025-04-18 10:10:02	2025-04-22 11:06:23
38	1	16	Staff	nQcBAVumBbYsc0Cx7AOeOg66IoF81wIt1XGBf2bV.jpg	2025-04-18 10:20:51	2025-06-15 00:03:42
40	1	15	Staff	MRtx1bLSj52bnMbtOXhKA5Zh8M4535WE4ygLBJN8.jpg	2025-04-18 10:21:55	2025-06-03 15:39:28
49	2	20	Staff	xH6D1qs0bKEM8oy1NJEFGlL4ySgzQAsT9Gmx1xR1.png	2025-04-18 11:41:36	2025-04-22 11:06:23
52	2	19	Staff	cRZ7p9g7ylZdICbQkuF8beehjkHbIT0aFZY9zenn.png	2025-04-18 11:45:39	2025-04-22 11:06:23
57	1	41	Staff	NNACoxF3n5CoNZoxFI49axpT06UIyHzwG8FFgx6s.jpg	2025-04-18 15:46:42	2025-06-15 00:04:39
58	1	35	Staff	6tni7aLjNvDz1y1Xatbpqjn0x1Chg4ivjmj278d4.png	2025-04-18 15:49:03	2025-04-22 11:06:23
59	1	36	Staff	ktYCZEo91CqhFTb05Ey5SQJMkGfWjV4eQGQFq5jf.png	2025-04-18 15:49:35	2025-04-22 11:06:23
60	1	37	Staff	P4H77CBDjVBAeahVkRgw3jNPZxQpRBGa6fCgkwvL.png	2025-04-18 15:51:36	2025-04-22 11:06:23
61	1	38	Staff	PhbpFb13Wgi4NhFKLkpoT8DpdqIacGb4G2BH7ryI.png	2025-04-18 15:51:53	2025-07-12 02:20:20
62	1	40	Staff	hn7aL8bVS0ZFCbj751YwkGaMpPjn85TfFlOJ1sSr.jpg	2025-04-18 15:52:20	2025-06-15 00:01:37
63	1	39	Staff	uhDtOpQerDbuNW8lOvxjMZ7Skfqfq0G9jAgWqnbr.png	2025-04-18 15:52:35	2025-04-22 11:06:23
64	2	46	Staff	NZWJfdY1IA74p8Ey7KJsRO95KG0bAkWkiAfs2LkV.png	2025-04-18 16:24:31	2025-04-22 11:06:23
65	2	52	Staff	kt3g398F9JppUUZd6PZMqpE65LVzlLEtbbsE04kz.png	2025-04-18 16:24:50	2025-04-22 11:06:23
66	2	51	Staff	061ZhOMatpX2paQcLfuHlSLsd00KXtXLMCGrkXcy.png	2025-04-18 16:25:10	2025-04-22 11:06:23
67	2	17	Kepala Divisi	nYBlCJzb3euAa1t6yWh0u3ky0fS1OuBdMPDbXNN7.png	2025-04-18 16:25:30	2025-04-22 11:06:23
68	2	48	Staff	HwTRweamzBnlHqhJynt1Bn6gp9PaFhnXOZ0OL53N.png	2025-04-18 16:25:51	2025-04-22 11:06:23
69	2	53	Staff	TUy5wCzPCjW2DM4x8h4SGDHs6gltEgeVbVmnldrN.png	2025-04-18 16:26:32	2025-04-22 11:06:23
70	2	20	Staff	xH6D1qs0bKEM8oy1NJEFGlL4ySgzQAsT9Gmx1xR1.png	2025-04-18 16:26:51	2025-04-22 11:06:23
71	2	47	Staff	9yeCwBPJeWritFnwNVfAikVFoeo6vtFFj26mrwWc.png	2025-04-18 16:27:11	2025-04-22 11:06:23
72	2	50	Staff	akA4uZlZWKOnepr3EK04840fiYe3yBVsKqd4RiFb.png	2025-04-18 16:27:30	2025-04-22 11:06:23
73	2	44	Staff	Rqnkng9zCqNM7MG5yT7Nf1gRjg3vY5E8wnbH0qh3.png	2025-04-18 16:27:56	2025-04-22 11:06:23
74	2	18	Wakil Kepala Divisi	kHapbxB8CarCdQAFeGi3TbSojYHGjq0frvRQKhoh.png	2025-04-18 16:28:16	2025-04-22 11:06:23
84	3	21	Kepala Divisi	AuhLnMgEQRlUWK9nyPuw80qE9ihWWfx0imfkzMO0.png	2025-04-22 01:21:11	2025-04-22 11:06:23
85	3	55	Wakil Kepala Divisi	KtYbS1RYJ6P6KkWIyxMun5YGpdB9dgoRbfqkf1Sg.jpg	2025-04-22 01:21:40	2025-04-22 11:06:23
86	3	56	Staff	BEr4lU3fF2L7Na5tWJaa3zPhVoFsJ9GZt5PwcEG9.jpg	2025-04-22 01:22:08	2025-04-22 11:06:23
87	3	57	Staff	XZKlpRUN4E5kavPyaUlWI2wzEsfFKVk3Bw5hxSdI.jpg	2025-04-22 01:22:26	2025-04-22 11:06:23
88	3	24	Staff	zf12ebnBNiEMVmJLkYLFwzbOGLFpGwPt400dgAhe.png	2025-04-22 01:22:53	2025-04-22 11:06:23
89	3	59	Staff	8nUYYxds3PP0TKgwIskCTdWezCSNhaM3Rf41T7N3.jpg	2025-04-22 01:23:20	2025-04-22 11:06:23
90	3	60	Staff	9hgZN9NM2GdyygUgKkr1BZzz619doXEpSOsPxIiA.jpg	2025-04-22 01:23:47	2025-04-22 11:06:23
91	3	61	Staff	o1vOAqXzXIIDa380dXDtzCarfA2XB3jHJ3ifbLmD.jpg	2025-04-22 01:24:08	2025-04-22 11:06:23
92	3	22	Staff	GOitMTLyD4xOSI9UFOPztynZjrJpueEkuCZ4rTuc.png	2025-04-22 01:24:30	2025-07-12 02:20:34
97	6	81	Ketua	ITXgQ918rXw71uuT18XL13DVZNQhdyYNMVqFd8wI.jpg	2025-04-29 02:39:30	2025-04-29 02:39:30
98	6	82	Sekretaris Jenderal	6GKXDlmPSXSwp2BHYg57Z2dYsBXNULfuaFgpbASq.jpg	2025-04-29 02:39:58	2025-04-29 02:39:58
99	6	83	Sekretaris I	S3wbfEQT8TP4LZO78uxy8hvMbReNLE21Wr6AvEl7.jpg	2025-04-29 02:40:44	2025-04-29 02:40:44
100	6	84	Sekretaris II	Aq5mUkJVZlutO7ooCIkqhABgIedeY6stG4HjzpZH.jpg	2025-04-29 02:42:58	2025-04-29 02:42:58
101	6	85	Bendahara I	CibhoHC1VBTEmXUO7O9vy2byq4TFOH8LYdGIGGl4.jpg	2025-04-29 02:43:29	2025-04-29 02:43:29
102	6	86	Bendahara II	HXVxufUcHMJW8dmM8rfbAlt7kqtinL8seCROoA21.jpg	2025-04-29 02:43:52	2025-04-29 02:43:52
103	4	88	Kepala Divisi	4hx8QdFyL6GmHQq3OnwFqmEHhMNvHfI69ZLolaeC.jpg	2025-06-02 01:09:06	2025-06-02 01:09:06
104	4	64	Wakil Kepala Divisi	mF43W2hVb7LK3h1MlaPF2pH5gRXg8rDF4wgBqXb0.jpg	2025-06-02 01:09:52	2025-06-02 01:09:52
105	4	66	Staff	nKOhEOsnQ5XqPwbsvHPdOIjbGRN0oMYzxbIYmx5U.jpg	2025-06-02 01:10:12	2025-06-02 01:10:12
106	4	65	Staff	DLStsTBLPoNfowN5lVQGyyaesFFn3J6sTMlMBT8G.png	2025-06-02 01:10:30	2025-07-12 02:35:19
107	4	67	Staff	Eok5KJ48LSMnvGOX8dO9X5cTZeWcWYuxPz6NdNlP.jpg	2025-06-02 01:10:46	2025-06-02 01:10:46
108	4	68	Staff	1plVXkkSIkYQwCQpjxxl4XrgkA3xFP5oFnCskEyn.jpg	2025-06-02 01:11:01	2025-06-03 15:54:06
109	4	69	Staff	ZpNA7q7onbhDmdSWDxWcE54WTgcrclBs1mzf5rb5.jpg	2025-06-02 01:11:12	2025-06-02 01:11:12
110	4	70	Staff	euG4bFzKRXIOsz3BqnsNKWeHZFU0bk4qdz6vUHtf.jpg	2025-06-02 01:11:27	2025-06-02 01:11:27
111	4	71	Staff	kXQTHOWF8T53D9NOJMoqjMJeZenSqcURAdOyIVoV.jpg	2025-06-02 01:11:42	2025-06-02 01:11:42
112	4	72	Staff	hRLGdOrTVIwNVJILGilzxmJnmvwpo2EdKGQ4kBCy.jpg	2025-06-02 01:11:58	2025-06-02 01:11:58
113	4	74	Staff	PPi9cStA8piGKSfkSi9mQT76yiVEXIiDMks4xBtt.png	2025-06-02 01:12:14	2025-07-12 02:37:27
114	4	73	Staff	5QB1OVPhlr8mTO2MBkhlFDQMf6hJWlukGs9E2h2l.jpg	2025-06-02 01:12:25	2025-06-02 01:12:25
115	5	100	Kepala Divisi	rn4AaUZukEhwhUaynX07e4VZsSXKV6lV5woYEM6K.jpg	2025-06-03 13:25:54	2025-06-03 13:25:54
116	5	101	Wakil Kepala Divisi	bll3pnuCdgH5s2XUQOXNWYNGKM4Jajh7tsbQRFaU.jpg	2025-06-03 13:26:13	2025-06-03 13:26:13
117	5	102	Staff	32aTkTpqb6IbCJGS6RuRVd7mkUSSKvWjQ6AFfAgW.jpg	2025-06-03 13:26:33	2025-06-03 13:26:33
118	5	103	Staff	TcxKXkyd06ZdmWYtFPLcnfuiXqPHOh5WQrIDJt1V.jpg	2025-06-03 13:26:48	2025-06-15 00:41:07
119	5	104	Staff	nT08wgYMqGG5YgYrqQCCqG1hIrSYQgf5KvngmXLN.jpg	2025-06-03 13:27:05	2025-06-03 13:27:05
120	5	105	Staff	84acFgANXaybFlGMDkqHz0t9JtFYLXj5hxyxmT2Q.jpg	2025-06-03 13:27:19	2025-06-15 00:39:10
121	5	106	Staff	hOqcfQtuOA6GOFtcLC386lfYVr3uBqf9IyCzyfn3.jpg	2025-06-03 13:27:37	2025-06-15 00:39:26
122	5	107	Staff	E9c08Uk0B5WlZNRuKLaBqAOp3EKEBfQqWemhyKbO.jpg	2025-06-03 13:27:52	2025-06-03 13:27:52
123	14	15	Ketua	MRtx1bLSj52bnMbtOXhKA5Zh8M4535WE4ygLBJN8.jpg	2025-06-03 15:56:13	2025-06-03 15:56:13
124	14	68	Sekretaris Jenderal	1plVXkkSIkYQwCQpjxxl4XrgkA3xFP5oFnCskEyn.jpg	2025-06-03 15:56:44	2025-06-03 15:56:44
125	14	109	Sekretaris I	R8ksicwHjm2cOtgcdYF8BDz2olmPGXXgAhfDrWXU.jpg	2025-06-03 15:57:04	2025-06-03 15:57:04
126	14	110	Sekretaris II	kEvoW42j8Oqnx9z0PE53u2vF0U0OpzD86bT4k2Rk.jpg	2025-06-03 15:57:20	2025-06-03 15:57:20
127	14	108	Bendahara I	Cpz6jJdNDh49t074XhA1OUoKyiUL88htb0cLgRun.jpg	2025-06-03 15:57:34	2025-06-03 15:57:34
128	14	111	Bendahara II	dMSJv05HBB6dUjqXAEGEWgGVouSJVubKR374rRkq.jpg	2025-06-03 15:57:52	2025-06-03 15:57:52
129	15	40	Kepala Divisi	hn7aL8bVS0ZFCbj751YwkGaMpPjn85TfFlOJ1sSr.jpg	2025-06-15 00:05:22	2025-06-15 00:05:22
130	15	112	Wakil Kepala Divisi	BmtSXC97auw6Cyhb4h9lOvEZ2JfyGg0ecqDDGSr6.jpg	2025-06-15 00:05:36	2025-06-15 00:05:36
131	15	113	Staff	FSGljyyHQAYGaGtV7FiWlQxAk8DTaZnxO3ZOxs9t.jpg	2025-06-15 07:08:30	2025-06-15 07:08:31
132	15	114	Staff	yZLAqCJPn6PvEvH8tgVI9DGNo6Te6tky7qVMbpEV.jpg	2025-06-15 07:09:10	2025-06-15 07:09:11
133	15	115	Staff	1dhEvUuL985yl8PgxOJy8L7GtWtHvmEcu7Mreuur.jpg	2025-06-15 07:09:33	2025-06-15 07:09:34
134	15	116	Staff	MnX0YsXuZJWGya2TACv8hmp8gPuZ3OYh2VfT25tG.jpg	2025-06-15 07:09:47	2025-06-15 07:09:47
135	15	117	Staff	u5uidVrnT9f163oCgjslfeswI3dDEwU620h85TZK.jpg	2025-06-15 07:10:21	2025-06-15 07:10:22
136	15	118	Staff	GdHM7zrztZfcFQFY3hNTh7ihNmrJZ9DgVezWxB7y.jpg	2025-06-15 07:10:30	2025-06-15 07:10:29
137	15	41	Staff	NNACoxF3n5CoNZoxFI49axpT06UIyHzwG8FFgx6s.jpg	2025-06-15 07:10:49	2025-06-15 07:10:50
138	15	119	Staff	F0wYWSB95zNeU1T2YvmpQwt5hdq1hXyqqwgWKjGk.jpg	2025-06-15 07:11:23	2025-06-15 07:11:24
139	19	120	Kepala Divisi	0P9Kx6n1fjjkhljlHYKxbkQireTKGqs79GAGfvOS.jpg	2025-06-15 00:24:11	2025-06-15 00:24:11
140	19	121	Wakil Kepala Divisi	fRUiOW4Qgwb04R6ZqXmHEYVcur9UWEcAyYBPXG3I.jpg	2025-06-15 00:24:30	2025-06-15 00:24:30
141	19	122	Staff	w6WZbHyKtKrqJf1tCXsIcvBbBukeYP1jnnN8hH9M.jpg	2025-06-15 00:24:51	2025-06-15 00:24:51
142	19	123	Staff	5HT9L880aB8TGgPIUymkUbSYUQ2hAD17kmbCe4l6.jpg	2025-06-15 00:25:09	2025-06-15 00:25:09
143	19	124	Staff	kcTYpZMqlFkuvROnTYQhepwtlrKnQ4mrFVHgyfLV.jpg	2025-06-15 00:25:28	2025-06-15 00:25:28
144	19	125	Staff	IosRfHZxdsnGoMugsQRFE4hseu8AjqVfwkbRgtmi.jpg	2025-06-15 00:25:45	2025-06-15 00:25:45
145	19	126	Staff	GZneEUiWQJFafT9Eb9mlXtrYCw2ho0uEH2J2AHxv.jpg	2025-06-15 00:26:06	2025-06-15 00:26:06
146	18	105	Kepala Divisi	84acFgANXaybFlGMDkqHz0t9JtFYLXj5hxyxmT2Q.jpg	2025-06-15 00:42:11	2025-06-15 00:42:11
147	18	106	Wakil Kepala Divisi	hOqcfQtuOA6GOFtcLC386lfYVr3uBqf9IyCzyfn3.jpg	2025-06-15 00:42:30	2025-06-15 00:42:30
148	18	127	Staff	R5ENjjPWXNMeieDiZvByqecah33QYaLSvaTyfoVN.jpg	2025-06-15 00:44:15	2025-06-15 00:44:15
149	18	103	Staff	TcxKXkyd06ZdmWYtFPLcnfuiXqPHOh5WQrIDJt1V.jpg	2025-06-15 00:44:31	2025-06-15 00:44:31
150	18	128	Staff	MPJLVVa5EHbF627PcYOt5OueC9boIpOA1G9r4Ur3.jpg	2025-06-15 00:45:04	2025-06-15 00:45:04
151	18	129	Staff	LAyD8x5RP05uUy51KxwwMCfMpVQ9Ad9DA8GyehkY.jpg	2025-06-15 00:45:24	2025-06-15 00:45:24
152	18	130	Staff	vr2J4mbLFOPTFyzPbMpyTyuBLG4qgoTRZA1mQySC.jpg	2025-06-15 00:45:46	2025-06-15 00:45:46
153	18	131	Staff	4Ov1Lj2RifmXeQHdjXxwNirFuqS2wcyLD94nHPOn.png	2025-07-12 01:46:46	2025-07-12 01:46:46
154	17	38	Kepala Divisi	PhbpFb13Wgi4NhFKLkpoT8DpdqIacGb4G2BH7ryI.png	2025-07-12 02:22:53	2025-07-12 02:22:53
155	17	22	Wakil Kepala Divisi	GOitMTLyD4xOSI9UFOPztynZjrJpueEkuCZ4rTuc.png	2025-07-12 02:23:12	2025-07-12 02:23:12
156	17	132	Staff	q9bHITDM4zGHvI0uPdZoveChieZjNlDAMyMdtRwz.png	2025-07-12 02:23:27	2025-07-12 02:23:27
157	17	133	Staff	XgugJRwWgV0vdM563FJMMqMHxSAhnNtivnZu9i50.png	2025-07-12 02:23:45	2025-07-12 02:23:45
158	17	134	Staff	dMzWPlLLhQWUebKZ92VSHsP3Fn90NLkx3ZO8NZfQ.png	2025-07-12 02:24:03	2025-07-12 02:24:03
159	17	135	Staff	WzovHzoTvFXimIa8SBfSs7DYOIoJ5qBheY1ZvE3z.png	2025-07-12 02:24:19	2025-07-12 02:24:19
160	17	136	Staff	KYNgybSnScuQC03awlrkpB1sfzJYjF0jO4fOSI32.png	2025-07-12 02:24:32	2025-07-12 02:24:32
161	17	137	Staff	5eESkFORPCrMJ8wZCiscbQ3kkRrL6mioOeaRx41S.png	2025-07-12 02:24:49	2025-07-12 02:24:49
162	17	138	Staff	557XcVGtWi8HMesf7qNd6rP6DNzBCtYyPR19fWRy.png	2025-07-12 02:25:06	2025-07-12 02:25:06
163	16	65	Kepala Divisi	DLStsTBLPoNfowN5lVQGyyaesFFn3J6sTMlMBT8G.png	2025-07-12 02:37:44	2025-07-12 02:37:44
164	16	139	Wakil Kepala Divisi	m6rjuzyLI5tIu2E6CsPrJTqJ9b88AyP1e0c0latU.png	2025-07-12 02:38:00	2025-07-12 02:38:00
165	16	140	Staff	xWWMOPeGvFuIqkpy6JtgQY2e8EwjhQiOzYOcBELX.png	2025-07-12 02:38:17	2025-07-12 02:38:17
166	16	141	Staff	AXsbjMOV78elOSXQtPdLmp7KbJENmhI50HC6m8i9.png	2025-07-12 02:38:32	2025-07-12 02:38:32
167	16	142	Staff	fPMOnTaW7keYHsyTu0V5bUjM8jOKz5NxPufsGupt.png	2025-07-12 02:38:47	2025-07-12 02:38:47
168	16	143	Staff	MNjYYkSxeWEB5TFUvJbrw6AgXtIES4PLdk1G54Mp.png	2025-07-12 02:39:03	2025-07-12 02:39:03
169	16	144	Staff	HOWtCDnIhTVER9SYxi1A1KYobRSKpPUeFwYDoJMr.png	2025-07-12 02:39:18	2025-07-12 02:39:18
170	16	145	Staff	QaESEsVThdEf4UeG27zj6FFbuDY5fjHfgwmiTRVP.png	2025-07-12 02:39:32	2025-07-12 02:39:32
171	16	74	Staff	PPi9cStA8piGKSfkSi9mQT76yiVEXIiDMks4xBtt.png	2025-07-12 02:39:49	2025-07-12 02:39:49
\.


--
-- TOC entry 3597 (class 0 OID 35029)
-- Dependencies: 220
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (id, name, email, email_verified_at, password, remember_token, created_at, updated_at) FROM stdin;
\.


--
-- TOC entry 3628 (class 0 OID 35220)
-- Dependencies: 251
-- Data for Name: voteds; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.voteds (id, name, nim, avatar, vision, mission, cv, created_at, updated_at) FROM stdin;
1	Denise Aditye	24/535439/SV/24228	https://anvaya.assetsugm.com/storage/avatar/B8985GtfErRxZ1OG2FjxyaOrZNv7rgo8ZRCGUoRZ.jpg	Menjadikan ASSETS sebagai himpunan mahasiswa Software Engineering yang mampu memberikan pengalaman praktis, membangun jejaring profesional yang kuat, dan menciptakan dampak nyata bagi pengembangan karier dan masa depan setiap anggotanya di bidang teknologi informasi.	Menyelenggarakan program pengembangan teknis dan soft skill yang relevan dengan kebutuhan industri IT. \r\nMembuka peluang kolaborasi dan jejaring profesional melalui kerja sama dengan perusahaan, komunitas, dan alumni. \r\nMembimbing anggota untuk terlibat dalam proyek nyata yang memberikan pengalaman praktis dan kontribusi bagi masyarakat.	https://assetsugm.com/storage/cv/hLDDjI5BG89ZUDKVybnXj2VIaHiRSMfaupwe2omG.pdf	2026-01-17 16:59:30	2026-01-17 16:59:30
2	Kotak Kosong	23/000000/SV/1111 	https://anvaya.assetsugm.com/storage/avatar/sqhtmdz110IpEq7BkTp7F6Uas9Cg8lWBv8FrHZOK.jpg	Pilih sebelah aja	TRPL Jaya\r\nTRPL Maju\r\nTRPL Sukses	https://assetsugm.com/storage/cv/yCgtC0w2qYhgsfk3JODlPzMIgF2smz7LclDa6FPT.pdf	2026-01-17 17:43:20	2026-01-17 17:43:20
\.


--
-- TOC entry 3630 (class 0 OID 35231)
-- Dependencies: 253
-- Data for Name: voters; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.voters (id, name, email, code, voted_id, sended, created_at, updated_at) FROM stdin;
3	Angelica H Sidabutar	angelica.sidabutar@mail.ugm.ac.id	6u6qli	\N	2026-01-18 21:13:30	2026-01-18 20:59:14	2026-01-18 21:13:30
4	Arthaka Aryaseena	arthaka46@mail.ugm.ac.id	5gqcfs	\N	2026-01-18 21:13:36	2026-01-18 20:59:14	2026-01-18 21:13:36
5	Santi Widyastuti	santi.widyastuti0603@mail.ugm.ac.id	lxvhvs	\N	2026-01-18 21:13:48	2026-01-18 20:59:14	2026-01-18 21:13:48
6	Gisfa Putra Ryangga	gisfa.putra2603@mail.ugm.ac.id	qw3reh	\N	2026-01-18 21:13:56	2026-01-18 20:59:14	2026-01-18 21:13:56
7	Yahya Idris Abdurrahman	yahya.idris.abdurrahman@mail.ugm.ac.id	n8xfh9	\N	2026-01-18 21:14:07	2026-01-18 20:59:14	2026-01-18 21:14:07
8	Shavana Afieza Alif	shavana.afieza.alif@mail.ugm.ac.id	cswqjn	\N	2026-01-18 21:14:15	2026-01-18 20:59:14	2026-01-18 21:14:15
9	Anthonio Adley Putra Sasangka	anthonio.adley1603@mail.ugm.ac.id	tumwhs	\N	2026-01-18 21:14:26	2026-01-18 20:59:14	2026-01-18 21:14:26
10	Fikri Yurcel Milano	fikri.yurcel.milano@mail.ugm.ac.id	eyspbj	\N	2026-01-18 21:14:36	2026-01-18 20:59:14	2026-01-18 21:14:36
12	Vellya Riona	vellya.riona@mail.ugm.ac.id	buya6b	\N	2026-01-18 21:14:57	2026-01-18 20:59:14	2026-01-18 21:14:57
13	Luthfia Nisa Azzahra	luthfia.nisa2703@mail.ugm.ac.id	epzl9p	\N	2026-01-18 21:15:08	2026-01-18 20:59:14	2026-01-18 21:15:08
14	Zafna Khairunnisa	zafna.khairunnisa@mail.ugm.ac.id	y8feoo	\N	2026-01-18 21:15:17	2026-01-18 20:59:14	2026-01-18 21:15:17
15	Hafizh Favian Setiadhy Pratama	hafizh.favian.setiadhy.pratama@mail.ugm.ac.id	5xqjja	\N	2026-01-18 21:15:26	2026-01-18 20:59:14	2026-01-18 21:15:26
16	Niki Hidayati	niki.hidayati@mail.ugm.ac.id	2mlaab	\N	2026-01-18 21:15:36	2026-01-18 20:59:14	2026-01-18 21:15:36
17	Ahmad Fatha Mumtaza	ahmad.fatha1502@mail.ugm.ac.id	qoxcds	\N	2026-01-18 21:15:47	2026-01-18 20:59:14	2026-01-18 21:15:47
18	Adiyatma Hilmy Kusuma Wijaya	adiyatma.hilmy2802@mail.ugm.ac.id	nlc3of	\N	2026-01-18 21:15:56	2026-01-18 20:59:14	2026-01-18 21:15:56
19	Gabriel Rio Aditya	gabriel.rio.aditya@mail.ugm.ac.id	t0tciq	\N	2026-01-18 21:16:07	2026-01-18 20:59:14	2026-01-18 21:16:07
20	Nauval Pradipta	nauval.pradipta@mail.ugm.ac.id	0czocy	\N	2026-01-18 21:16:16	2026-01-18 20:59:14	2026-01-18 21:16:16
21	Radivan Alan Nouruzzaman	radivan.alan2202@mail.ugm.ac.id	zrdqce	\N	2026-01-18 21:16:25	2026-01-18 20:59:14	2026-01-18 21:16:25
22	John Feri Jr. Ramadhan	john.fer2002@mail.ugm.ac.id	z60hfn	\N	2026-01-18 21:16:35	2026-01-18 20:59:14	2026-01-18 21:16:35
24	Melani Putri Pratama	melani.putri.pratama@mail.ugm.ac.id	zbrvol	\N	2026-01-18 21:16:57	2026-01-18 20:59:14	2026-01-18 21:16:57
25	Rahul Rahmatullah	rahul.rahmatullah@mail.ugm.ac.id	rh5vfv	\N	2026-01-18 21:17:06	2026-01-18 20:59:14	2026-01-18 21:17:06
26	Anggito Wicaksono	anggito.wicaksono@mail.ugm.ac.id	nrhqeq	\N	2026-01-18 21:17:17	2026-01-18 20:59:14	2026-01-18 21:17:17
27	Fairuz Akbar Azaria	fairuz.akbar.azaria@mail.ugm.ac.id	qubfpo	\N	2026-01-18 21:17:25	2026-01-18 20:59:14	2026-01-18 21:17:25
28	Andhika Rahmanu	andhika.rahmanu@mail.ugm.ac.id	xajhry	\N	2026-01-18 21:17:36	2026-01-18 20:59:14	2026-01-18 21:17:36
29	Lintang Yandi Nugraha	lintang.yandi.nugraha@mail.ugm.ac.id	kbqncl	\N	2026-01-18 21:17:47	2026-01-18 20:59:14	2026-01-18 21:17:47
30	Herjati Aji	herjati.aji@mail.ugm.ac.id	mdvlwl	\N	2026-01-18 21:17:56	2026-01-18 20:59:14	2026-01-18 21:17:56
61	Darriel Markerizal	darrielmarkerizal@mail.ugm.ac.id	3niqvm	2	2026-01-18 21:23:11	2026-01-18 20:59:15	2026-01-19 20:02:57
32	Irfan Fauzi	irfan.fauzi@mail.ugm.ac.id	rlanzs	\N	2026-01-18 21:18:15	2026-01-18 20:59:14	2026-01-18 21:18:15
34	Muhammad Naufal Rosyad	muhammad.naufal2803@mail.ugm.ac.id	uvi0pu	\N	2026-01-18 21:18:35	2026-01-18 20:59:14	2026-01-18 21:18:35
35	Elyra Dina Oktaviani	elyra.dina1903@mail.ugm.ac.id	vvucxm	\N	2026-01-18 21:18:47	2026-01-18 20:59:14	2026-01-18 21:18:47
36	Fachrisa Meivito Adinza	fachrisa.meivito0703@mail.ugm.ac.id	mwzpab	\N	2026-01-18 21:18:55	2026-01-18 20:59:14	2026-01-18 21:18:55
37	Rakhmad Hernan Syah	rakhmad.hernan.syah@mail.ugm.ac.id	jknwac	\N	2026-01-18 21:19:06	2026-01-18 20:59:14	2026-01-18 21:19:06
38	Budi Sugiarto	budisugiarto@mail.ugm.ac.id	oglst3	\N	2026-01-18 21:19:16	2026-01-18 20:59:14	2026-01-18 21:19:16
39	May Clean Sitepu	maycleansitepu0204@mail.ugm.ac.id	l9lbii	\N	2026-01-18 21:19:27	2026-01-18 20:59:14	2026-01-18 21:19:27
40	Aprilia Wulandari	apriliawulandari@mail.ugm.ac.id	fndiu2	\N	2026-01-18 21:19:35	2026-01-18 20:59:14	2026-01-18 21:19:35
41	Tamara Sashikirana	tamarasashikirana@mail.ugm.ac.id	lhlxny	\N	2026-01-18 21:19:46	2026-01-18 20:59:14	2026-01-18 21:19:46
42	Aisa Selvira	aisaselvira@mail.ugm.ac.id	llcy4j	\N	2026-01-18 21:19:57	2026-01-18 20:59:14	2026-01-18 21:19:57
43	Arelia Maia Ashary	areliamaiaashary0904@mail.ugm.ac.id	ohze3b	\N	2026-01-18 21:20:05	2026-01-18 20:59:14	2026-01-18 21:20:05
45	Rioga Natayudha	rioganatayudha0103@mail.ugm.ac.id	9bylzc	\N	2026-01-18 21:20:27	2026-01-18 20:59:14	2026-01-18 21:20:27
46	Rizky Oktarinanto	rizkyoktarinanto@mail.ugm.ac.id	cjqb1u	\N	2026-01-18 21:20:35	2026-01-18 20:59:14	2026-01-18 21:20:35
47	Ananda Kusuma Putri	anandakusumaputri2604@mail.ugm.ac.id	fxstp6	\N	2026-01-18 21:20:45	2026-01-18 20:59:14	2026-01-18 21:20:45
48	Anisa Berliani Putri Salsabila	anisaberlianiputrisalsabila2004@mail.ugm.ac.id	a8dppf	\N	2026-01-18 21:20:56	2026-01-18 20:59:14	2026-01-18 21:20:56
49	Shaffina Dewi Herliany	shaffinadewiherliany@mail.ugm.ac.id	fsvgwy	\N	2026-01-18 21:21:05	2026-01-18 20:59:14	2026-01-18 21:21:05
65	Yodhimas Geffananda	yodhimasgeffananda@mail.ugm.ac.id	tmnnld	1	2026-01-18 21:24:37	2026-01-18 20:59:15	2026-01-20 14:02:59
51	Andromedha Cynosura	andromedhacynosura@mail.ugm.ac.id	d6aiwu	\N	2026-01-18 21:21:26	2026-01-18 20:59:14	2026-01-18 21:21:26
52	Anisah Salma Rafida	anisahsalmarafida@mail.ugm.ac.id	ayuaxv	\N	2026-01-18 21:21:37	2026-01-18 20:59:15	2026-01-18 21:21:37
53	Agustina Bayu Pramesti	agustinabayupramesti@mail.ugm.ac.id	tpo73v	\N	2026-01-18 21:21:46	2026-01-18 20:59:15	2026-01-18 21:21:46
56	Dwi Agung Febriyanto	dwiagungfebriyanto@mail.ugm.ac.id	hmqpzl	\N	2026-01-18 21:22:28	2026-01-18 20:59:15	2026-01-18 21:22:28
57	Prasetyo Edi Pamungkas	prasetyoedipamungkas2002@mail.ugm.ac.id	lpjyt4	\N	2026-01-18 21:22:28	2026-01-18 20:59:15	2026-01-18 21:22:28
54	Maritza Angelina Az Zahra	maritzaangelinaazzahra@mail.ugm.ac.id	cquw24	\N	2026-01-18 21:22:29	2026-01-18 20:59:15	2026-01-18 21:22:29
58	Erlangga Syifa Sutrisno	erlanggasyifasutrisno@mail.ugm.ac.id	fsljwz	\N	2026-01-18 21:22:35	2026-01-18 20:59:15	2026-01-18 21:22:35
59	Ashila Najla Salsabilla Wd	ashilanajlasalsabillawd@mail.ugm.ac.id	odcuqr	\N	2026-01-18 21:22:55	2026-01-18 20:59:15	2026-01-18 21:22:55
60	Salma Nur Azizah	salmanurazizah@mail.ugm.ac.id	uyzzwf	\N	2026-01-18 21:23:07	2026-01-18 20:59:15	2026-01-18 21:23:07
50	Shyra Athaya	shyraathaya@mail.ugm.ac.id	6jk3kz	2	2026-01-18 21:21:17	2026-01-18 20:59:14	2026-01-19 23:56:33
62	Kinanthy Cahyaningrum	kinanthycahyaningrum@mail.ugm.ac.id	kgmypy	\N	2026-01-18 21:23:50	2026-01-18 20:59:15	2026-01-18 21:23:50
63	Aminah Nurul Huda	aminahnurulhuda@mail.ugm.ac.id	bv0ibf	\N	2026-01-18 21:23:55	2026-01-18 20:59:15	2026-01-18 21:23:55
64	Hassan Aldhi Wirawan	hassanaldhiwirawan@mail.ugm.ac.id	mhzvgd	\N	2026-01-18 21:24:04	2026-01-18 20:59:15	2026-01-18 21:24:04
69	Bima Bayu Sofana	bimabayusofana@mail.ugm.ac.id	fxq6cb	\N	2026-01-18 21:25:39	2026-01-18 20:59:15	2026-01-18 21:25:39
66	Muhammad Hanif Sauqi	muhammadhanifsauqi2004@mail.ugm.ac.id	wrj5bv	\N	2026-01-18 21:25:39	2026-01-18 20:59:15	2026-01-18 21:25:39
408	Arya Ramadhi	aryaramadhi@mail.ugm.ac.id	ocl0lk	\N	2026-01-18 21:25:39	2026-01-18 20:59:16	2026-01-18 21:25:39
68	Ghita Najmi Naqasy	ghitanajminaqasy0304@mail.ugm.ac.id	bvkyyv	\N	2026-01-18 21:25:43	2026-01-18 20:59:15	2026-01-18 21:25:43
31	Adika Dwi Saputra	adika.dwi.saputra@mail.ugm.ac.id	smpyvt	2	2026-01-18 21:18:06	2026-01-18 20:59:14	2026-01-19 19:19:30
71	Fajar Wahyu Nugroho	fajarwahyunugroho0802@mail.ugm.ac.id	garc2l	\N	2026-01-18 21:25:40	2026-01-18 20:59:15	2026-01-18 21:25:40
74	Annisa Urohmah	annisaurohmah@mail.ugm.ac.id	gudcg5	\N	2026-01-18 21:25:40	2026-01-18 20:59:15	2026-01-18 21:25:40
73	Sandi Aji Pamungkas	sandiajipamungkas0303@mail.ugm.ac.id	8azx4c	\N	2026-01-18 21:25:40	2026-01-18 20:59:15	2026-01-18 21:25:40
75	Alamsyah Aldefa Putra	alamsyahaldefaputra@mail.ugm.ac.id	mcgo9y	\N	2026-01-18 21:25:40	2026-01-18 20:59:15	2026-01-18 21:25:40
76	Muhammad Syuja Rizqullah	muhammadsyujarizqullah@mail.ugm.ac.id	wctq2n	\N	2026-01-18 21:25:47	2026-01-18 20:59:15	2026-01-18 21:25:47
77	Devrangga Hazza Mahiswara	devranggahazzamahiswara@mail.ugm.ac.id	5s5rsq	\N	2026-01-18 21:25:56	2026-01-18 20:59:15	2026-01-18 21:25:56
78	Saidil Halim	saidilhalim@mail.ugm.ac.id	tstzaa	\N	2026-01-18 21:26:11	2026-01-18 20:59:15	2026-01-18 21:26:11
79	Raihan Alfian Pratama	raihanalfianpratama2004@mail.ugm.ac.id	ndzyqf	\N	2026-01-18 21:26:17	2026-01-18 20:59:15	2026-01-18 21:26:17
80	Maria Azalea Nareswari	mariaazaleanareswari@mail.ugm.ac.id	merzj1	\N	2026-01-18 21:26:25	2026-01-18 20:59:15	2026-01-18 21:26:25
81	Raditya Putri Angelita	radityaputriangelita@mail.ugm.ac.id	t8bzjk	\N	2026-01-18 21:26:36	2026-01-18 20:59:15	2026-01-18 21:26:36
82	Syifa Hanabila	syifahanabila@mail.ugm.ac.id	tepltk	\N	2026-01-18 21:26:45	2026-01-18 20:59:15	2026-01-18 21:26:45
83	Fayyadh Arrazan Miftakhul	fayyadharrazanmiftakhul@mail.ugm.ac.id	grfznn	\N	2026-01-18 21:26:56	2026-01-18 20:59:15	2026-01-18 21:26:56
84	Muhammad Haikal Adityo	muhammadhaikaladityo@mail.ugm.ac.id	tsky4d	\N	2026-01-18 21:27:07	2026-01-18 20:59:15	2026-01-18 21:27:07
85	Ananda Hirzi Thirafi	anandahirzithirafi@mail.ugm.ac.id	jkli5z	\N	2026-01-18 21:27:15	2026-01-18 20:59:15	2026-01-18 21:27:15
87	Naufal Manaf	naufalmanaf2004@mail.ugm.ac.id	8axrzi	\N	2026-01-18 21:27:37	2026-01-18 20:59:15	2026-01-18 21:27:37
88	Muhammad Rizky Aziz	muhammadrizkyaziz1404@mail.ugm.ac.id	pnha3v	\N	2026-01-18 21:27:46	2026-01-18 20:59:15	2026-01-18 21:27:46
89	Fairly Ardasa	fairlyardasa@mail.ugm.ac.id	knmpih	\N	2026-01-18 21:27:56	2026-01-18 20:59:15	2026-01-18 21:27:56
90	Viko Rivanesta	vikorivanesta@mail.ugm.ac.id	hbftme	\N	2026-01-18 21:28:07	2026-01-18 20:59:15	2026-01-18 21:28:07
91	Andhika Yoga Pratama	andhikayogapratama@mail.ugm.ac.id	vz18n5	\N	2026-01-18 21:28:16	2026-01-18 20:59:15	2026-01-18 21:28:16
135	Rasyid Kusnady	rasyidkusnady@mail.ugm.ac.id	dzd2ny	2	2026-01-18 21:35:35	2026-01-18 20:59:15	2026-01-19 20:05:53
93	Akhmad Maulana Akhsan	akhmadmaulanaakhsan@mail.ugm.ac.id	tg0d3l	\N	2026-01-18 21:28:38	2026-01-18 20:59:15	2026-01-18 21:28:38
94	Adiel Boanerge Gananputra	adielboanergegananputra@mail.ugm.ac.id	3jibw6	\N	2026-01-18 21:28:47	2026-01-18 20:59:15	2026-01-18 21:28:47
95	Isan Faizun Hidar	isan.faizun.hidar@mail.ugm.ac.id	fmcmja	\N	2026-01-18 21:28:56	2026-01-18 20:59:15	2026-01-18 21:28:56
97	Tantowi Shah Hanif	tantowishahhanif@mail.ugm.ac.id	kgbofn	\N	2026-01-18 21:29:15	2026-01-18 20:59:15	2026-01-18 21:29:15
98	Miftah Sabirah	miftahsabirah@mail.ugm.ac.id	hlo6e1	\N	2026-01-18 21:29:26	2026-01-18 20:59:15	2026-01-18 21:29:26
99	Ghifari Raya Ammarkahfi	ghifarirayaammarkahfi@mail.ugm.ac.id	l8dhbt	\N	2026-01-18 21:29:37	2026-01-18 20:59:15	2026-01-18 21:29:37
100	Huda Muhammad Nur	hudamuhammadnur@mail.ugm.ac.id	mqftzq	\N	2026-01-18 21:29:46	2026-01-18 20:59:15	2026-01-18 21:29:46
101	Muhammad Muflih Raihan	muhammadmuflihraihan2004@mail.ugm.ac.id	qdlnuh	\N	2026-01-18 21:29:57	2026-01-18 20:59:15	2026-01-18 21:29:57
102	Verlino Raya Fajri	verlinorayafajri@mail.ugm.ac.id	kuiywt	\N	2026-01-18 21:30:06	2026-01-18 20:59:15	2026-01-18 21:30:06
103	Yudhistira Rafazaky Bandono	yudhistirarafazakyba@mail.ugm.ac.id	8dpefl	\N	2026-01-18 21:30:17	2026-01-18 20:59:15	2026-01-18 21:30:17
104	Alif Rizqullah Ma'ruf	alifrizqullahmaruf2003@mail.ugm.ac.id	x793pm	\N	2026-01-18 21:30:25	2026-01-18 20:59:15	2026-01-18 21:30:25
105	Charizza Thunjung Sukmana Putra	charizzathunjungsukmanaputra@mail.ugm.ac.id	atbrud	\N	2026-01-18 21:30:36	2026-01-18 20:59:15	2026-01-18 21:30:36
106	Ikhwan Hanif Firdaus	ikhwanhaniffirdaus@mail.ugm.ac.id	kafam9	\N	2026-01-18 21:30:46	2026-01-18 20:59:15	2026-01-18 21:30:46
108	Pudyasta Satria Pinandhita	pudyastasatriapinandhita@mail.ugm.ac.id	wuvwkf	\N	2026-01-18 21:31:06	2026-01-18 20:59:15	2026-01-18 21:31:06
109	Ilham Rafi Mahameru	ilhamrafimahameru2004@mail.ugm.ac.id	ym7qil	\N	2026-01-18 21:31:15	2026-01-18 20:59:15	2026-01-18 21:31:15
110	Muhammad Harits Detya Irawan	muhammadharitsdetyairawan2004@mail.ugm.ac.id	s816eb	\N	2026-01-18 21:31:26	2026-01-18 20:59:15	2026-01-18 21:31:26
111	Rifa Indra Setiawan	rifaindrasetiawan@mail.ugm.ac.id	vx0mlg	\N	2026-01-18 21:31:36	2026-01-18 20:59:15	2026-01-18 21:31:36
112	Dzaki Achmad Abimanyu	dzakiachmadabimanyu2004@mail.ugm.ac.id	tswmeo	\N	2026-01-18 21:31:47	2026-01-18 20:59:15	2026-01-18 21:31:47
113	Ahmad Syauqi Taqiyuddin	ahmadsyauqitaqiyuddin2004@mail.ugm.ac.id	6gqhzm	\N	2026-01-18 21:31:55	2026-01-18 20:59:15	2026-01-18 21:31:55
114	Nadia Eka Febrianti	nadiaekafebrianti@mail.ugm.ac.id	v2c3cb	\N	2026-01-18 21:32:05	2026-01-18 20:59:15	2026-01-18 21:32:05
115	Ady Petrus Saragih	adypetrussaragih@mail.ugm.ac.id	m9thxa	\N	2026-01-18 21:32:16	2026-01-18 20:59:15	2026-01-18 21:32:16
116	Naufal Tri Subakti	naufaltrisubakti2003@mail.ugm.ac.id	rrzbwu	\N	2026-01-18 21:32:26	2026-01-18 20:59:15	2026-01-18 21:32:26
117	Daffa Askar Fathin	daffaaskarfathin@mail.ugm.ac.id	7bj0ne	\N	2026-01-18 21:32:36	2026-01-18 20:59:15	2026-01-18 21:32:36
118	Nur Muhammad Kafabih	nurmuhammadkafabih2003@mail.ugm.ac.id	fkrocj	\N	2026-01-18 21:32:47	2026-01-18 20:59:15	2026-01-18 21:32:47
119	Resanti Dwi Cahyani	resantidwicahyani@mail.ugm.ac.id	3jvnjc	\N	2026-01-18 21:32:55	2026-01-18 20:59:15	2026-01-18 21:32:55
120	Farhan Hanif	farhanhanif@mail.ugm.ac.id	ic4g3e	\N	2026-01-18 21:33:06	2026-01-18 20:59:15	2026-01-18 21:33:06
122	Sena Aji Bayu Murti	senaajibayumurti@mail.ugm.ac.id	tk81b3	\N	2026-01-18 21:33:26	2026-01-18 20:59:15	2026-01-18 21:33:26
123	Zefanya Diego Forlandicco	zefanyadiegoforlandi@mail.ugm.ac.id	8vuvsp	\N	2026-01-18 21:33:38	2026-01-18 20:59:15	2026-01-18 21:33:38
124	Muhammad Farhan Nugroho	muhammadfarhannugroho@mail.ugm.ac.id	uwg47e	\N	2026-01-18 21:33:46	2026-01-18 20:59:15	2026-01-18 21:33:46
125	Nawal Rizky Kautsar	nawalrizkykautsar@mail.ugm.ac.id	feheud	\N	2026-01-18 21:33:57	2026-01-18 20:59:15	2026-01-18 21:33:57
126	Dragan Abrisam Widijanto	draganabrisamwidijanto@mail.ugm.ac.id	fozkll	\N	2026-01-18 21:34:05	2026-01-18 20:59:15	2026-01-18 21:34:05
127	Risma Saputri	rismasaputri@mail.ugm.ac.id	k6dbgy	\N	2026-01-18 21:34:16	2026-01-18 20:59:15	2026-01-18 21:34:16
128	Tsania Qurrota A'yunin Qulub	tsaniaqurrotaayuninqulub@mail.ugm.ac.id	bnu1fe	\N	2026-01-18 21:34:26	2026-01-18 20:59:15	2026-01-18 21:34:26
129	Hayya Fatihatuz Zahra	hayyafatihatuzzahra@mail.ugm.ac.id	ewbidn	\N	2026-01-18 21:34:37	2026-01-18 20:59:15	2026-01-18 21:34:37
130	Aldy Ardiansyah	aldyardiansyah@mail.ugm.ac.id	gjmqfu	\N	2026-01-18 21:34:45	2026-01-18 20:59:15	2026-01-18 21:34:45
132	Fadhila Ain Salsabilla	fadhilaainsalsabilla@mail.ugm.ac.id	pmtb1u	\N	2026-01-18 21:35:06	2026-01-18 20:59:15	2026-01-18 21:35:06
133	Wildan Dzaky Ramadhani	wildandzakyramadhani@mail.ugm.ac.id	ctfb7c	\N	2026-01-18 21:35:17	2026-01-18 20:59:15	2026-01-18 21:35:17
134	Mahendra Yuda Pradana	mahendrayudapradana@mail.ugm.ac.id	ikhbtx	\N	2026-01-18 21:35:25	2026-01-18 20:59:15	2026-01-18 21:35:25
136	Robertus Dimas Sena Kusuma	robertusdimassenakusuma2003@mail.ugm.ac.id	k5jz1y	\N	2026-01-18 21:35:46	2026-01-18 20:59:15	2026-01-18 21:35:46
137	Lutfi Lisana Shidqi	lutfilisanashidqi@mail.ugm.ac.id	tpplvo	\N	2026-01-18 21:35:56	2026-01-18 20:59:15	2026-01-18 21:35:56
92	Amanda Farliana Setyasari	amandafarlianasetyasari@mail.ugm.ac.id	5qe5m4	2	2026-01-18 21:28:26	2026-01-18 20:59:15	2026-01-18 22:23:27
139	Muhammad Abyan Farras Yusuf	muhammadabyanfarrasyusuf@mail.ugm.ac.id	vjrmci	\N	2026-01-18 21:36:16	2026-01-18 20:59:15	2026-01-18 21:36:16
140	Ajeng Cerelia Evin	ajengcereliaevin@mail.ugm.ac.id	lmc1ie	\N	2026-01-18 21:36:26	2026-01-18 20:59:15	2026-01-18 21:36:26
141	Marwah Kamila Ahmad	marwahkamilaahmad@mail.ugm.ac.id	jcmf2q	\N	2026-01-18 21:36:36	2026-01-18 20:59:15	2026-01-18 21:36:36
143	Daffa Zulfahmi Al-Ahyar	daffazulfahmial-ahyar@mail.ugm.ac.id	wd2h9g	\N	2026-01-18 21:36:55	2026-01-18 20:59:15	2026-01-18 21:36:55
144	Muhammad Ernestiyo Guevara	muhammadernestiyoguevara@mail.ugm.ac.id	sqdc9v	\N	2026-01-18 21:37:06	2026-01-18 20:59:15	2026-01-18 21:37:06
145	Amelia Ayuni Tri Cahyanti	ameliaayunitricahyanti2005@mail.ugm.ac.id	hskyef	\N	2026-01-18 21:37:16	2026-01-18 20:59:15	2026-01-18 21:37:16
146	Muhammad Najwan Fadlillah	muhammadnajwanfadlillah@mail.ugm.ac.id	v4v9b4	\N	2026-01-18 21:37:27	2026-01-18 20:59:15	2026-01-18 21:37:27
167	Annisa Mutia Rahman	annisamutiarahman@mail.ugm.ac.id	kbweco	1	2026-01-18 21:40:56	2026-01-18 20:59:15	2026-01-22 06:16:42
148	Assyfa Nur Fathona	assyfanurfathona@mail.ugm.ac.id	v9m0s3	\N	2026-01-18 21:37:45	2026-01-18 20:59:15	2026-01-18 21:37:45
203	Wildan Hanif Abdillah	wildanhanifabdillah@mail.ugm.ac.id	ywwqqy	2	2026-01-18 21:46:55	2026-01-18 20:59:15	2026-01-19 07:07:07
171	Septyan Yaumul Fatkhan	septyanyaumulfatkhan@mail.ugm.ac.id	pjngsm	2	2026-01-18 21:41:36	2026-01-18 20:59:15	2026-01-20 11:15:48
151	Husna Felisa Cahyani	husnafelisacahyani@mail.ugm.ac.id	gjxd5y	\N	2026-01-18 21:38:16	2026-01-18 20:59:15	2026-01-18 21:38:16
153	Arga Adinata Athallah Pahlevi	argaadinataathallahp@mail.ugm.ac.id	i2u0cn	\N	2026-01-18 21:38:37	2026-01-18 20:59:15	2026-01-18 21:38:37
150	Rifqi Renaldo	rifqirenaldo@mail.ugm.ac.id	tdot2e	2	2026-01-18 21:38:07	2026-01-18 20:59:15	2026-01-20 11:13:58
155	Hamdan Maulana Muhammad	hamdanmaulanamuhammad2004@mail.ugm.ac.id	jerk4o	\N	2026-01-18 21:38:55	2026-01-18 20:59:15	2026-01-18 21:38:55
154	Ahmad Luthfi' Abdillah	ahmadluthfiabdillah@mail.ugm.ac.id	bg6q2e	1	2026-01-18 21:38:45	2026-01-18 20:59:15	2026-01-19 19:39:32
157	Syafiq Abdillah Habib	syafiqabdillahhabib@mail.ugm.ac.id	mk9g4h	\N	2026-01-18 21:39:15	2026-01-18 20:59:15	2026-01-18 21:39:15
158	Muhammad Irfan Valerian	muhammadirfanvalerian@mail.ugm.ac.id	yvfspd	\N	2026-01-18 21:39:25	2026-01-18 20:59:15	2026-01-18 21:39:25
159	Laily Nuriyatul Fauziah	lailynuriyatulfauziah@mail.ugm.ac.id	mdofy1	\N	2026-01-18 21:39:36	2026-01-18 20:59:15	2026-01-18 21:39:36
170	Rila Najjakha	rilanajjakha@mail.ugm.ac.id	95hb0r	1	2026-01-18 21:41:25	2026-01-18 20:59:15	2026-01-21 17:29:01
161	Najmina Kinanti Putri	najminakinantiputri@mail.ugm.ac.id	kbpigf	\N	2026-01-18 21:39:57	2026-01-18 20:59:15	2026-01-18 21:39:57
202	Muhammad Arif Rizky Pratama	muhammadarifrizkypratama2004@mail.ugm.ac.id	u5hdqp	1	2026-01-18 21:46:46	2026-01-18 20:59:15	2026-01-21 18:02:22
164	Dimal Karim Ahmad	dimalkarimahmad@mail.ugm.ac.id	et5xme	\N	2026-01-18 21:40:26	2026-01-18 20:59:15	2026-01-18 21:40:26
165	Irene Talitha Tyas Raharjo	irenetalithatyasraharjo@mail.ugm.ac.id	iorn7b	\N	2026-01-18 21:40:37	2026-01-18 20:59:15	2026-01-18 21:40:37
166	Fairuz Zahirah Abhista	fairuzzahirahabhista@mail.ugm.ac.id	5ykofx	\N	2026-01-18 21:40:45	2026-01-18 20:59:15	2026-01-18 21:40:45
168	Nadzira Azhani Farahiya	nadziraazhanifarahiya@mail.ugm.ac.id	8nw4l0	\N	2026-01-18 21:41:06	2026-01-18 20:59:15	2026-01-18 21:41:06
190	Poernomo Maulana Rofif Aqilla	poernomomaulanarofifaqilla2004@mail.ugm.ac.id	y0ox0l	2	2026-01-18 21:44:45	2026-01-18 20:59:15	2026-01-20 11:30:11
162	Ruhil Muhammad Ukasyah	ruhilmuhammadukasyah2005@mail.ugm.ac.id	keljzx	2	2026-01-18 21:40:05	2026-01-18 20:59:15	2026-01-21 17:34:58
160	Putri Nurdiana	putrinurdiana@mail.ugm.ac.id	geshpg	1	2026-01-18 21:39:46	2026-01-18 20:59:15	2026-01-21 17:27:26
172	Aurelius Bevan Yudira Palevi	aureliusbevanyudirapalevi@mail.ugm.ac.id	qie2u6	\N	2026-01-18 21:41:46	2026-01-18 20:59:15	2026-01-18 21:41:46
173	Nur Aziz	nuraziz@mail.ugm.ac.id	lpyruf	\N	2026-01-18 21:41:56	2026-01-18 20:59:15	2026-01-18 21:41:56
174	Aulia Rahma	auliarahma2004@mail.ugm.ac.id	eppfup	\N	2026-01-18 21:42:07	2026-01-18 20:59:15	2026-01-18 21:42:07
176	Samuel Ardian Valentino Silaban	samuelardianvalentinosilaban@mail.ugm.ac.id	hgyvds	\N	2026-01-18 21:42:26	2026-01-18 20:59:15	2026-01-18 21:42:26
177	Edeline Felicia Dharmawan	edelinefeliciadharmawan@mail.ugm.ac.id	mkvqli	\N	2026-01-18 21:42:36	2026-01-18 20:59:15	2026-01-18 21:42:36
178	Heinrich Radhitya Gavrilla Atmaja	heinrichradhityagavr@mail.ugm.ac.id	wk9nal	\N	2026-01-18 21:42:47	2026-01-18 20:59:15	2026-01-18 21:42:47
179	Marcelino	marcelino@mail.ugm.ac.id	0c0usm	\N	2026-01-18 21:42:55	2026-01-18 20:59:15	2026-01-18 21:42:55
180	Ghifari Nafhan Muhammad Zhafarizza	ghifarinafhanmuhammadzhafarizza@mail.ugm.ac.id	6jdi7l	\N	2026-01-18 21:43:06	2026-01-18 20:59:15	2026-01-18 21:43:06
181	Deandra Santoso	deandrasantoso@mail.ugm.ac.id	lbdspa	\N	2026-01-18 21:43:16	2026-01-18 20:59:15	2026-01-18 21:43:16
182	Dwi Anggara Najwan Sugama	dwianggaranajwansugama@mail.ugm.ac.id	uaipi1	\N	2026-01-18 21:43:26	2026-01-18 20:59:15	2026-01-18 21:43:26
183	Dias Lintang Prabowo	diaslintangprabowo@mail.ugm.ac.id	kpq2y8	\N	2026-01-18 21:43:37	2026-01-18 20:59:15	2026-01-18 21:43:37
184	Muhammad Faiz Ramdhan	muhammadfaizramdhan@mail.ugm.ac.id	oklmnr	\N	2026-01-18 21:43:46	2026-01-18 20:59:15	2026-01-18 21:43:46
185	Isa Muhammad	isamuhammad@mail.ugm.ac.id	lxsejv	\N	2026-01-18 21:43:56	2026-01-18 20:59:15	2026-01-18 21:43:56
186	Wahyu Agung Barokah	wahyuagungbarokah@mail.ugm.ac.id	fknpah	\N	2026-01-18 21:44:06	2026-01-18 20:59:15	2026-01-18 21:44:06
188	Naufal Abyu Nafi	naufalabyunafi2005@mail.ugm.ac.id	o8ray6	\N	2026-01-18 21:44:26	2026-01-18 20:59:15	2026-01-18 21:44:26
189	Bhavanagattha Sampanno Wongso	bhavanagatthasampannowongso@mail.ugm.ac.id	4mf6pr	\N	2026-01-18 21:44:37	2026-01-18 20:59:15	2026-01-18 21:44:37
147	Assifa Khairu Nisa	assifakhairunisa2005@mail.ugm.ac.id	1vwfw0	1	2026-01-18 21:37:35	2026-01-18 20:59:15	2026-01-21 18:45:22
191	Nino Auliya Nahara	ninoauliyanahara@mail.ugm.ac.id	zz9cz1	\N	2026-01-18 21:44:55	2026-01-18 20:59:15	2026-01-18 21:44:55
192	Mohamad Dwi Affriza	mohamaddwiaffriza@mail.ugm.ac.id	uglphg	\N	2026-01-18 21:45:06	2026-01-18 20:59:15	2026-01-18 21:45:06
193	Ahmad Firdausi Nuzula Khan	ahmadfirdausinuzulakhan@mail.ugm.ac.id	kzu2uw	\N	2026-01-18 21:45:16	2026-01-18 20:59:15	2026-01-18 21:45:16
194	Anugrah Aidil Fitri	anugrahaidilfitri@mail.ugm.ac.id	4ogenw	\N	2026-01-18 21:45:27	2026-01-18 20:59:15	2026-01-18 21:45:27
195	Khairunnisa	khairunnisa2004@mail.ugm.ac.id	fbuxrl	\N	2026-01-18 21:45:35	2026-01-18 20:59:15	2026-01-18 21:45:35
196	Yogi Pradana Isdiyanto	yogipradanaisdiyanto@mail.ugm.ac.id	fgwlun	\N	2026-01-18 21:45:46	2026-01-18 20:59:15	2026-01-18 21:45:46
198	Muhammad Krisvananta Muflih Afif	muhammadkrisvanantamuflihafif@mail.ugm.ac.id	7bcaga	\N	2026-01-18 21:46:06	2026-01-18 20:59:15	2026-01-18 21:46:06
199	Belda Putri Pramono	beldaputripramono@mail.ugm.ac.id	ilsaf6	\N	2026-01-18 21:46:16	2026-01-18 20:59:15	2026-01-18 21:46:16
200	Tegar Adi Nugroho	tegaradinugroho2005@mail.ugm.ac.id	fjo5ux	\N	2026-01-18 21:46:27	2026-01-18 20:59:15	2026-01-18 21:46:27
201	Devangga Arya Harta Wijayanto	devanggaaryahartawijayanto@mail.ugm.ac.id	86ha9r	\N	2026-01-18 21:46:36	2026-01-18 20:59:15	2026-01-18 21:46:36
156	Muhamad Robbi Firmansyah	muhamadrobbifirmansyah@mail.ugm.ac.id	btv3sv	1	2026-01-18 21:39:07	2026-01-18 20:59:15	2026-01-19 14:12:25
204	Karina Andriani	karinaandriani@mail.ugm.ac.id	hpvpqh	\N	2026-01-18 21:47:05	2026-01-18 20:59:15	2026-01-18 21:47:05
149	Salis Haidar Luthfi	salishaidarluthfi@mail.ugm.ac.id	lq3z4l	1	2026-01-18 21:37:56	2026-01-18 20:59:15	2026-01-18 21:57:43
205	Zaki Wahyu Perdana	zakiwahyuperdana@mail.ugm.ac.id	tv24sb	\N	2026-01-18 21:47:16	2026-01-18 20:59:15	2026-01-18 21:47:16
206	Muhammad Farhan Perdana	muhammadfarhanperdana@mail.ugm.ac.id	w2cyh8	\N	2026-01-18 21:47:26	2026-01-18 20:59:15	2026-01-18 21:47:26
267	Pralambang Bhayangkara Yhudanto	pralambangbhayangkarayhudanto@mail.ugm.ac.id	rp3rqi	1	2026-01-18 21:57:27	2026-01-18 20:59:15	2026-01-20 17:12:36
209	Sabilli Fathurozaq	sabillifathurozaq@mail.ugm.ac.id	nm4ltk	\N	2026-01-18 21:47:57	2026-01-18 20:59:15	2026-01-18 21:47:57
210	Marsha Bilqiis Nasywaa	marshabilqiisnasywaa2005@mail.ugm.ac.id	d67poj	\N	2026-01-18 21:48:08	2026-01-18 20:59:15	2026-01-18 21:48:08
211	Muhamad Fahrul Razi	muhamadfahrulrazi@mail.ugm.ac.id	nhu5ti	\N	2026-01-18 21:48:17	2026-01-18 20:59:15	2026-01-18 21:48:17
212	Muhammad Al Fayyadh	muhammadalfayyadh@mail.ugm.ac.id	9zv05k	\N	2026-01-18 21:48:27	2026-01-18 20:59:15	2026-01-18 21:48:27
213	Fauzi Setiawan	fauzisetiawan2003@mail.ugm.ac.id	xkk1yc	\N	2026-01-18 21:48:38	2026-01-18 20:59:15	2026-01-18 21:48:38
214	Azki Nabila Albab	azkinabilaalbab520585@mail.ugm.ac.id	amhc5a	\N	2026-01-18 21:48:47	2026-01-18 20:59:15	2026-01-18 21:48:47
215	Joe Sozanolo Waruwu	joesozanolowaruwu@mail.ugm.ac.id	fplr07	\N	2026-01-18 21:48:57	2026-01-18 20:59:15	2026-01-18 21:48:57
223	Emilio Muhammad Hamsyah Junior	emiliomuhammadhamsyahjunior@mail.ugm.ac.id	zcchhk	2	2026-01-18 21:50:18	2026-01-18 20:59:15	2026-01-21 17:21:37
217	Alin Septiani Nur Aisyah	alinseptianinuraisyah@mail.ugm.ac.id	zvo9md	\N	2026-01-18 21:49:20	2026-01-18 20:59:15	2026-01-18 21:49:20
219	Nuhgroh Ramadani	nuhgrohramadani@mail.ugm.ac.id	bfvm58	\N	2026-01-18 21:49:36	2026-01-18 20:59:15	2026-01-18 21:49:36
220	Muhammad Naufal Rahmanu Anindito	muhammadnaufalrahmanuanindito@mail.ugm.ac.id	yrtmvt	\N	2026-01-18 21:49:46	2026-01-18 20:59:15	2026-01-18 21:49:46
216	Syahla Naiimah	syahlanaiimah2004@mail.ugm.ac.id	ebv8kc	1	2026-01-18 21:49:07	2026-01-18 20:59:15	2026-01-21 17:19:37
222	Rayendra Ogya Nagata	rayendraogyanagata@mail.ugm.ac.id	6dof5q	\N	2026-01-18 21:50:07	2026-01-18 20:59:15	2026-01-18 21:50:07
236	Zhazha Nurani	zhazhanurani@mail.ugm.ac.id	vtzzuy	1	2026-01-18 21:52:17	2026-01-18 20:59:15	2026-01-21 18:14:42
224	Rahmat Nur Panghegar	rahmatnurpanghegar@mail.ugm.ac.id	0kwgk5	\N	2026-01-18 21:50:27	2026-01-18 20:59:15	2026-01-18 21:50:27
225	Reza Luthfi Akbar	rezaluthfiakbar@mail.ugm.ac.id	bdfxv4	\N	2026-01-18 21:50:37	2026-01-18 20:59:15	2026-01-18 21:50:37
226	Ezra Bariq Rizqullah	ezrabariqrizqullah2005@mail.ugm.ac.id	904b1a	\N	2026-01-18 21:50:47	2026-01-18 20:59:15	2026-01-18 21:50:47
227	Muhammad Rifai Firdaus	muhammadrifaifirdaus@mail.ugm.ac.id	q3zbvd	\N	2026-01-18 21:50:58	2026-01-18 20:59:15	2026-01-18 21:50:58
228	Ezra Abhinaya Pasaribu	ezraabhinayapasaribu2004@mail.ugm.ac.id	tyokve	\N	2026-01-18 21:51:07	2026-01-18 20:59:15	2026-01-18 21:51:07
229	Wahhab Awaludin	wahhabawaludin2004@mail.ugm.ac.id	ifh1sl	\N	2026-01-18 21:51:18	2026-01-18 20:59:15	2026-01-18 21:51:18
230	Muhammad Naufal Daffachri	muhammadnaufaldaffachri@mail.ugm.ac.id	ebuauz	\N	2026-01-18 21:51:26	2026-01-18 20:59:15	2026-01-18 21:51:26
232	Syafira Naila Affani	syafiranailaaffani@mail.ugm.ac.id	sxqied	\N	2026-01-18 21:51:47	2026-01-18 20:59:15	2026-01-18 21:51:47
233	Naufal Salman Mulyadi	naufalsalmanmulyadi@mail.ugm.ac.id	vjsn1o	\N	2026-01-18 21:51:58	2026-01-18 20:59:15	2026-01-18 21:51:58
234	Naufal Adhitya Pratama	naufaladhityapratama@mail.ugm.ac.id	w2qyrw	\N	2026-01-18 21:52:06	2026-01-18 20:59:15	2026-01-18 21:52:06
237	Dwi Yoanda Febriarsa	dwiyoandafebriarsa@mail.ugm.ac.id	91xxna	\N	2026-01-18 21:52:27	2026-01-18 20:59:15	2026-01-18 21:52:27
238	Yusuf Catur Saputro	yusufcatursaputro@mail.ugm.ac.id	1kgujx	\N	2026-01-18 21:52:38	2026-01-18 20:59:15	2026-01-18 21:52:38
239	M. Mustafa Fagan	mmustafafagan@mail.ugm.ac.id	q4u5jk	\N	2026-01-18 21:52:48	2026-01-18 20:59:15	2026-01-18 21:52:48
256	Sendi Seniora	sendiseniora@mail.ugm.ac.id	26ft6g	1	2026-01-18 21:55:37	2026-01-18 20:59:15	2026-01-20 10:25:38
242	Siti Nur Azizah	sitinurazizah2006@mail.ugm.ac.id	oluls5	\N	2026-01-18 21:53:16	2026-01-18 20:59:15	2026-01-18 21:53:16
243	Ayu Mirnawati	ayumirnawati@mail.ugm.ac.id	tsza3z	\N	2026-01-18 21:53:27	2026-01-18 20:59:15	2026-01-18 21:53:27
207	Govan Dwi Aditya	govandwiaditya@mail.ugm.ac.id	ppzyvp	1	2026-01-18 21:47:36	2026-01-18 20:59:15	2026-01-20 14:35:15
244	Mohammad Avirza Radyatanza	mohammadavirzaradyatanza@mail.ugm.ac.id	83ayef	1	2026-01-18 21:53:38	2026-01-18 20:59:15	2026-01-20 12:56:44
246	Alvista Maula Zahra	alvistamaulazahra@mail.ugm.ac.id	zdxhoh	\N	2026-01-18 21:53:57	2026-01-18 20:59:15	2026-01-18 21:53:57
247	Prihastomo Budi Satrio	prihastomobudisatrio2005@mail.ugm.ac.id	cr92y2	\N	2026-01-18 21:54:07	2026-01-18 20:59:15	2026-01-18 21:54:07
248	Rakai Ahmad Maulana	rakaiahmadmaulana@mail.ugm.ac.id	mhglt3	\N	2026-01-18 21:54:18	2026-01-18 20:59:15	2026-01-18 21:54:18
249	Okta Alshina Arva Parahyta	oktaalshinaarvaparahyta@mail.ugm.ac.id	foqeel	\N	2026-01-18 21:54:26	2026-01-18 20:59:15	2026-01-18 21:54:26
250	Rainard Zulfan Pratama	rainardzulfanpratama@mail.ugm.ac.id	idjuvz	\N	2026-01-18 21:54:37	2026-01-18 20:59:15	2026-01-18 21:54:37
251	Rizendy Affarin	rizendyaffarin@mail.ugm.ac.id	vj8cho	\N	2026-01-18 21:54:47	2026-01-18 20:59:15	2026-01-18 21:54:47
252	Adelardo Tsabat Chalada Abidin	adelardotsabatchalad@mail.ugm.ac.id	6gtup3	\N	2026-01-18 21:54:58	2026-01-18 20:59:15	2026-01-18 21:54:58
253	Mutia Umniati Zupri	mutiaumniatizupri@mail.ugm.ac.id	5mzqmh	\N	2026-01-18 21:55:06	2026-01-18 20:59:15	2026-01-18 21:55:06
221	Allan Raditya Hutomo	allanradityahutomo@mail.ugm.ac.id	g4rrgt	2	2026-01-18 21:49:57	2026-01-18 20:59:15	2026-01-21 17:18:05
254	Denise Aditya	deniseaditya@mail.ugm.ac.id	95iiw3	1	2026-01-18 21:55:16	2026-01-18 20:59:15	2026-01-20 10:26:00
257	Nadhira Farra Aisya Suistiyono	nadhirafarraaisyasui@mail.ugm.ac.id	arzytj	\N	2026-01-18 21:55:47	2026-01-18 20:59:15	2026-01-18 21:55:47
258	Kamila Anisa	kamilaanisa@mail.ugm.ac.id	epy9b3	\N	2026-01-18 21:55:58	2026-01-18 20:59:15	2026-01-18 21:55:58
259	Ahmad Fahim	ahmadfahim@mail.ugm.ac.id	9zyoml	\N	2026-01-18 21:56:07	2026-01-18 20:59:15	2026-01-18 21:56:07
260	Rizky Maulidia Salsabila	rizkymaulidiasalsabila@mail.ugm.ac.id	xm4ddw	\N	2026-01-18 21:56:18	2026-01-18 20:59:15	2026-01-18 21:56:18
261	Januarsyah Akbar	januarsyahakbar@mail.ugm.ac.id	atdk3t	\N	2026-01-18 21:56:28	2026-01-18 20:59:15	2026-01-18 21:56:28
262	Brilian Fatih Wicaksono	brilianfatihwicaksono2005@mail.ugm.ac.id	5d88pz	\N	2026-01-18 21:56:38	2026-01-18 20:59:15	2026-01-18 21:56:38
263	Tegar Raditya Hikmawan	tegarradityahikmawan@mail.ugm.ac.id	owchae	\N	2026-01-18 21:56:48	2026-01-18 20:59:15	2026-01-18 21:56:48
264	M. Dzaki Diandra Putra	mdzakidiandraputra@mail.ugm.ac.id	rjm97j	\N	2026-01-18 21:56:56	2026-01-18 20:59:15	2026-01-18 21:56:56
266	Akmal Manggala Putra	akmalmanggalaputra2005@mail.ugm.ac.id	j0exfe	\N	2026-01-18 21:57:17	2026-01-18 20:59:15	2026-01-18 21:57:17
268	Abdullah Afif Habiburrohman	abdullahafifhabiburrohman@mail.ugm.ac.id	qxhvod	\N	2026-01-18 21:57:37	2026-01-18 20:59:15	2026-01-18 21:57:37
269	Vidky Adhi Pradana	vidkyadhipradana2004@mail.ugm.ac.id	9iytjr	\N	2026-01-18 21:57:47	2026-01-18 20:59:15	2026-01-18 21:57:47
270	Aditya Lucky Zulkarnaen	adityaluckyzulkarnaen@mail.ugm.ac.id	iz9zqm	\N	2026-01-18 21:57:57	2026-01-18 20:59:15	2026-01-18 21:57:57
271	Fahmi Haqqul Ihsan	fahmihaqqulihsan@mail.ugm.ac.id	1zul8z	\N	2026-01-18 21:58:07	2026-01-18 20:59:15	2026-01-18 21:58:07
272	Azzahra Armelia Aina	azzahraarmeliaaina2004@mail.ugm.ac.id	kaog3w	\N	2026-01-18 21:58:17	2026-01-18 20:59:15	2026-01-18 21:58:17
240	Lilis Puspita Haria	lilispuspitaharia@mail.ugm.ac.id	pw4yff	2	2026-01-18 21:52:58	2026-01-18 20:59:15	2026-01-19 22:53:54
274	Tb. Muhammad Endra Zhafir Al Ghifari	tbmuhammadendrazhafiralghifari@mail.ugm.ac.id	ty41vp	\N	2026-01-18 21:58:38	2026-01-18 20:59:15	2026-01-18 21:58:38
275	Gading Atmaja	gadingatmaja2006@mail.ugm.ac.id	6iuzot	\N	2026-01-18 21:58:47	2026-01-18 20:59:15	2026-01-18 21:58:47
276	Hanan Fijananto	hananfijananto@mail.ugm.ac.id	n5ksyg	\N	2026-01-18 21:58:58	2026-01-18 20:59:15	2026-01-18 21:58:58
277	Daffa' Abiyyu Dzulfiqar	daffaabiyyudzulfiqar@mail.ugm.ac.id	pdjkcj	\N	2026-01-18 21:59:07	2026-01-18 20:59:15	2026-01-18 21:59:07
304	Dzakiya Hakima Adila	dzakiyahakimaadila@mail.ugm.ac.id	yymjoj	1	2026-01-18 22:03:39	2026-01-18 20:59:15	2026-01-20 10:38:23
298	Hisyam Al Rayyan	hisyamalrayyan@mail.ugm.ac.id	com8eg	1	2026-01-18 22:02:36	2026-01-18 20:59:15	2026-01-20 16:06:43
332	Ghani Zulhusni Bahri	ghanizulhusnibahri@mail.ugm.ac.id	zrlsca	1	2026-01-18 22:08:22	2026-01-18 20:59:15	2026-01-20 10:43:10
281	Faradis Yulianto	faradisyulianto2006@mail.ugm.ac.id	dh7tdr	\N	2026-01-18 21:59:47	2026-01-18 20:59:15	2026-01-18 21:59:47
282	Muhammad Arrofii' Faiz	muhammadarrofiifaiz@mail.ugm.ac.id	bqldak	\N	2026-01-18 21:59:56	2026-01-18 20:59:15	2026-01-18 21:59:56
284	Azril Fahmiardi	azrilfahmiardi@mail.ugm.ac.id	szdhgt	\N	2026-01-18 22:00:17	2026-01-18 20:59:15	2026-01-18 22:00:17
297	Ariq Fausta Djohar	ariqfaustadjohar@mail.ugm.ac.id	gdhgbi	1	2026-01-18 22:02:26	2026-01-18 20:59:15	2026-01-20 12:04:56
286	Yafi Nuqman Elianto	yafinuqmanelianto@mail.ugm.ac.id	ffieqa	\N	2026-01-18 22:00:36	2026-01-18 20:59:15	2026-01-18 22:00:36
287	Daveena Alexandra Pentury	daveenaalexandrapentury@mail.ugm.ac.id	ykhia5	\N	2026-01-18 22:00:48	2026-01-18 20:59:15	2026-01-18 22:00:48
288	Anindya Nailah Suryawan	anindyanailahsuryawan@mail.ugm.ac.id	s6rklu	\N	2026-01-18 22:00:56	2026-01-18 20:59:15	2026-01-18 22:00:56
289	Nawwaf Zayyan Musyafa	nawwafzayyanmusyafa@mail.ugm.ac.id	x5t8mg	\N	2026-01-18 22:01:07	2026-01-18 20:59:15	2026-01-18 22:01:07
290	Danny Setiawan	dannysetiawan2003@mail.ugm.ac.id	f9cjxq	\N	2026-01-18 22:01:18	2026-01-18 20:59:15	2026-01-18 22:01:18
291	Dimas Satria Widjatmiko	dimassatriawidjatmiko@mail.ugm.ac.id	cled1r	\N	2026-01-18 22:01:27	2026-01-18 20:59:15	2026-01-18 22:01:27
310	Raihananta Khoiril Anam Pitoyo	raihanantakhoirilanampitoyo@mail.ugm.ac.id	ew2hk8	1	2026-01-18 22:04:38	2026-01-18 20:59:15	2026-01-21 18:52:00
336	Muhammad Arief Andriansyah	muhammadariefandriansyah2005@mail.ugm.ac.id	xkpqdp	1	2026-01-18 22:08:56	2026-01-18 20:59:15	2026-01-20 11:18:26
295	Farrel Dama Alfarabi	farreldamaalfarabi2006@mail.ugm.ac.id	n4k68v	\N	2026-01-18 22:02:07	2026-01-18 20:59:15	2026-01-18 22:02:07
296	Falah Auladi	falahauladi2006@mail.ugm.ac.id	p3fzrs	\N	2026-01-18 22:02:17	2026-01-18 20:59:15	2026-01-18 22:02:17
279	Sounda Hafuza Najwan	soundahafuzanajwan@mail.ugm.ac.id	1lcliw	1	2026-01-18 21:59:27	2026-01-18 20:59:15	2026-01-20 12:22:17
315	Alfiz Desta Ariant Permana	alfizdestaariantpermana@mail.ugm.ac.id	xeqe2z	1	2026-01-18 22:05:27	2026-01-18 20:59:15	2026-01-20 16:59:25
299	Saskia Ainun Nafisa	saskiaainunnafisa@mail.ugm.ac.id	wrztnb	\N	2026-01-18 22:02:47	2026-01-18 20:59:15	2026-01-18 22:02:47
300	Dimas Jati Satria	dimasjatisatria@mail.ugm.ac.id	0q3xvi	\N	2026-01-18 22:02:58	2026-01-18 20:59:15	2026-01-18 22:02:58
301	Muhammad Hisyam Ardiansyah	muhammadhisyamardiansyah@mail.ugm.ac.id	1rllqh	\N	2026-01-18 22:03:07	2026-01-18 20:59:15	2026-01-18 22:03:07
302	Safira Dwita Ramadhani	safiradwitaramadhani@mail.ugm.ac.id	1tcfdy	\N	2026-01-18 22:03:18	2026-01-18 20:59:15	2026-01-18 22:03:18
280	Ahmad Rizwan Hamka	ahmadrizwanhamka@mail.ugm.ac.id	apg81v	1	2026-01-18 21:59:37	2026-01-18 20:59:15	2026-01-20 10:38:49
293	Della Nurizki	dellanurizki@mail.ugm.ac.id	c9kzkl	1	2026-01-18 22:01:46	2026-01-18 20:59:15	2026-01-20 10:56:32
326	Rizki Nur Ikhsan	rizkinurikhsan@mail.ugm.ac.id	0a3pxu	1	2026-01-18 22:07:18	2026-01-18 20:59:15	2026-01-21 11:21:16
307	Safwan Ramadhan Arfian	safwanramadhanarfian2005@mail.ugm.ac.id	ije36a	\N	2026-01-18 22:04:08	2026-01-18 20:59:15	2026-01-18 22:04:08
308	Fatimah Azzahra	fatimahazzahra2004@mail.ugm.ac.id	r6oxkw	\N	2026-01-18 22:04:16	2026-01-18 20:59:15	2026-01-18 22:04:16
309	Jibrilian Wulsa Ariswanto	jibrilianwulsaariswanto@mail.ugm.ac.id	rodkop	\N	2026-01-18 22:04:26	2026-01-18 20:59:15	2026-01-18 22:04:26
278	Muhammad Rakan Hibrizi	muhammadrakanhibrizi2005@mail.ugm.ac.id	h4dg9t	1	2026-01-18 21:59:17	2026-01-18 20:59:15	2026-01-20 10:37:39
312	Erico Ali Gutama	ericoaligutama2006@mail.ugm.ac.id	fzb196	\N	2026-01-18 22:04:58	2026-01-18 20:59:15	2026-01-18 22:04:58
313	Devia Artika Maharani	deviaartikamaharani@mail.ugm.ac.id	7nqzwk	\N	2026-01-18 22:05:07	2026-01-18 20:59:15	2026-01-18 22:05:07
314	Rizky Laksmitha	rizkylaksmitha@mail.ugm.ac.id	fk1edx	\N	2026-01-18 22:05:18	2026-01-18 20:59:15	2026-01-18 22:05:18
331	Aliya Khansa Kamaliya	aliyakhansakamaliya2006@mail.ugm.ac.id	1o2j0z	1	2026-01-18 22:08:08	2026-01-18 20:59:15	2026-01-20 17:44:07
316	Ahsani Fadhli Ilahi	ahsanifadhliilahi@mail.ugm.ac.id	gg9en6	\N	2026-01-18 22:05:38	2026-01-18 20:59:15	2026-01-18 22:05:38
318	Alief Muhammad Latif	aliefmuhammadlatif@mail.ugm.ac.id	lxxxp0	\N	2026-01-18 22:05:56	2026-01-18 20:59:15	2026-01-18 22:05:56
319	Delviano Khayru Attahira	delvianokhayruattahira@mail.ugm.ac.id	vr0zl8	\N	2026-01-18 22:06:07	2026-01-18 20:59:15	2026-01-18 22:06:07
320	Sedayu Hargono Seto	sedayuhargonoseto@mail.ugm.ac.id	pressn	\N	2026-01-18 22:06:19	2026-01-18 20:59:15	2026-01-18 22:06:19
321	Aurell Achmad Madina Hartama	aurellachmadmadinahartama@mail.ugm.ac.id	qhkcxn	\N	2026-01-18 22:06:27	2026-01-18 20:59:15	2026-01-18 22:06:27
322	Gurveender Jeet Kaur	gurveenderjeetkaur2006@mail.ugm.ac.id	xztjlw	\N	2026-01-18 22:06:38	2026-01-18 20:59:15	2026-01-18 22:06:38
323	Khaylila Zahra Ardhya Sebayang	khaylilazahraardhyasebayang@mail.ugm.ac.id	a9pvdg	\N	2026-01-18 22:06:46	2026-01-18 20:59:15	2026-01-18 22:06:46
324	Rua Adelia	ruaadelia@mail.ugm.ac.id	kathon	\N	2026-01-18 22:06:57	2026-01-18 20:59:15	2026-01-18 22:06:57
325	Tito Alla Khairi	titoallakhairi@mail.ugm.ac.id	7plrax	\N	2026-01-18 22:07:07	2026-01-18 20:59:15	2026-01-18 22:07:07
292	Syakira Zahratul Firdaus	syakirazahratulfirdaus@mail.ugm.ac.id	lfkaja	1	2026-01-18 22:01:36	2026-01-18 20:59:15	2026-01-21 17:01:50
328	Arga Athallah Herlambang	argaathallahherlambang@mail.ugm.ac.id	y33fa2	\N	2026-01-18 22:07:36	2026-01-18 20:59:15	2026-01-18 22:07:36
329	Gunael Alexander Silalahi	gunaelalexandersilalahi@mail.ugm.ac.id	fiwok4	\N	2026-01-18 22:07:47	2026-01-18 20:59:15	2026-01-18 22:07:47
330	Ayu Atikah	ayuatikah@mail.ugm.ac.id	qu7jr1	\N	2026-01-18 22:07:57	2026-01-18 20:59:15	2026-01-18 22:07:57
305	Hilarius Christiano Avin Paliling	hilariuschristianoavinpaliling2004@mail.ugm.ac.id	9g5as6	2	2026-01-18 22:03:47	2026-01-18 20:59:15	2026-01-20 10:46:22
333	David Antonio Syahputra	davidantoniosyahputra2005@mail.ugm.ac.id	ei2auc	\N	2026-01-18 22:08:26	2026-01-18 20:59:15	2026-01-18 22:08:26
334	Farid Aahmad Nur Rahman	faridaahmadnurrahman@mail.ugm.ac.id	gs6ov3	\N	2026-01-18 22:08:39	2026-01-18 20:59:15	2026-01-18 22:08:39
335	Muhammad Zidan Alhilali	muhammadzidanalhilali@mail.ugm.ac.id	0vfjwa	\N	2026-01-18 22:08:47	2026-01-18 20:59:15	2026-01-18 22:08:47
285	Hayyina Attaqiyya	hayyinaattaqiyya@mail.ugm.ac.id	ca3xip	2	2026-01-18 22:00:28	2026-01-18 20:59:15	2026-01-20 11:36:21
337	Larasati Ayu Gantari	larasatiayugantari@mail.ugm.ac.id	heejnk	\N	2026-01-18 22:09:06	2026-01-18 20:59:15	2026-01-18 22:09:06
338	Fahmi Amaniel Fadli	fahmiamanielfadli2005@mail.ugm.ac.id	peut9q	\N	2026-01-18 22:09:17	2026-01-18 20:59:15	2026-01-18 22:09:17
339	R. Angga Kusna Jati	ranggakusnajati@mail.ugm.ac.id	52phjv	\N	2026-01-18 22:09:27	2026-01-18 20:59:15	2026-01-18 22:09:27
341	Muhammad Ardra Wirya Krisnayadi Putra	555857@mail.ugm.ac.id	cqxxvx	\N	2026-01-18 22:09:47	2026-01-18 20:59:15	2026-01-18 22:09:47
342	Friska Naura Diyansa	friskanauradiyansa.f@mail.ugm.ac.id	mn0ka0	\N	2026-01-18 22:09:57	2026-01-18 20:59:15	2026-01-18 22:09:57
343	Anindya Ceshya Ramadhani	anindyaceshyaramadhani@mail.ugm.ac.id	7ilyo6	\N	2026-01-18 22:10:07	2026-01-18 20:59:15	2026-01-18 22:10:07
344	Caysa Rara Kirani	caysararakirani.c@mail.ugm.ac.id	w1imef	\N	2026-01-18 22:10:17	2026-01-18 20:59:15	2026-01-18 22:10:17
345	Cellia Anastavio	celliaanastavio@mail.ugm.ac.id	lym0uc	\N	2026-01-18 22:10:28	2026-01-18 20:59:15	2026-01-18 22:10:28
346	Alauddin Adha Putratama Saidi	alauddinadhaputratamasaidi@mail.ugm.ac.id	qkhjgs	\N	2026-01-18 22:10:36	2026-01-18 20:59:15	2026-01-18 22:10:36
347	Faturrohim Agni Darma	faturrohimagnidarma@mail.ugm.ac.id	y6xjvy	\N	2026-01-18 22:10:46	2026-01-18 20:59:15	2026-01-18 22:10:46
349	Aulia Muttaqin Lubis	auliamuttaqinlubis@mail.ugm.ac.id	lwun42	\N	2026-01-18 22:11:07	2026-01-18 20:59:15	2026-01-18 22:11:07
350	M. Al Hafidz F S	malhafidzfs2007@mail.ugm.ac.id	ixckml	\N	2026-01-18 22:11:17	2026-01-18 20:59:15	2026-01-18 22:11:17
351	Muhammad Reihan Fadillah	muhammadreihanfadillah@mail.ugm.ac.id	zdaeir	\N	2026-01-18 22:11:28	2026-01-18 20:59:15	2026-01-18 22:11:28
352	Ahmad Ahsin Syamil	ahmadahsinsyamil@mail.ugm.ac.id	kwiox8	\N	2026-01-18 22:11:38	2026-01-18 20:59:15	2026-01-18 22:11:38
353	Farelldeo Lionel Chalvary	farelldeolionelchalvary@mail.ugm.ac.id	s5wmzv	\N	2026-01-18 22:11:46	2026-01-18 20:59:15	2026-01-18 22:11:46
354	Nabila Inayah	nabilainayah@mail.ugm.ac.id	bxpp6x	\N	2026-01-18 22:11:56	2026-01-18 20:59:15	2026-01-18 22:11:56
355	Rose Isnaini Fortuna	roseisnainifortuna@mail.ugm.ac.id	qqy98r	\N	2026-01-18 22:12:07	2026-01-18 20:59:15	2026-01-18 22:12:07
356	Al Atiqh Warith Abdillah	alatiqhwarithabdillah@mail.ugm.ac.id	oo1kbd	\N	2026-01-18 22:12:17	2026-01-18 20:59:15	2026-01-18 22:12:17
357	Galen Dzakwan Huberta	galendzakwanhuberta@mail.ugm.ac.id	fxlepk	\N	2026-01-18 22:12:26	2026-01-18 20:59:15	2026-01-18 22:12:26
358	Kayfa Dyah Wulandari	kayfadyahwulandari@mail.ugm.ac.id	epvz2x	\N	2026-01-18 22:12:36	2026-01-18 20:59:15	2026-01-18 22:12:36
359	Kaori E.Manurung	kaoriemanurung@mail.ugm.ac.id	gzg0nc	\N	2026-01-18 22:12:47	2026-01-18 20:59:15	2026-01-18 22:12:47
361	Anindya Pandu Kinasih	anindyapandukinasih@mail.ugm.ac.id	jdw32w	\N	2026-01-18 22:13:06	2026-01-18 20:59:15	2026-01-18 22:13:06
381	Adrian Hakim Majid	adrianhakimmajid2007@mail.ugm.ac.id	lesdcn	1	2026-01-18 22:16:27	2026-01-18 20:59:16	2026-01-21 17:21:10
363	Farrel Raditya	farrelraditya@mail.ugm.ac.id	lbf5dv	\N	2026-01-18 22:13:27	2026-01-18 20:59:15	2026-01-18 22:13:27
364	Rafa Irhamniyansyah Achmad	rafairhamniyansyahachmad@mail.ugm.ac.id	pe8vbu	\N	2026-01-18 22:13:38	2026-01-18 20:59:15	2026-01-18 22:13:38
365	Ruhana Faiz Restiyanti	ruhanafaizrestiyanti@mail.ugm.ac.id	xxv0fy	\N	2026-01-18 22:13:47	2026-01-18 20:59:15	2026-01-18 22:13:47
366	Nasa Azmi Shobir	nasaazmishobir@mail.ugm.ac.id	tvnc3q	\N	2026-01-18 22:13:57	2026-01-18 20:59:15	2026-01-18 22:13:57
379	Haidar Bahzi	haidarbahzi@mail.ugm.ac.id	l6r25f	1	2026-01-18 22:16:07	2026-01-18 20:59:16	2026-01-21 17:47:55
368	Gemelly Metolaufa Pramudya	gemellymetolaufapramudya2007@mail.ugm.ac.id	xiuads	\N	2026-01-18 22:14:17	2026-01-18 20:59:15	2026-01-18 22:14:17
369	Ezra Nubala Gautama	ezranubalagautama@mail.ugm.ac.id	fggpqb	\N	2026-01-18 22:14:28	2026-01-18 20:59:15	2026-01-18 22:14:28
370	Shimizu Shinsei	shimizushinsei2007@mail.ugm.ac.id	nqajz9	\N	2026-01-18 22:14:36	2026-01-18 20:59:15	2026-01-18 22:14:36
372	Pratama Panji Nugroho	pratamapanjinugroho@mail.ugm.ac.id	eifof7	\N	2026-01-18 22:14:57	2026-01-18 20:59:15	2026-01-18 22:14:57
376	Hibar Visus Abdillah	hibarvisusabdillah@mail.ugm.ac.id	lh6ofn	1	2026-01-18 22:15:36	2026-01-18 20:59:15	2026-01-21 10:54:16
374	Doly Endawana Immanuel Bancin	dolyendawanaimmanuelbancin2007@mail.ugm.ac.id	ft5doy	\N	2026-01-18 22:15:17	2026-01-18 20:59:15	2026-01-18 22:15:17
375	Given Gerald Chandra	givengeraldchandra@mail.ugm.ac.id	h8gkm4	\N	2026-01-18 22:15:28	2026-01-18 20:59:15	2026-01-18 22:15:28
401	Putri Mutiara Bintang	putrimutiarabintang@mail.ugm.ac.id	qx2v19	1	2026-01-18 22:19:47	2026-01-18 20:59:16	2026-01-21 12:31:29
405	Keisha Amanda Setiawan	keishaamandasetiawan2006@mail.ugm.ac.id	tfgdpn	1	2026-01-18 22:20:27	2026-01-18 20:59:16	2026-01-21 19:13:54
378	Ammaar Fauzi Ramadhani	ammaarfauziramadhani2006@mail.ugm.ac.id	jcxeeq	\N	2026-01-18 22:15:57	2026-01-18 20:59:16	2026-01-18 22:15:57
377	Marvelous Alarri Gad Learsi	marvelousalarrigadlearsi@mail.ugm.ac.id	d2tdyt	1	2026-01-18 22:15:46	2026-01-18 20:59:15	2026-01-21 18:14:42
380	Gracia Elshallomitha	graciaelshallomitha@mail.ugm.ac.id	dsqxuy	\N	2026-01-18 22:16:17	2026-01-18 20:59:16	2026-01-18 22:16:17
367	Alyssa Intan Widowati	alyssaintanwidowati@mail.ugm.ac.id	m6xma5	1	2026-01-18 22:14:09	2026-01-18 20:59:15	2026-01-21 17:31:53
382	Raffa Ramadhika	raffaramadhika@mail.ugm.ac.id	ttynji	\N	2026-01-18 22:16:38	2026-01-18 20:59:16	2026-01-18 22:16:38
385	Kanaka Raina Ardany	kanakarainaardany@mail.ugm.ac.id	dvhf1m	\N	2026-01-18 22:17:07	2026-01-18 20:59:16	2026-01-18 22:17:07
386	Ilham Antariksa Widodo	ilhamantariksawidodo@mail.ugm.ac.id	ycfrpb	\N	2026-01-18 22:17:18	2026-01-18 20:59:16	2026-01-18 22:17:18
387	Nyoman Dimas Wira Bakti	nyomandimaswirabakti2006@mail.ugm.ac.id	ndgkdq	\N	2026-01-18 22:17:27	2026-01-18 20:59:16	2026-01-18 22:17:27
388	Terry Davina	terrydavina@mail.ugm.ac.id	ylwnyr	\N	2026-01-18 22:17:38	2026-01-18 20:59:16	2026-01-18 22:17:38
389	Saufa Aini Yusra	saufaainiyusra@mail.ugm.ac.id	sfjrei	\N	2026-01-18 22:17:47	2026-01-18 20:59:16	2026-01-18 22:17:47
390	Stefanie Felice	stefaniefelice@mail.ugm.ac.id	hskllr	\N	2026-01-18 22:17:58	2026-01-18 20:59:16	2026-01-18 22:17:58
373	Fazilatunnisaa	fazilatunnisaa@mail.ugm.ac.id	klhxvu	1	2026-01-18 22:15:06	2026-01-18 20:59:15	2026-01-21 10:52:41
391	Reyhan Abelard Fikri	reyhanabelardfikri@mail.ugm.ac.id	kfaksm	1	2026-01-18 22:18:07	2026-01-18 20:59:16	2026-01-19 10:19:05
393	Fuad Bawazir	fuadbawazir@mail.ugm.ac.id	5oa0pg	\N	2026-01-18 22:18:26	2026-01-18 20:59:16	2026-01-18 22:18:26
395	Akhtar Arami Muhammad Aji	akhtararamimuhammadaji@mail.ugm.ac.id	ksbijw	\N	2026-01-18 22:18:46	2026-01-18 20:59:16	2026-01-18 22:18:46
396	Radithya Rahmadani Widya Putra	radithyarahmadaniwidyaputra@mail.ugm.ac.id	qwnhoz	\N	2026-01-18 22:18:57	2026-01-18 20:59:16	2026-01-18 22:18:57
397	Khayr Nouredine Yunus	khayrnouredineyunus@mail.ugm.ac.id	iibrls	\N	2026-01-18 22:19:07	2026-01-18 20:59:16	2026-01-18 22:19:07
398	Hammaam Muhammad Shidqii Wicaksono	hammaammuhammadshidqiiwic2006@mail.ugm.ac.id	9ekfqt	\N	2026-01-18 22:19:17	2026-01-18 20:59:16	2026-01-18 22:19:17
399	Adyatma Arya Wisnugroho	adyatmaaryawisnugroho.a@mail.ugm.ac.id	zrauvo	\N	2026-01-18 22:19:27	2026-01-18 20:59:16	2026-01-18 22:19:27
400	Nayyara Hasnanindya	nayyarahasnanindya@mail.ugm.ac.id	uoaaew	\N	2026-01-18 22:19:37	2026-01-18 20:59:16	2026-01-18 22:19:37
362	Atalariq Barra Hadinugraha	atalariqbarrahadinugraha@mail.ugm.ac.id	fwwfr0	1	2026-01-18 22:13:16	2026-01-18 20:59:15	2026-01-21 14:40:02
403	Anjalina Rizky Salsabila	anjalinarizkysalsabila@mail.ugm.ac.id	vulobh	\N	2026-01-18 22:20:08	2026-01-18 20:59:16	2026-01-18 22:20:08
404	Ahmad Tariq Hifzhillah	ahmadtariqhifzhillah@mail.ugm.ac.id	fplq16	\N	2026-01-18 22:20:17	2026-01-18 20:59:16	2026-01-18 22:20:17
406	Haydar Istma Ulhaq	haydaristmaulhaq@mail.ugm.ac.id	giqnli	\N	2026-01-18 22:20:37	2026-01-18 20:59:16	2026-01-18 22:20:37
407	Ramos Rambalangi	ramosrambalangi@mail.ugm.ac.id	b9dztj	\N	2026-01-18 22:20:47	2026-01-18 20:59:16	2026-01-18 22:20:47
392	Haidar Daffa Rasyiqin	haidardaffarasyiqin@mail.ugm.ac.id	tkvbpr	2	2026-01-18 22:18:17	2026-01-18 20:59:16	2026-01-18 23:58:32
2	Henrikus Wahyu S	henrikuswahyu007@mail.ugm.ac.id	gon0b3	\N	2026-01-18 21:13:30	2026-01-18 20:59:14	2026-01-18 21:13:30
11	Revandra Aryo Dwi Krisnandaru	revandra.aryo.dwi.krisnandaru@mail.ugm.ac.id	f9sg1f	\N	2026-01-18 21:14:46	2026-01-18 20:59:14	2026-01-18 21:14:46
23	Ridha Fauziyya Rahma	ridha.fauziyya.rahma@mail.ugm.ac.id	oolktx	\N	2026-01-18 21:16:45	2026-01-18 20:59:14	2026-01-18 21:16:45
1	Kamaluddin Arsyad Fadllillah	kamaluddinarsyadfadllillah@mail.ugm.ac.id	wmuurl	2	2026-01-18 22:26:38	2026-01-18 20:59:13	2026-01-18 22:26:38
33	Farhan Akmal Shaleh	farhanakmalshaleh482851@mail.ugm.ac.id	ilin1a	\N	2026-01-18 21:18:27	2026-01-18 20:59:14	2026-01-18 21:18:27
44	Praneta Dwi Indarti	pranetadwiindarti2004@mail.ugm.ac.id	byde7n	\N	2026-01-18 21:20:16	2026-01-18 20:59:14	2026-01-18 21:20:16
55	Maulana Fikrie Rizaldi	maulanafikrierizaldi2003@mail.ugm.ac.id	e7reaw	\N	2026-01-18 21:22:16	2026-01-18 20:59:15	2026-01-18 21:22:16
67	Afra Cendekia Putri Jallil	afracendekiaputrijallil2604@mail.ugm.ac.id	ys8xpe	\N	2026-01-18 21:25:38	2026-01-18 20:59:15	2026-01-18 21:25:38
70	Innaiya Azkiya H	innaiyaazkiyah@mail.ugm.ac.id	93o3uw	\N	2026-01-18 21:25:39	2026-01-18 20:59:15	2026-01-18 21:25:39
72	Muhammad Fadhillah Suryo Atmojo	muhammadfadhillahsuryoatmojo@mail.ugm.ac.id	qcdkd4	\N	2026-01-18 21:25:40	2026-01-18 20:59:15	2026-01-18 21:25:40
86	Ryvalino Dhanu Ekaputra	ryvalinodhanuekaputra@mail.ugm.ac.id	pkitv2	\N	2026-01-18 21:27:26	2026-01-18 20:59:15	2026-01-18 21:27:26
96	Langit Lintang Radjendra	langitlintangradjendra@mail.ugm.ac.id	ecuyix	\N	2026-01-18 21:29:07	2026-01-18 20:59:15	2026-01-18 21:29:07
107	Arviansyah Eka Pasyutra Kaerumantana	arviansyahekapasyutrakaerumantana@mail.ugm.ac.id	1pur0t	\N	2026-01-18 21:30:57	2026-01-18 20:59:15	2026-01-18 21:30:57
121	Salwa Jasmine A`Aliyah	salwajasmineaaliyah2004@mail.ugm.ac.id	vyjzj6	\N	2026-01-18 21:33:18	2026-01-18 20:59:15	2026-01-18 21:33:18
131	Tri Rambu Nugroho Prasetyo	trirambunugrohoprasetyo@mail.ugm.ac.id	n4zuxg	\N	2026-01-18 21:34:56	2026-01-18 20:59:15	2026-01-18 21:34:56
138	La Ode Naufal Hafiz Allaudin	laodenaufalhafizallaudin@mail.ugm.ac.id	gye6jz	\N	2026-01-18 21:36:07	2026-01-18 20:59:15	2026-01-18 21:36:07
142	Azzuro Najma Annaila	azzuronajmaannaila@mail.ugm.ac.id	gw6ynl	\N	2026-01-18 21:36:47	2026-01-18 20:59:15	2026-01-18 21:36:47
152	Ibanez Centivolia Ahista	ibanezcentivoliaahista@mail.ugm.ac.id	icuagf	\N	2026-01-18 21:38:25	2026-01-18 20:59:15	2026-01-18 21:38:25
163	Christian Peter Pakpahan	christianpeterpakpahan@mail.ugm.ac.id	pzta5a	\N	2026-01-18 21:40:16	2026-01-18 20:59:15	2026-01-18 21:40:16
175	Damarjati Adiyuda Muktitama	damarjatiadiyudamuktitama516701@mail.ugm.ac.id	8xtskw	\N	2026-01-18 21:42:16	2026-01-18 20:59:15	2026-01-18 21:42:16
197	Muhamad Raihan Ratna Badar Aji	muhamadraihanratnabadaraji2004@mail.ugm.ac.id	lkvi8e	\N	2026-01-18 21:45:57	2026-01-18 20:59:15	2026-01-18 21:45:57
208	Zaidan Nur Ramadhan	zaidannurramadhan@mail.ugm.ac.id	es88a4	\N	2026-01-18 21:47:47	2026-01-18 20:59:15	2026-01-18 21:47:47
231	Andika Dwi Prasetya	andikadwiprasetya@mail.ugm.ac.id	pfrxk9	\N	2026-01-18 21:51:37	2026-01-18 20:59:15	2026-01-18 21:51:37
241	Mardhika Murni Pramestika	mardhikamurnipramestika2005@mail.ugm.ac.id	8o7cvw	\N	2026-01-18 21:53:08	2026-01-18 20:59:15	2026-01-18 21:53:08
265	Matthew Hayunaji Priantara	matthewhayunajipriantara@mail.ugm.ac.id	dh60qa	\N	2026-01-18 21:57:06	2026-01-18 20:59:15	2026-01-18 21:57:06
273	Muhammad Fauzan Putra Trisuladana	muhammadfauzanputratrisuladana@mail.ugm.ac.id	yqswka	\N	2026-01-18 21:58:27	2026-01-18 20:59:15	2026-01-18 21:58:27
283	Muhammad Adib Naziri	muhammadadibnaziri@mail.ugm.ac.id	j165us	\N	2026-01-18 22:00:07	2026-01-18 20:59:15	2026-01-18 22:00:07
410	Devina Aulia Tri Kurnia	devinaauliatrikurnia@mail.ugm.ac.id	ilufum	\N	2026-01-18 22:21:08	2026-01-18 20:59:16	2026-01-18 22:21:08
411	Fadlan Buwono Mukti	fadlanbuwonomukti@mail.ugm.ac.id	odvkwy	\N	2026-01-18 22:21:18	2026-01-18 20:59:16	2026-01-18 22:21:18
412	Muhammad Faqih Ghufron	muhammadfaqihghufron@mail.ugm.ac.id	rbtyuh	\N	2026-01-18 22:21:27	2026-01-18 20:59:16	2026-01-18 22:21:27
421	Muhammad Rasyid	muhammadrasyid2006@mail.ugm.ac.id	u2fs52	1	2026-01-18 22:22:56	2026-01-18 20:59:16	2026-01-21 19:21:35
414	Muhamad Arif Farhan	muhamadariffarhan@mail.ugm.ac.id	lechag	\N	2026-01-18 22:21:48	2026-01-18 20:59:16	2026-01-18 22:21:48
416	Aurell Satrianitto Prianggono	aurellsatrianittopriangg566165@mail.ugm.ac.id	eovwps	\N	2026-01-18 22:22:08	2026-01-18 20:59:16	2026-01-18 22:22:08
418	Fahmi Hasan	fahmihasan@mail.ugm.ac.id	7xkahh	\N	2026-01-18 22:22:29	2026-01-18 20:59:16	2026-01-18 22:22:29
419	Gayuh Mukti Aji	gayuhmuktiaji@mail.ugm.ac.id	fv0wz8	\N	2026-01-18 22:22:37	2026-01-18 20:59:16	2026-01-18 22:22:37
420	Grisella Aurelia Disanda	grisellaaureliadisanda@mail.ugm.ac.id	8cpyob	\N	2026-01-18 22:22:46	2026-01-18 20:59:16	2026-01-18 22:22:46
417	Ridho Ridwansyah	ridhoridwansyah@mail.ugm.ac.id	nos3ce	1	2026-01-18 22:22:17	2026-01-18 20:59:16	2026-01-22 08:55:40
422	Rangga Tri Wahyu Hidayat	ranggatriwahyuhidayat2007@mail.ugm.ac.id	6z2nvu	\N	2026-01-18 22:23:07	2026-01-18 20:59:16	2026-01-18 22:23:07
423	Kenzie Ahmad Haidar	kenzieahmadhaidar@mail.ugm.ac.id	7ffctx	\N	2026-01-18 22:23:17	2026-01-18 20:59:16	2026-01-18 22:23:17
424	Ariq Muhammad	ariqmuhammad@mail.ugm.ac.id	6cehqm	\N	2026-01-18 22:23:28	2026-01-18 20:59:16	2026-01-18 22:23:28
425	Khadillaika Hanivia	khadillaikahanivia@mail.ugm.ac.id	e21yka	\N	2026-01-18 22:23:36	2026-01-18 20:59:16	2026-01-18 22:23:36
426	Salwa Dyah Nafla	salwadyahnafla@mail.ugm.ac.id	n7kigd	\N	2026-01-18 22:23:47	2026-01-18 20:59:16	2026-01-18 22:23:47
427	Yahmudi Alih	yahmudialih@mail.ugm.ac.id	qyvbzk	\N	2026-01-18 22:23:57	2026-01-18 20:59:16	2026-01-18 22:23:57
428	Reihan Firmansyah	reihanfirmansyah@mail.ugm.ac.id	ddmxsc	\N	2026-01-18 22:24:08	2026-01-18 20:59:16	2026-01-18 22:24:08
430	Ganendra Allexa Sava	ganendraallexasava@mail.ugm.ac.id	ripksp	\N	2026-01-18 22:24:27	2026-01-18 20:59:16	2026-01-18 22:24:27
431	Muhammad Naufal Fitriarto	muhammadnaufalfitriarto@mail.ugm.ac.id	fc2g0t	\N	2026-01-18 22:24:37	2026-01-18 20:59:16	2026-01-18 22:24:37
432	Irovia Az-Zahra Rizkia Nurjanah	iroviaaz-zahrarizkianurjanah@mail.ugm.ac.id	iee3th	\N	2026-01-18 22:24:48	2026-01-18 20:59:16	2026-01-18 22:24:48
433	Misbahul Huda	misbahulhuda@mail.ugm.ac.id	62zazl	\N	2026-01-18 22:24:56	2026-01-18 20:59:16	2026-01-18 22:24:56
434	Fadhel Sahila Albab	fadhelsahilaalbab@mail.ugm.ac.id	14xqq5	\N	2026-01-18 22:25:07	2026-01-18 20:59:16	2026-01-18 22:25:07
435	Atthoriq Bagus Fadillah	atthoriqbagusfadillah@mail.ugm.ac.id	d0ztsk	\N	2026-01-18 22:25:18	2026-01-18 20:59:16	2026-01-18 22:25:18
436	Gloria Olive Vashti Indriani	gloriaolivevashtiindriani@mail.ugm.ac.id	aebgpu	\N	2026-01-18 22:25:26	2026-01-18 20:59:16	2026-01-18 22:25:26
437	Nikmah Putri Khairani	nikmahputrikhairani@mail.ugm.ac.id	qqljeo	\N	2026-01-18 22:25:36	2026-01-18 20:59:16	2026-01-18 22:25:36
413	Pavel Efram Sukagunas	paveleframsukagunas@mail.ugm.ac.id	prcez4	1	2026-01-18 22:21:37	2026-01-18 20:59:16	2026-01-21 17:53:48
439	Hafidh Dzaki Fardiansyah	hafidhdzakifardiansyah@mail.ugm.ac.id	mkq4qq	1	2026-01-18 22:25:57	2026-01-18 20:59:16	2026-01-21 17:38:36
441	Zalfa Ajeng Suardafa	zalfaajengsuardafa@mail.ugm.ac.id	bssvup	\N	2026-01-18 22:26:17	2026-01-18 20:59:16	2026-01-18 22:26:17
235	Bernardinus N M	nklsmrtn33@mail.ugm.ac.id	yfde9y	\N	2026-01-18 22:26:28	2026-01-18 20:59:14	2026-01-18 22:26:28
255	Hafidz Rizqullah Prasetya	hafidzrizqullahprasetya@mail.ugm.ac.id	dbngwh	1	2026-01-18 21:55:26	2026-01-18 20:59:15	2026-01-20 10:40:17
218	Mulia Christian Gomgom P Simanjuntak	muliachristiangomgompsimanjuntak@mail.ugm.ac.id	um3cnr	2	2026-01-18 21:49:28	2026-01-18 20:59:15	2026-01-20 13:24:03
187	Yeka Nurfy Mumtahany	yekanurfymumtahany@mail.ugm.ac.id	irjb9g	1	2026-01-18 21:44:18	2026-01-18 20:59:15	2026-01-20 19:58:28
440	Nizar Aldin Rasyadi	nizaraldinrasyadi@mail.ugm.ac.id	khksty	1	2026-01-18 22:26:08	2026-01-18 20:59:16	2026-01-21 13:54:16
294	Javian Oktaviansyah	javianoktaviansyah@mail.ugm.ac.id	dsousn	\N	2026-01-18 22:01:57	2026-01-18 20:59:15	2026-01-18 22:01:57
303	Muhammad Dhiya’ulhaq Fadhlurrahman	muhammaddhiyaulhaqfadhlurrahman@mail.ugm.ac.id	18ip4c	\N	2026-01-18 22:03:26	2026-01-18 20:59:15	2026-01-18 22:03:26
317	Raihan Esfandyka Suwandi	raihanesfandykasuwandi@mail.ugm.ac.id	vja9lr	\N	2026-01-18 22:05:46	2026-01-18 20:59:15	2026-01-18 22:05:46
327	Muhammad Abel Abhinaya Riananto	muhammadabelabhinaya@mail.ugm.ac.id	anuada	\N	2026-01-18 22:07:26	2026-01-18 20:59:15	2026-01-18 22:07:26
340	Achwan Anwar Hakim	achwananwarhakim2006@mail.ugm.ac.id	5wseby	\N	2026-01-18 22:09:37	2026-01-18 20:59:15	2026-01-18 22:09:37
348	Trengginas Lir Paksi Jaladri	trengginaslirpaksijaladri@mail.ugm.ac.id	yzkvpq	\N	2026-01-18 22:10:57	2026-01-18 20:59:15	2026-01-18 22:10:57
360	Putrie Araya Iswada	putriearayaiswada@mail.ugm.ac.id	hdoysb	\N	2026-01-18 22:12:57	2026-01-18 20:59:15	2026-01-18 22:12:57
371	Muhammad Palwa Pranaja Ganesa	muhammadpalwapranajaganesa@mail.ugm.ac.id	ma5qwc	\N	2026-01-18 22:14:47	2026-01-18 20:59:15	2026-01-18 22:14:47
383	Evan Fausta Pradana	evanfaustapradana@mail.ugm.ac.id	ymkcan	\N	2026-01-18 22:16:47	2026-01-18 20:59:16	2026-01-18 22:16:47
394	Klarissa Dyta Silaban	klarissadytasilaban@mail.ugm.ac.id	ouxmwe	\N	2026-01-18 22:18:37	2026-01-18 20:59:16	2026-01-18 22:18:37
402	Danish Ardiyanta Rizqy Pramuditya	danishardiyantarizqypramuditya@mail.ugm.ac.id	zls33w	\N	2026-01-18 22:19:57	2026-01-18 20:59:16	2026-01-18 22:19:57
409	Andhika Farhan Saputra	andhikafarhansaputra@mail.ugm.ac.id	bmiqwy	\N	2026-01-18 22:20:57	2026-01-18 20:59:16	2026-01-18 22:20:57
415	Larasati Na'ilah Aribah Hakimah	larasatinailaharibahhakimah@mail.ugm.ac.id	jymx2u	\N	2026-01-18 22:21:57	2026-01-18 20:59:16	2026-01-18 22:21:57
438	Aurelius Davian Emanuel Marani	aureliusdavianemanuelmarani@mail.ugm.ac.id	zkvg7r	\N	2026-01-18 22:25:47	2026-01-18 20:59:16	2026-01-18 22:25:47
429	Nayla Larasati	naylalarasati@mail.ugm.ac.id	z2lfyo	1	2026-01-18 22:24:16	2026-01-18 20:59:16	2026-01-19 19:27:59
311	Revaldo Kuncoro Putra	revaldokuncoroputra2006@mail.ugm.ac.id	iqjxdl	1	2026-01-18 22:04:46	2026-01-18 20:59:15	2026-01-20 10:18:35
169	Asyifa Dzaky Maulana Aditria	asyifadzakymaulanaaditria@mail.ugm.ac.id	l4iscl	2	2026-01-18 21:41:15	2026-01-18 20:59:15	2026-01-20 11:10:57
245	Shinosuke Alexander Swandjaya	shinosukealexanderswandjaya2006@mail.ugm.ac.id	lvjvqt	1	2026-01-18 21:53:46	2026-01-18 20:59:15	2026-01-20 11:44:50
306	Devin Sotya Prathama	devinsotyaprathama2005@mail.ugm.ac.id	cpkoaw	2	2026-01-18 22:04:00	2026-01-18 20:59:15	2026-01-20 18:49:42
384	Rasya Anugrah Dyvanio	rasyaanugrahdyvanio@mail.ugm.ac.id	hnatde	1	2026-01-18 22:16:58	2026-01-18 20:59:16	2026-01-21 17:57:09
\.


--
-- TOC entry 3622 (class 0 OID 35185)
-- Dependencies: 245
-- Data for Name: waktu_proker; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.waktu_proker (id_waktu_proker, id_proker, tanggal_kegiatan, created_at, updated_at) FROM stdin;
\.


--
-- TOC entry 3652 (class 0 OID 0)
-- Dependencies: 230
-- Name: admin_id_admin_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.admin_id_admin_seq', 1, false);


--
-- TOC entry 3653 (class 0 OID 0)
-- Dependencies: 248
-- Name: aspirasi_id_aspirasi_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.aspirasi_id_aspirasi_seq', 1, false);


--
-- TOC entry 3654 (class 0 OID 0)
-- Dependencies: 246
-- Name: color_pallete_id_color_pallete_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.color_pallete_id_color_pallete_seq', 1, false);


--
-- TOC entry 3655 (class 0 OID 0)
-- Dependencies: 236
-- Name: divisi_id_divisi_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.divisi_id_divisi_seq', 1, false);


--
-- TOC entry 3656 (class 0 OID 0)
-- Dependencies: 242
-- Name: dokumentasi_id_dokumentasi_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.dokumentasi_id_dokumentasi_seq', 1, false);


--
-- TOC entry 3657 (class 0 OID 0)
-- Dependencies: 228
-- Name: failed_jobs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.failed_jobs_id_seq', 12, true);


--
-- TOC entry 3658 (class 0 OID 0)
-- Dependencies: 225
-- Name: jobs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.jobs_id_seq', 470, true);


--
-- TOC entry 3659 (class 0 OID 0)
-- Dependencies: 234
-- Name: kabinet_id_kabinet_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.kabinet_id_kabinet_seq', 1, false);


--
-- TOC entry 3660 (class 0 OID 0)
-- Dependencies: 232
-- Name: mahasiswa_id_mhs_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.mahasiswa_id_mhs_seq', 1, false);


--
-- TOC entry 3661 (class 0 OID 0)
-- Dependencies: 217
-- Name: migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.migrations_id_seq', 15, true);


--
-- TOC entry 3662 (class 0 OID 0)
-- Dependencies: 240
-- Name: proker_id_proker_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.proker_id_proker_seq', 1, false);


--
-- TOC entry 3663 (class 0 OID 0)
-- Dependencies: 238
-- Name: staff_id_staff_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.staff_id_staff_seq', 1, false);


--
-- TOC entry 3664 (class 0 OID 0)
-- Dependencies: 219
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_id_seq', 1, false);


--
-- TOC entry 3665 (class 0 OID 0)
-- Dependencies: 250
-- Name: voteds_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.voteds_id_seq', 2, true);


--
-- TOC entry 3666 (class 0 OID 0)
-- Dependencies: 252
-- Name: voters_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.voters_id_seq', 441, true);


--
-- TOC entry 3667 (class 0 OID 0)
-- Dependencies: 244
-- Name: waktu_proker_id_waktu_proker_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.waktu_proker_id_waktu_proker_seq', 1, false);


--
-- TOC entry 3412 (class 2606 OID 35106)
-- Name: admin admin_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin
    ADD CONSTRAINT admin_pkey PRIMARY KEY (id_admin);


--
-- TOC entry 3430 (class 2606 OID 35218)
-- Name: aspirasi aspirasi_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aspirasi
    ADD CONSTRAINT aspirasi_pkey PRIMARY KEY (id_aspirasi);


--
-- TOC entry 3401 (class 2606 OID 35068)
-- Name: cache_locks cache_locks_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cache_locks
    ADD CONSTRAINT cache_locks_pkey PRIMARY KEY (key);


--
-- TOC entry 3399 (class 2606 OID 35061)
-- Name: cache cache_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cache
    ADD CONSTRAINT cache_pkey PRIMARY KEY (key);


--
-- TOC entry 3428 (class 2606 OID 35204)
-- Name: color_pallete color_pallete_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.color_pallete
    ADD CONSTRAINT color_pallete_pkey PRIMARY KEY (id_color_pallete);


--
-- TOC entry 3418 (class 2606 OID 35133)
-- Name: divisi divisi_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.divisi
    ADD CONSTRAINT divisi_pkey PRIMARY KEY (id_divisi);


--
-- TOC entry 3424 (class 2606 OID 35178)
-- Name: dokumentasi dokumentasi_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dokumentasi
    ADD CONSTRAINT dokumentasi_pkey PRIMARY KEY (id_dokumentasi);


--
-- TOC entry 3408 (class 2606 OID 35095)
-- Name: failed_jobs failed_jobs_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.failed_jobs
    ADD CONSTRAINT failed_jobs_pkey PRIMARY KEY (id);


--
-- TOC entry 3410 (class 2606 OID 35097)
-- Name: failed_jobs failed_jobs_uuid_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.failed_jobs
    ADD CONSTRAINT failed_jobs_uuid_unique UNIQUE (uuid);


--
-- TOC entry 3406 (class 2606 OID 35085)
-- Name: job_batches job_batches_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.job_batches
    ADD CONSTRAINT job_batches_pkey PRIMARY KEY (id);


--
-- TOC entry 3403 (class 2606 OID 35077)
-- Name: jobs jobs_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.jobs
    ADD CONSTRAINT jobs_pkey PRIMARY KEY (id);


--
-- TOC entry 3416 (class 2606 OID 35124)
-- Name: kabinet kabinet_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.kabinet
    ADD CONSTRAINT kabinet_pkey PRIMARY KEY (id_kabinet);


--
-- TOC entry 3414 (class 2606 OID 35115)
-- Name: mahasiswa mahasiswa_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mahasiswa
    ADD CONSTRAINT mahasiswa_pkey PRIMARY KEY (id_mhs);


--
-- TOC entry 3387 (class 2606 OID 35027)
-- Name: migrations migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.migrations
    ADD CONSTRAINT migrations_pkey PRIMARY KEY (id);


--
-- TOC entry 3393 (class 2606 OID 35045)
-- Name: password_reset_tokens password_reset_tokens_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.password_reset_tokens
    ADD CONSTRAINT password_reset_tokens_pkey PRIMARY KEY (email);


--
-- TOC entry 3422 (class 2606 OID 35166)
-- Name: proker proker_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.proker
    ADD CONSTRAINT proker_pkey PRIMARY KEY (id_proker);


--
-- TOC entry 3396 (class 2606 OID 35052)
-- Name: sessions sessions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sessions
    ADD CONSTRAINT sessions_pkey PRIMARY KEY (id);


--
-- TOC entry 3420 (class 2606 OID 35147)
-- Name: staff staff_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.staff
    ADD CONSTRAINT staff_pkey PRIMARY KEY (id_staff);


--
-- TOC entry 3389 (class 2606 OID 35038)
-- Name: users users_email_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_unique UNIQUE (email);


--
-- TOC entry 3391 (class 2606 OID 35036)
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- TOC entry 3432 (class 2606 OID 35229)
-- Name: voteds voteds_nim_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.voteds
    ADD CONSTRAINT voteds_nim_unique UNIQUE (nim);


--
-- TOC entry 3434 (class 2606 OID 35227)
-- Name: voteds voteds_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.voteds
    ADD CONSTRAINT voteds_pkey PRIMARY KEY (id);


--
-- TOC entry 3436 (class 2606 OID 35247)
-- Name: voters voters_code_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.voters
    ADD CONSTRAINT voters_code_unique UNIQUE (code);


--
-- TOC entry 3438 (class 2606 OID 35245)
-- Name: voters voters_email_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.voters
    ADD CONSTRAINT voters_email_unique UNIQUE (email);


--
-- TOC entry 3440 (class 2606 OID 35238)
-- Name: voters voters_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.voters
    ADD CONSTRAINT voters_pkey PRIMARY KEY (id);


--
-- TOC entry 3426 (class 2606 OID 35190)
-- Name: waktu_proker waktu_proker_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.waktu_proker
    ADD CONSTRAINT waktu_proker_pkey PRIMARY KEY (id_waktu_proker);


--
-- TOC entry 3404 (class 1259 OID 35078)
-- Name: jobs_queue_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX jobs_queue_index ON public.jobs USING btree (queue);


--
-- TOC entry 3394 (class 1259 OID 35054)
-- Name: sessions_last_activity_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX sessions_last_activity_index ON public.sessions USING btree (last_activity);


--
-- TOC entry 3397 (class 1259 OID 35053)
-- Name: sessions_user_id_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX sessions_user_id_index ON public.sessions USING btree (user_id);


--
-- TOC entry 3447 (class 2606 OID 35205)
-- Name: color_pallete color_pallete_id_kabinet_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.color_pallete
    ADD CONSTRAINT color_pallete_id_kabinet_foreign FOREIGN KEY (id_kabinet) REFERENCES public.kabinet(id_kabinet) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- TOC entry 3441 (class 2606 OID 35134)
-- Name: divisi divisi_id_kabinet_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.divisi
    ADD CONSTRAINT divisi_id_kabinet_foreign FOREIGN KEY (id_kabinet) REFERENCES public.kabinet(id_kabinet) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- TOC entry 3445 (class 2606 OID 35179)
-- Name: dokumentasi dokumentasi_id_proker_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dokumentasi
    ADD CONSTRAINT dokumentasi_id_proker_foreign FOREIGN KEY (id_proker) REFERENCES public.proker(id_proker) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- TOC entry 3444 (class 2606 OID 35167)
-- Name: proker proker_id_divisi_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.proker
    ADD CONSTRAINT proker_id_divisi_foreign FOREIGN KEY (id_divisi) REFERENCES public.divisi(id_divisi) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- TOC entry 3442 (class 2606 OID 35148)
-- Name: staff staff_id_divisi_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.staff
    ADD CONSTRAINT staff_id_divisi_foreign FOREIGN KEY (id_divisi) REFERENCES public.divisi(id_divisi) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- TOC entry 3443 (class 2606 OID 35153)
-- Name: staff staff_id_mhs_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.staff
    ADD CONSTRAINT staff_id_mhs_foreign FOREIGN KEY (id_mhs) REFERENCES public.mahasiswa(id_mhs) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- TOC entry 3448 (class 2606 OID 35239)
-- Name: voters voters_voted_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.voters
    ADD CONSTRAINT voters_voted_id_foreign FOREIGN KEY (voted_id) REFERENCES public.voteds(id) ON DELETE SET NULL;


--
-- TOC entry 3446 (class 2606 OID 35191)
-- Name: waktu_proker waktu_proker_id_proker_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.waktu_proker
    ADD CONSTRAINT waktu_proker_id_proker_foreign FOREIGN KEY (id_proker) REFERENCES public.proker(id_proker) ON UPDATE CASCADE ON DELETE RESTRICT;


-- Completed on 2026-01-24 10:01:02 UTC

--
-- PostgreSQL database dump complete
--

\unrestrict IKcdqh8cMIbLIAIUcQCWQSu3AOBLq7SoT4OzfvE4JHhw8gSDtcxvXyhWf1tyGch

