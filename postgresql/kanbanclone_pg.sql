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
-- Name: board_activities; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.board_activities (
    id bigint NOT NULL,
    member_id integer NOT NULL,
    board_id integer NOT NULL,
    description text NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.board_activities OWNER TO postgres;

--
-- Name: board_activities_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.board_activities_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.board_activities_id_seq OWNER TO postgres;

--
-- Name: board_activities_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.board_activities_id_seq OWNED BY public.board_activities.id;


--
-- Name: board_members; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.board_members (
    id bigint NOT NULL,
    board_id integer NOT NULL,
    member_id integer NOT NULL,
    admin boolean DEFAULT false NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.board_members OWNER TO postgres;

--
-- Name: board_members_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.board_members_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.board_members_id_seq OWNER TO postgres;

--
-- Name: board_members_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.board_members_id_seq OWNED BY public.board_members.id;


--
-- Name: boards; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.boards (
    id bigint NOT NULL,
    name character varying,
    description character varying,
    open boolean DEFAULT true NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.boards OWNER TO postgres;

--
-- Name: boards_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.boards_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.boards_id_seq OWNER TO postgres;

--
-- Name: boards_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.boards_id_seq OWNED BY public.boards.id;


--
-- Name: card_activities; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.card_activities (
    id bigint NOT NULL,
    member_id integer NOT NULL,
    card_id integer NOT NULL,
    description text NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.card_activities OWNER TO postgres;

--
-- Name: card_activities_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.card_activities_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.card_activities_id_seq OWNER TO postgres;

--
-- Name: card_activities_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.card_activities_id_seq OWNED BY public.card_activities.id;


--
-- Name: card_comments; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.card_comments (
    id bigint NOT NULL,
    card_id integer NOT NULL,
    commenter_id integer NOT NULL,
    content text,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.card_comments OWNER TO postgres;

--
-- Name: card_comments_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.card_comments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.card_comments_id_seq OWNER TO postgres;

--
-- Name: card_comments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.card_comments_id_seq OWNED BY public.card_comments.id;


--
-- Name: card_members; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.card_members (
    id bigint NOT NULL,
    card_id integer NOT NULL,
    member_id integer NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.card_members OWNER TO postgres;

--
-- Name: card_members_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.card_members_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.card_members_id_seq OWNER TO postgres;

--
-- Name: card_members_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.card_members_id_seq OWNED BY public.card_members.id;


--
-- Name: cards; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cards (
    id bigint NOT NULL,
    list_id integer NOT NULL,
    title character varying NOT NULL,
    description text,
    due_date timestamp without time zone,
    open boolean DEFAULT true NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    "position" integer,
    assignee_id integer
);


ALTER TABLE public.cards OWNER TO postgres;

--
-- Name: cards_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.cards_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cards_id_seq OWNER TO postgres;

--
-- Name: cards_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.cards_id_seq OWNED BY public.cards.id;


--
-- Name: lists; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.lists (
    id bigint NOT NULL,
    board_id integer NOT NULL,
    title character varying,
    open boolean DEFAULT true NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    "position" integer
);


ALTER TABLE public.lists OWNER TO postgres;

--
-- Name: lists_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.lists_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.lists_id_seq OWNER TO postgres;

--
-- Name: lists_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.lists_id_seq OWNED BY public.lists.id;


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
    password_digest character varying,
    session_key character varying,
    activation_key character varying,
    bio character varying,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    full_name character varying
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
-- Name: board_activities id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.board_activities ALTER COLUMN id SET DEFAULT nextval('public.board_activities_id_seq'::regclass);


--
-- Name: board_members id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.board_members ALTER COLUMN id SET DEFAULT nextval('public.board_members_id_seq'::regclass);


--
-- Name: boards id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.boards ALTER COLUMN id SET DEFAULT nextval('public.boards_id_seq'::regclass);


--
-- Name: card_activities id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.card_activities ALTER COLUMN id SET DEFAULT nextval('public.card_activities_id_seq'::regclass);


--
-- Name: card_comments id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.card_comments ALTER COLUMN id SET DEFAULT nextval('public.card_comments_id_seq'::regclass);


--
-- Name: card_members id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.card_members ALTER COLUMN id SET DEFAULT nextval('public.card_members_id_seq'::regclass);


--
-- Name: cards id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cards ALTER COLUMN id SET DEFAULT nextval('public.cards_id_seq'::regclass);


--
-- Name: lists id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lists ALTER COLUMN id SET DEFAULT nextval('public.lists_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
environment	development	2020-04-16 17:22:02.659868	2020-04-16 17:22:02.659868
schema_sha1	5ed08d2d4545f6f788a32b49f6becf7bff160c8a	2020-04-16 17:22:02.672919	2020-04-16 17:22:02.672919
\.


--
-- Data for Name: board_activities; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.board_activities (id, member_id, board_id, description, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: board_members; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.board_members (id, board_id, member_id, admin, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: boards; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.boards (id, name, description, open, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: card_activities; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.card_activities (id, member_id, card_id, description, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: card_comments; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.card_comments (id, card_id, commenter_id, content, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: card_members; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.card_members (id, card_id, member_id, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: cards; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cards (id, list_id, title, description, due_date, open, created_at, updated_at, "position", assignee_id) FROM stdin;
\.


--
-- Data for Name: lists; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.lists (id, board_id, title, open, created_at, updated_at, "position") FROM stdin;
\.


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.schema_migrations (version) FROM stdin;
20151022040249
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (id, email, password_digest, session_key, activation_key, bio, created_at, updated_at, full_name) FROM stdin;
\.


--
-- Name: board_activities_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.board_activities_id_seq', 1, false);


--
-- Name: board_members_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.board_members_id_seq', 1, false);


--
-- Name: boards_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.boards_id_seq', 1, false);


--
-- Name: card_activities_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.card_activities_id_seq', 1, false);


--
-- Name: card_comments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.card_comments_id_seq', 1, false);


--
-- Name: card_members_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.card_members_id_seq', 1, false);


--
-- Name: cards_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cards_id_seq', 1, false);


--
-- Name: lists_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.lists_id_seq', 1, false);


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
-- Name: board_activities board_activities_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.board_activities
    ADD CONSTRAINT board_activities_pkey PRIMARY KEY (id);


--
-- Name: board_members board_members_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.board_members
    ADD CONSTRAINT board_members_pkey PRIMARY KEY (id);


--
-- Name: boards boards_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.boards
    ADD CONSTRAINT boards_pkey PRIMARY KEY (id);


--
-- Name: card_activities card_activities_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.card_activities
    ADD CONSTRAINT card_activities_pkey PRIMARY KEY (id);


--
-- Name: card_comments card_comments_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.card_comments
    ADD CONSTRAINT card_comments_pkey PRIMARY KEY (id);


--
-- Name: card_members card_members_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.card_members
    ADD CONSTRAINT card_members_pkey PRIMARY KEY (id);


--
-- Name: cards cards_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cards
    ADD CONSTRAINT cards_pkey PRIMARY KEY (id);


--
-- Name: lists lists_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lists
    ADD CONSTRAINT lists_pkey PRIMARY KEY (id);


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
-- Name: index_board_activities_on_board_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_board_activities_on_board_id ON public.board_activities USING btree (board_id);


--
-- Name: index_board_members_on_board_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_board_members_on_board_id ON public.board_members USING btree (board_id);


--
-- Name: index_board_members_on_board_id_and_member_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX index_board_members_on_board_id_and_member_id ON public.board_members USING btree (board_id, member_id);


--
-- Name: index_boards_on_open; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_boards_on_open ON public.boards USING btree (open);


--
-- Name: index_card_activities_on_card_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_card_activities_on_card_id ON public.card_activities USING btree (card_id);


--
-- Name: index_card_comments_on_card_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_card_comments_on_card_id ON public.card_comments USING btree (card_id);


--
-- Name: index_card_members_on_card_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_card_members_on_card_id ON public.card_members USING btree (card_id);


--
-- Name: index_card_members_on_card_id_and_member_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX index_card_members_on_card_id_and_member_id ON public.card_members USING btree (card_id, member_id);


--
-- Name: index_cards_on_list_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_cards_on_list_id ON public.cards USING btree (list_id);


--
-- Name: index_lists_on_board_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_lists_on_board_id ON public.lists USING btree (board_id);


--
-- Name: index_users_on_session_key; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_users_on_session_key ON public.users USING btree (session_key);


--
-- PostgreSQL database dump complete
--

