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
-- Name: auth_tokens; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_tokens (
    id bigint NOT NULL,
    token character varying,
    person_id character varying,
    expires_at timestamp without time zone,
    last_use_attempt timestamp without time zone,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.auth_tokens OWNER TO postgres;

--
-- Name: auth_tokens_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_tokens_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_tokens_id_seq OWNER TO postgres;

--
-- Name: auth_tokens_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_tokens_id_seq OWNED BY public.auth_tokens.id;


--
-- Name: billing_agreements; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.billing_agreements (
    id bigint NOT NULL,
    paypal_account_id integer NOT NULL,
    billing_agreement_id character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    paypal_username_to character varying NOT NULL,
    request_token character varying NOT NULL
);


ALTER TABLE public.billing_agreements OWNER TO postgres;

--
-- Name: billing_agreements_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.billing_agreements_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.billing_agreements_id_seq OWNER TO postgres;

--
-- Name: billing_agreements_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.billing_agreements_id_seq OWNED BY public.billing_agreements.id;


--
-- Name: bookings; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.bookings (
    id bigint NOT NULL,
    transaction_id integer,
    start_on date,
    end_on date,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.bookings OWNER TO postgres;

--
-- Name: bookings_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.bookings_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.bookings_id_seq OWNER TO postgres;

--
-- Name: bookings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.bookings_id_seq OWNED BY public.bookings.id;


--
-- Name: braintree_accounts; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.braintree_accounts (
    id bigint NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    first_name character varying,
    last_name character varying,
    person_id character varying,
    email character varying,
    phone character varying,
    address_street_address character varying,
    address_postal_code character varying,
    address_locality character varying,
    address_region character varying,
    date_of_birth date,
    routing_number character varying,
    hidden_account_number character varying,
    status character varying,
    community_id integer
);


ALTER TABLE public.braintree_accounts OWNER TO postgres;

--
-- Name: braintree_accounts_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.braintree_accounts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.braintree_accounts_id_seq OWNER TO postgres;

--
-- Name: braintree_accounts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.braintree_accounts_id_seq OWNED BY public.braintree_accounts.id;


--
-- Name: categories; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.categories (
    id bigint NOT NULL,
    parent_id integer,
    icon character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    community_id integer,
    sort_priority integer,
    url character varying
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
-- Name: category_custom_fields; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.category_custom_fields (
    id bigint NOT NULL,
    category_id integer,
    custom_field_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.category_custom_fields OWNER TO postgres;

--
-- Name: category_custom_fields_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.category_custom_fields_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.category_custom_fields_id_seq OWNER TO postgres;

--
-- Name: category_custom_fields_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.category_custom_fields_id_seq OWNED BY public.category_custom_fields.id;


--
-- Name: category_transaction_types; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.category_transaction_types (
    id bigint NOT NULL,
    category_id integer,
    transaction_type_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.category_transaction_types OWNER TO postgres;

--
-- Name: category_transaction_types_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.category_transaction_types_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.category_transaction_types_id_seq OWNER TO postgres;

--
-- Name: category_transaction_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.category_transaction_types_id_seq OWNED BY public.category_transaction_types.id;


--
-- Name: category_translations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.category_translations (
    id bigint NOT NULL,
    category_id integer,
    locale character varying,
    name character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    description character varying
);


ALTER TABLE public.category_translations OWNER TO postgres;

--
-- Name: category_translations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.category_translations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.category_translations_id_seq OWNER TO postgres;

--
-- Name: category_translations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.category_translations_id_seq OWNED BY public.category_translations.id;


--
-- Name: checkout_accounts; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.checkout_accounts (
    id bigint NOT NULL,
    company_id_or_personal_id character varying,
    merchant_id character varying NOT NULL,
    merchant_key character varying NOT NULL,
    person_id character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.checkout_accounts OWNER TO postgres;

--
-- Name: checkout_accounts_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.checkout_accounts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.checkout_accounts_id_seq OWNER TO postgres;

--
-- Name: checkout_accounts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.checkout_accounts_id_seq OWNED BY public.checkout_accounts.id;


--
-- Name: comments; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.comments (
    id bigint NOT NULL,
    author_id character varying,
    listing_id integer,
    content text,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    community_id integer
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
-- Name: communities; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.communities (
    id bigint NOT NULL,
    name character varying,
    domain character varying,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    settings text,
    consent character varying,
    transaction_agreement_in_use boolean DEFAULT false,
    email_admins_about_new_members boolean DEFAULT false,
    use_fb_like boolean DEFAULT false,
    real_name_required boolean DEFAULT true,
    feedback_to_admin boolean DEFAULT true,
    automatic_newsletters boolean DEFAULT true,
    join_with_invite_only boolean DEFAULT false,
    use_captcha boolean DEFAULT false,
    allowed_emails text,
    users_can_invite_new_users boolean DEFAULT true,
    private boolean DEFAULT false,
    label character varying,
    show_date_in_listings_list boolean DEFAULT false,
    all_users_can_add_news boolean DEFAULT true,
    custom_frontpage_sidebar boolean DEFAULT false,
    event_feed_enabled boolean DEFAULT true,
    slogan character varying,
    description text,
    category character varying DEFAULT 'other'::character varying,
    members_count integer DEFAULT 0,
    user_limit integer,
    monthly_price_in_euros double precision,
    logo_file_name character varying,
    logo_content_type character varying,
    logo_file_size integer,
    logo_updated_at timestamp without time zone,
    cover_photo_file_name character varying,
    cover_photo_content_type character varying,
    cover_photo_file_size integer,
    cover_photo_updated_at timestamp without time zone,
    small_cover_photo_file_name character varying,
    small_cover_photo_content_type character varying,
    small_cover_photo_file_size integer,
    small_cover_photo_updated_at timestamp without time zone,
    custom_color1 character varying,
    custom_color2 character varying,
    stylesheet_url character varying,
    stylesheet_needs_recompile boolean DEFAULT false,
    service_logo_style character varying DEFAULT 'full-logo'::character varying,
    available_currencies text,
    facebook_connect_enabled boolean DEFAULT true,
    only_public_listings boolean DEFAULT true,
    custom_email_from_address character varying,
    vat integer,
    commission_from_seller integer,
    minimum_price_cents integer,
    testimonials_in_use boolean DEFAULT true,
    hide_expiration_date boolean DEFAULT false,
    facebook_connect_id character varying,
    facebook_connect_secret character varying,
    google_analytics_key character varying,
    name_display_type character varying DEFAULT 'first_name_with_initial'::character varying,
    twitter_handle character varying,
    use_community_location_as_default boolean DEFAULT false,
    domain_alias character varying,
    preproduction_stylesheet_url character varying,
    show_category_in_listing_list boolean DEFAULT false,
    default_browse_view character varying DEFAULT 'grid'::character varying,
    wide_logo_file_name character varying,
    wide_logo_content_type character varying,
    wide_logo_file_size integer,
    wide_logo_updated_at timestamp without time zone,
    only_organizations boolean,
    listing_comments_in_use boolean DEFAULT false,
    show_listing_publishing_date boolean DEFAULT false,
    require_verification_to_post_listings boolean DEFAULT false,
    show_price_filter boolean DEFAULT false,
    price_filter_min integer DEFAULT 0,
    price_filter_max integer DEFAULT 100000,
    automatic_confirmation_after_days integer DEFAULT 14,
    plan_level integer DEFAULT 0,
    favicon_file_name character varying,
    favicon_content_type character varying,
    favicon_file_size integer,
    favicon_updated_at timestamp without time zone,
    default_min_days_between_community_updates integer DEFAULT 7,
    listing_location_required boolean DEFAULT false,
    custom_head_script text,
    follow_in_use boolean DEFAULT true NOT NULL,
    paypal_enabled boolean DEFAULT false NOT NULL
);


ALTER TABLE public.communities OWNER TO postgres;

--
-- Name: communities_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.communities_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.communities_id_seq OWNER TO postgres;

--
-- Name: communities_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.communities_id_seq OWNED BY public.communities.id;


--
-- Name: communities_listings; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.communities_listings (
    community_id integer,
    listing_id integer
);


ALTER TABLE public.communities_listings OWNER TO postgres;

--
-- Name: auth_tokens id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_tokens ALTER COLUMN id SET DEFAULT nextval('public.auth_tokens_id_seq'::regclass);


--
-- Name: billing_agreements id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.billing_agreements ALTER COLUMN id SET DEFAULT nextval('public.billing_agreements_id_seq'::regclass);


--
-- Name: bookings id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bookings ALTER COLUMN id SET DEFAULT nextval('public.bookings_id_seq'::regclass);


--
-- Name: braintree_accounts id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.braintree_accounts ALTER COLUMN id SET DEFAULT nextval('public.braintree_accounts_id_seq'::regclass);


--
-- Name: categories id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categories ALTER COLUMN id SET DEFAULT nextval('public.categories_id_seq'::regclass);


--
-- Name: category_custom_fields id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.category_custom_fields ALTER COLUMN id SET DEFAULT nextval('public.category_custom_fields_id_seq'::regclass);


--
-- Name: category_transaction_types id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.category_transaction_types ALTER COLUMN id SET DEFAULT nextval('public.category_transaction_types_id_seq'::regclass);


--
-- Name: category_translations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.category_translations ALTER COLUMN id SET DEFAULT nextval('public.category_translations_id_seq'::regclass);


--
-- Name: checkout_accounts id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.checkout_accounts ALTER COLUMN id SET DEFAULT nextval('public.checkout_accounts_id_seq'::regclass);


--
-- Name: comments id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.comments ALTER COLUMN id SET DEFAULT nextval('public.comments_id_seq'::regclass);


--
-- Name: communities id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.communities ALTER COLUMN id SET DEFAULT nextval('public.communities_id_seq'::regclass);


--
-- Data for Name: auth_tokens; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_tokens (id, token, person_id, expires_at, last_use_attempt, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: billing_agreements; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.billing_agreements (id, paypal_account_id, billing_agreement_id, created_at, updated_at, paypal_username_to, request_token) FROM stdin;
\.


--
-- Data for Name: bookings; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.bookings (id, transaction_id, start_on, end_on, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: braintree_accounts; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.braintree_accounts (id, created_at, updated_at, first_name, last_name, person_id, email, phone, address_street_address, address_postal_code, address_locality, address_region, date_of_birth, routing_number, hidden_account_number, status, community_id) FROM stdin;
\.


--
-- Data for Name: categories; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.categories (id, parent_id, icon, created_at, updated_at, community_id, sort_priority, url) FROM stdin;
\.


--
-- Data for Name: category_custom_fields; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.category_custom_fields (id, category_id, custom_field_id, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: category_transaction_types; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.category_transaction_types (id, category_id, transaction_type_id, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: category_translations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.category_translations (id, category_id, locale, name, created_at, updated_at, description) FROM stdin;
\.


--
-- Data for Name: checkout_accounts; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.checkout_accounts (id, company_id_or_personal_id, merchant_id, merchant_key, person_id, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: comments; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.comments (id, author_id, listing_id, content, created_at, updated_at, community_id) FROM stdin;
\.


--
-- Data for Name: communities; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.communities (id, name, domain, created_at, updated_at, settings, consent, transaction_agreement_in_use, email_admins_about_new_members, use_fb_like, real_name_required, feedback_to_admin, automatic_newsletters, join_with_invite_only, use_captcha, allowed_emails, users_can_invite_new_users, private, label, show_date_in_listings_list, all_users_can_add_news, custom_frontpage_sidebar, event_feed_enabled, slogan, description, category, members_count, user_limit, monthly_price_in_euros, logo_file_name, logo_content_type, logo_file_size, logo_updated_at, cover_photo_file_name, cover_photo_content_type, cover_photo_file_size, cover_photo_updated_at, small_cover_photo_file_name, small_cover_photo_content_type, small_cover_photo_file_size, small_cover_photo_updated_at, custom_color1, custom_color2, stylesheet_url, stylesheet_needs_recompile, service_logo_style, available_currencies, facebook_connect_enabled, only_public_listings, custom_email_from_address, vat, commission_from_seller, minimum_price_cents, testimonials_in_use, hide_expiration_date, facebook_connect_id, facebook_connect_secret, google_analytics_key, name_display_type, twitter_handle, use_community_location_as_default, domain_alias, preproduction_stylesheet_url, show_category_in_listing_list, default_browse_view, wide_logo_file_name, wide_logo_content_type, wide_logo_file_size, wide_logo_updated_at, only_organizations, listing_comments_in_use, show_listing_publishing_date, require_verification_to_post_listings, show_price_filter, price_filter_min, price_filter_max, automatic_confirmation_after_days, plan_level, favicon_file_name, favicon_content_type, favicon_file_size, favicon_updated_at, default_min_days_between_community_updates, listing_location_required, custom_head_script, follow_in_use, paypal_enabled) FROM stdin;
\.


--
-- Data for Name: communities_listings; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.communities_listings (community_id, listing_id) FROM stdin;
\.


--
-- Name: auth_tokens_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_tokens_id_seq', 1, false);


--
-- Name: billing_agreements_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.billing_agreements_id_seq', 1, false);


--
-- Name: bookings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.bookings_id_seq', 1, false);


--
-- Name: braintree_accounts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.braintree_accounts_id_seq', 1, false);


--
-- Name: categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.categories_id_seq', 1, false);


--
-- Name: category_custom_fields_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.category_custom_fields_id_seq', 1, false);


--
-- Name: category_transaction_types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.category_transaction_types_id_seq', 1, false);


--
-- Name: category_translations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.category_translations_id_seq', 1, false);


--
-- Name: checkout_accounts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.checkout_accounts_id_seq', 1, false);


--
-- Name: comments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.comments_id_seq', 1, false);


--
-- Name: communities_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.communities_id_seq', 1, false);


--
-- Name: auth_tokens auth_tokens_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_tokens
    ADD CONSTRAINT auth_tokens_pkey PRIMARY KEY (id);


--
-- Name: billing_agreements billing_agreements_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.billing_agreements
    ADD CONSTRAINT billing_agreements_pkey PRIMARY KEY (id);


--
-- Name: bookings bookings_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bookings
    ADD CONSTRAINT bookings_pkey PRIMARY KEY (id);


--
-- Name: braintree_accounts braintree_accounts_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.braintree_accounts
    ADD CONSTRAINT braintree_accounts_pkey PRIMARY KEY (id);


--
-- Name: categories categories_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (id);


--
-- Name: category_custom_fields category_custom_fields_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.category_custom_fields
    ADD CONSTRAINT category_custom_fields_pkey PRIMARY KEY (id);


--
-- Name: category_transaction_types category_transaction_types_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.category_transaction_types
    ADD CONSTRAINT category_transaction_types_pkey PRIMARY KEY (id);


--
-- Name: category_translations category_translations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.category_translations
    ADD CONSTRAINT category_translations_pkey PRIMARY KEY (id);


--
-- Name: checkout_accounts checkout_accounts_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.checkout_accounts
    ADD CONSTRAINT checkout_accounts_pkey PRIMARY KEY (id);


--
-- Name: comments comments_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.comments
    ADD CONSTRAINT comments_pkey PRIMARY KEY (id);


--
-- Name: communities communities_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.communities
    ADD CONSTRAINT communities_pkey PRIMARY KEY (id);


--
-- Name: category_id_with_locale; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX category_id_with_locale ON public.category_translations USING btree (category_id, locale);


--
-- Name: index_auth_tokens_on_token; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX index_auth_tokens_on_token ON public.auth_tokens USING btree (token);


--
-- Name: index_categories_on_parent_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_categories_on_parent_id ON public.categories USING btree (parent_id);


--
-- Name: index_categories_on_url; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_categories_on_url ON public.categories USING btree (url);


--
-- Name: index_category_transaction_types_on_category_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_category_transaction_types_on_category_id ON public.category_transaction_types USING btree (category_id);


--
-- Name: index_category_transaction_types_on_transaction_type_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_category_transaction_types_on_transaction_type_id ON public.category_transaction_types USING btree (transaction_type_id);


--
-- Name: index_category_translations_on_category_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_category_translations_on_category_id ON public.category_translations USING btree (category_id);


--
-- Name: index_comments_on_listing_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_comments_on_listing_id ON public.comments USING btree (listing_id);


--
-- Name: index_communities_listings_on_community_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_communities_listings_on_community_id ON public.communities_listings USING btree (community_id);


--
-- Name: index_communities_on_domain; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_communities_on_domain ON public.communities USING btree (domain);


--
-- PostgreSQL database dump complete
--

