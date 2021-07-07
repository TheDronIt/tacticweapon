--
-- PostgreSQL database dump
--

-- Dumped from database version 13.2
-- Dumped by pg_dump version 13.2

-- Started on 2021-07-07 14:02:46

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
-- TOC entry 207 (class 1259 OID 16776)
-- Name: auth_group; Type: TABLE; Schema: public; Owner: thedronit
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO thedronit;

--
-- TOC entry 206 (class 1259 OID 16774)
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: thedronit
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO thedronit;

--
-- TOC entry 3221 (class 0 OID 0)
-- Dependencies: 206
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: thedronit
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- TOC entry 209 (class 1259 OID 16786)
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: thedronit
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO thedronit;

--
-- TOC entry 208 (class 1259 OID 16784)
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: thedronit
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO thedronit;

--
-- TOC entry 3222 (class 0 OID 0)
-- Dependencies: 208
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: thedronit
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- TOC entry 205 (class 1259 OID 16768)
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: thedronit
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO thedronit;

--
-- TOC entry 204 (class 1259 OID 16766)
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: thedronit
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO thedronit;

--
-- TOC entry 3223 (class 0 OID 0)
-- Dependencies: 204
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: thedronit
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- TOC entry 211 (class 1259 OID 16794)
-- Name: auth_user; Type: TABLE; Schema: public; Owner: thedronit
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


ALTER TABLE public.auth_user OWNER TO thedronit;

--
-- TOC entry 213 (class 1259 OID 16804)
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: thedronit
--

CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO thedronit;

--
-- TOC entry 212 (class 1259 OID 16802)
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: thedronit
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO thedronit;

--
-- TOC entry 3224 (class 0 OID 0)
-- Dependencies: 212
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: thedronit
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- TOC entry 210 (class 1259 OID 16792)
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: thedronit
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO thedronit;

--
-- TOC entry 3225 (class 0 OID 0)
-- Dependencies: 210
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: thedronit
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- TOC entry 215 (class 1259 OID 16812)
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: thedronit
--

CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO thedronit;

--
-- TOC entry 214 (class 1259 OID 16810)
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: thedronit
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO thedronit;

--
-- TOC entry 3226 (class 0 OID 0)
-- Dependencies: 214
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: thedronit
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- TOC entry 217 (class 1259 OID 16872)
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: thedronit
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


ALTER TABLE public.django_admin_log OWNER TO thedronit;

--
-- TOC entry 216 (class 1259 OID 16870)
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: thedronit
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO thedronit;

--
-- TOC entry 3227 (class 0 OID 0)
-- Dependencies: 216
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: thedronit
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- TOC entry 203 (class 1259 OID 16758)
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: thedronit
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO thedronit;

--
-- TOC entry 202 (class 1259 OID 16756)
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: thedronit
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO thedronit;

--
-- TOC entry 3228 (class 0 OID 0)
-- Dependencies: 202
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: thedronit
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- TOC entry 201 (class 1259 OID 16747)
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: thedronit
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO thedronit;

--
-- TOC entry 200 (class 1259 OID 16745)
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: thedronit
--

CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO thedronit;

--
-- TOC entry 3229 (class 0 OID 0)
-- Dependencies: 200
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: thedronit
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- TOC entry 218 (class 1259 OID 16903)
-- Name: django_session; Type: TABLE; Schema: public; Owner: thedronit
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO thedronit;

--
-- TOC entry 232 (class 1259 OID 17012)
-- Name: web_additional; Type: TABLE; Schema: public; Owner: thedronit
--

CREATE TABLE public.web_additional (
    id integer NOT NULL,
    "Name" character varying(120) NOT NULL,
    "Image" character varying(100) NOT NULL,
    "Vendor" character varying(50) NOT NULL,
    "Type_list" character varying(50) NOT NULL,
    "For_gun" character varying(50) NOT NULL,
    "N_balls" integer NOT NULL,
    "Сurrent" integer NOT NULL,
    "Capacity" integer NOT NULL,
    "Voltage" character varying(120) NOT NULL,
    "Connector" character varying(50) NOT NULL,
    "Material" character varying(120) NOT NULL,
    "About" text NOT NULL,
    "Value" integer NOT NULL,
    "Price" integer NOT NULL
);


ALTER TABLE public.web_additional OWNER TO thedronit;

--
-- TOC entry 231 (class 1259 OID 17010)
-- Name: web_additional_id_seq; Type: SEQUENCE; Schema: public; Owner: thedronit
--

CREATE SEQUENCE public.web_additional_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.web_additional_id_seq OWNER TO thedronit;

--
-- TOC entry 3230 (class 0 OID 0)
-- Dependencies: 231
-- Name: web_additional_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: thedronit
--

ALTER SEQUENCE public.web_additional_id_seq OWNED BY public.web_additional.id;


--
-- TOC entry 220 (class 1259 OID 16915)
-- Name: web_airsoftgun; Type: TABLE; Schema: public; Owner: thedronit
--

CREATE TABLE public.web_airsoftgun (
    id integer NOT NULL,
    "Name" character varying(120) NOT NULL,
    "Type_list" character varying(50) NOT NULL,
    "Mechanism" character varying(50) NOT NULL,
    "Price" integer NOT NULL,
    "Vendor" character varying(50) NOT NULL,
    "About" text NOT NULL,
    "Image" character varying(100) NOT NULL,
    "Value" integer NOT NULL,
    "Battery" character varying(120) NOT NULL,
    "Equipment" character varying(120) NOT NULL,
    "Girbox" character varying(50) NOT NULL,
    "Speed" integer NOT NULL,
    "Weight" integer NOT NULL
);


ALTER TABLE public.web_airsoftgun OWNER TO thedronit;

--
-- TOC entry 219 (class 1259 OID 16913)
-- Name: web_airsoftgun_id_seq; Type: SEQUENCE; Schema: public; Owner: thedronit
--

CREATE SEQUENCE public.web_airsoftgun_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.web_airsoftgun_id_seq OWNER TO thedronit;

--
-- TOC entry 3231 (class 0 OID 0)
-- Dependencies: 219
-- Name: web_airsoftgun_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: thedronit
--

ALTER SEQUENCE public.web_airsoftgun_id_seq OWNED BY public.web_airsoftgun.id;


--
-- TOC entry 230 (class 1259 OID 17000)
-- Name: web_electronics; Type: TABLE; Schema: public; Owner: thedronit
--

CREATE TABLE public.web_electronics (
    id integer NOT NULL,
    "Name" character varying(120) NOT NULL,
    "Image" character varying(100) NOT NULL,
    "Vendor" character varying(50) NOT NULL,
    "Type_list" character varying(50) NOT NULL,
    "Girbox_equipment" character varying(120) NOT NULL,
    "Motor_type" character varying(50) NOT NULL,
    "Stem_length" character varying(50) NOT NULL,
    "Seat_type" character varying(50) NOT NULL,
    "Spring" integer NOT NULL,
    "Cylinder_volume" character varying(120) NOT NULL,
    "For_gun" character varying(50) NOT NULL,
    "Material" character varying(120) NOT NULL,
    "About" text NOT NULL,
    "Value" integer NOT NULL,
    "Price" integer NOT NULL,
    "Girbox" character varying(50) NOT NULL
);


ALTER TABLE public.web_electronics OWNER TO thedronit;

--
-- TOC entry 229 (class 1259 OID 16998)
-- Name: web_electronics_id_seq; Type: SEQUENCE; Schema: public; Owner: thedronit
--

CREATE SEQUENCE public.web_electronics_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.web_electronics_id_seq OWNER TO thedronit;

--
-- TOC entry 3232 (class 0 OID 0)
-- Dependencies: 229
-- Name: web_electronics_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: thedronit
--

ALTER SEQUENCE public.web_electronics_id_seq OWNED BY public.web_electronics.id;


--
-- TOC entry 226 (class 1259 OID 16971)
-- Name: web_equipment; Type: TABLE; Schema: public; Owner: thedronit
--

CREATE TABLE public.web_equipment (
    id integer NOT NULL,
    "Name" character varying(120) NOT NULL,
    "Image" character varying(100) NOT NULL,
    "Vendor" character varying(50) NOT NULL,
    "Type_list" character varying(50) NOT NULL,
    "Color" character varying(50) NOT NULL,
    "Pouch" character varying(50) NOT NULL,
    "Holster" character varying(50) NOT NULL,
    "Material" character varying(120) NOT NULL,
    "About" text NOT NULL,
    "Value" integer NOT NULL,
    "Price" integer NOT NULL
);


ALTER TABLE public.web_equipment OWNER TO thedronit;

--
-- TOC entry 225 (class 1259 OID 16969)
-- Name: web_equipment_id_seq; Type: SEQUENCE; Schema: public; Owner: thedronit
--

CREATE SEQUENCE public.web_equipment_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.web_equipment_id_seq OWNER TO thedronit;

--
-- TOC entry 3233 (class 0 OID 0)
-- Dependencies: 225
-- Name: web_equipment_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: thedronit
--

ALTER SEQUENCE public.web_equipment_id_seq OWNED BY public.web_equipment.id;


--
-- TOC entry 234 (class 1259 OID 17023)
-- Name: web_finishorder; Type: TABLE; Schema: public; Owner: thedronit
--

CREATE TABLE public.web_finishorder (
    id integer NOT NULL,
    "FIO" character varying(120) NOT NULL,
    "Phone" character varying(120) NOT NULL,
    "Email" character varying(120) NOT NULL,
    "Address" text NOT NULL,
    "Comment" text NOT NULL,
    "Order" text NOT NULL,
    "Price" integer NOT NULL,
    "Status" character varying(50) NOT NULL,
    "Delivery" character varying(50) NOT NULL
);


ALTER TABLE public.web_finishorder OWNER TO thedronit;

--
-- TOC entry 233 (class 1259 OID 17021)
-- Name: web_finishorder_id_seq; Type: SEQUENCE; Schema: public; Owner: thedronit
--

CREATE SEQUENCE public.web_finishorder_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.web_finishorder_id_seq OWNER TO thedronit;

--
-- TOC entry 3234 (class 0 OID 0)
-- Dependencies: 233
-- Name: web_finishorder_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: thedronit
--

ALTER SEQUENCE public.web_finishorder_id_seq OWNED BY public.web_finishorder.id;


--
-- TOC entry 224 (class 1259 OID 16955)
-- Name: web_material; Type: TABLE; Schema: public; Owner: thedronit
--

CREATE TABLE public.web_material (
    id integer NOT NULL,
    "Name" character varying(120) NOT NULL,
    "Image" character varying(100) NOT NULL,
    "Vendor" character varying(50) NOT NULL,
    "Type_list" character varying(50) NOT NULL,
    "BallWeight" character varying(50) NOT NULL,
    "Price" integer NOT NULL,
    "Value" integer NOT NULL,
    "About" text NOT NULL,
    "Gas" character varying(50) NOT NULL
);


ALTER TABLE public.web_material OWNER TO thedronit;

--
-- TOC entry 223 (class 1259 OID 16953)
-- Name: web_material_id_seq; Type: SEQUENCE; Schema: public; Owner: thedronit
--

CREATE SEQUENCE public.web_material_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.web_material_id_seq OWNER TO thedronit;

--
-- TOC entry 3235 (class 0 OID 0)
-- Dependencies: 223
-- Name: web_material_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: thedronit
--

ALTER SEQUENCE public.web_material_id_seq OWNED BY public.web_material.id;


--
-- TOC entry 222 (class 1259 OID 16935)
-- Name: web_order; Type: TABLE; Schema: public; Owner: thedronit
--

CREATE TABLE public.web_order (
    id integer NOT NULL,
    session_key character varying(120) NOT NULL,
    pr_id character varying(120) NOT NULL,
    pr_type character varying(120) NOT NULL,
    pr_value integer NOT NULL
);


ALTER TABLE public.web_order OWNER TO thedronit;

--
-- TOC entry 221 (class 1259 OID 16933)
-- Name: web_order_id_seq; Type: SEQUENCE; Schema: public; Owner: thedronit
--

CREATE SEQUENCE public.web_order_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.web_order_id_seq OWNER TO thedronit;

--
-- TOC entry 3236 (class 0 OID 0)
-- Dependencies: 221
-- Name: web_order_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: thedronit
--

ALTER SEQUENCE public.web_order_id_seq OWNED BY public.web_order.id;


--
-- TOC entry 228 (class 1259 OID 16982)
-- Name: web_protection; Type: TABLE; Schema: public; Owner: thedronit
--

CREATE TABLE public.web_protection (
    id integer NOT NULL,
    "Name" character varying(120) NOT NULL,
    "Image" character varying(100) NOT NULL,
    "Vendor" character varying(50) NOT NULL,
    "Type_list" character varying(50) NOT NULL,
    "Color" character varying(50) NOT NULL,
    "Weight" integer NOT NULL,
    "Glasses_type" character varying(50) NOT NULL,
    "Material" character varying(120) NOT NULL,
    "About" text NOT NULL,
    "Value" integer NOT NULL,
    "Price" integer NOT NULL
);


ALTER TABLE public.web_protection OWNER TO thedronit;

--
-- TOC entry 227 (class 1259 OID 16980)
-- Name: web_protection_id_seq; Type: SEQUENCE; Schema: public; Owner: thedronit
--

CREATE SEQUENCE public.web_protection_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.web_protection_id_seq OWNER TO thedronit;

--
-- TOC entry 3237 (class 0 OID 0)
-- Dependencies: 227
-- Name: web_protection_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: thedronit
--

ALTER SEQUENCE public.web_protection_id_seq OWNED BY public.web_protection.id;


--
-- TOC entry 2964 (class 2604 OID 16779)
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: thedronit
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- TOC entry 2965 (class 2604 OID 16789)
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: thedronit
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- TOC entry 2963 (class 2604 OID 16771)
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: thedronit
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- TOC entry 2966 (class 2604 OID 16797)
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: thedronit
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- TOC entry 2967 (class 2604 OID 16807)
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: thedronit
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- TOC entry 2968 (class 2604 OID 16815)
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: thedronit
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- TOC entry 2969 (class 2604 OID 16875)
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: thedronit
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- TOC entry 2962 (class 2604 OID 16761)
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: thedronit
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- TOC entry 2961 (class 2604 OID 16750)
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: thedronit
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- TOC entry 2977 (class 2604 OID 17015)
-- Name: web_additional id; Type: DEFAULT; Schema: public; Owner: thedronit
--

ALTER TABLE ONLY public.web_additional ALTER COLUMN id SET DEFAULT nextval('public.web_additional_id_seq'::regclass);


--
-- TOC entry 2971 (class 2604 OID 16918)
-- Name: web_airsoftgun id; Type: DEFAULT; Schema: public; Owner: thedronit
--

ALTER TABLE ONLY public.web_airsoftgun ALTER COLUMN id SET DEFAULT nextval('public.web_airsoftgun_id_seq'::regclass);


--
-- TOC entry 2976 (class 2604 OID 17003)
-- Name: web_electronics id; Type: DEFAULT; Schema: public; Owner: thedronit
--

ALTER TABLE ONLY public.web_electronics ALTER COLUMN id SET DEFAULT nextval('public.web_electronics_id_seq'::regclass);


--
-- TOC entry 2974 (class 2604 OID 16974)
-- Name: web_equipment id; Type: DEFAULT; Schema: public; Owner: thedronit
--

ALTER TABLE ONLY public.web_equipment ALTER COLUMN id SET DEFAULT nextval('public.web_equipment_id_seq'::regclass);


--
-- TOC entry 2978 (class 2604 OID 17026)
-- Name: web_finishorder id; Type: DEFAULT; Schema: public; Owner: thedronit
--

ALTER TABLE ONLY public.web_finishorder ALTER COLUMN id SET DEFAULT nextval('public.web_finishorder_id_seq'::regclass);


--
-- TOC entry 2973 (class 2604 OID 16958)
-- Name: web_material id; Type: DEFAULT; Schema: public; Owner: thedronit
--

ALTER TABLE ONLY public.web_material ALTER COLUMN id SET DEFAULT nextval('public.web_material_id_seq'::regclass);


--
-- TOC entry 2972 (class 2604 OID 16938)
-- Name: web_order id; Type: DEFAULT; Schema: public; Owner: thedronit
--

ALTER TABLE ONLY public.web_order ALTER COLUMN id SET DEFAULT nextval('public.web_order_id_seq'::regclass);


--
-- TOC entry 2975 (class 2604 OID 16985)
-- Name: web_protection id; Type: DEFAULT; Schema: public; Owner: thedronit
--

ALTER TABLE ONLY public.web_protection ALTER COLUMN id SET DEFAULT nextval('public.web_protection_id_seq'::regclass);


--
-- TOC entry 3188 (class 0 OID 16776)
-- Dependencies: 207
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: thedronit
--



--
-- TOC entry 3190 (class 0 OID 16786)
-- Dependencies: 209
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: thedronit
--



--
-- TOC entry 3186 (class 0 OID 16768)
-- Dependencies: 205
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: thedronit
--

INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (1, 'Can add log entry', 1, 'add_logentry');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (2, 'Can change log entry', 1, 'change_logentry');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (3, 'Can delete log entry', 1, 'delete_logentry');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (4, 'Can view log entry', 1, 'view_logentry');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (5, 'Can add permission', 2, 'add_permission');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (6, 'Can change permission', 2, 'change_permission');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (7, 'Can delete permission', 2, 'delete_permission');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (8, 'Can view permission', 2, 'view_permission');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (9, 'Can add group', 3, 'add_group');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (10, 'Can change group', 3, 'change_group');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (11, 'Can delete group', 3, 'delete_group');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (12, 'Can view group', 3, 'view_group');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (13, 'Can add user', 4, 'add_user');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (14, 'Can change user', 4, 'change_user');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (15, 'Can delete user', 4, 'delete_user');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (16, 'Can view user', 4, 'view_user');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (17, 'Can add content type', 5, 'add_contenttype');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (18, 'Can change content type', 5, 'change_contenttype');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (19, 'Can delete content type', 5, 'delete_contenttype');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (20, 'Can view content type', 5, 'view_contenttype');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (21, 'Can add session', 6, 'add_session');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (22, 'Can change session', 6, 'change_session');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (23, 'Can delete session', 6, 'delete_session');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (24, 'Can view session', 6, 'view_session');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (25, 'Can add airsoft gun', 7, 'add_airsoftgun');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (26, 'Can change airsoft gun', 7, 'change_airsoftgun');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (27, 'Can delete airsoft gun', 7, 'delete_airsoftgun');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (28, 'Can view airsoft gun', 7, 'view_airsoftgun');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (29, 'Can add order', 8, 'add_order');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (30, 'Can change order', 8, 'change_order');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (31, 'Can delete order', 8, 'delete_order');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (32, 'Can view order', 8, 'view_order');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (33, 'Can add material', 9, 'add_material');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (34, 'Can change material', 9, 'change_material');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (35, 'Can delete material', 9, 'delete_material');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (36, 'Can view material', 9, 'view_material');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (37, 'Can add equipment', 10, 'add_equipment');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (38, 'Can change equipment', 10, 'change_equipment');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (39, 'Can delete equipment', 10, 'delete_equipment');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (40, 'Can view equipment', 10, 'view_equipment');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (41, 'Can add protection', 11, 'add_protection');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (42, 'Can change protection', 11, 'change_protection');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (43, 'Can delete protection', 11, 'delete_protection');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (44, 'Can view protection', 11, 'view_protection');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (45, 'Can add electronics', 12, 'add_electronics');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (46, 'Can change electronics', 12, 'change_electronics');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (47, 'Can delete electronics', 12, 'delete_electronics');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (48, 'Can view electronics', 12, 'view_electronics');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (49, 'Can add additional', 13, 'add_additional');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (50, 'Can change additional', 13, 'change_additional');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (51, 'Can delete additional', 13, 'delete_additional');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (52, 'Can view additional', 13, 'view_additional');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (53, 'Can add finish order', 14, 'add_finishorder');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (54, 'Can change finish order', 14, 'change_finishorder');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (55, 'Can delete finish order', 14, 'delete_finishorder');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (56, 'Can view finish order', 14, 'view_finishorder');


--
-- TOC entry 3192 (class 0 OID 16794)
-- Dependencies: 211
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: thedronit
--

INSERT INTO public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) VALUES (1, 'pbkdf2_sha256$216000$IqSsJohrsIy3$zoT452N7UCucj4FtZDEBBoRVsJJtLt+O6M9vq9ogSt8=', '2021-06-16 22:16:37.977568+10', true, 'admin', '', '', 'admin@admin.ru', true, true, '2021-04-08 21:02:53.518809+10');


--
-- TOC entry 3194 (class 0 OID 16804)
-- Dependencies: 213
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: thedronit
--



--
-- TOC entry 3196 (class 0 OID 16812)
-- Dependencies: 215
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: thedronit
--



--
-- TOC entry 3198 (class 0 OID 16872)
-- Dependencies: 217
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: thedronit
--

INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (1, '2021-05-22 14:40:03.079222+10', '1', 'Test', 1, '[{"added": {}}]', 7, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (2, '2021-05-22 14:40:13.426137+10', '1', 'Test', 3, '', 7, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (3, '2021-05-22 14:40:20.95029+10', '2', 'Test2', 1, '[{"added": {}}]', 7, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (4, '2021-05-22 14:53:48.646643+10', '2', 'Test2', 2, '[{"changed": {"fields": ["Type list"]}}]', 7, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (5, '2021-05-22 14:54:36.497518+10', '2', 'Test2', 3, '', 7, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (6, '2021-05-22 14:54:52.417498+10', '3', 'AK74', 1, '[{"added": {}}]', 7, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (7, '2021-05-22 15:11:32.54109+10', '3', 'AK74', 2, '[{"changed": {"fields": ["Mechanism", "Price"]}}]', 7, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (8, '2021-05-22 20:29:38.959674+10', '3', 'AK74', 3, '', 7, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (9, '2021-05-22 20:36:46.140398+10', '4', 'Автомат Cyma АК-74М (CM040C)', 1, '[{"added": {}}]', 7, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (10, '2021-05-22 20:41:06.611154+10', '4', 'Автомат Cyma АК-74М (CM040C)', 2, '[{"changed": {"fields": ["Image"]}}]', 7, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (11, '2021-05-22 20:44:19.422589+10', '4', 'Автомат Cyma АК-74М (CM040C)', 2, '[{"changed": {"fields": ["Image"]}}]', 7, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (12, '2021-05-22 20:44:39.964034+10', '4', 'Автомат Cyma АК-74М (CM040C)', 2, '[{"changed": {"fields": ["Image"]}}]', 7, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (13, '2021-05-22 20:45:30.948106+10', '5', 'Автомат Cyma АКС-74У деревянное цевьё (CM035A)', 1, '[{"added": {}}]', 7, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (14, '2021-05-22 20:45:55.789024+10', '5', 'Автомат Cyma АКС-74У деревянное цевьё (CM035A)', 2, '[{"changed": {"fields": ["Image"]}}]', 7, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (15, '2021-05-22 20:47:56.293666+10', '6', 'Карабин Tokyo Marui Mk.18 mod 1 Next Gen AEG (TM4952839176264)', 1, '[{"added": {}}]', 7, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (16, '2021-05-22 20:48:51.995922+10', '6', 'Карабин Tokyo Marui Mk.18 mod 1 Next Gen AEG (TM4952839176264)', 2, '[{"changed": {"fields": ["Image"]}}]', 7, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (17, '2021-05-22 20:54:47.255008+10', '7', 'Пистолет KJW Glock 18C GGBB (GP627)', 1, '[{"added": {}}]', 7, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (18, '2021-05-22 20:56:30.354642+10', '5', 'Автомат Cyma АКС-74У деревянное цевьё (CM035A)', 2, '[{"changed": {"fields": ["Status"]}}]', 7, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (19, '2021-05-22 20:56:53.217443+10', '5', 'Автомат Cyma АКС-74У деревянное цевьё (CM035A)', 2, '[{"changed": {"fields": ["Status"]}}]', 7, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (20, '2021-05-22 20:57:01.487829+10', '5', 'Автомат Cyma АКС-74У деревянное цевьё (CM035A)', 2, '[{"changed": {"fields": ["Status"]}}]', 7, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (21, '2021-05-22 21:15:58.170561+10', '7', 'Пистолет KJW Glock 18C GGBB (GP627)', 2, '[{"changed": {"fields": ["Status"]}}]', 7, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (22, '2021-05-22 21:16:12.965161+10', '7', 'Пистолет KJW Glock 18C GGBB (GP627)', 2, '[{"changed": {"fields": ["Status"]}}]', 7, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (23, '2021-05-22 21:16:22.874569+10', '5', 'Автомат Cyma АКС-74У деревянное цевьё (CM035A)', 2, '[]', 7, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (24, '2021-05-31 18:18:16.897345+10', '6', 'Карабин Tokyo Marui Mk.18 mod 1 Next Gen AEG (TM4952839176264)', 2, '[{"changed": {"fields": ["Value"]}}]', 7, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (25, '2021-05-31 18:25:09.726494+10', '7', 'Пистолет KJW Glock 18C GGBB (GP627)', 2, '[{"changed": {"fields": ["Value"]}}]', 7, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (26, '2021-05-31 18:29:23.381787+10', '5', 'Автомат Cyma АКС-74У деревянное цевьё (CM035A)', 2, '[{"changed": {"fields": ["Value"]}}]', 7, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (27, '2021-05-31 18:30:37.677183+10', '4', 'Автомат Cyma АК-74М (CM040C)', 2, '[{"changed": {"fields": ["Value"]}}]', 7, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (28, '2021-05-31 18:49:30.459418+10', '4', 'Автомат Cyma АК-74М (CM040C)', 2, '[{"changed": {"fields": ["Value"]}}]', 7, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (29, '2021-05-31 19:11:03.521186+10', '5', 'Автомат Cyma АКС-74У деревянное цевьё (CM035A)', 2, '[{"changed": {"fields": ["Value"]}}]', 7, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (30, '2021-05-31 20:42:58.071203+10', '2', '2', 3, '', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (31, '2021-05-31 20:42:58.0752+10', '1', '1', 3, '', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (32, '2021-05-31 21:08:16.853803+10', '4', '4', 3, '', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (33, '2021-05-31 21:08:16.856803+10', '3', '3', 3, '', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (34, '2021-05-31 21:16:28.951207+10', '5', '5', 1, '[{"added": {}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (35, '2021-05-31 21:18:04.278184+10', '5', '5', 3, '', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (36, '2021-05-31 21:22:45.702521+10', '7', '7', 3, '', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (37, '2021-05-31 21:40:40.439826+10', '8', '8', 3, '', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (38, '2021-05-31 22:28:00.492121+10', '10', '10', 3, '', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (39, '2021-05-31 22:28:00.497612+10', '9', '9', 3, '', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (40, '2021-05-31 22:28:00.498624+10', '6', '6', 3, '', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (41, '2021-06-01 13:23:48.451415+10', '11', '11', 2, '[{"changed": {"fields": ["Pr value"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (42, '2021-06-01 13:27:23.362721+10', '12', '12', 2, '[{"changed": {"fields": ["Pr value"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (43, '2021-06-01 20:06:18.781147+10', '37', '37', 2, '[{"changed": {"fields": ["Pr id"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (44, '2021-06-01 20:06:23.406627+10', '36', '36', 2, '[{"changed": {"fields": ["Pr id"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (45, '2021-06-01 20:35:20.361563+10', '13', '13', 3, '', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (46, '2021-06-03 19:40:11.463618+10', '4', 'Автомат Cyma АК-74М (CM040C)', 2, '[{"changed": {"fields": ["Weight", "Girbox", "Speed", "Battery", "Equipment"]}}]', 7, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (47, '2021-06-03 19:42:33.227679+10', '5', 'Автомат Cyma АКС-74У деревянное цевьё (CM035A)', 2, '[{"changed": {"fields": ["Weight", "Girbox", "Speed", "Battery", "Equipment"]}}]', 7, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (48, '2021-06-03 19:43:47.044176+10', '6', 'Карабин Tokyo Marui Mk.18 mod 1 Next Gen AEG (TM4952839176264)', 2, '[{"changed": {"fields": ["Weight", "Girbox", "Speed"]}}]', 7, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (49, '2021-06-03 19:44:25.503474+10', '6', 'Карабин Tokyo Marui Mk.18 mod 1 Next Gen AEG (TM4952839176264)', 2, '[{"changed": {"fields": ["Battery", "Equipment"]}}]', 7, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (50, '2021-06-03 19:47:29.017861+10', '7', 'Пистолет KJW Glock 18C GGBB (GP627)', 2, '[{"changed": {"fields": ["Weight", "Girbox", "Speed", "Battery", "Equipment"]}}]', 7, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (51, '2021-06-03 20:45:09.88991+10', '1', 'Шары G&G 0.25гр. 4000шт. белые', 1, '[{"added": {}}]', 9, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (52, '2021-06-03 20:46:07.668404+10', '1', 'Шары G&G 0.25гр. 4000шт. белые', 2, '[{"changed": {"fields": ["BallWeight list"]}}]', 9, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (53, '2021-06-03 20:50:20.835645+10', '2', 'Шары G&G 0.28гр. 3500шт. белые', 1, '[{"added": {}}]', 9, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (54, '2021-06-03 20:50:27.770112+10', '2', 'Шары G&G 0.28гр. 3500шт. белые', 2, '[]', 9, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (55, '2021-06-03 20:50:33.723006+10', '1', 'Шары G&G 0.25гр. 4000шт. белые', 2, '[]', 9, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (56, '2021-06-03 20:51:25.397289+10', '3', 'Шары AimTop 0.25гр. 3800шт. белые', 1, '[{"added": {}}]', 9, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (57, '2021-06-03 20:51:35.971394+10', '1', 'Шары G&G 0.25гр. 4000шт. белые', 2, '[{"changed": {"fields": ["Price"]}}]', 9, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (58, '2021-06-03 20:52:58.287087+10', '4', 'Green Gas FL-Airsoft 650мл.', 1, '[{"added": {}}]', 9, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (59, '2021-06-03 20:53:39.844672+10', '5', 'Green Gas FL-Airsoft 1000мл.', 1, '[{"added": {}}]', 9, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (60, '2021-06-03 20:54:47.772582+10', '5', 'Green Gas FL-Airsoft 1000мл.', 2, '[{"changed": {"fields": ["Vendor"]}}]', 9, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (61, '2021-06-03 20:54:56.649408+10', '4', 'Green Gas FL-Airsoft 650мл.', 2, '[{"changed": {"fields": ["Vendor"]}}]', 9, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (62, '2021-06-03 21:25:35.901987+10', '5', 'Green Gas FL-Airsoft 1000мл.', 2, '[{"changed": {"fields": ["About"]}}]', 9, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (63, '2021-06-03 21:31:33.433849+10', '4', 'Green Gas FL-Airsoft 650мл.', 2, '[{"changed": {"fields": ["About"]}}]', 9, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (64, '2021-06-03 21:31:50.088466+10', '3', 'Шары AimTop 0.25гр. 3800шт. белые', 2, '[{"changed": {"fields": ["About"]}}]', 9, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (65, '2021-06-03 21:32:19.432235+10', '2', 'Шары G&G 0.28гр. 3500шт. белые', 2, '[{"changed": {"fields": ["About"]}}]', 9, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (66, '2021-06-03 21:32:47.336077+10', '1', 'Шары G&G 0.25гр. 4000шт. белые', 2, '[{"changed": {"fields": ["About"]}}]', 9, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (67, '2021-06-03 21:32:52.360648+10', '3', 'Шары AimTop 0.25гр. 3800шт. белые', 2, '[]', 9, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (68, '2021-06-03 21:34:10.851295+10', '60', '60', 3, '', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (69, '2021-06-03 21:37:29.753195+10', '5', 'Green Gas FL-Airsoft 1000мл.', 2, '[{"changed": {"fields": ["Gas"]}}]', 9, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (70, '2021-06-03 21:37:34.927791+10', '4', 'Green Gas FL-Airsoft 650мл.', 2, '[{"changed": {"fields": ["Gas"]}}]', 9, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (71, '2021-06-03 21:38:23.432088+10', '3', 'Шары AimTop 0.25гр. 3800шт. белые', 2, '[{"changed": {"fields": ["Gas"]}}]', 9, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (72, '2021-06-03 21:38:27.233089+10', '2', 'Шары G&G 0.28гр. 3500шт. белые', 2, '[{"changed": {"fields": ["Gas"]}}]', 9, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (73, '2021-06-03 21:38:30.773751+10', '1', 'Шары G&G 0.25гр. 4000шт. белые', 2, '[{"changed": {"fields": ["Gas"]}}]', 9, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (74, '2021-06-03 21:44:28.651824+10', '62', '62', 3, '', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (75, '2021-06-03 21:44:28.687827+10', '61', '61', 3, '', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (76, '2021-06-03 21:47:17.999218+10', '63', '63', 3, '', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (77, '2021-06-05 15:02:00.752046+10', '1', 'Нагрудник БРЭДЛИ для магазинов АК/М4 облегченный', 1, '[{"added": {}}]', 10, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (78, '2021-06-05 15:14:17.515031+10', '2', 'Подсумок ASR гранатный одинарный с фастексом MC', 1, '[{"added": {}}]', 10, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (79, '2021-06-05 15:33:44.919464+10', '1', 'Шлем FMA Ops-Core FAST Maritime DE', 1, '[{"added": {}}]', 11, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (80, '2021-06-05 15:35:04.20374+10', '2', 'Маска защитная WoSporT с двойным ремнём BK', 1, '[{"added": {}}]', 11, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (81, '2021-06-05 15:36:14.247382+10', '3', 'Очки защитные WoSporT открытые BK', 1, '[{"added": {}}]', 11, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (82, '2021-06-05 15:37:11.93041+10', '4', 'Очки защитные WoSporT Bolle X800 BK', 1, '[{"added": {}}]', 11, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (83, '2021-06-05 16:22:07.526015+10', '1', 'Стенки гирбокса ZC Airsoft алюминиевые V.3', 1, '[{"added": {}}]', 12, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (84, '2021-06-05 16:23:35.41428+10', '2', 'Стенки LCT для гирбокса 2 версий', 1, '[{"added": {}}]', 12, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (85, '2021-06-05 16:25:35.431647+10', '3', 'Мотор Guarder High Speed Revolution короткий', 1, '[{"added": {}}]', 12, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (86, '2021-06-05 16:26:58.121396+10', '4', 'Мотор Guarder Infinite Torque-Up длинный', 1, '[{"added": {}}]', 12, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (87, '2021-06-05 16:28:27.807118+10', '5', 'Пружина Guarder SP130', 1, '[{"added": {}}]', 12, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (88, '2021-06-05 16:30:09.263853+10', '6', 'Цилиндр ZC Airsoft алюминиевый', 1, '[{"added": {}}]', 12, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (89, '2021-06-05 16:31:36.20273+10', '7', 'Камера хоп-апа ZC Airsoft фрезерованная алюминиевая для АК-серии', 1, '[{"added": {}}]', 12, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (90, '2021-06-05 16:32:38.327628+10', '8', 'Камера хоп-апа LCT для М4/М16', 1, '[{"added": {}}]', 12, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (91, '2021-06-07 10:56:11.563165+10', '1', 'Аккумулятор Li-Po 7,4V 1450 mAh', 1, '[{"added": {}}]', 13, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (92, '2021-06-07 10:57:03.561397+10', '2', 'Аккумулятор Li-Po 11,1V 1400 mAh', 1, '[{"added": {}}]', 13, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (93, '2021-06-07 10:58:16.162738+10', '3', 'Планка боковая Cyma на АК для установки оптики', 1, '[{"added": {}}]', 13, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (94, '2021-06-07 10:59:32.510779+10', '4', 'Магазин механический Cyma для АК', 1, '[{"added": {}}]', 13, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (95, '2021-06-07 11:00:07.97868+10', '5', 'Магазин механический Cyma для М-серии 190 шаров', 1, '[{"added": {}}]', 13, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (96, '2021-06-16 23:11:27.765387+10', '94', '94', 1, '[{"added": {}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (97, '2021-06-17 00:17:45.401089+10', '94', '94', 3, '', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (98, '2021-06-17 00:17:45.403712+10', '93', '93', 3, '', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (99, '2021-06-17 00:17:45.404728+10', '92', '92', 3, '', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (100, '2021-06-17 00:17:45.405728+10', '91', '91', 3, '', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (101, '2021-06-17 00:17:45.405728+10', '90', '90', 3, '', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (102, '2021-06-17 00:17:45.406728+10', '89', '89', 3, '', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (103, '2021-06-17 00:17:45.407724+10', '87', '87', 3, '', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (104, '2021-06-17 00:17:51.804036+10', '95', '95', 3, '', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (105, '2021-06-17 21:22:22.22426+10', '105', '105', 3, '', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (106, '2021-06-17 21:22:22.364698+10', '104', '104', 3, '', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (107, '2021-06-17 21:22:22.365695+10', '102', '102', 3, '', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (108, '2021-06-17 21:22:22.366696+10', '99', '99', 3, '', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (109, '2021-06-18 18:26:57.262111+10', '2', '2) Михал Палыч Терентьев', 2, '[{"changed": {"fields": ["Address", "Order", "Status"]}}]', 14, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (110, '2021-06-18 18:27:53.238585+10', '2', '2) Михал Палыч Терентьев | Обрабатывается', 2, '[{"changed": {"fields": ["Status"]}}]', 14, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (111, '2021-06-18 19:22:18.459195+10', '3', '3) Михал Палыч Терентьев2 | Обрабатывается', 2, '[{"changed": {"fields": ["Address", "Order"]}}]', 14, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (112, '2021-06-18 20:45:41.855506+10', '5', '5) аыва | Обрабатывается', 2, '[{"changed": {"fields": ["Address", "Order"]}}]', 14, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (113, '2021-06-18 22:07:35.913026+10', '12', '12) Михал Палыч Терентьев | Обрабатывается', 3, '', 14, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (114, '2021-06-18 22:07:35.916764+10', '11', '11) fsd | Обрабатывается', 3, '', 14, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (115, '2021-06-18 22:07:35.917765+10', '10', '10) Михал Палыч Терентьев | Обрабатывается', 3, '', 14, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (116, '2021-06-18 22:07:35.917765+10', '9', '9) fsd | Обрабатывается', 3, '', 14, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (117, '2021-06-18 22:07:35.918771+10', '8', '8) fsd | Обрабатывается', 3, '', 14, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (118, '2021-06-18 22:07:35.920055+10', '7', '7) fsd | Обрабатывается', 3, '', 14, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (119, '2021-06-18 22:07:35.920055+10', '6', '6) 123 | Обрабатывается', 3, '', 14, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (120, '2021-06-18 22:07:35.921069+10', '5', '5) аыва | Обрабатывается', 3, '', 14, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (121, '2021-06-18 22:07:35.922068+10', '4', '4) СЛАВА | Обрабатывается', 3, '', 14, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (122, '2021-06-18 22:07:35.922068+10', '3', '3) Михал Палыч Терентьев2 | Обрабатывается', 3, '', 14, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (123, '2021-06-18 22:07:35.923069+10', '2', '2) Михал Палыч Терентьев | Обрабатывается', 3, '', 14, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (124, '2021-06-18 23:57:32.883268+10', '13', '13) Михал Палыч Терентьев | Готово к выдаче', 2, '[{"changed": {"fields": ["Order", "Delivery", "Address", "Status"]}}]', 14, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (125, '2021-06-18 23:57:42.707166+10', '14', '14) Михал Палыч Терентьев | Выдано', 2, '[{"changed": {"fields": ["Order", "Address", "Comment", "Status"]}}]', 14, 1);


--
-- TOC entry 3184 (class 0 OID 16758)
-- Dependencies: 203
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: thedronit
--

INSERT INTO public.django_content_type (id, app_label, model) VALUES (1, 'admin', 'logentry');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (2, 'auth', 'permission');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (3, 'auth', 'group');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (4, 'auth', 'user');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (5, 'contenttypes', 'contenttype');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (6, 'sessions', 'session');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (7, 'web', 'airsoftgun');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (8, 'web', 'order');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (9, 'web', 'material');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (10, 'web', 'equipment');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (11, 'web', 'protection');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (12, 'web', 'electronics');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (13, 'web', 'additional');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (14, 'web', 'finishorder');


--
-- TOC entry 3182 (class 0 OID 16747)
-- Dependencies: 201
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: thedronit
--

INSERT INTO public.django_migrations (id, app, name, applied) VALUES (1, 'contenttypes', '0001_initial', '2021-04-08 21:02:23.358787+10');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (2, 'auth', '0001_initial', '2021-04-08 21:02:23.792113+10');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (3, 'admin', '0001_initial', '2021-04-08 21:02:24.616957+10');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (4, 'admin', '0002_logentry_remove_auto_add', '2021-04-08 21:02:24.723981+10');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (5, 'admin', '0003_logentry_add_action_flag_choices', '2021-04-08 21:02:24.731982+10');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (6, 'contenttypes', '0002_remove_content_type_name', '2021-04-08 21:02:24.756983+10');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (7, 'auth', '0002_alter_permission_name_max_length', '2021-04-08 21:02:24.764982+10');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (8, 'auth', '0003_alter_user_email_max_length', '2021-04-08 21:02:24.781082+10');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (9, 'auth', '0004_alter_user_username_opts', '2021-04-08 21:02:24.789086+10');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (10, 'auth', '0005_alter_user_last_login_null', '2021-04-08 21:02:24.799086+10');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (11, 'auth', '0006_require_contenttypes_0002', '2021-04-08 21:02:24.800086+10');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (12, 'auth', '0007_alter_validators_add_error_messages', '2021-04-08 21:02:24.808082+10');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (13, 'auth', '0008_alter_user_username_max_length', '2021-04-08 21:02:24.880083+10');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (14, 'auth', '0009_alter_user_last_name_max_length', '2021-04-08 21:02:24.889086+10');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (15, 'auth', '0010_alter_group_name_max_length', '2021-04-08 21:02:24.932794+10');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (16, 'auth', '0011_update_proxy_permissions', '2021-04-08 21:02:24.939887+10');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (17, 'auth', '0012_alter_user_first_name_max_length', '2021-04-08 21:02:24.948402+10');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (18, 'sessions', '0001_initial', '2021-04-08 21:02:25.058867+10');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (19, 'web', '0001_initial', '2021-05-22 14:39:34.509829+10');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (20, 'web', '0002_airsoftgun_type_list', '2021-05-22 14:52:58.172187+10');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (21, 'web', '0003_auto_20210522_1507', '2021-05-22 15:07:50.28006+10');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (22, 'web', '0004_auto_20210522_2034', '2021-05-22 20:34:18.61465+10');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (23, 'web', '0005_auto_20210529_1536', '2021-05-29 15:36:42.368715+10');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (24, 'web', '0006_auto_20210531_1812', '2021-05-31 18:12:40.662609+10');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (25, 'web', '0007_auto_20210531_2037', '2021-05-31 20:42:02.033781+10');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (26, 'web', '0008_auto_20210603_1936', '2021-06-03 19:36:59.879382+10');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (27, 'web', '0009_remove_airsoftgun_length', '2021-06-03 19:40:58.053113+10');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (28, 'web', '0010_auto_20210603_1946', '2021-06-03 19:46:38.275643+10');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (29, 'web', '0011_material', '2021-06-03 20:44:25.226795+10');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (30, 'web', '0012_material_ballweight_list', '2021-06-03 20:45:57.130434+10');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (31, 'web', '0013_auto_20210603_2048', '2021-06-03 20:48:53.172794+10');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (32, 'web', '0014_auto_20210603_2124', '2021-06-03 21:24:25.596044+10');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (33, 'web', '0015_auto_20210603_2127', '2021-06-03 21:27:38.131233+10');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (34, 'web', '0016_material_gas', '2021-06-03 21:37:18.674213+10');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (35, 'web', '0017_auto_20210603_2137', '2021-06-03 21:38:03.555268+10');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (36, 'web', '0018_equipment', '2021-06-05 14:51:33.30803+10');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (37, 'web', '0019_protection', '2021-06-05 15:30:24.387459+10');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (38, 'web', '0020_auto_20210605_1532', '2021-06-05 15:32:26.397501+10');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (39, 'web', '0021_electronics', '2021-06-05 16:13:50.367499+10');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (40, 'web', '0022_electronics_girbox', '2021-06-05 16:21:01.436824+10');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (41, 'web', '0023_additional', '2021-06-07 10:53:18.856551+10');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (42, 'web', '0024_finishorder', '2021-06-18 17:58:36.973888+10');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (43, 'web', '0025_auto_20210618_2202', '2021-06-18 22:02:43.893085+10');


--
-- TOC entry 3199 (class 0 OID 16903)
-- Dependencies: 218
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: thedronit
--

INSERT INTO public.django_session (session_key, session_data, expire_date) VALUES ('2xo5z1lgwd3a0wnc81a87gdqboa0r4gu', '.eJxVjDsOwjAQBe_iGlm2g3-U9JzB2vVucADZUpxUiLuTSCmgnZn33iLBupS0dp7TROIitDj9MoT85LoLekC9N5lbXeYJ5Z7Iw3Z5a8Sv69H-HRToZVsbUmjIgHUBITrKCMFHT3FEG7IFGwfWuPHAFB37kTSrARQPlvCMQXy-Bts4_g:1lUSRt:vc4Q5kDva8Anq306xzCbpUg7TzqjpcThApersZU-3RE', '2021-04-22 21:03:45.976369+10');
INSERT INTO public.django_session (session_key, session_data, expire_date) VALUES ('ntagwpue2h5iwlsctbosnx0bfhblvvts', '.eJxVjDsOwjAQBe_iGlm2g3-U9JzB2vVucADZUpxUiLuTSCmgnZn33iLBupS0dp7TROIitDj9MoT85LoLekC9N5lbXeYJ5Z7Iw3Z5a8Sv69H-HRToZVsbUmjIgHUBITrKCMFHT3FEG7IFGwfWuPHAFB37kTSrARQPlvCMQXy-Bts4_g:1lkJQV:oJ7b3ReNeO22Bff4_5sNLD-NqYrt62zpkD0KEeMZ-Yo', '2021-06-05 14:39:51.188007+10');
INSERT INTO public.django_session (session_key, session_data, expire_date) VALUES ('dw70211s1hl84qtxhu7tt6ufl0b0jpp4', '.eJxVjDsOwjAQBe_iGlm2g3-U9JzB2vVucADZUpxUiLuTSCmgnZn33iLBupS0dp7TROIitDj9MoT85LoLekC9N5lbXeYJ5Z7Iw3Z5a8Sv69H-HRToZVsbUmjIgHUBITrKCMFHT3FEG7IFGwfWuPHAFB37kTSrARQPlvCMQXy-Bts4_g:1lmrld:J6V0P56StmEnFDfI2mF9rnX11WxHeQo2fnZt_hMsMdM', '2021-06-12 15:44:13.675505+10');
INSERT INTO public.django_session (session_key, session_data, expire_date) VALUES ('ojv9ubpmihq4o8ye9m9ogdezimt5be1r', 'e30:1lnugJ:ULymY5Kg_iqE9iwsNdLhXjMwSnJupycyLq_Cfy9Nckw', '2021-06-15 13:03:03.447134+10');
INSERT INTO public.django_session (session_key, session_data, expire_date) VALUES ('kwmxxhci752qqpr36jjoee0i9yc9toru', 'e30:1lnyjY:V3SF19eJgK3EHt8fC7-Id3tvLYE7lC9o0ZxOKaW-Gtg', '2021-06-15 17:22:40.38069+10');
INSERT INTO public.django_session (session_key, session_data, expire_date) VALUES ('nmaz6i4jirdjascbgxw698qo30mrpxfn', '.eJxVjDsOwjAQBe_iGlm2g3-U9JzB2vVucADZUpxUiLuTSCmgnZn33iLBupS0dp7TROIitDj9MoT85LoLekC9N5lbXeYJ5Z7Iw3Z5a8Sv69H-HRToZVsbUmjIgHUBITrKCMFHT3FEG7IFGwfWuPHAFB37kTSrARQPlvCMQXy-Bts4_g:1ltUTG:nfHFgUYilkPzQRWrcoG66IrGnXB7Y1v4x3na0DkpmlI', '2021-06-30 22:16:38.126322+10');


--
-- TOC entry 3213 (class 0 OID 17012)
-- Dependencies: 232
-- Data for Name: web_additional; Type: TABLE DATA; Schema: public; Owner: thedronit
--

INSERT INTO public.web_additional (id, "Name", "Image", "Vendor", "Type_list", "For_gun", "N_balls", "Сurrent", "Capacity", "Voltage", "Connector", "Material", "About", "Value", "Price") VALUES (1, 'Аккумулятор Li-Po 7,4V 1450 mAh', 'material/9021e04f-4f74-11e4-ad73-94de8003c4f2_648ca8d4-3f47-11e9-b1de-000c295b5c66.jpeg', 'ASR', 'Аккумулятор', 'нет', 0, 25, 1450, '7.4', 'Mini-tamiya', '-', 'Литий-полимерный аккумулятор собственного производства. Размеры батареи: 114 x 16 x 16мм.
При выборе аккумулятора рекомендуется замерить габариты отсека под батарею у привода и сравнить эти размеры с аккумулятором.

- Более мощный АКБ для замены штатного аккумулятора
- Более легкий и компактный, по сравнению с Ni-CD/Ni-MH батареями
- Токоотдача и ресурс выше, чем у стандартных АКБ
- Повышенная скорострельность, по сравнения с базовым аккумулятором
- Лучшая работа при низких температурах, чем у Ni-CD/Ni-MH батарей

Ни в коем случае НЕЛЬЗЯ заряжать литий-полимерные батареи зарядным устройством не предназначенным для зарядки аккумуляторов типа LiPo. НЕЛЬЗЯ использовать зарядное устройство которым штатно комплектуются привода. Это гарантированно ведёт к необратимому повреждению батареи.', 10, 1220);
INSERT INTO public.web_additional (id, "Name", "Image", "Vendor", "Type_list", "For_gun", "N_balls", "Сurrent", "Capacity", "Voltage", "Connector", "Material", "About", "Value", "Price") VALUES (2, 'Аккумулятор Li-Po 11,1V 1400 mAh', 'material/1a29197b-59f5-11e4-ad73-94de8003c4f2_4e7d9fdb-a787-11e9-bee3-000c295b5c66.jpeg', 'ASR', 'Аккумулятор', 'нет', 0, 25, 1400, '11.1', 'T-type', '-', 'Литий-полимерный аккумулятор собственного производства. Размеры батареи: 185 х 22 х 22мм.
При выборе аккумулятора рекомендуется замерить габариты отсека под батарею у привода и сравнить эти размеры с аккумулятором.

- Более мощный АКБ для замены штатного аккумулятора
- Более легкий и компактный, по сравнению с Ni-CD/Ni-MH батареями
- Токоотдача и ресурс выше, чем у стандартных АКБ
- Повышенная скорострельность, по сравнения с базовым аккумулятором
- Лучшая работа при низких температурах, чем у Ni-CD/Ni-MH батарей

Ни в коем случае НЕЛЬЗЯ заряжать литий-полимерные батареи зарядным устройством не предназначенным для зарядки аккумуляторов типа LiPo. НЕЛЬЗЯ использовать зарядное устройство которым штатно комплектуются привода. Это гарантированно ведёт к необратимому повреждению батареи.', 10, 1810);
INSERT INTO public.web_additional (id, "Name", "Image", "Vendor", "Type_list", "For_gun", "N_balls", "Сurrent", "Capacity", "Voltage", "Connector", "Material", "About", "Value", "Price") VALUES (3, 'Планка боковая Cyma на АК для установки оптики', 'material/be76550f-1ea6-11e2-a116-10bf4871b40e_61e6d987-ece3-11e5-a1ad-94de8003c4f2.jpeg', 'Неизвестно', 'Внешний тюнинг', 'АК-серия', 0, 0, 0, '-', 'нет', 'Алюминиевый сплав', 'Боковая планка с RIS для АК от фирмы Cyma, Китай.
Выполнена из алюминиевого сплава, покрашена в черный цвет.
Ставится на крепление ЛХ (Ласточкин Хвост) на ствольной коробке АК, позволяет устанавливать различное навесное оборудование (прицелы, фонари, ЛЦУ).
Высота планки 20 мм
Для корректной установки необходимо отрегулировать натяжение прижимного винта по ширине планки "ласточкин хвост" на вашем приводе.', 10, 925);
INSERT INTO public.web_additional (id, "Name", "Image", "Vendor", "Type_list", "For_gun", "N_balls", "Сurrent", "Capacity", "Voltage", "Connector", "Material", "About", "Value", "Price") VALUES (4, 'Магазин механический Cyma для АК', 'material/08b078bd-1e9f-11e2-a116-10bf4871b40e_0b4a6834-cb3b-11e5-8554-94de8003c4f2.jpeg', 'Неизвестно', 'Магазин', 'АК-серия', 150, 0, 0, '-', 'нет', 'Пластик', 'Механический магазин для приводов АК-серии от фирмы CYMA, Китай.
Имитирует магазин под патроны калибра 5.45х39 (АК74С, АКС74У, АК74М).
Полностью выполнен из ударопрочного пластика.
Вместительность магазина: 150 шариков.', 10, 610);
INSERT INTO public.web_additional (id, "Name", "Image", "Vendor", "Type_list", "For_gun", "N_balls", "Сurrent", "Capacity", "Voltage", "Connector", "Material", "About", "Value", "Price") VALUES (5, 'Магазин механический Cyma для М-серии 190 шаров', 'material/b0080d96-332f-11e4-b4c4-10bf4871b40e_675742ed-f801-11e5-9a13-94de8003c4f2.jpeg', 'Неизвестно', 'Магазин', 'М-серия', 190, 0, 0, '0', 'нет', 'Сталь и пластик', 'Механический магазин для приводов M-серии от фирмы CYMA, Китай.
Корпус выполнен из стали, внутренности - из ударопрочного пластика.
Вместительность магазина: 190 шариков.', 10, 810);


--
-- TOC entry 3201 (class 0 OID 16915)
-- Dependencies: 220
-- Data for Name: web_airsoftgun; Type: TABLE DATA; Schema: public; Owner: thedronit
--

INSERT INTO public.web_airsoftgun (id, "Name", "Type_list", "Mechanism", "Price", "Vendor", "About", "Image", "Value", "Battery", "Equipment", "Girbox", "Speed", "Weight") VALUES (6, 'Карабин Tokyo Marui Mk.18 mod 1 Next Gen AEG (TM4952839176264)', 'Автомат', 'AEG', 57220, 'Tokyo Marui', 'Страйкбольная копия карабина Mk.18 mod 1 от фирмы Tokyo Marui, Япония.
Хотя на самом деле это M4 CQBR SOPMOD block II. А "mod 1" это выдумка эйрсофт-производителей.

Компания Tokyo Marui - один из самых первых в истории производитель и разработчик страйкбольного оружия. Именно инженеры ТМ разработали и воплотили в железе многие технические решения, инновационные в своё время и считающие стандартными и обязательными сейчас.
Главная особенность моделей от Marui - великолепное, почти идеальное качество всех изделий. Привода и пистолеты в базовом варианте не требуют каких-либо доработок и модификаций, по совокупности характеристик дадут фору многим другим производителям и при этом безотказно работают многие годы.

Привода линейки TM Next Generation сочетают в себе привычные качество и безотказность "классических" АЕГ от Маруя с новыми разработками - системой имитации отдачи Recoil Shock и отсечкой холостых выстрелов (по окончании шаров в магазине автомат перестаёт стрелять).

Корпус привода выполнен из алюминиевого сплава. Ствольная коробка состоит из двух половин: верхнего и нижнего ресиверов, которые соединяются двумя штифтами. К верхнему ресиверу крепятся ствол и цевьё, к нижнему - направляющая приклада и пистолетная рукоятка. Все соединения выполнены плотно и надёжно, люфты полностью отсутствуют. На крышке верхнего ресивера выполнена стандартная планка пикатинни, на которую можно установить практически любой коллиматорный или оптический прицел.

Штатные прицельные приспособления выполнены в виде складных мушки и диоптра типа KAC flip-up front sight и KAC 300m BUIS. Привод оснащён RIS цевьём типа Daniel Defense MK18 RIS II позволяющим установить дополнительные аксессуары, например тактическую рукоятку и фонарь. Цвет цевья пожалуй ближе всего к нормальному DD FDE, из всех эйрсофт реплик. Да, больше не надо пескоструить мэдбулл и перекрашивать его дюракотом.
Приклад типа crane stock регулируемый по длине, имеет 6 позиций и подщёчник для более удобной прикладки. В прикладе находится свой уникальный разъём для аккумуляторов. Пистолетная рукоятка чёрная и это хорошо, Кольт не делает А2 рукоятку в песочном, зелёном или других цветах кроме чёрного.

Внутри находится модифицированный гирбокс 2 версии, с системой имитации отдачи. Качество заводской сборки и отладки позволяет ему безотказно работать много лет без какого-либо обслуживания, при условии, что пользователь не пытается его "улучшить" или "перебрать", вообще не открывает и пользуется как есть. Камера хоп-апа модифицированная М4 типа, с увеличенным регулировочным кольцом, что позволяет супер точно настроить хоп-ап. Выполнена из высокопрочного пластика. Электрическая часть механизма способна без каких-либо модификаций работать с аккумуляторами с высокой токоотдачей, такими как литий-полимерные, напряжением 7,4В.

Комплектация: автомат, механический магазин на 82 шара, инструкция, переходник для зарядного устройства и логотип морсека внутри коробки.

Внимание!
Штатный разъем не потходит для АКБ с раъёмом Mini-tamiya и T-type, для совместимости нужна перепайка.', 'airsoftgun/fdfd2297-3026-11e9-b1de-000c295b5c66_79dc9946-70c3-11e9-b1de-000c295b5c66.jpeg', 1, 'нет', 'магазин, шарики, инструкция, шомпол', 'V2', 90, 3200);
INSERT INTO public.web_airsoftgun (id, "Name", "Type_list", "Mechanism", "Price", "Vendor", "About", "Image", "Value", "Battery", "Equipment", "Girbox", "Speed", "Weight") VALUES (7, 'Пистолет KJW Glock 18C GGBB (GP627)', 'Пистолет', 'Green Gas', 10785, 'KJW', 'Пистолет Glock 18C gen.3 от фирмы KJW, Тайвань.

Принцип действия пистолета: CO2 Gas Blowback.
Корпус пистолета выполнен из ABS-пластика, рамка из алюминиевого сплава.', 'airsoftgun/585886e9-4f55-11e8-92b7-000c295b5c66_d3cc6e56-e7ff-11e8-979a-000c295b5c66.jpeg', 10, 'нет', 'магазин, пистолет, инструкция', 'отсутствует', 100, 700);
INSERT INTO public.web_airsoftgun (id, "Name", "Type_list", "Mechanism", "Price", "Vendor", "About", "Image", "Value", "Battery", "Equipment", "Girbox", "Speed", "Weight") VALUES (4, 'Автомат Cyma АК-74М (CM040C)', 'Автомат', 'AEG', 13390, 'Cyma', 'Страйкбольный автомат АК-74М от фирмы Cyma, Китай.

Привода от CYMA отличаются высоким качеством сборки и надёжностью работы. По опыту использования в прокатных играх, привода CYMA показали высочайшую живучесть и прочность конструкции, простоту эксплуатации и обслуживания.
Данная модель заслужено пользуется высокой популярностью, как у начинающих игроков, так и у страйкболистов с большим опытом.
Корпус привода выполнен из стали и алюминиевых сплавов, что делает его легким, и в то же время достаточно прочным.

Сборка и разборка привода частично повторяет боевой аналог. Крепление на защёлках позволяет быстро снять газовую трубку и цевьё, что облегчает и ускоряет установку тактического обвеса. При этом, данное крепление надёжно фиксируется и не разбалтывается со временем. Пистолетная рукоятка пластиковая, черного цвета, складной приклад и цевьё выполнены из черного пластика.

Внутри находится гирбокс 3 версии. Данный тип гирбокса является одним из самых надёжных и простых в обслуживании и ремонте. Все части гирбокса стандартные и взаимозаменяемы с запчастями большинства других производителей. Это обеспечивает высокую ремонтопригодность и широкие возможности для тюнинга. Камера хоп-апа стандартная АК-типа, выполнена из высокопрочного пластика. Электрическая часть механизма способна без каких-либо модификаций работать с аккумуляторами высокой токоотдачи, такими как литий-полимерные, напряжением 7,4В.
Используемый тип аккумулятора: "колбаса", расположен под крышкой ствольной коробки.

(Внимание! На аккумулятор и зарядное устройство гарантия не распространяется!)', 'airsoftgun/460fed87-1dfa-11e2-9cbf-10bf4871b40e_b225fd71-e070-11e5-81ed-94de8003c4f2_1.jpeg', 0, 'NiMH 8,4 V 1100mAh (mini type)', 'магазин, шарики, зарядное устройство, инструкция, аккумулятор, автомат, шомпол', 'V3', 120, 3800);
INSERT INTO public.web_airsoftgun (id, "Name", "Type_list", "Mechanism", "Price", "Vendor", "About", "Image", "Value", "Battery", "Equipment", "Girbox", "Speed", "Weight") VALUES (5, 'Автомат Cyma АКС-74У деревянное цевьё (CM035A)', 'Автомат', 'AEG', 11390, 'Cyma', 'Страйкбольный автомат АКС-74У от фирмы Cyma, Китай.

Привода от CYMA отличаются высоким качеством сборки и надёжностью работы. По опыту использования в прокатных играх, привода CYMA показали высочайшую живучесть и прочность конструкции, простоту эксплуатации и обслуживания.
Корпус привода полностью выполнен из алюминиевых сплавов, что делает привод достаточно легким, и в то же время, более прочным, чем полностью пластиковые образцы

Сборка и разборка привода частично повторяет боевой аналог. Крепление на защёлках позволяет быстро снять газовую трубку и цевьё, что облегчает и ускоряет установку тактического обвеса. При этом, данное крепление надёжно фиксируется и не разбалтывается со временем. Часть фурнитуры (цевье, накладка газовой трубки, приклад) можно заменить за запчасти с боевого автомата.
Приклад рамочный, может складываться влево. На прикладе есть вращающаяся антабка для крепления ремня. Пистолетная рукоятка выполнена из пластика, цевьё и накладка газовой трубки из дерева. Фурнитура может быть заменена на части с боевого автомата (цевьё, накладка газовой трубки, приклад).

Внутри находится гирбокс 3 версии. Данный тип гирбокса является одним из самых надёжных и простых в обслуживании и ремонте. Все части гирбокса стандартные и взаимозаменяемы с запчастями большинства других производителей. Это обеспечивает высокую ремонтопригодность и широкие возможности для тюнинга. Камера хоп-апа стандартная АК-типа, выполнена из высокопрочного пластика. Электрическая часть механизма способна без каких-либо модификаций работать с аккумуляторами с высокой токоотдачей, такими как литий-полимерные, напряжением 7,4В.
Используемый тип аккумулятора: "колбаса", расположение под крышкой ствольной коробки.

(Внимание! На аккумулятор и зарядное устройство гарантия не распространяется!)', 'airsoftgun/ed65feea-ad58-11e5-8da8-94de8003c4f2_c9495a26-b3af-11ea-a7b5-000c295b5c66.jpeg', 12, 'NiMH 8,4 V 1100mAh (mini type)', 'магазин, шарики, инструкция, аккумулятор, зарядное устройство, шомпол', 'V3', 120, 2800);


--
-- TOC entry 3211 (class 0 OID 17000)
-- Dependencies: 230
-- Data for Name: web_electronics; Type: TABLE DATA; Schema: public; Owner: thedronit
--

INSERT INTO public.web_electronics (id, "Name", "Image", "Vendor", "Type_list", "Girbox_equipment", "Motor_type", "Stem_length", "Seat_type", "Spring", "Cylinder_volume", "For_gun", "Material", "About", "Value", "Price", "Girbox") VALUES (1, 'Стенки гирбокса ZC Airsoft алюминиевые V.3', 'material/8e9b7aaf-c2de-11e2-ba5e-10bf4871b40e_f1257a03-4412-11e6-a730-94de8003c4f2_apBbV0r.jpeg', 'Неизвестно', 'Гирбокс', 'Стенки', 'нет', 'нет', 'нет', 0, '0', 'нет', 'Авиационный алюминий', 'Стенки гирбокса 3 версии от фирмы ZC Airsoft, Китай.
Выполнены из авиационного алюминия методом фрезеровки. Обладают высочайшей механической прочностью, отлично подходят для сборки мощного тюнинга.
Посадочные места под втулки 8мм.
Комплектация: стенки гирбокса, 8мм подшипники.', 10, 9415, 'V3');
INSERT INTO public.web_electronics (id, "Name", "Image", "Vendor", "Type_list", "Girbox_equipment", "Motor_type", "Stem_length", "Seat_type", "Spring", "Cylinder_volume", "For_gun", "Material", "About", "Value", "Price", "Girbox") VALUES (2, 'Стенки LCT для гирбокса 2 версий', 'material/d3a01632-82f4-11eb-b1fa-00505687ed93_8f3ed031-91d9-11eb-8fb2-00505687ed93.jpeg', 'Неизвестно', 'Гирбокс', 'Стенки', 'нет', 'нет', 'нет', 0, '0', 'нет', 'Алюминиевый сплав', 'Стенки для гирбокса 2 версий от фирмы LCT, Тайвань.

Предназначены для установки в привода M-серии
Комплектация: стенки гирбокса, направляющая пружины, фиксирующие винты.', 10, 5305, 'V2');
INSERT INTO public.web_electronics (id, "Name", "Image", "Vendor", "Type_list", "Girbox_equipment", "Motor_type", "Stem_length", "Seat_type", "Spring", "Cylinder_volume", "For_gun", "Material", "About", "Value", "Price", "Girbox") VALUES (3, 'Мотор Guarder High Speed Revolution короткий', 'material/dda77bd0-6a31-11e3-bd51-d43d7e97909d_94fff530-0c46-11e6-ba99-94de8003c4f2.jpeg', 'Неизвестно', 'Мотор', '-', 'High Torque', 'Короткий', 'нет', 0, '0', 'нет', 'Металл', 'Мотор High Speed Revolution короткий от фирмы Guarder, Тайвань.
Предназначен для использования с гирбоксами 3/6/7/пулемётного "кирпич" типов.
Установка данного мотора позволяет увеличить скорострельность привода.
Рекомендуется использовать с пружинами, мощностью не более SP110.
Окно посадки пиньона О-тип.', 10, 2985, 'отсутствует');
INSERT INTO public.web_electronics (id, "Name", "Image", "Vendor", "Type_list", "Girbox_equipment", "Motor_type", "Stem_length", "Seat_type", "Spring", "Cylinder_volume", "For_gun", "Material", "About", "Value", "Price", "Girbox") VALUES (4, 'Мотор Guarder Infinite Torque-Up длинный', 'material/dda77bbd-6a31-11e3-bd51-d43d7e97909d_e301a019-f648-11e5-a1ad-94de8003c4f2.jpeg', 'Неизвестно', 'Мотор', '-', 'High Torque', 'Длинный', 'нет', 0, '0', 'нет', 'Металл', 'Мотор Infinite Torque-Up длинный от фирмы Guarder, Тайвань.
Предназначен для использования с гирбоксами 2 / 2,5 типа.
Установка данного высокооборотистого мотора позволяет взводить более мощные пружины, до SP170 включительно.
Рекомендуется использовать вместе с torque-up шестернями.
Окно посадки пиньона О-тип.', 10, 3816, 'отсутствует');
INSERT INTO public.web_electronics (id, "Name", "Image", "Vendor", "Type_list", "Girbox_equipment", "Motor_type", "Stem_length", "Seat_type", "Spring", "Cylinder_volume", "For_gun", "Material", "About", "Value", "Price", "Girbox") VALUES (5, 'Пружина Guarder SP130', 'material/2eec1e21-13d2-11e4-be86-645a04a2d6ac_885aa535-9103-11e5-8fd5-94de8003c4f2.jpeg', 'Неизвестно', 'Пружина', '-', 'нет', 'нет', 'AEG', 130, '0', 'нет', 'Сталь', 'Пружина SP130 от фирмы Guarder, Тайвань.
Средняя начальная скорость вылета шара - 145 м/с.
Предназначена для использования во всех типах AEG.
Могут возникнуть проблемы с установкой в гирбоксы v.2/3. Лечится установкой направляющей пружины без подшипника.', 10, 1260, 'отсутствует');
INSERT INTO public.web_electronics (id, "Name", "Image", "Vendor", "Type_list", "Girbox_equipment", "Motor_type", "Stem_length", "Seat_type", "Spring", "Cylinder_volume", "For_gun", "Material", "About", "Value", "Price", "Girbox") VALUES (6, 'Цилиндр ZC Airsoft алюминиевый', 'material/da21d219-a32d-11e2-81b7-10bf4871b40e_e0633793-e157-11e6-8035-94de8003c4f2.jpeg', 'Неизвестно', 'Цилиндр', '-', 'нет', 'нет', 'нет', 0, 'Полный', 'нет', 'Алюминий', 'Цилиндр от фирмы ZC Airsoft, Гонконг.
Изготовлен из алюминия.
Предназначен для установки в стандартные гирбоксы v.2/3.
Подходит для установки в привода с длиной стволика 400 - 509мм', 10, 290, 'отсутствует');
INSERT INTO public.web_electronics (id, "Name", "Image", "Vendor", "Type_list", "Girbox_equipment", "Motor_type", "Stem_length", "Seat_type", "Spring", "Cylinder_volume", "For_gun", "Material", "About", "Value", "Price", "Girbox") VALUES (7, 'Камера хоп-апа ZC Airsoft фрезерованная алюминиевая для АК-серии', 'material/45dc4adf-6710-11e3-a0e0-edb35dd9a7a2_3e0f66ec-e987-11e9-9fce-000c295b5c66.jpeg', 'Неизвестно', 'Камера хоп-апа', '-', 'нет', 'нет', 'AEG', 0, '0', 'АК-серия', 'Алюминий', 'Камера хоп-апа фрезерованная алюминиевая для АК-серии от фирмы ZC Airsoft, Гонконг.
Изготовлена из авиационного алюминия методом фрезеровки, за счёт высокого качества и точности изготовления, обеспечивает лучшее позиционирование шара и кучность боя.
Предназначена для установки на привода с длинным ноззлом АК-серий.', 20, 2120, 'отсутствует');
INSERT INTO public.web_electronics (id, "Name", "Image", "Vendor", "Type_list", "Girbox_equipment", "Motor_type", "Stem_length", "Seat_type", "Spring", "Cylinder_volume", "For_gun", "Material", "About", "Value", "Price", "Girbox") VALUES (8, 'Камера хоп-апа LCT для М4/М16', 'material/8fbe1f39-f4c4-11e5-a1ad-94de8003c4f2_71a7909b-2893-11e6-9685-94de8003c4f2.jpeg', 'Неизвестно', 'Камера хоп-апа', '-', 'нет', 'нет', 'AEG', 0, '0', 'М-серия', 'Пластик', 'Камера хоп-апа для М4/М16 от фирмы LCT, Тайвань.
Изготовлена из пластика.
Предназначена для установки в М4/М16 серию от LCT.', 10, 1020, 'отсутствует');


--
-- TOC entry 3207 (class 0 OID 16971)
-- Dependencies: 226
-- Data for Name: web_equipment; Type: TABLE DATA; Schema: public; Owner: thedronit
--

INSERT INTO public.web_equipment (id, "Name", "Image", "Vendor", "Type_list", "Color", "Pouch", "Holster", "Material", "About", "Value", "Price") VALUES (1, 'Нагрудник БРЭДЛИ для магазинов АК/М4 облегченный', 'material/ikea.jpeg', 'ASR', 'Разгрузочная система', 'Разноцветный', 'нет', 'нет', 'Оригинальный пакет "IKEA"', 'Ультралегкий нагрудник БРЭДЛИ от фирмы ASR, Россия.

В отличии от большинства современных разгрузочных систем, нагрудник БРЭДЛИ выполнен не модульным, а с фиксированными карманами. Однако при этом, он является универсальным и может подойти под широкий спектр задач пользователя.
На нагруднике расположены 4 подсумка типа "фастмаг", предназначенных ждя переноски 4 магазинов АК, либо 8 магазинов М4.

Нагрудник имеет единый размер S-M. Для подгонки на фигуре можно регулировать длину поясной утяжки и плечевых лямок. Диапазон регулировок: примерно от 40 до 52 размера по обхвату корпуса и примерно от 165 до 180см роста.
Нагрудник БРЭДЛИ может использоваться совместно с боевым поясом (варбелтом), не перекрывая доступ к размещённым на нём подсумкам.

Материалы:
- основа из оригинального пакета "IKEA"
- фурнитура Apri
- армированные полиэфирные нитки
- стропа из оригинального пакета "IKEA"

И в завершение, небольшая историческая справка:
Первые версии данного нагрудника начали появляться ещё в 2016 году. Данное изделие имеет максимально низкопрофильный и минималистичный дизайн, при этом может быть изготовленно из подручных материалов кем угодно. Нагрудник позволяет переносить минимальный набор снаряжения, необходимого для страйкбольных игр.
В 2017 году данные изделия уже были замечены на российских эйрсофт апираторах..
Компания ASR всегда старется идти в ногу со временем и предлгает свой вариант данного чест-рига, промышленного производства.', 10, 975);
INSERT INTO public.web_equipment (id, "Name", "Image", "Vendor", "Type_list", "Color", "Pouch", "Holster", "Material", "About", "Value", "Price") VALUES (2, 'Подсумок ASR гранатный одинарный с фастексом MC', 'material/356fa550-e5f4-11e5-a1ad-94de8003c4f2_d5117be4-5a17-11e6-8f3c-94de8003c4f2.jpeg', 'ASR', 'Подсумок', 'Multicam', 'Гранатный', 'нет', 'Kodra 1000D', 'Одинарный гранатный подсумок с клапаном на фастексе от фирмы ASR, Россия.

Материалы изготовления: ткань Kodra пр-ва р. Корея в расцветке Multicam, стропа пр-ва Россия в расцветке Tan, фурнитура фирмы Apri, армированные полиэфирные нитки.

Позволяет переносить одну гранату или предмет сходных габаритов. Закрывается на клапан с застёжкой фастексом.
Благодаря этому, застёжку можно безшумно открыть и закрыть, а так же регулировать длину клапана под разные типы гранат (от TAG-67 до FBG-2 или РГС)

Устанавливается на стандартное крепление типа "молле", занимая 2 ячейки в ширину и 2 в высоту. Крепежные стропы вшитые и имеют крепление без клипс. В нижней части есть отверстие с люверсом для слива попавшей внутрь воды.', 10, 465);


--
-- TOC entry 3215 (class 0 OID 17023)
-- Dependencies: 234
-- Data for Name: web_finishorder; Type: TABLE DATA; Schema: public; Owner: thedronit
--

INSERT INTO public.web_finishorder (id, "FIO", "Phone", "Email", "Address", "Comment", "Order", "Price", "Status", "Delivery") VALUES (13, 'Михал Палыч Терентьев', '89241187653', 'andreykae28@gmail.com', 'Улица: Lenina
Дом: 53
Кв.: 49

Почтовый индекс: 680020', 'test', '1) Шары G&G 0.28гр. 3500шт. белые | Кол-во: 2 | за 1: 835р. | Сумма: 1670р 
2) Автомат Cyma АКС-74У деревянное цевьё (CM035A) | Кол-во: 1 | за 1: 11390р. | Сумма: 11390р 
3) Пистолет KJW Glock 18C GGBB (GP627) | Кол-во: 1 | за 1: 10785р. | Сумма: 10785р 
4) Стенки LCT для гирбокса 2 версий | Кол-во: 2 | за 1: 5305р. | Сумма: 10610р', 34455, 'Готово к выдаче', 'Самовывоз');
INSERT INTO public.web_finishorder (id, "FIO", "Phone", "Email", "Address", "Comment", "Order", "Price", "Status", "Delivery") VALUES (14, 'Михал Палыч Терентьев', '89241187653', 'andreykae28@gmail.com', 'Улица: -
Дом: -
Кв.: -

Почтовый индекс: 680020', '123', '1) Пистолет KJW Glock 18C GGBB (GP627) | Кол-во: 1 | за 1: 10785р. | Сумма: 10785р', 10785, 'Выдано', 'Самовывоз');
INSERT INTO public.web_finishorder (id, "FIO", "Phone", "Email", "Address", "Comment", "Order", "Price", "Status", "Delivery") VALUES (16, 'Ерофеев Андрей Евгеньевич', '89241187653', 'andreykae28@gmail.com', 'Улица: Ленина
Дом: 53
Кв.: 49

Почтовый индекс: 680020', 'test message
', '1) Автомат Cyma АКС-74У деревянное цевьё (CM035A) | Кол-во: 1 | за 1: 11390р. | Сумма: 11390р 
2) Пистолет KJW Glock 18C GGBB (GP627) | Кол-во: 1 | за 1: 10785р. | Сумма: 10785р 
3) Шары AimTop 0.25гр. 3800шт. белые | Кол-во: 3 | за 1: 620р. | Сумма: 1860р 
', 24035, 'Обрабатывается', 'Доставка');
INSERT INTO public.web_finishorder (id, "FIO", "Phone", "Email", "Address", "Comment", "Order", "Price", "Status", "Delivery") VALUES (15, 'Ерофеев Андрей Евгеньевич', '88000000000', 'nomail@mail.ru', 'Улица: Пушкина
Дом: 1
Кв.: 1

Почтовый индекс: 680020', 'Нужно срочно!', '1) Автомат Cyma АКС-74У деревянное цевьё (CM035A) | Кол-во: 1 | за 1: 11390р. | Сумма: 11390р 
2) Шары G&G 0.28гр. 3500шт. белые | Кол-во: 1 | за 1: 835р. | Сумма: 835р 
3) Магазин механический Cyma для АК | Кол-во: 5 | за 1: 610р. | Сумма: 3050р 
4) Аккумулятор Li-Po 7,4V 1450 mAh | Кол-во: 1 | за 1: 1220р. | Сумма: 1220р 
', 16495, 'Обрабатывается', 'Самовывоз');


--
-- TOC entry 3205 (class 0 OID 16955)
-- Dependencies: 224
-- Data for Name: web_material; Type: TABLE DATA; Schema: public; Owner: thedronit
--

INSERT INTO public.web_material (id, "Name", "Image", "Vendor", "Type_list", "BallWeight", "Price", "Value", "About", "Gas") VALUES (2, 'Шары G&G 0.28гр. 3500шт. белые', 'material/gg28.jpeg', 'G&G', 'Шар', '0.28', 835, 10, 'Пакет шаров G&G, Тайвань.
Масса шара - 0.28гр., диаметр - 5.95мм. Цвет белый.
Общая масса упаковки - 1кг, шаров в упаковке - 3500шт. (примерно).
Тяжелые шары с массой 0.28 гр. подходят для стрельбы из приводов со скоростью вылета шара примерно 130-140 м\с. Они летят медленнее более легких шаров, зато на их траекторию меньше воздействуют такие факторы, как ветер, трава, листья. Также считается, что более тяжелые шары летят немного дальше легких.', 'нет');
INSERT INTO public.web_material (id, "Name", "Image", "Vendor", "Type_list", "BallWeight", "Price", "Value", "About", "Gas") VALUES (1, 'Шары G&G 0.25гр. 4000шт. белые', 'material/gg25.jpeg', 'G&G', 'Шар', '0.25', 775, 0, 'Пакет шаров G&G, Тайвань.
Масса шара - 0.25гр., диаметр - 5.95мм. Цвет белый.
Общая масса упаковки - 1.1Кг, шаров в упаковке - 4000шт. (примерно).
Шары с массой 0.25 гр. подходят для стрельбы из приводов со скоростью вылета шара 120-130 м\с и являются оптимальным выбором для пользователей "базовых" приводов.', 'нет');
INSERT INTO public.web_material (id, "Name", "Image", "Vendor", "Type_list", "BallWeight", "Price", "Value", "About", "Gas") VALUES (5, 'Green Gas FL-Airsoft 1000мл.', 'material/1000.jpeg', 'FL-Airsoft', 'Газ', 'нет', 900, 21, 'Баллон с Green Gas от фирмы FL Airsoft, Россия.
Объем газа в баллоне - 900 мл
Масса сжиженного газа - 450 гр
Давление 120 PSI
Газ состоит из монокомпонентного пропана высокой очистки и констистентной силиконой смазки.
Предназначен для использования в любом совместимом c данным типом газа страйкбольном оборудовании (пистолеты, TAG, гранаты).', 'GreenGas');
INSERT INTO public.web_material (id, "Name", "Image", "Vendor", "Type_list", "BallWeight", "Price", "Value", "About", "Gas") VALUES (4, 'Green Gas FL-Airsoft 650мл.', 'material/650.jpeg', 'FL-Airsoft', 'Газ', 'нет', 630, 0, 'Баллон с Green Gas от фирмы FL Airsoft, Россия.
Объем газа в баллоне - 600 мл
Масса сжиженного газа - 300 гр
Давление 120 PSI
Газ состоит из монокомпонентного пропана высокой очистки и констистентной силиконой смазки.
Предназначен для использования в любом совместимом c данным типом газа страйкбольном оборудовании (пистолеты, TAG, гранаты).', 'GreenGas');
INSERT INTO public.web_material (id, "Name", "Image", "Vendor", "Type_list", "BallWeight", "Price", "Value", "About", "Gas") VALUES (3, 'Шары AimTop 0.25гр. 3800шт. белые', 'material/aim25.jpeg', 'AimTop', 'Шар', '0.25', 620, 21, 'Пакет шаров AimTop, Тайвань.
Масса шара - 0.25гр., диаметр - 5.95мм. Цвет белый.
Общая масса упаковки - 1.1Кг, шаров в упаковке - 3800шт. (примерно).
Шары с массой 0.25 гр. подходят для стрельбы из приводов со скоростью вылета шара 120-130 м\с и являются оптимальным выбором для пользователей "базовых" приводов.', 'нет');


--
-- TOC entry 3203 (class 0 OID 16935)
-- Dependencies: 222
-- Data for Name: web_order; Type: TABLE DATA; Schema: public; Owner: thedronit
--



--
-- TOC entry 3209 (class 0 OID 16982)
-- Dependencies: 228
-- Data for Name: web_protection; Type: TABLE DATA; Schema: public; Owner: thedronit
--

INSERT INTO public.web_protection (id, "Name", "Image", "Vendor", "Type_list", "Color", "Weight", "Glasses_type", "Material", "About", "Value", "Price") VALUES (1, 'Шлем FMA Ops-Core FAST Maritime DE', 'material/57fc4f0a-ec84-11e7-bb39-000c295b5c66_a77a85bc-874d-11e8-99ce-000c295b5c66.jpeg', 'FMA', 'Шлем', 'Coyote Brown', 854, 'нет', 'Нейлон', 'Модель шлема Ops-Core FAST Maritime от фирмы FMA, Гонконг.

Колокол шлема выполнен из нейлона, внутри установлены мягкие амортизирующие подушки на велкро.
На шлеме установлены: крепление для прибора ночного видения, направляющие для установки дополнительного оборудования (нашлемного фонаря, экшн-камеры и т.д.) и панели с липучкой "велкро"
Подвесная система OCC Dial-liner kit полностью регулируется и позволяет подогнать шлем под практически любого пользователя. Так же шлем удобен для работы с активными наушниками.
Размеры шлемов:
L/XL- 59-61
M/L- 56-59.', 12, 4600);
INSERT INTO public.web_protection (id, "Name", "Image", "Vendor", "Type_list", "Color", "Weight", "Glasses_type", "Material", "About", "Value", "Price") VALUES (2, 'Маска защитная WoSporT с двойным ремнём BK', 'material/9a82025e-00d4-11e4-99f4-d43d7e97909d_3b853785-f708-11e5-9a13-94de8003c4f2.jpeg', 'Неизвестно', 'Маска', 'Черный', 0, 'нет', 'Металл', 'Маска защитная на нижнюю часть лица от фирмы WoSporT, Китай.
Изготовлена нейлона и жестяной сетки.
Предназначена для защиты нижней части лица от травм.
Крепится на ремне с регулировкой до 60 размера.
Цвет BK.', 10, 700);
INSERT INTO public.web_protection (id, "Name", "Image", "Vendor", "Type_list", "Color", "Weight", "Glasses_type", "Material", "About", "Value", "Price") VALUES (3, 'Очки защитные WoSporT открытые BK', 'material/78784ea6-d830-11e4-ad37-94de8003c4f2_5ffe678b-3eb0-11e6-bb65-94de8003c4f2.jpeg', 'Неизвестно', 'Очки', 'Черный', 0, 'Открытые', 'Поликарбонат', 'Очки защитные от фирмы WoSporT, Китай.
Линза выполнена из поликарбоната, оправа пластиковая.
Предназначены для игры в страйкбол.

Линза выдерживает попадание шара весом 0,2г на скоростях до 120м/с.

Внимание! Защитные характеристики снаряжения не гарантируют 100% защиты от попадания шаров и возможности получения травм. Защитные очки считаются исполнившим свою прямую функцию по защите, если они остановили или замедлили движение шара (поглотив часть кинетической энергии), смягчив его попадание (независимо от деформаций полученных очками).', 10, 665);
INSERT INTO public.web_protection (id, "Name", "Image", "Vendor", "Type_list", "Color", "Weight", "Glasses_type", "Material", "About", "Value", "Price") VALUES (4, 'Очки защитные WoSporT Bolle X800 BK', 'material/788e44bf-1765-11e6-a43e-94de8003c4f2_788e44ec-1765-11e6-a43e-94de8003c4f2.jpeg', 'Неизвестно', 'Очки', 'Черный', 0, 'Закрытые', 'Поликарбонат', 'Очки защитные Bolle x800 от фирмы WoSporT, Китай.
Линзы выполнены из поликарбоната, оправа пластиковая.
Предназначены для игры в страйкбол.

Оправа цельная, выполнена из упругого амортизирующего пластика, с возможностью быстрой смены линзы. Материал линзы - поликарбонат, толщиной 2,2мм.
Очки регулируются по обхвату на любой размер головы.

Цвет: BK.

Внимание! Защитные характеристики снаряжения не гарантируют 100% защиты от попадания шаров и возможности получения травм. Защитные очки считаются исполнившими свою прямую функцию по защите, если они остановили или замедлили движение шара (поглотив часть кинетической энергии), смягчив его попадание (независимо от деформаций полученных очками).', 10, 925);


--
-- TOC entry 3238 (class 0 OID 0)
-- Dependencies: 206
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: thedronit
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- TOC entry 3239 (class 0 OID 0)
-- Dependencies: 208
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: thedronit
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- TOC entry 3240 (class 0 OID 0)
-- Dependencies: 204
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: thedronit
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 56, true);


--
-- TOC entry 3241 (class 0 OID 0)
-- Dependencies: 212
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: thedronit
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- TOC entry 3242 (class 0 OID 0)
-- Dependencies: 210
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: thedronit
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 1, true);


--
-- TOC entry 3243 (class 0 OID 0)
-- Dependencies: 214
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: thedronit
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- TOC entry 3244 (class 0 OID 0)
-- Dependencies: 216
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: thedronit
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 125, true);


--
-- TOC entry 3245 (class 0 OID 0)
-- Dependencies: 202
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: thedronit
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 14, true);


--
-- TOC entry 3246 (class 0 OID 0)
-- Dependencies: 200
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: thedronit
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 43, true);


--
-- TOC entry 3247 (class 0 OID 0)
-- Dependencies: 231
-- Name: web_additional_id_seq; Type: SEQUENCE SET; Schema: public; Owner: thedronit
--

SELECT pg_catalog.setval('public.web_additional_id_seq', 5, true);


--
-- TOC entry 3248 (class 0 OID 0)
-- Dependencies: 219
-- Name: web_airsoftgun_id_seq; Type: SEQUENCE SET; Schema: public; Owner: thedronit
--

SELECT pg_catalog.setval('public.web_airsoftgun_id_seq', 7, true);


--
-- TOC entry 3249 (class 0 OID 0)
-- Dependencies: 229
-- Name: web_electronics_id_seq; Type: SEQUENCE SET; Schema: public; Owner: thedronit
--

SELECT pg_catalog.setval('public.web_electronics_id_seq', 8, true);


--
-- TOC entry 3250 (class 0 OID 0)
-- Dependencies: 225
-- Name: web_equipment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: thedronit
--

SELECT pg_catalog.setval('public.web_equipment_id_seq', 2, true);


--
-- TOC entry 3251 (class 0 OID 0)
-- Dependencies: 233
-- Name: web_finishorder_id_seq; Type: SEQUENCE SET; Schema: public; Owner: thedronit
--

SELECT pg_catalog.setval('public.web_finishorder_id_seq', 16, true);


--
-- TOC entry 3252 (class 0 OID 0)
-- Dependencies: 223
-- Name: web_material_id_seq; Type: SEQUENCE SET; Schema: public; Owner: thedronit
--

SELECT pg_catalog.setval('public.web_material_id_seq', 5, true);


--
-- TOC entry 3253 (class 0 OID 0)
-- Dependencies: 221
-- Name: web_order_id_seq; Type: SEQUENCE SET; Schema: public; Owner: thedronit
--

SELECT pg_catalog.setval('public.web_order_id_seq', 146, true);


--
-- TOC entry 3254 (class 0 OID 0)
-- Dependencies: 227
-- Name: web_protection_id_seq; Type: SEQUENCE SET; Schema: public; Owner: thedronit
--

SELECT pg_catalog.setval('public.web_protection_id_seq', 4, true);


--
-- TOC entry 2992 (class 2606 OID 16901)
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: thedronit
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- TOC entry 2997 (class 2606 OID 16828)
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: thedronit
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- TOC entry 3000 (class 2606 OID 16791)
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: thedronit
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 2994 (class 2606 OID 16781)
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: thedronit
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- TOC entry 2987 (class 2606 OID 16819)
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: thedronit
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- TOC entry 2989 (class 2606 OID 16773)
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: thedronit
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- TOC entry 3008 (class 2606 OID 16809)
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: thedronit
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- TOC entry 3011 (class 2606 OID 16843)
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: thedronit
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- TOC entry 3002 (class 2606 OID 16799)
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: thedronit
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- TOC entry 3014 (class 2606 OID 16817)
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: thedronit
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 3017 (class 2606 OID 16857)
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: thedronit
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- TOC entry 3005 (class 2606 OID 16895)
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: thedronit
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- TOC entry 3020 (class 2606 OID 16881)
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: thedronit
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- TOC entry 2982 (class 2606 OID 16765)
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: thedronit
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- TOC entry 2984 (class 2606 OID 16763)
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: thedronit
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- TOC entry 2980 (class 2606 OID 16755)
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: thedronit
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- TOC entry 3024 (class 2606 OID 16910)
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: thedronit
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- TOC entry 3039 (class 2606 OID 17020)
-- Name: web_additional web_additional_pkey; Type: CONSTRAINT; Schema: public; Owner: thedronit
--

ALTER TABLE ONLY public.web_additional
    ADD CONSTRAINT web_additional_pkey PRIMARY KEY (id);


--
-- TOC entry 3027 (class 2606 OID 16920)
-- Name: web_airsoftgun web_airsoftgun_pkey; Type: CONSTRAINT; Schema: public; Owner: thedronit
--

ALTER TABLE ONLY public.web_airsoftgun
    ADD CONSTRAINT web_airsoftgun_pkey PRIMARY KEY (id);


--
-- TOC entry 3037 (class 2606 OID 17008)
-- Name: web_electronics web_electronics_pkey; Type: CONSTRAINT; Schema: public; Owner: thedronit
--

ALTER TABLE ONLY public.web_electronics
    ADD CONSTRAINT web_electronics_pkey PRIMARY KEY (id);


--
-- TOC entry 3033 (class 2606 OID 16979)
-- Name: web_equipment web_equipment_pkey; Type: CONSTRAINT; Schema: public; Owner: thedronit
--

ALTER TABLE ONLY public.web_equipment
    ADD CONSTRAINT web_equipment_pkey PRIMARY KEY (id);


--
-- TOC entry 3041 (class 2606 OID 17031)
-- Name: web_finishorder web_finishorder_pkey; Type: CONSTRAINT; Schema: public; Owner: thedronit
--

ALTER TABLE ONLY public.web_finishorder
    ADD CONSTRAINT web_finishorder_pkey PRIMARY KEY (id);


--
-- TOC entry 3031 (class 2606 OID 16960)
-- Name: web_material web_material_pkey; Type: CONSTRAINT; Schema: public; Owner: thedronit
--

ALTER TABLE ONLY public.web_material
    ADD CONSTRAINT web_material_pkey PRIMARY KEY (id);


--
-- TOC entry 3029 (class 2606 OID 16940)
-- Name: web_order web_order_pkey; Type: CONSTRAINT; Schema: public; Owner: thedronit
--

ALTER TABLE ONLY public.web_order
    ADD CONSTRAINT web_order_pkey PRIMARY KEY (id);


--
-- TOC entry 3035 (class 2606 OID 16990)
-- Name: web_protection web_protection_pkey; Type: CONSTRAINT; Schema: public; Owner: thedronit
--

ALTER TABLE ONLY public.web_protection
    ADD CONSTRAINT web_protection_pkey PRIMARY KEY (id);


--
-- TOC entry 2990 (class 1259 OID 16902)
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: thedronit
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- TOC entry 2995 (class 1259 OID 16839)
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: thedronit
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- TOC entry 2998 (class 1259 OID 16840)
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: thedronit
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- TOC entry 2985 (class 1259 OID 16825)
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: thedronit
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- TOC entry 3006 (class 1259 OID 16855)
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: thedronit
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- TOC entry 3009 (class 1259 OID 16854)
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: thedronit
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- TOC entry 3012 (class 1259 OID 16869)
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: thedronit
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- TOC entry 3015 (class 1259 OID 16868)
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: thedronit
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- TOC entry 3003 (class 1259 OID 16896)
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: thedronit
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- TOC entry 3018 (class 1259 OID 16892)
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: thedronit
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- TOC entry 3021 (class 1259 OID 16893)
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: thedronit
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- TOC entry 3022 (class 1259 OID 16912)
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: thedronit
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- TOC entry 3025 (class 1259 OID 16911)
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: thedronit
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- TOC entry 3044 (class 2606 OID 16834)
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: thedronit
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3043 (class 2606 OID 16829)
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: thedronit
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3042 (class 2606 OID 16820)
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: thedronit
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3046 (class 2606 OID 16849)
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: thedronit
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3045 (class 2606 OID 16844)
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: thedronit
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3048 (class 2606 OID 16863)
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: thedronit
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3047 (class 2606 OID 16858)
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: thedronit
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3049 (class 2606 OID 16882)
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: thedronit
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3050 (class 2606 OID 16887)
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: thedronit
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


-- Completed on 2021-07-07 14:02:47

--
-- PostgreSQL database dump complete
--

