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
-- Name: achievements; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.achievements (
    id bigint NOT NULL,
    user_id integer,
    badge_id integer,
    tag_id integer,
    activity_id integer,
    trigger_id integer,
    created_at timestamp without time zone
);


ALTER TABLE public.achievements OWNER TO postgres;

--
-- Name: achievements_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.achievements_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.achievements_id_seq OWNER TO postgres;

--
-- Name: achievements_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.achievements_id_seq OWNED BY public.achievements.id;


--
-- Name: activities; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.activities (
    id bigint NOT NULL,
    user_id integer,
    activityable_id integer,
    activityable_type character varying,
    name character varying,
    ip character varying,
    created_at timestamp without time zone,
    undo_at timestamp without time zone,
    extra text,
    undo smallint DEFAULT 0
);


ALTER TABLE public.activities OWNER TO postgres;

--
-- Name: activities_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.activities_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.activities_id_seq OWNER TO postgres;

--
-- Name: activities_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.activities_id_seq OWNED BY public.activities.id;


--
-- Name: activity_points; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.activity_points (
    id bigint NOT NULL,
    user_id integer,
    activity_id integer,
    value integer,
    created_at timestamp without time zone,
    undo smallint DEFAULT 0
);


ALTER TABLE public.activity_points OWNER TO postgres;

--
-- Name: activity_points_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.activity_points_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.activity_points_id_seq OWNER TO postgres;

--
-- Name: activity_points_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.activity_points_id_seq OWNED BY public.activity_points.id;


--
-- Name: ans; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ans (
    id bigint NOT NULL,
    thr_id integer,
    user_id integer,
    content text,
    hits integer DEFAULT 0,
    vote_up integer DEFAULT 0,
    vote_down integer DEFAULT 0,
    activity_at timestamp without time zone,
    status smallint DEFAULT 1,
    resolved smallint,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.ans OWNER TO postgres;

--
-- Name: ans_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.ans_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ans_id_seq OWNER TO postgres;

--
-- Name: ans_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.ans_id_seq OWNED BY public.ans.id;


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
-- Name: authentications; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.authentications (
    id bigint NOT NULL,
    user_id integer,
    provider character varying,
    uid character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.authentications OWNER TO postgres;

--
-- Name: authentications_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.authentications_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.authentications_id_seq OWNER TO postgres;

--
-- Name: authentications_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.authentications_id_seq OWNED BY public.authentications.id;


--
-- Name: badges; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.badges (
    id bigint NOT NULL,
    name character varying,
    achieved_count integer DEFAULT 0,
    badge_type integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.badges OWNER TO postgres;

--
-- Name: badges_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.badges_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.badges_id_seq OWNER TO postgres;

--
-- Name: badges_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.badges_id_seq OWNED BY public.badges.id;


--
-- Name: comments; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.comments (
    id bigint NOT NULL,
    user_id integer,
    commentable_id integer,
    commentable_type character varying,
    content text,
    hits integer,
    vote_up integer DEFAULT 0,
    vote_down integer DEFAULT 0,
    activity_at timestamp without time zone,
    status smallint DEFAULT 1,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.comments OWNER TO postgres;

--
-- Name: comments_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.comments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.comments_id_seq OWNER TO postgres;

--
-- Name: comments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.comments_id_seq OWNED BY public.comments.id;


--
-- Name: impressions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.impressions (
    id bigint NOT NULL,
    impressionable_id integer,
    impressionable_type character varying,
    user_id integer,
    ip character varying,
    created_at timestamp without time zone
);


ALTER TABLE public.impressions OWNER TO postgres;

--
-- Name: impressions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.impressions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.impressions_id_seq OWNER TO postgres;

--
-- Name: impressions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.impressions_id_seq OWNED BY public.impressions.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO postgres;

--
-- Name: sessions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sessions (
    id bigint NOT NULL,
    session_id character varying NOT NULL,
    data text,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.sessions OWNER TO postgres;

--
-- Name: sessions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.sessions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sessions_id_seq OWNER TO postgres;

--
-- Name: sessions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.sessions_id_seq OWNED BY public.sessions.id;


--
-- Name: simple_captcha_data; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.simple_captcha_data (
    id bigint NOT NULL,
    key character varying(40),
    value character varying(6),
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.simple_captcha_data OWNER TO postgres;

--
-- Name: simple_captcha_data_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.simple_captcha_data_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.simple_captcha_data_id_seq OWNER TO postgres;

--
-- Name: simple_captcha_data_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.simple_captcha_data_id_seq OWNED BY public.simple_captcha_data.id;


--
-- Name: subscriptions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.subscriptions (
    id bigint NOT NULL,
    user_id integer,
    subscribable_id integer,
    subscribable_type character varying,
    auto integer DEFAULT 1,
    last_view timestamp without time zone
);


ALTER TABLE public.subscriptions OWNER TO postgres;

--
-- Name: subscriptions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.subscriptions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.subscriptions_id_seq OWNER TO postgres;

--
-- Name: subscriptions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.subscriptions_id_seq OWNED BY public.subscriptions.id;


--
-- Name: tag_rels; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tag_rels (
    id bigint NOT NULL,
    tag_id integer,
    taggable_id integer,
    taggable_type character varying,
    created_at timestamp without time zone
);


ALTER TABLE public.tag_rels OWNER TO postgres;

--
-- Name: tag_rels_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tag_rels_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tag_rels_id_seq OWNER TO postgres;

--
-- Name: tag_rels_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tag_rels_id_seq OWNED BY public.tag_rels.id;


--
-- Name: tags; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tags (
    id bigint NOT NULL,
    user_id integer,
    slug character varying,
    name character varying,
    quantity integer DEFAULT 0,
    status smallint DEFAULT 1,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.tags OWNER TO postgres;

--
-- Name: tags_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tags_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tags_id_seq OWNER TO postgres;

--
-- Name: tags_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tags_id_seq OWNED BY public.tags.id;


--
-- Name: thrs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.thrs (
    id bigint NOT NULL,
    user_id integer,
    slug character varying,
    title character varying,
    content text,
    hits integer DEFAULT 0,
    vote_up integer DEFAULT 0,
    vote_down integer DEFAULT 0,
    last_activity_id integer,
    last_activity_user_id integer,
    activity_at timestamp without time zone,
    tagnames character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    status smallint DEFAULT 1,
    hotness integer DEFAULT 0
);


ALTER TABLE public.thrs OWNER TO postgres;

--
-- Name: thrs_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.thrs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.thrs_id_seq OWNER TO postgres;

--
-- Name: thrs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.thrs_id_seq OWNED BY public.thrs.id;


--
-- Name: user_settings; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.user_settings (
    id bigint NOT NULL,
    user_id integer,
    notify_enabled integer DEFAULT 0,
    notify_new_member_joins integer DEFAULT 0,
    notify_new_question integer DEFAULT 0,
    notify_new_question_with_my_tags integer DEFAULT 0,
    notify_answers integer DEFAULT 0,
    notify_answer_resolved integer DEFAULT 0,
    notify_comments integer DEFAULT 0
);


ALTER TABLE public.user_settings OWNER TO postgres;

--
-- Name: user_settings_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.user_settings_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_settings_id_seq OWNER TO postgres;

--
-- Name: user_settings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.user_settings_id_seq OWNED BY public.user_settings.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id bigint NOT NULL,
    name character varying,
    password character varying,
    password_salt character varying,
    email character varying,
    www character varying,
    about character varying,
    first_name character varying,
    last_name character varying,
    last_login timestamp without time zone,
    birth timestamp without time zone,
    timezone character varying,
    language character varying,
    remind_token character varying,
    activation_hash character varying,
    ranks character varying,
    reputation integer DEFAULT 0,
    status smallint DEFAULT 0,
    role smallint DEFAULT 0,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    apikey character varying,
    avatar_url character varying
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
-- Name: versions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.versions (
    id bigint NOT NULL,
    item_type character varying NOT NULL,
    item_id integer NOT NULL,
    event character varying NOT NULL,
    whodunnit character varying,
    summary character varying,
    user_id integer,
    object text,
    created_at timestamp without time zone
);


ALTER TABLE public.versions OWNER TO postgres;

--
-- Name: versions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.versions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.versions_id_seq OWNER TO postgres;

--
-- Name: versions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.versions_id_seq OWNED BY public.versions.id;


--
-- Name: achievements id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.achievements ALTER COLUMN id SET DEFAULT nextval('public.achievements_id_seq'::regclass);


--
-- Name: activities id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.activities ALTER COLUMN id SET DEFAULT nextval('public.activities_id_seq'::regclass);


--
-- Name: activity_points id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.activity_points ALTER COLUMN id SET DEFAULT nextval('public.activity_points_id_seq'::regclass);


--
-- Name: ans id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ans ALTER COLUMN id SET DEFAULT nextval('public.ans_id_seq'::regclass);


--
-- Name: authentications id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.authentications ALTER COLUMN id SET DEFAULT nextval('public.authentications_id_seq'::regclass);


--
-- Name: badges id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.badges ALTER COLUMN id SET DEFAULT nextval('public.badges_id_seq'::regclass);


--
-- Name: comments id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.comments ALTER COLUMN id SET DEFAULT nextval('public.comments_id_seq'::regclass);


--
-- Name: impressions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.impressions ALTER COLUMN id SET DEFAULT nextval('public.impressions_id_seq'::regclass);


--
-- Name: sessions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sessions ALTER COLUMN id SET DEFAULT nextval('public.sessions_id_seq'::regclass);


--
-- Name: simple_captcha_data id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.simple_captcha_data ALTER COLUMN id SET DEFAULT nextval('public.simple_captcha_data_id_seq'::regclass);


--
-- Name: subscriptions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.subscriptions ALTER COLUMN id SET DEFAULT nextval('public.subscriptions_id_seq'::regclass);


--
-- Name: tag_rels id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tag_rels ALTER COLUMN id SET DEFAULT nextval('public.tag_rels_id_seq'::regclass);


--
-- Name: tags id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tags ALTER COLUMN id SET DEFAULT nextval('public.tags_id_seq'::regclass);


--
-- Name: thrs id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.thrs ALTER COLUMN id SET DEFAULT nextval('public.thrs_id_seq'::regclass);


--
-- Name: user_settings id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_settings ALTER COLUMN id SET DEFAULT nextval('public.user_settings_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Name: versions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.versions ALTER COLUMN id SET DEFAULT nextval('public.versions_id_seq'::regclass);


--
-- Data for Name: achievements; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.achievements (id, user_id, badge_id, tag_id, activity_id, trigger_id, created_at) FROM stdin;
\.


--
-- Data for Name: activities; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.activities (id, user_id, activityable_id, activityable_type, name, ip, created_at, undo_at, extra, undo) FROM stdin;
\.


--
-- Data for Name: activity_points; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.activity_points (id, user_id, activity_id, value, created_at, undo) FROM stdin;
\.


--
-- Data for Name: ans; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ans (id, thr_id, user_id, content, hits, vote_up, vote_down, activity_at, status, resolved, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
environment	development	2020-04-16 17:37:52.746398	2020-04-16 17:37:52.746398
schema_sha1	024c63a36b814193fdcfd2d5433794a1c617b1a6	2020-04-16 17:37:52.757387	2020-04-16 17:37:52.757387
\.


--
-- Data for Name: authentications; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.authentications (id, user_id, provider, uid, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: badges; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.badges (id, name, achieved_count, badge_type, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: comments; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.comments (id, user_id, commentable_id, commentable_type, content, hits, vote_up, vote_down, activity_at, status, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: impressions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.impressions (id, impressionable_id, impressionable_type, user_id, ip, created_at) FROM stdin;
\.


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.schema_migrations (version) FROM stdin;
20140530201929
\.


--
-- Data for Name: sessions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.sessions (id, session_id, data, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: simple_captcha_data; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.simple_captcha_data (id, key, value, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: subscriptions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.subscriptions (id, user_id, subscribable_id, subscribable_type, auto, last_view) FROM stdin;
\.


--
-- Data for Name: tag_rels; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tag_rels (id, tag_id, taggable_id, taggable_type, created_at) FROM stdin;
\.


--
-- Data for Name: tags; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tags (id, user_id, slug, name, quantity, status, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: thrs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.thrs (id, user_id, slug, title, content, hits, vote_up, vote_down, last_activity_id, last_activity_user_id, activity_at, tagnames, created_at, updated_at, status, hotness) FROM stdin;
\.


--
-- Data for Name: user_settings; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.user_settings (id, user_id, notify_enabled, notify_new_member_joins, notify_new_question, notify_new_question_with_my_tags, notify_answers, notify_answer_resolved, notify_comments) FROM stdin;
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (id, name, password, password_salt, email, www, about, first_name, last_name, last_login, birth, timezone, language, remind_token, activation_hash, ranks, reputation, status, role, created_at, updated_at, apikey, avatar_url) FROM stdin;
\.


--
-- Data for Name: versions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.versions (id, item_type, item_id, event, whodunnit, summary, user_id, object, created_at) FROM stdin;
\.


--
-- Name: achievements_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.achievements_id_seq', 1, false);


--
-- Name: activities_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.activities_id_seq', 1, false);


--
-- Name: activity_points_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.activity_points_id_seq', 1, false);


--
-- Name: ans_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ans_id_seq', 1, false);


--
-- Name: authentications_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.authentications_id_seq', 1, false);


--
-- Name: badges_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.badges_id_seq', 1, false);


--
-- Name: comments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.comments_id_seq', 1, false);


--
-- Name: impressions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.impressions_id_seq', 1, false);


--
-- Name: sessions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.sessions_id_seq', 1, false);


--
-- Name: simple_captcha_data_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.simple_captcha_data_id_seq', 1, false);


--
-- Name: subscriptions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.subscriptions_id_seq', 1, false);


--
-- Name: tag_rels_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tag_rels_id_seq', 1, false);


--
-- Name: tags_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tags_id_seq', 1, false);


--
-- Name: thrs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.thrs_id_seq', 1, false);


--
-- Name: user_settings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.user_settings_id_seq', 1, false);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_id_seq', 1, false);


--
-- Name: versions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.versions_id_seq', 1, false);


--
-- Name: achievements achievements_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.achievements
    ADD CONSTRAINT achievements_pkey PRIMARY KEY (id);


--
-- Name: activities activities_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.activities
    ADD CONSTRAINT activities_pkey PRIMARY KEY (id);


--
-- Name: activity_points activity_points_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.activity_points
    ADD CONSTRAINT activity_points_pkey PRIMARY KEY (id);


--
-- Name: ans ans_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ans
    ADD CONSTRAINT ans_pkey PRIMARY KEY (id);


--
-- Name: ar_internal_metadata ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- Name: authentications authentications_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.authentications
    ADD CONSTRAINT authentications_pkey PRIMARY KEY (id);


--
-- Name: badges badges_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.badges
    ADD CONSTRAINT badges_pkey PRIMARY KEY (id);


--
-- Name: comments comments_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.comments
    ADD CONSTRAINT comments_pkey PRIMARY KEY (id);


--
-- Name: impressions impressions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.impressions
    ADD CONSTRAINT impressions_pkey PRIMARY KEY (id);


--
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- Name: sessions sessions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sessions
    ADD CONSTRAINT sessions_pkey PRIMARY KEY (id);


--
-- Name: simple_captcha_data simple_captcha_data_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.simple_captcha_data
    ADD CONSTRAINT simple_captcha_data_pkey PRIMARY KEY (id);


--
-- Name: subscriptions subscriptions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.subscriptions
    ADD CONSTRAINT subscriptions_pkey PRIMARY KEY (id);


--
-- Name: tag_rels tag_rels_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tag_rels
    ADD CONSTRAINT tag_rels_pkey PRIMARY KEY (id);


--
-- Name: tags tags_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tags
    ADD CONSTRAINT tags_pkey PRIMARY KEY (id);


--
-- Name: thrs thrs_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.thrs
    ADD CONSTRAINT thrs_pkey PRIMARY KEY (id);


--
-- Name: user_settings user_settings_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_settings
    ADD CONSTRAINT user_settings_pkey PRIMARY KEY (id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: versions versions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.versions
    ADD CONSTRAINT versions_pkey PRIMARY KEY (id);


--
-- Name: idx_key; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_key ON public.simple_captcha_data USING btree (key);


--
-- Name: index_achievements_on_activity_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_achievements_on_activity_id ON public.achievements USING btree (activity_id);


--
-- Name: index_achievements_on_badge_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_achievements_on_badge_id ON public.achievements USING btree (badge_id);


--
-- Name: index_achievements_on_tag_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_achievements_on_tag_id ON public.achievements USING btree (tag_id);


--
-- Name: index_achievements_on_trigger_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_achievements_on_trigger_id ON public.achievements USING btree (trigger_id);


--
-- Name: index_achievements_on_user_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_achievements_on_user_id ON public.achievements USING btree (user_id);


--
-- Name: index_activities_on_activityable_type_and_activityable_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_activities_on_activityable_type_and_activityable_id ON public.activities USING btree (activityable_type, activityable_id);


--
-- Name: index_activities_on_created_at; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_activities_on_created_at ON public.activities USING btree (created_at);


--
-- Name: index_activities_on_name; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_activities_on_name ON public.activities USING btree (name);


--
-- Name: index_activities_on_user_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_activities_on_user_id ON public.activities USING btree (user_id);


--
-- Name: index_activity_points_on_activity_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_activity_points_on_activity_id ON public.activity_points USING btree (activity_id);


--
-- Name: index_activity_points_on_user_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_activity_points_on_user_id ON public.activity_points USING btree (user_id);


--
-- Name: index_ans_on_thr_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ans_on_thr_id ON public.ans USING btree (thr_id);


--
-- Name: index_ans_on_user_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ans_on_user_id ON public.ans USING btree (user_id);


--
-- Name: index_comments_on_activity_at; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_comments_on_activity_at ON public.comments USING btree (activity_at);


--
-- Name: index_comments_on_commentable_type_and_commentable_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_comments_on_commentable_type_and_commentable_id ON public.comments USING btree (commentable_type, commentable_id);


--
-- Name: index_comments_on_user_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_comments_on_user_id ON public.comments USING btree (user_id);


--
-- Name: index_impressions_on_impressionable_type_and_impressionable_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_impressions_on_impressionable_type_and_impressionable_id ON public.impressions USING btree (impressionable_type, impressionable_id);


--
-- Name: index_impressions_on_ip; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_impressions_on_ip ON public.impressions USING btree (ip);


--
-- Name: index_impressions_on_user_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_impressions_on_user_id ON public.impressions USING btree (user_id);


--
-- Name: index_sessions_on_session_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_sessions_on_session_id ON public.sessions USING btree (session_id);


--
-- Name: index_sessions_on_updated_at; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_sessions_on_updated_at ON public.sessions USING btree (updated_at);


--
-- Name: index_subscriptions_on_subscribable_type_and_subscribable_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_subscriptions_on_subscribable_type_and_subscribable_id ON public.subscriptions USING btree (subscribable_type, subscribable_id);


--
-- Name: index_subscriptions_on_user_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_subscriptions_on_user_id ON public.subscriptions USING btree (user_id);


--
-- Name: index_tag_rels_on_tag_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_tag_rels_on_tag_id ON public.tag_rels USING btree (tag_id);


--
-- Name: index_tag_rels_on_taggable_type_and_taggable_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_tag_rels_on_taggable_type_and_taggable_id ON public.tag_rels USING btree (taggable_type, taggable_id);


--
-- Name: index_tags_on_created_at; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_tags_on_created_at ON public.tags USING btree (created_at);


--
-- Name: index_tags_on_user_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_tags_on_user_id ON public.tags USING btree (user_id);


--
-- Name: index_thrs_on_activity_at; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_thrs_on_activity_at ON public.thrs USING btree (activity_at);


--
-- Name: index_thrs_on_created_at; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_thrs_on_created_at ON public.thrs USING btree (created_at);


--
-- Name: index_thrs_on_slug; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_thrs_on_slug ON public.thrs USING btree (slug);


--
-- Name: index_thrs_on_user_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_thrs_on_user_id ON public.thrs USING btree (user_id);


--
-- Name: index_user_settings_on_user_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_user_settings_on_user_id ON public.user_settings USING btree (user_id);


--
-- Name: index_users_on_avatar_url; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_users_on_avatar_url ON public.users USING btree (avatar_url);


--
-- Name: index_users_on_created_at; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_users_on_created_at ON public.users USING btree (created_at);


--
-- Name: index_versions_on_item_type_and_item_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_versions_on_item_type_and_item_id ON public.versions USING btree (item_type, item_id);


--
-- Name: index_versions_on_user_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_versions_on_user_id ON public.versions USING btree (user_id);


--
-- PostgreSQL database dump complete
--

