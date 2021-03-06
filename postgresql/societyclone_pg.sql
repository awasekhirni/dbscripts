--
-- PostgreSQL database dump
--

-- Dumped from database version 11.2
-- Dumped by pg_dump version 11.2

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.ar_internal_metadata OWNER TO postgres;

--
-- Name: attended_years; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.attended_years (
    id bigint NOT NULL,
    student_id numeric(10,0),
    school character varying,
    year numeric(10,0),
    comment character varying,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.attended_years OWNER TO postgres;

--
-- Name: attended_years_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.attended_years_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.attended_years_id_seq OWNER TO postgres;

--
-- Name: attended_years_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.attended_years_id_seq OWNED BY public.attended_years.id;


--
-- Name: categories; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.categories (
    id bigint NOT NULL,
    title character varying,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.categories OWNER TO postgres;

--
-- Name: categories_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.categories_id_seq OWNER TO postgres;

--
-- Name: categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.categories_id_seq OWNED BY public.categories.id;


--
-- Name: government_posts; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.government_posts (
    id bigint NOT NULL,
    student_id numeric(10,0),
    which character varying,
    title character varying,
    modifier character varying,
    location character varying,
    time_span character varying,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.government_posts OWNER TO postgres;

--
-- Name: government_posts_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.government_posts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.government_posts_id_seq OWNER TO postgres;

--
-- Name: government_posts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.government_posts_id_seq OWNED BY public.government_posts.id;


--
-- Name: images; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.images (
    id bigint NOT NULL,
    photo_file_name character varying,
    photo_content_type character varying,
    photo_file_size character varying,
    photo_updated_at character varying,
    transcription text,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.images OWNER TO postgres;

--
-- Name: images_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.images_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.images_id_seq OWNER TO postgres;

--
-- Name: images_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.images_id_seq OWNED BY public.images.id;


--
-- Name: marriages; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.marriages (
    id bigint NOT NULL,
    student_id numeric(10,0),
    marriage_date character varying,
    spouse_id numeric(10,0),
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.marriages OWNER TO postgres;

--
-- Name: marriages_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.marriages_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.marriages_id_seq OWNER TO postgres;

--
-- Name: marriages_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.marriages_id_seq OWNED BY public.marriages.id;


--
-- Name: material_categories; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.material_categories (
    id bigint NOT NULL,
    material_id numeric(10,0),
    category_id numeric(10,0),
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.material_categories OWNER TO postgres;

--
-- Name: material_categories_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.material_categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.material_categories_id_seq OWNER TO postgres;

--
-- Name: material_categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.material_categories_id_seq OWNED BY public.material_categories.id;


--
-- Name: material_images; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.material_images (
    id bigint NOT NULL,
    material_id numeric(10,0),
    image_id numeric(10,0),
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.material_images OWNER TO postgres;

--
-- Name: material_images_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.material_images_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.material_images_id_seq OWNER TO postgres;

--
-- Name: material_images_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.material_images_id_seq OWNED BY public.material_images.id;


--
-- Name: material_materials; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.material_materials (
    id bigint NOT NULL,
    material1_id numeric(10,0),
    material2_id numeric(10,0),
    description1 character varying,
    description2 character varying,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.material_materials OWNER TO postgres;

--
-- Name: material_materials_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.material_materials_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.material_materials_id_seq OWNER TO postgres;

--
-- Name: material_materials_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.material_materials_id_seq OWNED BY public.material_materials.id;


--
-- Name: material_transcriptions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.material_transcriptions (
    id bigint NOT NULL,
    material_id numeric(10,0),
    transcription_id numeric(10,0),
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.material_transcriptions OWNER TO postgres;

--
-- Name: material_transcriptions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.material_transcriptions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.material_transcriptions_id_seq OWNER TO postgres;

--
-- Name: material_transcriptions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.material_transcriptions_id_seq OWNED BY public.material_transcriptions.id;


--
-- Name: materials; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.materials (
    id bigint NOT NULL,
    name character varying,
    object_id character varying,
    accession_num character varying,
    url character varying,
    author character varying,
    material_date character varying,
    collection character varying,
    held_at character varying,
    associated_place character varying,
    medium character varying,
    size character varying,
    description text,
    private_notes text,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    original_name character varying
);


ALTER TABLE public.materials OWNER TO postgres;

--
-- Name: materials_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.materials_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.materials_id_seq OWNER TO postgres;

--
-- Name: materials_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.materials_id_seq OWNED BY public.materials.id;


--
-- Name: offsite_materials; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.offsite_materials (
    id bigint NOT NULL,
    name character varying,
    url character varying,
    student_id numeric(10,0),
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.offsite_materials OWNER TO postgres;

--
-- Name: offsite_materials_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.offsite_materials_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.offsite_materials_id_seq OWNER TO postgres;

--
-- Name: offsite_materials_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.offsite_materials_id_seq OWNED BY public.offsite_materials.id;


--
-- Name: political_parties; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.political_parties (
    id bigint NOT NULL,
    title character varying,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.political_parties OWNER TO postgres;

--
-- Name: political_parties_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.political_parties_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.political_parties_id_seq OWNER TO postgres;

--
-- Name: political_parties_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.political_parties_id_seq OWNED BY public.political_parties.id;


--
-- Name: professions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.professions (
    id bigint NOT NULL,
    title character varying,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.professions OWNER TO postgres;

--
-- Name: professions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.professions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.professions_id_seq OWNER TO postgres;

--
-- Name: professions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.professions_id_seq OWNED BY public.professions.id;


--
-- Name: relations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relations (
    id bigint NOT NULL,
    student1_id numeric(10,0),
    student2_id numeric(10,0),
    relationship character varying,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.relations OWNER TO postgres;

--
-- Name: relations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.relations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.relations_id_seq OWNER TO postgres;

--
-- Name: relations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.relations_id_seq OWNED BY public.relations.id;


--
-- Name: residences; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.residences (
    id bigint NOT NULL,
    town character varying,
    state character varying,
    country character varying,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.residences OWNER TO postgres;

--
-- Name: residences_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.residences_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.residences_id_seq OWNER TO postgres;

--
-- Name: residences_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.residences_id_seq OWNED BY public.residences.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO postgres;

--
-- Name: student_materials; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.student_materials (
    id bigint NOT NULL,
    student_id numeric(10,0),
    material_id numeric(10,0),
    relationship character varying,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    material_comment character varying
);


ALTER TABLE public.student_materials OWNER TO postgres;

--
-- Name: student_materials_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.student_materials_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.student_materials_id_seq OWNER TO postgres;

--
-- Name: student_materials_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.student_materials_id_seq OWNED BY public.student_materials.id;


--
-- Name: student_political_parties; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.student_political_parties (
    id bigint NOT NULL,
    student_id numeric(10,0),
    political_party_id numeric(10,0),
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.student_political_parties OWNER TO postgres;

--
-- Name: student_political_parties_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.student_political_parties_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.student_political_parties_id_seq OWNER TO postgres;

--
-- Name: student_political_parties_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.student_political_parties_id_seq OWNED BY public.student_political_parties.id;


--
-- Name: student_professions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.student_professions (
    id bigint NOT NULL,
    student_id numeric(10,0),
    profession_id numeric(10,0),
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.student_professions OWNER TO postgres;

--
-- Name: student_professions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.student_professions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.student_professions_id_seq OWNER TO postgres;

--
-- Name: student_professions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.student_professions_id_seq OWNED BY public.student_professions.id;


--
-- Name: student_residences; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.student_residences (
    id bigint NOT NULL,
    student_id numeric(10,0),
    residence_id numeric(10,0),
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.student_residences OWNER TO postgres;

--
-- Name: student_residences_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.student_residences_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.student_residences_id_seq OWNER TO postgres;

--
-- Name: student_residences_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.student_residences_id_seq OWNED BY public.student_residences.id;


--
-- Name: students; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.students (
    id bigint NOT NULL,
    name character varying,
    sort_name character varying,
    other_name character varying,
    gender character varying,
    room_and_board text,
    home_town character varying,
    home_state character varying,
    home_country character varying,
    born character varying,
    died character varying,
    other_education text,
    admitted_to_bar character varying,
    training_with_other_lawyers text,
    federal_committees text,
    state_committees text,
    biographical_notes text,
    citation_of_attendance text,
    image_id numeric(10,0),
    secondary_sources text,
    additional_notes text,
    private_notes text,
    benevolent_and_charitable_organizations text,
    is_stub character varying,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    quotes text,
    original_name character varying
);


ALTER TABLE public.students OWNER TO postgres;

--
-- Name: students_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.students_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.students_id_seq OWNER TO postgres;

--
-- Name: students_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.students_id_seq OWNED BY public.students.id;


--
-- Name: transcriptions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.transcriptions (
    id bigint NOT NULL,
    pdf_file_name character varying,
    pdf_content_type character varying,
    pdf_file_size character varying,
    pdf_updated_at character varying,
    title character varying,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.transcriptions OWNER TO postgres;

--
-- Name: transcriptions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.transcriptions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.transcriptions_id_seq OWNER TO postgres;

--
-- Name: transcriptions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.transcriptions_id_seq OWNED BY public.transcriptions.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id bigint NOT NULL,
    permissions character varying,
    email character varying DEFAULT ''::character varying NOT NULL,
    encrypted_password character varying(128) DEFAULT ''::character varying NOT NULL,
    password_salt character varying DEFAULT ''::character varying NOT NULL,
    reset_password_token character varying,
    remember_token character varying,
    remember_created_at timestamp without time zone,
    sign_in_count integer DEFAULT 0,
    current_sign_in_at timestamp without time zone,
    last_sign_in_at timestamp without time zone,
    current_sign_in_ip character varying,
    last_sign_in_ip character varying,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.users OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: attended_years id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.attended_years ALTER COLUMN id SET DEFAULT nextval('public.attended_years_id_seq'::regclass);


--
-- Name: categories id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categories ALTER COLUMN id SET DEFAULT nextval('public.categories_id_seq'::regclass);


--
-- Name: government_posts id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.government_posts ALTER COLUMN id SET DEFAULT nextval('public.government_posts_id_seq'::regclass);


--
-- Name: images id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.images ALTER COLUMN id SET DEFAULT nextval('public.images_id_seq'::regclass);


--
-- Name: marriages id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.marriages ALTER COLUMN id SET DEFAULT nextval('public.marriages_id_seq'::regclass);


--
-- Name: material_categories id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.material_categories ALTER COLUMN id SET DEFAULT nextval('public.material_categories_id_seq'::regclass);


--
-- Name: material_images id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.material_images ALTER COLUMN id SET DEFAULT nextval('public.material_images_id_seq'::regclass);


--
-- Name: material_materials id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.material_materials ALTER COLUMN id SET DEFAULT nextval('public.material_materials_id_seq'::regclass);


--
-- Name: material_transcriptions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.material_transcriptions ALTER COLUMN id SET DEFAULT nextval('public.material_transcriptions_id_seq'::regclass);


--
-- Name: materials id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.materials ALTER COLUMN id SET DEFAULT nextval('public.materials_id_seq'::regclass);


--
-- Name: offsite_materials id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.offsite_materials ALTER COLUMN id SET DEFAULT nextval('public.offsite_materials_id_seq'::regclass);


--
-- Name: political_parties id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.political_parties ALTER COLUMN id SET DEFAULT nextval('public.political_parties_id_seq'::regclass);


--
-- Name: professions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.professions ALTER COLUMN id SET DEFAULT nextval('public.professions_id_seq'::regclass);


--
-- Name: relations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relations ALTER COLUMN id SET DEFAULT nextval('public.relations_id_seq'::regclass);


--
-- Name: residences id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.residences ALTER COLUMN id SET DEFAULT nextval('public.residences_id_seq'::regclass);


--
-- Name: student_materials id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.student_materials ALTER COLUMN id SET DEFAULT nextval('public.student_materials_id_seq'::regclass);


--
-- Name: student_political_parties id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.student_political_parties ALTER COLUMN id SET DEFAULT nextval('public.student_political_parties_id_seq'::regclass);


--
-- Name: student_professions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.student_professions ALTER COLUMN id SET DEFAULT nextval('public.student_professions_id_seq'::regclass);


--
-- Name: student_residences id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.student_residences ALTER COLUMN id SET DEFAULT nextval('public.student_residences_id_seq'::regclass);


--
-- Name: students id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.students ALTER COLUMN id SET DEFAULT nextval('public.students_id_seq'::regclass);


--
-- Name: transcriptions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.transcriptions ALTER COLUMN id SET DEFAULT nextval('public.transcriptions_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
environment	development	2020-04-16 17:57:57.408444	2020-04-16 17:57:57.408444
schema_sha1	0dad4efe4b006fe232c2375fd795657037be000c	2020-04-16 17:57:57.420592	2020-04-16 17:57:57.420592
\.


--
-- Data for Name: attended_years; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.attended_years (id, student_id, school, year, comment, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: categories; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.categories (id, title, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: government_posts; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.government_posts (id, student_id, which, title, modifier, location, time_span, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: images; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.images (id, photo_file_name, photo_content_type, photo_file_size, photo_updated_at, transcription, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: marriages; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.marriages (id, student_id, marriage_date, spouse_id, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: material_categories; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.material_categories (id, material_id, category_id, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: material_images; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.material_images (id, material_id, image_id, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: material_materials; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.material_materials (id, material1_id, material2_id, description1, description2, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: material_transcriptions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.material_transcriptions (id, material_id, transcription_id, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: materials; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.materials (id, name, object_id, accession_num, url, author, material_date, collection, held_at, associated_place, medium, size, description, private_notes, created_at, updated_at, original_name) FROM stdin;
\.


--
-- Data for Name: offsite_materials; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.offsite_materials (id, name, url, student_id, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: political_parties; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.political_parties (id, title, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: professions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.professions (id, title, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: relations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relations (id, student1_id, student2_id, relationship, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: residences; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.residences (id, town, state, country, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.schema_migrations (version) FROM stdin;
20110308151702
\.


--
-- Data for Name: student_materials; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.student_materials (id, student_id, material_id, relationship, created_at, updated_at, material_comment) FROM stdin;
\.


--
-- Data for Name: student_political_parties; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.student_political_parties (id, student_id, political_party_id, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: student_professions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.student_professions (id, student_id, profession_id, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: student_residences; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.student_residences (id, student_id, residence_id, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: students; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.students (id, name, sort_name, other_name, gender, room_and_board, home_town, home_state, home_country, born, died, other_education, admitted_to_bar, training_with_other_lawyers, federal_committees, state_committees, biographical_notes, citation_of_attendance, image_id, secondary_sources, additional_notes, private_notes, benevolent_and_charitable_organizations, is_stub, created_at, updated_at, quotes, original_name) FROM stdin;
\.


--
-- Data for Name: transcriptions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.transcriptions (id, pdf_file_name, pdf_content_type, pdf_file_size, pdf_updated_at, title, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (id, permissions, email, encrypted_password, password_salt, reset_password_token, remember_token, remember_created_at, sign_in_count, current_sign_in_at, last_sign_in_at, current_sign_in_ip, last_sign_in_ip, created_at, updated_at) FROM stdin;
\.


--
-- Name: attended_years_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.attended_years_id_seq', 1, false);


--
-- Name: categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.categories_id_seq', 1, false);


--
-- Name: government_posts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.government_posts_id_seq', 1, false);


--
-- Name: images_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.images_id_seq', 1, false);


--
-- Name: marriages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.marriages_id_seq', 1, false);


--
-- Name: material_categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.material_categories_id_seq', 1, false);


--
-- Name: material_images_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.material_images_id_seq', 1, false);


--
-- Name: material_materials_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.material_materials_id_seq', 1, false);


--
-- Name: material_transcriptions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.material_transcriptions_id_seq', 1, false);


--
-- Name: materials_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.materials_id_seq', 1, false);


--
-- Name: offsite_materials_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.offsite_materials_id_seq', 1, false);


--
-- Name: political_parties_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.political_parties_id_seq', 1, false);


--
-- Name: professions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.professions_id_seq', 1, false);


--
-- Name: relations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.relations_id_seq', 1, false);


--
-- Name: residences_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.residences_id_seq', 1, false);


--
-- Name: student_materials_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.student_materials_id_seq', 1, false);


--
-- Name: student_political_parties_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.student_political_parties_id_seq', 1, false);


--
-- Name: student_professions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.student_professions_id_seq', 1, false);


--
-- Name: student_residences_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.student_residences_id_seq', 1, false);


--
-- Name: students_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.students_id_seq', 1, false);


--
-- Name: transcriptions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.transcriptions_id_seq', 1, false);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_id_seq', 1, false);


--
-- Name: ar_internal_metadata ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- Name: attended_years attended_years_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.attended_years
    ADD CONSTRAINT attended_years_pkey PRIMARY KEY (id);


--
-- Name: categories categories_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (id);


--
-- Name: government_posts government_posts_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.government_posts
    ADD CONSTRAINT government_posts_pkey PRIMARY KEY (id);


--
-- Name: images images_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.images
    ADD CONSTRAINT images_pkey PRIMARY KEY (id);


--
-- Name: marriages marriages_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.marriages
    ADD CONSTRAINT marriages_pkey PRIMARY KEY (id);


--
-- Name: material_categories material_categories_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.material_categories
    ADD CONSTRAINT material_categories_pkey PRIMARY KEY (id);


--
-- Name: material_images material_images_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.material_images
    ADD CONSTRAINT material_images_pkey PRIMARY KEY (id);


--
-- Name: material_materials material_materials_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.material_materials
    ADD CONSTRAINT material_materials_pkey PRIMARY KEY (id);


--
-- Name: material_transcriptions material_transcriptions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.material_transcriptions
    ADD CONSTRAINT material_transcriptions_pkey PRIMARY KEY (id);


--
-- Name: materials materials_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.materials
    ADD CONSTRAINT materials_pkey PRIMARY KEY (id);


--
-- Name: offsite_materials offsite_materials_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.offsite_materials
    ADD CONSTRAINT offsite_materials_pkey PRIMARY KEY (id);


--
-- Name: political_parties political_parties_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.political_parties
    ADD CONSTRAINT political_parties_pkey PRIMARY KEY (id);


--
-- Name: professions professions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.professions
    ADD CONSTRAINT professions_pkey PRIMARY KEY (id);


--
-- Name: relations relations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relations
    ADD CONSTRAINT relations_pkey PRIMARY KEY (id);


--
-- Name: residences residences_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.residences
    ADD CONSTRAINT residences_pkey PRIMARY KEY (id);


--
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- Name: student_materials student_materials_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.student_materials
    ADD CONSTRAINT student_materials_pkey PRIMARY KEY (id);


--
-- Name: student_political_parties student_political_parties_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.student_political_parties
    ADD CONSTRAINT student_political_parties_pkey PRIMARY KEY (id);


--
-- Name: student_professions student_professions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.student_professions
    ADD CONSTRAINT student_professions_pkey PRIMARY KEY (id);


--
-- Name: student_residences student_residences_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.student_residences
    ADD CONSTRAINT student_residences_pkey PRIMARY KEY (id);


--
-- Name: students students_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_pkey PRIMARY KEY (id);


--
-- Name: transcriptions transcriptions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.transcriptions
    ADD CONSTRAINT transcriptions_pkey PRIMARY KEY (id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: index_attended_years_on_student_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_attended_years_on_student_id ON public.attended_years USING btree (student_id);


--
-- Name: index_government_posts_on_student_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_government_posts_on_student_id ON public.government_posts USING btree (student_id);


--
-- Name: index_marriages_on_spouse_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_marriages_on_spouse_id ON public.marriages USING btree (spouse_id);


--
-- Name: index_marriages_on_student_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_marriages_on_student_id ON public.marriages USING btree (student_id);


--
-- Name: index_material_categories_on_category_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_material_categories_on_category_id ON public.material_categories USING btree (category_id);


--
-- Name: index_material_categories_on_material_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_material_categories_on_material_id ON public.material_categories USING btree (material_id);


--
-- Name: index_material_images_on_image_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_material_images_on_image_id ON public.material_images USING btree (image_id);


--
-- Name: index_material_images_on_material_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_material_images_on_material_id ON public.material_images USING btree (material_id);


--
-- Name: index_material_transcriptions_on_material_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_material_transcriptions_on_material_id ON public.material_transcriptions USING btree (material_id);


--
-- Name: index_material_transcriptions_on_transcription_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_material_transcriptions_on_transcription_id ON public.material_transcriptions USING btree (transcription_id);


--
-- Name: index_offsite_materials_on_student_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_offsite_materials_on_student_id ON public.offsite_materials USING btree (student_id);


--
-- Name: index_relations_on_student1_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_relations_on_student1_id ON public.relations USING btree (student1_id);


--
-- Name: index_relations_on_student2_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_relations_on_student2_id ON public.relations USING btree (student2_id);


--
-- Name: index_student_materials_on_material_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_student_materials_on_material_id ON public.student_materials USING btree (material_id);


--
-- Name: index_student_materials_on_student_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_student_materials_on_student_id ON public.student_materials USING btree (student_id);


--
-- Name: index_student_political_parties_on_political_party_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_student_political_parties_on_political_party_id ON public.student_political_parties USING btree (political_party_id);


--
-- Name: index_student_political_parties_on_student_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_student_political_parties_on_student_id ON public.student_political_parties USING btree (student_id);


--
-- Name: index_student_professions_on_profession_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_student_professions_on_profession_id ON public.student_professions USING btree (profession_id);


--
-- Name: index_student_professions_on_student_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_student_professions_on_student_id ON public.student_professions USING btree (student_id);


--
-- Name: index_student_residences_on_residence_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_student_residences_on_residence_id ON public.student_residences USING btree (residence_id);


--
-- Name: index_student_residences_on_student_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_student_residences_on_student_id ON public.student_residences USING btree (student_id);


--
-- Name: index_users_on_email; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX index_users_on_email ON public.users USING btree (email);


--
-- Name: index_users_on_reset_password_token; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX index_users_on_reset_password_token ON public.users USING btree (reset_password_token);


--
-- PostgreSQL database dump complete
--

