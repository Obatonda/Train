--
-- PostgreSQL database dump
--

-- Dumped from database version 15.3
-- Dumped by pg_dump version 15.3

-- Started on 2026-01-23 14:35:05

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 221 (class 1259 OID 57547)
-- Name: auth_group; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 57546)
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO postgres;

--
-- TOC entry 3380 (class 0 OID 0)
-- Dependencies: 220
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- TOC entry 223 (class 1259 OID 57556)
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO postgres;

--
-- TOC entry 222 (class 1259 OID 57555)
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO postgres;

--
-- TOC entry 3381 (class 0 OID 0)
-- Dependencies: 222
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- TOC entry 219 (class 1259 OID 57540)
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 57539)
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO postgres;

--
-- TOC entry 3382 (class 0 OID 0)
-- Dependencies: 218
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- TOC entry 225 (class 1259 OID 57563)
-- Name: auth_user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO postgres;

--
-- TOC entry 227 (class 1259 OID 57572)
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user_groups (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO postgres;

--
-- TOC entry 226 (class 1259 OID 57571)
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO postgres;

--
-- TOC entry 3383 (class 0 OID 0)
-- Dependencies: 226
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- TOC entry 224 (class 1259 OID 57562)
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO postgres;

--
-- TOC entry 3384 (class 0 OID 0)
-- Dependencies: 224
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- TOC entry 229 (class 1259 OID 57579)
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user_user_permissions (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO postgres;

--
-- TOC entry 228 (class 1259 OID 57578)
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO postgres;

--
-- TOC entry 3385 (class 0 OID 0)
-- Dependencies: 228
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- TOC entry 231 (class 1259 OID 57638)
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO postgres;

--
-- TOC entry 230 (class 1259 OID 57637)
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO postgres;

--
-- TOC entry 3386 (class 0 OID 0)
-- Dependencies: 230
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- TOC entry 217 (class 1259 OID 57531)
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 57530)
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO postgres;

--
-- TOC entry 3387 (class 0 OID 0)
-- Dependencies: 216
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- TOC entry 215 (class 1259 OID 57522)
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO postgres;

--
-- TOC entry 214 (class 1259 OID 57521)
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO postgres;

--
-- TOC entry 3388 (class 0 OID 0)
-- Dependencies: 214
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- TOC entry 232 (class 1259 OID 57667)
-- Name: django_session; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO postgres;

--
-- TOC entry 236 (class 1259 OID 65713)
-- Name: workout_proposal; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.workout_proposal (
    id bigint NOT NULL,
    eng_name character varying(100) NOT NULL,
    ru_name character varying(100) NOT NULL,
    type character varying(100) NOT NULL,
    total_attempts integer NOT NULL,
    successful_attempts integer NOT NULL,
    series integer NOT NULL
);


ALTER TABLE public.workout_proposal OWNER TO postgres;

--
-- TOC entry 235 (class 1259 OID 65712)
-- Name: workout_proposal_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.workout_proposal_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.workout_proposal_id_seq OWNER TO postgres;

--
-- TOC entry 3389 (class 0 OID 0)
-- Dependencies: 235
-- Name: workout_proposal_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.workout_proposal_id_seq OWNED BY public.workout_proposal.id;


--
-- TOC entry 234 (class 1259 OID 57677)
-- Name: workout_words; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.workout_words (
    id bigint NOT NULL,
    eng_name character varying(100) NOT NULL,
    ru_name character varying(100) NOT NULL,
    type character varying(100) NOT NULL,
    total_attempts integer NOT NULL,
    successful_attempts integer NOT NULL,
    series integer NOT NULL
);


ALTER TABLE public.workout_words OWNER TO postgres;

--
-- TOC entry 233 (class 1259 OID 57676)
-- Name: workout_words_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.workout_words_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.workout_words_id_seq OWNER TO postgres;

--
-- TOC entry 3390 (class 0 OID 0)
-- Dependencies: 233
-- Name: workout_words_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.workout_words_id_seq OWNED BY public.workout_words.id;


--
-- TOC entry 3141 (class 2604 OID 57550)
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- TOC entry 3142 (class 2604 OID 57559)
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- TOC entry 3140 (class 2604 OID 57543)
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- TOC entry 3143 (class 2604 OID 57566)
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- TOC entry 3144 (class 2604 OID 57575)
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- TOC entry 3145 (class 2604 OID 57582)
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- TOC entry 3146 (class 2604 OID 57641)
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- TOC entry 3139 (class 2604 OID 57534)
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- TOC entry 3138 (class 2604 OID 57525)
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- TOC entry 3148 (class 2604 OID 65716)
-- Name: workout_proposal id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.workout_proposal ALTER COLUMN id SET DEFAULT nextval('public.workout_proposal_id_seq'::regclass);


--
-- TOC entry 3147 (class 2604 OID 57680)
-- Name: workout_words id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.workout_words ALTER COLUMN id SET DEFAULT nextval('public.workout_words_id_seq'::regclass);


--
-- TOC entry 3359 (class 0 OID 57547)
-- Dependencies: 221
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- TOC entry 3361 (class 0 OID 57556)
-- Dependencies: 223
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- TOC entry 3357 (class 0 OID 57540)
-- Dependencies: 219
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can view log entry	1	view_logentry
5	Can add permission	2	add_permission
6	Can change permission	2	change_permission
7	Can delete permission	2	delete_permission
8	Can view permission	2	view_permission
9	Can add group	3	add_group
10	Can change group	3	change_group
11	Can delete group	3	delete_group
12	Can view group	3	view_group
13	Can add user	4	add_user
14	Can change user	4	change_user
15	Can delete user	4	delete_user
16	Can view user	4	view_user
17	Can add content type	5	add_contenttype
18	Can change content type	5	change_contenttype
19	Can delete content type	5	delete_contenttype
20	Can view content type	5	view_contenttype
21	Can add session	6	add_session
22	Can change session	6	change_session
23	Can delete session	6	delete_session
24	Can view session	6	view_session
25	Can add words	7	add_words
26	Can change words	7	change_words
27	Can delete words	7	delete_words
28	Can view words	7	view_words
29	Can add proposal	8	add_proposal
30	Can change proposal	8	change_proposal
31	Can delete proposal	8	delete_proposal
32	Can view proposal	8	view_proposal
\.


--
-- TOC entry 3363 (class 0 OID 57563)
-- Dependencies: 225
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$260000$bGMqABkmUsdE66v6cexOrv$QJ4RoIK5Z9W1pGd5V9+li6jTRO6Bl125izpBnoZB0EY=	2025-12-05 10:04:00.566105+03	t	admin				t	t	2025-12-05 10:03:46.806104+03
\.


--
-- TOC entry 3365 (class 0 OID 57572)
-- Dependencies: 227
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- TOC entry 3367 (class 0 OID 57579)
-- Dependencies: 229
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- TOC entry 3369 (class 0 OID 57638)
-- Dependencies: 231
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- TOC entry 3355 (class 0 OID 57531)
-- Dependencies: 217
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	workout	words
8	workout	proposal
\.


--
-- TOC entry 3353 (class 0 OID 57522)
-- Dependencies: 215
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2025-12-05 09:33:04.813112+03
2	auth	0001_initial	2025-12-05 09:33:04.89111+03
3	admin	0001_initial	2025-12-05 09:33:04.909112+03
4	admin	0002_logentry_remove_auto_add	2025-12-05 09:33:04.915112+03
5	admin	0003_logentry_add_action_flag_choices	2025-12-05 09:33:04.919113+03
6	contenttypes	0002_remove_content_type_name	2025-12-05 09:33:04.92911+03
7	auth	0002_alter_permission_name_max_length	2025-12-05 09:33:04.934112+03
8	auth	0003_alter_user_email_max_length	2025-12-05 09:33:04.938113+03
9	auth	0004_alter_user_username_opts	2025-12-05 09:33:04.943114+03
10	auth	0005_alter_user_last_login_null	2025-12-05 09:33:04.948112+03
11	auth	0006_require_contenttypes_0002	2025-12-05 09:33:04.949111+03
12	auth	0007_alter_validators_add_error_messages	2025-12-05 09:33:04.95311+03
13	auth	0008_alter_user_username_max_length	2025-12-05 09:33:04.965112+03
14	auth	0009_alter_user_last_name_max_length	2025-12-05 09:33:04.970112+03
15	auth	0010_alter_group_name_max_length	2025-12-05 09:33:04.97611+03
16	auth	0011_update_proxy_permissions	2025-12-05 09:33:04.980113+03
17	auth	0012_alter_user_first_name_max_length	2025-12-05 09:33:04.985111+03
18	sessions	0001_initial	2025-12-05 09:33:04.999112+03
19	workout	0001_initial	2025-12-05 10:00:51.449105+03
20	workout	0002_proposal	2026-01-20 13:04:54.986493+03
\.


--
-- TOC entry 3370 (class 0 OID 57667)
-- Dependencies: 232
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
t7fk0ovt8tsi3xs6h0597jvj4hosfk07	.eJxVjMsOwiAQRf-FtSHQ4SEu3fcbyMBMpWogKe3K-O_apAvd3nPOfYmI21ri1nmJM4mL0OL0uyXMD647oDvWW5O51XWZk9wVedAux0b8vB7u30HBXr61SY7yxDAEsgYyKB3OlHRIYWKvSGfnyQF7tOAZAW0ig4NCk70Bba14fwDyHjf5:1vRPrE:fQHMK-U0GbWGUKAXaJ_jrn4LGZhleZUtZJZbebLvEoo	2025-12-19 10:04:00.569107+03
\.


--
-- TOC entry 3374 (class 0 OID 65713)
-- Dependencies: 236
-- Data for Name: workout_proposal; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.workout_proposal (id, eng_name, ru_name, type, total_attempts, successful_attempts, series) FROM stdin;
1	I explain the problem clearly.	Я объясняю проблему ясно.	предложение	0	0	0
2	She explained the rules yesterday.	Она объяснила правила вчера.	предложение	0	0	0
3	He will explain the plan tomorrow.	Он объяснит план завтра.	предложение	0	0	0
4	We are explaining the project to the client.	Мы объясняем проект клиенту.	предложение	0	0	0
5	They have explained everything already.	Они уже всё объяснили.	предложение	0	0	0
6	My teacher explains math very well.	Мой учитель хорошо объясняет математику.	предложение	0	0	0
7	Can you explain this word again?	Можешь объяснить это слово ещё раз?	предложение	0	0	0
8	The manual explains how to use the machine.	В руководстве объясняется, как использовать машину.	предложение	0	0	0
9	I didn’t explain my feelings properly.	Я не объяснил свои чувства правильно.	предложение	0	0	0
11	She saved her grandmother’s letters.	Она сохранила письма своей бабушки.	предложение	0	0	0
12	We will save the file before closing.	Мы сохраним файл перед закрытием.	предложение	0	0	0
13	They are saving for a trip to Japan.	Они копят на поездку в Японию.	предложение	0	0	0
14	He has saved enough for a new car.	Он накопил достаточно на новую машину.	предложение	0	0	0
15	Save your work before the power goes out!	Сохраните работу, пока не пропало электричество!	предложение	0	0	0
16	My parents save money for my education.	Мои родители копят на моё образование.	предложение	0	0	0
17	Can you save this document for me?	Ты можешь сохранить этот документ для меня?	предложение	0	0	0
18	They saved the cat from the tree.	Они спасли кота с дерева.	предложение	0	0	0
19	I marry my best friend next summer.	Я женюсь на своём лучшем друге следующим летом.	предложение	0	0	0
20	They married in a small church.	Они поженились в маленькой церкви.	предложение	0	0	0
21	We will marry when we finish university.	Мы поженимся, когда закончим университет.	предложение	0	0	0
22	She is marrying a doctor from Canada.	Она выходит замуж за врача из Канады.	предложение	0	0	0
23	My grandparents married in 1960.	Мои бабушка и дедушка поженились в 1960 году.	предложение	0	0	0
24	Do you believe in love at first sight?	Ты веришь в любовь с первого взгляда?	предложение	0	0	0
25	He married her because she was rich.	Он женился на ней, потому что она была богата.	предложение	0	0	0
26	They’re getting married next week.	Они женятся на следующей неделе.	предложение	0	0	0
27	I don’t want to marry someone I don’t love.	Я не хочу жениться на человеке, которого не люблю.	предложение	0	0	0
28	I move to a new apartment next week.	Я переезжаю в новую квартиру на следующей неделе.	предложение	0	0	0
29	She moved to London last year.	Она переехала в Лондон в прошлом году.	предложение	0	0	0
30	We are moving to a bigger house.	Мы переезжаем в больший дом.	предложение	0	0	0
31	He moved the table to the corner.	Он передвинул стол в угол.	предложение	0	0	0
32	They have moved twice this year.	Они переезжали дважды в этом году.	предложение	0	0	0
33	The car moved slowly through the traffic.	Машина медленно двигалась в пробке.	предложение	0	0	0
34	I don’t want to move far from my family.	Я не хочу далеко переезжать от семьи.	предложение	0	0	0
35	The wind moved the leaves on the ground.	Ветер сдвинул листья на земле.	предложение	0	0	0
36	We moved into our new home yesterday.	Мы въехали в новый дом вчера.	предложение	0	0	0
37	I describe my day to my diary every night.	Я описываю свой день в дневнике каждую ночь.	предложение	0	0	0
38	She described the suspect in detail.	Она подробно описала подозреваемого.	предложение	0	0	0
39	He will describe the scenery in his novel.	Он опишет пейзаж в своём романе.	предложение	0	0	0
40	They are describing the new product to investors.	Они описывают новый продукт инвесторам.	предложение	0	0	0
41	I have described this feeling before.	Я уже описывал это чувство раньше.	предложение	0	0	0
42	Can you describe the taste of this fruit?	Ты можешь описать вкус этого фрукта?	предложение	0	0	0
43	The artist described the scene with colors.	Художник изобразил сцену с помощью цветов.	предложение	0	0	0
44	The report describes the causes of the accident.	Отчёт описывает причины аварии.	предложение	0	0	0
45	I described my dream to my therapist.	Я описал свой сон терапевту.	предложение	0	0	0
46	I ask for help when I need it.	Я прошу помощи, когда мне нужно.	предложение	0	0	0
47	She asked me a difficult question.	Она задала мне сложный вопрос.	предложение	0	0	0
48	He will ask his boss for a raise.	Он попросит у начальника повышения зарплаты.	предложение	0	0	0
49	We are asking for volunteers for the event.	Мы ищем добровольцев для мероприятия.	предложение	0	0	0
50	They have asked me to speak at the conference.	Они попросили меня выступить на конференции.	предложение	0	0	0
51	Can I ask you a personal question?	Можно мне задать тебе личный вопрос?	предложение	0	0	0
52	The child asked why the sky is blue.	Ребёнок спросил, почему небо синее.	предложение	0	0	0
53	I asked for directions to the station.	Я спросил дорогу до станции.	предложение	0	0	0
54	Don’t ask me about that — I don’t know.	Не спрашивай меня об этом — я не знаю.	предложение	0	0	0
55	I answer every email I receive.	Я отвечаю на каждое полученное письмо.	предложение	0	0	0
56	She answered the phone immediately.	Она сразу ответила на звонок.	предложение	0	0	0
57	He will answer the questions after the presentation.	Он ответит на вопросы после презентации.	предложение	0	0	0
58	We are answering the survey now.	Мы сейчас отвечаем на опрос.	предложение	0	0	0
59	They have answered all the doubts.	Они ответили на все сомнения.	предложение	0	0	0
60	Can you answer in English?	Ты можешь ответить на английском?	предложение	0	0	0
61	The teacher answered the student’s question patiently.	Учитель терпеливо ответил на вопрос ученика.	предложение	0	0	0
62	I didn’t answer because I was scared.	Я не ответил, потому что был напуган.	предложение	0	0	0
63	He always answers with a smile.	Он всегда отвечает с улыбкой.	предложение	0	0	0
64	I begin my day with coffee.	Я начинаю день с кофе.	предложение	0	0	0
65	She began her career as a teacher.	Она начала свою карьеру как учитель.	предложение	0	0	0
66	We will begin the meeting at 9 a.m.	Мы начнём совещание в 9 утра.	предложение	0	0	0
67	They are beginning to understand the problem.	Они начинают понимать проблему.	предложение	0	0	0
68	He has begun to learn Spanish.	Он начал учить испанский.	предложение	0	0	0
69	The concert will begin at sunset.	Концерт начнётся на закате.	предложение	0	0	0
70	I began reading this book last week.	Я начал читать эту книгу на прошлой неделе.	предложение	0	0	0
71	We begin our journey tomorrow.	Мы начинаем своё путешествие завтра.	предложение	0	0	0
72	Don’t begin without me!	Не начинай без меня!	предложение	0	0	0
73	I believe in justice.	Я верю в справедливость.	предложение	0	0	0
74	She believed him even when no one else did.	Она верила ему, даже когда никто другой не верил.	предложение	0	0	0
75	I will believe it when I see it.	Я поверю, когда увижу.	предложение	0	0	0
76	They are beginning to believe in themselves.	Они начинают верить в себя.	предложение	0	0	0
77	He has always believed in hard work.	Он всегда верил в трудолюбие.	предложение	0	0	0
78	Do you believe in ghosts?	Ты веришь в призраков?	предложение	0	0	0
80	She doesn’t believe in luck.	Она не верит в удачу.	предложение	0	0	0
81	I believe this is the right decision.	Я считаю, что это правильное решение.	предложение	0	0	0
82	I bring my lunch to work every day.	Я приношу обед на работу каждый день.	предложение	0	0	0
83	She brought her dog to the park.	Она принесла свою собаку в парк.	предложение	0	0	0
84	He will bring the documents tomorrow.	Он привезёт документы завтра.	предложение	0	0	0
85	We are bringing snacks for the trip.	Мы приносим закуски для поездки.	предложение	0	0	0
86	They have brought their children to school.	Они привели своих детей в школу.	предложение	0	0	0
87	Can you bring me a glass of water?	Ты можешь принести мне стакан воды?	предложение	0	0	0
88	I brought a gift for your birthday.	Я принёс подарок на твой день рождения.	предложение	0	0	0
89	The waiter brought our order quickly.	Официант быстро принёс наш заказ.	предложение	0	0	0
90	Don’t forget to bring your ID.	Не забудь принести свой паспорт.	предложение	0	0	0
91	I build model airplanes in my free time.	Я собираю модели самолётов в свободное время.	предложение	0	0	0
92	They built a house on the hill last year.	Они построили дом на холме в прошлом году.	предложение	0	0	0
93	He will build a website for his business.	Он создаст веб-сайт для своего бизнеса.	предложение	0	0	0
94	We are building a new school in the village.	Мы строим новую школу в деревне.	предложение	0	0	0
95	She has built a successful career.	Она построила успешную карьеру.	предложение	0	0	0
96	The workers are building a bridge.	Рабочие строят мост.	предложение	0	0	0
97	I built a sandcastle with my nephew.	Я построил замок из песка с племянником.	предложение	0	0	0
98	They built a fire to stay warm.	Они разожгли костёр, чтобы согреться.	предложение	0	0	0
99	You can build your own app with this tool.	Ты можешь создать своё приложение с помощью этого инструмента.	предложение	0	0	0
100	I buy groceries every Saturday.	Я покупаю продукты каждую субботу.	предложение	0	0	0
101	She bought a new dress for the party.	Она купила новое платье для вечеринки.	предложение	0	0	0
102	He will buy a car next month.	Он купит машину в следующем месяце.	предложение	0	0	0
103	We are buying tickets for the concert.	Мы покупаем билеты на концерт.	предложение	0	0	0
104	They have bought a new apartment.	Они купили новую квартиру.	предложение	0	0	0
105	Can I buy you a coffee?	Могу ли я купить тебе кофе?	предложение	0	0	0
106	I bought this book at the bookstore.	Я купил эту книгу в книжном магазине.	предложение	0	0	0
107	The children bought ice cream with their allowance.	Дети купили мороженое на карманные деньги.	предложение	0	0	0
108	Don’t buy anything until we talk.	Не покупай ничего, пока мы не поговорим.	предложение	0	0	0
109	I call my mother every Sunday.	Я звоню маме каждое воскресенье.	предложение	0	0	0
110	She called me last night.	Она позвонила мне прошлой ночью.	предложение	0	0	0
112	We are calling our friends for dinner.	Мы звоним друзьям на ужин.	предложение	0	0	0
113	They have called the police about the noise.	Они вызвали полицию из-за шума.	предложение	0	0	0
114	Can you call me back in five minutes?	Ты можешь перезвонить мне через пять минут?	предложение	0	0	0
115	I called the restaurant to reserve a table.	Я позвонил в ресторан, чтобы забронировать столик.	предложение	0	0	0
116	She called him “darling” every morning.	Она называла его «дорогой» каждое утро.	предложение	0	0	0
117	Don’t call me during the meeting.	Не звони мне во время совещания.	предложение	0	0	0
118	I carry my backpack everywhere.	Я ношу рюкзак повсюду.	предложение	0	0	0
119	She carried her baby in a sling.	Она носила ребёнка на слинге.	предложение	0	0	0
120	He will carry the boxes to the truck.	Он отнесёт коробки на грузовик.	предложение	0	0	0
121	We are carrying too much luggage.	Мы несём слишком много багажа.	предложение	0	0	0
122	They have carried the equipment to the summit.	Они донесли оборудование до вершины.	предложение	0	0	0
123	Can you carry this bag for me?	Ты можешь понести эту сумку за меня?	предложение	0	0	0
124	I carried my laptop to work every day.	Я носил свой ноутбук на работу каждый день.	предложение	0	0	0
125	The soldiers carried their weapons with pride.	Солдаты несли свои оружия с гордостью.	предложение	0	0	0
126	Don’t carry your phone in your pocket.	Не носи телефон в кармане.	предложение	0	0	0
128	She caught a cold last week.	Она простудилась на прошлой неделе.	предложение	0	0	0
129	He will catch the train at 5 p.m.	Он успеет на поезд в 17:00.	предложение	0	0	0
131	They have caught the thief.	Они поймали вора.	предложение	0	0	0
132	Can you catch the ball for me?	Ты можешь поймать мяч за меня?	предложение	0	0	0
134	The cat caught a mouse in the kitchen.	Кот поймал мышь на кухне.	предложение	0	0	0
135	Don’t catch the flu — wash your hands!	Не заразись гриппом — мой руки!	предложение	0	0	0
136	I change my clothes every day.	Я меняю одежду каждый день.	предложение	0	0	0
137	She changed her mind about the trip.	Она передумала насчёт поездки.	предложение	0	0	0
138	He will change his job next year.	Он сменит работу в следующем году.	предложение	0	0	0
130	We are catching up with old friends.	Мы наверстываем упущенное с давними друзьями.	предложение	1	0	0
111	He will call the doctor if he feels worse.	Он позвонит врачу, если станет хуже.	предложение	1	0	0
127	I catch the bus at 7:30 every morning.	Я ловлю автобус в 7:30 каждое утро.	предложение	1	0	0
139	We are changing the tires on the car.	Мы меняем шины на машине.	предложение	0	0	0
140	They have changed a lot since college.	Они сильно изменились со времён университета.	предложение	0	0	0
141	Can you change the channel, please?	Ты можешь сменить канал, пожалуйста?	предложение	0	0	0
142	I changed my password last week.	Я изменил пароль на прошлой неделе.	предложение	0	0	0
144	Don’t change the subject — answer the question!	Не меняй тему — ответь на вопрос!	предложение	0	0	0
145	I choose my own path in life.	Я выбираю свой собственный путь в жизни.	предложение	0	0	0
147	He will choose a university in Canada.	Он выберет университет в Канаде.	предложение	0	0	0
148	We are choosing a name for the baby.	Мы выбираем имя для ребёнка.	предложение	0	0	0
149	They have chosen a vacation spot in Italy.	Они выбрали место для отпуска в Италии.	предложение	0	0	0
150	Can you choose a movie for us?	Ты можешь выбрать фильм для нас?	предложение	0	0	0
151	I chose this job because I love it.	Я выбрал эту работу, потому что люблю её.	предложение	0	0	0
152	The jury chose the winner last night.	Жюри выбрало победителя прошлой ночью.	предложение	0	0	0
153	Don’t choose too quickly — think it over.	Не выбирай слишком быстро — подумай хорошенько.	предложение	0	0	0
154	I clean my room every weekend.	Я убираю свою комнату каждые выходные.	предложение	0	0	0
155	She cleaned the kitchen after dinner.	Она убрала кухню после ужина.	предложение	0	0	0
156	He will clean the garage this weekend.	Он уберёт гараж в эти выходные.	предложение	0	0	0
157	We are cleaning the house for guests.	Мы убираем дом для гостей.	предложение	0	0	0
158	They have cleaned the entire apartment.	Они убрали всю квартиру.	предложение	0	0	0
159	Can you clean this stain for me?	Ты можешь убрать это пятно для меня?	предложение	0	0	0
10	I save money every month.	Я коплю деньги каждый месяц.	предложение	1	0	0
133	I caught my reflection in the mirror.	Я увидел своё отражение в зеркале.	предложение	1	0	0
146	She chose the red dress over the blue one.	Она выбрала красное платье вместо синего.	предложение	1	0	0
143	The seasons change every three months.	Времена года меняются каждые три месяца.	предложение	1	0	0
79	I believe you’re telling the truth.	Я верю, что ты говоришь правду.	предложение	1	0	0
\.


--
-- TOC entry 3372 (class 0 OID 57677)
-- Dependencies: 234
-- Data for Name: workout_words; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.workout_words (id, eng_name, ru_name, type, total_attempts, successful_attempts, series) FROM stdin;
11	interest	интересовать	глагол	22	21	21
67	carry	носить	глагол	22	5	0
21	visit	посещать	глагол	17	17	17
16	look	посмотреть	глагол	17	16	14
66	care	заботиться	глагол	19	7	0
47	cook	готовить	глагол	24	23	3
40	improve	улучшать	глагол	24	10	0
2	save	сохранять	глагол	19	18	3
3	marry	жениться	глагол	21	21	21
38	walk	ходить	глагол	7	4	4
4	move	двигаться	глагол	16	16	16
8	produce	производить	глагол	23	19	2
39	prefer	предпочитать	глагол	20	15	0
29	wait	ждать	глагол	14	13	5
22	watch	смотреть	глагол	30	28	3
72	compete	соревноваться	глагол	33	2	1
37	decide	решать	глагол	48	14	0
54	sign	подписывать	глагол	20	12	0
55	learn	учить	глагол	6	5	5
61	answer	отвечать	глагол	11	5	4
46	change	менять	глагол	11	7	4
73	complain	жаловаться	глагол	35	3	3
36	start	начинать	глагол	16	16	16
33	wash	мыть	глагол	18	17	16
13	include	включать	глагол	16	16	16
25	dance	танцевать	глагол	20	20	20
74	complete	завершать	глагол	38	8	2
10	worry	волноваться	глагол	14	14	14
52	smoke	курить	глагол	10	9	9
42	lock	запирать	глагол	12	8	6
45	graduate	окончить	глагол	30	15	2
31	hope	надеяться	глагол	22	15	2
49	travel	путешествовать	глагол	21	18	8
51	laugh	смеяться	глагол	12	7	7
15	fail	проваливаться	глагол	16	16	16
59	agree	соглашаться	глагол	7	6	4
28	follow	следовать	глагол	8	5	3
23	arrive	приезжать	глагол	34	29	1
57	need	нуждаться	глагол	3	3	3
17	control	контролировать	глагол	22	19	1
32	check	проверять	глагол	14	13	1
75	concentrate	концентрировать	глагол	12	7	5
77	connect	соединять	глагол	11	7	6
41	kiss	целовать	глагол	16	16	16
43	remember	помнить	глагол	25	23	4
65	cancel	отменять	глагол	23	8	1
71	compare	сравнивать	глагол	33	2	2
62	believe	верить	глагол	21	4	3
24	train	тренироваться	глагол	23	22	4
50	depend	зависеть	глагол	28	12	2
6	turn	поворачивать	глагол	21	21	21
44	discuss	обсуждать	глагол	13	7	3
34	wait	ждать	глагол	16	16	16
20	prepare	подготавливать	глагол	33	23	2
26	live	жить	глагол	28	27	3
70	collect	собирать	глагол	22	9	3
12	stay	оставаться	глагол	26	26	26
56	help	помогать	глагол	5	5	5
78	consider	рассматривать	глагол	33	1	1
18	talk	говорить	глагол	23	21	3
7	earn	зарабатывать	глагол	17	17	17
68	clean	чистить	глагол	12	7	2
19	offer	предлагать	глагол	17	17	18
1	explain	объяснять	глагол	26	19	1
35	work	работать	глагол	13	13	13
64	borrow	одалживать	глагол	21	4	3
53	kill	убивать	глагол	22	22	22
14	ask	спрашивать	глагол	13	13	13
69	close	закрывать	глагол	16	6	0
58	accept	принимать	глагол	34	3	2
5	seem	казаться	глагол	30	30	30
30	play	играть	глагол	11	11	11
60	allow	позволять	глагол	28	3	0
48	cry	плакать	глагол	11	8	5
9	listen	слушать	глагол	11	11	11
63	belong	принадлежать	глагол	29	2	2
76	confirm	подтверждать	глагол	46	2	2
27	call	звонить	глагол	23	23	23
93	escape	сбегать	глагол	29	4	2
100	fit	подходить	глагол	28	10	1
97	expect	ожидать	глагол	29	1	1
86	design	проектировать	глагол	31	1	0
83	create	создавать	глагол	7	7	7
89	drop	ронять	глагол	8	4	0
84	deliver	доставлять	глагол	24	9	2
94	examine	исследовать	глагол	25	3	1
79	continue	продолжать	глагол	16	8	3
91	enjoy	наслаждаться	глагол	14	7	2
85	describe	описывать	глагол	28	4	3
88	divide	делить	глагол	35	6	3
98	fill	наполнять	глагол	19	11	3
82	count	считать	глагол	33	4	1
99	finish	завершать	глагол	13	7	0
81	correct	исправлять	глагол	13	8	1
92	enter	входить	глагол	18	6	0
95	excite	возбуждать	глагол	22	6	0
96	exist	существовать	глагол	13	3	3
87	develop	развивать	глагол	15	9	3
90	end	заканчивать	глагол	7	4	3
80	copy	копировать	глагол	22	12	3
\.


--
-- TOC entry 3391 (class 0 OID 0)
-- Dependencies: 220
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- TOC entry 3392 (class 0 OID 0)
-- Dependencies: 222
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- TOC entry 3393 (class 0 OID 0)
-- Dependencies: 218
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 32, true);


--
-- TOC entry 3394 (class 0 OID 0)
-- Dependencies: 226
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- TOC entry 3395 (class 0 OID 0)
-- Dependencies: 224
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 1, true);


--
-- TOC entry 3396 (class 0 OID 0)
-- Dependencies: 228
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- TOC entry 3397 (class 0 OID 0)
-- Dependencies: 230
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, false);


--
-- TOC entry 3398 (class 0 OID 0)
-- Dependencies: 216
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 8, true);


--
-- TOC entry 3399 (class 0 OID 0)
-- Dependencies: 214
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 20, true);


--
-- TOC entry 3400 (class 0 OID 0)
-- Dependencies: 235
-- Name: workout_proposal_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.workout_proposal_id_seq', 1, false);


--
-- TOC entry 3401 (class 0 OID 0)
-- Dependencies: 233
-- Name: workout_words_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.workout_words_id_seq', 1, false);


--
-- TOC entry 3163 (class 2606 OID 57665)
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- TOC entry 3168 (class 2606 OID 57595)
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- TOC entry 3171 (class 2606 OID 57561)
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 3165 (class 2606 OID 57552)
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- TOC entry 3158 (class 2606 OID 57586)
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- TOC entry 3160 (class 2606 OID 57545)
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- TOC entry 3179 (class 2606 OID 57577)
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- TOC entry 3182 (class 2606 OID 57610)
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- TOC entry 3173 (class 2606 OID 57568)
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- TOC entry 3185 (class 2606 OID 57584)
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 3188 (class 2606 OID 57624)
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- TOC entry 3176 (class 2606 OID 57660)
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- TOC entry 3191 (class 2606 OID 57646)
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- TOC entry 3153 (class 2606 OID 57538)
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- TOC entry 3155 (class 2606 OID 57536)
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- TOC entry 3151 (class 2606 OID 57529)
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- TOC entry 3195 (class 2606 OID 57673)
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- TOC entry 3200 (class 2606 OID 65718)
-- Name: workout_proposal workout_proposal_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.workout_proposal
    ADD CONSTRAINT workout_proposal_pkey PRIMARY KEY (id);


--
-- TOC entry 3198 (class 2606 OID 57682)
-- Name: workout_words workout_words_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.workout_words
    ADD CONSTRAINT workout_words_pkey PRIMARY KEY (id);


--
-- TOC entry 3161 (class 1259 OID 57666)
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- TOC entry 3166 (class 1259 OID 57606)
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- TOC entry 3169 (class 1259 OID 57607)
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- TOC entry 3156 (class 1259 OID 57592)
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- TOC entry 3177 (class 1259 OID 57622)
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- TOC entry 3180 (class 1259 OID 57621)
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- TOC entry 3183 (class 1259 OID 57636)
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- TOC entry 3186 (class 1259 OID 57635)
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- TOC entry 3174 (class 1259 OID 57661)
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- TOC entry 3189 (class 1259 OID 57657)
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- TOC entry 3192 (class 1259 OID 57658)
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- TOC entry 3193 (class 1259 OID 57675)
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- TOC entry 3196 (class 1259 OID 57674)
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- TOC entry 3202 (class 2606 OID 57601)
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3203 (class 2606 OID 57596)
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3201 (class 2606 OID 57587)
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3204 (class 2606 OID 57616)
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3205 (class 2606 OID 57611)
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3206 (class 2606 OID 57630)
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3207 (class 2606 OID 57625)
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3208 (class 2606 OID 57647)
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3209 (class 2606 OID 57652)
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


-- Completed on 2026-01-23 14:35:05

--
-- PostgreSQL database dump complete
--

