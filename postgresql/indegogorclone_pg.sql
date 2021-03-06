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

--
-- Name: pg_trgm; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS pg_trgm WITH SCHEMA public;


--
-- Name: EXTENSION pg_trgm; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION pg_trgm IS 'text similarity measurement and index searching based on trigrams';


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
-- Name: campaigns; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.campaigns (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    goal_amt integer NOT NULL,
    current_amt integer NOT NULL,
    title character varying NOT NULL,
    tagline text NOT NULL,
    city character varying NOT NULL,
    country character varying NOT NULL,
    duration integer NOT NULL,
    overview text NOT NULL,
    campaign_story text NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    tile_img_file_name character varying,
    tile_img_content_type character varying,
    tile_img_file_size integer,
    tile_img_updated_at timestamp without time zone,
    overview_img_file_name character varying,
    overview_img_content_type character varying,
    overview_img_file_size integer,
    overview_img_updated_at timestamp without time zone,
    pitch_img_file_name character varying,
    pitch_img_content_type character varying,
    pitch_img_file_size integer,
    pitch_img_updated_at timestamp without time zone,
    category character varying
);


ALTER TABLE public.campaigns OWNER TO postgres;

--
-- Name: campaigns_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.campaigns_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.campaigns_id_seq OWNER TO postgres;

--
-- Name: campaigns_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.campaigns_id_seq OWNED BY public.campaigns.id;


--
-- Name: contributions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.contributions (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    campaign_id integer NOT NULL,
    perk_id integer,
    amount integer NOT NULL,
    appearance character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.contributions OWNER TO postgres;

--
-- Name: contributions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.contributions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.contributions_id_seq OWNER TO postgres;

--
-- Name: contributions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.contributions_id_seq OWNED BY public.contributions.id;


--
-- Name: perks; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.perks (
    id bigint NOT NULL,
    campaign_id integer NOT NULL,
    price integer NOT NULL,
    title character varying NOT NULL,
    description text NOT NULL,
    number_available integer NOT NULL,
    delivery_date date NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    number_claimed integer DEFAULT 0
);


ALTER TABLE public.perks OWNER TO postgres;

--
-- Name: perks_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.perks_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.perks_id_seq OWNER TO postgres;

--
-- Name: perks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.perks_id_seq OWNED BY public.perks.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO postgres;

--
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id bigint NOT NULL,
    email character varying NOT NULL,
    password_digest character varying NOT NULL,
    session_token character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    first_name character varying NOT NULL,
    last_name character varying NOT NULL,
    avatar_img_file_name character varying,
    avatar_img_content_type character varying,
    avatar_img_file_size integer,
    avatar_img_updated_at timestamp without time zone,
    city character varying,
    country character varying,
    postal_code integer,
    tagline character varying,
    about_me text,
    prof_img_file_name character varying,
    prof_img_content_type character varying,
    prof_img_file_size integer,
    prof_img_updated_at timestamp without time zone
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
-- Name: campaigns id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.campaigns ALTER COLUMN id SET DEFAULT nextval('public.campaigns_id_seq'::regclass);


--
-- Name: contributions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.contributions ALTER COLUMN id SET DEFAULT nextval('public.contributions_id_seq'::regclass);


--
-- Name: perks id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.perks ALTER COLUMN id SET DEFAULT nextval('public.perks_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
environment	development	2020-04-16 17:09:17.478649	2020-04-16 17:09:17.478649
schema_sha1	bb6483f8371a92d84af811c3dcc2f79f4cd7fe71	2020-04-16 17:09:17.533183	2020-04-16 17:09:17.533183
\.


--
-- Data for Name: campaigns; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.campaigns (id, user_id, goal_amt, current_amt, title, tagline, city, country, duration, overview, campaign_story, created_at, updated_at, tile_img_file_name, tile_img_content_type, tile_img_file_size, tile_img_updated_at, overview_img_file_name, overview_img_content_type, overview_img_file_size, overview_img_updated_at, pitch_img_file_name, pitch_img_content_type, pitch_img_file_size, pitch_img_updated_at, category) FROM stdin;
\.


--
-- Data for Name: contributions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.contributions (id, user_id, campaign_id, perk_id, amount, appearance, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: perks; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.perks (id, campaign_id, price, title, description, number_available, delivery_date, created_at, updated_at, number_claimed) FROM stdin;
\.


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.schema_migrations (version) FROM stdin;
20170702220837
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (id, email, password_digest, session_token, created_at, updated_at, first_name, last_name, avatar_img_file_name, avatar_img_content_type, avatar_img_file_size, avatar_img_updated_at, city, country, postal_code, tagline, about_me, prof_img_file_name, prof_img_content_type, prof_img_file_size, prof_img_updated_at) FROM stdin;
\.


--
-- Name: campaigns_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.campaigns_id_seq', 1, false);


--
-- Name: contributions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.contributions_id_seq', 1, false);


--
-- Name: perks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.perks_id_seq', 1, false);


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
-- Name: campaigns campaigns_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.campaigns
    ADD CONSTRAINT campaigns_pkey PRIMARY KEY (id);


--
-- Name: contributions contributions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.contributions
    ADD CONSTRAINT contributions_pkey PRIMARY KEY (id);


--
-- Name: perks perks_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.perks
    ADD CONSTRAINT perks_pkey PRIMARY KEY (id);


--
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: index_campaigns_on_user_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_campaigns_on_user_id ON public.campaigns USING btree (user_id);


--
-- Name: index_contributions_on_campaign_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_contributions_on_campaign_id ON public.contributions USING btree (campaign_id);


--
-- Name: index_contributions_on_perk_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_contributions_on_perk_id ON public.contributions USING btree (perk_id);


--
-- Name: index_contributions_on_user_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_contributions_on_user_id ON public.contributions USING btree (user_id);


--
-- Name: index_perks_on_campaign_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_perks_on_campaign_id ON public.perks USING btree (campaign_id);


--
-- Name: index_users_on_email; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX index_users_on_email ON public.users USING btree (email);


--
-- Name: index_users_on_session_token; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX index_users_on_session_token ON public.users USING btree (session_token);


--
-- PostgreSQL database dump complete
--

