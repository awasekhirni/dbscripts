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
-- Name: agents; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.agents (
    id bigint NOT NULL,
    agent_name character varying,
    mobile_no character varying,
    email_address character varying,
    linked_in character varying,
    facebook character varying,
    twitter character varying,
    instagram character varying,
    "position" character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    avatar_file_name character varying,
    avatar_content_type character varying,
    avatar_file_size integer,
    avatar_updated_at timestamp without time zone
);


ALTER TABLE public.agents OWNER TO postgres;

--
-- Name: agents_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.agents_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.agents_id_seq OWNER TO postgres;

--
-- Name: agents_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.agents_id_seq OWNED BY public.agents.id;


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
-- Name: articles; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.articles (
    id bigint NOT NULL,
    title character varying,
    permalink character varying,
    teaser character varying,
    body text,
    featured boolean,
    created_by integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    published_date date,
    published_at character varying,
    article_photo_caption character varying,
    article_photo_file_name character varying,
    article_photo_content_type character varying,
    article_photo_file_size integer,
    article_photo_updated_at timestamp without time zone
);


ALTER TABLE public.articles OWNER TO postgres;

--
-- Name: articles_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.articles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.articles_id_seq OWNER TO postgres;

--
-- Name: articles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.articles_id_seq OWNED BY public.articles.id;


--
-- Name: developers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.developers (
    id bigint NOT NULL,
    developer character varying,
    permalink character varying,
    description text,
    hidden boolean DEFAULT false,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    image_file_name character varying,
    image_content_type character varying,
    image_file_size integer,
    image_updated_at timestamp without time zone
);


ALTER TABLE public.developers OWNER TO postgres;

--
-- Name: developers_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.developers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.developers_id_seq OWNER TO postgres;

--
-- Name: developers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.developers_id_seq OWNED BY public.developers.id;


--
-- Name: feedbacks; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.feedbacks (
    id bigint NOT NULL,
    name character varying,
    email character varying,
    phone character varying,
    message text,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    property_id integer
);


ALTER TABLE public.feedbacks OWNER TO postgres;

--
-- Name: feedbacks_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.feedbacks_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.feedbacks_id_seq OWNER TO postgres;

--
-- Name: feedbacks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.feedbacks_id_seq OWNED BY public.feedbacks.id;


--
-- Name: locations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.locations (
    id bigint NOT NULL,
    area character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.locations OWNER TO postgres;

--
-- Name: locations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.locations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.locations_id_seq OWNER TO postgres;

--
-- Name: locations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.locations_id_seq OWNED BY public.locations.id;


--
-- Name: newsletter_subscriptions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.newsletter_subscriptions (
    id bigint NOT NULL,
    email character varying,
    name character varying,
    active boolean DEFAULT true,
    message text,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.newsletter_subscriptions OWNER TO postgres;

--
-- Name: newsletter_subscriptions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.newsletter_subscriptions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.newsletter_subscriptions_id_seq OWNER TO postgres;

--
-- Name: newsletter_subscriptions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.newsletter_subscriptions_id_seq OWNED BY public.newsletter_subscriptions.id;


--
-- Name: preowned_properties; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.preowned_properties (
    id bigint NOT NULL,
    name character varying,
    permalink character varying,
    address character varying,
    location character varying,
    project_name character varying,
    developer_id integer,
    view character varying,
    orientation character varying,
    unit_type character varying,
    unit_size character varying,
    bedrooms integer,
    bathrooms integer,
    parking_slot integer,
    furnished boolean,
    monthly_dues double precision,
    price double precision,
    latitude double precision,
    longitude double precision,
    elevators boolean,
    swimming_pool boolean,
    fitness_gym boolean,
    parking boolean,
    function_room boolean,
    retail_area boolean,
    childrens_play_area boolean,
    garden boolean,
    shooting_court boolean,
    laundry_room boolean,
    mail_room boolean,
    security boolean,
    lobby boolean,
    property_management_services boolean,
    clubhouse boolean,
    back_up_power boolean,
    status character varying,
    hidden boolean,
    photo_file_name character varying,
    photo_content_type character varying,
    photo_file_size integer,
    photo_updated_at timestamp without time zone,
    logo_file_name character varying,
    logo_content_type character varying,
    logo_file_size integer,
    logo_updated_at timestamp without time zone,
    location_map_file_name character varying,
    location_map_content_type character varying,
    location_map_file_size integer,
    location_map_updated_at timestamp without time zone,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    rent_or_sale character varying
);


ALTER TABLE public.preowned_properties OWNER TO postgres;

--
-- Name: preowned_properties_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.preowned_properties_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.preowned_properties_id_seq OWNER TO postgres;

--
-- Name: preowned_properties_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.preowned_properties_id_seq OWNED BY public.preowned_properties.id;


--
-- Name: price_ranges; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.price_ranges (
    id bigint NOT NULL,
    range character varying,
    value_from integer,
    value_to integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.price_ranges OWNER TO postgres;

--
-- Name: price_ranges_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.price_ranges_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.price_ranges_id_seq OWNER TO postgres;

--
-- Name: price_ranges_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.price_ranges_id_seq OWNED BY public.price_ranges.id;


--
-- Name: properties; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.properties (
    id bigint NOT NULL,
    developer_id integer DEFAULT 0,
    name character varying,
    permalink character varying,
    address text,
    location character varying,
    status character varying,
    completed boolean DEFAULT false,
    target_completion_date character varying,
    description text,
    unit_types text,
    studio boolean,
    one_bedroom boolean,
    two_bedroom boolean,
    three_bedroom boolean,
    penthouse boolean,
    loft boolean,
    unit_sizes text,
    studio_size character varying,
    one_bedroom_size character varying,
    two_bedroom_size character varying,
    three_bedroom_size character varying,
    penthouse_size character varying,
    loft_size character varying,
    price_range text,
    price_from double precision DEFAULT 0.0,
    price_to double precision DEFAULT 0.0,
    studio_price double precision DEFAULT 0.0,
    one_bedroom_price double precision DEFAULT 0.0,
    two_bedroom_price double precision DEFAULT 0.0,
    three_bedroom_price double precision DEFAULT 0.0,
    penthouse_price double precision DEFAULT 0.0,
    loft_price double precision DEFAULT 0.0,
    studio_monthly double precision DEFAULT 0.0,
    one_bedroom_monthly double precision DEFAULT 0.0,
    two_bedroom_monthly double precision DEFAULT 0.0,
    three_bedroom_monthly double precision DEFAULT 0.0,
    penthouse_monthly double precision DEFAULT 0.0,
    loft_monthly double precision DEFAULT 0.0,
    studio_layout_caption character varying,
    one_bedroom_layout_caption character varying,
    two_bedroom_layout_caption character varying,
    three_bedroom_layout_caption character varying,
    penthouse_layout_caption character varying,
    loft_layout_caption character varying,
    amenities text,
    features text,
    unit_specifications text,
    payment_terms text,
    as_low_as character varying,
    as_low_as_label character varying,
    reservation_fee character varying,
    property_type character varying,
    featured boolean DEFAULT false,
    hidden boolean DEFAULT false,
    latitude double precision,
    longitude double precision,
    sold_out boolean DEFAULT false,
    preselling boolean DEFAULT false,
    no_of_floors character varying,
    no_of_bldgs character varying,
    no_of_units character varying DEFAULT '0'::character varying,
    starting_price double precision,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    elevators boolean,
    swimming_pool boolean,
    fitness_gym boolean,
    parking boolean,
    function_room boolean,
    retail_area boolean,
    childrens_play_area boolean,
    garden boolean,
    shooting_court boolean,
    laundry_room boolean,
    mail_room boolean,
    security boolean,
    lobby boolean,
    property_management_services boolean,
    clubhouse boolean,
    back_up_power boolean,
    photo_file_name character varying,
    photo_content_type character varying,
    photo_file_size integer,
    photo_updated_at timestamp without time zone,
    logo_file_name character varying,
    logo_content_type character varying,
    logo_file_size integer,
    logo_updated_at timestamp without time zone,
    location_map_file_name character varying,
    location_map_content_type character varying,
    location_map_file_size integer,
    location_map_updated_at timestamp without time zone,
    studio_layout_file_name character varying,
    studio_layout_content_type character varying,
    studio_layout_file_size integer,
    studio_layout_updated_at timestamp without time zone,
    one_bedroom_layout_file_name character varying,
    one_bedroom_layout_content_type character varying,
    one_bedroom_layout_file_size integer,
    one_bedroom_layout_updated_at timestamp without time zone,
    two_bedroom_layout_file_name character varying,
    two_bedroom_layout_content_type character varying,
    two_bedroom_layout_file_size integer,
    two_bedroom_layout_updated_at timestamp without time zone,
    three_bedroom_layout_file_name character varying,
    three_bedroom_layout_content_type character varying,
    three_bedroom_layout_file_size integer,
    three_bedroom_layout_updated_at timestamp without time zone,
    penthouse_layout_file_name character varying,
    penthouse_layout_content_type character varying,
    penthouse_layout_file_size integer,
    penthouse_layout_updated_at timestamp without time zone,
    loft_layout_file_name character varying,
    loft_layout_content_type character varying,
    loft_layout_file_size integer,
    loft_layout_updated_at timestamp without time zone
);


ALTER TABLE public.properties OWNER TO postgres;

--
-- Name: properties_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.properties_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.properties_id_seq OWNER TO postgres;

--
-- Name: properties_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.properties_id_seq OWNED BY public.properties.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO postgres;

--
-- Name: settings; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.settings (
    id bigint NOT NULL,
    agency_name character varying,
    agent_name character varying,
    production_email character varying,
    sales_email character varying,
    mobile_no character varying,
    office_no character varying,
    office_address character varying,
    facebook character varying,
    twitter character varying,
    instagram character varying,
    about_us text,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    photo_file_name character varying,
    photo_content_type character varying,
    photo_file_size integer,
    photo_updated_at timestamp without time zone,
    featured1_file_name character varying,
    featured1_content_type character varying,
    featured1_file_size integer,
    featured1_updated_at timestamp without time zone,
    featured2_file_name character varying,
    featured2_content_type character varying,
    featured2_file_size integer,
    featured2_updated_at timestamp without time zone,
    featured3_file_name character varying,
    featured3_content_type character varying,
    featured3_file_size integer,
    featured3_updated_at timestamp without time zone,
    featured4_file_name character varying,
    featured4_content_type character varying,
    featured4_file_size integer,
    featured4_updated_at timestamp without time zone,
    featured5_file_name character varying,
    featured5_content_type character varying,
    featured5_file_size integer,
    featured5_updated_at timestamp without time zone,
    featured1_caption character varying,
    featured2_caption character varying,
    featured3_caption character varying,
    featured4_caption character varying,
    featured5_caption character varying,
    featured1_link_text character varying,
    featured2_link_text character varying,
    featured3_link_text character varying,
    featured4_link_text character varying,
    featured5_link_text character varying,
    featured1_link_url character varying,
    featured2_link_url character varying,
    featured3_link_url character varying,
    featured4_link_url character varying,
    featured5_link_url character varying,
    management_text text,
    topic1 text,
    topic2 text,
    topic3 text,
    topic4 text,
    topic5 text,
    answer1 text,
    answer2 text,
    answer3 text,
    answer4 text,
    answer5 text,
    show_topic1 boolean DEFAULT true,
    show_topic2 boolean DEFAULT true,
    show_topic3 boolean DEFAULT true,
    show_topic4 boolean DEFAULT true,
    show_topic5 boolean DEFAULT true
);


ALTER TABLE public.settings OWNER TO postgres;

--
-- Name: settings_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.settings_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.settings_id_seq OWNER TO postgres;

--
-- Name: settings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.settings_id_seq OWNED BY public.settings.id;


--
-- Name: subscribers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.subscribers (
    id bigint NOT NULL,
    email character varying,
    name character varying,
    subscribed_at timestamp without time zone,
    unsubscribe_token character varying
);


ALTER TABLE public.subscribers OWNER TO postgres;

--
-- Name: subscribers_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.subscribers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.subscribers_id_seq OWNER TO postgres;

--
-- Name: subscribers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.subscribers_id_seq OWNED BY public.subscribers.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id bigint NOT NULL,
    email character varying DEFAULT ''::character varying NOT NULL,
    encrypted_password character varying DEFAULT ''::character varying NOT NULL,
    reset_password_token character varying,
    reset_password_sent_at timestamp without time zone,
    remember_created_at timestamp without time zone,
    sign_in_count integer DEFAULT 0 NOT NULL,
    current_sign_in_at timestamp without time zone,
    last_sign_in_at timestamp without time zone,
    current_sign_in_ip character varying,
    last_sign_in_ip character varying,
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
-- Name: agents id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.agents ALTER COLUMN id SET DEFAULT nextval('public.agents_id_seq'::regclass);


--
-- Name: articles id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.articles ALTER COLUMN id SET DEFAULT nextval('public.articles_id_seq'::regclass);


--
-- Name: developers id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.developers ALTER COLUMN id SET DEFAULT nextval('public.developers_id_seq'::regclass);


--
-- Name: feedbacks id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.feedbacks ALTER COLUMN id SET DEFAULT nextval('public.feedbacks_id_seq'::regclass);


--
-- Name: locations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.locations ALTER COLUMN id SET DEFAULT nextval('public.locations_id_seq'::regclass);


--
-- Name: newsletter_subscriptions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.newsletter_subscriptions ALTER COLUMN id SET DEFAULT nextval('public.newsletter_subscriptions_id_seq'::regclass);


--
-- Name: preowned_properties id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.preowned_properties ALTER COLUMN id SET DEFAULT nextval('public.preowned_properties_id_seq'::regclass);


--
-- Name: price_ranges id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.price_ranges ALTER COLUMN id SET DEFAULT nextval('public.price_ranges_id_seq'::regclass);


--
-- Name: properties id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.properties ALTER COLUMN id SET DEFAULT nextval('public.properties_id_seq'::regclass);


--
-- Name: settings id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.settings ALTER COLUMN id SET DEFAULT nextval('public.settings_id_seq'::regclass);


--
-- Name: subscribers id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.subscribers ALTER COLUMN id SET DEFAULT nextval('public.subscribers_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: agents; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.agents (id, agent_name, mobile_no, email_address, linked_in, facebook, twitter, instagram, "position", created_at, updated_at, avatar_file_name, avatar_content_type, avatar_file_size, avatar_updated_at) FROM stdin;
\.


--
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
environment	development	2020-04-16 18:15:27.663586	2020-04-16 18:15:27.663586
schema_sha1	51be48a74eb46f55161ea3b9a2de836181209486	2020-04-16 18:15:27.675024	2020-04-16 18:15:27.675024
\.


--
-- Data for Name: articles; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.articles (id, title, permalink, teaser, body, featured, created_by, created_at, updated_at, published_date, published_at, article_photo_caption, article_photo_file_name, article_photo_content_type, article_photo_file_size, article_photo_updated_at) FROM stdin;
\.


--
-- Data for Name: developers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.developers (id, developer, permalink, description, hidden, created_at, updated_at, image_file_name, image_content_type, image_file_size, image_updated_at) FROM stdin;
\.


--
-- Data for Name: feedbacks; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.feedbacks (id, name, email, phone, message, created_at, updated_at, property_id) FROM stdin;
\.


--
-- Data for Name: locations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.locations (id, area, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: newsletter_subscriptions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.newsletter_subscriptions (id, email, name, active, message, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: preowned_properties; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.preowned_properties (id, name, permalink, address, location, project_name, developer_id, view, orientation, unit_type, unit_size, bedrooms, bathrooms, parking_slot, furnished, monthly_dues, price, latitude, longitude, elevators, swimming_pool, fitness_gym, parking, function_room, retail_area, childrens_play_area, garden, shooting_court, laundry_room, mail_room, security, lobby, property_management_services, clubhouse, back_up_power, status, hidden, photo_file_name, photo_content_type, photo_file_size, photo_updated_at, logo_file_name, logo_content_type, logo_file_size, logo_updated_at, location_map_file_name, location_map_content_type, location_map_file_size, location_map_updated_at, created_at, updated_at, rent_or_sale) FROM stdin;
\.


--
-- Data for Name: price_ranges; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.price_ranges (id, range, value_from, value_to, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: properties; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.properties (id, developer_id, name, permalink, address, location, status, completed, target_completion_date, description, unit_types, studio, one_bedroom, two_bedroom, three_bedroom, penthouse, loft, unit_sizes, studio_size, one_bedroom_size, two_bedroom_size, three_bedroom_size, penthouse_size, loft_size, price_range, price_from, price_to, studio_price, one_bedroom_price, two_bedroom_price, three_bedroom_price, penthouse_price, loft_price, studio_monthly, one_bedroom_monthly, two_bedroom_monthly, three_bedroom_monthly, penthouse_monthly, loft_monthly, studio_layout_caption, one_bedroom_layout_caption, two_bedroom_layout_caption, three_bedroom_layout_caption, penthouse_layout_caption, loft_layout_caption, amenities, features, unit_specifications, payment_terms, as_low_as, as_low_as_label, reservation_fee, property_type, featured, hidden, latitude, longitude, sold_out, preselling, no_of_floors, no_of_bldgs, no_of_units, starting_price, created_at, updated_at, elevators, swimming_pool, fitness_gym, parking, function_room, retail_area, childrens_play_area, garden, shooting_court, laundry_room, mail_room, security, lobby, property_management_services, clubhouse, back_up_power, photo_file_name, photo_content_type, photo_file_size, photo_updated_at, logo_file_name, logo_content_type, logo_file_size, logo_updated_at, location_map_file_name, location_map_content_type, location_map_file_size, location_map_updated_at, studio_layout_file_name, studio_layout_content_type, studio_layout_file_size, studio_layout_updated_at, one_bedroom_layout_file_name, one_bedroom_layout_content_type, one_bedroom_layout_file_size, one_bedroom_layout_updated_at, two_bedroom_layout_file_name, two_bedroom_layout_content_type, two_bedroom_layout_file_size, two_bedroom_layout_updated_at, three_bedroom_layout_file_name, three_bedroom_layout_content_type, three_bedroom_layout_file_size, three_bedroom_layout_updated_at, penthouse_layout_file_name, penthouse_layout_content_type, penthouse_layout_file_size, penthouse_layout_updated_at, loft_layout_file_name, loft_layout_content_type, loft_layout_file_size, loft_layout_updated_at) FROM stdin;
\.


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.schema_migrations (version) FROM stdin;
20180920030915
\.


--
-- Data for Name: settings; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.settings (id, agency_name, agent_name, production_email, sales_email, mobile_no, office_no, office_address, facebook, twitter, instagram, about_us, created_at, updated_at, photo_file_name, photo_content_type, photo_file_size, photo_updated_at, featured1_file_name, featured1_content_type, featured1_file_size, featured1_updated_at, featured2_file_name, featured2_content_type, featured2_file_size, featured2_updated_at, featured3_file_name, featured3_content_type, featured3_file_size, featured3_updated_at, featured4_file_name, featured4_content_type, featured4_file_size, featured4_updated_at, featured5_file_name, featured5_content_type, featured5_file_size, featured5_updated_at, featured1_caption, featured2_caption, featured3_caption, featured4_caption, featured5_caption, featured1_link_text, featured2_link_text, featured3_link_text, featured4_link_text, featured5_link_text, featured1_link_url, featured2_link_url, featured3_link_url, featured4_link_url, featured5_link_url, management_text, topic1, topic2, topic3, topic4, topic5, answer1, answer2, answer3, answer4, answer5, show_topic1, show_topic2, show_topic3, show_topic4, show_topic5) FROM stdin;
\.


--
-- Data for Name: subscribers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.subscribers (id, email, name, subscribed_at, unsubscribe_token) FROM stdin;
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (id, email, encrypted_password, reset_password_token, reset_password_sent_at, remember_created_at, sign_in_count, current_sign_in_at, last_sign_in_at, current_sign_in_ip, last_sign_in_ip, created_at, updated_at) FROM stdin;
\.


--
-- Name: agents_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.agents_id_seq', 1, false);


--
-- Name: articles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.articles_id_seq', 1, false);


--
-- Name: developers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.developers_id_seq', 1, false);


--
-- Name: feedbacks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.feedbacks_id_seq', 1, false);


--
-- Name: locations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.locations_id_seq', 1, false);


--
-- Name: newsletter_subscriptions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.newsletter_subscriptions_id_seq', 1, false);


--
-- Name: preowned_properties_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.preowned_properties_id_seq', 1, false);


--
-- Name: price_ranges_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.price_ranges_id_seq', 1, false);


--
-- Name: properties_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.properties_id_seq', 1, false);


--
-- Name: settings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.settings_id_seq', 1, false);


--
-- Name: subscribers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.subscribers_id_seq', 1, false);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_id_seq', 1, false);


--
-- Name: agents agents_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.agents
    ADD CONSTRAINT agents_pkey PRIMARY KEY (id);


--
-- Name: ar_internal_metadata ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- Name: articles articles_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.articles
    ADD CONSTRAINT articles_pkey PRIMARY KEY (id);


--
-- Name: developers developers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.developers
    ADD CONSTRAINT developers_pkey PRIMARY KEY (id);


--
-- Name: feedbacks feedbacks_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.feedbacks
    ADD CONSTRAINT feedbacks_pkey PRIMARY KEY (id);


--
-- Name: locations locations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.locations
    ADD CONSTRAINT locations_pkey PRIMARY KEY (id);


--
-- Name: newsletter_subscriptions newsletter_subscriptions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.newsletter_subscriptions
    ADD CONSTRAINT newsletter_subscriptions_pkey PRIMARY KEY (id);


--
-- Name: preowned_properties preowned_properties_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.preowned_properties
    ADD CONSTRAINT preowned_properties_pkey PRIMARY KEY (id);


--
-- Name: price_ranges price_ranges_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.price_ranges
    ADD CONSTRAINT price_ranges_pkey PRIMARY KEY (id);


--
-- Name: properties properties_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_pkey PRIMARY KEY (id);


--
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- Name: settings settings_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.settings
    ADD CONSTRAINT settings_pkey PRIMARY KEY (id);


--
-- Name: subscribers subscribers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.subscribers
    ADD CONSTRAINT subscribers_pkey PRIMARY KEY (id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: index_preowned_properties_on_developer_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_preowned_properties_on_developer_id ON public.preowned_properties USING btree (developer_id);


--
-- Name: index_subscribers_on_email; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_subscribers_on_email ON public.subscribers USING btree (email);


--
-- Name: index_subscribers_on_unsubscribe_token; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_subscribers_on_unsubscribe_token ON public.subscribers USING btree (unsubscribe_token);


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

