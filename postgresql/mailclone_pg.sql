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
-- Name: emails; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.emails (
    id bigint NOT NULL,
    recipient_id integer,
    sender_address character varying,
    title character varying,
    content text,
    parent_email_id integer,
    read boolean,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.emails OWNER TO postgres;

--
-- Name: emails_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.emails_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.emails_id_seq OWNER TO postgres;

--
-- Name: emails_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.emails_id_seq OWNED BY public.emails.id;


--
-- Name: folder_emails; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.folder_emails (
    id bigint NOT NULL,
    folder_id integer,
    email_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    user_id integer
);


ALTER TABLE public.folder_emails OWNER TO postgres;

--
-- Name: folder_emails_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.folder_emails_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.folder_emails_id_seq OWNER TO postgres;

--
-- Name: folder_emails_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.folder_emails_id_seq OWNED BY public.folder_emails.id;


--
-- Name: folders; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.folders (
    id bigint NOT NULL,
    name character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.folders OWNER TO postgres;

--
-- Name: folders_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.folders_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.folders_id_seq OWNER TO postgres;

--
-- Name: folders_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.folders_id_seq OWNED BY public.folders.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO postgres;

--
-- Name: user_folders; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.user_folders (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    folder_id integer NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.user_folders OWNER TO postgres;

--
-- Name: user_folders_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.user_folders_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_folders_id_seq OWNER TO postgres;

--
-- Name: user_folders_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.user_folders_id_seq OWNED BY public.user_folders.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id bigint NOT NULL,
    email character varying,
    password_digest character varying,
    session_token character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
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
-- Name: emails id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.emails ALTER COLUMN id SET DEFAULT nextval('public.emails_id_seq'::regclass);


--
-- Name: folder_emails id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.folder_emails ALTER COLUMN id SET DEFAULT nextval('public.folder_emails_id_seq'::regclass);


--
-- Name: folders id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.folders ALTER COLUMN id SET DEFAULT nextval('public.folders_id_seq'::regclass);


--
-- Name: user_folders id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_folders ALTER COLUMN id SET DEFAULT nextval('public.user_folders_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
environment	development	2020-04-16 17:28:11.901195	2020-04-16 17:28:11.901195
schema_sha1	5dc24451f47589cfca4d2a29310ff14909d0987b	2020-04-16 17:28:11.921718	2020-04-16 17:28:11.921718
\.


--
-- Data for Name: emails; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.emails (id, recipient_id, sender_address, title, content, parent_email_id, read, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: folder_emails; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.folder_emails (id, folder_id, email_id, created_at, updated_at, user_id) FROM stdin;
\.


--
-- Data for Name: folders; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.folders (id, name, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.schema_migrations (version) FROM stdin;
20130909185120
\.


--
-- Data for Name: user_folders; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.user_folders (id, user_id, folder_id, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (id, email, password_digest, session_token, created_at, updated_at) FROM stdin;
\.


--
-- Name: emails_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.emails_id_seq', 1, false);


--
-- Name: folder_emails_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.folder_emails_id_seq', 1, false);


--
-- Name: folders_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.folders_id_seq', 1, false);


--
-- Name: user_folders_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.user_folders_id_seq', 1, false);


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
-- Name: emails emails_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.emails
    ADD CONSTRAINT emails_pkey PRIMARY KEY (id);


--
-- Name: folder_emails folder_emails_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.folder_emails
    ADD CONSTRAINT folder_emails_pkey PRIMARY KEY (id);


--
-- Name: folders folders_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.folders
    ADD CONSTRAINT folders_pkey PRIMARY KEY (id);


--
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- Name: user_folders user_folders_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_folders
    ADD CONSTRAINT user_folders_pkey PRIMARY KEY (id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: index_emails_on_parent_email_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_emails_on_parent_email_id ON public.emails USING btree (parent_email_id);


--
-- Name: index_emails_on_recipient_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_emails_on_recipient_id ON public.emails USING btree (recipient_id);


--
-- Name: index_emails_on_sender_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_emails_on_sender_id ON public.emails USING btree (sender_address);


--
-- Name: index_folder_emails_on_email_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_folder_emails_on_email_id ON public.folder_emails USING btree (email_id);


--
-- Name: index_folder_emails_on_folder_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_folder_emails_on_folder_id ON public.folder_emails USING btree (folder_id);


--
-- Name: index_folders_on_name; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_folders_on_name ON public.folders USING btree (name);


--
-- Name: index_user_folders_on_folder_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_user_folders_on_folder_id ON public.user_folders USING btree (folder_id);


--
-- Name: index_user_folders_on_user_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_user_folders_on_user_id ON public.user_folders USING btree (user_id);


--
-- Name: index_users_on_session_token; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_users_on_session_token ON public.users USING btree (session_token);


--
-- Name: index_users_on_username; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_users_on_username ON public.users USING btree (email);


--
-- PostgreSQL database dump complete
--

