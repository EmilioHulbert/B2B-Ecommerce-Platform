--
-- PostgreSQL database dump
--

-- Dumped from database version 14.18 (Ubuntu 14.18-0ubuntu0.22.04.1)
-- Dumped by pg_dump version 14.18 (Ubuntu 14.18-0ubuntu0.22.04.1)

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
-- Name: account_emailaddress; Type: TABLE; Schema: public; Owner: b2b_user
--

CREATE TABLE public.account_emailaddress (
    id integer NOT NULL,
    email character varying(254) NOT NULL,
    verified boolean NOT NULL,
    "primary" boolean NOT NULL,
    user_id bigint NOT NULL
);


ALTER TABLE public.account_emailaddress OWNER TO b2b_user;

--
-- Name: account_emailaddress_id_seq; Type: SEQUENCE; Schema: public; Owner: b2b_user
--

CREATE SEQUENCE public.account_emailaddress_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.account_emailaddress_id_seq OWNER TO b2b_user;

--
-- Name: account_emailaddress_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: b2b_user
--

ALTER SEQUENCE public.account_emailaddress_id_seq OWNED BY public.account_emailaddress.id;


--
-- Name: account_emailconfirmation; Type: TABLE; Schema: public; Owner: b2b_user
--

CREATE TABLE public.account_emailconfirmation (
    id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    sent timestamp with time zone,
    key character varying(64) NOT NULL,
    email_address_id integer NOT NULL
);


ALTER TABLE public.account_emailconfirmation OWNER TO b2b_user;

--
-- Name: account_emailconfirmation_id_seq; Type: SEQUENCE; Schema: public; Owner: b2b_user
--

CREATE SEQUENCE public.account_emailconfirmation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.account_emailconfirmation_id_seq OWNER TO b2b_user;

--
-- Name: account_emailconfirmation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: b2b_user
--

ALTER SEQUENCE public.account_emailconfirmation_id_seq OWNED BY public.account_emailconfirmation.id;


--
-- Name: auth_app_clientprofile; Type: TABLE; Schema: public; Owner: b2b_user
--

CREATE TABLE public.auth_app_clientprofile (
    id bigint NOT NULL,
    business_name character varying(256) NOT NULL,
    business_name_ar character varying(256),
    business_name_fr character varying(256),
    business_name_de character varying(256),
    business_name_en character varying(256),
    slug character varying(50),
    business_description text NOT NULL,
    business_description_ar text,
    business_description_fr text,
    business_description_de text,
    business_description_en text,
    country character varying(256) NOT NULL,
    country_ar character varying(256),
    country_fr character varying(256),
    country_de character varying(256),
    country_en character varying(256),
    country_code character varying(20) NOT NULL,
    country_code_ar character varying(20),
    country_code_fr character varying(20),
    country_code_de character varying(20),
    country_code_en character varying(20),
    city character varying(256) NOT NULL,
    city_ar character varying(256),
    city_fr character varying(256),
    city_de character varying(256),
    city_en character varying(256),
    mobile_user character varying(20) NOT NULL,
    mobile_user_ar character varying(20),
    mobile_user_fr character varying(20),
    mobile_user_de character varying(20),
    mobile_user_en character varying(20),
    vat_number character varying(20),
    legal_etity_identifier character varying(256),
    website character varying(200),
    customer_id character varying(30),
    image character varying(100) NOT NULL,
    user_id bigint NOT NULL
);


ALTER TABLE public.auth_app_clientprofile OWNER TO b2b_user;

--
-- Name: auth_app_clientprofile_id_seq; Type: SEQUENCE; Schema: public; Owner: b2b_user
--

CREATE SEQUENCE public.auth_app_clientprofile_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_app_clientprofile_id_seq OWNER TO b2b_user;

--
-- Name: auth_app_clientprofile_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: b2b_user
--

ALTER SEQUENCE public.auth_app_clientprofile_id_seq OWNED BY public.auth_app_clientprofile.id;


--
-- Name: auth_app_clientprofile_team; Type: TABLE; Schema: public; Owner: b2b_user
--

CREATE TABLE public.auth_app_clientprofile_team (
    id bigint NOT NULL,
    clientprofile_id bigint NOT NULL,
    user_id bigint NOT NULL
);


ALTER TABLE public.auth_app_clientprofile_team OWNER TO b2b_user;

--
-- Name: auth_app_clientprofile_team_id_seq; Type: SEQUENCE; Schema: public; Owner: b2b_user
--

CREATE SEQUENCE public.auth_app_clientprofile_team_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_app_clientprofile_team_id_seq OWNER TO b2b_user;

--
-- Name: auth_app_clientprofile_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: b2b_user
--

ALTER SEQUENCE public.auth_app_clientprofile_team_id_seq OWNED BY public.auth_app_clientprofile_team.id;


--
-- Name: auth_app_supportprofile; Type: TABLE; Schema: public; Owner: b2b_user
--

CREATE TABLE public.auth_app_supportprofile (
    id bigint NOT NULL,
    responses integer NOT NULL,
    user_id bigint NOT NULL
);


ALTER TABLE public.auth_app_supportprofile OWNER TO b2b_user;

--
-- Name: auth_app_supportprofile_id_seq; Type: SEQUENCE; Schema: public; Owner: b2b_user
--

CREATE SEQUENCE public.auth_app_supportprofile_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_app_supportprofile_id_seq OWNER TO b2b_user;

--
-- Name: auth_app_supportprofile_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: b2b_user
--

ALTER SEQUENCE public.auth_app_supportprofile_id_seq OWNED BY public.auth_app_supportprofile.id;


--
-- Name: auth_app_user; Type: TABLE; Schema: public; Owner: b2b_user
--

CREATE TABLE public.auth_app_user (
    id bigint NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    first_name_ar character varying(150),
    first_name_fr character varying(150),
    first_name_de character varying(150),
    first_name_en character varying(150),
    last_name character varying(150) NOT NULL,
    last_name_ar character varying(150),
    last_name_fr character varying(150),
    last_name_de character varying(150),
    last_name_en character varying(150),
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL,
    account_type character varying(50) NOT NULL,
    image character varying(100),
    is_email_activated boolean NOT NULL
);


ALTER TABLE public.auth_app_user OWNER TO b2b_user;

--
-- Name: auth_app_user_groups; Type: TABLE; Schema: public; Owner: b2b_user
--

CREATE TABLE public.auth_app_user_groups (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_app_user_groups OWNER TO b2b_user;

--
-- Name: auth_app_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: b2b_user
--

CREATE SEQUENCE public.auth_app_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_app_user_groups_id_seq OWNER TO b2b_user;

--
-- Name: auth_app_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: b2b_user
--

ALTER SEQUENCE public.auth_app_user_groups_id_seq OWNED BY public.auth_app_user_groups.id;


--
-- Name: auth_app_user_id_seq; Type: SEQUENCE; Schema: public; Owner: b2b_user
--

CREATE SEQUENCE public.auth_app_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_app_user_id_seq OWNER TO b2b_user;

--
-- Name: auth_app_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: b2b_user
--

ALTER SEQUENCE public.auth_app_user_id_seq OWNED BY public.auth_app_user.id;


--
-- Name: auth_app_user_user_permissions; Type: TABLE; Schema: public; Owner: b2b_user
--

CREATE TABLE public.auth_app_user_user_permissions (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_app_user_user_permissions OWNER TO b2b_user;

--
-- Name: auth_app_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: b2b_user
--

CREATE SEQUENCE public.auth_app_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_app_user_user_permissions_id_seq OWNER TO b2b_user;

--
-- Name: auth_app_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: b2b_user
--

ALTER SEQUENCE public.auth_app_user_user_permissions_id_seq OWNED BY public.auth_app_user_user_permissions.id;


--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: b2b_user
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO b2b_user;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: b2b_user
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO b2b_user;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: b2b_user
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: b2b_user
--

CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO b2b_user;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: b2b_user
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO b2b_user;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: b2b_user
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: b2b_user
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO b2b_user;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: b2b_user
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO b2b_user;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: b2b_user
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: buyer_cart; Type: TABLE; Schema: public; Owner: b2b_user
--

CREATE TABLE public.buyer_cart (
    id bigint NOT NULL,
    created_on date NOT NULL,
    buyer_id bigint NOT NULL
);


ALTER TABLE public.buyer_cart OWNER TO b2b_user;

--
-- Name: buyer_cart_id_seq; Type: SEQUENCE; Schema: public; Owner: b2b_user
--

CREATE SEQUENCE public.buyer_cart_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.buyer_cart_id_seq OWNER TO b2b_user;

--
-- Name: buyer_cart_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: b2b_user
--

ALTER SEQUENCE public.buyer_cart_id_seq OWNED BY public.buyer_cart.id;


--
-- Name: coms_groupchat; Type: TABLE; Schema: public; Owner: b2b_user
--

CREATE TABLE public.coms_groupchat (
    id bigint NOT NULL,
    roomname character varying(256),
    chatfilepath character varying(256),
    is_closed boolean NOT NULL,
    is_handled boolean NOT NULL,
    created_on date NOT NULL,
    updated_on timestamp with time zone,
    name character varying(256),
    image character varying(100)
);


ALTER TABLE public.coms_groupchat OWNER TO b2b_user;

--
-- Name: coms_groupchat_id_seq; Type: SEQUENCE; Schema: public; Owner: b2b_user
--

CREATE SEQUENCE public.coms_groupchat_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.coms_groupchat_id_seq OWNER TO b2b_user;

--
-- Name: coms_groupchat_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: b2b_user
--

ALTER SEQUENCE public.coms_groupchat_id_seq OWNED BY public.coms_groupchat.id;


--
-- Name: coms_groupchat_participants; Type: TABLE; Schema: public; Owner: b2b_user
--

CREATE TABLE public.coms_groupchat_participants (
    id bigint NOT NULL,
    groupchat_id bigint NOT NULL,
    user_id bigint NOT NULL
);


ALTER TABLE public.coms_groupchat_participants OWNER TO b2b_user;

--
-- Name: coms_groupchat_participants_id_seq; Type: SEQUENCE; Schema: public; Owner: b2b_user
--

CREATE SEQUENCE public.coms_groupchat_participants_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.coms_groupchat_participants_id_seq OWNER TO b2b_user;

--
-- Name: coms_groupchat_participants_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: b2b_user
--

ALTER SEQUENCE public.coms_groupchat_participants_id_seq OWNED BY public.coms_groupchat_participants.id;


--
-- Name: coms_interclientchat; Type: TABLE; Schema: public; Owner: b2b_user
--

CREATE TABLE public.coms_interclientchat (
    id bigint NOT NULL,
    roomname character varying(256),
    chatfilepath character varying(256),
    is_closed boolean NOT NULL,
    is_handled boolean NOT NULL,
    created_on date NOT NULL,
    updated_on timestamp with time zone,
    initiator_id bigint NOT NULL,
    participant_id bigint NOT NULL
);


ALTER TABLE public.coms_interclientchat OWNER TO b2b_user;

--
-- Name: coms_interclientchat_id_seq; Type: SEQUENCE; Schema: public; Owner: b2b_user
--

CREATE SEQUENCE public.coms_interclientchat_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.coms_interclientchat_id_seq OWNER TO b2b_user;

--
-- Name: coms_interclientchat_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: b2b_user
--

ALTER SEQUENCE public.coms_interclientchat_id_seq OWNED BY public.coms_interclientchat.id;


--
-- Name: coms_interuserchat; Type: TABLE; Schema: public; Owner: b2b_user
--

CREATE TABLE public.coms_interuserchat (
    id bigint NOT NULL,
    roomname character varying(256),
    chatfilepath character varying(256),
    is_closed boolean NOT NULL,
    is_handled boolean NOT NULL,
    created_on date NOT NULL,
    updated_on timestamp with time zone
);


ALTER TABLE public.coms_interuserchat OWNER TO b2b_user;

--
-- Name: coms_interuserchat_id_seq; Type: SEQUENCE; Schema: public; Owner: b2b_user
--

CREATE SEQUENCE public.coms_interuserchat_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.coms_interuserchat_id_seq OWNER TO b2b_user;

--
-- Name: coms_interuserchat_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: b2b_user
--

ALTER SEQUENCE public.coms_interuserchat_id_seq OWNED BY public.coms_interuserchat.id;


--
-- Name: coms_interuserchat_participants; Type: TABLE; Schema: public; Owner: b2b_user
--

CREATE TABLE public.coms_interuserchat_participants (
    id bigint NOT NULL,
    interuserchat_id bigint NOT NULL,
    user_id bigint NOT NULL
);


ALTER TABLE public.coms_interuserchat_participants OWNER TO b2b_user;

--
-- Name: coms_interuserchat_participants_id_seq; Type: SEQUENCE; Schema: public; Owner: b2b_user
--

CREATE SEQUENCE public.coms_interuserchat_participants_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.coms_interuserchat_participants_id_seq OWNER TO b2b_user;

--
-- Name: coms_interuserchat_participants_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: b2b_user
--

ALTER SEQUENCE public.coms_interuserchat_participants_id_seq OWNED BY public.coms_interuserchat_participants.id;


--
-- Name: coms_orderchat; Type: TABLE; Schema: public; Owner: b2b_user
--

CREATE TABLE public.coms_orderchat (
    id bigint NOT NULL,
    roomname character varying(256),
    chatfilepath character varying(256),
    is_closed boolean NOT NULL,
    is_handled boolean NOT NULL,
    created_on date NOT NULL,
    updated_on timestamp with time zone,
    buyer_representative_id bigint,
    order_id bigint NOT NULL,
    supplier_representative_id bigint
);


ALTER TABLE public.coms_orderchat OWNER TO b2b_user;

--
-- Name: coms_orderchat_id_seq; Type: SEQUENCE; Schema: public; Owner: b2b_user
--

CREATE SEQUENCE public.coms_orderchat_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.coms_orderchat_id_seq OWNER TO b2b_user;

--
-- Name: coms_orderchat_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: b2b_user
--

ALTER SEQUENCE public.coms_orderchat_id_seq OWNED BY public.coms_orderchat.id;


--
-- Name: coms_supportclientchat; Type: TABLE; Schema: public; Owner: b2b_user
--

CREATE TABLE public.coms_supportclientchat (
    id bigint NOT NULL,
    roomname character varying(256),
    chatfilepath character varying(256),
    is_closed boolean NOT NULL,
    is_handled boolean NOT NULL,
    created_on date NOT NULL,
    updated_on timestamp with time zone,
    support_id bigint,
    user_id bigint NOT NULL
);


ALTER TABLE public.coms_supportclientchat OWNER TO b2b_user;

--
-- Name: coms_supportclientchat_id_seq; Type: SEQUENCE; Schema: public; Owner: b2b_user
--

CREATE SEQUENCE public.coms_supportclientchat_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.coms_supportclientchat_id_seq OWNER TO b2b_user;

--
-- Name: coms_supportclientchat_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: b2b_user
--

ALTER SEQUENCE public.coms_supportclientchat_id_seq OWNED BY public.coms_supportclientchat.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: b2b_user
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id bigint NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO b2b_user;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: b2b_user
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO b2b_user;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: b2b_user
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: b2b_user
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO b2b_user;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: b2b_user
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO b2b_user;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: b2b_user
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: b2b_user
--

CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO b2b_user;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: b2b_user
--

CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO b2b_user;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: b2b_user
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: b2b_user
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO b2b_user;

--
-- Name: django_site; Type: TABLE; Schema: public; Owner: b2b_user
--

CREATE TABLE public.django_site (
    id integer NOT NULL,
    domain character varying(100) NOT NULL,
    name character varying(50) NOT NULL
);


ALTER TABLE public.django_site OWNER TO b2b_user;

--
-- Name: django_site_id_seq; Type: SEQUENCE; Schema: public; Owner: b2b_user
--

CREATE SEQUENCE public.django_site_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_site_id_seq OWNER TO b2b_user;

--
-- Name: django_site_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: b2b_user
--

ALTER SEQUENCE public.django_site_id_seq OWNED BY public.django_site.id;


--
-- Name: manager_advert; Type: TABLE; Schema: public; Owner: b2b_user
--

CREATE TABLE public.manager_advert (
    id bigint NOT NULL,
    start_date date,
    end_date date,
    amount numeric(12,2) NOT NULL,
    payment_made boolean NOT NULL,
    expired boolean NOT NULL,
    created_on date NOT NULL,
    slug character varying(50),
    is_active boolean NOT NULL,
    location_id bigint,
    product_id bigint
);


ALTER TABLE public.manager_advert OWNER TO b2b_user;

--
-- Name: manager_advert_id_seq; Type: SEQUENCE; Schema: public; Owner: b2b_user
--

CREATE SEQUENCE public.manager_advert_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.manager_advert_id_seq OWNER TO b2b_user;

--
-- Name: manager_advert_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: b2b_user
--

ALTER SEQUENCE public.manager_advert_id_seq OWNED BY public.manager_advert.id;


--
-- Name: manager_advertisinglocation; Type: TABLE; Schema: public; Owner: b2b_user
--

CREATE TABLE public.manager_advertisinglocation (
    id bigint NOT NULL,
    name character varying(256),
    name_ar character varying(256),
    name_fr character varying(256),
    name_de character varying(256),
    name_en character varying(256),
    price numeric(12,2) NOT NULL,
    showroom_id bigint
);


ALTER TABLE public.manager_advertisinglocation OWNER TO b2b_user;

--
-- Name: manager_advertisinglocation_id_seq; Type: SEQUENCE; Schema: public; Owner: b2b_user
--

CREATE SEQUENCE public.manager_advertisinglocation_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.manager_advertisinglocation_id_seq OWNER TO b2b_user;

--
-- Name: manager_advertisinglocation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: b2b_user
--

ALTER SEQUENCE public.manager_advertisinglocation_id_seq OWNED BY public.manager_advertisinglocation.id;


--
-- Name: manager_calenderevent; Type: TABLE; Schema: public; Owner: b2b_user
--

CREATE TABLE public.manager_calenderevent (
    id bigint NOT NULL,
    title character varying(256),
    description text,
    start timestamp with time zone NOT NULL,
    "end" timestamp with time zone,
    created_on timestamp with time zone NOT NULL,
    business_id bigint NOT NULL
);


ALTER TABLE public.manager_calenderevent OWNER TO b2b_user;

--
-- Name: manager_calenderevent_id_seq; Type: SEQUENCE; Schema: public; Owner: b2b_user
--

CREATE SEQUENCE public.manager_calenderevent_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.manager_calenderevent_id_seq OWNER TO b2b_user;

--
-- Name: manager_calenderevent_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: b2b_user
--

ALTER SEQUENCE public.manager_calenderevent_id_seq OWNED BY public.manager_calenderevent.id;


--
-- Name: manager_discussion; Type: TABLE; Schema: public; Owner: b2b_user
--

CREATE TABLE public.manager_discussion (
    id bigint NOT NULL,
    subject character varying(256) NOT NULL,
    subject_ar character varying(256),
    subject_fr character varying(256),
    subject_de character varying(256),
    subject_en character varying(256),
    description text NOT NULL,
    description_ar text,
    description_fr text,
    description_de text,
    description_en text,
    slug character varying(50),
    is_verified boolean NOT NULL,
    created_on date NOT NULL,
    user_id bigint NOT NULL
);


ALTER TABLE public.manager_discussion OWNER TO b2b_user;

--
-- Name: manager_discussion_id_seq; Type: SEQUENCE; Schema: public; Owner: b2b_user
--

CREATE SEQUENCE public.manager_discussion_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.manager_discussion_id_seq OWNER TO b2b_user;

--
-- Name: manager_discussion_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: b2b_user
--

ALTER SEQUENCE public.manager_discussion_id_seq OWNED BY public.manager_discussion.id;


--
-- Name: manager_discussionreply; Type: TABLE; Schema: public; Owner: b2b_user
--

CREATE TABLE public.manager_discussionreply (
    id bigint NOT NULL,
    description text NOT NULL,
    description_ar text,
    description_fr text,
    description_de text,
    description_en text,
    created_on date NOT NULL,
    discussion_id bigint NOT NULL,
    user_id bigint NOT NULL
);


ALTER TABLE public.manager_discussionreply OWNER TO b2b_user;

--
-- Name: manager_discussionreply_id_seq; Type: SEQUENCE; Schema: public; Owner: b2b_user
--

CREATE SEQUENCE public.manager_discussionreply_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.manager_discussionreply_id_seq OWNER TO b2b_user;

--
-- Name: manager_discussionreply_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: b2b_user
--

ALTER SEQUENCE public.manager_discussionreply_id_seq OWNED BY public.manager_discussionreply.id;


--
-- Name: manager_emailpromotion; Type: TABLE; Schema: public; Owner: b2b_user
--

CREATE TABLE public.manager_emailpromotion (
    id bigint NOT NULL,
    subject character varying(256) NOT NULL,
    subject_ar character varying(256),
    subject_fr character varying(256),
    subject_de character varying(256),
    subject_en character varying(256),
    description character varying(256),
    description_ar character varying(256),
    description_fr character varying(256),
    description_de character varying(256),
    description_en character varying(256),
    image character varying(100),
    target character varying(256) NOT NULL,
    created_on date NOT NULL,
    slug character varying(50),
    has_image boolean NOT NULL,
    showroom_id bigint
);


ALTER TABLE public.manager_emailpromotion OWNER TO b2b_user;

--
-- Name: manager_emailpromotion_id_seq; Type: SEQUENCE; Schema: public; Owner: b2b_user
--

CREATE SEQUENCE public.manager_emailpromotion_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.manager_emailpromotion_id_seq OWNER TO b2b_user;

--
-- Name: manager_emailpromotion_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: b2b_user
--

ALTER SEQUENCE public.manager_emailpromotion_id_seq OWNED BY public.manager_emailpromotion.id;


--
-- Name: manager_location; Type: TABLE; Schema: public; Owner: b2b_user
--

CREATE TABLE public.manager_location (
    id bigint NOT NULL,
    name character varying(256) NOT NULL,
    created_on date NOT NULL,
    slug character varying(50)
);


ALTER TABLE public.manager_location OWNER TO b2b_user;

--
-- Name: manager_location_id_seq; Type: SEQUENCE; Schema: public; Owner: b2b_user
--

CREATE SEQUENCE public.manager_location_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.manager_location_id_seq OWNER TO b2b_user;

--
-- Name: manager_location_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: b2b_user
--

ALTER SEQUENCE public.manager_location_id_seq OWNED BY public.manager_location.id;


--
-- Name: manager_notification; Type: TABLE; Schema: public; Owner: b2b_user
--

CREATE TABLE public.manager_notification (
    id bigint NOT NULL,
    title character varying(256),
    category character varying(256),
    description text,
    viewed boolean NOT NULL,
    created_on timestamp with time zone NOT NULL,
    target_id bigint NOT NULL
);


ALTER TABLE public.manager_notification OWNER TO b2b_user;

--
-- Name: manager_notification_id_seq; Type: SEQUENCE; Schema: public; Owner: b2b_user
--

CREATE SEQUENCE public.manager_notification_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.manager_notification_id_seq OWNER TO b2b_user;

--
-- Name: manager_notification_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: b2b_user
--

ALTER SEQUENCE public.manager_notification_id_seq OWNED BY public.manager_notification.id;


--
-- Name: manager_promotion; Type: TABLE; Schema: public; Owner: b2b_user
--

CREATE TABLE public.manager_promotion (
    id bigint NOT NULL,
    name character varying(256) NOT NULL,
    name_ar character varying(256),
    name_fr character varying(256),
    name_de character varying(256),
    name_en character varying(256),
    description character varying(256),
    description_ar character varying(256),
    description_fr character varying(256),
    description_de character varying(256),
    description_en character varying(256),
    image character varying(100),
    type character varying(256) NOT NULL,
    created_on date NOT NULL,
    slug character varying(50),
    has_image boolean NOT NULL,
    showroom_id bigint
);


ALTER TABLE public.manager_promotion OWNER TO b2b_user;

--
-- Name: manager_promotion_id_seq; Type: SEQUENCE; Schema: public; Owner: b2b_user
--

CREATE SEQUENCE public.manager_promotion_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.manager_promotion_id_seq OWNER TO b2b_user;

--
-- Name: manager_promotion_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: b2b_user
--

ALTER SEQUENCE public.manager_promotion_id_seq OWNED BY public.manager_promotion.id;


--
-- Name: manager_sentemail; Type: TABLE; Schema: public; Owner: b2b_user
--

CREATE TABLE public.manager_sentemail (
    id bigint NOT NULL,
    recipient character varying(256),
    subject character varying(256),
    sending_email character varying(256),
    content text,
    reply_to character varying(256),
    created_on date NOT NULL
);


ALTER TABLE public.manager_sentemail OWNER TO b2b_user;

--
-- Name: manager_sentemail_id_seq; Type: SEQUENCE; Schema: public; Owner: b2b_user
--

CREATE SEQUENCE public.manager_sentemail_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.manager_sentemail_id_seq OWNER TO b2b_user;

--
-- Name: manager_sentemail_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: b2b_user
--

ALTER SEQUENCE public.manager_sentemail_id_seq OWNED BY public.manager_sentemail.id;


--
-- Name: manager_service; Type: TABLE; Schema: public; Owner: b2b_user
--

CREATE TABLE public.manager_service (
    id bigint NOT NULL,
    name character varying(256) NOT NULL,
    name_ar character varying(256),
    name_fr character varying(256),
    name_de character varying(256),
    name_en character varying(256),
    description text NOT NULL,
    description_ar text,
    description_fr text,
    description_de text,
    description_en text,
    slug character varying(50),
    created_on date NOT NULL
);


ALTER TABLE public.manager_service OWNER TO b2b_user;

--
-- Name: manager_service_id_seq; Type: SEQUENCE; Schema: public; Owner: b2b_user
--

CREATE SEQUENCE public.manager_service_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.manager_service_id_seq OWNER TO b2b_user;

--
-- Name: manager_service_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: b2b_user
--

ALTER SEQUENCE public.manager_service_id_seq OWNED BY public.manager_service.id;


--
-- Name: manager_serviceimage; Type: TABLE; Schema: public; Owner: b2b_user
--

CREATE TABLE public.manager_serviceimage (
    id bigint NOT NULL,
    image character varying(100) NOT NULL,
    slug character varying(50),
    created_on date NOT NULL,
    service_id bigint NOT NULL
);


ALTER TABLE public.manager_serviceimage OWNER TO b2b_user;

--
-- Name: manager_serviceimage_id_seq; Type: SEQUENCE; Schema: public; Owner: b2b_user
--

CREATE SEQUENCE public.manager_serviceimage_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.manager_serviceimage_id_seq OWNER TO b2b_user;

--
-- Name: manager_serviceimage_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: b2b_user
--

ALTER SEQUENCE public.manager_serviceimage_id_seq OWNED BY public.manager_serviceimage.id;


--
-- Name: manager_showroom; Type: TABLE; Schema: public; Owner: b2b_user
--

CREATE TABLE public.manager_showroom (
    id bigint NOT NULL,
    name character varying(256) NOT NULL,
    name_ar character varying(256),
    name_fr character varying(256),
    name_de character varying(256),
    name_en character varying(256),
    image character varying(100) NOT NULL,
    visits integer NOT NULL,
    slug character varying(50),
    created_on date NOT NULL,
    location_id bigint
);


ALTER TABLE public.manager_showroom OWNER TO b2b_user;

--
-- Name: manager_showroom_id_seq; Type: SEQUENCE; Schema: public; Owner: b2b_user
--

CREATE SEQUENCE public.manager_showroom_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.manager_showroom_id_seq OWNER TO b2b_user;

--
-- Name: manager_showroom_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: b2b_user
--

ALTER SEQUENCE public.manager_showroom_id_seq OWNED BY public.manager_showroom.id;


--
-- Name: manager_showroom_store; Type: TABLE; Schema: public; Owner: b2b_user
--

CREATE TABLE public.manager_showroom_store (
    id bigint NOT NULL,
    showroom_id bigint NOT NULL,
    store_id bigint NOT NULL
);


ALTER TABLE public.manager_showroom_store OWNER TO b2b_user;

--
-- Name: manager_showroom_store_id_seq; Type: SEQUENCE; Schema: public; Owner: b2b_user
--

CREATE SEQUENCE public.manager_showroom_store_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.manager_showroom_store_id_seq OWNER TO b2b_user;

--
-- Name: manager_showroom_store_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: b2b_user
--

ALTER SEQUENCE public.manager_showroom_store_id_seq OWNED BY public.manager_showroom_store.id;


--
-- Name: manager_userrequest; Type: TABLE; Schema: public; Owner: b2b_user
--

CREATE TABLE public.manager_userrequest (
    id bigint NOT NULL,
    country character varying(256) NOT NULL,
    city character varying(256) NOT NULL,
    view character varying(256) NOT NULL,
    request_method character varying(256) NOT NULL,
    device character varying(256) NOT NULL,
    user_os character varying(256) NOT NULL,
    created_on date NOT NULL
);


ALTER TABLE public.manager_userrequest OWNER TO b2b_user;

--
-- Name: manager_userrequest_id_seq; Type: SEQUENCE; Schema: public; Owner: b2b_user
--

CREATE SEQUENCE public.manager_userrequest_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.manager_userrequest_id_seq OWNER TO b2b_user;

--
-- Name: manager_userrequest_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: b2b_user
--

ALTER SEQUENCE public.manager_userrequest_id_seq OWNED BY public.manager_userrequest.id;


--
-- Name: payment_braintreesubscription; Type: TABLE; Schema: public; Owner: b2b_user
--

CREATE TABLE public.payment_braintreesubscription (
    id bigint NOT NULL,
    subscription_id character varying(256),
    payment_method character varying(20),
    current_billing_cycle character varying(256),
    days_past_due character varying(256),
    next_billing_date character varying(256),
    payment_method_token character varying(256),
    created_on date NOT NULL,
    membership_id bigint
);


ALTER TABLE public.payment_braintreesubscription OWNER TO b2b_user;

--
-- Name: payment_braintreesubscription_id_seq; Type: SEQUENCE; Schema: public; Owner: b2b_user
--

CREATE SEQUENCE public.payment_braintreesubscription_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.payment_braintreesubscription_id_seq OWNER TO b2b_user;

--
-- Name: payment_braintreesubscription_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: b2b_user
--

ALTER SEQUENCE public.payment_braintreesubscription_id_seq OWNED BY public.payment_braintreesubscription.id;


--
-- Name: payment_cardpayment; Type: TABLE; Schema: public; Owner: b2b_user
--

CREATE TABLE public.payment_cardpayment (
    id bigint NOT NULL,
    card_token character varying(256) NOT NULL,
    card_last_4 character varying(256) NOT NULL,
    card_type character varying(256) NOT NULL,
    card_expiration_month character varying(256) NOT NULL,
    card_expiration_year character varying(256) NOT NULL,
    card_customer_location character varying(256) NOT NULL,
    card_issuing_bank character varying(256) NOT NULL,
    subscription_id bigint NOT NULL
);


ALTER TABLE public.payment_cardpayment OWNER TO b2b_user;

--
-- Name: payment_cardpayment_id_seq; Type: SEQUENCE; Schema: public; Owner: b2b_user
--

CREATE SEQUENCE public.payment_cardpayment_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.payment_cardpayment_id_seq OWNER TO b2b_user;

--
-- Name: payment_cardpayment_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: b2b_user
--

ALTER SEQUENCE public.payment_cardpayment_id_seq OWNED BY public.payment_cardpayment.id;


--
-- Name: payment_contract; Type: TABLE; Schema: public; Owner: b2b_user
--

CREATE TABLE public.payment_contract (
    id bigint NOT NULL,
    ref_no character varying(15),
    is_complete boolean NOT NULL,
    is_accepted boolean NOT NULL,
    payment_made boolean NOT NULL,
    start_date date NOT NULL,
    end_date date,
    created_on date NOT NULL,
    buyer_id bigint NOT NULL,
    service_id bigint NOT NULL,
    supplier_id bigint NOT NULL
);


ALTER TABLE public.payment_contract OWNER TO b2b_user;

--
-- Name: payment_contract_id_seq; Type: SEQUENCE; Schema: public; Owner: b2b_user
--

CREATE SEQUENCE public.payment_contract_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.payment_contract_id_seq OWNER TO b2b_user;

--
-- Name: payment_contract_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: b2b_user
--

ALTER SEQUENCE public.payment_contract_id_seq OWNED BY public.payment_contract.id;


--
-- Name: payment_contractreceipt; Type: TABLE; Schema: public; Owner: b2b_user
--

CREATE TABLE public.payment_contractreceipt (
    id bigint NOT NULL,
    address character varying(256) NOT NULL,
    payment_id character varying(256) NOT NULL,
    amount_paid numeric(12,2) NOT NULL,
    currency character varying(6) NOT NULL,
    contract_id bigint NOT NULL,
    mode_of_payment_id bigint NOT NULL
);


ALTER TABLE public.payment_contractreceipt OWNER TO b2b_user;

--
-- Name: payment_contractreceipt_id_seq; Type: SEQUENCE; Schema: public; Owner: b2b_user
--

CREATE SEQUENCE public.payment_contractreceipt_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.payment_contractreceipt_id_seq OWNER TO b2b_user;

--
-- Name: payment_contractreceipt_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: b2b_user
--

ALTER SEQUENCE public.payment_contractreceipt_id_seq OWNED BY public.payment_contractreceipt.id;


--
-- Name: payment_feature; Type: TABLE; Schema: public; Owner: b2b_user
--

CREATE TABLE public.payment_feature (
    id bigint NOT NULL,
    custom_id character varying(256),
    name character varying(256),
    name_ar character varying(256),
    name_fr character varying(256),
    name_de character varying(256),
    name_en character varying(256),
    price character varying(256),
    price_ar character varying(256),
    price_fr character varying(256),
    price_de character varying(256),
    price_en character varying(256),
    description character varying(256),
    billing_frequency character varying(256),
    currency_iso_code character varying(256),
    currency_iso_code_ar character varying(256),
    currency_iso_code_fr character varying(256),
    currency_iso_code_de character varying(256),
    currency_iso_code_en character varying(256),
    interval_unit character varying(256) NOT NULL,
    status character varying(256) NOT NULL,
    has_trial boolean NOT NULL,
    trial_period character varying(256),
    trial_period_count character varying(256),
    paypal_id character varying(256)
);


ALTER TABLE public.payment_feature OWNER TO b2b_user;

--
-- Name: payment_feature_id_seq; Type: SEQUENCE; Schema: public; Owner: b2b_user
--

CREATE SEQUENCE public.payment_feature_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.payment_feature_id_seq OWNER TO b2b_user;

--
-- Name: payment_feature_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: b2b_user
--

ALTER SEQUENCE public.payment_feature_id_seq OWNED BY public.payment_feature.id;


--
-- Name: payment_membership; Type: TABLE; Schema: public; Owner: b2b_user
--

CREATE TABLE public.payment_membership (
    id bigint NOT NULL,
    membership_type character varying(256),
    start_date date NOT NULL,
    expiry_date date,
    status boolean NOT NULL,
    payment_completed boolean NOT NULL,
    client_id bigint,
    feature_id bigint,
    previous_feature_id bigint,
    upgrading_to_id bigint
);


ALTER TABLE public.payment_membership OWNER TO b2b_user;

--
-- Name: payment_membership_id_seq; Type: SEQUENCE; Schema: public; Owner: b2b_user
--

CREATE SEQUENCE public.payment_membership_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.payment_membership_id_seq OWNER TO b2b_user;

--
-- Name: payment_membership_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: b2b_user
--

ALTER SEQUENCE public.payment_membership_id_seq OWNED BY public.payment_membership.id;


--
-- Name: payment_membershipgroup; Type: TABLE; Schema: public; Owner: b2b_user
--

CREATE TABLE public.payment_membershipgroup (
    id bigint NOT NULL,
    name character varying(256) NOT NULL,
    name_ar character varying(256),
    name_fr character varying(256),
    name_de character varying(256),
    name_en character varying(256),
    slug character varying(50),
    created_on date NOT NULL,
    description text,
    description_ar text,
    description_fr text,
    description_de text,
    description_en text
);


ALTER TABLE public.payment_membershipgroup OWNER TO b2b_user;

--
-- Name: payment_membershipgroup_id_seq; Type: SEQUENCE; Schema: public; Owner: b2b_user
--

CREATE SEQUENCE public.payment_membershipgroup_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.payment_membershipgroup_id_seq OWNER TO b2b_user;

--
-- Name: payment_membershipgroup_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: b2b_user
--

ALTER SEQUENCE public.payment_membershipgroup_id_seq OWNED BY public.payment_membershipgroup.id;


--
-- Name: payment_membershipplan; Type: TABLE; Schema: public; Owner: b2b_user
--

CREATE TABLE public.payment_membershipplan (
    id bigint NOT NULL,
    name character varying(256) NOT NULL,
    name_ar character varying(256),
    name_fr character varying(256),
    name_de character varying(256),
    name_en character varying(256),
    slug character varying(50),
    created_on date NOT NULL,
    description text,
    description_ar text,
    description_fr text,
    description_de text,
    description_en text,
    group_id bigint NOT NULL
);


ALTER TABLE public.payment_membershipplan OWNER TO b2b_user;

--
-- Name: payment_membershipplan_features; Type: TABLE; Schema: public; Owner: b2b_user
--

CREATE TABLE public.payment_membershipplan_features (
    id bigint NOT NULL,
    membershipplan_id bigint NOT NULL,
    feature_id bigint NOT NULL
);


ALTER TABLE public.payment_membershipplan_features OWNER TO b2b_user;

--
-- Name: payment_membershipplan_features_id_seq; Type: SEQUENCE; Schema: public; Owner: b2b_user
--

CREATE SEQUENCE public.payment_membershipplan_features_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.payment_membershipplan_features_id_seq OWNER TO b2b_user;

--
-- Name: payment_membershipplan_features_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: b2b_user
--

ALTER SEQUENCE public.payment_membershipplan_features_id_seq OWNED BY public.payment_membershipplan_features.id;


--
-- Name: payment_membershipplan_id_seq; Type: SEQUENCE; Schema: public; Owner: b2b_user
--

CREATE SEQUENCE public.payment_membershipplan_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.payment_membershipplan_id_seq OWNER TO b2b_user;

--
-- Name: payment_membershipplan_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: b2b_user
--

ALTER SEQUENCE public.payment_membershipplan_id_seq OWNED BY public.payment_membershipplan.id;


--
-- Name: payment_membershipreceipt; Type: TABLE; Schema: public; Owner: b2b_user
--

CREATE TABLE public.payment_membershipreceipt (
    id bigint NOT NULL,
    method character varying(20) NOT NULL,
    plan_id character varying(30) NOT NULL,
    created_on date NOT NULL,
    client_id bigint NOT NULL
);


ALTER TABLE public.payment_membershipreceipt OWNER TO b2b_user;

--
-- Name: payment_membershipreceipt_id_seq; Type: SEQUENCE; Schema: public; Owner: b2b_user
--

CREATE SEQUENCE public.payment_membershipreceipt_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.payment_membershipreceipt_id_seq OWNER TO b2b_user;

--
-- Name: payment_membershipreceipt_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: b2b_user
--

ALTER SEQUENCE public.payment_membershipreceipt_id_seq OWNED BY public.payment_membershipreceipt.id;


--
-- Name: payment_modeofpayment; Type: TABLE; Schema: public; Owner: b2b_user
--

CREATE TABLE public.payment_modeofpayment (
    id bigint NOT NULL,
    name character varying(256) NOT NULL,
    slug character varying(50),
    created_on date NOT NULL,
    transaction_count integer NOT NULL
);


ALTER TABLE public.payment_modeofpayment OWNER TO b2b_user;

--
-- Name: payment_modeofpayment_id_seq; Type: SEQUENCE; Schema: public; Owner: b2b_user
--

CREATE SEQUENCE public.payment_modeofpayment_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.payment_modeofpayment_id_seq OWNER TO b2b_user;

--
-- Name: payment_modeofpayment_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: b2b_user
--

ALTER SEQUENCE public.payment_modeofpayment_id_seq OWNED BY public.payment_modeofpayment.id;


--
-- Name: payment_paypalproduct; Type: TABLE; Schema: public; Owner: b2b_user
--

CREATE TABLE public.payment_paypalproduct (
    id bigint NOT NULL,
    custom_id character varying(256),
    name character varying(256) NOT NULL,
    "ProductType" character varying(256) NOT NULL,
    description text NOT NULL
);


ALTER TABLE public.payment_paypalproduct OWNER TO b2b_user;

--
-- Name: payment_paypalproduct_id_seq; Type: SEQUENCE; Schema: public; Owner: b2b_user
--

CREATE SEQUENCE public.payment_paypalproduct_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.payment_paypalproduct_id_seq OWNER TO b2b_user;

--
-- Name: payment_paypalproduct_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: b2b_user
--

ALTER SEQUENCE public.payment_paypalproduct_id_seq OWNED BY public.payment_paypalproduct.id;


--
-- Name: payment_paypalsubscription; Type: TABLE; Schema: public; Owner: b2b_user
--

CREATE TABLE public.payment_paypalsubscription (
    id bigint NOT NULL,
    order_key character varying(256),
    created_on date NOT NULL,
    membership_id bigint
);


ALTER TABLE public.payment_paypalsubscription OWNER TO b2b_user;

--
-- Name: payment_paypalsubscription_id_seq; Type: SEQUENCE; Schema: public; Owner: b2b_user
--

CREATE SEQUENCE public.payment_paypalsubscription_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.payment_paypalsubscription_id_seq OWNER TO b2b_user;

--
-- Name: payment_paypalsubscription_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: b2b_user
--

ALTER SEQUENCE public.payment_paypalsubscription_id_seq OWNED BY public.payment_paypalsubscription.id;


--
-- Name: socialaccount_socialaccount; Type: TABLE; Schema: public; Owner: b2b_user
--

CREATE TABLE public.socialaccount_socialaccount (
    id integer NOT NULL,
    provider character varying(200) NOT NULL,
    uid character varying(191) NOT NULL,
    last_login timestamp with time zone NOT NULL,
    date_joined timestamp with time zone NOT NULL,
    extra_data jsonb NOT NULL,
    user_id bigint NOT NULL
);


ALTER TABLE public.socialaccount_socialaccount OWNER TO b2b_user;

--
-- Name: socialaccount_socialaccount_id_seq; Type: SEQUENCE; Schema: public; Owner: b2b_user
--

CREATE SEQUENCE public.socialaccount_socialaccount_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.socialaccount_socialaccount_id_seq OWNER TO b2b_user;

--
-- Name: socialaccount_socialaccount_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: b2b_user
--

ALTER SEQUENCE public.socialaccount_socialaccount_id_seq OWNED BY public.socialaccount_socialaccount.id;


--
-- Name: socialaccount_socialapp; Type: TABLE; Schema: public; Owner: b2b_user
--

CREATE TABLE public.socialaccount_socialapp (
    id integer NOT NULL,
    provider character varying(30) NOT NULL,
    name character varying(40) NOT NULL,
    client_id character varying(191) NOT NULL,
    secret character varying(191) NOT NULL,
    key character varying(191) NOT NULL,
    provider_id character varying(200) NOT NULL,
    settings jsonb NOT NULL
);


ALTER TABLE public.socialaccount_socialapp OWNER TO b2b_user;

--
-- Name: socialaccount_socialapp_id_seq; Type: SEQUENCE; Schema: public; Owner: b2b_user
--

CREATE SEQUENCE public.socialaccount_socialapp_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.socialaccount_socialapp_id_seq OWNER TO b2b_user;

--
-- Name: socialaccount_socialapp_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: b2b_user
--

ALTER SEQUENCE public.socialaccount_socialapp_id_seq OWNED BY public.socialaccount_socialapp.id;


--
-- Name: socialaccount_socialapp_sites; Type: TABLE; Schema: public; Owner: b2b_user
--

CREATE TABLE public.socialaccount_socialapp_sites (
    id bigint NOT NULL,
    socialapp_id integer NOT NULL,
    site_id integer NOT NULL
);


ALTER TABLE public.socialaccount_socialapp_sites OWNER TO b2b_user;

--
-- Name: socialaccount_socialapp_sites_id_seq; Type: SEQUENCE; Schema: public; Owner: b2b_user
--

CREATE SEQUENCE public.socialaccount_socialapp_sites_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.socialaccount_socialapp_sites_id_seq OWNER TO b2b_user;

--
-- Name: socialaccount_socialapp_sites_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: b2b_user
--

ALTER SEQUENCE public.socialaccount_socialapp_sites_id_seq OWNED BY public.socialaccount_socialapp_sites.id;


--
-- Name: socialaccount_socialtoken; Type: TABLE; Schema: public; Owner: b2b_user
--

CREATE TABLE public.socialaccount_socialtoken (
    id integer NOT NULL,
    token text NOT NULL,
    token_secret text NOT NULL,
    expires_at timestamp with time zone,
    account_id integer NOT NULL,
    app_id integer
);


ALTER TABLE public.socialaccount_socialtoken OWNER TO b2b_user;

--
-- Name: socialaccount_socialtoken_id_seq; Type: SEQUENCE; Schema: public; Owner: b2b_user
--

CREATE SEQUENCE public.socialaccount_socialtoken_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.socialaccount_socialtoken_id_seq OWNER TO b2b_user;

--
-- Name: socialaccount_socialtoken_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: b2b_user
--

ALTER SEQUENCE public.socialaccount_socialtoken_id_seq OWNED BY public.socialaccount_socialtoken.id;


--
-- Name: supplier_deliverycarrier; Type: TABLE; Schema: public; Owner: b2b_user
--

CREATE TABLE public.supplier_deliverycarrier (
    id bigint NOT NULL,
    name character varying(256) NOT NULL,
    tax numeric(3,2),
    tax_ar numeric(3,2),
    tax_fr numeric(3,2),
    tax_de numeric(3,2),
    tax_en numeric(3,2),
    delivery_period integer,
    delivery_period_ar integer,
    delivery_period_fr integer,
    delivery_period_de integer,
    delivery_period_en integer,
    active boolean NOT NULL
);


ALTER TABLE public.supplier_deliverycarrier OWNER TO b2b_user;

--
-- Name: supplier_deliverycarrier_id_seq; Type: SEQUENCE; Schema: public; Owner: b2b_user
--

CREATE SEQUENCE public.supplier_deliverycarrier_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.supplier_deliverycarrier_id_seq OWNER TO b2b_user;

--
-- Name: supplier_deliverycarrier_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: b2b_user
--

ALTER SEQUENCE public.supplier_deliverycarrier_id_seq OWNED BY public.supplier_deliverycarrier.id;


--
-- Name: supplier_order; Type: TABLE; Schema: public; Owner: b2b_user
--

CREATE TABLE public.supplier_order (
    id bigint NOT NULL,
    order_id character varying(50),
    status character varying(256) NOT NULL,
    status_ar character varying(256),
    status_fr character varying(256),
    status_de character varying(256),
    status_en character varying(256),
    currency character varying(6),
    total_price numeric(12,2),
    total_price_ar numeric(12,2),
    total_price_fr numeric(12,2),
    total_price_de numeric(12,2),
    total_price_en numeric(12,2),
    agreed_price numeric(12,2),
    agreed_price_ar numeric(12,2),
    agreed_price_fr numeric(12,2),
    agreed_price_de numeric(12,2),
    agreed_price_en numeric(12,2),
    paid_price numeric(12,2),
    paid_price_ar numeric(12,2),
    paid_price_fr numeric(12,2),
    paid_price_de numeric(12,2),
    paid_price_en numeric(12,2),
    discount numeric(3,2),
    discount_ar numeric(3,2),
    discount_fr numeric(3,2),
    discount_de numeric(3,2),
    discount_en numeric(3,2),
    is_complete boolean NOT NULL,
    accepted_on date,
    delivery_date date,
    created_on date NOT NULL,
    updated_on timestamp with time zone,
    buyer_id bigint NOT NULL,
    supplier_id bigint NOT NULL
);


ALTER TABLE public.supplier_order OWNER TO b2b_user;

--
-- Name: supplier_order_id_seq; Type: SEQUENCE; Schema: public; Owner: b2b_user
--

CREATE SEQUENCE public.supplier_order_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.supplier_order_id_seq OWNER TO b2b_user;

--
-- Name: supplier_order_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: b2b_user
--

ALTER SEQUENCE public.supplier_order_id_seq OWNED BY public.supplier_order.id;


--
-- Name: supplier_ordernote; Type: TABLE; Schema: public; Owner: b2b_user
--

CREATE TABLE public.supplier_ordernote (
    id bigint NOT NULL,
    notes text NOT NULL,
    notes_ar text,
    notes_fr text,
    notes_de text,
    notes_en text,
    created_on date NOT NULL,
    updated_on timestamp with time zone,
    order_id bigint NOT NULL,
    user_id bigint NOT NULL
);


ALTER TABLE public.supplier_ordernote OWNER TO b2b_user;

--
-- Name: supplier_ordernote_id_seq; Type: SEQUENCE; Schema: public; Owner: b2b_user
--

CREATE SEQUENCE public.supplier_ordernote_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.supplier_ordernote_id_seq OWNER TO b2b_user;

--
-- Name: supplier_ordernote_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: b2b_user
--

ALTER SEQUENCE public.supplier_ordernote_id_seq OWNED BY public.supplier_ordernote.id;


--
-- Name: supplier_orderproductvariation; Type: TABLE; Schema: public; Owner: b2b_user
--

CREATE TABLE public.supplier_orderproductvariation (
    id bigint NOT NULL,
    quantity integer NOT NULL,
    quantity_ar integer,
    quantity_fr integer,
    quantity_de integer,
    quantity_en integer,
    min_total_price numeric(12,2),
    max_total_price numeric(12,2),
    cart_id bigint,
    color_id bigint,
    material_id bigint,
    order_id bigint,
    price_id bigint,
    product_id bigint NOT NULL
);


ALTER TABLE public.supplier_orderproductvariation OWNER TO b2b_user;

--
-- Name: supplier_orderproductvariation_id_seq; Type: SEQUENCE; Schema: public; Owner: b2b_user
--

CREATE SEQUENCE public.supplier_orderproductvariation_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.supplier_orderproductvariation_id_seq OWNER TO b2b_user;

--
-- Name: supplier_orderproductvariation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: b2b_user
--

ALTER SEQUENCE public.supplier_orderproductvariation_id_seq OWNED BY public.supplier_orderproductvariation.id;


--
-- Name: supplier_ordershippingdetail; Type: TABLE; Schema: public; Owner: b2b_user
--

CREATE TABLE public.supplier_ordershippingdetail (
    id bigint NOT NULL,
    address_1 character varying(50),
    address_2 character varying(50),
    carrier_id bigint,
    order_id bigint NOT NULL
);


ALTER TABLE public.supplier_ordershippingdetail OWNER TO b2b_user;

--
-- Name: supplier_ordershippingdetail_id_seq; Type: SEQUENCE; Schema: public; Owner: b2b_user
--

CREATE SEQUENCE public.supplier_ordershippingdetail_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.supplier_ordershippingdetail_id_seq OWNER TO b2b_user;

--
-- Name: supplier_ordershippingdetail_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: b2b_user
--

ALTER SEQUENCE public.supplier_ordershippingdetail_id_seq OWNED BY public.supplier_ordershippingdetail.id;


--
-- Name: supplier_product; Type: TABLE; Schema: public; Owner: b2b_user
--

CREATE TABLE public.supplier_product (
    id bigint NOT NULL,
    name character varying(256) NOT NULL,
    name_ar character varying(256),
    name_fr character varying(256),
    name_de character varying(256),
    name_en character varying(256),
    description text NOT NULL,
    description_ar text,
    description_fr text,
    description_de text,
    description_en text,
    slug character varying(200),
    currency character varying(6),
    currency_ar character varying(6),
    currency_fr character varying(6),
    currency_de character varying(6),
    currency_en character varying(6),
    price numeric(12,2),
    price_ar numeric(12,2),
    price_fr numeric(12,2),
    price_de numeric(12,2),
    price_en numeric(12,2),
    discount numeric(3,2),
    stock integer,
    is_verified boolean NOT NULL,
    created_on date NOT NULL,
    business_id bigint,
    category_id bigint,
    sub_category_id bigint
);


ALTER TABLE public.supplier_product OWNER TO b2b_user;

--
-- Name: supplier_product_id_seq; Type: SEQUENCE; Schema: public; Owner: b2b_user
--

CREATE SEQUENCE public.supplier_product_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.supplier_product_id_seq OWNER TO b2b_user;

--
-- Name: supplier_product_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: b2b_user
--

ALTER SEQUENCE public.supplier_product_id_seq OWNED BY public.supplier_product.id;


--
-- Name: supplier_product_store; Type: TABLE; Schema: public; Owner: b2b_user
--

CREATE TABLE public.supplier_product_store (
    id bigint NOT NULL,
    product_id bigint NOT NULL,
    store_id bigint NOT NULL
);


ALTER TABLE public.supplier_product_store OWNER TO b2b_user;

--
-- Name: supplier_product_store_id_seq; Type: SEQUENCE; Schema: public; Owner: b2b_user
--

CREATE SEQUENCE public.supplier_product_store_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.supplier_product_store_id_seq OWNER TO b2b_user;

--
-- Name: supplier_product_store_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: b2b_user
--

ALTER SEQUENCE public.supplier_product_store_id_seq OWNED BY public.supplier_product_store.id;


--
-- Name: supplier_productcategory; Type: TABLE; Schema: public; Owner: b2b_user
--

CREATE TABLE public.supplier_productcategory (
    id bigint NOT NULL,
    name character varying(256) NOT NULL,
    name_ar character varying(256),
    name_fr character varying(256),
    name_de character varying(256),
    name_en character varying(256),
    product_count integer NOT NULL,
    image character varying(100) NOT NULL,
    slug character varying(200),
    created_on date NOT NULL
);


ALTER TABLE public.supplier_productcategory OWNER TO b2b_user;

--
-- Name: supplier_productcategory_id_seq; Type: SEQUENCE; Schema: public; Owner: b2b_user
--

CREATE SEQUENCE public.supplier_productcategory_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.supplier_productcategory_id_seq OWNER TO b2b_user;

--
-- Name: supplier_productcategory_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: b2b_user
--

ALTER SEQUENCE public.supplier_productcategory_id_seq OWNED BY public.supplier_productcategory.id;


--
-- Name: supplier_productcolor; Type: TABLE; Schema: public; Owner: b2b_user
--

CREATE TABLE public.supplier_productcolor (
    id bigint NOT NULL,
    name character varying(256) NOT NULL,
    name_ar character varying(256),
    name_fr character varying(256),
    name_de character varying(256),
    name_en character varying(256),
    product_id bigint NOT NULL
);


ALTER TABLE public.supplier_productcolor OWNER TO b2b_user;

--
-- Name: supplier_productcolor_id_seq; Type: SEQUENCE; Schema: public; Owner: b2b_user
--

CREATE SEQUENCE public.supplier_productcolor_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.supplier_productcolor_id_seq OWNER TO b2b_user;

--
-- Name: supplier_productcolor_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: b2b_user
--

ALTER SEQUENCE public.supplier_productcolor_id_seq OWNED BY public.supplier_productcolor.id;


--
-- Name: supplier_productimage; Type: TABLE; Schema: public; Owner: b2b_user
--

CREATE TABLE public.supplier_productimage (
    id bigint NOT NULL,
    image character varying(100) NOT NULL,
    slug character varying(100),
    created_on date NOT NULL,
    product_id bigint NOT NULL
);


ALTER TABLE public.supplier_productimage OWNER TO b2b_user;

--
-- Name: supplier_productimage_id_seq; Type: SEQUENCE; Schema: public; Owner: b2b_user
--

CREATE SEQUENCE public.supplier_productimage_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.supplier_productimage_id_seq OWNER TO b2b_user;

--
-- Name: supplier_productimage_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: b2b_user
--

ALTER SEQUENCE public.supplier_productimage_id_seq OWNED BY public.supplier_productimage.id;


--
-- Name: supplier_productmaterial; Type: TABLE; Schema: public; Owner: b2b_user
--

CREATE TABLE public.supplier_productmaterial (
    id bigint NOT NULL,
    name character varying(256) NOT NULL,
    name_ar character varying(256),
    name_fr character varying(256),
    name_de character varying(256),
    name_en character varying(256),
    product_id bigint NOT NULL
);


ALTER TABLE public.supplier_productmaterial OWNER TO b2b_user;

--
-- Name: supplier_productmaterial_id_seq; Type: SEQUENCE; Schema: public; Owner: b2b_user
--

CREATE SEQUENCE public.supplier_productmaterial_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.supplier_productmaterial_id_seq OWNER TO b2b_user;

--
-- Name: supplier_productmaterial_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: b2b_user
--

ALTER SEQUENCE public.supplier_productmaterial_id_seq OWNED BY public.supplier_productmaterial.id;


--
-- Name: supplier_productprice; Type: TABLE; Schema: public; Owner: b2b_user
--

CREATE TABLE public.supplier_productprice (
    id bigint NOT NULL,
    currency character varying(6) NOT NULL,
    min_price numeric(12,2) NOT NULL,
    max_price numeric(12,2) NOT NULL,
    product_id bigint NOT NULL
);


ALTER TABLE public.supplier_productprice OWNER TO b2b_user;

--
-- Name: supplier_productprice_id_seq; Type: SEQUENCE; Schema: public; Owner: b2b_user
--

CREATE SEQUENCE public.supplier_productprice_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.supplier_productprice_id_seq OWNER TO b2b_user;

--
-- Name: supplier_productprice_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: b2b_user
--

ALTER SEQUENCE public.supplier_productprice_id_seq OWNED BY public.supplier_productprice.id;


--
-- Name: supplier_productreview; Type: TABLE; Schema: public; Owner: b2b_user
--

CREATE TABLE public.supplier_productreview (
    id bigint NOT NULL,
    content text NOT NULL,
    business_id bigint NOT NULL,
    product_id bigint NOT NULL
);


ALTER TABLE public.supplier_productreview OWNER TO b2b_user;

--
-- Name: supplier_productreview_id_seq; Type: SEQUENCE; Schema: public; Owner: b2b_user
--

CREATE SEQUENCE public.supplier_productreview_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.supplier_productreview_id_seq OWNER TO b2b_user;

--
-- Name: supplier_productreview_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: b2b_user
--

ALTER SEQUENCE public.supplier_productreview_id_seq OWNED BY public.supplier_productreview.id;


--
-- Name: supplier_productsubcategory; Type: TABLE; Schema: public; Owner: b2b_user
--

CREATE TABLE public.supplier_productsubcategory (
    id bigint NOT NULL,
    name character varying(256) NOT NULL,
    name_ar character varying(256),
    name_fr character varying(256),
    name_de character varying(256),
    name_en character varying(256),
    image character varying(100) NOT NULL,
    slug character varying(200),
    created_on date NOT NULL,
    category_id bigint NOT NULL
);


ALTER TABLE public.supplier_productsubcategory OWNER TO b2b_user;

--
-- Name: supplier_productsubcategory_id_seq; Type: SEQUENCE; Schema: public; Owner: b2b_user
--

CREATE SEQUENCE public.supplier_productsubcategory_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.supplier_productsubcategory_id_seq OWNER TO b2b_user;

--
-- Name: supplier_productsubcategory_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: b2b_user
--

ALTER SEQUENCE public.supplier_productsubcategory_id_seq OWNED BY public.supplier_productsubcategory.id;


--
-- Name: supplier_producttag; Type: TABLE; Schema: public; Owner: b2b_user
--

CREATE TABLE public.supplier_producttag (
    id bigint NOT NULL,
    name character varying(256) NOT NULL,
    name_ar character varying(256),
    name_fr character varying(256),
    name_de character varying(256),
    name_en character varying(256),
    product_id bigint NOT NULL
);


ALTER TABLE public.supplier_producttag OWNER TO b2b_user;

--
-- Name: supplier_producttag_id_seq; Type: SEQUENCE; Schema: public; Owner: b2b_user
--

CREATE SEQUENCE public.supplier_producttag_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.supplier_producttag_id_seq OWNER TO b2b_user;

--
-- Name: supplier_producttag_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: b2b_user
--

ALTER SEQUENCE public.supplier_producttag_id_seq OWNED BY public.supplier_producttag.id;


--
-- Name: supplier_productvideo; Type: TABLE; Schema: public; Owner: b2b_user
--

CREATE TABLE public.supplier_productvideo (
    id bigint NOT NULL,
    video character varying(100) NOT NULL,
    slug character varying(100),
    created_on date NOT NULL,
    product_id bigint NOT NULL
);


ALTER TABLE public.supplier_productvideo OWNER TO b2b_user;

--
-- Name: supplier_productvideo_id_seq; Type: SEQUENCE; Schema: public; Owner: b2b_user
--

CREATE SEQUENCE public.supplier_productvideo_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.supplier_productvideo_id_seq OWNER TO b2b_user;

--
-- Name: supplier_productvideo_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: b2b_user
--

ALTER SEQUENCE public.supplier_productvideo_id_seq OWNED BY public.supplier_productvideo.id;


--
-- Name: supplier_service; Type: TABLE; Schema: public; Owner: b2b_user
--

CREATE TABLE public.supplier_service (
    id bigint NOT NULL,
    name character varying(256) NOT NULL,
    name_ar character varying(256),
    name_fr character varying(256),
    name_de character varying(256),
    name_en character varying(256),
    description text NOT NULL,
    description_ar text,
    description_fr text,
    description_de text,
    description_en text,
    price numeric(13,2) NOT NULL,
    price_ar numeric(13,2),
    price_fr numeric(13,2),
    price_de numeric(13,2),
    price_en numeric(13,2),
    currency character varying(7) NOT NULL,
    currency_ar character varying(7),
    currency_fr character varying(7),
    currency_de character varying(7),
    currency_en character varying(7),
    contract_count integer NOT NULL,
    slug character varying(50),
    created_on date NOT NULL,
    supplier_id bigint NOT NULL
);


ALTER TABLE public.supplier_service OWNER TO b2b_user;

--
-- Name: supplier_service_id_seq; Type: SEQUENCE; Schema: public; Owner: b2b_user
--

CREATE SEQUENCE public.supplier_service_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.supplier_service_id_seq OWNER TO b2b_user;

--
-- Name: supplier_service_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: b2b_user
--

ALTER SEQUENCE public.supplier_service_id_seq OWNED BY public.supplier_service.id;


--
-- Name: supplier_serviceimage; Type: TABLE; Schema: public; Owner: b2b_user
--

CREATE TABLE public.supplier_serviceimage (
    id bigint NOT NULL,
    image character varying(100) NOT NULL,
    slug character varying(50),
    created_on date NOT NULL,
    service_id bigint NOT NULL
);


ALTER TABLE public.supplier_serviceimage OWNER TO b2b_user;

--
-- Name: supplier_serviceimage_id_seq; Type: SEQUENCE; Schema: public; Owner: b2b_user
--

CREATE SEQUENCE public.supplier_serviceimage_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.supplier_serviceimage_id_seq OWNER TO b2b_user;

--
-- Name: supplier_serviceimage_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: b2b_user
--

ALTER SEQUENCE public.supplier_serviceimage_id_seq OWNED BY public.supplier_serviceimage.id;


--
-- Name: supplier_servicetag; Type: TABLE; Schema: public; Owner: b2b_user
--

CREATE TABLE public.supplier_servicetag (
    id bigint NOT NULL,
    name character varying(256) NOT NULL,
    name_ar character varying(256),
    name_fr character varying(256),
    name_de character varying(256),
    name_en character varying(256),
    slug character varying(50),
    service_id bigint NOT NULL
);


ALTER TABLE public.supplier_servicetag OWNER TO b2b_user;

--
-- Name: supplier_servicetag_id_seq; Type: SEQUENCE; Schema: public; Owner: b2b_user
--

CREATE SEQUENCE public.supplier_servicetag_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.supplier_servicetag_id_seq OWNER TO b2b_user;

--
-- Name: supplier_servicetag_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: b2b_user
--

ALTER SEQUENCE public.supplier_servicetag_id_seq OWNED BY public.supplier_servicetag.id;


--
-- Name: supplier_store; Type: TABLE; Schema: public; Owner: b2b_user
--

CREATE TABLE public.supplier_store (
    id bigint NOT NULL,
    name character varying(256) NOT NULL,
    name_ar character varying(256),
    name_fr character varying(256),
    name_de character varying(256),
    name_en character varying(256),
    slug character varying(200),
    image character varying(100) NOT NULL,
    is_verified boolean NOT NULL,
    created_on date NOT NULL,
    supplier_id bigint NOT NULL
);


ALTER TABLE public.supplier_store OWNER TO b2b_user;

--
-- Name: supplier_store_id_seq; Type: SEQUENCE; Schema: public; Owner: b2b_user
--

CREATE SEQUENCE public.supplier_store_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.supplier_store_id_seq OWNER TO b2b_user;

--
-- Name: supplier_store_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: b2b_user
--

ALTER SEQUENCE public.supplier_store_id_seq OWNED BY public.supplier_store.id;


--
-- Name: supplier_wishlistproduct; Type: TABLE; Schema: public; Owner: b2b_user
--

CREATE TABLE public.supplier_wishlistproduct (
    id bigint NOT NULL,
    buyer_id bigint NOT NULL,
    product_id bigint NOT NULL
);


ALTER TABLE public.supplier_wishlistproduct OWNER TO b2b_user;

--
-- Name: supplier_wishlistproduct_id_seq; Type: SEQUENCE; Schema: public; Owner: b2b_user
--

CREATE SEQUENCE public.supplier_wishlistproduct_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.supplier_wishlistproduct_id_seq OWNER TO b2b_user;

--
-- Name: supplier_wishlistproduct_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: b2b_user
--

ALTER SEQUENCE public.supplier_wishlistproduct_id_seq OWNED BY public.supplier_wishlistproduct.id;


--
-- Name: account_emailaddress id; Type: DEFAULT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.account_emailaddress ALTER COLUMN id SET DEFAULT nextval('public.account_emailaddress_id_seq'::regclass);


--
-- Name: account_emailconfirmation id; Type: DEFAULT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.account_emailconfirmation ALTER COLUMN id SET DEFAULT nextval('public.account_emailconfirmation_id_seq'::regclass);


--
-- Name: auth_app_clientprofile id; Type: DEFAULT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.auth_app_clientprofile ALTER COLUMN id SET DEFAULT nextval('public.auth_app_clientprofile_id_seq'::regclass);


--
-- Name: auth_app_clientprofile_team id; Type: DEFAULT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.auth_app_clientprofile_team ALTER COLUMN id SET DEFAULT nextval('public.auth_app_clientprofile_team_id_seq'::regclass);


--
-- Name: auth_app_supportprofile id; Type: DEFAULT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.auth_app_supportprofile ALTER COLUMN id SET DEFAULT nextval('public.auth_app_supportprofile_id_seq'::regclass);


--
-- Name: auth_app_user id; Type: DEFAULT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.auth_app_user ALTER COLUMN id SET DEFAULT nextval('public.auth_app_user_id_seq'::regclass);


--
-- Name: auth_app_user_groups id; Type: DEFAULT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.auth_app_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_app_user_groups_id_seq'::regclass);


--
-- Name: auth_app_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.auth_app_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_app_user_user_permissions_id_seq'::regclass);


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: buyer_cart id; Type: DEFAULT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.buyer_cart ALTER COLUMN id SET DEFAULT nextval('public.buyer_cart_id_seq'::regclass);


--
-- Name: coms_groupchat id; Type: DEFAULT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.coms_groupchat ALTER COLUMN id SET DEFAULT nextval('public.coms_groupchat_id_seq'::regclass);


--
-- Name: coms_groupchat_participants id; Type: DEFAULT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.coms_groupchat_participants ALTER COLUMN id SET DEFAULT nextval('public.coms_groupchat_participants_id_seq'::regclass);


--
-- Name: coms_interclientchat id; Type: DEFAULT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.coms_interclientchat ALTER COLUMN id SET DEFAULT nextval('public.coms_interclientchat_id_seq'::regclass);


--
-- Name: coms_interuserchat id; Type: DEFAULT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.coms_interuserchat ALTER COLUMN id SET DEFAULT nextval('public.coms_interuserchat_id_seq'::regclass);


--
-- Name: coms_interuserchat_participants id; Type: DEFAULT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.coms_interuserchat_participants ALTER COLUMN id SET DEFAULT nextval('public.coms_interuserchat_participants_id_seq'::regclass);


--
-- Name: coms_orderchat id; Type: DEFAULT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.coms_orderchat ALTER COLUMN id SET DEFAULT nextval('public.coms_orderchat_id_seq'::regclass);


--
-- Name: coms_supportclientchat id; Type: DEFAULT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.coms_supportclientchat ALTER COLUMN id SET DEFAULT nextval('public.coms_supportclientchat_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: django_site id; Type: DEFAULT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.django_site ALTER COLUMN id SET DEFAULT nextval('public.django_site_id_seq'::regclass);


--
-- Name: manager_advert id; Type: DEFAULT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.manager_advert ALTER COLUMN id SET DEFAULT nextval('public.manager_advert_id_seq'::regclass);


--
-- Name: manager_advertisinglocation id; Type: DEFAULT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.manager_advertisinglocation ALTER COLUMN id SET DEFAULT nextval('public.manager_advertisinglocation_id_seq'::regclass);


--
-- Name: manager_calenderevent id; Type: DEFAULT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.manager_calenderevent ALTER COLUMN id SET DEFAULT nextval('public.manager_calenderevent_id_seq'::regclass);


--
-- Name: manager_discussion id; Type: DEFAULT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.manager_discussion ALTER COLUMN id SET DEFAULT nextval('public.manager_discussion_id_seq'::regclass);


--
-- Name: manager_discussionreply id; Type: DEFAULT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.manager_discussionreply ALTER COLUMN id SET DEFAULT nextval('public.manager_discussionreply_id_seq'::regclass);


--
-- Name: manager_emailpromotion id; Type: DEFAULT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.manager_emailpromotion ALTER COLUMN id SET DEFAULT nextval('public.manager_emailpromotion_id_seq'::regclass);


--
-- Name: manager_location id; Type: DEFAULT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.manager_location ALTER COLUMN id SET DEFAULT nextval('public.manager_location_id_seq'::regclass);


--
-- Name: manager_notification id; Type: DEFAULT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.manager_notification ALTER COLUMN id SET DEFAULT nextval('public.manager_notification_id_seq'::regclass);


--
-- Name: manager_promotion id; Type: DEFAULT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.manager_promotion ALTER COLUMN id SET DEFAULT nextval('public.manager_promotion_id_seq'::regclass);


--
-- Name: manager_sentemail id; Type: DEFAULT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.manager_sentemail ALTER COLUMN id SET DEFAULT nextval('public.manager_sentemail_id_seq'::regclass);


--
-- Name: manager_service id; Type: DEFAULT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.manager_service ALTER COLUMN id SET DEFAULT nextval('public.manager_service_id_seq'::regclass);


--
-- Name: manager_serviceimage id; Type: DEFAULT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.manager_serviceimage ALTER COLUMN id SET DEFAULT nextval('public.manager_serviceimage_id_seq'::regclass);


--
-- Name: manager_showroom id; Type: DEFAULT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.manager_showroom ALTER COLUMN id SET DEFAULT nextval('public.manager_showroom_id_seq'::regclass);


--
-- Name: manager_showroom_store id; Type: DEFAULT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.manager_showroom_store ALTER COLUMN id SET DEFAULT nextval('public.manager_showroom_store_id_seq'::regclass);


--
-- Name: manager_userrequest id; Type: DEFAULT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.manager_userrequest ALTER COLUMN id SET DEFAULT nextval('public.manager_userrequest_id_seq'::regclass);


--
-- Name: payment_braintreesubscription id; Type: DEFAULT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.payment_braintreesubscription ALTER COLUMN id SET DEFAULT nextval('public.payment_braintreesubscription_id_seq'::regclass);


--
-- Name: payment_cardpayment id; Type: DEFAULT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.payment_cardpayment ALTER COLUMN id SET DEFAULT nextval('public.payment_cardpayment_id_seq'::regclass);


--
-- Name: payment_contract id; Type: DEFAULT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.payment_contract ALTER COLUMN id SET DEFAULT nextval('public.payment_contract_id_seq'::regclass);


--
-- Name: payment_contractreceipt id; Type: DEFAULT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.payment_contractreceipt ALTER COLUMN id SET DEFAULT nextval('public.payment_contractreceipt_id_seq'::regclass);


--
-- Name: payment_feature id; Type: DEFAULT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.payment_feature ALTER COLUMN id SET DEFAULT nextval('public.payment_feature_id_seq'::regclass);


--
-- Name: payment_membership id; Type: DEFAULT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.payment_membership ALTER COLUMN id SET DEFAULT nextval('public.payment_membership_id_seq'::regclass);


--
-- Name: payment_membershipgroup id; Type: DEFAULT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.payment_membershipgroup ALTER COLUMN id SET DEFAULT nextval('public.payment_membershipgroup_id_seq'::regclass);


--
-- Name: payment_membershipplan id; Type: DEFAULT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.payment_membershipplan ALTER COLUMN id SET DEFAULT nextval('public.payment_membershipplan_id_seq'::regclass);


--
-- Name: payment_membershipplan_features id; Type: DEFAULT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.payment_membershipplan_features ALTER COLUMN id SET DEFAULT nextval('public.payment_membershipplan_features_id_seq'::regclass);


--
-- Name: payment_membershipreceipt id; Type: DEFAULT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.payment_membershipreceipt ALTER COLUMN id SET DEFAULT nextval('public.payment_membershipreceipt_id_seq'::regclass);


--
-- Name: payment_modeofpayment id; Type: DEFAULT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.payment_modeofpayment ALTER COLUMN id SET DEFAULT nextval('public.payment_modeofpayment_id_seq'::regclass);


--
-- Name: payment_paypalproduct id; Type: DEFAULT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.payment_paypalproduct ALTER COLUMN id SET DEFAULT nextval('public.payment_paypalproduct_id_seq'::regclass);


--
-- Name: payment_paypalsubscription id; Type: DEFAULT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.payment_paypalsubscription ALTER COLUMN id SET DEFAULT nextval('public.payment_paypalsubscription_id_seq'::regclass);


--
-- Name: socialaccount_socialaccount id; Type: DEFAULT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.socialaccount_socialaccount ALTER COLUMN id SET DEFAULT nextval('public.socialaccount_socialaccount_id_seq'::regclass);


--
-- Name: socialaccount_socialapp id; Type: DEFAULT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.socialaccount_socialapp ALTER COLUMN id SET DEFAULT nextval('public.socialaccount_socialapp_id_seq'::regclass);


--
-- Name: socialaccount_socialapp_sites id; Type: DEFAULT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.socialaccount_socialapp_sites ALTER COLUMN id SET DEFAULT nextval('public.socialaccount_socialapp_sites_id_seq'::regclass);


--
-- Name: socialaccount_socialtoken id; Type: DEFAULT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.socialaccount_socialtoken ALTER COLUMN id SET DEFAULT nextval('public.socialaccount_socialtoken_id_seq'::regclass);


--
-- Name: supplier_deliverycarrier id; Type: DEFAULT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.supplier_deliverycarrier ALTER COLUMN id SET DEFAULT nextval('public.supplier_deliverycarrier_id_seq'::regclass);


--
-- Name: supplier_order id; Type: DEFAULT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.supplier_order ALTER COLUMN id SET DEFAULT nextval('public.supplier_order_id_seq'::regclass);


--
-- Name: supplier_ordernote id; Type: DEFAULT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.supplier_ordernote ALTER COLUMN id SET DEFAULT nextval('public.supplier_ordernote_id_seq'::regclass);


--
-- Name: supplier_orderproductvariation id; Type: DEFAULT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.supplier_orderproductvariation ALTER COLUMN id SET DEFAULT nextval('public.supplier_orderproductvariation_id_seq'::regclass);


--
-- Name: supplier_ordershippingdetail id; Type: DEFAULT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.supplier_ordershippingdetail ALTER COLUMN id SET DEFAULT nextval('public.supplier_ordershippingdetail_id_seq'::regclass);


--
-- Name: supplier_product id; Type: DEFAULT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.supplier_product ALTER COLUMN id SET DEFAULT nextval('public.supplier_product_id_seq'::regclass);


--
-- Name: supplier_product_store id; Type: DEFAULT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.supplier_product_store ALTER COLUMN id SET DEFAULT nextval('public.supplier_product_store_id_seq'::regclass);


--
-- Name: supplier_productcategory id; Type: DEFAULT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.supplier_productcategory ALTER COLUMN id SET DEFAULT nextval('public.supplier_productcategory_id_seq'::regclass);


--
-- Name: supplier_productcolor id; Type: DEFAULT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.supplier_productcolor ALTER COLUMN id SET DEFAULT nextval('public.supplier_productcolor_id_seq'::regclass);


--
-- Name: supplier_productimage id; Type: DEFAULT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.supplier_productimage ALTER COLUMN id SET DEFAULT nextval('public.supplier_productimage_id_seq'::regclass);


--
-- Name: supplier_productmaterial id; Type: DEFAULT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.supplier_productmaterial ALTER COLUMN id SET DEFAULT nextval('public.supplier_productmaterial_id_seq'::regclass);


--
-- Name: supplier_productprice id; Type: DEFAULT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.supplier_productprice ALTER COLUMN id SET DEFAULT nextval('public.supplier_productprice_id_seq'::regclass);


--
-- Name: supplier_productreview id; Type: DEFAULT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.supplier_productreview ALTER COLUMN id SET DEFAULT nextval('public.supplier_productreview_id_seq'::regclass);


--
-- Name: supplier_productsubcategory id; Type: DEFAULT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.supplier_productsubcategory ALTER COLUMN id SET DEFAULT nextval('public.supplier_productsubcategory_id_seq'::regclass);


--
-- Name: supplier_producttag id; Type: DEFAULT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.supplier_producttag ALTER COLUMN id SET DEFAULT nextval('public.supplier_producttag_id_seq'::regclass);


--
-- Name: supplier_productvideo id; Type: DEFAULT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.supplier_productvideo ALTER COLUMN id SET DEFAULT nextval('public.supplier_productvideo_id_seq'::regclass);


--
-- Name: supplier_service id; Type: DEFAULT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.supplier_service ALTER COLUMN id SET DEFAULT nextval('public.supplier_service_id_seq'::regclass);


--
-- Name: supplier_serviceimage id; Type: DEFAULT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.supplier_serviceimage ALTER COLUMN id SET DEFAULT nextval('public.supplier_serviceimage_id_seq'::regclass);


--
-- Name: supplier_servicetag id; Type: DEFAULT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.supplier_servicetag ALTER COLUMN id SET DEFAULT nextval('public.supplier_servicetag_id_seq'::regclass);


--
-- Name: supplier_store id; Type: DEFAULT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.supplier_store ALTER COLUMN id SET DEFAULT nextval('public.supplier_store_id_seq'::regclass);


--
-- Name: supplier_wishlistproduct id; Type: DEFAULT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.supplier_wishlistproduct ALTER COLUMN id SET DEFAULT nextval('public.supplier_wishlistproduct_id_seq'::regclass);


--
-- Data for Name: account_emailaddress; Type: TABLE DATA; Schema: public; Owner: b2b_user
--

COPY public.account_emailaddress (id, email, verified, "primary", user_id) FROM stdin;
\.


--
-- Data for Name: account_emailconfirmation; Type: TABLE DATA; Schema: public; Owner: b2b_user
--

COPY public.account_emailconfirmation (id, created, sent, key, email_address_id) FROM stdin;
\.


--
-- Data for Name: auth_app_clientprofile; Type: TABLE DATA; Schema: public; Owner: b2b_user
--

COPY public.auth_app_clientprofile (id, business_name, business_name_ar, business_name_fr, business_name_de, business_name_en, slug, business_description, business_description_ar, business_description_fr, business_description_de, business_description_en, country, country_ar, country_fr, country_de, country_en, country_code, country_code_ar, country_code_fr, country_code_de, country_code_en, city, city_ar, city_fr, city_de, city_en, mobile_user, mobile_user_ar, mobile_user_fr, mobile_user_de, mobile_user_en, vat_number, legal_etity_identifier, website, customer_id, image, user_id) FROM stdin;
\.


--
-- Data for Name: auth_app_clientprofile_team; Type: TABLE DATA; Schema: public; Owner: b2b_user
--

COPY public.auth_app_clientprofile_team (id, clientprofile_id, user_id) FROM stdin;
\.


--
-- Data for Name: auth_app_supportprofile; Type: TABLE DATA; Schema: public; Owner: b2b_user
--

COPY public.auth_app_supportprofile (id, responses, user_id) FROM stdin;
\.


--
-- Data for Name: auth_app_user; Type: TABLE DATA; Schema: public; Owner: b2b_user
--

COPY public.auth_app_user (id, password, last_login, is_superuser, username, first_name, first_name_ar, first_name_fr, first_name_de, first_name_en, last_name, last_name_ar, last_name_fr, last_name_de, last_name_en, email, is_staff, is_active, date_joined, account_type, image, is_email_activated) FROM stdin;
1	pbkdf2_sha256$320000$54Jne3k7QuOtOPwJOILXpe$XZsR8EXKU8PDulV2c97sKNA9FEy565uJ5M4PPYRtrQk=	2025-06-24 08:35:01.975438+00	t	admin		\N	\N	\N	\N		\N	\N	\N	\N	emiliohulbert2017@gmail.com	t	t	2025-06-19 17:26:58.900149+00	SUPPLIER	assets/imgs/resources/profiledefault.png	t
\.


--
-- Data for Name: auth_app_user_groups; Type: TABLE DATA; Schema: public; Owner: b2b_user
--

COPY public.auth_app_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_app_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: b2b_user
--

COPY public.auth_app_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: b2b_user
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: b2b_user
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: b2b_user
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add permission	1	add_permission
2	Can change permission	1	change_permission
3	Can delete permission	1	delete_permission
4	Can view permission	1	view_permission
5	Can add group	2	add_group
6	Can change group	2	change_group
7	Can delete group	2	delete_group
8	Can view group	2	view_group
9	Can add content type	3	add_contenttype
10	Can change content type	3	change_contenttype
11	Can delete content type	3	delete_contenttype
12	Can view content type	3	view_contenttype
13	Can add session	4	add_session
14	Can change session	4	change_session
15	Can delete session	4	delete_session
16	Can view session	4	view_session
17	Can add log entry	5	add_logentry
18	Can change log entry	5	change_logentry
19	Can delete log entry	5	delete_logentry
20	Can view log entry	5	view_logentry
21	Can add site	6	add_site
22	Can change site	6	change_site
23	Can delete site	6	delete_site
24	Can view site	6	view_site
25	Can add discussion	7	add_discussion
26	Can change discussion	7	change_discussion
27	Can delete discussion	7	delete_discussion
28	Can view discussion	7	view_discussion
29	Can add location	8	add_location
30	Can change location	8	change_location
31	Can delete location	8	delete_location
32	Can view location	8	view_location
33	Can add sent email	9	add_sentemail
34	Can change sent email	9	change_sentemail
35	Can delete sent email	9	delete_sentemail
36	Can view sent email	9	view_sentemail
37	Can add service	10	add_service
38	Can change service	10	change_service
39	Can delete service	10	delete_service
40	Can view service	10	view_service
41	Can add user request	11	add_userrequest
42	Can change user request	11	change_userrequest
43	Can delete user request	11	delete_userrequest
44	Can view user request	11	view_userrequest
45	Can add showroom	12	add_showroom
46	Can change showroom	12	change_showroom
47	Can delete showroom	12	delete_showroom
48	Can view showroom	12	view_showroom
49	Can add service image	13	add_serviceimage
50	Can change service image	13	change_serviceimage
51	Can delete service image	13	delete_serviceimage
52	Can view service image	13	view_serviceimage
53	Can add promotion	14	add_promotion
54	Can change promotion	14	change_promotion
55	Can delete promotion	14	delete_promotion
56	Can view promotion	14	view_promotion
57	Can add notification	15	add_notification
58	Can change notification	15	change_notification
59	Can delete notification	15	delete_notification
60	Can view notification	15	view_notification
61	Can add email promotion	16	add_emailpromotion
62	Can change email promotion	16	change_emailpromotion
63	Can delete email promotion	16	delete_emailpromotion
64	Can view email promotion	16	view_emailpromotion
65	Can add discussion reply	17	add_discussionreply
66	Can change discussion reply	17	change_discussionreply
67	Can delete discussion reply	17	delete_discussionreply
68	Can view discussion reply	17	view_discussionreply
69	Can add calender event	18	add_calenderevent
70	Can change calender event	18	change_calenderevent
71	Can delete calender event	18	delete_calenderevent
72	Can view calender event	18	view_calenderevent
73	Can add advertising location	19	add_advertisinglocation
74	Can change advertising location	19	change_advertisinglocation
75	Can delete advertising location	19	delete_advertisinglocation
76	Can view advertising location	19	view_advertisinglocation
77	Can add advert	20	add_advert
78	Can change advert	20	change_advert
79	Can delete advert	20	delete_advert
80	Can view advert	20	view_advert
81	Can add delivery carrier	21	add_deliverycarrier
82	Can change delivery carrier	21	change_deliverycarrier
83	Can delete delivery carrier	21	delete_deliverycarrier
84	Can view delivery carrier	21	view_deliverycarrier
85	Can add order	22	add_order
86	Can change order	22	change_order
87	Can delete order	22	delete_order
88	Can view order	22	view_order
89	Can add product	23	add_product
90	Can change product	23	change_product
91	Can delete product	23	delete_product
92	Can view product	23	view_product
93	Can add product category	24	add_productcategory
94	Can change product category	24	change_productcategory
95	Can delete product category	24	delete_productcategory
96	Can view product category	24	view_productcategory
97	Can add service	25	add_service
98	Can change service	25	change_service
99	Can delete service	25	delete_service
100	Can view service	25	view_service
101	Can add wish list product	26	add_wishlistproduct
102	Can change wish list product	26	change_wishlistproduct
103	Can delete wish list product	26	delete_wishlistproduct
104	Can view wish list product	26	view_wishlistproduct
105	Can add store	27	add_store
106	Can change store	27	change_store
107	Can delete store	27	delete_store
108	Can view store	27	view_store
109	Can add service tag	28	add_servicetag
110	Can change service tag	28	change_servicetag
111	Can delete service tag	28	delete_servicetag
112	Can view service tag	28	view_servicetag
113	Can add service image	29	add_serviceimage
114	Can change service image	29	change_serviceimage
115	Can delete service image	29	delete_serviceimage
116	Can view service image	29	view_serviceimage
117	Can add product video	30	add_productvideo
118	Can change product video	30	change_productvideo
119	Can delete product video	30	delete_productvideo
120	Can view product video	30	view_productvideo
121	Can add product tag	31	add_producttag
122	Can change product tag	31	change_producttag
123	Can delete product tag	31	delete_producttag
124	Can view product tag	31	view_producttag
125	Can add product sub category	32	add_productsubcategory
126	Can change product sub category	32	change_productsubcategory
127	Can delete product sub category	32	delete_productsubcategory
128	Can view product sub category	32	view_productsubcategory
129	Can add product review	33	add_productreview
130	Can change product review	33	change_productreview
131	Can delete product review	33	delete_productreview
132	Can view product review	33	view_productreview
133	Can add product price	34	add_productprice
134	Can change product price	34	change_productprice
135	Can delete product price	34	delete_productprice
136	Can view product price	34	view_productprice
137	Can add product material	35	add_productmaterial
138	Can change product material	35	change_productmaterial
139	Can delete product material	35	delete_productmaterial
140	Can view product material	35	view_productmaterial
141	Can add product image	36	add_productimage
142	Can change product image	36	change_productimage
143	Can delete product image	36	delete_productimage
144	Can view product image	36	view_productimage
145	Can add product color	37	add_productcolor
146	Can change product color	37	change_productcolor
147	Can delete product color	37	delete_productcolor
148	Can view product color	37	view_productcolor
149	Can add order shipping detail	38	add_ordershippingdetail
150	Can change order shipping detail	38	change_ordershippingdetail
151	Can delete order shipping detail	38	delete_ordershippingdetail
152	Can view order shipping detail	38	view_ordershippingdetail
153	Can add order product variation	39	add_orderproductvariation
154	Can change order product variation	39	change_orderproductvariation
155	Can delete order product variation	39	delete_orderproductvariation
156	Can view order product variation	39	view_orderproductvariation
157	Can add order note	40	add_ordernote
158	Can change order note	40	change_ordernote
159	Can delete order note	40	delete_ordernote
160	Can view order note	40	view_ordernote
161	Can add cart	41	add_cart
162	Can change cart	41	change_cart
163	Can delete cart	41	delete_cart
164	Can view cart	41	view_cart
165	Can add braintree subscription	42	add_braintreesubscription
166	Can change braintree subscription	42	change_braintreesubscription
167	Can delete braintree subscription	42	delete_braintreesubscription
168	Can view braintree subscription	42	view_braintreesubscription
169	Can add contract	43	add_contract
170	Can change contract	43	change_contract
171	Can delete contract	43	delete_contract
172	Can view contract	43	view_contract
173	Can add feature	44	add_feature
174	Can change feature	44	change_feature
175	Can delete feature	44	delete_feature
176	Can view feature	44	view_feature
177	Can add membership	45	add_membership
178	Can change membership	45	change_membership
179	Can delete membership	45	delete_membership
180	Can view membership	45	view_membership
181	Can add membership group	46	add_membershipgroup
182	Can change membership group	46	change_membershipgroup
183	Can delete membership group	46	delete_membershipgroup
184	Can view membership group	46	view_membershipgroup
185	Can add mode of payment	47	add_modeofpayment
186	Can change mode of payment	47	change_modeofpayment
187	Can delete mode of payment	47	delete_modeofpayment
188	Can view mode of payment	47	view_modeofpayment
189	Can add paypal product	48	add_paypalproduct
190	Can change paypal product	48	change_paypalproduct
191	Can delete paypal product	48	delete_paypalproduct
192	Can view paypal product	48	view_paypalproduct
193	Can add paypal subscription	49	add_paypalsubscription
194	Can change paypal subscription	49	change_paypalsubscription
195	Can delete paypal subscription	49	delete_paypalsubscription
196	Can view paypal subscription	49	view_paypalsubscription
197	Can add membership receipt	50	add_membershipreceipt
198	Can change membership receipt	50	change_membershipreceipt
199	Can delete membership receipt	50	delete_membershipreceipt
200	Can view membership receipt	50	view_membershipreceipt
201	Can add membership plan	51	add_membershipplan
202	Can change membership plan	51	change_membershipplan
203	Can delete membership plan	51	delete_membershipplan
204	Can view membership plan	51	view_membershipplan
205	Can add contract receipt	52	add_contractreceipt
206	Can change contract receipt	52	change_contractreceipt
207	Can delete contract receipt	52	delete_contractreceipt
208	Can view contract receipt	52	view_contractreceipt
209	Can add card payment	53	add_cardpayment
210	Can change card payment	53	change_cardpayment
211	Can delete card payment	53	delete_cardpayment
212	Can view card payment	53	view_cardpayment
213	Can add user	54	add_user
214	Can change user	54	change_user
215	Can delete user	54	delete_user
216	Can view user	54	view_user
217	Can add support profile	55	add_supportprofile
218	Can change support profile	55	change_supportprofile
219	Can delete support profile	55	delete_supportprofile
220	Can view support profile	55	view_supportprofile
221	Can add client profile	56	add_clientprofile
222	Can change client profile	56	change_clientprofile
223	Can delete client profile	56	delete_clientprofile
224	Can view client profile	56	view_clientprofile
225	Can add buyer	57	add_buyer
226	Can change buyer	57	change_buyer
227	Can delete buyer	57	delete_buyer
228	Can view buyer	57	view_buyer
229	Can add supplier	58	add_supplier
230	Can change supplier	58	change_supplier
231	Can delete supplier	58	delete_supplier
232	Can view supplier	58	view_supplier
233	Can add support	59	add_support
234	Can change support	59	change_support
235	Can delete support	59	delete_support
236	Can view support	59	view_support
237	Can add support client chat	60	add_supportclientchat
238	Can change support client chat	60	change_supportclientchat
239	Can delete support client chat	60	delete_supportclientchat
240	Can view support client chat	60	view_supportclientchat
241	Can add order chat	61	add_orderchat
242	Can change order chat	61	change_orderchat
243	Can delete order chat	61	delete_orderchat
244	Can view order chat	61	view_orderchat
245	Can add inter user chat	62	add_interuserchat
246	Can change inter user chat	62	change_interuserchat
247	Can delete inter user chat	62	delete_interuserchat
248	Can view inter user chat	62	view_interuserchat
249	Can add inter client chat	63	add_interclientchat
250	Can change inter client chat	63	change_interclientchat
251	Can delete inter client chat	63	delete_interclientchat
252	Can view inter client chat	63	view_interclientchat
253	Can add group chat	64	add_groupchat
254	Can change group chat	64	change_groupchat
255	Can delete group chat	64	delete_groupchat
256	Can view group chat	64	view_groupchat
257	Can add email address	65	add_emailaddress
258	Can change email address	65	change_emailaddress
259	Can delete email address	65	delete_emailaddress
260	Can view email address	65	view_emailaddress
261	Can add email confirmation	66	add_emailconfirmation
262	Can change email confirmation	66	change_emailconfirmation
263	Can delete email confirmation	66	delete_emailconfirmation
264	Can view email confirmation	66	view_emailconfirmation
265	Can add social account	67	add_socialaccount
266	Can change social account	67	change_socialaccount
267	Can delete social account	67	delete_socialaccount
268	Can view social account	67	view_socialaccount
269	Can add social application	68	add_socialapp
270	Can change social application	68	change_socialapp
271	Can delete social application	68	delete_socialapp
272	Can view social application	68	view_socialapp
273	Can add social application token	69	add_socialtoken
274	Can change social application token	69	change_socialtoken
275	Can delete social application token	69	delete_socialtoken
276	Can view social application token	69	view_socialtoken
\.


--
-- Data for Name: buyer_cart; Type: TABLE DATA; Schema: public; Owner: b2b_user
--

COPY public.buyer_cart (id, created_on, buyer_id) FROM stdin;
\.


--
-- Data for Name: coms_groupchat; Type: TABLE DATA; Schema: public; Owner: b2b_user
--

COPY public.coms_groupchat (id, roomname, chatfilepath, is_closed, is_handled, created_on, updated_on, name, image) FROM stdin;
\.


--
-- Data for Name: coms_groupchat_participants; Type: TABLE DATA; Schema: public; Owner: b2b_user
--

COPY public.coms_groupchat_participants (id, groupchat_id, user_id) FROM stdin;
\.


--
-- Data for Name: coms_interclientchat; Type: TABLE DATA; Schema: public; Owner: b2b_user
--

COPY public.coms_interclientchat (id, roomname, chatfilepath, is_closed, is_handled, created_on, updated_on, initiator_id, participant_id) FROM stdin;
\.


--
-- Data for Name: coms_interuserchat; Type: TABLE DATA; Schema: public; Owner: b2b_user
--

COPY public.coms_interuserchat (id, roomname, chatfilepath, is_closed, is_handled, created_on, updated_on) FROM stdin;
\.


--
-- Data for Name: coms_interuserchat_participants; Type: TABLE DATA; Schema: public; Owner: b2b_user
--

COPY public.coms_interuserchat_participants (id, interuserchat_id, user_id) FROM stdin;
\.


--
-- Data for Name: coms_orderchat; Type: TABLE DATA; Schema: public; Owner: b2b_user
--

COPY public.coms_orderchat (id, roomname, chatfilepath, is_closed, is_handled, created_on, updated_on, buyer_representative_id, order_id, supplier_representative_id) FROM stdin;
\.


--
-- Data for Name: coms_supportclientchat; Type: TABLE DATA; Schema: public; Owner: b2b_user
--

COPY public.coms_supportclientchat (id, roomname, chatfilepath, is_closed, is_handled, created_on, updated_on, support_id, user_id) FROM stdin;
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: b2b_user
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2025-06-20 06:51:06.124024+00	1	admin	1	[{"added": {}}]	67	1
2	2025-06-20 06:53:04.609657+00	1	admin	2	[{"changed": {"fields": ["Provider"]}}]	67	1
3	2025-06-20 07:02:56.173805+00	1	HybridNairobiSkates	1	[{"added": {}}]	68	1
4	2025-06-20 07:03:55.485441+00	2	hybrid.nairobiskates.com	1	[{"added": {}}]	6	1
5	2025-06-20 07:04:14.342736+00	1	HybridNairobiSkates	2	[{"changed": {"fields": ["Sites"]}}]	68	1
6	2025-06-20 07:06:33.625774+00	1	social application token (1)	1	[{"added": {}}]	69	1
7	2025-06-20 07:07:07.07184+00	1	admin	2	[{"changed": {"fields": ["Provider"]}}]	67	1
8	2025-06-20 07:10:08.949499+00	1	google	2	[{"changed": {"fields": ["Name"]}}]	68	1
9	2025-06-20 07:11:00.621328+00	3	https://hybrid.nairobiskates.com/en/auth/login/	1	[{"added": {}}]	6	1
10	2025-06-20 07:11:06.068984+00	1	google	2	[{"changed": {"fields": ["Sites"]}}]	68	1
11	2025-06-20 07:13:03.026544+00	1	admin	2	[{"changed": {"fields": ["Provider"]}}]	67	1
12	2025-06-20 08:04:42.847511+00	1	admin	3		67	1
13	2025-06-20 08:05:21.105017+00	1	google	3		68	1
14	2025-06-20 08:07:48.762615+00	2	Google Login	1	[{"added": {}}]	68	1
15	2025-06-20 08:12:02.288354+00	2	admin	1	[{"added": {}}]	67	1
16	2025-06-20 08:14:22.3721+00	2	social application token (2)	1	[{"added": {}}]	69	1
17	2025-06-20 08:20:03.105876+00	2	Google Login	2	[]	68	1
18	2025-06-20 08:20:44.828598+00	3	https://hybrid.nairobiskates.com/en/auth/login/	3		6	1
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: b2b_user
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	auth	permission
2	auth	group
3	contenttypes	contenttype
4	sessions	session
5	admin	logentry
6	sites	site
7	manager	discussion
8	manager	location
9	manager	sentemail
10	manager	service
11	manager	userrequest
12	manager	showroom
13	manager	serviceimage
14	manager	promotion
15	manager	notification
16	manager	emailpromotion
17	manager	discussionreply
18	manager	calenderevent
19	manager	advertisinglocation
20	manager	advert
21	supplier	deliverycarrier
22	supplier	order
23	supplier	product
24	supplier	productcategory
25	supplier	service
26	supplier	wishlistproduct
27	supplier	store
28	supplier	servicetag
29	supplier	serviceimage
30	supplier	productvideo
31	supplier	producttag
32	supplier	productsubcategory
33	supplier	productreview
34	supplier	productprice
35	supplier	productmaterial
36	supplier	productimage
37	supplier	productcolor
38	supplier	ordershippingdetail
39	supplier	orderproductvariation
40	supplier	ordernote
41	buyer	cart
42	payment	braintreesubscription
43	payment	contract
44	payment	feature
45	payment	membership
46	payment	membershipgroup
47	payment	modeofpayment
48	payment	paypalproduct
49	payment	paypalsubscription
50	payment	membershipreceipt
51	payment	membershipplan
52	payment	contractreceipt
53	payment	cardpayment
54	auth_app	user
55	auth_app	supportprofile
56	auth_app	clientprofile
57	auth_app	buyer
58	auth_app	supplier
59	auth_app	support
60	coms	supportclientchat
61	coms	orderchat
62	coms	interuserchat
63	coms	interclientchat
64	coms	groupchat
65	account	emailaddress
66	account	emailconfirmation
67	socialaccount	socialaccount
68	socialaccount	socialapp
69	socialaccount	socialtoken
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: b2b_user
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2025-06-19 17:15:25.345141+00
2	contenttypes	0002_remove_content_type_name	2025-06-19 17:15:25.354114+00
3	auth	0001_initial	2025-06-19 17:15:25.395007+00
4	auth	0002_alter_permission_name_max_length	2025-06-19 17:15:25.401226+00
5	auth	0003_alter_user_email_max_length	2025-06-19 17:15:25.408629+00
6	auth	0004_alter_user_username_opts	2025-06-19 17:15:25.415697+00
7	auth	0005_alter_user_last_login_null	2025-06-19 17:15:25.422422+00
8	auth	0006_require_contenttypes_0002	2025-06-19 17:15:25.424843+00
9	auth	0007_alter_validators_add_error_messages	2025-06-19 17:15:25.434668+00
10	auth	0008_alter_user_username_max_length	2025-06-19 17:15:25.442174+00
11	auth	0009_alter_user_last_name_max_length	2025-06-19 17:15:25.449044+00
12	auth	0010_alter_group_name_max_length	2025-06-19 17:15:25.45689+00
13	auth	0011_update_proxy_permissions	2025-06-19 17:15:25.464048+00
14	auth	0012_alter_user_first_name_max_length	2025-06-19 17:15:25.471405+00
15	auth_app	0001_initial	2025-06-19 17:15:25.562847+00
16	account	0001_initial	2025-06-19 17:15:25.60873+00
17	account	0002_email_max_length	2025-06-19 17:15:25.624109+00
18	account	0003_alter_emailaddress_create_unique_verified_email	2025-06-19 17:15:25.655799+00
19	account	0004_alter_emailaddress_drop_unique_email	2025-06-19 17:15:25.675067+00
20	account	0005_emailaddress_idx_upper_email	2025-06-19 17:15:25.693004+00
21	account	0006_emailaddress_lower	2025-06-19 17:15:25.710943+00
22	account	0007_emailaddress_idx_email	2025-06-19 17:15:25.878156+00
23	account	0008_emailaddress_unique_primary_email_fixup	2025-06-19 17:15:25.893042+00
24	account	0009_emailaddress_unique_primary_email	2025-06-19 17:15:25.910591+00
25	admin	0001_initial	2025-06-19 17:15:25.935686+00
26	admin	0002_logentry_remove_auto_add	2025-06-19 17:15:25.947817+00
27	admin	0003_logentry_add_action_flag_choices	2025-06-19 17:15:25.960181+00
28	buyer	0001_initial	2025-06-19 17:15:25.983873+00
29	supplier	0001_initial	2025-06-19 17:15:26.726168+00
30	coms	0001_initial	2025-06-19 17:15:26.914989+00
31	coms	0002_alter_groupchat_options_and_more	2025-06-19 17:15:27.116507+00
32	manager	0001_initial	2025-06-19 17:15:27.658864+00
33	payment	0001_initial	2025-06-19 17:15:28.193881+00
34	sessions	0001_initial	2025-06-19 17:15:28.204806+00
35	sites	0001_initial	2025-06-19 17:15:28.210462+00
36	sites	0002_alter_domain_unique	2025-06-19 17:15:28.21878+00
37	socialaccount	0001_initial	2025-06-19 17:15:28.545599+00
38	socialaccount	0002_token_max_lengths	2025-06-19 17:15:28.578401+00
39	socialaccount	0003_extra_data_default_dict	2025-06-19 17:15:28.597117+00
40	socialaccount	0004_app_provider_id_settings	2025-06-19 17:15:28.626256+00
41	socialaccount	0005_socialtoken_nullable_app	2025-06-19 17:15:28.669842+00
42	socialaccount	0006_alter_socialaccount_extra_data	2025-06-19 17:15:28.694805+00
43	supplier	0002_alter_order_is_complete_alter_product_is_verified_and_more	2025-06-19 17:15:28.769454+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: b2b_user
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
nbj6yh7a6f194nxdnqqw2huh91ee6sct	.eJxVjEEOwiAQRe_C2hAKFMGl-56BDDODVA0kpV0Z765NutDtf-_9l4iwrSVunZc4k7iIQZx-twT44LoDukO9NYmtrsuc5K7Ig3Y5NeLn9XD_Dgr08q3dWVPWQ_BJhZxRG7IZTDacSDlI3mhHHtGOHJQaM3KwTqXgMXiy1ijx_gD0sDgQ:1uSJ4v:pr23PDODMcAMUVwrB4t75L8x2cMD2A-eL0mC1FxPQLU	2025-07-03 17:29:33.252577+00
hlaqtqz0y649u8vbadnjn0mbf5pyq2z4	.eJytzUELgjAYgOH_8p2HbMyleQ2yS9GhggqRMT9ltPxkmx4S_3tCf6HbC8_hnSGQsdppY2jsYx2ijhigmEHuH7ubJHemaxQ6zaF4zjB4MhhWB0ed7YFBo6OGoh-dYzC8DNaGGqwn9La16H-yMJEpngrBZZ5sM6mkyisG06E9xQ9eju9w70Lp_3EQKU_Uhq-ZVcvyBcmVSTk:1uSXtk:HYK5IIm_qvBDTEemwC6gV1pkzDSKIKBEsqwNkLDkvog	2025-07-04 09:19:00.56052+00
akjzfv520uqo71mt7fwtll9hs6lu2bv5	.eJytjrtugzAUht_FM0LY-AZbk96WTFUrVVWE7MMBHJAdYdOhEe9eomZo967_998upDFLGpol4ty4ltSEkuy3Zg2M6K-gPRnfhxyCT7Oz-dWS32jMD6HFaXfz_ikYTBy2tKRYtlwbrRSTGlAyZmSnAJi0tjBUcgBAZIx3slBCdLrkUDGgoqhUaflWGgM4MxmAsPjUxGQSRlJfyPnuBR5s7_Aknu6nVyD1xybOATBunEyhd36LtyYZUvtlmjJyHgEb2D43nzi7zuH8Q9aMKlFwSguhc1lWBaX8mJHnw778mkf9mLzadW_v_7FAK51ryrXg8riu3-yIf5s:1uSXug:8wZEEaNBmUYnEvdIyMuT39HHb3q3tECMPrrCwFIZzNk	2025-07-04 09:19:58.815633+00
tbuqx69factwns5q2bman5snp0f6n94m	.eJwlycsKAiEUANB_uWsJbbSH--gDZjFQhMidW0iips5EiP9e0NmeBiWis94ixiVUU6qtVEA3uIyf0_F1XtNW5uk9TqCvDVKOSOX34OPDBWAw22pBh8V7BumJZDDOZFbK7u4o_6czsVdcCjGoYXOQfCe4uvX-BcUCKeA:1uSXxB:Y-vPwe8tjHj-j929lyVIYE4ulMVxOIKm8CPuCasfZjA	2025-07-04 09:22:33.842534+00
bcsa0u8gwk7yyptbxkshkiv3rb8919lu	.eJxVjEEOwiAQRe_C2pAy0IG6dO8ZyDBMbdVAUtqV8e7apAvd_vfef6lI2zrFrckS56zOyqjT75aIH1J2kO9UblVzLesyJ70r-qBNX2uW5-Vw_w4matO3RiM2u0DBe8DAggCEo2cGTKkjg46ZRQDciJ3v-zFYxwOw6bvB2-TU-wPcxTd0:1uSfNj:PQG494SGx_aK-RG3tRLKdt5J6bSVNAxqGlW6lFg6Bpg	2025-07-04 17:18:27.774591+00
fs8omdevktxaksduk2xeu3pu4rbns86t	.eJxVjEEOwiAQRe_C2pAy0IG6dO8ZyDBMbdVAUtqV8e7apAvd_vfef6lI2zrFrckS56zOyqjT75aIH1J2kO9UblVzLesyJ70r-qBNX2uW5-Vw_w4matO3RiM2u0DBe8DAggCEo2cGTKkjg46ZRQDciJ3v-zFYxwOw6bvB2-TU-wPcxTd0:1uSgfs:LGXeCVAZHM0n45h9XIB2aLn3FAdejlJkWf5CzFG0m98	2025-07-04 18:41:16.18468+00
mntkptzuitljae4cb9z47i5ms95lhs85	.eJxVjEEOwiAQRe_C2pAy0IG6dO8ZyDBMbdVAUtqV8e7apAvd_vfef6lI2zrFrckS56zOyqjT75aIH1J2kO9UblVzLesyJ70r-qBNX2uW5-Vw_w4matO3RiM2u0DBe8DAggCEo2cGTKkjg46ZRQDciJ3v-zFYxwOw6bvB2-TU-wPcxTd0:1uTkrx:I7oYqh1uBvEGZrrSB6N726CExgG2W8Ug-wTOrjVu1cU	2025-07-07 17:22:09.66747+00
fxd54rr9up62qg74ouhij2jkhvb8ehcl	.eJxVjMEOwiAQRP-FsyEuBbZ49O43kAUWqRpISnsy_rtt0oMe5jLvzbyFp3Upfu08-ymJiwBx-u0CxSfXHaQH1XuTsdVlnoLcFXnQLm8t8et6uH8HhXrZ1krD4IhJQU5jUpQNag05bFHOOLQqodNsrRkBHTtrECHSoLXlcI4kPl_K3zco:1uTz7N:ZgI5cxMi-B6YUxbW5JmicdUzkkWBuo6UxdLw9QmcT3Q	2025-07-08 08:35:01.983131+00
\.


--
-- Data for Name: django_site; Type: TABLE DATA; Schema: public; Owner: b2b_user
--

COPY public.django_site (id, domain, name) FROM stdin;
1	example.com	example.com
2	hybrid.nairobiskates.com	HybridNairobiSkates
\.


--
-- Data for Name: manager_advert; Type: TABLE DATA; Schema: public; Owner: b2b_user
--

COPY public.manager_advert (id, start_date, end_date, amount, payment_made, expired, created_on, slug, is_active, location_id, product_id) FROM stdin;
\.


--
-- Data for Name: manager_advertisinglocation; Type: TABLE DATA; Schema: public; Owner: b2b_user
--

COPY public.manager_advertisinglocation (id, name, name_ar, name_fr, name_de, name_en, price, showroom_id) FROM stdin;
\.


--
-- Data for Name: manager_calenderevent; Type: TABLE DATA; Schema: public; Owner: b2b_user
--

COPY public.manager_calenderevent (id, title, description, start, "end", created_on, business_id) FROM stdin;
\.


--
-- Data for Name: manager_discussion; Type: TABLE DATA; Schema: public; Owner: b2b_user
--

COPY public.manager_discussion (id, subject, subject_ar, subject_fr, subject_de, subject_en, description, description_ar, description_fr, description_de, description_en, slug, is_verified, created_on, user_id) FROM stdin;
\.


--
-- Data for Name: manager_discussionreply; Type: TABLE DATA; Schema: public; Owner: b2b_user
--

COPY public.manager_discussionreply (id, description, description_ar, description_fr, description_de, description_en, created_on, discussion_id, user_id) FROM stdin;
\.


--
-- Data for Name: manager_emailpromotion; Type: TABLE DATA; Schema: public; Owner: b2b_user
--

COPY public.manager_emailpromotion (id, subject, subject_ar, subject_fr, subject_de, subject_en, description, description_ar, description_fr, description_de, description_en, image, target, created_on, slug, has_image, showroom_id) FROM stdin;
\.


--
-- Data for Name: manager_location; Type: TABLE DATA; Schema: public; Owner: b2b_user
--

COPY public.manager_location (id, name, created_on, slug) FROM stdin;
\.


--
-- Data for Name: manager_notification; Type: TABLE DATA; Schema: public; Owner: b2b_user
--

COPY public.manager_notification (id, title, category, description, viewed, created_on, target_id) FROM stdin;
\.


--
-- Data for Name: manager_promotion; Type: TABLE DATA; Schema: public; Owner: b2b_user
--

COPY public.manager_promotion (id, name, name_ar, name_fr, name_de, name_en, description, description_ar, description_fr, description_de, description_en, image, type, created_on, slug, has_image, showroom_id) FROM stdin;
\.


--
-- Data for Name: manager_sentemail; Type: TABLE DATA; Schema: public; Owner: b2b_user
--

COPY public.manager_sentemail (id, recipient, subject, sending_email, content, reply_to, created_on) FROM stdin;
\.


--
-- Data for Name: manager_service; Type: TABLE DATA; Schema: public; Owner: b2b_user
--

COPY public.manager_service (id, name, name_ar, name_fr, name_de, name_en, description, description_ar, description_fr, description_de, description_en, slug, created_on) FROM stdin;
\.


--
-- Data for Name: manager_serviceimage; Type: TABLE DATA; Schema: public; Owner: b2b_user
--

COPY public.manager_serviceimage (id, image, slug, created_on, service_id) FROM stdin;
\.


--
-- Data for Name: manager_showroom; Type: TABLE DATA; Schema: public; Owner: b2b_user
--

COPY public.manager_showroom (id, name, name_ar, name_fr, name_de, name_en, image, visits, slug, created_on, location_id) FROM stdin;
\.


--
-- Data for Name: manager_showroom_store; Type: TABLE DATA; Schema: public; Owner: b2b_user
--

COPY public.manager_showroom_store (id, showroom_id, store_id) FROM stdin;
\.


--
-- Data for Name: manager_userrequest; Type: TABLE DATA; Schema: public; Owner: b2b_user
--

COPY public.manager_userrequest (id, country, city, view, request_method, device, user_os, created_on) FROM stdin;
\.


--
-- Data for Name: payment_braintreesubscription; Type: TABLE DATA; Schema: public; Owner: b2b_user
--

COPY public.payment_braintreesubscription (id, subscription_id, payment_method, current_billing_cycle, days_past_due, next_billing_date, payment_method_token, created_on, membership_id) FROM stdin;
\.


--
-- Data for Name: payment_cardpayment; Type: TABLE DATA; Schema: public; Owner: b2b_user
--

COPY public.payment_cardpayment (id, card_token, card_last_4, card_type, card_expiration_month, card_expiration_year, card_customer_location, card_issuing_bank, subscription_id) FROM stdin;
\.


--
-- Data for Name: payment_contract; Type: TABLE DATA; Schema: public; Owner: b2b_user
--

COPY public.payment_contract (id, ref_no, is_complete, is_accepted, payment_made, start_date, end_date, created_on, buyer_id, service_id, supplier_id) FROM stdin;
\.


--
-- Data for Name: payment_contractreceipt; Type: TABLE DATA; Schema: public; Owner: b2b_user
--

COPY public.payment_contractreceipt (id, address, payment_id, amount_paid, currency, contract_id, mode_of_payment_id) FROM stdin;
\.


--
-- Data for Name: payment_feature; Type: TABLE DATA; Schema: public; Owner: b2b_user
--

COPY public.payment_feature (id, custom_id, name, name_ar, name_fr, name_de, name_en, price, price_ar, price_fr, price_de, price_en, description, billing_frequency, currency_iso_code, currency_iso_code_ar, currency_iso_code_fr, currency_iso_code_de, currency_iso_code_en, interval_unit, status, has_trial, trial_period, trial_period_count, paypal_id) FROM stdin;
\.


--
-- Data for Name: payment_membership; Type: TABLE DATA; Schema: public; Owner: b2b_user
--

COPY public.payment_membership (id, membership_type, start_date, expiry_date, status, payment_completed, client_id, feature_id, previous_feature_id, upgrading_to_id) FROM stdin;
\.


--
-- Data for Name: payment_membershipgroup; Type: TABLE DATA; Schema: public; Owner: b2b_user
--

COPY public.payment_membershipgroup (id, name, name_ar, name_fr, name_de, name_en, slug, created_on, description, description_ar, description_fr, description_de, description_en) FROM stdin;
\.


--
-- Data for Name: payment_membershipplan; Type: TABLE DATA; Schema: public; Owner: b2b_user
--

COPY public.payment_membershipplan (id, name, name_ar, name_fr, name_de, name_en, slug, created_on, description, description_ar, description_fr, description_de, description_en, group_id) FROM stdin;
\.


--
-- Data for Name: payment_membershipplan_features; Type: TABLE DATA; Schema: public; Owner: b2b_user
--

COPY public.payment_membershipplan_features (id, membershipplan_id, feature_id) FROM stdin;
\.


--
-- Data for Name: payment_membershipreceipt; Type: TABLE DATA; Schema: public; Owner: b2b_user
--

COPY public.payment_membershipreceipt (id, method, plan_id, created_on, client_id) FROM stdin;
\.


--
-- Data for Name: payment_modeofpayment; Type: TABLE DATA; Schema: public; Owner: b2b_user
--

COPY public.payment_modeofpayment (id, name, slug, created_on, transaction_count) FROM stdin;
\.


--
-- Data for Name: payment_paypalproduct; Type: TABLE DATA; Schema: public; Owner: b2b_user
--

COPY public.payment_paypalproduct (id, custom_id, name, "ProductType", description) FROM stdin;
\.


--
-- Data for Name: payment_paypalsubscription; Type: TABLE DATA; Schema: public; Owner: b2b_user
--

COPY public.payment_paypalsubscription (id, order_key, created_on, membership_id) FROM stdin;
\.


--
-- Data for Name: socialaccount_socialaccount; Type: TABLE DATA; Schema: public; Owner: b2b_user
--

COPY public.socialaccount_socialaccount (id, provider, uid, last_login, date_joined, extra_data, user_id) FROM stdin;
2	Google	575828224879-asfhisfn1o96sqperclrm2lv6n54ttfo.apps.googleusercontent.com	2025-06-20 08:12:02.287229+00	2025-06-20 08:12:02.287248+00	{"web": {"auth_uri": "https://accounts.google.com/o/oauth2/auth", "client_id": "575828224879-asfhisfn1o96sqperclrm2lv6n54ttfo.apps.googleusercontent.com", "token_uri": "https://oauth2.googleapis.com/token", "project_id": "hybridnairobiskates", "client_secret": "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", "redirect_uris": ["https://hybrid.nairobiskates.com/accounts/google/login/callback/"], "javascript_origins": ["https://hybrid.nairobiskates.com"], "auth_provider_x509_cert_url": "https://www.googleapis.com/oauth2/v1/certs"}}	1
\.


--
-- Data for Name: socialaccount_socialapp; Type: TABLE DATA; Schema: public; Owner: b2b_user
--

COPY public.socialaccount_socialapp (id, provider, name, client_id, secret, key, provider_id, settings) FROM stdin;
2	google	Google Login	575828224879-asfhisfn1o96sqperclrm2lv6n54ttfo.apps.googleusercontent.com	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			{}
\.


--
-- Data for Name: socialaccount_socialapp_sites; Type: TABLE DATA; Schema: public; Owner: b2b_user
--

COPY public.socialaccount_socialapp_sites (id, socialapp_id, site_id) FROM stdin;
3	2	2
\.


--
-- Data for Name: socialaccount_socialtoken; Type: TABLE DATA; Schema: public; Owner: b2b_user
--

COPY public.socialaccount_socialtoken (id, token, token_secret, expires_at, account_id, app_id) FROM stdin;
2	{"web":{"client_id":"575828224879-asfhisfn1o96sqperclrm2lv6n54ttfo.apps.googleusercontent.com","project_id":"hybridnairobiskates","auth_uri":"https://accounts.google.com/o/oauth2/auth","token_uri":"https://oauth2.googleapis.com/token","auth_provider_x509_cert_url":"https://www.googleapis.com/oauth2/v1/certs","client_secret":"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","redirect_uris":["https://hybrid.nairobiskates.com/accounts/google/login/callback/"],"javascript_origins":["https://hybrid.nairobiskates.com"]}}	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	\N	2	2
\.


--
-- Data for Name: supplier_deliverycarrier; Type: TABLE DATA; Schema: public; Owner: b2b_user
--

COPY public.supplier_deliverycarrier (id, name, tax, tax_ar, tax_fr, tax_de, tax_en, delivery_period, delivery_period_ar, delivery_period_fr, delivery_period_de, delivery_period_en, active) FROM stdin;
\.


--
-- Data for Name: supplier_order; Type: TABLE DATA; Schema: public; Owner: b2b_user
--

COPY public.supplier_order (id, order_id, status, status_ar, status_fr, status_de, status_en, currency, total_price, total_price_ar, total_price_fr, total_price_de, total_price_en, agreed_price, agreed_price_ar, agreed_price_fr, agreed_price_de, agreed_price_en, paid_price, paid_price_ar, paid_price_fr, paid_price_de, paid_price_en, discount, discount_ar, discount_fr, discount_de, discount_en, is_complete, accepted_on, delivery_date, created_on, updated_on, buyer_id, supplier_id) FROM stdin;
\.


--
-- Data for Name: supplier_ordernote; Type: TABLE DATA; Schema: public; Owner: b2b_user
--

COPY public.supplier_ordernote (id, notes, notes_ar, notes_fr, notes_de, notes_en, created_on, updated_on, order_id, user_id) FROM stdin;
\.


--
-- Data for Name: supplier_orderproductvariation; Type: TABLE DATA; Schema: public; Owner: b2b_user
--

COPY public.supplier_orderproductvariation (id, quantity, quantity_ar, quantity_fr, quantity_de, quantity_en, min_total_price, max_total_price, cart_id, color_id, material_id, order_id, price_id, product_id) FROM stdin;
\.


--
-- Data for Name: supplier_ordershippingdetail; Type: TABLE DATA; Schema: public; Owner: b2b_user
--

COPY public.supplier_ordershippingdetail (id, address_1, address_2, carrier_id, order_id) FROM stdin;
\.


--
-- Data for Name: supplier_product; Type: TABLE DATA; Schema: public; Owner: b2b_user
--

COPY public.supplier_product (id, name, name_ar, name_fr, name_de, name_en, description, description_ar, description_fr, description_de, description_en, slug, currency, currency_ar, currency_fr, currency_de, currency_en, price, price_ar, price_fr, price_de, price_en, discount, stock, is_verified, created_on, business_id, category_id, sub_category_id) FROM stdin;
\.


--
-- Data for Name: supplier_product_store; Type: TABLE DATA; Schema: public; Owner: b2b_user
--

COPY public.supplier_product_store (id, product_id, store_id) FROM stdin;
\.


--
-- Data for Name: supplier_productcategory; Type: TABLE DATA; Schema: public; Owner: b2b_user
--

COPY public.supplier_productcategory (id, name, name_ar, name_fr, name_de, name_en, product_count, image, slug, created_on) FROM stdin;
\.


--
-- Data for Name: supplier_productcolor; Type: TABLE DATA; Schema: public; Owner: b2b_user
--

COPY public.supplier_productcolor (id, name, name_ar, name_fr, name_de, name_en, product_id) FROM stdin;
\.


--
-- Data for Name: supplier_productimage; Type: TABLE DATA; Schema: public; Owner: b2b_user
--

COPY public.supplier_productimage (id, image, slug, created_on, product_id) FROM stdin;
\.


--
-- Data for Name: supplier_productmaterial; Type: TABLE DATA; Schema: public; Owner: b2b_user
--

COPY public.supplier_productmaterial (id, name, name_ar, name_fr, name_de, name_en, product_id) FROM stdin;
\.


--
-- Data for Name: supplier_productprice; Type: TABLE DATA; Schema: public; Owner: b2b_user
--

COPY public.supplier_productprice (id, currency, min_price, max_price, product_id) FROM stdin;
\.


--
-- Data for Name: supplier_productreview; Type: TABLE DATA; Schema: public; Owner: b2b_user
--

COPY public.supplier_productreview (id, content, business_id, product_id) FROM stdin;
\.


--
-- Data for Name: supplier_productsubcategory; Type: TABLE DATA; Schema: public; Owner: b2b_user
--

COPY public.supplier_productsubcategory (id, name, name_ar, name_fr, name_de, name_en, image, slug, created_on, category_id) FROM stdin;
\.


--
-- Data for Name: supplier_producttag; Type: TABLE DATA; Schema: public; Owner: b2b_user
--

COPY public.supplier_producttag (id, name, name_ar, name_fr, name_de, name_en, product_id) FROM stdin;
\.


--
-- Data for Name: supplier_productvideo; Type: TABLE DATA; Schema: public; Owner: b2b_user
--

COPY public.supplier_productvideo (id, video, slug, created_on, product_id) FROM stdin;
\.


--
-- Data for Name: supplier_service; Type: TABLE DATA; Schema: public; Owner: b2b_user
--

COPY public.supplier_service (id, name, name_ar, name_fr, name_de, name_en, description, description_ar, description_fr, description_de, description_en, price, price_ar, price_fr, price_de, price_en, currency, currency_ar, currency_fr, currency_de, currency_en, contract_count, slug, created_on, supplier_id) FROM stdin;
\.


--
-- Data for Name: supplier_serviceimage; Type: TABLE DATA; Schema: public; Owner: b2b_user
--

COPY public.supplier_serviceimage (id, image, slug, created_on, service_id) FROM stdin;
\.


--
-- Data for Name: supplier_servicetag; Type: TABLE DATA; Schema: public; Owner: b2b_user
--

COPY public.supplier_servicetag (id, name, name_ar, name_fr, name_de, name_en, slug, service_id) FROM stdin;
\.


--
-- Data for Name: supplier_store; Type: TABLE DATA; Schema: public; Owner: b2b_user
--

COPY public.supplier_store (id, name, name_ar, name_fr, name_de, name_en, slug, image, is_verified, created_on, supplier_id) FROM stdin;
\.


--
-- Data for Name: supplier_wishlistproduct; Type: TABLE DATA; Schema: public; Owner: b2b_user
--

COPY public.supplier_wishlistproduct (id, buyer_id, product_id) FROM stdin;
\.


--
-- Name: account_emailaddress_id_seq; Type: SEQUENCE SET; Schema: public; Owner: b2b_user
--

SELECT pg_catalog.setval('public.account_emailaddress_id_seq', 1, false);


--
-- Name: account_emailconfirmation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: b2b_user
--

SELECT pg_catalog.setval('public.account_emailconfirmation_id_seq', 1, false);


--
-- Name: auth_app_clientprofile_id_seq; Type: SEQUENCE SET; Schema: public; Owner: b2b_user
--

SELECT pg_catalog.setval('public.auth_app_clientprofile_id_seq', 1, false);


--
-- Name: auth_app_clientprofile_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: b2b_user
--

SELECT pg_catalog.setval('public.auth_app_clientprofile_team_id_seq', 1, false);


--
-- Name: auth_app_supportprofile_id_seq; Type: SEQUENCE SET; Schema: public; Owner: b2b_user
--

SELECT pg_catalog.setval('public.auth_app_supportprofile_id_seq', 1, false);


--
-- Name: auth_app_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: b2b_user
--

SELECT pg_catalog.setval('public.auth_app_user_groups_id_seq', 1, false);


--
-- Name: auth_app_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: b2b_user
--

SELECT pg_catalog.setval('public.auth_app_user_id_seq', 1, true);


--
-- Name: auth_app_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: b2b_user
--

SELECT pg_catalog.setval('public.auth_app_user_user_permissions_id_seq', 1, false);


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: b2b_user
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: b2b_user
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: b2b_user
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 276, true);


--
-- Name: buyer_cart_id_seq; Type: SEQUENCE SET; Schema: public; Owner: b2b_user
--

SELECT pg_catalog.setval('public.buyer_cart_id_seq', 1, false);


--
-- Name: coms_groupchat_id_seq; Type: SEQUENCE SET; Schema: public; Owner: b2b_user
--

SELECT pg_catalog.setval('public.coms_groupchat_id_seq', 1, false);


--
-- Name: coms_groupchat_participants_id_seq; Type: SEQUENCE SET; Schema: public; Owner: b2b_user
--

SELECT pg_catalog.setval('public.coms_groupchat_participants_id_seq', 1, false);


--
-- Name: coms_interclientchat_id_seq; Type: SEQUENCE SET; Schema: public; Owner: b2b_user
--

SELECT pg_catalog.setval('public.coms_interclientchat_id_seq', 1, false);


--
-- Name: coms_interuserchat_id_seq; Type: SEQUENCE SET; Schema: public; Owner: b2b_user
--

SELECT pg_catalog.setval('public.coms_interuserchat_id_seq', 1, false);


--
-- Name: coms_interuserchat_participants_id_seq; Type: SEQUENCE SET; Schema: public; Owner: b2b_user
--

SELECT pg_catalog.setval('public.coms_interuserchat_participants_id_seq', 1, false);


--
-- Name: coms_orderchat_id_seq; Type: SEQUENCE SET; Schema: public; Owner: b2b_user
--

SELECT pg_catalog.setval('public.coms_orderchat_id_seq', 1, false);


--
-- Name: coms_supportclientchat_id_seq; Type: SEQUENCE SET; Schema: public; Owner: b2b_user
--

SELECT pg_catalog.setval('public.coms_supportclientchat_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: b2b_user
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 18, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: b2b_user
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 69, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: b2b_user
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 43, true);


--
-- Name: django_site_id_seq; Type: SEQUENCE SET; Schema: public; Owner: b2b_user
--

SELECT pg_catalog.setval('public.django_site_id_seq', 3, true);


--
-- Name: manager_advert_id_seq; Type: SEQUENCE SET; Schema: public; Owner: b2b_user
--

SELECT pg_catalog.setval('public.manager_advert_id_seq', 1, false);


--
-- Name: manager_advertisinglocation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: b2b_user
--

SELECT pg_catalog.setval('public.manager_advertisinglocation_id_seq', 1, false);


--
-- Name: manager_calenderevent_id_seq; Type: SEQUENCE SET; Schema: public; Owner: b2b_user
--

SELECT pg_catalog.setval('public.manager_calenderevent_id_seq', 1, false);


--
-- Name: manager_discussion_id_seq; Type: SEQUENCE SET; Schema: public; Owner: b2b_user
--

SELECT pg_catalog.setval('public.manager_discussion_id_seq', 1, false);


--
-- Name: manager_discussionreply_id_seq; Type: SEQUENCE SET; Schema: public; Owner: b2b_user
--

SELECT pg_catalog.setval('public.manager_discussionreply_id_seq', 1, false);


--
-- Name: manager_emailpromotion_id_seq; Type: SEQUENCE SET; Schema: public; Owner: b2b_user
--

SELECT pg_catalog.setval('public.manager_emailpromotion_id_seq', 1, false);


--
-- Name: manager_location_id_seq; Type: SEQUENCE SET; Schema: public; Owner: b2b_user
--

SELECT pg_catalog.setval('public.manager_location_id_seq', 1, false);


--
-- Name: manager_notification_id_seq; Type: SEQUENCE SET; Schema: public; Owner: b2b_user
--

SELECT pg_catalog.setval('public.manager_notification_id_seq', 1, false);


--
-- Name: manager_promotion_id_seq; Type: SEQUENCE SET; Schema: public; Owner: b2b_user
--

SELECT pg_catalog.setval('public.manager_promotion_id_seq', 1, false);


--
-- Name: manager_sentemail_id_seq; Type: SEQUENCE SET; Schema: public; Owner: b2b_user
--

SELECT pg_catalog.setval('public.manager_sentemail_id_seq', 1, false);


--
-- Name: manager_service_id_seq; Type: SEQUENCE SET; Schema: public; Owner: b2b_user
--

SELECT pg_catalog.setval('public.manager_service_id_seq', 1, false);


--
-- Name: manager_serviceimage_id_seq; Type: SEQUENCE SET; Schema: public; Owner: b2b_user
--

SELECT pg_catalog.setval('public.manager_serviceimage_id_seq', 1, false);


--
-- Name: manager_showroom_id_seq; Type: SEQUENCE SET; Schema: public; Owner: b2b_user
--

SELECT pg_catalog.setval('public.manager_showroom_id_seq', 1, false);


--
-- Name: manager_showroom_store_id_seq; Type: SEQUENCE SET; Schema: public; Owner: b2b_user
--

SELECT pg_catalog.setval('public.manager_showroom_store_id_seq', 1, false);


--
-- Name: manager_userrequest_id_seq; Type: SEQUENCE SET; Schema: public; Owner: b2b_user
--

SELECT pg_catalog.setval('public.manager_userrequest_id_seq', 1, false);


--
-- Name: payment_braintreesubscription_id_seq; Type: SEQUENCE SET; Schema: public; Owner: b2b_user
--

SELECT pg_catalog.setval('public.payment_braintreesubscription_id_seq', 1, false);


--
-- Name: payment_cardpayment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: b2b_user
--

SELECT pg_catalog.setval('public.payment_cardpayment_id_seq', 1, false);


--
-- Name: payment_contract_id_seq; Type: SEQUENCE SET; Schema: public; Owner: b2b_user
--

SELECT pg_catalog.setval('public.payment_contract_id_seq', 1, false);


--
-- Name: payment_contractreceipt_id_seq; Type: SEQUENCE SET; Schema: public; Owner: b2b_user
--

SELECT pg_catalog.setval('public.payment_contractreceipt_id_seq', 1, false);


--
-- Name: payment_feature_id_seq; Type: SEQUENCE SET; Schema: public; Owner: b2b_user
--

SELECT pg_catalog.setval('public.payment_feature_id_seq', 1, false);


--
-- Name: payment_membership_id_seq; Type: SEQUENCE SET; Schema: public; Owner: b2b_user
--

SELECT pg_catalog.setval('public.payment_membership_id_seq', 1, false);


--
-- Name: payment_membershipgroup_id_seq; Type: SEQUENCE SET; Schema: public; Owner: b2b_user
--

SELECT pg_catalog.setval('public.payment_membershipgroup_id_seq', 1, false);


--
-- Name: payment_membershipplan_features_id_seq; Type: SEQUENCE SET; Schema: public; Owner: b2b_user
--

SELECT pg_catalog.setval('public.payment_membershipplan_features_id_seq', 1, false);


--
-- Name: payment_membershipplan_id_seq; Type: SEQUENCE SET; Schema: public; Owner: b2b_user
--

SELECT pg_catalog.setval('public.payment_membershipplan_id_seq', 1, false);


--
-- Name: payment_membershipreceipt_id_seq; Type: SEQUENCE SET; Schema: public; Owner: b2b_user
--

SELECT pg_catalog.setval('public.payment_membershipreceipt_id_seq', 1, false);


--
-- Name: payment_modeofpayment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: b2b_user
--

SELECT pg_catalog.setval('public.payment_modeofpayment_id_seq', 1, false);


--
-- Name: payment_paypalproduct_id_seq; Type: SEQUENCE SET; Schema: public; Owner: b2b_user
--

SELECT pg_catalog.setval('public.payment_paypalproduct_id_seq', 1, false);


--
-- Name: payment_paypalsubscription_id_seq; Type: SEQUENCE SET; Schema: public; Owner: b2b_user
--

SELECT pg_catalog.setval('public.payment_paypalsubscription_id_seq', 1, false);


--
-- Name: socialaccount_socialaccount_id_seq; Type: SEQUENCE SET; Schema: public; Owner: b2b_user
--

SELECT pg_catalog.setval('public.socialaccount_socialaccount_id_seq', 2, true);


--
-- Name: socialaccount_socialapp_id_seq; Type: SEQUENCE SET; Schema: public; Owner: b2b_user
--

SELECT pg_catalog.setval('public.socialaccount_socialapp_id_seq', 2, true);


--
-- Name: socialaccount_socialapp_sites_id_seq; Type: SEQUENCE SET; Schema: public; Owner: b2b_user
--

SELECT pg_catalog.setval('public.socialaccount_socialapp_sites_id_seq', 3, true);


--
-- Name: socialaccount_socialtoken_id_seq; Type: SEQUENCE SET; Schema: public; Owner: b2b_user
--

SELECT pg_catalog.setval('public.socialaccount_socialtoken_id_seq', 2, true);


--
-- Name: supplier_deliverycarrier_id_seq; Type: SEQUENCE SET; Schema: public; Owner: b2b_user
--

SELECT pg_catalog.setval('public.supplier_deliverycarrier_id_seq', 1, false);


--
-- Name: supplier_order_id_seq; Type: SEQUENCE SET; Schema: public; Owner: b2b_user
--

SELECT pg_catalog.setval('public.supplier_order_id_seq', 1, false);


--
-- Name: supplier_ordernote_id_seq; Type: SEQUENCE SET; Schema: public; Owner: b2b_user
--

SELECT pg_catalog.setval('public.supplier_ordernote_id_seq', 1, false);


--
-- Name: supplier_orderproductvariation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: b2b_user
--

SELECT pg_catalog.setval('public.supplier_orderproductvariation_id_seq', 1, false);


--
-- Name: supplier_ordershippingdetail_id_seq; Type: SEQUENCE SET; Schema: public; Owner: b2b_user
--

SELECT pg_catalog.setval('public.supplier_ordershippingdetail_id_seq', 1, false);


--
-- Name: supplier_product_id_seq; Type: SEQUENCE SET; Schema: public; Owner: b2b_user
--

SELECT pg_catalog.setval('public.supplier_product_id_seq', 1, false);


--
-- Name: supplier_product_store_id_seq; Type: SEQUENCE SET; Schema: public; Owner: b2b_user
--

SELECT pg_catalog.setval('public.supplier_product_store_id_seq', 1, false);


--
-- Name: supplier_productcategory_id_seq; Type: SEQUENCE SET; Schema: public; Owner: b2b_user
--

SELECT pg_catalog.setval('public.supplier_productcategory_id_seq', 1, false);


--
-- Name: supplier_productcolor_id_seq; Type: SEQUENCE SET; Schema: public; Owner: b2b_user
--

SELECT pg_catalog.setval('public.supplier_productcolor_id_seq', 1, false);


--
-- Name: supplier_productimage_id_seq; Type: SEQUENCE SET; Schema: public; Owner: b2b_user
--

SELECT pg_catalog.setval('public.supplier_productimage_id_seq', 1, false);


--
-- Name: supplier_productmaterial_id_seq; Type: SEQUENCE SET; Schema: public; Owner: b2b_user
--

SELECT pg_catalog.setval('public.supplier_productmaterial_id_seq', 1, false);


--
-- Name: supplier_productprice_id_seq; Type: SEQUENCE SET; Schema: public; Owner: b2b_user
--

SELECT pg_catalog.setval('public.supplier_productprice_id_seq', 1, false);


--
-- Name: supplier_productreview_id_seq; Type: SEQUENCE SET; Schema: public; Owner: b2b_user
--

SELECT pg_catalog.setval('public.supplier_productreview_id_seq', 1, false);


--
-- Name: supplier_productsubcategory_id_seq; Type: SEQUENCE SET; Schema: public; Owner: b2b_user
--

SELECT pg_catalog.setval('public.supplier_productsubcategory_id_seq', 1, false);


--
-- Name: supplier_producttag_id_seq; Type: SEQUENCE SET; Schema: public; Owner: b2b_user
--

SELECT pg_catalog.setval('public.supplier_producttag_id_seq', 1, false);


--
-- Name: supplier_productvideo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: b2b_user
--

SELECT pg_catalog.setval('public.supplier_productvideo_id_seq', 1, false);


--
-- Name: supplier_service_id_seq; Type: SEQUENCE SET; Schema: public; Owner: b2b_user
--

SELECT pg_catalog.setval('public.supplier_service_id_seq', 1, false);


--
-- Name: supplier_serviceimage_id_seq; Type: SEQUENCE SET; Schema: public; Owner: b2b_user
--

SELECT pg_catalog.setval('public.supplier_serviceimage_id_seq', 1, false);


--
-- Name: supplier_servicetag_id_seq; Type: SEQUENCE SET; Schema: public; Owner: b2b_user
--

SELECT pg_catalog.setval('public.supplier_servicetag_id_seq', 1, false);


--
-- Name: supplier_store_id_seq; Type: SEQUENCE SET; Schema: public; Owner: b2b_user
--

SELECT pg_catalog.setval('public.supplier_store_id_seq', 1, false);


--
-- Name: supplier_wishlistproduct_id_seq; Type: SEQUENCE SET; Schema: public; Owner: b2b_user
--

SELECT pg_catalog.setval('public.supplier_wishlistproduct_id_seq', 1, false);


--
-- Name: account_emailaddress account_emailaddress_pkey; Type: CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.account_emailaddress
    ADD CONSTRAINT account_emailaddress_pkey PRIMARY KEY (id);


--
-- Name: account_emailaddress account_emailaddress_user_id_email_987c8728_uniq; Type: CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.account_emailaddress
    ADD CONSTRAINT account_emailaddress_user_id_email_987c8728_uniq UNIQUE (user_id, email);


--
-- Name: account_emailconfirmation account_emailconfirmation_key_key; Type: CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.account_emailconfirmation
    ADD CONSTRAINT account_emailconfirmation_key_key UNIQUE (key);


--
-- Name: account_emailconfirmation account_emailconfirmation_pkey; Type: CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.account_emailconfirmation
    ADD CONSTRAINT account_emailconfirmation_pkey PRIMARY KEY (id);


--
-- Name: auth_app_clientprofile auth_app_clientprofile_pkey; Type: CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.auth_app_clientprofile
    ADD CONSTRAINT auth_app_clientprofile_pkey PRIMARY KEY (id);


--
-- Name: auth_app_clientprofile auth_app_clientprofile_slug_key; Type: CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.auth_app_clientprofile
    ADD CONSTRAINT auth_app_clientprofile_slug_key UNIQUE (slug);


--
-- Name: auth_app_clientprofile_team auth_app_clientprofile_t_clientprofile_id_user_id_e35f9f1c_uniq; Type: CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.auth_app_clientprofile_team
    ADD CONSTRAINT auth_app_clientprofile_t_clientprofile_id_user_id_e35f9f1c_uniq UNIQUE (clientprofile_id, user_id);


--
-- Name: auth_app_clientprofile_team auth_app_clientprofile_team_pkey; Type: CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.auth_app_clientprofile_team
    ADD CONSTRAINT auth_app_clientprofile_team_pkey PRIMARY KEY (id);


--
-- Name: auth_app_clientprofile auth_app_clientprofile_user_id_key; Type: CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.auth_app_clientprofile
    ADD CONSTRAINT auth_app_clientprofile_user_id_key UNIQUE (user_id);


--
-- Name: auth_app_supportprofile auth_app_supportprofile_pkey; Type: CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.auth_app_supportprofile
    ADD CONSTRAINT auth_app_supportprofile_pkey PRIMARY KEY (id);


--
-- Name: auth_app_supportprofile auth_app_supportprofile_user_id_key; Type: CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.auth_app_supportprofile
    ADD CONSTRAINT auth_app_supportprofile_user_id_key UNIQUE (user_id);


--
-- Name: auth_app_user_groups auth_app_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.auth_app_user_groups
    ADD CONSTRAINT auth_app_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_app_user_groups auth_app_user_groups_user_id_group_id_5f174ff0_uniq; Type: CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.auth_app_user_groups
    ADD CONSTRAINT auth_app_user_groups_user_id_group_id_5f174ff0_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_app_user auth_app_user_pkey; Type: CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.auth_app_user
    ADD CONSTRAINT auth_app_user_pkey PRIMARY KEY (id);


--
-- Name: auth_app_user_user_permissions auth_app_user_user_permi_user_id_permission_id_727a8e97_uniq; Type: CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.auth_app_user_user_permissions
    ADD CONSTRAINT auth_app_user_user_permi_user_id_permission_id_727a8e97_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_app_user_user_permissions auth_app_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.auth_app_user_user_permissions
    ADD CONSTRAINT auth_app_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_app_user auth_app_user_username_key; Type: CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.auth_app_user
    ADD CONSTRAINT auth_app_user_username_key UNIQUE (username);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: buyer_cart buyer_cart_pkey; Type: CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.buyer_cart
    ADD CONSTRAINT buyer_cart_pkey PRIMARY KEY (id);


--
-- Name: coms_groupchat coms_groupchat_chatfilepath_key; Type: CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.coms_groupchat
    ADD CONSTRAINT coms_groupchat_chatfilepath_key UNIQUE (chatfilepath);


--
-- Name: coms_groupchat_participants coms_groupchat_participants_groupchat_id_user_id_0695fc74_uniq; Type: CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.coms_groupchat_participants
    ADD CONSTRAINT coms_groupchat_participants_groupchat_id_user_id_0695fc74_uniq UNIQUE (groupchat_id, user_id);


--
-- Name: coms_groupchat_participants coms_groupchat_participants_pkey; Type: CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.coms_groupchat_participants
    ADD CONSTRAINT coms_groupchat_participants_pkey PRIMARY KEY (id);


--
-- Name: coms_groupchat coms_groupchat_pkey; Type: CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.coms_groupchat
    ADD CONSTRAINT coms_groupchat_pkey PRIMARY KEY (id);


--
-- Name: coms_groupchat coms_groupchat_roomname_key; Type: CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.coms_groupchat
    ADD CONSTRAINT coms_groupchat_roomname_key UNIQUE (roomname);


--
-- Name: coms_interclientchat coms_interclientchat_chatfilepath_key; Type: CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.coms_interclientchat
    ADD CONSTRAINT coms_interclientchat_chatfilepath_key UNIQUE (chatfilepath);


--
-- Name: coms_interclientchat coms_interclientchat_pkey; Type: CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.coms_interclientchat
    ADD CONSTRAINT coms_interclientchat_pkey PRIMARY KEY (id);


--
-- Name: coms_interclientchat coms_interclientchat_roomname_key; Type: CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.coms_interclientchat
    ADD CONSTRAINT coms_interclientchat_roomname_key UNIQUE (roomname);


--
-- Name: coms_interuserchat coms_interuserchat_chatfilepath_key; Type: CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.coms_interuserchat
    ADD CONSTRAINT coms_interuserchat_chatfilepath_key UNIQUE (chatfilepath);


--
-- Name: coms_interuserchat_participants coms_interuserchat_parti_interuserchat_id_user_id_29774d10_uniq; Type: CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.coms_interuserchat_participants
    ADD CONSTRAINT coms_interuserchat_parti_interuserchat_id_user_id_29774d10_uniq UNIQUE (interuserchat_id, user_id);


--
-- Name: coms_interuserchat_participants coms_interuserchat_participants_pkey; Type: CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.coms_interuserchat_participants
    ADD CONSTRAINT coms_interuserchat_participants_pkey PRIMARY KEY (id);


--
-- Name: coms_interuserchat coms_interuserchat_pkey; Type: CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.coms_interuserchat
    ADD CONSTRAINT coms_interuserchat_pkey PRIMARY KEY (id);


--
-- Name: coms_interuserchat coms_interuserchat_roomname_key; Type: CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.coms_interuserchat
    ADD CONSTRAINT coms_interuserchat_roomname_key UNIQUE (roomname);


--
-- Name: coms_orderchat coms_orderchat_chatfilepath_key; Type: CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.coms_orderchat
    ADD CONSTRAINT coms_orderchat_chatfilepath_key UNIQUE (chatfilepath);


--
-- Name: coms_orderchat coms_orderchat_order_id_key; Type: CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.coms_orderchat
    ADD CONSTRAINT coms_orderchat_order_id_key UNIQUE (order_id);


--
-- Name: coms_orderchat coms_orderchat_pkey; Type: CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.coms_orderchat
    ADD CONSTRAINT coms_orderchat_pkey PRIMARY KEY (id);


--
-- Name: coms_orderchat coms_orderchat_roomname_key; Type: CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.coms_orderchat
    ADD CONSTRAINT coms_orderchat_roomname_key UNIQUE (roomname);


--
-- Name: coms_supportclientchat coms_supportclientchat_chatfilepath_key; Type: CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.coms_supportclientchat
    ADD CONSTRAINT coms_supportclientchat_chatfilepath_key UNIQUE (chatfilepath);


--
-- Name: coms_supportclientchat coms_supportclientchat_pkey; Type: CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.coms_supportclientchat
    ADD CONSTRAINT coms_supportclientchat_pkey PRIMARY KEY (id);


--
-- Name: coms_supportclientchat coms_supportclientchat_roomname_key; Type: CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.coms_supportclientchat
    ADD CONSTRAINT coms_supportclientchat_roomname_key UNIQUE (roomname);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: django_site django_site_domain_a2e37b91_uniq; Type: CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.django_site
    ADD CONSTRAINT django_site_domain_a2e37b91_uniq UNIQUE (domain);


--
-- Name: django_site django_site_pkey; Type: CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.django_site
    ADD CONSTRAINT django_site_pkey PRIMARY KEY (id);


--
-- Name: manager_advert manager_advert_pkey; Type: CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.manager_advert
    ADD CONSTRAINT manager_advert_pkey PRIMARY KEY (id);


--
-- Name: manager_advert manager_advert_slug_key; Type: CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.manager_advert
    ADD CONSTRAINT manager_advert_slug_key UNIQUE (slug);


--
-- Name: manager_advertisinglocation manager_advertisinglocation_pkey; Type: CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.manager_advertisinglocation
    ADD CONSTRAINT manager_advertisinglocation_pkey PRIMARY KEY (id);


--
-- Name: manager_calenderevent manager_calenderevent_pkey; Type: CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.manager_calenderevent
    ADD CONSTRAINT manager_calenderevent_pkey PRIMARY KEY (id);


--
-- Name: manager_discussion manager_discussion_pkey; Type: CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.manager_discussion
    ADD CONSTRAINT manager_discussion_pkey PRIMARY KEY (id);


--
-- Name: manager_discussion manager_discussion_slug_key; Type: CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.manager_discussion
    ADD CONSTRAINT manager_discussion_slug_key UNIQUE (slug);


--
-- Name: manager_discussionreply manager_discussionreply_pkey; Type: CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.manager_discussionreply
    ADD CONSTRAINT manager_discussionreply_pkey PRIMARY KEY (id);


--
-- Name: manager_emailpromotion manager_emailpromotion_pkey; Type: CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.manager_emailpromotion
    ADD CONSTRAINT manager_emailpromotion_pkey PRIMARY KEY (id);


--
-- Name: manager_emailpromotion manager_emailpromotion_slug_key; Type: CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.manager_emailpromotion
    ADD CONSTRAINT manager_emailpromotion_slug_key UNIQUE (slug);


--
-- Name: manager_location manager_location_pkey; Type: CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.manager_location
    ADD CONSTRAINT manager_location_pkey PRIMARY KEY (id);


--
-- Name: manager_location manager_location_slug_key; Type: CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.manager_location
    ADD CONSTRAINT manager_location_slug_key UNIQUE (slug);


--
-- Name: manager_notification manager_notification_pkey; Type: CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.manager_notification
    ADD CONSTRAINT manager_notification_pkey PRIMARY KEY (id);


--
-- Name: manager_promotion manager_promotion_pkey; Type: CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.manager_promotion
    ADD CONSTRAINT manager_promotion_pkey PRIMARY KEY (id);


--
-- Name: manager_promotion manager_promotion_slug_key; Type: CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.manager_promotion
    ADD CONSTRAINT manager_promotion_slug_key UNIQUE (slug);


--
-- Name: manager_sentemail manager_sentemail_pkey; Type: CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.manager_sentemail
    ADD CONSTRAINT manager_sentemail_pkey PRIMARY KEY (id);


--
-- Name: manager_service manager_service_pkey; Type: CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.manager_service
    ADD CONSTRAINT manager_service_pkey PRIMARY KEY (id);


--
-- Name: manager_service manager_service_slug_key; Type: CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.manager_service
    ADD CONSTRAINT manager_service_slug_key UNIQUE (slug);


--
-- Name: manager_serviceimage manager_serviceimage_pkey; Type: CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.manager_serviceimage
    ADD CONSTRAINT manager_serviceimage_pkey PRIMARY KEY (id);


--
-- Name: manager_serviceimage manager_serviceimage_slug_key; Type: CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.manager_serviceimage
    ADD CONSTRAINT manager_serviceimage_slug_key UNIQUE (slug);


--
-- Name: manager_showroom manager_showroom_pkey; Type: CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.manager_showroom
    ADD CONSTRAINT manager_showroom_pkey PRIMARY KEY (id);


--
-- Name: manager_showroom manager_showroom_slug_key; Type: CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.manager_showroom
    ADD CONSTRAINT manager_showroom_slug_key UNIQUE (slug);


--
-- Name: manager_showroom_store manager_showroom_store_pkey; Type: CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.manager_showroom_store
    ADD CONSTRAINT manager_showroom_store_pkey PRIMARY KEY (id);


--
-- Name: manager_showroom_store manager_showroom_store_showroom_id_store_id_e0ea94a5_uniq; Type: CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.manager_showroom_store
    ADD CONSTRAINT manager_showroom_store_showroom_id_store_id_e0ea94a5_uniq UNIQUE (showroom_id, store_id);


--
-- Name: manager_userrequest manager_userrequest_pkey; Type: CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.manager_userrequest
    ADD CONSTRAINT manager_userrequest_pkey PRIMARY KEY (id);


--
-- Name: payment_braintreesubscription payment_braintreesubscription_membership_id_key; Type: CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.payment_braintreesubscription
    ADD CONSTRAINT payment_braintreesubscription_membership_id_key UNIQUE (membership_id);


--
-- Name: payment_braintreesubscription payment_braintreesubscription_pkey; Type: CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.payment_braintreesubscription
    ADD CONSTRAINT payment_braintreesubscription_pkey PRIMARY KEY (id);


--
-- Name: payment_cardpayment payment_cardpayment_pkey; Type: CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.payment_cardpayment
    ADD CONSTRAINT payment_cardpayment_pkey PRIMARY KEY (id);


--
-- Name: payment_cardpayment payment_cardpayment_subscription_id_key; Type: CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.payment_cardpayment
    ADD CONSTRAINT payment_cardpayment_subscription_id_key UNIQUE (subscription_id);


--
-- Name: payment_contract payment_contract_pkey; Type: CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.payment_contract
    ADD CONSTRAINT payment_contract_pkey PRIMARY KEY (id);


--
-- Name: payment_contract payment_contract_ref_no_key; Type: CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.payment_contract
    ADD CONSTRAINT payment_contract_ref_no_key UNIQUE (ref_no);


--
-- Name: payment_contractreceipt payment_contractreceipt_pkey; Type: CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.payment_contractreceipt
    ADD CONSTRAINT payment_contractreceipt_pkey PRIMARY KEY (id);


--
-- Name: payment_feature payment_feature_pkey; Type: CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.payment_feature
    ADD CONSTRAINT payment_feature_pkey PRIMARY KEY (id);


--
-- Name: payment_membership payment_membership_pkey; Type: CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.payment_membership
    ADD CONSTRAINT payment_membership_pkey PRIMARY KEY (id);


--
-- Name: payment_membershipgroup payment_membershipgroup_pkey; Type: CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.payment_membershipgroup
    ADD CONSTRAINT payment_membershipgroup_pkey PRIMARY KEY (id);


--
-- Name: payment_membershipgroup payment_membershipgroup_slug_key; Type: CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.payment_membershipgroup
    ADD CONSTRAINT payment_membershipgroup_slug_key UNIQUE (slug);


--
-- Name: payment_membershipplan_features payment_membershipplan_f_membershipplan_id_featur_998d299c_uniq; Type: CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.payment_membershipplan_features
    ADD CONSTRAINT payment_membershipplan_f_membershipplan_id_featur_998d299c_uniq UNIQUE (membershipplan_id, feature_id);


--
-- Name: payment_membershipplan_features payment_membershipplan_features_pkey; Type: CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.payment_membershipplan_features
    ADD CONSTRAINT payment_membershipplan_features_pkey PRIMARY KEY (id);


--
-- Name: payment_membershipplan payment_membershipplan_pkey; Type: CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.payment_membershipplan
    ADD CONSTRAINT payment_membershipplan_pkey PRIMARY KEY (id);


--
-- Name: payment_membershipplan payment_membershipplan_slug_key; Type: CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.payment_membershipplan
    ADD CONSTRAINT payment_membershipplan_slug_key UNIQUE (slug);


--
-- Name: payment_membershipreceipt payment_membershipreceipt_pkey; Type: CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.payment_membershipreceipt
    ADD CONSTRAINT payment_membershipreceipt_pkey PRIMARY KEY (id);


--
-- Name: payment_modeofpayment payment_modeofpayment_pkey; Type: CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.payment_modeofpayment
    ADD CONSTRAINT payment_modeofpayment_pkey PRIMARY KEY (id);


--
-- Name: payment_modeofpayment payment_modeofpayment_slug_key; Type: CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.payment_modeofpayment
    ADD CONSTRAINT payment_modeofpayment_slug_key UNIQUE (slug);


--
-- Name: payment_paypalproduct payment_paypalproduct_pkey; Type: CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.payment_paypalproduct
    ADD CONSTRAINT payment_paypalproduct_pkey PRIMARY KEY (id);


--
-- Name: payment_paypalsubscription payment_paypalsubscription_membership_id_key; Type: CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.payment_paypalsubscription
    ADD CONSTRAINT payment_paypalsubscription_membership_id_key UNIQUE (membership_id);


--
-- Name: payment_paypalsubscription payment_paypalsubscription_pkey; Type: CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.payment_paypalsubscription
    ADD CONSTRAINT payment_paypalsubscription_pkey PRIMARY KEY (id);


--
-- Name: socialaccount_socialaccount socialaccount_socialaccount_pkey; Type: CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.socialaccount_socialaccount
    ADD CONSTRAINT socialaccount_socialaccount_pkey PRIMARY KEY (id);


--
-- Name: socialaccount_socialaccount socialaccount_socialaccount_provider_uid_fc810c6e_uniq; Type: CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.socialaccount_socialaccount
    ADD CONSTRAINT socialaccount_socialaccount_provider_uid_fc810c6e_uniq UNIQUE (provider, uid);


--
-- Name: socialaccount_socialapp_sites socialaccount_socialapp__socialapp_id_site_id_71a9a768_uniq; Type: CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.socialaccount_socialapp_sites
    ADD CONSTRAINT socialaccount_socialapp__socialapp_id_site_id_71a9a768_uniq UNIQUE (socialapp_id, site_id);


--
-- Name: socialaccount_socialapp socialaccount_socialapp_pkey; Type: CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.socialaccount_socialapp
    ADD CONSTRAINT socialaccount_socialapp_pkey PRIMARY KEY (id);


--
-- Name: socialaccount_socialapp_sites socialaccount_socialapp_sites_pkey; Type: CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.socialaccount_socialapp_sites
    ADD CONSTRAINT socialaccount_socialapp_sites_pkey PRIMARY KEY (id);


--
-- Name: socialaccount_socialtoken socialaccount_socialtoken_app_id_account_id_fca4e0ac_uniq; Type: CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.socialaccount_socialtoken
    ADD CONSTRAINT socialaccount_socialtoken_app_id_account_id_fca4e0ac_uniq UNIQUE (app_id, account_id);


--
-- Name: socialaccount_socialtoken socialaccount_socialtoken_pkey; Type: CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.socialaccount_socialtoken
    ADD CONSTRAINT socialaccount_socialtoken_pkey PRIMARY KEY (id);


--
-- Name: supplier_deliverycarrier supplier_deliverycarrier_pkey; Type: CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.supplier_deliverycarrier
    ADD CONSTRAINT supplier_deliverycarrier_pkey PRIMARY KEY (id);


--
-- Name: supplier_order supplier_order_order_id_key; Type: CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.supplier_order
    ADD CONSTRAINT supplier_order_order_id_key UNIQUE (order_id);


--
-- Name: supplier_order supplier_order_pkey; Type: CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.supplier_order
    ADD CONSTRAINT supplier_order_pkey PRIMARY KEY (id);


--
-- Name: supplier_ordernote supplier_ordernote_order_id_key; Type: CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.supplier_ordernote
    ADD CONSTRAINT supplier_ordernote_order_id_key UNIQUE (order_id);


--
-- Name: supplier_ordernote supplier_ordernote_pkey; Type: CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.supplier_ordernote
    ADD CONSTRAINT supplier_ordernote_pkey PRIMARY KEY (id);


--
-- Name: supplier_orderproductvariation supplier_orderproductvariation_pkey; Type: CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.supplier_orderproductvariation
    ADD CONSTRAINT supplier_orderproductvariation_pkey PRIMARY KEY (id);


--
-- Name: supplier_ordershippingdetail supplier_ordershippingdetail_carrier_id_key; Type: CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.supplier_ordershippingdetail
    ADD CONSTRAINT supplier_ordershippingdetail_carrier_id_key UNIQUE (carrier_id);


--
-- Name: supplier_ordershippingdetail supplier_ordershippingdetail_order_id_key; Type: CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.supplier_ordershippingdetail
    ADD CONSTRAINT supplier_ordershippingdetail_order_id_key UNIQUE (order_id);


--
-- Name: supplier_ordershippingdetail supplier_ordershippingdetail_pkey; Type: CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.supplier_ordershippingdetail
    ADD CONSTRAINT supplier_ordershippingdetail_pkey PRIMARY KEY (id);


--
-- Name: supplier_product supplier_product_pkey; Type: CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.supplier_product
    ADD CONSTRAINT supplier_product_pkey PRIMARY KEY (id);


--
-- Name: supplier_product supplier_product_slug_key; Type: CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.supplier_product
    ADD CONSTRAINT supplier_product_slug_key UNIQUE (slug);


--
-- Name: supplier_product_store supplier_product_store_pkey; Type: CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.supplier_product_store
    ADD CONSTRAINT supplier_product_store_pkey PRIMARY KEY (id);


--
-- Name: supplier_product_store supplier_product_store_product_id_store_id_6394e2e5_uniq; Type: CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.supplier_product_store
    ADD CONSTRAINT supplier_product_store_product_id_store_id_6394e2e5_uniq UNIQUE (product_id, store_id);


--
-- Name: supplier_productcategory supplier_productcategory_pkey; Type: CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.supplier_productcategory
    ADD CONSTRAINT supplier_productcategory_pkey PRIMARY KEY (id);


--
-- Name: supplier_productcategory supplier_productcategory_slug_key; Type: CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.supplier_productcategory
    ADD CONSTRAINT supplier_productcategory_slug_key UNIQUE (slug);


--
-- Name: supplier_productcolor supplier_productcolor_pkey; Type: CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.supplier_productcolor
    ADD CONSTRAINT supplier_productcolor_pkey PRIMARY KEY (id);


--
-- Name: supplier_productimage supplier_productimage_pkey; Type: CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.supplier_productimage
    ADD CONSTRAINT supplier_productimage_pkey PRIMARY KEY (id);


--
-- Name: supplier_productimage supplier_productimage_slug_key; Type: CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.supplier_productimage
    ADD CONSTRAINT supplier_productimage_slug_key UNIQUE (slug);


--
-- Name: supplier_productmaterial supplier_productmaterial_pkey; Type: CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.supplier_productmaterial
    ADD CONSTRAINT supplier_productmaterial_pkey PRIMARY KEY (id);


--
-- Name: supplier_productprice supplier_productprice_pkey; Type: CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.supplier_productprice
    ADD CONSTRAINT supplier_productprice_pkey PRIMARY KEY (id);


--
-- Name: supplier_productreview supplier_productreview_pkey; Type: CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.supplier_productreview
    ADD CONSTRAINT supplier_productreview_pkey PRIMARY KEY (id);


--
-- Name: supplier_productsubcategory supplier_productsubcategory_pkey; Type: CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.supplier_productsubcategory
    ADD CONSTRAINT supplier_productsubcategory_pkey PRIMARY KEY (id);


--
-- Name: supplier_productsubcategory supplier_productsubcategory_slug_key; Type: CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.supplier_productsubcategory
    ADD CONSTRAINT supplier_productsubcategory_slug_key UNIQUE (slug);


--
-- Name: supplier_producttag supplier_producttag_pkey; Type: CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.supplier_producttag
    ADD CONSTRAINT supplier_producttag_pkey PRIMARY KEY (id);


--
-- Name: supplier_productvideo supplier_productvideo_pkey; Type: CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.supplier_productvideo
    ADD CONSTRAINT supplier_productvideo_pkey PRIMARY KEY (id);


--
-- Name: supplier_productvideo supplier_productvideo_slug_key; Type: CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.supplier_productvideo
    ADD CONSTRAINT supplier_productvideo_slug_key UNIQUE (slug);


--
-- Name: supplier_service supplier_service_pkey; Type: CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.supplier_service
    ADD CONSTRAINT supplier_service_pkey PRIMARY KEY (id);


--
-- Name: supplier_service supplier_service_slug_key; Type: CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.supplier_service
    ADD CONSTRAINT supplier_service_slug_key UNIQUE (slug);


--
-- Name: supplier_serviceimage supplier_serviceimage_pkey; Type: CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.supplier_serviceimage
    ADD CONSTRAINT supplier_serviceimage_pkey PRIMARY KEY (id);


--
-- Name: supplier_serviceimage supplier_serviceimage_slug_key; Type: CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.supplier_serviceimage
    ADD CONSTRAINT supplier_serviceimage_slug_key UNIQUE (slug);


--
-- Name: supplier_servicetag supplier_servicetag_pkey; Type: CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.supplier_servicetag
    ADD CONSTRAINT supplier_servicetag_pkey PRIMARY KEY (id);


--
-- Name: supplier_servicetag supplier_servicetag_slug_key; Type: CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.supplier_servicetag
    ADD CONSTRAINT supplier_servicetag_slug_key UNIQUE (slug);


--
-- Name: supplier_store supplier_store_pkey; Type: CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.supplier_store
    ADD CONSTRAINT supplier_store_pkey PRIMARY KEY (id);


--
-- Name: supplier_store supplier_store_slug_key; Type: CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.supplier_store
    ADD CONSTRAINT supplier_store_slug_key UNIQUE (slug);


--
-- Name: supplier_wishlistproduct supplier_wishlistproduct_pkey; Type: CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.supplier_wishlistproduct
    ADD CONSTRAINT supplier_wishlistproduct_pkey PRIMARY KEY (id);


--
-- Name: account_emailaddress_email_03be32b2; Type: INDEX; Schema: public; Owner: b2b_user
--

CREATE INDEX account_emailaddress_email_03be32b2 ON public.account_emailaddress USING btree (email);


--
-- Name: account_emailaddress_email_03be32b2_like; Type: INDEX; Schema: public; Owner: b2b_user
--

CREATE INDEX account_emailaddress_email_03be32b2_like ON public.account_emailaddress USING btree (email varchar_pattern_ops);


--
-- Name: account_emailaddress_user_id_2c513194; Type: INDEX; Schema: public; Owner: b2b_user
--

CREATE INDEX account_emailaddress_user_id_2c513194 ON public.account_emailaddress USING btree (user_id);


--
-- Name: account_emailconfirmation_email_address_id_5b7f8c58; Type: INDEX; Schema: public; Owner: b2b_user
--

CREATE INDEX account_emailconfirmation_email_address_id_5b7f8c58 ON public.account_emailconfirmation USING btree (email_address_id);


--
-- Name: account_emailconfirmation_key_f43612bd_like; Type: INDEX; Schema: public; Owner: b2b_user
--

CREATE INDEX account_emailconfirmation_key_f43612bd_like ON public.account_emailconfirmation USING btree (key varchar_pattern_ops);


--
-- Name: auth_app_clientprofile_slug_8855f1ce_like; Type: INDEX; Schema: public; Owner: b2b_user
--

CREATE INDEX auth_app_clientprofile_slug_8855f1ce_like ON public.auth_app_clientprofile USING btree (slug varchar_pattern_ops);


--
-- Name: auth_app_clientprofile_team_clientprofile_id_39a3e1ff; Type: INDEX; Schema: public; Owner: b2b_user
--

CREATE INDEX auth_app_clientprofile_team_clientprofile_id_39a3e1ff ON public.auth_app_clientprofile_team USING btree (clientprofile_id);


--
-- Name: auth_app_clientprofile_team_user_id_01a6df3e; Type: INDEX; Schema: public; Owner: b2b_user
--

CREATE INDEX auth_app_clientprofile_team_user_id_01a6df3e ON public.auth_app_clientprofile_team USING btree (user_id);


--
-- Name: auth_app_user_groups_group_id_b4576925; Type: INDEX; Schema: public; Owner: b2b_user
--

CREATE INDEX auth_app_user_groups_group_id_b4576925 ON public.auth_app_user_groups USING btree (group_id);


--
-- Name: auth_app_user_groups_user_id_2b6e45f5; Type: INDEX; Schema: public; Owner: b2b_user
--

CREATE INDEX auth_app_user_groups_user_id_2b6e45f5 ON public.auth_app_user_groups USING btree (user_id);


--
-- Name: auth_app_user_user_permissions_permission_id_cc1b2396; Type: INDEX; Schema: public; Owner: b2b_user
--

CREATE INDEX auth_app_user_user_permissions_permission_id_cc1b2396 ON public.auth_app_user_user_permissions USING btree (permission_id);


--
-- Name: auth_app_user_user_permissions_user_id_b7c37328; Type: INDEX; Schema: public; Owner: b2b_user
--

CREATE INDEX auth_app_user_user_permissions_user_id_b7c37328 ON public.auth_app_user_user_permissions USING btree (user_id);


--
-- Name: auth_app_user_username_31bc9e0e_like; Type: INDEX; Schema: public; Owner: b2b_user
--

CREATE INDEX auth_app_user_username_31bc9e0e_like ON public.auth_app_user USING btree (username varchar_pattern_ops);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: b2b_user
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: b2b_user
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: b2b_user
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: b2b_user
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: buyer_cart_buyer_id_60276c20; Type: INDEX; Schema: public; Owner: b2b_user
--

CREATE INDEX buyer_cart_buyer_id_60276c20 ON public.buyer_cart USING btree (buyer_id);


--
-- Name: coms_groupchat_chatfilepath_4bc07548_like; Type: INDEX; Schema: public; Owner: b2b_user
--

CREATE INDEX coms_groupchat_chatfilepath_4bc07548_like ON public.coms_groupchat USING btree (chatfilepath varchar_pattern_ops);


--
-- Name: coms_groupchat_participants_groupchat_id_619966a9; Type: INDEX; Schema: public; Owner: b2b_user
--

CREATE INDEX coms_groupchat_participants_groupchat_id_619966a9 ON public.coms_groupchat_participants USING btree (groupchat_id);


--
-- Name: coms_groupchat_participants_user_id_aa6bac36; Type: INDEX; Schema: public; Owner: b2b_user
--

CREATE INDEX coms_groupchat_participants_user_id_aa6bac36 ON public.coms_groupchat_participants USING btree (user_id);


--
-- Name: coms_groupchat_roomname_944d0ed1_like; Type: INDEX; Schema: public; Owner: b2b_user
--

CREATE INDEX coms_groupchat_roomname_944d0ed1_like ON public.coms_groupchat USING btree (roomname varchar_pattern_ops);


--
-- Name: coms_interclientchat_chatfilepath_bba9f3c2_like; Type: INDEX; Schema: public; Owner: b2b_user
--

CREATE INDEX coms_interclientchat_chatfilepath_bba9f3c2_like ON public.coms_interclientchat USING btree (chatfilepath varchar_pattern_ops);


--
-- Name: coms_interclientchat_initiator_id_d8743854; Type: INDEX; Schema: public; Owner: b2b_user
--

CREATE INDEX coms_interclientchat_initiator_id_d8743854 ON public.coms_interclientchat USING btree (initiator_id);


--
-- Name: coms_interclientchat_participant_id_0a9d6048; Type: INDEX; Schema: public; Owner: b2b_user
--

CREATE INDEX coms_interclientchat_participant_id_0a9d6048 ON public.coms_interclientchat USING btree (participant_id);


--
-- Name: coms_interclientchat_roomname_d1dfdaa2_like; Type: INDEX; Schema: public; Owner: b2b_user
--

CREATE INDEX coms_interclientchat_roomname_d1dfdaa2_like ON public.coms_interclientchat USING btree (roomname varchar_pattern_ops);


--
-- Name: coms_interuserchat_chatfilepath_b294ef43_like; Type: INDEX; Schema: public; Owner: b2b_user
--

CREATE INDEX coms_interuserchat_chatfilepath_b294ef43_like ON public.coms_interuserchat USING btree (chatfilepath varchar_pattern_ops);


--
-- Name: coms_interuserchat_participants_interuserchat_id_abc939d9; Type: INDEX; Schema: public; Owner: b2b_user
--

CREATE INDEX coms_interuserchat_participants_interuserchat_id_abc939d9 ON public.coms_interuserchat_participants USING btree (interuserchat_id);


--
-- Name: coms_interuserchat_participants_user_id_a5d9d291; Type: INDEX; Schema: public; Owner: b2b_user
--

CREATE INDEX coms_interuserchat_participants_user_id_a5d9d291 ON public.coms_interuserchat_participants USING btree (user_id);


--
-- Name: coms_interuserchat_roomname_62e5bf63_like; Type: INDEX; Schema: public; Owner: b2b_user
--

CREATE INDEX coms_interuserchat_roomname_62e5bf63_like ON public.coms_interuserchat USING btree (roomname varchar_pattern_ops);


--
-- Name: coms_orderchat_buyer_representative_id_f5c20fa8; Type: INDEX; Schema: public; Owner: b2b_user
--

CREATE INDEX coms_orderchat_buyer_representative_id_f5c20fa8 ON public.coms_orderchat USING btree (buyer_representative_id);


--
-- Name: coms_orderchat_chatfilepath_fbf0d05e_like; Type: INDEX; Schema: public; Owner: b2b_user
--

CREATE INDEX coms_orderchat_chatfilepath_fbf0d05e_like ON public.coms_orderchat USING btree (chatfilepath varchar_pattern_ops);


--
-- Name: coms_orderchat_roomname_a02c374b_like; Type: INDEX; Schema: public; Owner: b2b_user
--

CREATE INDEX coms_orderchat_roomname_a02c374b_like ON public.coms_orderchat USING btree (roomname varchar_pattern_ops);


--
-- Name: coms_orderchat_supplier_representative_id_fea75338; Type: INDEX; Schema: public; Owner: b2b_user
--

CREATE INDEX coms_orderchat_supplier_representative_id_fea75338 ON public.coms_orderchat USING btree (supplier_representative_id);


--
-- Name: coms_supportclientchat_chatfilepath_0b8136d4_like; Type: INDEX; Schema: public; Owner: b2b_user
--

CREATE INDEX coms_supportclientchat_chatfilepath_0b8136d4_like ON public.coms_supportclientchat USING btree (chatfilepath varchar_pattern_ops);


--
-- Name: coms_supportclientchat_roomname_e216b1d4_like; Type: INDEX; Schema: public; Owner: b2b_user
--

CREATE INDEX coms_supportclientchat_roomname_e216b1d4_like ON public.coms_supportclientchat USING btree (roomname varchar_pattern_ops);


--
-- Name: coms_supportclientchat_support_id_110c505c; Type: INDEX; Schema: public; Owner: b2b_user
--

CREATE INDEX coms_supportclientchat_support_id_110c505c ON public.coms_supportclientchat USING btree (support_id);


--
-- Name: coms_supportclientchat_user_id_182fbc58; Type: INDEX; Schema: public; Owner: b2b_user
--

CREATE INDEX coms_supportclientchat_user_id_182fbc58 ON public.coms_supportclientchat USING btree (user_id);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: b2b_user
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: b2b_user
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: b2b_user
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: b2b_user
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: django_site_domain_a2e37b91_like; Type: INDEX; Schema: public; Owner: b2b_user
--

CREATE INDEX django_site_domain_a2e37b91_like ON public.django_site USING btree (domain varchar_pattern_ops);


--
-- Name: manager_advert_location_id_0dc97317; Type: INDEX; Schema: public; Owner: b2b_user
--

CREATE INDEX manager_advert_location_id_0dc97317 ON public.manager_advert USING btree (location_id);


--
-- Name: manager_advert_product_id_65da07c5; Type: INDEX; Schema: public; Owner: b2b_user
--

CREATE INDEX manager_advert_product_id_65da07c5 ON public.manager_advert USING btree (product_id);


--
-- Name: manager_advert_slug_eeeb4b5e_like; Type: INDEX; Schema: public; Owner: b2b_user
--

CREATE INDEX manager_advert_slug_eeeb4b5e_like ON public.manager_advert USING btree (slug varchar_pattern_ops);


--
-- Name: manager_advertisinglocation_showroom_id_41ddf37c; Type: INDEX; Schema: public; Owner: b2b_user
--

CREATE INDEX manager_advertisinglocation_showroom_id_41ddf37c ON public.manager_advertisinglocation USING btree (showroom_id);


--
-- Name: manager_calenderevent_business_id_53e6bec8; Type: INDEX; Schema: public; Owner: b2b_user
--

CREATE INDEX manager_calenderevent_business_id_53e6bec8 ON public.manager_calenderevent USING btree (business_id);


--
-- Name: manager_discussion_slug_089f7675_like; Type: INDEX; Schema: public; Owner: b2b_user
--

CREATE INDEX manager_discussion_slug_089f7675_like ON public.manager_discussion USING btree (slug varchar_pattern_ops);


--
-- Name: manager_discussion_user_id_d5865256; Type: INDEX; Schema: public; Owner: b2b_user
--

CREATE INDEX manager_discussion_user_id_d5865256 ON public.manager_discussion USING btree (user_id);


--
-- Name: manager_discussionreply_discussion_id_643a929b; Type: INDEX; Schema: public; Owner: b2b_user
--

CREATE INDEX manager_discussionreply_discussion_id_643a929b ON public.manager_discussionreply USING btree (discussion_id);


--
-- Name: manager_discussionreply_user_id_ca6060dd; Type: INDEX; Schema: public; Owner: b2b_user
--

CREATE INDEX manager_discussionreply_user_id_ca6060dd ON public.manager_discussionreply USING btree (user_id);


--
-- Name: manager_emailpromotion_showroom_id_7ecf00ce; Type: INDEX; Schema: public; Owner: b2b_user
--

CREATE INDEX manager_emailpromotion_showroom_id_7ecf00ce ON public.manager_emailpromotion USING btree (showroom_id);


--
-- Name: manager_emailpromotion_slug_a740182c_like; Type: INDEX; Schema: public; Owner: b2b_user
--

CREATE INDEX manager_emailpromotion_slug_a740182c_like ON public.manager_emailpromotion USING btree (slug varchar_pattern_ops);


--
-- Name: manager_location_slug_9940b2ab_like; Type: INDEX; Schema: public; Owner: b2b_user
--

CREATE INDEX manager_location_slug_9940b2ab_like ON public.manager_location USING btree (slug varchar_pattern_ops);


--
-- Name: manager_notification_target_id_a0d990ea; Type: INDEX; Schema: public; Owner: b2b_user
--

CREATE INDEX manager_notification_target_id_a0d990ea ON public.manager_notification USING btree (target_id);


--
-- Name: manager_promotion_showroom_id_456bc74a; Type: INDEX; Schema: public; Owner: b2b_user
--

CREATE INDEX manager_promotion_showroom_id_456bc74a ON public.manager_promotion USING btree (showroom_id);


--
-- Name: manager_promotion_slug_fe67d636_like; Type: INDEX; Schema: public; Owner: b2b_user
--

CREATE INDEX manager_promotion_slug_fe67d636_like ON public.manager_promotion USING btree (slug varchar_pattern_ops);


--
-- Name: manager_service_slug_059ac103_like; Type: INDEX; Schema: public; Owner: b2b_user
--

CREATE INDEX manager_service_slug_059ac103_like ON public.manager_service USING btree (slug varchar_pattern_ops);


--
-- Name: manager_serviceimage_service_id_b329cf1b; Type: INDEX; Schema: public; Owner: b2b_user
--

CREATE INDEX manager_serviceimage_service_id_b329cf1b ON public.manager_serviceimage USING btree (service_id);


--
-- Name: manager_serviceimage_slug_8d509bab_like; Type: INDEX; Schema: public; Owner: b2b_user
--

CREATE INDEX manager_serviceimage_slug_8d509bab_like ON public.manager_serviceimage USING btree (slug varchar_pattern_ops);


--
-- Name: manager_showroom_location_id_87c05668; Type: INDEX; Schema: public; Owner: b2b_user
--

CREATE INDEX manager_showroom_location_id_87c05668 ON public.manager_showroom USING btree (location_id);


--
-- Name: manager_showroom_slug_a857c008_like; Type: INDEX; Schema: public; Owner: b2b_user
--

CREATE INDEX manager_showroom_slug_a857c008_like ON public.manager_showroom USING btree (slug varchar_pattern_ops);


--
-- Name: manager_showroom_store_showroom_id_860442b9; Type: INDEX; Schema: public; Owner: b2b_user
--

CREATE INDEX manager_showroom_store_showroom_id_860442b9 ON public.manager_showroom_store USING btree (showroom_id);


--
-- Name: manager_showroom_store_store_id_5da20b70; Type: INDEX; Schema: public; Owner: b2b_user
--

CREATE INDEX manager_showroom_store_store_id_5da20b70 ON public.manager_showroom_store USING btree (store_id);


--
-- Name: payment_contract_buyer_id_b70e6da0; Type: INDEX; Schema: public; Owner: b2b_user
--

CREATE INDEX payment_contract_buyer_id_b70e6da0 ON public.payment_contract USING btree (buyer_id);


--
-- Name: payment_contract_ref_no_95790182_like; Type: INDEX; Schema: public; Owner: b2b_user
--

CREATE INDEX payment_contract_ref_no_95790182_like ON public.payment_contract USING btree (ref_no varchar_pattern_ops);


--
-- Name: payment_contract_service_id_20203005; Type: INDEX; Schema: public; Owner: b2b_user
--

CREATE INDEX payment_contract_service_id_20203005 ON public.payment_contract USING btree (service_id);


--
-- Name: payment_contract_supplier_id_5906d20b; Type: INDEX; Schema: public; Owner: b2b_user
--

CREATE INDEX payment_contract_supplier_id_5906d20b ON public.payment_contract USING btree (supplier_id);


--
-- Name: payment_contractreceipt_contract_id_6f545366; Type: INDEX; Schema: public; Owner: b2b_user
--

CREATE INDEX payment_contractreceipt_contract_id_6f545366 ON public.payment_contractreceipt USING btree (contract_id);


--
-- Name: payment_contractreceipt_mode_of_payment_id_cfa76f38; Type: INDEX; Schema: public; Owner: b2b_user
--

CREATE INDEX payment_contractreceipt_mode_of_payment_id_cfa76f38 ON public.payment_contractreceipt USING btree (mode_of_payment_id);


--
-- Name: payment_membership_client_id_d4e5eb3e; Type: INDEX; Schema: public; Owner: b2b_user
--

CREATE INDEX payment_membership_client_id_d4e5eb3e ON public.payment_membership USING btree (client_id);


--
-- Name: payment_membership_feature_id_b59dd157; Type: INDEX; Schema: public; Owner: b2b_user
--

CREATE INDEX payment_membership_feature_id_b59dd157 ON public.payment_membership USING btree (feature_id);


--
-- Name: payment_membership_previous_feature_id_50c952cf; Type: INDEX; Schema: public; Owner: b2b_user
--

CREATE INDEX payment_membership_previous_feature_id_50c952cf ON public.payment_membership USING btree (previous_feature_id);


--
-- Name: payment_membership_upgrading_to_id_d849c0c7; Type: INDEX; Schema: public; Owner: b2b_user
--

CREATE INDEX payment_membership_upgrading_to_id_d849c0c7 ON public.payment_membership USING btree (upgrading_to_id);


--
-- Name: payment_membershipgroup_slug_0432e744_like; Type: INDEX; Schema: public; Owner: b2b_user
--

CREATE INDEX payment_membershipgroup_slug_0432e744_like ON public.payment_membershipgroup USING btree (slug varchar_pattern_ops);


--
-- Name: payment_membershipplan_features_feature_id_3aac4038; Type: INDEX; Schema: public; Owner: b2b_user
--

CREATE INDEX payment_membershipplan_features_feature_id_3aac4038 ON public.payment_membershipplan_features USING btree (feature_id);


--
-- Name: payment_membershipplan_features_membershipplan_id_a2d1b8e1; Type: INDEX; Schema: public; Owner: b2b_user
--

CREATE INDEX payment_membershipplan_features_membershipplan_id_a2d1b8e1 ON public.payment_membershipplan_features USING btree (membershipplan_id);


--
-- Name: payment_membershipplan_group_id_22659393; Type: INDEX; Schema: public; Owner: b2b_user
--

CREATE INDEX payment_membershipplan_group_id_22659393 ON public.payment_membershipplan USING btree (group_id);


--
-- Name: payment_membershipplan_slug_3e52682b_like; Type: INDEX; Schema: public; Owner: b2b_user
--

CREATE INDEX payment_membershipplan_slug_3e52682b_like ON public.payment_membershipplan USING btree (slug varchar_pattern_ops);


--
-- Name: payment_membershipreceipt_client_id_0848851e; Type: INDEX; Schema: public; Owner: b2b_user
--

CREATE INDEX payment_membershipreceipt_client_id_0848851e ON public.payment_membershipreceipt USING btree (client_id);


--
-- Name: payment_modeofpayment_slug_afddf4b4_like; Type: INDEX; Schema: public; Owner: b2b_user
--

CREATE INDEX payment_modeofpayment_slug_afddf4b4_like ON public.payment_modeofpayment USING btree (slug varchar_pattern_ops);


--
-- Name: socialaccount_socialaccount_user_id_8146e70c; Type: INDEX; Schema: public; Owner: b2b_user
--

CREATE INDEX socialaccount_socialaccount_user_id_8146e70c ON public.socialaccount_socialaccount USING btree (user_id);


--
-- Name: socialaccount_socialapp_sites_site_id_2579dee5; Type: INDEX; Schema: public; Owner: b2b_user
--

CREATE INDEX socialaccount_socialapp_sites_site_id_2579dee5 ON public.socialaccount_socialapp_sites USING btree (site_id);


--
-- Name: socialaccount_socialapp_sites_socialapp_id_97fb6e7d; Type: INDEX; Schema: public; Owner: b2b_user
--

CREATE INDEX socialaccount_socialapp_sites_socialapp_id_97fb6e7d ON public.socialaccount_socialapp_sites USING btree (socialapp_id);


--
-- Name: socialaccount_socialtoken_account_id_951f210e; Type: INDEX; Schema: public; Owner: b2b_user
--

CREATE INDEX socialaccount_socialtoken_account_id_951f210e ON public.socialaccount_socialtoken USING btree (account_id);


--
-- Name: socialaccount_socialtoken_app_id_636a42d7; Type: INDEX; Schema: public; Owner: b2b_user
--

CREATE INDEX socialaccount_socialtoken_app_id_636a42d7 ON public.socialaccount_socialtoken USING btree (app_id);


--
-- Name: supplier_order_buyer_id_33de697d; Type: INDEX; Schema: public; Owner: b2b_user
--

CREATE INDEX supplier_order_buyer_id_33de697d ON public.supplier_order USING btree (buyer_id);


--
-- Name: supplier_order_order_id_d9a5fbe7_like; Type: INDEX; Schema: public; Owner: b2b_user
--

CREATE INDEX supplier_order_order_id_d9a5fbe7_like ON public.supplier_order USING btree (order_id varchar_pattern_ops);


--
-- Name: supplier_order_supplier_id_4292fc37; Type: INDEX; Schema: public; Owner: b2b_user
--

CREATE INDEX supplier_order_supplier_id_4292fc37 ON public.supplier_order USING btree (supplier_id);


--
-- Name: supplier_ordernote_user_id_74f43a3c; Type: INDEX; Schema: public; Owner: b2b_user
--

CREATE INDEX supplier_ordernote_user_id_74f43a3c ON public.supplier_ordernote USING btree (user_id);


--
-- Name: supplier_orderproductvariation_cart_id_0ce6675e; Type: INDEX; Schema: public; Owner: b2b_user
--

CREATE INDEX supplier_orderproductvariation_cart_id_0ce6675e ON public.supplier_orderproductvariation USING btree (cart_id);


--
-- Name: supplier_orderproductvariation_color_id_e96f2f40; Type: INDEX; Schema: public; Owner: b2b_user
--

CREATE INDEX supplier_orderproductvariation_color_id_e96f2f40 ON public.supplier_orderproductvariation USING btree (color_id);


--
-- Name: supplier_orderproductvariation_material_id_6a120db1; Type: INDEX; Schema: public; Owner: b2b_user
--

CREATE INDEX supplier_orderproductvariation_material_id_6a120db1 ON public.supplier_orderproductvariation USING btree (material_id);


--
-- Name: supplier_orderproductvariation_order_id_6fe9284c; Type: INDEX; Schema: public; Owner: b2b_user
--

CREATE INDEX supplier_orderproductvariation_order_id_6fe9284c ON public.supplier_orderproductvariation USING btree (order_id);


--
-- Name: supplier_orderproductvariation_price_id_56945920; Type: INDEX; Schema: public; Owner: b2b_user
--

CREATE INDEX supplier_orderproductvariation_price_id_56945920 ON public.supplier_orderproductvariation USING btree (price_id);


--
-- Name: supplier_orderproductvariation_product_id_1e151f49; Type: INDEX; Schema: public; Owner: b2b_user
--

CREATE INDEX supplier_orderproductvariation_product_id_1e151f49 ON public.supplier_orderproductvariation USING btree (product_id);


--
-- Name: supplier_product_business_id_e875e09b; Type: INDEX; Schema: public; Owner: b2b_user
--

CREATE INDEX supplier_product_business_id_e875e09b ON public.supplier_product USING btree (business_id);


--
-- Name: supplier_product_category_id_fcab0966; Type: INDEX; Schema: public; Owner: b2b_user
--

CREATE INDEX supplier_product_category_id_fcab0966 ON public.supplier_product USING btree (category_id);


--
-- Name: supplier_product_slug_bb394dfb_like; Type: INDEX; Schema: public; Owner: b2b_user
--

CREATE INDEX supplier_product_slug_bb394dfb_like ON public.supplier_product USING btree (slug varchar_pattern_ops);


--
-- Name: supplier_product_store_product_id_1101525a; Type: INDEX; Schema: public; Owner: b2b_user
--

CREATE INDEX supplier_product_store_product_id_1101525a ON public.supplier_product_store USING btree (product_id);


--
-- Name: supplier_product_store_store_id_cce92df5; Type: INDEX; Schema: public; Owner: b2b_user
--

CREATE INDEX supplier_product_store_store_id_cce92df5 ON public.supplier_product_store USING btree (store_id);


--
-- Name: supplier_product_sub_category_id_6b95aa02; Type: INDEX; Schema: public; Owner: b2b_user
--

CREATE INDEX supplier_product_sub_category_id_6b95aa02 ON public.supplier_product USING btree (sub_category_id);


--
-- Name: supplier_productcategory_slug_f7449658_like; Type: INDEX; Schema: public; Owner: b2b_user
--

CREATE INDEX supplier_productcategory_slug_f7449658_like ON public.supplier_productcategory USING btree (slug varchar_pattern_ops);


--
-- Name: supplier_productcolor_product_id_50624bf9; Type: INDEX; Schema: public; Owner: b2b_user
--

CREATE INDEX supplier_productcolor_product_id_50624bf9 ON public.supplier_productcolor USING btree (product_id);


--
-- Name: supplier_productimage_product_id_5f2b7070; Type: INDEX; Schema: public; Owner: b2b_user
--

CREATE INDEX supplier_productimage_product_id_5f2b7070 ON public.supplier_productimage USING btree (product_id);


--
-- Name: supplier_productimage_slug_125e424e_like; Type: INDEX; Schema: public; Owner: b2b_user
--

CREATE INDEX supplier_productimage_slug_125e424e_like ON public.supplier_productimage USING btree (slug varchar_pattern_ops);


--
-- Name: supplier_productmaterial_product_id_cd84c7dd; Type: INDEX; Schema: public; Owner: b2b_user
--

CREATE INDEX supplier_productmaterial_product_id_cd84c7dd ON public.supplier_productmaterial USING btree (product_id);


--
-- Name: supplier_productprice_product_id_659a1b65; Type: INDEX; Schema: public; Owner: b2b_user
--

CREATE INDEX supplier_productprice_product_id_659a1b65 ON public.supplier_productprice USING btree (product_id);


--
-- Name: supplier_productreview_business_id_a00a1f0b; Type: INDEX; Schema: public; Owner: b2b_user
--

CREATE INDEX supplier_productreview_business_id_a00a1f0b ON public.supplier_productreview USING btree (business_id);


--
-- Name: supplier_productreview_product_id_b700d1a2; Type: INDEX; Schema: public; Owner: b2b_user
--

CREATE INDEX supplier_productreview_product_id_b700d1a2 ON public.supplier_productreview USING btree (product_id);


--
-- Name: supplier_productsubcategory_category_id_2d3ab428; Type: INDEX; Schema: public; Owner: b2b_user
--

CREATE INDEX supplier_productsubcategory_category_id_2d3ab428 ON public.supplier_productsubcategory USING btree (category_id);


--
-- Name: supplier_productsubcategory_slug_37a97192_like; Type: INDEX; Schema: public; Owner: b2b_user
--

CREATE INDEX supplier_productsubcategory_slug_37a97192_like ON public.supplier_productsubcategory USING btree (slug varchar_pattern_ops);


--
-- Name: supplier_producttag_product_id_03807bef; Type: INDEX; Schema: public; Owner: b2b_user
--

CREATE INDEX supplier_producttag_product_id_03807bef ON public.supplier_producttag USING btree (product_id);


--
-- Name: supplier_productvideo_product_id_f1897967; Type: INDEX; Schema: public; Owner: b2b_user
--

CREATE INDEX supplier_productvideo_product_id_f1897967 ON public.supplier_productvideo USING btree (product_id);


--
-- Name: supplier_productvideo_slug_b6fd747e_like; Type: INDEX; Schema: public; Owner: b2b_user
--

CREATE INDEX supplier_productvideo_slug_b6fd747e_like ON public.supplier_productvideo USING btree (slug varchar_pattern_ops);


--
-- Name: supplier_service_slug_f09d947d_like; Type: INDEX; Schema: public; Owner: b2b_user
--

CREATE INDEX supplier_service_slug_f09d947d_like ON public.supplier_service USING btree (slug varchar_pattern_ops);


--
-- Name: supplier_service_supplier_id_a15f036b; Type: INDEX; Schema: public; Owner: b2b_user
--

CREATE INDEX supplier_service_supplier_id_a15f036b ON public.supplier_service USING btree (supplier_id);


--
-- Name: supplier_serviceimage_service_id_ae128000; Type: INDEX; Schema: public; Owner: b2b_user
--

CREATE INDEX supplier_serviceimage_service_id_ae128000 ON public.supplier_serviceimage USING btree (service_id);


--
-- Name: supplier_serviceimage_slug_08e4f5c7_like; Type: INDEX; Schema: public; Owner: b2b_user
--

CREATE INDEX supplier_serviceimage_slug_08e4f5c7_like ON public.supplier_serviceimage USING btree (slug varchar_pattern_ops);


--
-- Name: supplier_servicetag_service_id_0eae94ec; Type: INDEX; Schema: public; Owner: b2b_user
--

CREATE INDEX supplier_servicetag_service_id_0eae94ec ON public.supplier_servicetag USING btree (service_id);


--
-- Name: supplier_servicetag_slug_45441d51_like; Type: INDEX; Schema: public; Owner: b2b_user
--

CREATE INDEX supplier_servicetag_slug_45441d51_like ON public.supplier_servicetag USING btree (slug varchar_pattern_ops);


--
-- Name: supplier_store_slug_8df22fa1_like; Type: INDEX; Schema: public; Owner: b2b_user
--

CREATE INDEX supplier_store_slug_8df22fa1_like ON public.supplier_store USING btree (slug varchar_pattern_ops);


--
-- Name: supplier_store_supplier_id_d7bbffc3; Type: INDEX; Schema: public; Owner: b2b_user
--

CREATE INDEX supplier_store_supplier_id_d7bbffc3 ON public.supplier_store USING btree (supplier_id);


--
-- Name: supplier_wishlistproduct_buyer_id_5c994e63; Type: INDEX; Schema: public; Owner: b2b_user
--

CREATE INDEX supplier_wishlistproduct_buyer_id_5c994e63 ON public.supplier_wishlistproduct USING btree (buyer_id);


--
-- Name: supplier_wishlistproduct_product_id_811c4e6a; Type: INDEX; Schema: public; Owner: b2b_user
--

CREATE INDEX supplier_wishlistproduct_product_id_811c4e6a ON public.supplier_wishlistproduct USING btree (product_id);


--
-- Name: unique_primary_email; Type: INDEX; Schema: public; Owner: b2b_user
--

CREATE UNIQUE INDEX unique_primary_email ON public.account_emailaddress USING btree (user_id, "primary") WHERE "primary";


--
-- Name: unique_verified_email; Type: INDEX; Schema: public; Owner: b2b_user
--

CREATE UNIQUE INDEX unique_verified_email ON public.account_emailaddress USING btree (email) WHERE verified;


--
-- Name: account_emailaddress account_emailaddress_user_id_2c513194_fk_auth_app_user_id; Type: FK CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.account_emailaddress
    ADD CONSTRAINT account_emailaddress_user_id_2c513194_fk_auth_app_user_id FOREIGN KEY (user_id) REFERENCES public.auth_app_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: account_emailconfirmation account_emailconfirm_email_address_id_5b7f8c58_fk_account_e; Type: FK CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.account_emailconfirmation
    ADD CONSTRAINT account_emailconfirm_email_address_id_5b7f8c58_fk_account_e FOREIGN KEY (email_address_id) REFERENCES public.account_emailaddress(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_app_clientprofile_team auth_app_clientprofi_clientprofile_id_39a3e1ff_fk_auth_app_; Type: FK CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.auth_app_clientprofile_team
    ADD CONSTRAINT auth_app_clientprofi_clientprofile_id_39a3e1ff_fk_auth_app_ FOREIGN KEY (clientprofile_id) REFERENCES public.auth_app_clientprofile(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_app_clientprofile_team auth_app_clientprofi_user_id_01a6df3e_fk_auth_app_; Type: FK CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.auth_app_clientprofile_team
    ADD CONSTRAINT auth_app_clientprofi_user_id_01a6df3e_fk_auth_app_ FOREIGN KEY (user_id) REFERENCES public.auth_app_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_app_clientprofile auth_app_clientprofile_user_id_0b61782b_fk_auth_app_user_id; Type: FK CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.auth_app_clientprofile
    ADD CONSTRAINT auth_app_clientprofile_user_id_0b61782b_fk_auth_app_user_id FOREIGN KEY (user_id) REFERENCES public.auth_app_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_app_supportprofile auth_app_supportprofile_user_id_e53c684a_fk_auth_app_user_id; Type: FK CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.auth_app_supportprofile
    ADD CONSTRAINT auth_app_supportprofile_user_id_e53c684a_fk_auth_app_user_id FOREIGN KEY (user_id) REFERENCES public.auth_app_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_app_user_groups auth_app_user_groups_group_id_b4576925_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.auth_app_user_groups
    ADD CONSTRAINT auth_app_user_groups_group_id_b4576925_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_app_user_groups auth_app_user_groups_user_id_2b6e45f5_fk_auth_app_user_id; Type: FK CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.auth_app_user_groups
    ADD CONSTRAINT auth_app_user_groups_user_id_2b6e45f5_fk_auth_app_user_id FOREIGN KEY (user_id) REFERENCES public.auth_app_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_app_user_user_permissions auth_app_user_user_p_permission_id_cc1b2396_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.auth_app_user_user_permissions
    ADD CONSTRAINT auth_app_user_user_p_permission_id_cc1b2396_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_app_user_user_permissions auth_app_user_user_p_user_id_b7c37328_fk_auth_app_; Type: FK CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.auth_app_user_user_permissions
    ADD CONSTRAINT auth_app_user_user_p_user_id_b7c37328_fk_auth_app_ FOREIGN KEY (user_id) REFERENCES public.auth_app_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: buyer_cart buyer_cart_buyer_id_60276c20_fk_auth_app_clientprofile_id; Type: FK CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.buyer_cart
    ADD CONSTRAINT buyer_cart_buyer_id_60276c20_fk_auth_app_clientprofile_id FOREIGN KEY (buyer_id) REFERENCES public.auth_app_clientprofile(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: coms_groupchat_participants coms_groupchat_parti_user_id_aa6bac36_fk_auth_app_; Type: FK CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.coms_groupchat_participants
    ADD CONSTRAINT coms_groupchat_parti_user_id_aa6bac36_fk_auth_app_ FOREIGN KEY (user_id) REFERENCES public.auth_app_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: coms_groupchat_participants coms_groupchat_participants_groupchat_id_619966a9_fk; Type: FK CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.coms_groupchat_participants
    ADD CONSTRAINT coms_groupchat_participants_groupchat_id_619966a9_fk FOREIGN KEY (groupchat_id) REFERENCES public.coms_groupchat(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: coms_interclientchat coms_interclientchat_initiator_id_d8743854_fk_auth_app_; Type: FK CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.coms_interclientchat
    ADD CONSTRAINT coms_interclientchat_initiator_id_d8743854_fk_auth_app_ FOREIGN KEY (initiator_id) REFERENCES public.auth_app_clientprofile(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: coms_interclientchat coms_interclientchat_participant_id_0a9d6048_fk_auth_app_; Type: FK CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.coms_interclientchat
    ADD CONSTRAINT coms_interclientchat_participant_id_0a9d6048_fk_auth_app_ FOREIGN KEY (participant_id) REFERENCES public.auth_app_clientprofile(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: coms_interuserchat_participants coms_interuserchat_p_user_id_a5d9d291_fk_auth_app_; Type: FK CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.coms_interuserchat_participants
    ADD CONSTRAINT coms_interuserchat_p_user_id_a5d9d291_fk_auth_app_ FOREIGN KEY (user_id) REFERENCES public.auth_app_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: coms_interuserchat_participants coms_interuserchat_participants_interuserchat_id_abc939d9_fk; Type: FK CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.coms_interuserchat_participants
    ADD CONSTRAINT coms_interuserchat_participants_interuserchat_id_abc939d9_fk FOREIGN KEY (interuserchat_id) REFERENCES public.coms_interuserchat(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: coms_orderchat coms_orderchat_buyer_representative_f5c20fa8_fk_auth_app_; Type: FK CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.coms_orderchat
    ADD CONSTRAINT coms_orderchat_buyer_representative_f5c20fa8_fk_auth_app_ FOREIGN KEY (buyer_representative_id) REFERENCES public.auth_app_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: coms_orderchat coms_orderchat_order_id_1d711362_fk_supplier_order_id; Type: FK CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.coms_orderchat
    ADD CONSTRAINT coms_orderchat_order_id_1d711362_fk_supplier_order_id FOREIGN KEY (order_id) REFERENCES public.supplier_order(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: coms_orderchat coms_orderchat_supplier_representat_fea75338_fk_auth_app_; Type: FK CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.coms_orderchat
    ADD CONSTRAINT coms_orderchat_supplier_representat_fea75338_fk_auth_app_ FOREIGN KEY (supplier_representative_id) REFERENCES public.auth_app_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: coms_supportclientchat coms_supportclientch_support_id_110c505c_fk_auth_app_; Type: FK CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.coms_supportclientchat
    ADD CONSTRAINT coms_supportclientch_support_id_110c505c_fk_auth_app_ FOREIGN KEY (support_id) REFERENCES public.auth_app_supportprofile(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: coms_supportclientchat coms_supportclientchat_user_id_182fbc58_fk_auth_app_user_id; Type: FK CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.coms_supportclientchat
    ADD CONSTRAINT coms_supportclientchat_user_id_182fbc58_fk_auth_app_user_id FOREIGN KEY (user_id) REFERENCES public.auth_app_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_app_user_id; Type: FK CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_app_user_id FOREIGN KEY (user_id) REFERENCES public.auth_app_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: manager_advert manager_advert_location_id_0dc97317_fk_manager_a; Type: FK CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.manager_advert
    ADD CONSTRAINT manager_advert_location_id_0dc97317_fk_manager_a FOREIGN KEY (location_id) REFERENCES public.manager_advertisinglocation(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: manager_advert manager_advert_product_id_65da07c5_fk_supplier_product_id; Type: FK CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.manager_advert
    ADD CONSTRAINT manager_advert_product_id_65da07c5_fk_supplier_product_id FOREIGN KEY (product_id) REFERENCES public.supplier_product(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: manager_advertisinglocation manager_advertisingl_showroom_id_41ddf37c_fk_manager_s; Type: FK CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.manager_advertisinglocation
    ADD CONSTRAINT manager_advertisingl_showroom_id_41ddf37c_fk_manager_s FOREIGN KEY (showroom_id) REFERENCES public.manager_showroom(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: manager_calenderevent manager_calendereven_business_id_53e6bec8_fk_auth_app_; Type: FK CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.manager_calenderevent
    ADD CONSTRAINT manager_calendereven_business_id_53e6bec8_fk_auth_app_ FOREIGN KEY (business_id) REFERENCES public.auth_app_clientprofile(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: manager_discussion manager_discussion_user_id_d5865256_fk_auth_app_user_id; Type: FK CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.manager_discussion
    ADD CONSTRAINT manager_discussion_user_id_d5865256_fk_auth_app_user_id FOREIGN KEY (user_id) REFERENCES public.auth_app_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: manager_discussionreply manager_discussionre_discussion_id_643a929b_fk_manager_d; Type: FK CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.manager_discussionreply
    ADD CONSTRAINT manager_discussionre_discussion_id_643a929b_fk_manager_d FOREIGN KEY (discussion_id) REFERENCES public.manager_discussion(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: manager_discussionreply manager_discussionreply_user_id_ca6060dd_fk_auth_app_user_id; Type: FK CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.manager_discussionreply
    ADD CONSTRAINT manager_discussionreply_user_id_ca6060dd_fk_auth_app_user_id FOREIGN KEY (user_id) REFERENCES public.auth_app_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: manager_emailpromotion manager_emailpromoti_showroom_id_7ecf00ce_fk_manager_s; Type: FK CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.manager_emailpromotion
    ADD CONSTRAINT manager_emailpromoti_showroom_id_7ecf00ce_fk_manager_s FOREIGN KEY (showroom_id) REFERENCES public.manager_showroom(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: manager_notification manager_notification_target_id_a0d990ea_fk_auth_app_; Type: FK CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.manager_notification
    ADD CONSTRAINT manager_notification_target_id_a0d990ea_fk_auth_app_ FOREIGN KEY (target_id) REFERENCES public.auth_app_clientprofile(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: manager_promotion manager_promotion_showroom_id_456bc74a_fk_manager_showroom_id; Type: FK CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.manager_promotion
    ADD CONSTRAINT manager_promotion_showroom_id_456bc74a_fk_manager_showroom_id FOREIGN KEY (showroom_id) REFERENCES public.manager_showroom(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: manager_serviceimage manager_serviceimage_service_id_b329cf1b_fk_manager_service_id; Type: FK CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.manager_serviceimage
    ADD CONSTRAINT manager_serviceimage_service_id_b329cf1b_fk_manager_service_id FOREIGN KEY (service_id) REFERENCES public.manager_service(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: manager_showroom manager_showroom_location_id_87c05668_fk_manager_location_id; Type: FK CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.manager_showroom
    ADD CONSTRAINT manager_showroom_location_id_87c05668_fk_manager_location_id FOREIGN KEY (location_id) REFERENCES public.manager_location(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: manager_showroom_store manager_showroom_sto_showroom_id_860442b9_fk_manager_s; Type: FK CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.manager_showroom_store
    ADD CONSTRAINT manager_showroom_sto_showroom_id_860442b9_fk_manager_s FOREIGN KEY (showroom_id) REFERENCES public.manager_showroom(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: manager_showroom_store manager_showroom_store_store_id_5da20b70_fk_supplier_store_id; Type: FK CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.manager_showroom_store
    ADD CONSTRAINT manager_showroom_store_store_id_5da20b70_fk_supplier_store_id FOREIGN KEY (store_id) REFERENCES public.supplier_store(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: payment_braintreesubscription payment_braintreesub_membership_id_2b12583b_fk_payment_m; Type: FK CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.payment_braintreesubscription
    ADD CONSTRAINT payment_braintreesub_membership_id_2b12583b_fk_payment_m FOREIGN KEY (membership_id) REFERENCES public.payment_membership(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: payment_cardpayment payment_cardpayment_subscription_id_ff41091f_fk_payment_b; Type: FK CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.payment_cardpayment
    ADD CONSTRAINT payment_cardpayment_subscription_id_ff41091f_fk_payment_b FOREIGN KEY (subscription_id) REFERENCES public.payment_braintreesubscription(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: payment_contract payment_contract_buyer_id_b70e6da0_fk_auth_app_user_id; Type: FK CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.payment_contract
    ADD CONSTRAINT payment_contract_buyer_id_b70e6da0_fk_auth_app_user_id FOREIGN KEY (buyer_id) REFERENCES public.auth_app_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: payment_contract payment_contract_service_id_20203005_fk_supplier_service_id; Type: FK CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.payment_contract
    ADD CONSTRAINT payment_contract_service_id_20203005_fk_supplier_service_id FOREIGN KEY (service_id) REFERENCES public.supplier_service(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: payment_contract payment_contract_supplier_id_5906d20b_fk_auth_app_user_id; Type: FK CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.payment_contract
    ADD CONSTRAINT payment_contract_supplier_id_5906d20b_fk_auth_app_user_id FOREIGN KEY (supplier_id) REFERENCES public.auth_app_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: payment_contractreceipt payment_contractrece_contract_id_6f545366_fk_payment_c; Type: FK CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.payment_contractreceipt
    ADD CONSTRAINT payment_contractrece_contract_id_6f545366_fk_payment_c FOREIGN KEY (contract_id) REFERENCES public.payment_contract(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: payment_contractreceipt payment_contractrece_mode_of_payment_id_cfa76f38_fk_payment_m; Type: FK CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.payment_contractreceipt
    ADD CONSTRAINT payment_contractrece_mode_of_payment_id_cfa76f38_fk_payment_m FOREIGN KEY (mode_of_payment_id) REFERENCES public.payment_modeofpayment(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: payment_membership payment_membership_client_id_d4e5eb3e_fk_auth_app_user_id; Type: FK CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.payment_membership
    ADD CONSTRAINT payment_membership_client_id_d4e5eb3e_fk_auth_app_user_id FOREIGN KEY (client_id) REFERENCES public.auth_app_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: payment_membership payment_membership_feature_id_b59dd157_fk_payment_feature_id; Type: FK CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.payment_membership
    ADD CONSTRAINT payment_membership_feature_id_b59dd157_fk_payment_feature_id FOREIGN KEY (feature_id) REFERENCES public.payment_feature(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: payment_membership payment_membership_previous_feature_id_50c952cf_fk_payment_f; Type: FK CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.payment_membership
    ADD CONSTRAINT payment_membership_previous_feature_id_50c952cf_fk_payment_f FOREIGN KEY (previous_feature_id) REFERENCES public.payment_feature(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: payment_membership payment_membership_upgrading_to_id_d849c0c7_fk_payment_f; Type: FK CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.payment_membership
    ADD CONSTRAINT payment_membership_upgrading_to_id_d849c0c7_fk_payment_f FOREIGN KEY (upgrading_to_id) REFERENCES public.payment_feature(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: payment_membershipplan_features payment_membershippl_feature_id_3aac4038_fk_payment_f; Type: FK CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.payment_membershipplan_features
    ADD CONSTRAINT payment_membershippl_feature_id_3aac4038_fk_payment_f FOREIGN KEY (feature_id) REFERENCES public.payment_feature(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: payment_membershipplan payment_membershippl_group_id_22659393_fk_payment_m; Type: FK CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.payment_membershipplan
    ADD CONSTRAINT payment_membershippl_group_id_22659393_fk_payment_m FOREIGN KEY (group_id) REFERENCES public.payment_membershipgroup(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: payment_membershipplan_features payment_membershippl_membershipplan_id_a2d1b8e1_fk_payment_m; Type: FK CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.payment_membershipplan_features
    ADD CONSTRAINT payment_membershippl_membershipplan_id_a2d1b8e1_fk_payment_m FOREIGN KEY (membershipplan_id) REFERENCES public.payment_membershipplan(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: payment_membershipreceipt payment_membershipre_client_id_0848851e_fk_auth_app_; Type: FK CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.payment_membershipreceipt
    ADD CONSTRAINT payment_membershipre_client_id_0848851e_fk_auth_app_ FOREIGN KEY (client_id) REFERENCES public.auth_app_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: payment_paypalsubscription payment_paypalsubscr_membership_id_999c0ef9_fk_payment_m; Type: FK CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.payment_paypalsubscription
    ADD CONSTRAINT payment_paypalsubscr_membership_id_999c0ef9_fk_payment_m FOREIGN KEY (membership_id) REFERENCES public.payment_membership(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: socialaccount_socialtoken socialaccount_social_account_id_951f210e_fk_socialacc; Type: FK CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.socialaccount_socialtoken
    ADD CONSTRAINT socialaccount_social_account_id_951f210e_fk_socialacc FOREIGN KEY (account_id) REFERENCES public.socialaccount_socialaccount(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: socialaccount_socialtoken socialaccount_social_app_id_636a42d7_fk_socialacc; Type: FK CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.socialaccount_socialtoken
    ADD CONSTRAINT socialaccount_social_app_id_636a42d7_fk_socialacc FOREIGN KEY (app_id) REFERENCES public.socialaccount_socialapp(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: socialaccount_socialapp_sites socialaccount_social_site_id_2579dee5_fk_django_si; Type: FK CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.socialaccount_socialapp_sites
    ADD CONSTRAINT socialaccount_social_site_id_2579dee5_fk_django_si FOREIGN KEY (site_id) REFERENCES public.django_site(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: socialaccount_socialapp_sites socialaccount_social_socialapp_id_97fb6e7d_fk_socialacc; Type: FK CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.socialaccount_socialapp_sites
    ADD CONSTRAINT socialaccount_social_socialapp_id_97fb6e7d_fk_socialacc FOREIGN KEY (socialapp_id) REFERENCES public.socialaccount_socialapp(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: socialaccount_socialaccount socialaccount_social_user_id_8146e70c_fk_auth_app_; Type: FK CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.socialaccount_socialaccount
    ADD CONSTRAINT socialaccount_social_user_id_8146e70c_fk_auth_app_ FOREIGN KEY (user_id) REFERENCES public.auth_app_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: supplier_order supplier_order_buyer_id_33de697d_fk_auth_app_clientprofile_id; Type: FK CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.supplier_order
    ADD CONSTRAINT supplier_order_buyer_id_33de697d_fk_auth_app_clientprofile_id FOREIGN KEY (buyer_id) REFERENCES public.auth_app_clientprofile(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: supplier_order supplier_order_supplier_id_4292fc37_fk_auth_app_; Type: FK CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.supplier_order
    ADD CONSTRAINT supplier_order_supplier_id_4292fc37_fk_auth_app_ FOREIGN KEY (supplier_id) REFERENCES public.auth_app_clientprofile(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: supplier_ordernote supplier_ordernote_order_id_c0e1580d_fk_supplier_order_id; Type: FK CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.supplier_ordernote
    ADD CONSTRAINT supplier_ordernote_order_id_c0e1580d_fk_supplier_order_id FOREIGN KEY (order_id) REFERENCES public.supplier_order(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: supplier_ordernote supplier_ordernote_user_id_74f43a3c_fk_auth_app_user_id; Type: FK CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.supplier_ordernote
    ADD CONSTRAINT supplier_ordernote_user_id_74f43a3c_fk_auth_app_user_id FOREIGN KEY (user_id) REFERENCES public.auth_app_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: supplier_orderproductvariation supplier_orderproduc_cart_id_0ce6675e_fk_buyer_car; Type: FK CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.supplier_orderproductvariation
    ADD CONSTRAINT supplier_orderproduc_cart_id_0ce6675e_fk_buyer_car FOREIGN KEY (cart_id) REFERENCES public.buyer_cart(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: supplier_orderproductvariation supplier_orderproduc_color_id_e96f2f40_fk_supplier_; Type: FK CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.supplier_orderproductvariation
    ADD CONSTRAINT supplier_orderproduc_color_id_e96f2f40_fk_supplier_ FOREIGN KEY (color_id) REFERENCES public.supplier_productcolor(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: supplier_orderproductvariation supplier_orderproduc_material_id_6a120db1_fk_supplier_; Type: FK CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.supplier_orderproductvariation
    ADD CONSTRAINT supplier_orderproduc_material_id_6a120db1_fk_supplier_ FOREIGN KEY (material_id) REFERENCES public.supplier_productmaterial(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: supplier_orderproductvariation supplier_orderproduc_order_id_6fe9284c_fk_supplier_; Type: FK CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.supplier_orderproductvariation
    ADD CONSTRAINT supplier_orderproduc_order_id_6fe9284c_fk_supplier_ FOREIGN KEY (order_id) REFERENCES public.supplier_order(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: supplier_orderproductvariation supplier_orderproduc_price_id_56945920_fk_supplier_; Type: FK CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.supplier_orderproductvariation
    ADD CONSTRAINT supplier_orderproduc_price_id_56945920_fk_supplier_ FOREIGN KEY (price_id) REFERENCES public.supplier_productprice(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: supplier_orderproductvariation supplier_orderproduc_product_id_1e151f49_fk_supplier_; Type: FK CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.supplier_orderproductvariation
    ADD CONSTRAINT supplier_orderproduc_product_id_1e151f49_fk_supplier_ FOREIGN KEY (product_id) REFERENCES public.supplier_product(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: supplier_ordershippingdetail supplier_ordershippi_carrier_id_2f48e1e2_fk_supplier_; Type: FK CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.supplier_ordershippingdetail
    ADD CONSTRAINT supplier_ordershippi_carrier_id_2f48e1e2_fk_supplier_ FOREIGN KEY (carrier_id) REFERENCES public.supplier_deliverycarrier(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: supplier_ordershippingdetail supplier_ordershippi_order_id_2f8fd135_fk_supplier_; Type: FK CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.supplier_ordershippingdetail
    ADD CONSTRAINT supplier_ordershippi_order_id_2f8fd135_fk_supplier_ FOREIGN KEY (order_id) REFERENCES public.supplier_order(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: supplier_product supplier_product_business_id_e875e09b_fk_auth_app_; Type: FK CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.supplier_product
    ADD CONSTRAINT supplier_product_business_id_e875e09b_fk_auth_app_ FOREIGN KEY (business_id) REFERENCES public.auth_app_clientprofile(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: supplier_product supplier_product_category_id_fcab0966_fk_supplier_; Type: FK CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.supplier_product
    ADD CONSTRAINT supplier_product_category_id_fcab0966_fk_supplier_ FOREIGN KEY (category_id) REFERENCES public.supplier_productcategory(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: supplier_product_store supplier_product_sto_product_id_1101525a_fk_supplier_; Type: FK CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.supplier_product_store
    ADD CONSTRAINT supplier_product_sto_product_id_1101525a_fk_supplier_ FOREIGN KEY (product_id) REFERENCES public.supplier_product(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: supplier_product_store supplier_product_store_store_id_cce92df5_fk_supplier_store_id; Type: FK CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.supplier_product_store
    ADD CONSTRAINT supplier_product_store_store_id_cce92df5_fk_supplier_store_id FOREIGN KEY (store_id) REFERENCES public.supplier_store(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: supplier_product supplier_product_sub_category_id_6b95aa02_fk_supplier_; Type: FK CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.supplier_product
    ADD CONSTRAINT supplier_product_sub_category_id_6b95aa02_fk_supplier_ FOREIGN KEY (sub_category_id) REFERENCES public.supplier_productsubcategory(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: supplier_productcolor supplier_productcolo_product_id_50624bf9_fk_supplier_; Type: FK CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.supplier_productcolor
    ADD CONSTRAINT supplier_productcolo_product_id_50624bf9_fk_supplier_ FOREIGN KEY (product_id) REFERENCES public.supplier_product(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: supplier_productimage supplier_productimag_product_id_5f2b7070_fk_supplier_; Type: FK CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.supplier_productimage
    ADD CONSTRAINT supplier_productimag_product_id_5f2b7070_fk_supplier_ FOREIGN KEY (product_id) REFERENCES public.supplier_product(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: supplier_productmaterial supplier_productmate_product_id_cd84c7dd_fk_supplier_; Type: FK CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.supplier_productmaterial
    ADD CONSTRAINT supplier_productmate_product_id_cd84c7dd_fk_supplier_ FOREIGN KEY (product_id) REFERENCES public.supplier_product(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: supplier_productprice supplier_productpric_product_id_659a1b65_fk_supplier_; Type: FK CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.supplier_productprice
    ADD CONSTRAINT supplier_productpric_product_id_659a1b65_fk_supplier_ FOREIGN KEY (product_id) REFERENCES public.supplier_product(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: supplier_productreview supplier_productrevi_business_id_a00a1f0b_fk_auth_app_; Type: FK CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.supplier_productreview
    ADD CONSTRAINT supplier_productrevi_business_id_a00a1f0b_fk_auth_app_ FOREIGN KEY (business_id) REFERENCES public.auth_app_clientprofile(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: supplier_productreview supplier_productrevi_product_id_b700d1a2_fk_supplier_; Type: FK CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.supplier_productreview
    ADD CONSTRAINT supplier_productrevi_product_id_b700d1a2_fk_supplier_ FOREIGN KEY (product_id) REFERENCES public.supplier_product(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: supplier_productsubcategory supplier_productsubc_category_id_2d3ab428_fk_supplier_; Type: FK CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.supplier_productsubcategory
    ADD CONSTRAINT supplier_productsubc_category_id_2d3ab428_fk_supplier_ FOREIGN KEY (category_id) REFERENCES public.supplier_productcategory(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: supplier_producttag supplier_producttag_product_id_03807bef_fk_supplier_product_id; Type: FK CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.supplier_producttag
    ADD CONSTRAINT supplier_producttag_product_id_03807bef_fk_supplier_product_id FOREIGN KEY (product_id) REFERENCES public.supplier_product(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: supplier_productvideo supplier_productvide_product_id_f1897967_fk_supplier_; Type: FK CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.supplier_productvideo
    ADD CONSTRAINT supplier_productvide_product_id_f1897967_fk_supplier_ FOREIGN KEY (product_id) REFERENCES public.supplier_product(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: supplier_service supplier_service_supplier_id_a15f036b_fk_auth_app_user_id; Type: FK CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.supplier_service
    ADD CONSTRAINT supplier_service_supplier_id_a15f036b_fk_auth_app_user_id FOREIGN KEY (supplier_id) REFERENCES public.auth_app_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: supplier_serviceimage supplier_serviceimag_service_id_ae128000_fk_supplier_; Type: FK CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.supplier_serviceimage
    ADD CONSTRAINT supplier_serviceimag_service_id_ae128000_fk_supplier_ FOREIGN KEY (service_id) REFERENCES public.supplier_service(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: supplier_servicetag supplier_servicetag_service_id_0eae94ec_fk_supplier_service_id; Type: FK CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.supplier_servicetag
    ADD CONSTRAINT supplier_servicetag_service_id_0eae94ec_fk_supplier_service_id FOREIGN KEY (service_id) REFERENCES public.supplier_service(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: supplier_store supplier_store_supplier_id_d7bbffc3_fk_auth_app_user_id; Type: FK CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.supplier_store
    ADD CONSTRAINT supplier_store_supplier_id_d7bbffc3_fk_auth_app_user_id FOREIGN KEY (supplier_id) REFERENCES public.auth_app_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: supplier_wishlistproduct supplier_wishlistpro_buyer_id_5c994e63_fk_auth_app_; Type: FK CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.supplier_wishlistproduct
    ADD CONSTRAINT supplier_wishlistpro_buyer_id_5c994e63_fk_auth_app_ FOREIGN KEY (buyer_id) REFERENCES public.auth_app_clientprofile(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: supplier_wishlistproduct supplier_wishlistpro_product_id_811c4e6a_fk_supplier_; Type: FK CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.supplier_wishlistproduct
    ADD CONSTRAINT supplier_wishlistpro_product_id_811c4e6a_fk_supplier_ FOREIGN KEY (product_id) REFERENCES public.supplier_product(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

