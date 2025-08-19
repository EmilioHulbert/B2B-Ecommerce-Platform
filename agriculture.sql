--
-- PostgreSQL database dump
--

-- Dumped from database version 15.13 (Debian 15.13-0+deb12u1)
-- Dumped by pg_dump version 15.13 (Debian 15.13-0+deb12u1)

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

--
-- Name: public; Type: SCHEMA; Schema: -; Owner: django_agriculture_user
--

-- *not* creating schema, since initdb creates it


ALTER SCHEMA public OWNER TO django_agriculture_user;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: account_emailaddress; Type: TABLE; Schema: public; Owner: django_agriculture_user
--

CREATE TABLE public.account_emailaddress (
    id integer NOT NULL,
    email character varying(254) NOT NULL,
    verified boolean NOT NULL,
    "primary" boolean NOT NULL,
    user_id bigint NOT NULL
);


ALTER TABLE public.account_emailaddress OWNER TO django_agriculture_user;

--
-- Name: account_emailaddress_id_seq; Type: SEQUENCE; Schema: public; Owner: django_agriculture_user
--

CREATE SEQUENCE public.account_emailaddress_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.account_emailaddress_id_seq OWNER TO django_agriculture_user;

--
-- Name: account_emailaddress_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django_agriculture_user
--

ALTER SEQUENCE public.account_emailaddress_id_seq OWNED BY public.account_emailaddress.id;


--
-- Name: account_emailconfirmation; Type: TABLE; Schema: public; Owner: django_agriculture_user
--

CREATE TABLE public.account_emailconfirmation (
    id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    sent timestamp with time zone,
    key character varying(64) NOT NULL,
    email_address_id integer NOT NULL
);


ALTER TABLE public.account_emailconfirmation OWNER TO django_agriculture_user;

--
-- Name: account_emailconfirmation_id_seq; Type: SEQUENCE; Schema: public; Owner: django_agriculture_user
--

CREATE SEQUENCE public.account_emailconfirmation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.account_emailconfirmation_id_seq OWNER TO django_agriculture_user;

--
-- Name: account_emailconfirmation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django_agriculture_user
--

ALTER SEQUENCE public.account_emailconfirmation_id_seq OWNED BY public.account_emailconfirmation.id;


--
-- Name: auth_app_clientprofile; Type: TABLE; Schema: public; Owner: django_agriculture_user
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


ALTER TABLE public.auth_app_clientprofile OWNER TO django_agriculture_user;

--
-- Name: auth_app_clientprofile_id_seq; Type: SEQUENCE; Schema: public; Owner: django_agriculture_user
--

CREATE SEQUENCE public.auth_app_clientprofile_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_app_clientprofile_id_seq OWNER TO django_agriculture_user;

--
-- Name: auth_app_clientprofile_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django_agriculture_user
--

ALTER SEQUENCE public.auth_app_clientprofile_id_seq OWNED BY public.auth_app_clientprofile.id;


--
-- Name: auth_app_clientprofile_team; Type: TABLE; Schema: public; Owner: django_agriculture_user
--

CREATE TABLE public.auth_app_clientprofile_team (
    id bigint NOT NULL,
    clientprofile_id bigint NOT NULL,
    user_id bigint NOT NULL
);


ALTER TABLE public.auth_app_clientprofile_team OWNER TO django_agriculture_user;

--
-- Name: auth_app_clientprofile_team_id_seq; Type: SEQUENCE; Schema: public; Owner: django_agriculture_user
--

CREATE SEQUENCE public.auth_app_clientprofile_team_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_app_clientprofile_team_id_seq OWNER TO django_agriculture_user;

--
-- Name: auth_app_clientprofile_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django_agriculture_user
--

ALTER SEQUENCE public.auth_app_clientprofile_team_id_seq OWNED BY public.auth_app_clientprofile_team.id;


--
-- Name: auth_app_supportprofile; Type: TABLE; Schema: public; Owner: django_agriculture_user
--

CREATE TABLE public.auth_app_supportprofile (
    id bigint NOT NULL,
    responses integer NOT NULL,
    user_id bigint NOT NULL
);


ALTER TABLE public.auth_app_supportprofile OWNER TO django_agriculture_user;

--
-- Name: auth_app_supportprofile_id_seq; Type: SEQUENCE; Schema: public; Owner: django_agriculture_user
--

CREATE SEQUENCE public.auth_app_supportprofile_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_app_supportprofile_id_seq OWNER TO django_agriculture_user;

--
-- Name: auth_app_supportprofile_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django_agriculture_user
--

ALTER SEQUENCE public.auth_app_supportprofile_id_seq OWNED BY public.auth_app_supportprofile.id;


--
-- Name: auth_app_user; Type: TABLE; Schema: public; Owner: django_agriculture_user
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


ALTER TABLE public.auth_app_user OWNER TO django_agriculture_user;

--
-- Name: auth_app_user_groups; Type: TABLE; Schema: public; Owner: django_agriculture_user
--

CREATE TABLE public.auth_app_user_groups (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_app_user_groups OWNER TO django_agriculture_user;

--
-- Name: auth_app_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: django_agriculture_user
--

CREATE SEQUENCE public.auth_app_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_app_user_groups_id_seq OWNER TO django_agriculture_user;

--
-- Name: auth_app_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django_agriculture_user
--

ALTER SEQUENCE public.auth_app_user_groups_id_seq OWNED BY public.auth_app_user_groups.id;


--
-- Name: auth_app_user_id_seq; Type: SEQUENCE; Schema: public; Owner: django_agriculture_user
--

CREATE SEQUENCE public.auth_app_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_app_user_id_seq OWNER TO django_agriculture_user;

--
-- Name: auth_app_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django_agriculture_user
--

ALTER SEQUENCE public.auth_app_user_id_seq OWNED BY public.auth_app_user.id;


--
-- Name: auth_app_user_user_permissions; Type: TABLE; Schema: public; Owner: django_agriculture_user
--

CREATE TABLE public.auth_app_user_user_permissions (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_app_user_user_permissions OWNER TO django_agriculture_user;

--
-- Name: auth_app_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: django_agriculture_user
--

CREATE SEQUENCE public.auth_app_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_app_user_user_permissions_id_seq OWNER TO django_agriculture_user;

--
-- Name: auth_app_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django_agriculture_user
--

ALTER SEQUENCE public.auth_app_user_user_permissions_id_seq OWNED BY public.auth_app_user_user_permissions.id;


--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: django_agriculture_user
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO django_agriculture_user;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: django_agriculture_user
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO django_agriculture_user;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django_agriculture_user
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: django_agriculture_user
--

CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO django_agriculture_user;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: django_agriculture_user
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO django_agriculture_user;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django_agriculture_user
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: django_agriculture_user
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO django_agriculture_user;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: django_agriculture_user
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO django_agriculture_user;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django_agriculture_user
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: buyer_cart; Type: TABLE; Schema: public; Owner: django_agriculture_user
--

CREATE TABLE public.buyer_cart (
    id bigint NOT NULL,
    created_on date NOT NULL,
    buyer_id bigint NOT NULL
);


ALTER TABLE public.buyer_cart OWNER TO django_agriculture_user;

--
-- Name: buyer_cart_id_seq; Type: SEQUENCE; Schema: public; Owner: django_agriculture_user
--

CREATE SEQUENCE public.buyer_cart_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.buyer_cart_id_seq OWNER TO django_agriculture_user;

--
-- Name: buyer_cart_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django_agriculture_user
--

ALTER SEQUENCE public.buyer_cart_id_seq OWNED BY public.buyer_cart.id;


--
-- Name: coms_groupchat; Type: TABLE; Schema: public; Owner: django_agriculture_user
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


ALTER TABLE public.coms_groupchat OWNER TO django_agriculture_user;

--
-- Name: coms_groupchat_id_seq; Type: SEQUENCE; Schema: public; Owner: django_agriculture_user
--

CREATE SEQUENCE public.coms_groupchat_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.coms_groupchat_id_seq OWNER TO django_agriculture_user;

--
-- Name: coms_groupchat_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django_agriculture_user
--

ALTER SEQUENCE public.coms_groupchat_id_seq OWNED BY public.coms_groupchat.id;


--
-- Name: coms_groupchat_participants; Type: TABLE; Schema: public; Owner: django_agriculture_user
--

CREATE TABLE public.coms_groupchat_participants (
    id bigint NOT NULL,
    groupchat_id bigint NOT NULL,
    user_id bigint NOT NULL
);


ALTER TABLE public.coms_groupchat_participants OWNER TO django_agriculture_user;

--
-- Name: coms_groupchat_participants_id_seq; Type: SEQUENCE; Schema: public; Owner: django_agriculture_user
--

CREATE SEQUENCE public.coms_groupchat_participants_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.coms_groupchat_participants_id_seq OWNER TO django_agriculture_user;

--
-- Name: coms_groupchat_participants_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django_agriculture_user
--

ALTER SEQUENCE public.coms_groupchat_participants_id_seq OWNED BY public.coms_groupchat_participants.id;


--
-- Name: coms_interclientchat; Type: TABLE; Schema: public; Owner: django_agriculture_user
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


ALTER TABLE public.coms_interclientchat OWNER TO django_agriculture_user;

--
-- Name: coms_interclientchat_id_seq; Type: SEQUENCE; Schema: public; Owner: django_agriculture_user
--

CREATE SEQUENCE public.coms_interclientchat_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.coms_interclientchat_id_seq OWNER TO django_agriculture_user;

--
-- Name: coms_interclientchat_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django_agriculture_user
--

ALTER SEQUENCE public.coms_interclientchat_id_seq OWNED BY public.coms_interclientchat.id;


--
-- Name: coms_interuserchat; Type: TABLE; Schema: public; Owner: django_agriculture_user
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


ALTER TABLE public.coms_interuserchat OWNER TO django_agriculture_user;

--
-- Name: coms_interuserchat_id_seq; Type: SEQUENCE; Schema: public; Owner: django_agriculture_user
--

CREATE SEQUENCE public.coms_interuserchat_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.coms_interuserchat_id_seq OWNER TO django_agriculture_user;

--
-- Name: coms_interuserchat_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django_agriculture_user
--

ALTER SEQUENCE public.coms_interuserchat_id_seq OWNED BY public.coms_interuserchat.id;


--
-- Name: coms_interuserchat_participants; Type: TABLE; Schema: public; Owner: django_agriculture_user
--

CREATE TABLE public.coms_interuserchat_participants (
    id bigint NOT NULL,
    interuserchat_id bigint NOT NULL,
    user_id bigint NOT NULL
);


ALTER TABLE public.coms_interuserchat_participants OWNER TO django_agriculture_user;

--
-- Name: coms_interuserchat_participants_id_seq; Type: SEQUENCE; Schema: public; Owner: django_agriculture_user
--

CREATE SEQUENCE public.coms_interuserchat_participants_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.coms_interuserchat_participants_id_seq OWNER TO django_agriculture_user;

--
-- Name: coms_interuserchat_participants_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django_agriculture_user
--

ALTER SEQUENCE public.coms_interuserchat_participants_id_seq OWNED BY public.coms_interuserchat_participants.id;


--
-- Name: coms_orderchat; Type: TABLE; Schema: public; Owner: django_agriculture_user
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


ALTER TABLE public.coms_orderchat OWNER TO django_agriculture_user;

--
-- Name: coms_orderchat_id_seq; Type: SEQUENCE; Schema: public; Owner: django_agriculture_user
--

CREATE SEQUENCE public.coms_orderchat_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.coms_orderchat_id_seq OWNER TO django_agriculture_user;

--
-- Name: coms_orderchat_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django_agriculture_user
--

ALTER SEQUENCE public.coms_orderchat_id_seq OWNED BY public.coms_orderchat.id;


--
-- Name: coms_supportclientchat; Type: TABLE; Schema: public; Owner: django_agriculture_user
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


ALTER TABLE public.coms_supportclientchat OWNER TO django_agriculture_user;

--
-- Name: coms_supportclientchat_id_seq; Type: SEQUENCE; Schema: public; Owner: django_agriculture_user
--

CREATE SEQUENCE public.coms_supportclientchat_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.coms_supportclientchat_id_seq OWNER TO django_agriculture_user;

--
-- Name: coms_supportclientchat_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django_agriculture_user
--

ALTER SEQUENCE public.coms_supportclientchat_id_seq OWNED BY public.coms_supportclientchat.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: django_agriculture_user
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


ALTER TABLE public.django_admin_log OWNER TO django_agriculture_user;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: django_agriculture_user
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO django_agriculture_user;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django_agriculture_user
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: django_agriculture_user
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO django_agriculture_user;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: django_agriculture_user
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO django_agriculture_user;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django_agriculture_user
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: django_agriculture_user
--

CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO django_agriculture_user;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: django_agriculture_user
--

CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO django_agriculture_user;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django_agriculture_user
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: django_agriculture_user
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO django_agriculture_user;

--
-- Name: django_site; Type: TABLE; Schema: public; Owner: django_agriculture_user
--

CREATE TABLE public.django_site (
    id integer NOT NULL,
    domain character varying(100) NOT NULL,
    name character varying(50) NOT NULL
);


ALTER TABLE public.django_site OWNER TO django_agriculture_user;

--
-- Name: django_site_id_seq; Type: SEQUENCE; Schema: public; Owner: django_agriculture_user
--

CREATE SEQUENCE public.django_site_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_site_id_seq OWNER TO django_agriculture_user;

--
-- Name: django_site_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django_agriculture_user
--

ALTER SEQUENCE public.django_site_id_seq OWNED BY public.django_site.id;


--
-- Name: manager_advert; Type: TABLE; Schema: public; Owner: django_agriculture_user
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


ALTER TABLE public.manager_advert OWNER TO django_agriculture_user;

--
-- Name: manager_advert_id_seq; Type: SEQUENCE; Schema: public; Owner: django_agriculture_user
--

CREATE SEQUENCE public.manager_advert_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.manager_advert_id_seq OWNER TO django_agriculture_user;

--
-- Name: manager_advert_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django_agriculture_user
--

ALTER SEQUENCE public.manager_advert_id_seq OWNED BY public.manager_advert.id;


--
-- Name: manager_advertisinglocation; Type: TABLE; Schema: public; Owner: django_agriculture_user
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


ALTER TABLE public.manager_advertisinglocation OWNER TO django_agriculture_user;

--
-- Name: manager_advertisinglocation_id_seq; Type: SEQUENCE; Schema: public; Owner: django_agriculture_user
--

CREATE SEQUENCE public.manager_advertisinglocation_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.manager_advertisinglocation_id_seq OWNER TO django_agriculture_user;

--
-- Name: manager_advertisinglocation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django_agriculture_user
--

ALTER SEQUENCE public.manager_advertisinglocation_id_seq OWNED BY public.manager_advertisinglocation.id;


--
-- Name: manager_calenderevent; Type: TABLE; Schema: public; Owner: django_agriculture_user
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


ALTER TABLE public.manager_calenderevent OWNER TO django_agriculture_user;

--
-- Name: manager_calenderevent_id_seq; Type: SEQUENCE; Schema: public; Owner: django_agriculture_user
--

CREATE SEQUENCE public.manager_calenderevent_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.manager_calenderevent_id_seq OWNER TO django_agriculture_user;

--
-- Name: manager_calenderevent_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django_agriculture_user
--

ALTER SEQUENCE public.manager_calenderevent_id_seq OWNED BY public.manager_calenderevent.id;


--
-- Name: manager_discussion; Type: TABLE; Schema: public; Owner: django_agriculture_user
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


ALTER TABLE public.manager_discussion OWNER TO django_agriculture_user;

--
-- Name: manager_discussion_id_seq; Type: SEQUENCE; Schema: public; Owner: django_agriculture_user
--

CREATE SEQUENCE public.manager_discussion_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.manager_discussion_id_seq OWNER TO django_agriculture_user;

--
-- Name: manager_discussion_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django_agriculture_user
--

ALTER SEQUENCE public.manager_discussion_id_seq OWNED BY public.manager_discussion.id;


--
-- Name: manager_discussionreply; Type: TABLE; Schema: public; Owner: django_agriculture_user
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


ALTER TABLE public.manager_discussionreply OWNER TO django_agriculture_user;

--
-- Name: manager_discussionreply_id_seq; Type: SEQUENCE; Schema: public; Owner: django_agriculture_user
--

CREATE SEQUENCE public.manager_discussionreply_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.manager_discussionreply_id_seq OWNER TO django_agriculture_user;

--
-- Name: manager_discussionreply_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django_agriculture_user
--

ALTER SEQUENCE public.manager_discussionreply_id_seq OWNED BY public.manager_discussionreply.id;


--
-- Name: manager_emailpromotion; Type: TABLE; Schema: public; Owner: django_agriculture_user
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


ALTER TABLE public.manager_emailpromotion OWNER TO django_agriculture_user;

--
-- Name: manager_emailpromotion_id_seq; Type: SEQUENCE; Schema: public; Owner: django_agriculture_user
--

CREATE SEQUENCE public.manager_emailpromotion_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.manager_emailpromotion_id_seq OWNER TO django_agriculture_user;

--
-- Name: manager_emailpromotion_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django_agriculture_user
--

ALTER SEQUENCE public.manager_emailpromotion_id_seq OWNED BY public.manager_emailpromotion.id;


--
-- Name: manager_location; Type: TABLE; Schema: public; Owner: django_agriculture_user
--

CREATE TABLE public.manager_location (
    id bigint NOT NULL,
    name character varying(256) NOT NULL,
    created_on date NOT NULL,
    slug character varying(50)
);


ALTER TABLE public.manager_location OWNER TO django_agriculture_user;

--
-- Name: manager_location_id_seq; Type: SEQUENCE; Schema: public; Owner: django_agriculture_user
--

CREATE SEQUENCE public.manager_location_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.manager_location_id_seq OWNER TO django_agriculture_user;

--
-- Name: manager_location_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django_agriculture_user
--

ALTER SEQUENCE public.manager_location_id_seq OWNED BY public.manager_location.id;


--
-- Name: manager_notification; Type: TABLE; Schema: public; Owner: django_agriculture_user
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


ALTER TABLE public.manager_notification OWNER TO django_agriculture_user;

--
-- Name: manager_notification_id_seq; Type: SEQUENCE; Schema: public; Owner: django_agriculture_user
--

CREATE SEQUENCE public.manager_notification_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.manager_notification_id_seq OWNER TO django_agriculture_user;

--
-- Name: manager_notification_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django_agriculture_user
--

ALTER SEQUENCE public.manager_notification_id_seq OWNED BY public.manager_notification.id;


--
-- Name: manager_promotion; Type: TABLE; Schema: public; Owner: django_agriculture_user
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


ALTER TABLE public.manager_promotion OWNER TO django_agriculture_user;

--
-- Name: manager_promotion_id_seq; Type: SEQUENCE; Schema: public; Owner: django_agriculture_user
--

CREATE SEQUENCE public.manager_promotion_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.manager_promotion_id_seq OWNER TO django_agriculture_user;

--
-- Name: manager_promotion_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django_agriculture_user
--

ALTER SEQUENCE public.manager_promotion_id_seq OWNED BY public.manager_promotion.id;


--
-- Name: manager_sentemail; Type: TABLE; Schema: public; Owner: django_agriculture_user
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


ALTER TABLE public.manager_sentemail OWNER TO django_agriculture_user;

--
-- Name: manager_sentemail_id_seq; Type: SEQUENCE; Schema: public; Owner: django_agriculture_user
--

CREATE SEQUENCE public.manager_sentemail_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.manager_sentemail_id_seq OWNER TO django_agriculture_user;

--
-- Name: manager_sentemail_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django_agriculture_user
--

ALTER SEQUENCE public.manager_sentemail_id_seq OWNED BY public.manager_sentemail.id;


--
-- Name: manager_service; Type: TABLE; Schema: public; Owner: django_agriculture_user
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


ALTER TABLE public.manager_service OWNER TO django_agriculture_user;

--
-- Name: manager_service_id_seq; Type: SEQUENCE; Schema: public; Owner: django_agriculture_user
--

CREATE SEQUENCE public.manager_service_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.manager_service_id_seq OWNER TO django_agriculture_user;

--
-- Name: manager_service_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django_agriculture_user
--

ALTER SEQUENCE public.manager_service_id_seq OWNED BY public.manager_service.id;


--
-- Name: manager_serviceimage; Type: TABLE; Schema: public; Owner: django_agriculture_user
--

CREATE TABLE public.manager_serviceimage (
    id bigint NOT NULL,
    image character varying(100) NOT NULL,
    slug character varying(50),
    created_on date NOT NULL,
    service_id bigint NOT NULL
);


ALTER TABLE public.manager_serviceimage OWNER TO django_agriculture_user;

--
-- Name: manager_serviceimage_id_seq; Type: SEQUENCE; Schema: public; Owner: django_agriculture_user
--

CREATE SEQUENCE public.manager_serviceimage_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.manager_serviceimage_id_seq OWNER TO django_agriculture_user;

--
-- Name: manager_serviceimage_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django_agriculture_user
--

ALTER SEQUENCE public.manager_serviceimage_id_seq OWNED BY public.manager_serviceimage.id;


--
-- Name: manager_showroom; Type: TABLE; Schema: public; Owner: django_agriculture_user
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


ALTER TABLE public.manager_showroom OWNER TO django_agriculture_user;

--
-- Name: manager_showroom_id_seq; Type: SEQUENCE; Schema: public; Owner: django_agriculture_user
--

CREATE SEQUENCE public.manager_showroom_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.manager_showroom_id_seq OWNER TO django_agriculture_user;

--
-- Name: manager_showroom_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django_agriculture_user
--

ALTER SEQUENCE public.manager_showroom_id_seq OWNED BY public.manager_showroom.id;


--
-- Name: manager_showroom_store; Type: TABLE; Schema: public; Owner: django_agriculture_user
--

CREATE TABLE public.manager_showroom_store (
    id bigint NOT NULL,
    showroom_id bigint NOT NULL,
    store_id bigint NOT NULL
);


ALTER TABLE public.manager_showroom_store OWNER TO django_agriculture_user;

--
-- Name: manager_showroom_store_id_seq; Type: SEQUENCE; Schema: public; Owner: django_agriculture_user
--

CREATE SEQUENCE public.manager_showroom_store_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.manager_showroom_store_id_seq OWNER TO django_agriculture_user;

--
-- Name: manager_showroom_store_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django_agriculture_user
--

ALTER SEQUENCE public.manager_showroom_store_id_seq OWNED BY public.manager_showroom_store.id;


--
-- Name: manager_userrequest; Type: TABLE; Schema: public; Owner: django_agriculture_user
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


ALTER TABLE public.manager_userrequest OWNER TO django_agriculture_user;

--
-- Name: manager_userrequest_id_seq; Type: SEQUENCE; Schema: public; Owner: django_agriculture_user
--

CREATE SEQUENCE public.manager_userrequest_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.manager_userrequest_id_seq OWNER TO django_agriculture_user;

--
-- Name: manager_userrequest_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django_agriculture_user
--

ALTER SEQUENCE public.manager_userrequest_id_seq OWNED BY public.manager_userrequest.id;


--
-- Name: payment_braintreesubscription; Type: TABLE; Schema: public; Owner: django_agriculture_user
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


ALTER TABLE public.payment_braintreesubscription OWNER TO django_agriculture_user;

--
-- Name: payment_braintreesubscription_id_seq; Type: SEQUENCE; Schema: public; Owner: django_agriculture_user
--

CREATE SEQUENCE public.payment_braintreesubscription_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.payment_braintreesubscription_id_seq OWNER TO django_agriculture_user;

--
-- Name: payment_braintreesubscription_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django_agriculture_user
--

ALTER SEQUENCE public.payment_braintreesubscription_id_seq OWNED BY public.payment_braintreesubscription.id;


--
-- Name: payment_cardpayment; Type: TABLE; Schema: public; Owner: django_agriculture_user
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


ALTER TABLE public.payment_cardpayment OWNER TO django_agriculture_user;

--
-- Name: payment_cardpayment_id_seq; Type: SEQUENCE; Schema: public; Owner: django_agriculture_user
--

CREATE SEQUENCE public.payment_cardpayment_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.payment_cardpayment_id_seq OWNER TO django_agriculture_user;

--
-- Name: payment_cardpayment_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django_agriculture_user
--

ALTER SEQUENCE public.payment_cardpayment_id_seq OWNED BY public.payment_cardpayment.id;


--
-- Name: payment_contract; Type: TABLE; Schema: public; Owner: django_agriculture_user
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


ALTER TABLE public.payment_contract OWNER TO django_agriculture_user;

--
-- Name: payment_contract_id_seq; Type: SEQUENCE; Schema: public; Owner: django_agriculture_user
--

CREATE SEQUENCE public.payment_contract_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.payment_contract_id_seq OWNER TO django_agriculture_user;

--
-- Name: payment_contract_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django_agriculture_user
--

ALTER SEQUENCE public.payment_contract_id_seq OWNED BY public.payment_contract.id;


--
-- Name: payment_contractreceipt; Type: TABLE; Schema: public; Owner: django_agriculture_user
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


ALTER TABLE public.payment_contractreceipt OWNER TO django_agriculture_user;

--
-- Name: payment_contractreceipt_id_seq; Type: SEQUENCE; Schema: public; Owner: django_agriculture_user
--

CREATE SEQUENCE public.payment_contractreceipt_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.payment_contractreceipt_id_seq OWNER TO django_agriculture_user;

--
-- Name: payment_contractreceipt_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django_agriculture_user
--

ALTER SEQUENCE public.payment_contractreceipt_id_seq OWNED BY public.payment_contractreceipt.id;


--
-- Name: payment_feature; Type: TABLE; Schema: public; Owner: django_agriculture_user
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


ALTER TABLE public.payment_feature OWNER TO django_agriculture_user;

--
-- Name: payment_feature_id_seq; Type: SEQUENCE; Schema: public; Owner: django_agriculture_user
--

CREATE SEQUENCE public.payment_feature_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.payment_feature_id_seq OWNER TO django_agriculture_user;

--
-- Name: payment_feature_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django_agriculture_user
--

ALTER SEQUENCE public.payment_feature_id_seq OWNED BY public.payment_feature.id;


--
-- Name: payment_membership; Type: TABLE; Schema: public; Owner: django_agriculture_user
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


ALTER TABLE public.payment_membership OWNER TO django_agriculture_user;

--
-- Name: payment_membership_id_seq; Type: SEQUENCE; Schema: public; Owner: django_agriculture_user
--

CREATE SEQUENCE public.payment_membership_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.payment_membership_id_seq OWNER TO django_agriculture_user;

--
-- Name: payment_membership_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django_agriculture_user
--

ALTER SEQUENCE public.payment_membership_id_seq OWNED BY public.payment_membership.id;


--
-- Name: payment_membershipgroup; Type: TABLE; Schema: public; Owner: django_agriculture_user
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


ALTER TABLE public.payment_membershipgroup OWNER TO django_agriculture_user;

--
-- Name: payment_membershipgroup_id_seq; Type: SEQUENCE; Schema: public; Owner: django_agriculture_user
--

CREATE SEQUENCE public.payment_membershipgroup_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.payment_membershipgroup_id_seq OWNER TO django_agriculture_user;

--
-- Name: payment_membershipgroup_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django_agriculture_user
--

ALTER SEQUENCE public.payment_membershipgroup_id_seq OWNED BY public.payment_membershipgroup.id;


--
-- Name: payment_membershipplan; Type: TABLE; Schema: public; Owner: django_agriculture_user
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


ALTER TABLE public.payment_membershipplan OWNER TO django_agriculture_user;

--
-- Name: payment_membershipplan_features; Type: TABLE; Schema: public; Owner: django_agriculture_user
--

CREATE TABLE public.payment_membershipplan_features (
    id bigint NOT NULL,
    membershipplan_id bigint NOT NULL,
    feature_id bigint NOT NULL
);


ALTER TABLE public.payment_membershipplan_features OWNER TO django_agriculture_user;

--
-- Name: payment_membershipplan_features_id_seq; Type: SEQUENCE; Schema: public; Owner: django_agriculture_user
--

CREATE SEQUENCE public.payment_membershipplan_features_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.payment_membershipplan_features_id_seq OWNER TO django_agriculture_user;

--
-- Name: payment_membershipplan_features_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django_agriculture_user
--

ALTER SEQUENCE public.payment_membershipplan_features_id_seq OWNED BY public.payment_membershipplan_features.id;


--
-- Name: payment_membershipplan_id_seq; Type: SEQUENCE; Schema: public; Owner: django_agriculture_user
--

CREATE SEQUENCE public.payment_membershipplan_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.payment_membershipplan_id_seq OWNER TO django_agriculture_user;

--
-- Name: payment_membershipplan_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django_agriculture_user
--

ALTER SEQUENCE public.payment_membershipplan_id_seq OWNED BY public.payment_membershipplan.id;


--
-- Name: payment_membershipreceipt; Type: TABLE; Schema: public; Owner: django_agriculture_user
--

CREATE TABLE public.payment_membershipreceipt (
    id bigint NOT NULL,
    method character varying(20) NOT NULL,
    plan_id character varying(30) NOT NULL,
    created_on date NOT NULL,
    client_id bigint NOT NULL
);


ALTER TABLE public.payment_membershipreceipt OWNER TO django_agriculture_user;

--
-- Name: payment_membershipreceipt_id_seq; Type: SEQUENCE; Schema: public; Owner: django_agriculture_user
--

CREATE SEQUENCE public.payment_membershipreceipt_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.payment_membershipreceipt_id_seq OWNER TO django_agriculture_user;

--
-- Name: payment_membershipreceipt_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django_agriculture_user
--

ALTER SEQUENCE public.payment_membershipreceipt_id_seq OWNED BY public.payment_membershipreceipt.id;


--
-- Name: payment_modeofpayment; Type: TABLE; Schema: public; Owner: django_agriculture_user
--

CREATE TABLE public.payment_modeofpayment (
    id bigint NOT NULL,
    name character varying(256) NOT NULL,
    slug character varying(50),
    created_on date NOT NULL,
    transaction_count integer NOT NULL
);


ALTER TABLE public.payment_modeofpayment OWNER TO django_agriculture_user;

--
-- Name: payment_modeofpayment_id_seq; Type: SEQUENCE; Schema: public; Owner: django_agriculture_user
--

CREATE SEQUENCE public.payment_modeofpayment_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.payment_modeofpayment_id_seq OWNER TO django_agriculture_user;

--
-- Name: payment_modeofpayment_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django_agriculture_user
--

ALTER SEQUENCE public.payment_modeofpayment_id_seq OWNED BY public.payment_modeofpayment.id;


--
-- Name: payment_paypalproduct; Type: TABLE; Schema: public; Owner: django_agriculture_user
--

CREATE TABLE public.payment_paypalproduct (
    id bigint NOT NULL,
    custom_id character varying(256),
    name character varying(256) NOT NULL,
    "ProductType" character varying(256) NOT NULL,
    description text NOT NULL
);


ALTER TABLE public.payment_paypalproduct OWNER TO django_agriculture_user;

--
-- Name: payment_paypalproduct_id_seq; Type: SEQUENCE; Schema: public; Owner: django_agriculture_user
--

CREATE SEQUENCE public.payment_paypalproduct_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.payment_paypalproduct_id_seq OWNER TO django_agriculture_user;

--
-- Name: payment_paypalproduct_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django_agriculture_user
--

ALTER SEQUENCE public.payment_paypalproduct_id_seq OWNED BY public.payment_paypalproduct.id;


--
-- Name: payment_paypalsubscription; Type: TABLE; Schema: public; Owner: django_agriculture_user
--

CREATE TABLE public.payment_paypalsubscription (
    id bigint NOT NULL,
    order_key character varying(256),
    created_on date NOT NULL,
    membership_id bigint
);


ALTER TABLE public.payment_paypalsubscription OWNER TO django_agriculture_user;

--
-- Name: payment_paypalsubscription_id_seq; Type: SEQUENCE; Schema: public; Owner: django_agriculture_user
--

CREATE SEQUENCE public.payment_paypalsubscription_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.payment_paypalsubscription_id_seq OWNER TO django_agriculture_user;

--
-- Name: payment_paypalsubscription_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django_agriculture_user
--

ALTER SEQUENCE public.payment_paypalsubscription_id_seq OWNED BY public.payment_paypalsubscription.id;


--
-- Name: payment_transaction; Type: TABLE; Schema: public; Owner: django_agriculture_user
--

CREATE TABLE public.payment_transaction (
    id bigint NOT NULL,
    amount numeric(10,2) NOT NULL,
    checkout_id character varying(100) NOT NULL,
    mpesa_code character varying(100),
    phone_number character varying(15) NOT NULL,
    status character varying(20) NOT NULL,
    "timestamp" timestamp with time zone NOT NULL
);


ALTER TABLE public.payment_transaction OWNER TO django_agriculture_user;

--
-- Name: payment_transaction_id_seq; Type: SEQUENCE; Schema: public; Owner: django_agriculture_user
--

CREATE SEQUENCE public.payment_transaction_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.payment_transaction_id_seq OWNER TO django_agriculture_user;

--
-- Name: payment_transaction_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django_agriculture_user
--

ALTER SEQUENCE public.payment_transaction_id_seq OWNED BY public.payment_transaction.id;


--
-- Name: socialaccount_socialaccount; Type: TABLE; Schema: public; Owner: django_agriculture_user
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


ALTER TABLE public.socialaccount_socialaccount OWNER TO django_agriculture_user;

--
-- Name: socialaccount_socialaccount_id_seq; Type: SEQUENCE; Schema: public; Owner: django_agriculture_user
--

CREATE SEQUENCE public.socialaccount_socialaccount_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.socialaccount_socialaccount_id_seq OWNER TO django_agriculture_user;

--
-- Name: socialaccount_socialaccount_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django_agriculture_user
--

ALTER SEQUENCE public.socialaccount_socialaccount_id_seq OWNED BY public.socialaccount_socialaccount.id;


--
-- Name: socialaccount_socialapp; Type: TABLE; Schema: public; Owner: django_agriculture_user
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


ALTER TABLE public.socialaccount_socialapp OWNER TO django_agriculture_user;

--
-- Name: socialaccount_socialapp_id_seq; Type: SEQUENCE; Schema: public; Owner: django_agriculture_user
--

CREATE SEQUENCE public.socialaccount_socialapp_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.socialaccount_socialapp_id_seq OWNER TO django_agriculture_user;

--
-- Name: socialaccount_socialapp_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django_agriculture_user
--

ALTER SEQUENCE public.socialaccount_socialapp_id_seq OWNED BY public.socialaccount_socialapp.id;


--
-- Name: socialaccount_socialapp_sites; Type: TABLE; Schema: public; Owner: django_agriculture_user
--

CREATE TABLE public.socialaccount_socialapp_sites (
    id bigint NOT NULL,
    socialapp_id integer NOT NULL,
    site_id integer NOT NULL
);


ALTER TABLE public.socialaccount_socialapp_sites OWNER TO django_agriculture_user;

--
-- Name: socialaccount_socialapp_sites_id_seq; Type: SEQUENCE; Schema: public; Owner: django_agriculture_user
--

CREATE SEQUENCE public.socialaccount_socialapp_sites_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.socialaccount_socialapp_sites_id_seq OWNER TO django_agriculture_user;

--
-- Name: socialaccount_socialapp_sites_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django_agriculture_user
--

ALTER SEQUENCE public.socialaccount_socialapp_sites_id_seq OWNED BY public.socialaccount_socialapp_sites.id;


--
-- Name: socialaccount_socialtoken; Type: TABLE; Schema: public; Owner: django_agriculture_user
--

CREATE TABLE public.socialaccount_socialtoken (
    id integer NOT NULL,
    token text NOT NULL,
    token_secret text NOT NULL,
    expires_at timestamp with time zone,
    account_id integer NOT NULL,
    app_id integer
);


ALTER TABLE public.socialaccount_socialtoken OWNER TO django_agriculture_user;

--
-- Name: socialaccount_socialtoken_id_seq; Type: SEQUENCE; Schema: public; Owner: django_agriculture_user
--

CREATE SEQUENCE public.socialaccount_socialtoken_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.socialaccount_socialtoken_id_seq OWNER TO django_agriculture_user;

--
-- Name: socialaccount_socialtoken_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django_agriculture_user
--

ALTER SEQUENCE public.socialaccount_socialtoken_id_seq OWNED BY public.socialaccount_socialtoken.id;


--
-- Name: supplier_deliverycarrier; Type: TABLE; Schema: public; Owner: django_agriculture_user
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


ALTER TABLE public.supplier_deliverycarrier OWNER TO django_agriculture_user;

--
-- Name: supplier_deliverycarrier_id_seq; Type: SEQUENCE; Schema: public; Owner: django_agriculture_user
--

CREATE SEQUENCE public.supplier_deliverycarrier_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.supplier_deliverycarrier_id_seq OWNER TO django_agriculture_user;

--
-- Name: supplier_deliverycarrier_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django_agriculture_user
--

ALTER SEQUENCE public.supplier_deliverycarrier_id_seq OWNED BY public.supplier_deliverycarrier.id;


--
-- Name: supplier_order; Type: TABLE; Schema: public; Owner: django_agriculture_user
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
    supplier_id bigint NOT NULL,
    payment_id bigint
);


ALTER TABLE public.supplier_order OWNER TO django_agriculture_user;

--
-- Name: supplier_order_id_seq; Type: SEQUENCE; Schema: public; Owner: django_agriculture_user
--

CREATE SEQUENCE public.supplier_order_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.supplier_order_id_seq OWNER TO django_agriculture_user;

--
-- Name: supplier_order_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django_agriculture_user
--

ALTER SEQUENCE public.supplier_order_id_seq OWNED BY public.supplier_order.id;


--
-- Name: supplier_ordernote; Type: TABLE; Schema: public; Owner: django_agriculture_user
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


ALTER TABLE public.supplier_ordernote OWNER TO django_agriculture_user;

--
-- Name: supplier_ordernote_id_seq; Type: SEQUENCE; Schema: public; Owner: django_agriculture_user
--

CREATE SEQUENCE public.supplier_ordernote_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.supplier_ordernote_id_seq OWNER TO django_agriculture_user;

--
-- Name: supplier_ordernote_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django_agriculture_user
--

ALTER SEQUENCE public.supplier_ordernote_id_seq OWNED BY public.supplier_ordernote.id;


--
-- Name: supplier_orderproductvariation; Type: TABLE; Schema: public; Owner: django_agriculture_user
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


ALTER TABLE public.supplier_orderproductvariation OWNER TO django_agriculture_user;

--
-- Name: supplier_orderproductvariation_id_seq; Type: SEQUENCE; Schema: public; Owner: django_agriculture_user
--

CREATE SEQUENCE public.supplier_orderproductvariation_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.supplier_orderproductvariation_id_seq OWNER TO django_agriculture_user;

--
-- Name: supplier_orderproductvariation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django_agriculture_user
--

ALTER SEQUENCE public.supplier_orderproductvariation_id_seq OWNED BY public.supplier_orderproductvariation.id;


--
-- Name: supplier_ordershippingdetail; Type: TABLE; Schema: public; Owner: django_agriculture_user
--

CREATE TABLE public.supplier_ordershippingdetail (
    id bigint NOT NULL,
    address_1 character varying(50),
    address_2 character varying(50),
    carrier_id bigint,
    order_id bigint NOT NULL
);


ALTER TABLE public.supplier_ordershippingdetail OWNER TO django_agriculture_user;

--
-- Name: supplier_ordershippingdetail_id_seq; Type: SEQUENCE; Schema: public; Owner: django_agriculture_user
--

CREATE SEQUENCE public.supplier_ordershippingdetail_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.supplier_ordershippingdetail_id_seq OWNER TO django_agriculture_user;

--
-- Name: supplier_ordershippingdetail_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django_agriculture_user
--

ALTER SEQUENCE public.supplier_ordershippingdetail_id_seq OWNED BY public.supplier_ordershippingdetail.id;


--
-- Name: supplier_product; Type: TABLE; Schema: public; Owner: django_agriculture_user
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


ALTER TABLE public.supplier_product OWNER TO django_agriculture_user;

--
-- Name: supplier_product_id_seq; Type: SEQUENCE; Schema: public; Owner: django_agriculture_user
--

CREATE SEQUENCE public.supplier_product_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.supplier_product_id_seq OWNER TO django_agriculture_user;

--
-- Name: supplier_product_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django_agriculture_user
--

ALTER SEQUENCE public.supplier_product_id_seq OWNED BY public.supplier_product.id;


--
-- Name: supplier_product_store; Type: TABLE; Schema: public; Owner: django_agriculture_user
--

CREATE TABLE public.supplier_product_store (
    id bigint NOT NULL,
    product_id bigint NOT NULL,
    store_id bigint NOT NULL
);


ALTER TABLE public.supplier_product_store OWNER TO django_agriculture_user;

--
-- Name: supplier_product_store_id_seq; Type: SEQUENCE; Schema: public; Owner: django_agriculture_user
--

CREATE SEQUENCE public.supplier_product_store_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.supplier_product_store_id_seq OWNER TO django_agriculture_user;

--
-- Name: supplier_product_store_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django_agriculture_user
--

ALTER SEQUENCE public.supplier_product_store_id_seq OWNED BY public.supplier_product_store.id;


--
-- Name: supplier_productcategory; Type: TABLE; Schema: public; Owner: django_agriculture_user
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


ALTER TABLE public.supplier_productcategory OWNER TO django_agriculture_user;

--
-- Name: supplier_productcategory_id_seq; Type: SEQUENCE; Schema: public; Owner: django_agriculture_user
--

CREATE SEQUENCE public.supplier_productcategory_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.supplier_productcategory_id_seq OWNER TO django_agriculture_user;

--
-- Name: supplier_productcategory_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django_agriculture_user
--

ALTER SEQUENCE public.supplier_productcategory_id_seq OWNED BY public.supplier_productcategory.id;


--
-- Name: supplier_productcolor; Type: TABLE; Schema: public; Owner: django_agriculture_user
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


ALTER TABLE public.supplier_productcolor OWNER TO django_agriculture_user;

--
-- Name: supplier_productcolor_id_seq; Type: SEQUENCE; Schema: public; Owner: django_agriculture_user
--

CREATE SEQUENCE public.supplier_productcolor_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.supplier_productcolor_id_seq OWNER TO django_agriculture_user;

--
-- Name: supplier_productcolor_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django_agriculture_user
--

ALTER SEQUENCE public.supplier_productcolor_id_seq OWNED BY public.supplier_productcolor.id;


--
-- Name: supplier_productimage; Type: TABLE; Schema: public; Owner: django_agriculture_user
--

CREATE TABLE public.supplier_productimage (
    id bigint NOT NULL,
    image character varying(100) NOT NULL,
    slug character varying(100),
    created_on date NOT NULL,
    product_id bigint NOT NULL
);


ALTER TABLE public.supplier_productimage OWNER TO django_agriculture_user;

--
-- Name: supplier_productimage_id_seq; Type: SEQUENCE; Schema: public; Owner: django_agriculture_user
--

CREATE SEQUENCE public.supplier_productimage_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.supplier_productimage_id_seq OWNER TO django_agriculture_user;

--
-- Name: supplier_productimage_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django_agriculture_user
--

ALTER SEQUENCE public.supplier_productimage_id_seq OWNED BY public.supplier_productimage.id;


--
-- Name: supplier_productmaterial; Type: TABLE; Schema: public; Owner: django_agriculture_user
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


ALTER TABLE public.supplier_productmaterial OWNER TO django_agriculture_user;

--
-- Name: supplier_productmaterial_id_seq; Type: SEQUENCE; Schema: public; Owner: django_agriculture_user
--

CREATE SEQUENCE public.supplier_productmaterial_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.supplier_productmaterial_id_seq OWNER TO django_agriculture_user;

--
-- Name: supplier_productmaterial_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django_agriculture_user
--

ALTER SEQUENCE public.supplier_productmaterial_id_seq OWNED BY public.supplier_productmaterial.id;


--
-- Name: supplier_productprice; Type: TABLE; Schema: public; Owner: django_agriculture_user
--

CREATE TABLE public.supplier_productprice (
    id bigint NOT NULL,
    currency character varying(6) NOT NULL,
    min_price numeric(12,2) NOT NULL,
    max_price numeric(12,2) NOT NULL,
    product_id bigint NOT NULL
);


ALTER TABLE public.supplier_productprice OWNER TO django_agriculture_user;

--
-- Name: supplier_productprice_id_seq; Type: SEQUENCE; Schema: public; Owner: django_agriculture_user
--

CREATE SEQUENCE public.supplier_productprice_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.supplier_productprice_id_seq OWNER TO django_agriculture_user;

--
-- Name: supplier_productprice_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django_agriculture_user
--

ALTER SEQUENCE public.supplier_productprice_id_seq OWNED BY public.supplier_productprice.id;


--
-- Name: supplier_productreview; Type: TABLE; Schema: public; Owner: django_agriculture_user
--

CREATE TABLE public.supplier_productreview (
    id bigint NOT NULL,
    content text NOT NULL,
    business_id bigint NOT NULL,
    product_id bigint NOT NULL
);


ALTER TABLE public.supplier_productreview OWNER TO django_agriculture_user;

--
-- Name: supplier_productreview_id_seq; Type: SEQUENCE; Schema: public; Owner: django_agriculture_user
--

CREATE SEQUENCE public.supplier_productreview_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.supplier_productreview_id_seq OWNER TO django_agriculture_user;

--
-- Name: supplier_productreview_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django_agriculture_user
--

ALTER SEQUENCE public.supplier_productreview_id_seq OWNED BY public.supplier_productreview.id;


--
-- Name: supplier_productsubcategory; Type: TABLE; Schema: public; Owner: django_agriculture_user
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


ALTER TABLE public.supplier_productsubcategory OWNER TO django_agriculture_user;

--
-- Name: supplier_productsubcategory_id_seq; Type: SEQUENCE; Schema: public; Owner: django_agriculture_user
--

CREATE SEQUENCE public.supplier_productsubcategory_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.supplier_productsubcategory_id_seq OWNER TO django_agriculture_user;

--
-- Name: supplier_productsubcategory_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django_agriculture_user
--

ALTER SEQUENCE public.supplier_productsubcategory_id_seq OWNED BY public.supplier_productsubcategory.id;


--
-- Name: supplier_producttag; Type: TABLE; Schema: public; Owner: django_agriculture_user
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


ALTER TABLE public.supplier_producttag OWNER TO django_agriculture_user;

--
-- Name: supplier_producttag_id_seq; Type: SEQUENCE; Schema: public; Owner: django_agriculture_user
--

CREATE SEQUENCE public.supplier_producttag_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.supplier_producttag_id_seq OWNER TO django_agriculture_user;

--
-- Name: supplier_producttag_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django_agriculture_user
--

ALTER SEQUENCE public.supplier_producttag_id_seq OWNED BY public.supplier_producttag.id;


--
-- Name: supplier_productvideo; Type: TABLE; Schema: public; Owner: django_agriculture_user
--

CREATE TABLE public.supplier_productvideo (
    id bigint NOT NULL,
    video character varying(100) NOT NULL,
    slug character varying(100),
    created_on date NOT NULL,
    product_id bigint NOT NULL
);


ALTER TABLE public.supplier_productvideo OWNER TO django_agriculture_user;

--
-- Name: supplier_productvideo_id_seq; Type: SEQUENCE; Schema: public; Owner: django_agriculture_user
--

CREATE SEQUENCE public.supplier_productvideo_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.supplier_productvideo_id_seq OWNER TO django_agriculture_user;

--
-- Name: supplier_productvideo_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django_agriculture_user
--

ALTER SEQUENCE public.supplier_productvideo_id_seq OWNED BY public.supplier_productvideo.id;


--
-- Name: supplier_service; Type: TABLE; Schema: public; Owner: django_agriculture_user
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


ALTER TABLE public.supplier_service OWNER TO django_agriculture_user;

--
-- Name: supplier_service_id_seq; Type: SEQUENCE; Schema: public; Owner: django_agriculture_user
--

CREATE SEQUENCE public.supplier_service_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.supplier_service_id_seq OWNER TO django_agriculture_user;

--
-- Name: supplier_service_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django_agriculture_user
--

ALTER SEQUENCE public.supplier_service_id_seq OWNED BY public.supplier_service.id;


--
-- Name: supplier_serviceimage; Type: TABLE; Schema: public; Owner: django_agriculture_user
--

CREATE TABLE public.supplier_serviceimage (
    id bigint NOT NULL,
    image character varying(100) NOT NULL,
    slug character varying(50),
    created_on date NOT NULL,
    service_id bigint NOT NULL
);


ALTER TABLE public.supplier_serviceimage OWNER TO django_agriculture_user;

--
-- Name: supplier_serviceimage_id_seq; Type: SEQUENCE; Schema: public; Owner: django_agriculture_user
--

CREATE SEQUENCE public.supplier_serviceimage_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.supplier_serviceimage_id_seq OWNER TO django_agriculture_user;

--
-- Name: supplier_serviceimage_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django_agriculture_user
--

ALTER SEQUENCE public.supplier_serviceimage_id_seq OWNED BY public.supplier_serviceimage.id;


--
-- Name: supplier_servicetag; Type: TABLE; Schema: public; Owner: django_agriculture_user
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


ALTER TABLE public.supplier_servicetag OWNER TO django_agriculture_user;

--
-- Name: supplier_servicetag_id_seq; Type: SEQUENCE; Schema: public; Owner: django_agriculture_user
--

CREATE SEQUENCE public.supplier_servicetag_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.supplier_servicetag_id_seq OWNER TO django_agriculture_user;

--
-- Name: supplier_servicetag_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django_agriculture_user
--

ALTER SEQUENCE public.supplier_servicetag_id_seq OWNED BY public.supplier_servicetag.id;


--
-- Name: supplier_store; Type: TABLE; Schema: public; Owner: django_agriculture_user
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


ALTER TABLE public.supplier_store OWNER TO django_agriculture_user;

--
-- Name: supplier_store_id_seq; Type: SEQUENCE; Schema: public; Owner: django_agriculture_user
--

CREATE SEQUENCE public.supplier_store_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.supplier_store_id_seq OWNER TO django_agriculture_user;

--
-- Name: supplier_store_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django_agriculture_user
--

ALTER SEQUENCE public.supplier_store_id_seq OWNED BY public.supplier_store.id;


--
-- Name: supplier_wishlistproduct; Type: TABLE; Schema: public; Owner: django_agriculture_user
--

CREATE TABLE public.supplier_wishlistproduct (
    id bigint NOT NULL,
    buyer_id bigint NOT NULL,
    product_id bigint NOT NULL
);


ALTER TABLE public.supplier_wishlistproduct OWNER TO django_agriculture_user;

--
-- Name: supplier_wishlistproduct_id_seq; Type: SEQUENCE; Schema: public; Owner: django_agriculture_user
--

CREATE SEQUENCE public.supplier_wishlistproduct_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.supplier_wishlistproduct_id_seq OWNER TO django_agriculture_user;

--
-- Name: supplier_wishlistproduct_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django_agriculture_user
--

ALTER SEQUENCE public.supplier_wishlistproduct_id_seq OWNED BY public.supplier_wishlistproduct.id;


--
-- Name: account_emailaddress id; Type: DEFAULT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.account_emailaddress ALTER COLUMN id SET DEFAULT nextval('public.account_emailaddress_id_seq'::regclass);


--
-- Name: account_emailconfirmation id; Type: DEFAULT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.account_emailconfirmation ALTER COLUMN id SET DEFAULT nextval('public.account_emailconfirmation_id_seq'::regclass);


--
-- Name: auth_app_clientprofile id; Type: DEFAULT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.auth_app_clientprofile ALTER COLUMN id SET DEFAULT nextval('public.auth_app_clientprofile_id_seq'::regclass);


--
-- Name: auth_app_clientprofile_team id; Type: DEFAULT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.auth_app_clientprofile_team ALTER COLUMN id SET DEFAULT nextval('public.auth_app_clientprofile_team_id_seq'::regclass);


--
-- Name: auth_app_supportprofile id; Type: DEFAULT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.auth_app_supportprofile ALTER COLUMN id SET DEFAULT nextval('public.auth_app_supportprofile_id_seq'::regclass);


--
-- Name: auth_app_user id; Type: DEFAULT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.auth_app_user ALTER COLUMN id SET DEFAULT nextval('public.auth_app_user_id_seq'::regclass);


--
-- Name: auth_app_user_groups id; Type: DEFAULT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.auth_app_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_app_user_groups_id_seq'::regclass);


--
-- Name: auth_app_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.auth_app_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_app_user_user_permissions_id_seq'::regclass);


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: buyer_cart id; Type: DEFAULT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.buyer_cart ALTER COLUMN id SET DEFAULT nextval('public.buyer_cart_id_seq'::regclass);


--
-- Name: coms_groupchat id; Type: DEFAULT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.coms_groupchat ALTER COLUMN id SET DEFAULT nextval('public.coms_groupchat_id_seq'::regclass);


--
-- Name: coms_groupchat_participants id; Type: DEFAULT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.coms_groupchat_participants ALTER COLUMN id SET DEFAULT nextval('public.coms_groupchat_participants_id_seq'::regclass);


--
-- Name: coms_interclientchat id; Type: DEFAULT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.coms_interclientchat ALTER COLUMN id SET DEFAULT nextval('public.coms_interclientchat_id_seq'::regclass);


--
-- Name: coms_interuserchat id; Type: DEFAULT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.coms_interuserchat ALTER COLUMN id SET DEFAULT nextval('public.coms_interuserchat_id_seq'::regclass);


--
-- Name: coms_interuserchat_participants id; Type: DEFAULT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.coms_interuserchat_participants ALTER COLUMN id SET DEFAULT nextval('public.coms_interuserchat_participants_id_seq'::regclass);


--
-- Name: coms_orderchat id; Type: DEFAULT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.coms_orderchat ALTER COLUMN id SET DEFAULT nextval('public.coms_orderchat_id_seq'::regclass);


--
-- Name: coms_supportclientchat id; Type: DEFAULT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.coms_supportclientchat ALTER COLUMN id SET DEFAULT nextval('public.coms_supportclientchat_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: django_site id; Type: DEFAULT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.django_site ALTER COLUMN id SET DEFAULT nextval('public.django_site_id_seq'::regclass);


--
-- Name: manager_advert id; Type: DEFAULT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.manager_advert ALTER COLUMN id SET DEFAULT nextval('public.manager_advert_id_seq'::regclass);


--
-- Name: manager_advertisinglocation id; Type: DEFAULT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.manager_advertisinglocation ALTER COLUMN id SET DEFAULT nextval('public.manager_advertisinglocation_id_seq'::regclass);


--
-- Name: manager_calenderevent id; Type: DEFAULT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.manager_calenderevent ALTER COLUMN id SET DEFAULT nextval('public.manager_calenderevent_id_seq'::regclass);


--
-- Name: manager_discussion id; Type: DEFAULT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.manager_discussion ALTER COLUMN id SET DEFAULT nextval('public.manager_discussion_id_seq'::regclass);


--
-- Name: manager_discussionreply id; Type: DEFAULT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.manager_discussionreply ALTER COLUMN id SET DEFAULT nextval('public.manager_discussionreply_id_seq'::regclass);


--
-- Name: manager_emailpromotion id; Type: DEFAULT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.manager_emailpromotion ALTER COLUMN id SET DEFAULT nextval('public.manager_emailpromotion_id_seq'::regclass);


--
-- Name: manager_location id; Type: DEFAULT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.manager_location ALTER COLUMN id SET DEFAULT nextval('public.manager_location_id_seq'::regclass);


--
-- Name: manager_notification id; Type: DEFAULT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.manager_notification ALTER COLUMN id SET DEFAULT nextval('public.manager_notification_id_seq'::regclass);


--
-- Name: manager_promotion id; Type: DEFAULT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.manager_promotion ALTER COLUMN id SET DEFAULT nextval('public.manager_promotion_id_seq'::regclass);


--
-- Name: manager_sentemail id; Type: DEFAULT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.manager_sentemail ALTER COLUMN id SET DEFAULT nextval('public.manager_sentemail_id_seq'::regclass);


--
-- Name: manager_service id; Type: DEFAULT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.manager_service ALTER COLUMN id SET DEFAULT nextval('public.manager_service_id_seq'::regclass);


--
-- Name: manager_serviceimage id; Type: DEFAULT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.manager_serviceimage ALTER COLUMN id SET DEFAULT nextval('public.manager_serviceimage_id_seq'::regclass);


--
-- Name: manager_showroom id; Type: DEFAULT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.manager_showroom ALTER COLUMN id SET DEFAULT nextval('public.manager_showroom_id_seq'::regclass);


--
-- Name: manager_showroom_store id; Type: DEFAULT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.manager_showroom_store ALTER COLUMN id SET DEFAULT nextval('public.manager_showroom_store_id_seq'::regclass);


--
-- Name: manager_userrequest id; Type: DEFAULT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.manager_userrequest ALTER COLUMN id SET DEFAULT nextval('public.manager_userrequest_id_seq'::regclass);


--
-- Name: payment_braintreesubscription id; Type: DEFAULT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.payment_braintreesubscription ALTER COLUMN id SET DEFAULT nextval('public.payment_braintreesubscription_id_seq'::regclass);


--
-- Name: payment_cardpayment id; Type: DEFAULT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.payment_cardpayment ALTER COLUMN id SET DEFAULT nextval('public.payment_cardpayment_id_seq'::regclass);


--
-- Name: payment_contract id; Type: DEFAULT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.payment_contract ALTER COLUMN id SET DEFAULT nextval('public.payment_contract_id_seq'::regclass);


--
-- Name: payment_contractreceipt id; Type: DEFAULT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.payment_contractreceipt ALTER COLUMN id SET DEFAULT nextval('public.payment_contractreceipt_id_seq'::regclass);


--
-- Name: payment_feature id; Type: DEFAULT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.payment_feature ALTER COLUMN id SET DEFAULT nextval('public.payment_feature_id_seq'::regclass);


--
-- Name: payment_membership id; Type: DEFAULT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.payment_membership ALTER COLUMN id SET DEFAULT nextval('public.payment_membership_id_seq'::regclass);


--
-- Name: payment_membershipgroup id; Type: DEFAULT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.payment_membershipgroup ALTER COLUMN id SET DEFAULT nextval('public.payment_membershipgroup_id_seq'::regclass);


--
-- Name: payment_membershipplan id; Type: DEFAULT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.payment_membershipplan ALTER COLUMN id SET DEFAULT nextval('public.payment_membershipplan_id_seq'::regclass);


--
-- Name: payment_membershipplan_features id; Type: DEFAULT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.payment_membershipplan_features ALTER COLUMN id SET DEFAULT nextval('public.payment_membershipplan_features_id_seq'::regclass);


--
-- Name: payment_membershipreceipt id; Type: DEFAULT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.payment_membershipreceipt ALTER COLUMN id SET DEFAULT nextval('public.payment_membershipreceipt_id_seq'::regclass);


--
-- Name: payment_modeofpayment id; Type: DEFAULT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.payment_modeofpayment ALTER COLUMN id SET DEFAULT nextval('public.payment_modeofpayment_id_seq'::regclass);


--
-- Name: payment_paypalproduct id; Type: DEFAULT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.payment_paypalproduct ALTER COLUMN id SET DEFAULT nextval('public.payment_paypalproduct_id_seq'::regclass);


--
-- Name: payment_paypalsubscription id; Type: DEFAULT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.payment_paypalsubscription ALTER COLUMN id SET DEFAULT nextval('public.payment_paypalsubscription_id_seq'::regclass);


--
-- Name: payment_transaction id; Type: DEFAULT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.payment_transaction ALTER COLUMN id SET DEFAULT nextval('public.payment_transaction_id_seq'::regclass);


--
-- Name: socialaccount_socialaccount id; Type: DEFAULT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.socialaccount_socialaccount ALTER COLUMN id SET DEFAULT nextval('public.socialaccount_socialaccount_id_seq'::regclass);


--
-- Name: socialaccount_socialapp id; Type: DEFAULT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.socialaccount_socialapp ALTER COLUMN id SET DEFAULT nextval('public.socialaccount_socialapp_id_seq'::regclass);


--
-- Name: socialaccount_socialapp_sites id; Type: DEFAULT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.socialaccount_socialapp_sites ALTER COLUMN id SET DEFAULT nextval('public.socialaccount_socialapp_sites_id_seq'::regclass);


--
-- Name: socialaccount_socialtoken id; Type: DEFAULT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.socialaccount_socialtoken ALTER COLUMN id SET DEFAULT nextval('public.socialaccount_socialtoken_id_seq'::regclass);


--
-- Name: supplier_deliverycarrier id; Type: DEFAULT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.supplier_deliverycarrier ALTER COLUMN id SET DEFAULT nextval('public.supplier_deliverycarrier_id_seq'::regclass);


--
-- Name: supplier_order id; Type: DEFAULT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.supplier_order ALTER COLUMN id SET DEFAULT nextval('public.supplier_order_id_seq'::regclass);


--
-- Name: supplier_ordernote id; Type: DEFAULT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.supplier_ordernote ALTER COLUMN id SET DEFAULT nextval('public.supplier_ordernote_id_seq'::regclass);


--
-- Name: supplier_orderproductvariation id; Type: DEFAULT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.supplier_orderproductvariation ALTER COLUMN id SET DEFAULT nextval('public.supplier_orderproductvariation_id_seq'::regclass);


--
-- Name: supplier_ordershippingdetail id; Type: DEFAULT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.supplier_ordershippingdetail ALTER COLUMN id SET DEFAULT nextval('public.supplier_ordershippingdetail_id_seq'::regclass);


--
-- Name: supplier_product id; Type: DEFAULT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.supplier_product ALTER COLUMN id SET DEFAULT nextval('public.supplier_product_id_seq'::regclass);


--
-- Name: supplier_product_store id; Type: DEFAULT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.supplier_product_store ALTER COLUMN id SET DEFAULT nextval('public.supplier_product_store_id_seq'::regclass);


--
-- Name: supplier_productcategory id; Type: DEFAULT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.supplier_productcategory ALTER COLUMN id SET DEFAULT nextval('public.supplier_productcategory_id_seq'::regclass);


--
-- Name: supplier_productcolor id; Type: DEFAULT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.supplier_productcolor ALTER COLUMN id SET DEFAULT nextval('public.supplier_productcolor_id_seq'::regclass);


--
-- Name: supplier_productimage id; Type: DEFAULT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.supplier_productimage ALTER COLUMN id SET DEFAULT nextval('public.supplier_productimage_id_seq'::regclass);


--
-- Name: supplier_productmaterial id; Type: DEFAULT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.supplier_productmaterial ALTER COLUMN id SET DEFAULT nextval('public.supplier_productmaterial_id_seq'::regclass);


--
-- Name: supplier_productprice id; Type: DEFAULT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.supplier_productprice ALTER COLUMN id SET DEFAULT nextval('public.supplier_productprice_id_seq'::regclass);


--
-- Name: supplier_productreview id; Type: DEFAULT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.supplier_productreview ALTER COLUMN id SET DEFAULT nextval('public.supplier_productreview_id_seq'::regclass);


--
-- Name: supplier_productsubcategory id; Type: DEFAULT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.supplier_productsubcategory ALTER COLUMN id SET DEFAULT nextval('public.supplier_productsubcategory_id_seq'::regclass);


--
-- Name: supplier_producttag id; Type: DEFAULT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.supplier_producttag ALTER COLUMN id SET DEFAULT nextval('public.supplier_producttag_id_seq'::regclass);


--
-- Name: supplier_productvideo id; Type: DEFAULT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.supplier_productvideo ALTER COLUMN id SET DEFAULT nextval('public.supplier_productvideo_id_seq'::regclass);


--
-- Name: supplier_service id; Type: DEFAULT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.supplier_service ALTER COLUMN id SET DEFAULT nextval('public.supplier_service_id_seq'::regclass);


--
-- Name: supplier_serviceimage id; Type: DEFAULT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.supplier_serviceimage ALTER COLUMN id SET DEFAULT nextval('public.supplier_serviceimage_id_seq'::regclass);


--
-- Name: supplier_servicetag id; Type: DEFAULT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.supplier_servicetag ALTER COLUMN id SET DEFAULT nextval('public.supplier_servicetag_id_seq'::regclass);


--
-- Name: supplier_store id; Type: DEFAULT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.supplier_store ALTER COLUMN id SET DEFAULT nextval('public.supplier_store_id_seq'::regclass);


--
-- Name: supplier_wishlistproduct id; Type: DEFAULT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.supplier_wishlistproduct ALTER COLUMN id SET DEFAULT nextval('public.supplier_wishlistproduct_id_seq'::regclass);


--
-- Data for Name: account_emailaddress; Type: TABLE DATA; Schema: public; Owner: django_agriculture_user
--

COPY public.account_emailaddress (id, email, verified, "primary", user_id) FROM stdin;
\.


--
-- Data for Name: account_emailconfirmation; Type: TABLE DATA; Schema: public; Owner: django_agriculture_user
--

COPY public.account_emailconfirmation (id, created, sent, key, email_address_id) FROM stdin;
\.


--
-- Data for Name: auth_app_clientprofile; Type: TABLE DATA; Schema: public; Owner: django_agriculture_user
--

COPY public.auth_app_clientprofile (id, business_name, business_name_ar, business_name_fr, business_name_de, business_name_en, slug, business_description, business_description_ar, business_description_fr, business_description_de, business_description_en, country, country_ar, country_fr, country_de, country_en, country_code, country_code_ar, country_code_fr, country_code_de, country_code_en, city, city_ar, city_fr, city_de, city_en, mobile_user, mobile_user_ar, mobile_user_fr, mobile_user_de, mobile_user_en, vat_number, legal_etity_identifier, website, customer_id, image, user_id) FROM stdin;
2	suppliers	\N	\N	\N	suppliers	suppliers	description	\N	\N	\N	description	Kenya	\N	\N	\N	Kenya	254	\N	\N	\N	254	nairobi	\N	\N	\N	nairobi	795800861	\N	\N	\N	795800861	6657	6868	https://nairobiskates.com	\N	test/django.png	5
4	buyer	\N	\N	\N	buyer	buyer	asjhfg	\N	\N	\N	asjhfg	Kenya	\N	\N	\N	Kenya	254	\N	\N	\N	254	nmaskf	\N	\N	\N	nmaskf	0983483355	\N	\N	\N	0983483355	234535235	523523	https://nairobiskates.com	\N	test/django.png	6
1	AgroTim Suppliers	\N	\N	\N	AgroTim Suppliers	agrotim-suppliers	AgroTim Suppliers				AgroTim Suppliers	Kenya	\N	\N	\N	Kenya	+254	\N	\N	\N	+254	Nairobi	\N	\N	\N	Nairobi	+254 727 074610	\N	\N	\N	+254 727 074610	\N	\N	\N	\N	test/django.png	3
46	Admin Business	\N	\N	\N	Admin Business	admin-business	Admin Business				Admin Business	Kenya	\N	\N	\N	Kenya	254	\N	\N	\N	254	Nairobi	\N	\N	\N	Nairobi	0795800861	\N	\N	\N	0795800861	\N	\N	\N	\N	test/django.png	1
\.


--
-- Data for Name: auth_app_clientprofile_team; Type: TABLE DATA; Schema: public; Owner: django_agriculture_user
--

COPY public.auth_app_clientprofile_team (id, clientprofile_id, user_id) FROM stdin;
2	1	3
3	2	5
4	4	6
159	46	1
\.


--
-- Data for Name: auth_app_supportprofile; Type: TABLE DATA; Schema: public; Owner: django_agriculture_user
--

COPY public.auth_app_supportprofile (id, responses, user_id) FROM stdin;
1	0	3
\.


--
-- Data for Name: auth_app_user; Type: TABLE DATA; Schema: public; Owner: django_agriculture_user
--

COPY public.auth_app_user (id, password, last_login, is_superuser, username, first_name, first_name_ar, first_name_fr, first_name_de, first_name_en, last_name, last_name_ar, last_name_fr, last_name_de, last_name_en, email, is_staff, is_active, date_joined, account_type, image, is_email_activated) FROM stdin;
5	pbkdf2_sha256$320000$RvNaIDyXXIw0yE9snGax5v$iFyokg5ki5/UwCBvM/nbal4fmOtuHqC2OMElfIdk+WU=	2025-07-24 20:35:38.376369+03	f	supplier	supplier	supplier	\N	\N	supplier		\N	\N	\N	\N		f	t	2025-07-22 11:56:19+03	SUPPLIER	assets/imgs/resources/profiledefault.png	t
3	pbkdf2_sha256$320000$uhq8dfFN5du5YvXpke3FRb$oxTCQhciMKeA+2FwyMh9AeJTs1N7M9nW+vptWtMC11E=	2025-06-24 19:19:20+03	t	AgroTim	AgroTim	\N	\N	\N	AgroTim	AgroTim	\N	\N	\N	AgroTim	info@agrotim.co.ke	t	t	2025-06-24 19:19:08+03	SUPPLIER	assets/imgs/resources/profiledefault.png	t
6	pbkdf2_sha256$320000$Ndj34W4B2SV5MAOwXJtCsF$bOCNBnrUeQEDgPRF/FQZ7h56djQW13yRdNfAWnUH1VI=	2025-07-24 22:06:31.114311+03	f	buyer	buyer	\N	\N	\N	buyer		\N	\N	\N	\N	buyer@gmail.com	f	t	2025-07-22 12:08:36+03	BUYER	assets/imgs/resources/profiledefault.png	t
1	pbkdf2_sha256$320000$ItOT5RjitntF3s2CmZ9Sgy$uFB3QvamXfAbypjjFKoyulMxHnkYHBrTYYWwjsBfBIQ=	2025-07-24 22:27:36+03	t	admin		\N	\N	\N	\N		\N	\N	\N	\N	emiliohulbert2017@gmail.com	t	t	2025-06-19 20:26:58+03	ADMIN	assets/imgs/resources/profiledefault.png	t
\.


--
-- Data for Name: auth_app_user_groups; Type: TABLE DATA; Schema: public; Owner: django_agriculture_user
--

COPY public.auth_app_user_groups (id, user_id, group_id) FROM stdin;
1	3	1
\.


--
-- Data for Name: auth_app_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: django_agriculture_user
--

COPY public.auth_app_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: django_agriculture_user
--

COPY public.auth_group (id, name) FROM stdin;
1	1
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: django_agriculture_user
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
1	1	1
2	1	2
3	1	3
4	1	4
5	1	5
6	1	6
7	1	7
8	1	8
9	1	9
10	1	10
11	1	11
12	1	12
13	1	13
14	1	14
15	1	15
16	1	16
17	1	17
18	1	18
19	1	19
20	1	20
21	1	21
22	1	22
23	1	23
24	1	24
25	1	25
26	1	26
27	1	27
28	1	28
29	1	29
30	1	30
31	1	31
32	1	32
33	1	33
34	1	34
35	1	35
36	1	36
37	1	37
38	1	38
39	1	39
40	1	40
41	1	41
42	1	42
43	1	43
44	1	44
45	1	45
46	1	46
47	1	47
48	1	48
49	1	49
50	1	50
51	1	51
52	1	52
53	1	53
54	1	54
55	1	55
56	1	56
57	1	57
58	1	58
59	1	59
60	1	60
61	1	61
62	1	62
63	1	63
64	1	64
65	1	65
66	1	66
67	1	67
68	1	68
69	1	69
70	1	70
71	1	71
72	1	72
73	1	73
74	1	74
75	1	75
76	1	76
77	1	77
78	1	78
79	1	79
80	1	80
81	1	81
82	1	82
83	1	83
84	1	84
85	1	85
86	1	86
87	1	87
88	1	88
89	1	89
90	1	90
91	1	91
92	1	92
93	1	93
94	1	94
95	1	95
96	1	96
97	1	97
98	1	98
99	1	99
100	1	100
101	1	101
102	1	102
103	1	103
104	1	104
105	1	105
106	1	106
107	1	107
108	1	108
109	1	109
110	1	110
111	1	111
112	1	112
113	1	113
114	1	114
115	1	115
116	1	116
117	1	117
118	1	118
119	1	119
120	1	120
121	1	121
122	1	122
123	1	123
124	1	124
125	1	125
126	1	126
127	1	127
128	1	128
129	1	129
130	1	130
131	1	131
132	1	132
133	1	133
134	1	134
135	1	135
136	1	136
137	1	137
138	1	138
139	1	139
140	1	140
141	1	141
142	1	142
143	1	143
144	1	144
145	1	145
146	1	146
147	1	147
148	1	148
149	1	149
150	1	150
151	1	151
152	1	152
153	1	153
154	1	154
155	1	155
156	1	156
157	1	157
158	1	158
159	1	159
160	1	160
161	1	161
162	1	162
163	1	163
164	1	164
165	1	165
166	1	166
167	1	167
168	1	168
169	1	169
170	1	170
171	1	171
172	1	172
173	1	173
174	1	174
175	1	175
176	1	176
177	1	177
178	1	178
179	1	179
180	1	180
181	1	181
182	1	182
183	1	183
184	1	184
185	1	185
186	1	186
187	1	187
188	1	188
189	1	189
190	1	190
191	1	191
192	1	192
193	1	193
194	1	194
195	1	195
196	1	196
197	1	197
198	1	198
199	1	199
200	1	200
201	1	201
202	1	202
203	1	203
204	1	204
205	1	205
206	1	206
207	1	207
208	1	208
209	1	209
210	1	210
211	1	211
212	1	212
213	1	213
214	1	214
215	1	215
216	1	216
217	1	217
218	1	218
219	1	219
220	1	220
221	1	221
222	1	222
223	1	223
224	1	224
225	1	225
226	1	226
227	1	227
228	1	228
229	1	229
230	1	230
231	1	231
232	1	232
233	1	233
234	1	234
235	1	235
236	1	236
237	1	237
238	1	238
239	1	239
240	1	240
241	1	241
242	1	242
243	1	243
244	1	244
245	1	245
246	1	246
247	1	247
248	1	248
249	1	249
250	1	250
251	1	251
252	1	252
253	1	253
254	1	254
255	1	255
256	1	256
257	1	257
258	1	258
259	1	259
260	1	260
261	1	261
262	1	262
263	1	263
264	1	264
265	1	265
266	1	266
267	1	267
268	1	268
269	1	269
270	1	270
271	1	271
272	1	272
273	1	273
274	1	274
275	1	275
276	1	276
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: django_agriculture_user
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
277	Can add transaction	70	add_transaction
278	Can change transaction	70	change_transaction
279	Can delete transaction	70	delete_transaction
280	Can view transaction	70	view_transaction
\.


--
-- Data for Name: buyer_cart; Type: TABLE DATA; Schema: public; Owner: django_agriculture_user
--

COPY public.buyer_cart (id, created_on, buyer_id) FROM stdin;
3	2025-07-24	4
\.


--
-- Data for Name: coms_groupchat; Type: TABLE DATA; Schema: public; Owner: django_agriculture_user
--

COPY public.coms_groupchat (id, roomname, chatfilepath, is_closed, is_handled, created_on, updated_on, name, image) FROM stdin;
\.


--
-- Data for Name: coms_groupchat_participants; Type: TABLE DATA; Schema: public; Owner: django_agriculture_user
--

COPY public.coms_groupchat_participants (id, groupchat_id, user_id) FROM stdin;
\.


--
-- Data for Name: coms_interclientchat; Type: TABLE DATA; Schema: public; Owner: django_agriculture_user
--

COPY public.coms_interclientchat (id, roomname, chatfilepath, is_closed, is_handled, created_on, updated_on, initiator_id, participant_id) FROM stdin;
\.


--
-- Data for Name: coms_interuserchat; Type: TABLE DATA; Schema: public; Owner: django_agriculture_user
--

COPY public.coms_interuserchat (id, roomname, chatfilepath, is_closed, is_handled, created_on, updated_on) FROM stdin;
\.


--
-- Data for Name: coms_interuserchat_participants; Type: TABLE DATA; Schema: public; Owner: django_agriculture_user
--

COPY public.coms_interuserchat_participants (id, interuserchat_id, user_id) FROM stdin;
\.


--
-- Data for Name: coms_orderchat; Type: TABLE DATA; Schema: public; Owner: django_agriculture_user
--

COPY public.coms_orderchat (id, roomname, chatfilepath, is_closed, is_handled, created_on, updated_on, buyer_representative_id, order_id, supplier_representative_id) FROM stdin;
\.


--
-- Data for Name: coms_supportclientchat; Type: TABLE DATA; Schema: public; Owner: django_agriculture_user
--

COPY public.coms_supportclientchat (id, roomname, chatfilepath, is_closed, is_handled, created_on, updated_on, support_id, user_id) FROM stdin;
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: django_agriculture_user
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2025-06-20 09:51:06.124024+03	1	admin	1	[{"added": {}}]	67	1
2	2025-06-20 09:53:04.609657+03	1	admin	2	[{"changed": {"fields": ["Provider"]}}]	67	1
3	2025-06-20 10:02:56.173805+03	1	HybridNairobiSkates	1	[{"added": {}}]	68	1
4	2025-06-20 10:03:55.485441+03	2	demo.nairobiskates.com	1	[{"added": {}}]	6	1
5	2025-06-20 10:04:14.342736+03	1	HybridNairobiSkates	2	[{"changed": {"fields": ["Sites"]}}]	68	1
6	2025-06-20 10:06:33.625774+03	1	social application token (1)	1	[{"added": {}}]	69	1
7	2025-06-20 10:07:07.07184+03	1	admin	2	[{"changed": {"fields": ["Provider"]}}]	67	1
8	2025-06-20 10:10:08.949499+03	1	google	2	[{"changed": {"fields": ["Name"]}}]	68	1
9	2025-06-20 10:11:00.621328+03	3	https://demo.nairobiskates.com/en/auth/login/	1	[{"added": {}}]	6	1
10	2025-06-20 10:11:06.068984+03	1	google	2	[{"changed": {"fields": ["Sites"]}}]	68	1
11	2025-06-20 10:13:03.026544+03	1	admin	2	[{"changed": {"fields": ["Provider"]}}]	67	1
12	2025-06-20 11:04:42.847511+03	1	admin	3		67	1
13	2025-06-20 11:05:21.105017+03	1	google	3		68	1
14	2025-06-20 11:07:48.762615+03	2	Google Login	1	[{"added": {}}]	68	1
15	2025-06-20 11:12:02.288354+03	2	admin	1	[{"added": {}}]	67	1
16	2025-06-20 11:14:22.3721+03	2	social application token (2)	1	[{"added": {}}]	69	1
17	2025-06-20 11:20:03.105876+03	2	Google Login	2	[]	68	1
18	2025-06-20 11:20:44.828598+03	3	https://demo.nairobiskates.com/en/auth/login/	3		6	1
19	2025-06-24 16:38:09.621434+03	2	Betwan Suppliers	1	[{"added": {}}]	27	1
20	2025-06-24 17:49:41.508506+03	4	Laptop Bags	2	[{"changed": {"fields": ["Image"]}}]	24	1
21	2025-06-24 17:49:56.019315+03	3	Phones	2	[{"changed": {"fields": ["Image"]}}]	24	1
22	2025-06-24 17:50:06.759219+03	2	Printers	2	[{"changed": {"fields": ["Image"]}}]	24	1
23	2025-06-24 17:50:19.090809+03	1	Laptops	2	[{"changed": {"fields": ["Image"]}}]	24	1
24	2025-06-24 17:51:32.358383+03	6	Inkjet	2	[{"changed": {"fields": ["Image"]}}]	32	1
25	2025-06-24 17:52:27.873522+03	4	iOS	2	[{"changed": {"fields": ["Image"]}}]	32	1
26	2025-06-24 17:53:22.297533+03	3	Android	2	[{"changed": {"fields": ["Image"]}}]	32	1
27	2025-06-24 17:53:56.892602+03	2	Business	2	[{"changed": {"fields": ["Image"]}}]	32	1
28	2025-06-24 17:55:11.391044+03	1	Gaming	2	[{"changed": {"fields": ["Image"]}}]	32	1
29	2025-06-24 17:58:16.411788+03	3	Main Store	3		27	1
30	2025-06-24 17:58:16.417169+03	2	Betwan Suppliers	3		27	1
31	2025-06-24 17:58:59.839817+03	4	Betwan Suppliers	1	[{"added": {}}]	27	1
32	2025-06-24 17:59:11.205459+03	2	betwan_supplier	3		54	1
33	2025-06-24 18:00:30.562183+03	5	Wireless	2	[{"changed": {"fields": ["Image"]}}]	32	1
34	2025-06-24 18:02:55.039553+03	4	Betwan Suppliers	2	[{"changed": {"fields": ["Service Image"]}}]	27	1
35	2025-06-24 18:04:01.365213+03	4	Betwan Suppliers	2	[{"changed": {"fields": ["Service Image"]}}]	27	1
36	2025-06-24 18:07:13.917298+03	7	Apple	1	[{"added": {}}]	32	1
37	2025-06-24 18:08:20.126443+03	4	iOS	2	[{"changed": {"fields": ["Image"]}}]	32	1
38	2025-06-24 18:43:52.885552+03	5	Designer Mugs	1	[{"added": {}}]	24	1
39	2025-06-24 18:55:59.151135+03	4	Epison L3210 None	1	[{"added": {}}]	23	1
40	2025-06-24 18:57:27.225782+03	5	Hp Omen 16 None	1	[{"added": {}}]	23	1
41	2025-06-24 19:00:26.278922+03	6	i7 11th 3.0ghz (8VPUS) 32GB RAM 512ssd touch None	1	[{"added": {}}]	23	1
42	2025-06-24 19:01:49.541069+03	7	Hp Mini None	1	[{"added": {}}]	23	1
43	2025-06-24 19:03:37.915798+03	8	Hp G3 None	1	[{"added": {}}]	23	1
44	2025-06-24 19:20:37.407395+03	3	Betwan	1	[{"added": {}}]	58	1
45	2025-06-24 19:21:33.156247+03	4	Betwan Suppliers	2	[{"changed": {"fields": ["Supplier"]}}]	27	1
46	2025-06-24 19:23:54.30265+03	1	Betwan Suppliers	1	[{"added": {}}]	56	1
47	2025-06-24 19:26:50.310566+03	8	Hp G3 Betwan Suppliers	2	[{"changed": {"fields": ["Business"]}}]	23	1
48	2025-06-24 19:27:05.354608+03	7	Hp Mini Betwan Suppliers	2	[{"changed": {"fields": ["Business"]}}]	23	1
49	2025-06-24 19:27:15.423757+03	6	i7 11th 3.0ghz (8VPUS) 32GB RAM 512ssd touch Betwan Suppliers	2	[{"changed": {"fields": ["Business"]}}]	23	1
50	2025-06-24 19:27:24.163741+03	5	Hp Omen 16 Betwan Suppliers	2	[{"changed": {"fields": ["Business"]}}]	23	1
51	2025-06-24 19:27:34.970844+03	4	Epison L3210 Betwan Suppliers	2	[{"changed": {"fields": ["Business"]}}]	23	1
52	2025-06-24 19:31:43.921501+03	4	Betwan Suppliers	2	[]	27	1
53	2025-06-24 19:32:11.704417+03	3	Betwan	2	[]	58	1
54	2025-06-24 19:33:14.52356+03	1	1	1	[{"added": {}}]	2	1
55	2025-06-24 19:33:24.935815+03	3	Betwan	2	[{"changed": {"fields": ["Groups"]}}]	58	1
56	2025-06-24 19:33:44.833469+03	1	Betwan	1	[{"added": {}}]	55	1
57	2025-06-24 19:36:59.161436+03	1	example.com	3		6	1
58	2025-06-24 19:38:20.177028+03	8	Hp G3 Betwan Suppliers	2	[{"changed": {"fields": ["Store", "Stock"]}}]	23	1
59	2025-06-24 19:41:16.565662+03	8	Hp G3 Betwan Suppliers	2	[]	23	1
60	2025-06-24 19:41:29.934636+03	7	Hp Mini Betwan Suppliers	2	[{"changed": {"fields": ["Store"]}}]	23	1
61	2025-06-24 19:41:46.232384+03	6	i7 11th 3.0ghz (8VPUS) 32GB RAM 512ssd touch Betwan Suppliers	2	[{"changed": {"fields": ["Store"]}}]	23	1
62	2025-06-24 19:41:57.042584+03	6	i7 11th 3.0ghz (8VPUS) 32GB RAM 512ssd touch Betwan Suppliers	2	[]	23	1
63	2025-06-24 19:42:08.346135+03	5	Hp Omen 16 Betwan Suppliers	2	[{"changed": {"fields": ["Store"]}}]	23	1
64	2025-06-24 19:42:19.685583+03	4	Epison L3210 Betwan Suppliers	2	[{"changed": {"fields": ["Store"]}}]	23	1
65	2025-06-24 19:45:31.502535+03	9	HP Victus 16 Gaming Betwan Suppliers	1	[{"added": {}}]	23	1
66	2025-06-24 19:47:55.390447+03	6	Mouse	1	[{"added": {}}]	24	1
67	2025-06-24 19:48:50.987312+03	10	Rechargable wireless mouse Betwan Suppliers	1	[{"added": {}}]	23	1
68	2025-06-24 19:50:45.610841+03	8	Hp G3 Betwan Suppliers	2	[]	23	1
69	2025-06-24 19:51:19.716766+03	9	HP Victus 16 Gaming Betwan Suppliers	2	[]	23	1
70	2025-06-24 19:51:57.018669+03	9	HP Victus 16 Gaming Betwan Suppliers	2	[]	23	1
71	2025-06-24 19:52:14.591753+03	9	HP Victus 16 Gaming Betwan Suppliers	2	[{"changed": {"fields": ["Price"]}}]	23	1
72	2025-06-24 19:53:18.946974+03	8	Hp G3 Betwan Suppliers	2	[{"changed": {"fields": ["Price"]}}]	23	1
73	2025-06-24 19:53:32.220033+03	7	Hp Mini Betwan Suppliers	2	[{"changed": {"fields": ["Price"]}}]	23	1
74	2025-06-24 19:54:02.83101+03	6	i7 11th 3.0ghz (8VPUS) 32GB RAM 512ssd touch Betwan Suppliers	2	[{"changed": {"fields": ["Price"]}}]	23	1
75	2025-06-24 19:54:27.610545+03	5	Hp Omen 16 Betwan Suppliers	2	[{"changed": {"fields": ["Price"]}}]	23	1
76	2025-06-24 19:54:47.341187+03	4	Epison L3210 Betwan Suppliers	2	[{"changed": {"fields": ["Price"]}}]	23	1
77	2025-06-24 20:06:12.272073+03	3	Rechargable wireless mouse	1	[{"added": {}}]	36	1
78	2025-06-24 20:07:55.628113+03	4	HP Victus 16 Gaming	1	[{"added": {}}]	36	1
79	2025-06-24 20:08:49.430724+03	5	Hp Omen 16	1	[{"added": {}}]	36	1
80	2025-06-24 20:09:24.758884+03	6	i7 11th 3.0ghz (8VPUS) 32GB RAM 512ssd touch	1	[{"added": {}}]	36	1
81	2025-06-24 20:10:48.252924+03	7	Hp Omen 16	1	[{"added": {}}]	36	1
82	2025-06-24 20:11:08.811204+03	8	Epison L3210	1	[{"added": {}}]	36	1
83	2025-06-24 20:14:23.665876+03	8	Designer Mugs	1	[{"added": {}}]	32	1
84	2025-06-24 20:15:09.836971+03	11	Beauty Mug Betwan Suppliers	1	[{"added": {}}]	23	1
85	2025-06-24 20:15:54.005803+03	9	Beauty Mug	1	[{"added": {}}]	36	1
86	2025-06-24 20:18:20.454133+03	10	Hp G3	1	[{"added": {}}]	36	1
87	2025-06-24 20:19:09.951717+03	11	Hp Mini	1	[{"added": {}}]	36	1
88	2025-06-24 20:20:35.137847+03	9	Normal Laptop Bag	1	[{"added": {}}]	32	1
89	2025-06-24 20:21:38.799139+03	12	Laptop Bag Betwan Suppliers	1	[{"added": {}}]	23	1
90	2025-06-24 20:21:57.188496+03	12	Laptop Bag	1	[{"added": {}}]	36	1
91	2025-06-24 20:23:13.371257+03	10	wired	1	[{"added": {}}]	32	1
92	2025-06-24 20:49:26.43272+03	3	Betwan	2	[{"changed": {"fields": ["Image"]}}]	58	1
93	2025-06-24 20:50:59.133398+03	1	Showroom 1	1	[{"added": {}}]	12	1
94	2025-06-24 20:51:03.969874+03	1	Showroom 1 - 100000	1	[{"added": {}}]	19	1
95	2025-06-24 20:51:16.32209+03	1	Product: HP Victus 16 Gaming Betwan Suppliers, Active: True	1	[{"added": {}}]	20	1
96	2025-06-24 21:32:23.986616+03	1	Betwan Suppliers	2	[{"changed": {"fields": ["Team"]}}]	56	1
97	2025-06-24 21:34:32.570256+03	1	IT Consultancy	1	[{"added": {}}]	10	1
98	2025-06-24 21:34:44.343503+03	1	IT Consultancy	1	[{"added": {}}]	13	1
99	2025-06-24 21:35:43.832182+03	1	Epison L3210 - black	1	[{"added": {}}]	37	1
100	2025-06-24 21:35:57.821899+03	2	Epison L3210 - White	1	[{"added": {}}]	37	1
101	2025-06-24 21:37:00.230101+03	1	Imegeries	1	[{"added": {}}]	25	1
102	2025-06-24 21:37:07.77873+03	1	Imegeries	1	[{"added": {}}]	29	1
103	2025-06-24 21:52:40.350918+03	1	Promotion object (1)	2	[{"changed": {"fields": ["Type"]}}]	14	1
104	2025-06-24 21:53:12.263093+03	1	Promotion object (1)	2	[{"changed": {"fields": ["Image", "Showroom"]}}]	14	1
105	2025-06-24 21:53:49.86105+03	1	Promotion object (1)	3		14	1
106	2025-06-24 21:55:20.852682+03	2	Betwan ShowRoom	1	[{"added": {}}]	12	1
107	2025-06-24 21:55:50.664993+03	2	Promotion object (2)	1	[{"added": {}}]	14	1
108	2025-06-24 21:56:31.05487+03	3	Promotion object (3)	1	[{"added": {}}]	14	1
109	2025-06-24 21:57:08.507363+03	4	Promotion object (4)	1	[{"added": {}}]	14	1
110	2025-06-25 16:32:50.55375+03	13	HP Elitebook 840 g9 Betwan Suppliers	1	[{"added": {}}]	23	1
111	2025-06-25 16:34:11.387034+03	14	HP Z Book 14 G7 Firefly Betwan Suppliers	1	[{"added": {}}]	23	1
112	2025-06-25 16:36:30.028844+03	15	Hp 840G8 Betwan Suppliers	1	[{"added": {}}]	23	1
113	2025-06-25 16:37:42.119186+03	16	MICROSOFT PRO 5 Betwan Suppliers	1	[{"added": {}}]	23	1
114	2025-06-25 16:38:55.338973+03	17	DELL LATITUDE 7280 Betwan Suppliers	1	[{"added": {}}]	23	1
115	2025-06-25 16:39:53.488342+03	18	DELL LATITUDE 7390 Betwan Suppliers	1	[{"added": {}}]	23	1
116	2025-06-25 16:40:57.546419+03	19	Dell Precision 5520 Betwan Suppliers	1	[{"added": {}}]	23	1
117	2025-06-25 16:42:33.515187+03	20	Samsung Galaxy A56 Betwan Suppliers	1	[{"added": {}}]	23	1
118	2025-06-25 16:43:44.077091+03	21	NEW ARRIVALS  MACBOOK PRO M1 Betwan Suppliers	1	[{"added": {}}]	23	1
119	2025-06-25 16:44:39.274634+03	22	MACBOOK PRO M1 (2338) Betwan Suppliers	1	[{"added": {}}]	23	1
120	2025-06-25 16:45:38.055114+03	23	Lenovo x1 carbon G7 Betwan Suppliers	1	[{"added": {}}]	23	1
121	2025-06-25 16:46:49.45168+03	24	LENOVO X1 YOGA Betwan Suppliers	1	[{"added": {}}]	23	1
122	2025-06-25 16:47:37.11082+03	25	🔥LENOVO THINKPAD X380 YOGA Betwan Suppliers	1	[{"added": {}}]	23	1
123	2025-06-25 16:48:26.933137+03	26	🔥🔥🔥 Lenovo T490s Betwan Suppliers	1	[{"added": {}}]	23	1
124	2025-06-25 16:49:31.219559+03	27	HP 1040 Betwan Suppliers	1	[{"added": {}}]	23	1
125	2025-06-25 16:50:58.700873+03	28	Lenovo thinkpad yoga 11e Betwan Suppliers	1	[{"added": {}}]	23	1
126	2025-06-25 16:51:48.193502+03	29	LENOVO 460P Betwan Suppliers	1	[{"added": {}}]	23	1
127	2025-06-25 16:52:58.743952+03	30	🔥 LENOVO X1 YOGA G7 – Premium Convertible Laptop 🔥 Betwan Suppliers	1	[{"added": {}}]	23	1
128	2025-06-25 16:53:48.933415+03	31	Dell XPS 15 9500 Betwan Suppliers	1	[{"added": {}}]	23	1
129	2025-06-25 16:54:33.732568+03	32	DELL LATITUDE 7280 Betwan Suppliers	1	[{"added": {}}]	23	1
130	2025-06-25 16:55:31.543784+03	33	🔥HP Z Book 14 G7 Firefly Betwan Suppliers	1	[{"added": {}}]	23	1
131	2025-06-25 16:56:25.315077+03	34	HP PAVILION AERO Betwan Suppliers	1	[{"added": {}}]	23	1
132	2025-06-25 16:57:12.734667+03	35	HP VICTUS 16 GAMING Betwan Suppliers	1	[{"added": {}}]	23	1
133	2025-06-25 16:58:07.140917+03	36	💻 Dell Precision 5550 Betwan Suppliers	1	[{"added": {}}]	23	1
134	2025-06-25 16:58:52.838718+03	37	🔥🔥🔥Lenovo ThinkPad X1 Yoga Betwan Suppliers	1	[{"added": {}}]	23	1
135	2025-06-25 16:59:42.795884+03	38	LENOVO X1 YOGA G7 Betwan Suppliers	1	[{"added": {}}]	23	1
136	2025-06-25 17:00:18.135641+03	39	🔥LENOVO THINKPAD X380 YOGA Betwan Suppliers	1	[{"added": {}}]	23	1
137	2025-06-25 17:01:02.865265+03	40	Lenovo x1 carbon G7 Betwan Suppliers	1	[{"added": {}}]	23	1
138	2025-06-25 17:01:48.684887+03	41	DELL PRECISION 5530 Betwan Suppliers	1	[{"added": {}}]	23	1
139	2025-06-25 17:02:29.731489+03	42	MACBOOK PRO M1 Betwan Suppliers	1	[{"added": {}}]	23	1
140	2025-06-25 17:03:15.366342+03	43	MACBOOK PRO M1 2021 (A2442) Betwan Suppliers	1	[{"added": {}}]	23	1
141	2025-06-25 17:04:19.215877+03	44	DELL PRECISION 5530 Betwan Suppliers	1	[{"added": {}}]	23	1
142	2025-06-25 17:05:17.995525+03	45	[11:32 AM, 6/24/2025] Nash: @60k [11:34 AM, 6/24/2025] Nash: Mini @30k [11:34 AM, 6/24/2025] Nash: G3 @50k [11:35 AM, 6/24/2025] Nash: HP Victus 16 Gaming 11th Gen Core i5 16gb Ram 1TB SSD 4gb Nvidia 	1	[{"added": {}}]	23	1
143	2025-06-25 17:06:21.926884+03	45	[11:32 AM, 6/24/2025] Nash: @60k [11:34 AM, 6/24/2025] Nash: Mini @30k [11:34 AM, 6/24/2025] Nash: G3 @50k [11:35 AM, 6/24/2025] Nash: HP Victus 16 Gaming 11th Gen Core i5 16gb Ram 1TB SSD 4gb Nvidia 	2	[{"changed": {"fields": ["Name"]}}]	23	1
144	2025-06-25 17:06:45.279686+03	45	HP Elitebook 830 G6/8th Betwan Suppliers	2	[{"changed": {"fields": ["Name", "Name [en]"]}}]	23	1
145	2025-06-25 17:08:04.179269+03	46	HP ELITEBOOK 840 G6 Betwan Suppliers	1	[{"added": {}}]	23	1
146	2025-06-25 17:08:49.788495+03	47	*DEll XPS 13 9365 Betwan Suppliers	1	[{"added": {}}]	23	1
147	2025-06-25 17:09:22.431948+03	48	HP ELITEBOOK 1040 G8 Betwan Suppliers	1	[{"added": {}}]	23	1
148	2025-06-25 17:10:05.038391+03	49	HP ELITEBOOK 830 G5 Betwan Suppliers	1	[{"added": {}}]	23	1
149	2025-06-25 17:10:42.408023+03	50	DELL 3310 Betwan Suppliers	1	[{"added": {}}]	23	1
150	2025-06-25 17:11:28.02491+03	51	DELL LATITUDE 7280 Betwan Suppliers	1	[{"added": {}}]	23	1
151	2025-06-25 17:12:21.986289+03	52	HP 840 G5 core i5 8th gen Betwan Suppliers	1	[{"added": {}}]	23	1
152	2025-06-25 17:16:34.637559+03	13	HP Z Book 14 G7 Firefly	1	[{"added": {}}]	36	1
153	2025-06-25 17:18:37.616893+03	14	Hp 840G8	1	[{"added": {}}]	36	1
154	2025-06-25 17:19:27.088827+03	15	MICROSOFT PRO 5	1	[{"added": {}}]	36	1
155	2025-06-25 17:20:01.598676+03	16	DELL LATITUDE 7280	1	[{"added": {}}]	36	1
156	2025-06-25 17:20:52.130971+03	17	Dell Precision 5520	1	[{"added": {}}]	36	1
157	2025-06-25 17:21:33.628983+03	17	Dell Precision 5520	2	[{"changed": {"fields": ["Image"]}}]	36	1
158	2025-06-25 17:21:56.476924+03	18	Samsung Galaxy A56	1	[{"added": {}}]	36	1
159	2025-06-25 17:25:04.474522+03	19	MACBOOK PRO M1	1	[{"added": {}}]	36	1
160	2025-06-25 17:31:58.202944+03	20	MACBOOK PRO M1 (2338)	1	[{"added": {}}]	36	1
161	2025-06-25 17:32:56.035828+03	21	LENOVO X1 YOGA	1	[{"added": {}}]	36	1
162	2025-06-25 17:33:40.468529+03	22	🔥LENOVO THINKPAD X380 YOGA	1	[{"added": {}}]	36	1
163	2025-06-25 17:34:51.033025+03	23	🔥🔥🔥 Lenovo T490s	1	[{"added": {}}]	36	1
164	2025-06-25 17:35:47.343261+03	24	HP 1040	1	[{"added": {}}]	36	1
165	2025-06-25 17:37:32.393828+03	25	LENOVO 460P	1	[{"added": {}}]	36	1
166	2025-06-25 17:38:26.716151+03	26	🔥 LENOVO X1 YOGA G7 – Premium Convertible Laptop 🔥	1	[{"added": {}}]	36	1
167	2025-06-25 17:38:55.603273+03	27	Dell XPS 15 9500	1	[{"added": {}}]	36	1
168	2025-06-25 17:39:17.230459+03	28	DELL LATITUDE 7280	1	[{"added": {}}]	36	1
169	2025-06-25 17:39:59.835123+03	29	HP Z Book 14 G7 Firefly	1	[{"added": {}}]	36	1
170	2025-06-25 17:41:09.576753+03	30	HP Z Book 14 G7 Firefly	1	[{"added": {}}]	36	1
171	2025-06-25 17:42:18.911168+03	31	HP PAVILION AERO	1	[{"added": {}}]	36	1
172	2025-06-25 17:42:47.651184+03	32	HP VICTUS 16 GAMING	1	[{"added": {}}]	36	1
173	2025-06-25 17:45:08.608647+03	33	💻 Dell Precision 5550	1	[{"added": {}}]	36	1
174	2025-06-25 17:45:34.129012+03	34	🔥🔥🔥Lenovo ThinkPad X1 Yoga	1	[{"added": {}}]	36	1
175	2025-06-25 17:46:04.50097+03	35	🔥LENOVO THINKPAD X380 YOGA	1	[{"added": {}}]	36	1
176	2025-06-25 17:47:17.627242+03	36	Lenovo x1 carbon G7	1	[{"added": {}}]	36	1
177	2025-06-25 17:47:57.548802+03	36	Lenovo x1 carbon G7	2	[{"changed": {"fields": ["Image"]}}]	36	1
178	2025-06-25 17:48:19.204777+03	37	DELL PRECISION 5530	1	[{"added": {}}]	36	1
179	2025-06-25 17:49:12.02215+03	38	MACBOOK PRO M1 2021 (A2442)	1	[{"added": {}}]	36	1
180	2025-06-25 17:49:38.741124+03	38	MACBOOK PRO M1 2021 (A2442)	2	[{"changed": {"fields": ["Image"]}}]	36	1
181	2025-06-25 17:50:02.485135+03	39	DELL PRECISION 5530	1	[{"added": {}}]	36	1
182	2025-06-25 17:50:27.288447+03	40	HP Elitebook 830 G6/8th	1	[{"added": {}}]	36	1
183	2025-06-25 17:51:04.739175+03	41	Laptop Bag	1	[{"added": {}}]	36	1
184	2025-06-25 17:54:51.101898+03	42	HP PAVILION AERO	1	[{"added": {}}]	36	1
185	2025-06-25 17:55:39.769191+03	43	HP ELITEBOOK 840 G6	1	[{"added": {}}]	36	1
186	2025-06-25 17:56:10.211812+03	44	*DEll XPS 13 9365	1	[{"added": {}}]	36	1
187	2025-06-25 17:56:29.973044+03	45	HP ELITEBOOK 830 G5	1	[{"added": {}}]	36	1
188	2025-06-25 17:57:36.784628+03	46	DELL LATITUDE 7280	1	[{"added": {}}]	36	1
189	2025-06-25 17:58:36.861108+03	46	DELL LATITUDE 7280	2	[{"changed": {"fields": ["Image"]}}]	36	1
190	2025-06-25 17:59:32.946986+03	47	DELL 3310	1	[{"added": {}}]	36	1
191	2025-06-25 18:00:02.10021+03	48	HP 840 G5 core i5 8th gen	1	[{"added": {}}]	36	1
192	2025-06-25 18:03:00.85133+03	11	Samsung	1	[{"added": {}}]	32	1
193	2025-06-25 18:05:09.353826+03	12	NOKIA	1	[{"added": {}}]	32	1
194	2025-06-25 18:05:23.340372+03	13	VIVO	1	[{"added": {}}]	32	1
195	2025-06-25 18:05:40.829344+03	14	REDMI	1	[{"added": {}}]	32	1
196	2025-06-25 18:07:18.545833+03	15	OPPO	1	[{"added": {}}]	32	1
197	2025-06-25 18:07:29.125849+03	16	ITEL	1	[{"added": {}}]	32	1
198	2025-06-25 18:07:42.336148+03	17	TECNO	1	[{"added": {}}]	32	1
199	2025-06-25 18:09:34.519728+03	11	Samsung	2	[{"changed": {"fields": ["Image"]}}]	32	1
200	2025-06-25 18:09:50.348146+03	14	REDMI	2	[{"changed": {"fields": ["Image"]}}]	32	1
201	2025-06-25 18:12:55.624172+03	49	HP ELITEBOOK 1040 G8	1	[{"added": {}}]	36	1
202	2025-06-25 18:13:51.781548+03	50	LENOVO X1 YOGA G7	1	[{"added": {}}]	36	1
203	2025-06-25 18:15:09.625234+03	51	🔥HP Z Book 14 G7 Firefly	1	[{"added": {}}]	36	1
204	2025-06-25 18:16:19.331865+03	52	Lenovo thinkpad yoga 11e	1	[{"added": {}}]	36	1
205	2025-06-25 18:17:33.02019+03	53	🔥LENOVO THINKPAD X380 YOGA	1	[{"added": {}}]	36	1
206	2025-06-25 18:18:40.720572+03	54	Lenovo x1 carbon G7	1	[{"added": {}}]	36	1
207	2025-06-25 18:21:02.87419+03	55	NEW ARRIVALS  MACBOOK PRO M1	1	[{"added": {}}]	36	1
208	2025-06-25 18:22:23.386886+03	56	DELL LATITUDE 7390	1	[{"added": {}}]	36	1
209	2025-06-25 18:22:55.93126+03	57	DELL LATITUDE 7280	1	[{"added": {}}]	36	1
210	2025-06-25 18:23:57.635215+03	58	HP Elitebook 840 g9	1	[{"added": {}}]	36	1
211	2025-06-25 18:25:31.725315+03	59	🔥LENOVO THINKPAD X380 YOGA	1	[{"added": {}}]	36	1
212	2025-06-25 18:26:30.448183+03	60	🔥LENOVO THINKPAD X380 YOGA	1	[{"added": {}}]	36	1
213	2025-06-25 18:27:41.971402+03	61	DELL LATITUDE 7280	1	[{"added": {}}]	36	1
214	2025-06-25 18:37:06.672224+03	1	Showroom 1	3		12	1
215	2025-06-27 13:07:31.741788+03	53	HP RAZOR BLADE 14 Betwan Suppliers	1	[{"added": {}}]	23	1
216	2025-06-27 13:08:53.872527+03	54	HP DRAGON FLY G3 Betwan Suppliers	1	[{"added": {}}]	23	1
217	2025-06-27 13:10:36.784148+03	55	🔥🔥 HP Dragonfly G2 Betwan Suppliers	1	[{"added": {}}]	23	1
218	2025-06-27 13:11:38.586588+03	56	🔥🔥🔥HP  Eliteboook 830 G8 Betwan Suppliers	1	[{"added": {}}]	23	1
219	2025-06-27 13:12:38.362421+03	57	Hp Elite book 840 G9 Betwan Suppliers	1	[{"added": {}}]	23	1
220	2025-06-27 13:14:27.353517+03	62	HP RAZOR BLADE 14	1	[{"added": {}}]	36	1
221	2025-06-27 13:16:45.887458+03	63	HP DRAGON FLY G3	1	[{"added": {}}]	36	1
222	2025-06-27 13:17:12.276354+03	64	🔥🔥 HP Dragonfly G2	1	[{"added": {}}]	36	1
223	2025-06-27 13:17:52.715632+03	65	🔥🔥🔥HP  Eliteboook 830 G8	1	[{"added": {}}]	36	1
224	2025-06-27 13:18:09.00596+03	66	Hp Elite book 840 G9	1	[{"added": {}}]	36	1
225	2025-06-27 13:20:08.271482+03	57	Hp Elite book 840 G9 Betwan Suppliers	2	[{"changed": {"fields": ["Price"]}}]	23	1
226	2025-06-27 15:19:37.25085+03	18	Wireless Mouse	1	[{"added": {}}]	32	1
227	2025-06-27 15:20:36.224231+03	67	Rechargable wireless mouse	1	[{"added": {}}]	36	1
228	2025-06-27 15:22:16.902141+03	10	Rechargable wireless mouse Betwan Suppliers	2	[{"changed": {"fields": ["Category", "Sub category"]}}]	23	1
229	2025-07-22 11:12:39.909304+03	4	Admin	3		54	1
230	2025-07-22 11:56:53.59133+03	5	supplier	1	[{"added": {}}]	54	1
231	2025-07-22 12:09:05.218783+03	6	buyer	1	[{"added": {}}]	54	1
232	2025-07-22 12:18:42.55223+03	7	test	1	[{"added": {}}]	54	1
233	2025-07-22 12:35:15.428069+03	8	test1	1	[{"added": {}}]	54	1
234	2025-07-22 12:46:01.663212+03	8	test1	3		56	1
235	2025-07-22 13:06:22.591636+03	11	test1	3		56	1
236	2025-07-22 13:10:27.793218+03	12	business	3		56	1
237	2025-07-22 13:11:55.785468+03	13	business	3		56	1
238	2025-07-22 13:15:26.359231+03	14	business	3		56	1
239	2025-07-22 13:26:56.158975+03	15	business	3		56	1
240	2025-07-22 13:29:10.415473+03	16	business	3		56	1
241	2025-07-22 13:31:05.748548+03	17	business	3		56	1
242	2025-07-22 13:32:41.628155+03	19	business	3		56	1
243	2025-07-22 13:40:12.851176+03	20	business	3		56	1
244	2025-07-22 13:47:19.674811+03	21	business	3		56	1
245	2025-07-22 13:55:58.020309+03	22	business	3		56	1
246	2025-07-22 14:02:28.802551+03	23	business	3		56	1
247	2025-07-22 14:10:19.242998+03	24	business	3		56	1
248	2025-07-22 14:13:40.091446+03	25	business	3		56	1
249	2025-07-22 14:17:58.924002+03	26	business	3		56	1
250	2025-07-22 14:28:34.318464+03	27	business	3		56	1
251	2025-07-22 14:42:30.006683+03	28	business	3		56	1
252	2025-07-22 14:43:25.346809+03	29	business	3		56	1
253	2025-07-22 14:44:17.241764+03	30	business	3		56	1
254	2025-07-22 14:49:33.729802+03	31	business	3		56	1
255	2025-07-22 14:55:43.924242+03	32	test1	3		56	1
256	2025-07-22 14:57:58.854198+03	34	test1	3		56	1
257	2025-07-22 15:06:43.320659+03	1	Membership object (1)	1	[{"added": {}}]	45	1
258	2025-07-22 15:11:15.316697+03	35	test1	3		56	1
259	2025-07-22 15:11:32.087835+03	1	Membership object (1)	3		45	1
260	2025-07-22 15:17:38.753743+03	8	test1	2	[{"changed": {"fields": ["Account Type"]}}]	54	1
261	2025-07-22 15:18:34.790213+03	36	test1	3		56	1
262	2025-07-22 15:25:05.606164+03	38	test1	3		56	1
263	2025-07-22 15:26:48.073506+03	39	test1	3		56	1
264	2025-07-22 15:31:52.465658+03	40	test1	3		56	1
265	2025-07-22 15:32:17.219133+03	8	test1	2	[{"changed": {"fields": ["Account Type"]}}]	54	1
266	2025-07-22 15:37:06.173344+03	41	test1	3		56	1
267	2025-07-22 15:40:28.534279+03	42	test1	3		56	1
268	2025-07-22 15:44:09.224866+03	43	test1	3		56	1
269	2025-07-22 15:45:13.113281+03	8	test1	2	[{"changed": {"fields": ["Account Type"]}}]	54	1
270	2025-07-22 15:49:18.77744+03	44	test1	3		56	1
271	2025-07-22 16:16:49.175487+03	57	Hp Elite book 840 G9 Betwan Suppliers	2	[{"changed": {"fields": ["Stock"]}}]	23	1
272	2025-07-22 16:19:52.199816+03	3	Hp Elite book 840 G9 - black	1	[{"added": {}}]	37	1
273	2025-07-22 16:20:47.674966+03	1	Hp Elite book 840 G9 - aluminium	1	[{"added": {}}]	35	1
274	2025-07-22 16:22:28.866751+03	1	cash on delivery	1	[{"added": {}}]	47	1
275	2025-07-22 16:32:33.782753+03	57	Hp Elite book 840 G9 Betwan Suppliers	2	[{"changed": {"fields": ["Currency [ar]", "Currency [fr]", "Currency [de]"]}}]	23	1
276	2025-07-22 16:34:03.751018+03	57	Hp Elite book 840 G9 Betwan Suppliers	2	[]	23	1
277	2025-07-22 16:54:37.876212+03	3	Hp Elite book 840 G9 - ksh	1	[{"added": {}}]	34	1
278	2025-07-22 20:44:00.224195+03	11	FODR25722174113 - Betwan Suppliers - test1 - COMPLETED	3		22	1
279	2025-07-22 20:44:00.237644+03	10	FODR25722173957 - Betwan Suppliers - test1 - COMPLETED	3		22	1
280	2025-07-22 20:44:00.243653+03	9	FODR25722173824 - Betwan Suppliers - test1 - COMPLETED	3		22	1
281	2025-07-22 20:44:00.250094+03	8	FODR25722173522 - Betwan Suppliers - test1 - COMPLETED	3		22	1
282	2025-07-22 20:44:00.256398+03	7	FODR25722173235 - Betwan Suppliers - test1 - COMPLETED	3		22	1
283	2025-07-22 20:44:00.263177+03	6	FODR25722172914 - Betwan Suppliers - test1 - COMPLETED	3		22	1
284	2025-07-22 20:44:00.270727+03	5	FODR25722171620 - Betwan Suppliers - test1 - COMPLETED	3		22	1
285	2025-07-22 20:44:00.277032+03	4	FODR25722171417 - Betwan Suppliers - test1 - COMPLETED	3		22	1
286	2025-07-22 20:44:00.284413+03	3	FODR2572217823 - Betwan Suppliers - test1 - COMPLETED	3		22	1
287	2025-07-22 20:44:00.290971+03	2	FODR2572217357 - Betwan Suppliers - test1 - COMPLETED	3		22	1
288	2025-07-22 20:44:00.30342+03	1	FODR257221739 - Betwan Suppliers - test1 - COMPLETED	3		22	1
289	2025-07-22 22:07:28.772589+03	57	Hp Elite book 840 G9 Betwan Suppliers	2	[{"changed": {"fields": ["Discount as a Percentage"]}}]	23	1
290	2025-07-22 22:14:21.36939+03	18	FODR25722191339 - Betwan Suppliers - test1 - COMPLETED	3		22	1
291	2025-07-22 22:14:21.382609+03	17	FODR2572219759 - Betwan Suppliers - test1 - COMPLETED	3		22	1
292	2025-07-22 22:14:21.390783+03	16	FODR25722185610 - Betwan Suppliers - test1 - COMPLETED	3		22	1
293	2025-07-22 22:14:21.398658+03	15	FODR2572218497 - Betwan Suppliers - test1 - COMPLETED	3		22	1
294	2025-07-22 22:14:21.407442+03	14	FODR25722183012 - Betwan Suppliers - test1 - COMPLETED	3		22	1
295	2025-07-22 22:14:21.414399+03	13	FODR25722181955 - Betwan Suppliers - test1 - COMPLETED	3		22	1
296	2025-07-22 22:14:21.421259+03	12	FODR25722174416 - Betwan Suppliers - test1 - COMPLETED	3		22	1
297	2025-07-22 22:23:13.42279+03	19	FODR25722191446 - Betwan Suppliers - test1 - COMPLETED	3		22	1
298	2025-07-22 22:28:42.473554+03	1	Fargo	1	[{"added": {}}]	21	1
299	2025-07-22 22:29:08.524121+03	20	OrderShippingDetail object (20)	2	[{"changed": {"fields": ["Carrier", "Shipping Address 1", "Shipping Address 1"]}}]	38	1
300	2025-07-22 22:29:29.21116+03	20	FODR25722192329 - Betwan Suppliers - test1 - PENDING	2	[{"changed": {"fields": ["Order Status"]}}]	22	1
301	2025-07-22 22:29:45.561123+03	20	FODR25722192329 - Betwan Suppliers - test1 - PENDING	2	[{"changed": {"fields": ["Order Status"]}}]	22	1
302	2025-07-22 22:30:03.341158+03	20	FODR25722192329 - Betwan Suppliers - test1 - IN DELIVERY	2	[{"changed": {"fields": ["Order Status [en]"]}}]	22	1
303	2025-07-22 22:30:16.35584+03	20	FODR25722192329 - Betwan Suppliers - test1 - VIEWED BY SUPPLER	2	[{"changed": {"fields": ["Order Status [en]"]}}]	22	1
304	2025-07-24 20:15:52.666514+03	3	admin	1	[{"added": {}}]	67	1
305	2025-07-24 20:17:03.312791+03	3	Facebook Login	1	[{"added": {}}]	68	1
306	2025-07-24 20:17:45.645954+03	3	social application token (3)	1	[{"added": {}}]	69	1
307	2025-07-24 20:17:55.106422+03	3	social application token (3)	2	[{"changed": {"fields": ["Token secret"]}}]	69	1
308	2025-07-24 20:30:32.874301+03	3	Hp Elite book 840 G9 - ksh	2	[{"changed": {"fields": ["Min Price", "Max Price"]}}]	34	1
309	2025-07-24 21:14:06.791226+03	8	test1	3		54	1
310	2025-07-24 21:14:06.803247+03	7	test	3		54	1
311	2025-07-24 21:14:20.619281+03	3	Betwan	2	[]	54	1
312	2025-07-24 21:15:06.647936+03	3	AgroTim	2	[{"changed": {"fields": ["Username", "First name", "First name [en]", "Last name", "Last name [en]", "Email address"]}}]	54	1
313	2025-07-24 21:15:46.001772+03	57	Hp Elite book 840 G9 Betwan Suppliers	3		23	1
314	2025-07-24 21:15:46.019899+03	56	🔥🔥🔥HP  Eliteboook 830 G8 Betwan Suppliers	3		23	1
315	2025-07-24 21:15:46.034356+03	55	🔥🔥 HP Dragonfly G2 Betwan Suppliers	3		23	1
316	2025-07-24 21:15:46.049951+03	54	HP DRAGON FLY G3 Betwan Suppliers	3		23	1
317	2025-07-24 21:15:46.064542+03	53	HP RAZOR BLADE 14 Betwan Suppliers	3		23	1
318	2025-07-24 21:15:46.075087+03	52	HP 840 G5 core i5 8th gen Betwan Suppliers	3		23	1
319	2025-07-24 21:15:46.086209+03	51	DELL LATITUDE 7280 Betwan Suppliers	3		23	1
320	2025-07-24 21:15:46.099019+03	50	DELL 3310 Betwan Suppliers	3		23	1
321	2025-07-24 21:15:46.107829+03	49	HP ELITEBOOK 830 G5 Betwan Suppliers	3		23	1
322	2025-07-24 21:15:46.116738+03	48	HP ELITEBOOK 1040 G8 Betwan Suppliers	3		23	1
323	2025-07-24 21:15:46.14177+03	47	*DEll XPS 13 9365 Betwan Suppliers	3		23	1
324	2025-07-24 21:15:46.166101+03	46	HP ELITEBOOK 840 G6 Betwan Suppliers	3		23	1
325	2025-07-24 21:15:46.181892+03	45	HP Elitebook 830 G6/8th Betwan Suppliers	3		23	1
326	2025-07-24 21:15:46.195386+03	44	DELL PRECISION 5530 Betwan Suppliers	3		23	1
327	2025-07-24 21:15:46.205719+03	43	MACBOOK PRO M1 2021 (A2442) Betwan Suppliers	3		23	1
328	2025-07-24 21:15:46.217417+03	42	MACBOOK PRO M1 Betwan Suppliers	3		23	1
329	2025-07-24 21:15:46.242419+03	41	DELL PRECISION 5530 Betwan Suppliers	3		23	1
330	2025-07-24 21:15:46.256707+03	40	Lenovo x1 carbon G7 Betwan Suppliers	3		23	1
331	2025-07-24 21:15:46.268903+03	39	🔥LENOVO THINKPAD X380 YOGA Betwan Suppliers	3		23	1
332	2025-07-24 21:15:46.279621+03	38	LENOVO X1 YOGA G7 Betwan Suppliers	3		23	1
333	2025-07-24 21:15:46.288523+03	37	🔥🔥🔥Lenovo ThinkPad X1 Yoga Betwan Suppliers	3		23	1
334	2025-07-24 21:15:46.299555+03	36	💻 Dell Precision 5550 Betwan Suppliers	3		23	1
335	2025-07-24 21:15:46.308779+03	35	HP VICTUS 16 GAMING Betwan Suppliers	3		23	1
336	2025-07-24 21:15:46.318257+03	34	HP PAVILION AERO Betwan Suppliers	3		23	1
337	2025-07-24 21:15:46.328653+03	33	🔥HP Z Book 14 G7 Firefly Betwan Suppliers	3		23	1
338	2025-07-24 21:15:46.338108+03	32	DELL LATITUDE 7280 Betwan Suppliers	3		23	1
339	2025-07-24 21:15:46.348603+03	31	Dell XPS 15 9500 Betwan Suppliers	3		23	1
340	2025-07-24 21:15:46.369257+03	30	🔥 LENOVO X1 YOGA G7 – Premium Convertible Laptop 🔥 Betwan Suppliers	3		23	1
341	2025-07-24 21:15:46.384671+03	29	LENOVO 460P Betwan Suppliers	3		23	1
342	2025-07-24 21:15:46.396847+03	28	Lenovo thinkpad yoga 11e Betwan Suppliers	3		23	1
343	2025-07-24 21:15:46.407263+03	27	HP 1040 Betwan Suppliers	3		23	1
344	2025-07-24 21:15:46.419652+03	26	🔥🔥🔥 Lenovo T490s Betwan Suppliers	3		23	1
345	2025-07-24 21:15:46.432375+03	25	🔥LENOVO THINKPAD X380 YOGA Betwan Suppliers	3		23	1
346	2025-07-24 21:15:46.443988+03	24	LENOVO X1 YOGA Betwan Suppliers	3		23	1
347	2025-07-24 21:15:46.453423+03	23	Lenovo x1 carbon G7 Betwan Suppliers	3		23	1
348	2025-07-24 21:15:46.465231+03	22	MACBOOK PRO M1 (2338) Betwan Suppliers	3		23	1
349	2025-07-24 21:15:46.475291+03	21	NEW ARRIVALS  MACBOOK PRO M1 Betwan Suppliers	3		23	1
350	2025-07-24 21:15:46.486035+03	20	Samsung Galaxy A56 Betwan Suppliers	3		23	1
351	2025-07-24 21:15:46.496868+03	19	Dell Precision 5520 Betwan Suppliers	3		23	1
352	2025-07-24 21:15:46.50804+03	18	DELL LATITUDE 7390 Betwan Suppliers	3		23	1
353	2025-07-24 21:15:46.51791+03	17	DELL LATITUDE 7280 Betwan Suppliers	3		23	1
354	2025-07-24 21:15:46.532585+03	16	MICROSOFT PRO 5 Betwan Suppliers	3		23	1
355	2025-07-24 21:15:46.548069+03	15	Hp 840G8 Betwan Suppliers	3		23	1
356	2025-07-24 21:15:46.561484+03	14	HP Z Book 14 G7 Firefly Betwan Suppliers	3		23	1
357	2025-07-24 21:15:46.572612+03	13	HP Elitebook 840 g9 Betwan Suppliers	3		23	1
358	2025-07-24 21:15:46.585792+03	12	Laptop Bag Betwan Suppliers	3		23	1
359	2025-07-24 21:15:46.600438+03	11	Beauty Mug Betwan Suppliers	3		23	1
360	2025-07-24 21:15:46.630675+03	10	Rechargable wireless mouse Betwan Suppliers	3		23	1
361	2025-07-24 21:15:46.645732+03	9	HP Victus 16 Gaming Betwan Suppliers	3		23	1
362	2025-07-24 21:15:46.657465+03	8	Hp G3 Betwan Suppliers	3		23	1
363	2025-07-24 21:15:46.668894+03	7	Hp Mini Betwan Suppliers	3		23	1
364	2025-07-24 21:15:46.680842+03	6	i7 11th 3.0ghz (8VPUS) 32GB RAM 512ssd touch Betwan Suppliers	3		23	1
365	2025-07-24 21:15:46.691362+03	5	Hp Omen 16 Betwan Suppliers	3		23	1
366	2025-07-24 21:15:46.702855+03	4	Epison L3210 Betwan Suppliers	3		23	1
367	2025-07-24 21:16:01.768502+03	6	Mouse	3		24	1
368	2025-07-24 21:16:01.78169+03	5	Designer Mugs	3		24	1
369	2025-07-24 21:16:01.785931+03	4	Laptop Bags	3		24	1
370	2025-07-24 21:16:01.790804+03	3	Phones	3		24	1
371	2025-07-24 21:16:01.794795+03	2	Printers	3		24	1
372	2025-07-24 21:16:01.798868+03	1	Laptops	3		24	1
373	2025-07-24 21:18:23.402515+03	7	Vegetables	1	[{"added": {}}]	24	1
374	2025-07-24 21:18:25.419342+03	7	Vegetables	2	[]	24	1
375	2025-07-24 21:18:44.302116+03	8	Fruits	1	[{"added": {}}]	24	1
376	2025-07-24 21:18:45.526689+03	8	Fruits	2	[]	24	1
377	2025-07-24 21:18:57.419207+03	8	Fruits	2	[{"changed": {"fields": ["Image"]}}]	24	1
378	2025-07-24 21:19:24.919596+03	9	Poultry Products	1	[{"added": {}}]	24	1
379	2025-07-24 21:19:49.697689+03	10	Livestock Products	1	[{"added": {}}]	24	1
380	2025-07-24 21:20:15.411246+03	11	Cereals	1	[{"added": {}}]	24	1
381	2025-07-24 21:20:57.828833+03	19	Fresh Vegetables	1	[{"added": {}}]	32	1
382	2025-07-24 21:21:16.308067+03	20	Fresh Fruits	1	[{"added": {}}]	32	1
383	2025-07-24 21:21:48.50967+03	21	Fresh Poultry Products	1	[{"added": {}}]	32	1
384	2025-07-24 21:22:14.453682+03	22	Fresh Livestock Products	1	[{"added": {}}]	32	1
385	2025-07-24 21:22:33.535722+03	23	Bulk Cereals	1	[{"added": {}}]	32	1
386	2025-07-24 21:26:02.931702+03	1	Betwan Suppliers	2	[]	56	1
387	2025-07-24 21:26:51.005366+03	1	AgroTim Suppliers	2	[{"changed": {"fields": ["Business Name", "Business Name [en]", "Safe Url", "Business Description", "Business Description [en]"]}}]	56	1
388	2025-07-24 21:28:32.891501+03	1	AgroTim Suppliers	2	[]	56	1
389	2025-07-24 21:29:54.092471+03	5	test	3		56	1
390	2025-07-24 21:30:39.543356+03	58	Green Spinach AgroTim Suppliers	1	[{"added": {}}]	23	1
391	2025-07-24 21:31:00.217693+03	58	Green Spinach AgroTim Suppliers	2	[]	23	1
392	2025-07-24 21:31:58.948845+03	59	Mangoes AgroTim Suppliers	1	[{"added": {}}]	23	1
393	2025-07-24 21:33:06.924971+03	60	Chicken Meat AgroTim Suppliers	1	[{"added": {}}]	23	1
394	2025-07-24 21:34:14.78168+03	61	Fresh Beef AgroTim Suppliers	1	[{"added": {}}]	23	1
395	2025-07-24 21:35:29.087451+03	62	90kg Maize AgroTim Suppliers	1	[{"added": {}}]	23	1
396	2025-07-24 21:35:58.788284+03	68	90kg Maize	1	[{"added": {}}]	36	1
397	2025-07-24 21:36:06.361049+03	69	Fresh Beef	1	[{"added": {}}]	36	1
398	2025-07-24 21:36:15.777713+03	70	Chicken Meat	1	[{"added": {}}]	36	1
399	2025-07-24 21:36:25.608333+03	71	Mangoes	1	[{"added": {}}]	36	1
400	2025-07-24 21:36:41.985928+03	72	Green Spinach	1	[{"added": {}}]	36	1
401	2025-07-24 21:37:09.553532+03	4	90kg Maize - Ksh	1	[{"added": {}}]	34	1
402	2025-07-24 21:37:28.824706+03	5	Fresh Beef - Ksh	1	[{"added": {}}]	34	1
403	2025-07-24 21:37:43.445418+03	6	Chicken Meat - Ksh	1	[{"added": {}}]	34	1
404	2025-07-24 21:38:03.393661+03	7	Mangoes - Ksh	1	[{"added": {}}]	34	1
405	2025-07-24 21:38:19.410702+03	8	Green Spinach - KSh	1	[{"added": {}}]	34	1
406	2025-07-24 21:39:37.291616+03	4	Promotion object (4)	2	[{"changed": {"fields": ["Name", "Name [en]", "Description", "Description [en]", "Image", "Safe Url"]}}]	14	1
407	2025-07-24 21:40:13.803174+03	3	Promotion object (3)	2	[{"changed": {"fields": ["Name", "Name [en]", "Description", "Description [en]", "Image", "Safe Url"]}}]	14	1
408	2025-07-24 21:40:42.534429+03	2	Promotion object (2)	2	[{"changed": {"fields": ["Name", "Name [en]", "Description", "Description [en]", "Image", "Safe Url"]}}]	14	1
409	2025-07-24 21:41:35.886247+03	5	Promotion object (5)	1	[{"added": {}}]	14	1
410	2025-07-24 21:42:25.524166+03	2	AgroTim ShowRoom	2	[{"changed": {"fields": ["Name", "Name [en]", "Image", "Safe Url"]}}]	12	1
411	2025-07-24 21:45:22.280336+03	1	AgroTim Suppliers	2	[]	56	1
412	2025-07-24 21:47:06.276589+03	3	AgroTim	2	[{"changed": {"fields": ["Image"]}}]	58	1
413	2025-07-24 21:48:37.85874+03	4	AgroTim Suppliers	2	[{"changed": {"fields": ["Store Name", "Store Name [en]", "Safe Url", "Service Image"]}}]	27	1
414	2025-07-24 21:49:44.021493+03	5	Promotion object (5)	2	[{"changed": {"fields": ["Image"]}}]	14	1
415	2025-07-24 21:53:09.979328+03	46	sdads	1	[{"added": {}}]	56	1
416	2025-07-24 21:54:16.045127+03	46	Admin Business	2	[{"changed": {"fields": ["Business Name", "Business Name [en]", "Safe Url", "Business Description", "Business Description [en]", "Country", "Country [en]", "Country Code", "Country Code [en]", "City", "City [en]", "Number", "Number [en]"]}}]	56	1
417	2025-07-24 21:55:51.969379+03	1	AgroTim Farmers Consultancy	2	[{"changed": {"fields": ["Name", "Name [en]", "Description", "Description [en]", "Price", "Price [en]", "Number of contracts", "Safe Url"]}}]	25	1
418	2025-07-24 21:56:31.798753+03	1	AgroTim Farmers Consultancy	2	[]	25	1
419	2025-07-24 21:57:38.620113+03	1	AgroTim Farmers  Consultancy	2	[{"changed": {"fields": ["Name", "Name [en]", "Description", "Description [en]", "Safe Url"]}}]	10	1
420	2025-07-24 22:27:48.507829+03	1	admin	2	[{"changed": {"fields": ["Account Type"]}}]	54	1
421	2025-07-24 22:30:51.448065+03	21	OrderShippingDetail object (21)	2	[{"changed": {"fields": ["Carrier", "Shipping Address 1", "Shipping Address 1"]}}]	38	1
422	2025-07-24 22:31:18.140837+03	21	FODR25724173352 - AgroTim Suppliers - buyer - PENDING	2	[{"changed": {"fields": ["Order Status"]}}]	22	1
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: django_agriculture_user
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
70	payment	transaction
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: django_agriculture_user
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2025-06-19 20:15:25.345141+03
2	contenttypes	0002_remove_content_type_name	2025-06-19 20:15:25.354114+03
3	auth	0001_initial	2025-06-19 20:15:25.395007+03
4	auth	0002_alter_permission_name_max_length	2025-06-19 20:15:25.401226+03
5	auth	0003_alter_user_email_max_length	2025-06-19 20:15:25.408629+03
6	auth	0004_alter_user_username_opts	2025-06-19 20:15:25.415697+03
7	auth	0005_alter_user_last_login_null	2025-06-19 20:15:25.422422+03
8	auth	0006_require_contenttypes_0002	2025-06-19 20:15:25.424843+03
9	auth	0007_alter_validators_add_error_messages	2025-06-19 20:15:25.434668+03
10	auth	0008_alter_user_username_max_length	2025-06-19 20:15:25.442174+03
11	auth	0009_alter_user_last_name_max_length	2025-06-19 20:15:25.449044+03
12	auth	0010_alter_group_name_max_length	2025-06-19 20:15:25.45689+03
13	auth	0011_update_proxy_permissions	2025-06-19 20:15:25.464048+03
14	auth	0012_alter_user_first_name_max_length	2025-06-19 20:15:25.471405+03
15	auth_app	0001_initial	2025-06-19 20:15:25.562847+03
16	account	0001_initial	2025-06-19 20:15:25.60873+03
17	account	0002_email_max_length	2025-06-19 20:15:25.624109+03
18	account	0003_alter_emailaddress_create_unique_verified_email	2025-06-19 20:15:25.655799+03
19	account	0004_alter_emailaddress_drop_unique_email	2025-06-19 20:15:25.675067+03
20	account	0005_emailaddress_idx_upper_email	2025-06-19 20:15:25.693004+03
21	account	0006_emailaddress_lower	2025-06-19 20:15:25.710943+03
22	account	0007_emailaddress_idx_email	2025-06-19 20:15:25.878156+03
23	account	0008_emailaddress_unique_primary_email_fixup	2025-06-19 20:15:25.893042+03
24	account	0009_emailaddress_unique_primary_email	2025-06-19 20:15:25.910591+03
25	admin	0001_initial	2025-06-19 20:15:25.935686+03
26	admin	0002_logentry_remove_auto_add	2025-06-19 20:15:25.947817+03
27	admin	0003_logentry_add_action_flag_choices	2025-06-19 20:15:25.960181+03
28	buyer	0001_initial	2025-06-19 20:15:25.983873+03
29	supplier	0001_initial	2025-06-19 20:15:26.726168+03
30	coms	0001_initial	2025-06-19 20:15:26.914989+03
31	coms	0002_alter_groupchat_options_and_more	2025-06-19 20:15:27.116507+03
32	manager	0001_initial	2025-06-19 20:15:27.658864+03
33	payment	0001_initial	2025-06-19 20:15:28.193881+03
34	sessions	0001_initial	2025-06-19 20:15:28.204806+03
35	sites	0001_initial	2025-06-19 20:15:28.210462+03
36	sites	0002_alter_domain_unique	2025-06-19 20:15:28.21878+03
37	socialaccount	0001_initial	2025-06-19 20:15:28.545599+03
38	socialaccount	0002_token_max_lengths	2025-06-19 20:15:28.578401+03
39	socialaccount	0003_extra_data_default_dict	2025-06-19 20:15:28.597117+03
40	socialaccount	0004_app_provider_id_settings	2025-06-19 20:15:28.626256+03
41	socialaccount	0005_socialtoken_nullable_app	2025-06-19 20:15:28.669842+03
42	socialaccount	0006_alter_socialaccount_extra_data	2025-06-19 20:15:28.694805+03
43	supplier	0002_alter_order_is_complete_alter_product_is_verified_and_more	2025-06-19 20:15:28.769454+03
44	payment	0002_transaction	2025-07-24 20:12:14.909787+03
45	payment	0003_alter_transaction_checkout_id_and_more	2025-07-24 20:12:14.947456+03
46	supplier	0003_alter_order_is_complete	2025-07-24 20:12:14.975143+03
47	supplier	0004_order_payment	2025-07-24 20:12:15.124351+03
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: django_agriculture_user
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
nbj6yh7a6f194nxdnqqw2huh91ee6sct	.eJxVjEEOwiAQRe_C2hAKFMGl-56BDDODVA0kpV0Z765NutDtf-_9l4iwrSVunZc4k7iIQZx-twT44LoDukO9NYmtrsuc5K7Ig3Y5NeLn9XD_Dgr08q3dWVPWQ_BJhZxRG7IZTDacSDlI3mhHHtGOHJQaM3KwTqXgMXiy1ijx_gD0sDgQ:1uSJ4v:pr23PDODMcAMUVwrB4t75L8x2cMD2A-eL0mC1FxPQLU	2025-07-03 20:29:33.252577+03
hlaqtqz0y649u8vbadnjn0mbf5pyq2z4	.eJytzUELgjAYgOH_8p2HbMyleQ2yS9GhggqRMT9ltPxkmx4S_3tCf6HbC8_hnSGQsdppY2jsYx2ijhigmEHuH7ubJHemaxQ6zaF4zjB4MhhWB0ed7YFBo6OGoh-dYzC8DNaGGqwn9La16H-yMJEpngrBZZ5sM6mkyisG06E9xQ9eju9w70Lp_3EQKU_Uhq-ZVcvyBcmVSTk:1uSXtk:HYK5IIm_qvBDTEemwC6gV1pkzDSKIKBEsqwNkLDkvog	2025-07-04 12:19:00.56052+03
akjzfv520uqo71mt7fwtll9hs6lu2bv5	.eJytjrtugzAUht_FM0LY-AZbk96WTFUrVVWE7MMBHJAdYdOhEe9eomZo967_998upDFLGpol4ty4ltSEkuy3Zg2M6K-gPRnfhxyCT7Oz-dWS32jMD6HFaXfz_ikYTBy2tKRYtlwbrRSTGlAyZmSnAJi0tjBUcgBAZIx3slBCdLrkUDGgoqhUaflWGgM4MxmAsPjUxGQSRlJfyPnuBR5s7_Aknu6nVyD1xybOATBunEyhd36LtyYZUvtlmjJyHgEb2D43nzi7zuH8Q9aMKlFwSguhc1lWBaX8mJHnw778mkf9mLzadW_v_7FAK51ryrXg8riu3-yIf5s:1uSXug:8wZEEaNBmUYnEvdIyMuT39HHb3q3tECMPrrCwFIZzNk	2025-07-04 12:19:58.815633+03
tbuqx69factwns5q2bman5snp0f6n94m	.eJwlycsKAiEUANB_uWsJbbSH--gDZjFQhMidW0iips5EiP9e0NmeBiWis94ixiVUU6qtVEA3uIyf0_F1XtNW5uk9TqCvDVKOSOX34OPDBWAw22pBh8V7BumJZDDOZFbK7u4o_6czsVdcCjGoYXOQfCe4uvX-BcUCKeA:1uSXxB:Y-vPwe8tjHj-j929lyVIYE4ulMVxOIKm8CPuCasfZjA	2025-07-04 12:22:33.842534+03
bcsa0u8gwk7yyptbxkshkiv3rb8919lu	.eJxVjEEOwiAQRe_C2pAy0IG6dO8ZyDBMbdVAUtqV8e7apAvd_vfef6lI2zrFrckS56zOyqjT75aIH1J2kO9UblVzLesyJ70r-qBNX2uW5-Vw_w4matO3RiM2u0DBe8DAggCEo2cGTKkjg46ZRQDciJ3v-zFYxwOw6bvB2-TU-wPcxTd0:1uSfNj:PQG494SGx_aK-RG3tRLKdt5J6bSVNAxqGlW6lFg6Bpg	2025-07-04 20:18:27.774591+03
fs8omdevktxaksduk2xeu3pu4rbns86t	.eJxVjEEOwiAQRe_C2pAy0IG6dO8ZyDBMbdVAUtqV8e7apAvd_vfef6lI2zrFrckS56zOyqjT75aIH1J2kO9UblVzLesyJ70r-qBNX2uW5-Vw_w4matO3RiM2u0DBe8DAggCEo2cGTKkjg46ZRQDciJ3v-zFYxwOw6bvB2-TU-wPcxTd0:1uSgfs:LGXeCVAZHM0n45h9XIB2aLn3FAdejlJkWf5CzFG0m98	2025-07-04 21:41:16.18468+03
mntkptzuitljae4cb9z47i5ms95lhs85	.eJxVjEEOwiAQRe_C2pAy0IG6dO8ZyDBMbdVAUtqV8e7apAvd_vfef6lI2zrFrckS56zOyqjT75aIH1J2kO9UblVzLesyJ70r-qBNX2uW5-Vw_w4matO3RiM2u0DBe8DAggCEo2cGTKkjg46ZRQDciJ3v-zFYxwOw6bvB2-TU-wPcxTd0:1uTkrx:I7oYqh1uBvEGZrrSB6N726CExgG2W8Ug-wTOrjVu1cU	2025-07-07 20:22:09.66747+03
fxd54rr9up62qg74ouhij2jkhvb8ehcl	.eJxVjMEOwiAQRP-FsyEuBbZ49O43kAUWqRpISnsy_rtt0oMe5jLvzbyFp3Upfu08-ymJiwBx-u0CxSfXHaQH1XuTsdVlnoLcFXnQLm8t8et6uH8HhXrZ1krD4IhJQU5jUpQNag05bFHOOLQqodNsrRkBHTtrECHSoLXlcI4kPl_K3zco:1uTz7N:ZgI5cxMi-B6YUxbW5JmicdUzkkWBuo6UxdLw9QmcT3Q	2025-07-08 11:35:01.983131+03
u5lq30zs2urij9jh2rfepdibgszykx1t	.eJxVjEEOwiAQRe_C2hAKFMGl-56BDDODVA0kpV0Z765NutDtf-_9l4iwrSVunZc4k7iIQZx-twT44LoDukO9NYmtrsuc5K7Ig3Y5NeLn9XD_Dgr08q3dWVPWQ_BJhZxRG7IZTDacSDlI3mhHHtGOHJQaM3KwTqXgMXiy1ijx_gD0sDgQ:1uU2xt:mBNontMtp4txTAzzwQoZFiNUp_C0NSyNkrw3xQbMGzs	2025-07-08 15:41:29.858815+03
78g3d1g77oy3dcqqssap03mzxsl4exsw	.eJxVjEEOwiAQRe_C2hAKFMGl-56BDDODVA0kpV0Z765NutDtf-_9l4iwrSVunZc4k7iIQZx-twT44LoDukO9NYmtrsuc5K7Ig3Y5NeLn9XD_Dgr08q3dWVPWQ_BJhZxRG7IZTDacSDlI3mhHHtGOHJQaM3KwTqXgMXiy1ijx_gD0sDgQ:1uU3bZ:QBfOk0yMkLheLU356Ecs8-RNDDCzN2VmU4Y1fdgnj-0	2025-07-08 16:22:29.792997+03
x3slf5ipzzyom8enrt9xfp2nekyg06e8	.eJxVjEEOwiAQRe_C2hAKFMGl-56BDDODVA0kpV0Z765NutDtf-_9l4iwrSVunZc4k7iIQZx-twT44LoDukO9NYmtrsuc5K7Ig3Y5NeLn9XD_Dgr08q3dWVPWQ_BJhZxRG7IZTDacSDlI3mhHHtGOHJQaM3KwTqXgMXiy1ijx_gD0sDgQ:1uV5gw:Qf6Zu5xmuPPET0u68JjzKR8YOGjo_Mb0BgoXw18zbFo	2025-07-11 12:48:18.13817+03
d9n7flha01u267s17y5av9mu7vn6z3k0	.eJxVjEEOwiAQRe_C2hAKFMGl-56BDDODVA0kpV0Z765NutDtf-_9l4iwrSVunZc4k7iIQZx-twT44LoDukO9NYmtrsuc5K7Ig3Y5NeLn9XD_Dgr08q3dWVPWQ_BJhZxRG7IZTDacSDlI3mhHHtGOHJQaM3KwTqXgMXiy1ijx_gD0sDgQ:1uV5xv:PFNnhYVQ8XuuF0qu-yqk4zjspO5mFOdTq4aR_ZU8gvo	2025-07-11 13:05:51.727345+03
zly3twnnmxo4hkoy2h0pobc0o1d4qidt	.eJxVjDsOwjAQBe_iGlleR7bXlPScIdofJIASKZ8q4u4QKQW0b2be5lpal65dZ5vaXt3ZgTv9bkzytGEH-qDhPnoZh2Xq2e-KP-jsr6Pa63K4fwcdzd23xhxLg7kyxspFBbBBw6rMKZYEcpPEUqlkUg0hlKzRkAJYEYBk4N4f0i03rQ:1uWCLh:COkh1TxAWi8Qv8hwnEWMHmvqvk0RspuOKAnmUI_tsIw	2025-07-14 14:06:57.224069+03
r134ksc1zcysyj3m9ibo3083dylw5wnb	.eJxVjEEOwiAQRe_C2hAKFMGl-56BDDODVA0kpV0Z765NutDtf-_9l4iwrSVunZc4k7iIQZx-twT44LoDukO9NYmtrsuc5K7Ig3Y5NeLn9XD_Dgr08q3dWVPWQ_BJhZxRG7IZTDacSDlI3mhHHtGOHJQaM3KwTqXgMXiy1ijx_gD0sDgQ:1ue86p:S_JDtrEkHuz9wH-KEhdsHLxBmtd-smQ2uVYlCUOr0NE	2025-08-05 11:12:23.546376+03
pyeniew5xpd496ylrpm9slx4iap1p4n8	.eJxVjMsOwiAQRf-FtSGUUgZcuvcbyDAzSNWUpI-V8d-1SRe6veec-1IJt7WmbZE5jazOCtTpd8tID5l2wHecbk1Tm9Z5zHpX9EEXfW0sz8vh_h1UXOq3FgMBLVHBXKzhzlNkS6ZE4NgLADoXY-8K9M50hT2Ry8EPgSzLIHFQ7w8AHThO:1ue9Do:b7TyDp4WkoKk9CjWrCGSPuM6lVfeDmb5Bz6u5qAtsT0	2025-08-05 12:23:40.976601+03
49u4o8o9zokq6pg77y697z7yjwasevhb	.eJxVjMsOwiAQRf-FtSFAebp07zeQgRmkaiAp7cr479qkC93ec859sQjbWuM2aIkzsjOT7PS7JcgPajvAO7Rb57m3dZkT3xV-0MGvHel5Ody_gwqjfmsrvLZWGoNm0t4XJYpWxhM6Z3KhZEsAJF2SMw5UEpgmqUIgrXz2ABN7fwDHhje3:1ue9ON:yQb-_F133QCkRphb6_G6cBDT7Gp7SdLIBtYV5U2dBlI	2025-08-05 12:34:35.409157+03
f1x4fda9kv3v8487tv65s3xg55n5vkdh	.eJxVjEsOwiAUAO_C2hAKr3xcuu8ZyAMeUjWQlHZlvLsh6UK3M5N5M4_HXvzRafNrYldm2eWXBYxPqkOkB9Z747HVfVsDHwk_bedLS_S6ne3foGAvYwt20mp2xqALWciIWmLSGYy04ChHmilniFpA0Mrp7GSckpISRCAwgn2-2Hc3iw:1ue9PJ:yDXCK5vLPjuYEdJQrvYbxVDIQ1yiSOCvphoDUJ6yTHs	2025-08-05 12:35:33.779471+03
s02oddtam1orklx1tfwg87bkdm0jowfx	.eJxVjEsOwiAUAO_C2hAKr3xcuu8ZyAMeUjWQlHZlvLsh6UK3M5N5M4_HXvzRafNrYldm2eWXBYxPqkOkB9Z747HVfVsDHwk_bedLS_S6ne3foGAvYwt20mp2xqALWciIWmLSGYy04ChHmilniFpA0Mrp7GSckpISRCAwgn2-2Hc3iw:1ueA25:mYkg_w5EkOFIYabJjmUI9iXRjFZlODuWJ_jHTnwsLtE	2025-08-05 13:15:37.350878+03
j3fqscuects0unmg61rvr02pio0x0wwj	.eJxVjEsOwiAUAO_C2hAKr3xcuu8ZyAMeUjWQlHZlvLsh6UK3M5N5M4_HXvzRafNrYldm2eWXBYxPqkOkB9Z747HVfVsDHwk_bedLS_S6ne3foGAvYwt20mp2xqALWciIWmLSGYy04ChHmilniFpA0Mrp7GSckpISRCAwgn2-2Hc3iw:1ueAFL:3Bqva-C8-LMeAxHtz26wJz3l5VUOWSgmvEK0VmDqanc	2025-08-05 13:29:19.395726+03
m1mynbrhrslnkwyhrwyzodhr5irhobv7	.eJxVjEsOwiAUAO_C2hAKr3xcuu8ZyAMeUjWQlHZlvLsh6UK3M5N5M4_HXvzRafNrYldm2eWXBYxPqkOkB9Z747HVfVsDHwk_bedLS_S6ne3foGAvYwt20mp2xqALWciIWmLSGYy04ChHmilniFpA0Mrp7GSckpISRCAwgn2-2Hc3iw:1ueBVI:w772fDYwTuWQIaTshLcHvK0OfOCIYbBP7vWzIE6XKpg	2025-08-05 14:49:52.035197+03
yhoglcxbb44bu45r0nz4qvaescjrl7yk	.eJxVjEEOwiAQRe_C2hCkMAWX7nsGMgyMVA0kpV0Z765NutDtf-_9lwi4rSVsPS9hTuIinDj9bhHpkesO0h3rrUlqdV3mKHdFHrTLqaX8vB7u30HBXr41WAINCsCQHQ0bz4PRiC77zPpsR6aobEycEEhnisSkBkbQg1MOohfvD-dpOG8:1ueDsl:k9xqpjFTs2Wr8TnFogeT7-AFRUU34c3srYKC_HNlvG0	2025-08-05 17:22:15.864624+03
fglrmkfgndcfdxl8dlvb1h27l192ln95	.eJxVjEEOwiAQRe_C2hCkMAWX7nsGMgyMVA0kpV0Z765NutDtf-_9lwi4rSVsPS9hTuIinDj9bhHpkesO0h3rrUlqdV3mKHdFHrTLqaX8vB7u30HBXr41WAINCsCQHQ0bz4PRiC77zPpsR6aobEycEEhnisSkBkbQg1MOohfvD-dpOG8:1ueDvF:MQbATqZ7fEG42bOuBU9tgX1jVTUd7GmlY-gM7_iQzWM	2025-08-05 17:24:49.91783+03
n68hyij5sed7u6c2z2tij3jyqv473u0w	.eJxVjEEOwiAQRe_C2hCkMAWX7nsGMgyMVA0kpV0Z765NutDtf-_9lwi4rSVsPS9hTuIinDj9bhHpkesO0h3rrUlqdV3mKHdFHrTLqaX8vB7u30HBXr41WAINCsCQHQ0bz4PRiC77zPpsR6aobEycEEhnisSkBkbQg1MOohfvD-dpOG8:1ueEuG:6zsHKYQdjKQXkJQq0P_NBDcnJJ1JCHAYg57dQG6L0zw	2025-08-05 18:27:52.889197+03
8x31qy6trhirxb5vpvt88rj3rbp5tn8u	.eJxVjEEOwiAQRe_C2hCkMAWX7nsGMgyMVA0kpV0Z765NutDtf-_9lwi4rSVsPS9hTuIinDj9bhHpkesO0h3rrUlqdV3mKHdFHrTLqaX8vB7u30HBXr41WAINCsCQHQ0bz4PRiC77zPpsR6aobEycEEhnisSkBkbQg1MOohfvD-dpOG8:1ueFQf:oBQ3SYpT9bBxTbCywNkX8oRkyIA2pzlH5Ra0i63mykc	2025-08-05 19:01:21.310129+03
wkynpeq9mb7an3ef3fp7htftpbnsbmb5	.eJxVjEEOwiAQRe_C2hCkMAWX7nsGMgyMVA0kpV0Z765NutDtf-_9lwi4rSVsPS9hTuIinDj9bhHpkesO0h3rrUlqdV3mKHdFHrTLqaX8vB7u30HBXr41WAINCsCQHQ0bz4PRiC77zPpsR6aobEycEEhnisSkBkbQg1MOohfvD-dpOG8:1ueFa3:dfaU0THSQuw0Frwx2l3sngLVzmNtdYbcW924Jn55_ow	2025-08-05 19:11:03.284875+03
7b7lpfithopx3ojdqmim8yuugbybmw8p	.eJxVjEEOwiAQRe_C2hCkMAWX7nsGMgyMVA0kpV0Z765NutDtf-_9lwi4rSVsPS9hTuIinDj9bhHpkesO0h3rrUlqdV3mKHdFHrTLqaX8vB7u30HBXr41WAINCsCQHQ0bz4PRiC77zPpsR6aobEycEEhnisSkBkbQg1MOohfvD-dpOG8:1ueFdI:4-Proin5akSomhxh2JZDdu2qXSuCUC7Gb8_k24xcJ5A	2025-08-05 19:14:24.859827+03
4memaie89ek18h8ebhl6kmsifz7jv8z8	.eJxVjEEOwiAQRe_C2hCkMAWX7nsGMgyMVA0kpV0Z765NutDtf-_9lwi4rSVsPS9hTuIinDj9bhHpkesO0h3rrUlqdV3mKHdFHrTLqaX8vB7u30HBXr41WAINCsCQHQ0bz4PRiC77zPpsR6aobEycEEhnisSkBkbQg1MOohfvD-dpOG8:1ueFeP:yAjxofq8MLti9YIKUW2Jme2uUbDANXCp2wkE1M_vK7U	2025-08-05 19:15:33.752085+03
44e96z6cf00ilkzsf3ecdkzjplaody74	.eJxVjEEOwiAQRe_C2hCkMAWX7nsGMgyMVA0kpV0Z765NutDtf-_9lwi4rSVsPS9hTuIinDj9bhHpkesO0h3rrUlqdV3mKHdFHrTLqaX8vB7u30HBXr41WAINCsCQHQ0bz4PRiC77zPpsR6aobEycEEhnisSkBkbQg1MOohfvD-dpOG8:1ueFf2:4NQCBXp5mi_qaMvmX4y-wJMM8hnIHb5CAXXqm8t3Bl8	2025-08-05 19:16:12.700704+03
744cf9wixhtrw9t9yo1x2h9bvwkdg688	.eJxVjEEOwiAQRe_C2hCkMAWX7nsGMgyMVA0kpV0Z765NutDtf-_9lwi4rSVsPS9hTuIinDj9bhHpkesO0h3rrUlqdV3mKHdFHrTLqaX8vB7u30HBXr41WAINCsCQHQ0bz4PRiC77zPpsR6aobEycEEhnisSkBkbQg1MOohfvD-dpOG8:1ueFhF:LJiGIjo2YRrd3gytdxvuN-fzmIg22rPKcvSxON6lRzQ	2025-08-05 19:18:29.003887+03
igg9jqa0bgh965ko0jm4k80fh6eybx5k	.eJxVjEEOwiAQRe_C2hCkMAWX7nsGMgyMVA0kpV0Z765NutDtf-_9lwi4rSVsPS9hTuIinDj9bhHpkesO0h3rrUlqdV3mKHdFHrTLqaX8vB7u30HBXr41WAINCsCQHQ0bz4PRiC77zPpsR6aobEycEEhnisSkBkbQg1MOohfvD-dpOG8:1ueFjZ:_UrHjSZ-yhJ8anOH5BoX0dX1d8oBR7sS0QZehzB62IE	2025-08-05 19:20:53.588438+03
1mtsdo5czjn0oj50rdraqvu0k94f4z38	.eJxVjEEOwiAQRe_C2hCkMAWX7nsGMgyMVA0kpV0Z765NutDtf-_9lwi4rSVsPS9hTuIinDj9bhHpkesO0h3rrUlqdV3mKHdFHrTLqaX8vB7u30HBXr41WAINCsCQHQ0bz4PRiC77zPpsR6aobEycEEhnisSkBkbQg1MOohfvD-dpOG8:1ueFt4:EnBvARVFmZ0mRRccqimXx8AXQ_CwedSykI-a0Ne2wGQ	2025-08-05 19:30:42.123236+03
2g02sr9pvvfemniur7v8ydfan6s0bj58	.eJxVjEEOwiAQRe_C2hCkMAWX7nsGMgyMVA0kpV0Z765NutDtf-_9lwi4rSVsPS9hTuIinDj9bhHpkesO0h3rrUlqdV3mKHdFHrTLqaX8vB7u30HBXr41WAINCsCQHQ0bz4PRiC77zPpsR6aobEycEEhnisSkBkbQg1MOohfvD-dpOG8:1ueFuD:85UE4BJjogxAUbvBqvFn6MWj1Wn46w2Ab1Vcz7gyozA	2025-08-05 19:31:53.485617+03
9okwioq6v37v96od33fyrjfvm2ksfenx	.eJxVjEEOwiAQRe_C2hCkMAWX7nsGMgyMVA0kpV0Z765NutDtf-_9lwi4rSVsPS9hTuIinDj9bhHpkesO0h3rrUlqdV3mKHdFHrTLqaX8vB7u30HBXr41WAINCsCQHQ0bz4PRiC77zPpsR6aobEycEEhnisSkBkbQg1MOohfvD-dpOG8:1ueFzC:0TLHDMAsjtgje6uDaXlhoSzhjx7c_31G4r6nhqIk_78	2025-08-05 19:37:02.259962+03
tin7mjdis36on99e5y30fdtalkv3ikzp	.eJxVjDEOgzAMAP-SuYqSYGLo2J03INtxCm0VJAJT1b9XSAztene6txlp36Zxr7qOczJX05nLL2OSp5ZDpAeV-2JlKds6sz0Se9pqhyXp63a2f4OJ6nRsOThoXCuuB8mEPnBI0ICE1Ih6jTH5ll0GzCCdImJse4zsgTCQsvl8AdPrN58:1ueG8W:ld11xzIrAGombIjWiPV6gNjApEguOMWdiFqP49100gA	2025-08-05 19:46:40.675617+03
hydmyo4on2tv59oxdigz8lp2ivsk53dm	.eJxVjMsOwiAQRf-FtSGMPAou3fcbyDAMUjU0Ke3K-O_apAvd3nPOfYmI21rj1nmJUxYXAeL0uyWkB7cd5Du22yxpbusyJbkr8qBdjnPm5_Vw_w4q9vqttUqKi85E3oOGwGzQhQznYo2zBAV8SsZ7hVkNDkBTIizaWAgwELF4fwDk_Dfx:1ueGPv:KTovqZCg2xh49S710Pj7O3NS5rYzpJv9zFDtR-7X390	2025-08-05 20:04:39.346966+03
v21wck8w8rwgwvymjtkquu7le1lwx3nt	.eJxVjEEOwiAQRe_C2hCgzLS4dO8ZCAODVA0kpV0Z765NutDtf-_9l_BhW4vfOi9-TuIsQJx-NwrxwXUH6R7qrcnY6rrMJHdFHrTLa0v8vBzu30EJvXxrp3GYCACMUdEZSowma4WQUQWEQWUXeUTN6AiJbMQRI9rBap4SkBbvD74yNxw:1uezr0:aFtx8Qxs0-3f0e9Hf5kFjrtiBBvPPyQ-lSHGs6ha0U4	2025-08-07 20:35:38.38469+03
eq6d6xa9kgya6b7wgzy8px0ji10xzk6t	.eJxVjMsOwiAQRf-FtSGMPAou3fcbyDAMUjU0Ke3K-O_apAvd3nPOfYmI21rj1nmJUxYXAeL0uyWkB7cd5Du22yxpbusyJbkr8qBdjnPm5_Vw_w4q9vqttUqKi85E3oOGwGzQhQznYo2zBAV8SsZ7hVkNDkBTIizaWAgwELF4fwDk_Dfx:1uf1bM:UzpQDTKVExuWOW3SAgAMJz527RtJZnjvbHph0_A9Ljc	2025-08-07 22:27:36.378348+03
\.


--
-- Data for Name: django_site; Type: TABLE DATA; Schema: public; Owner: django_agriculture_user
--

COPY public.django_site (id, domain, name) FROM stdin;
2	demo.nairobiskates.com	HybridNairobiSkates
\.


--
-- Data for Name: manager_advert; Type: TABLE DATA; Schema: public; Owner: django_agriculture_user
--

COPY public.manager_advert (id, start_date, end_date, amount, payment_made, expired, created_on, slug, is_active, location_id, product_id) FROM stdin;
\.


--
-- Data for Name: manager_advertisinglocation; Type: TABLE DATA; Schema: public; Owner: django_agriculture_user
--

COPY public.manager_advertisinglocation (id, name, name_ar, name_fr, name_de, name_en, price, showroom_id) FROM stdin;
\.


--
-- Data for Name: manager_calenderevent; Type: TABLE DATA; Schema: public; Owner: django_agriculture_user
--

COPY public.manager_calenderevent (id, title, description, start, "end", created_on, business_id) FROM stdin;
\.


--
-- Data for Name: manager_discussion; Type: TABLE DATA; Schema: public; Owner: django_agriculture_user
--

COPY public.manager_discussion (id, subject, subject_ar, subject_fr, subject_de, subject_en, description, description_ar, description_fr, description_de, description_en, slug, is_verified, created_on, user_id) FROM stdin;
\.


--
-- Data for Name: manager_discussionreply; Type: TABLE DATA; Schema: public; Owner: django_agriculture_user
--

COPY public.manager_discussionreply (id, description, description_ar, description_fr, description_de, description_en, created_on, discussion_id, user_id) FROM stdin;
\.


--
-- Data for Name: manager_emailpromotion; Type: TABLE DATA; Schema: public; Owner: django_agriculture_user
--

COPY public.manager_emailpromotion (id, subject, subject_ar, subject_fr, subject_de, subject_en, description, description_ar, description_fr, description_de, description_en, image, target, created_on, slug, has_image, showroom_id) FROM stdin;
\.


--
-- Data for Name: manager_location; Type: TABLE DATA; Schema: public; Owner: django_agriculture_user
--

COPY public.manager_location (id, name, created_on, slug) FROM stdin;
\.


--
-- Data for Name: manager_notification; Type: TABLE DATA; Schema: public; Owner: django_agriculture_user
--

COPY public.manager_notification (id, title, category, description, viewed, created_on, target_id) FROM stdin;
\.


--
-- Data for Name: manager_promotion; Type: TABLE DATA; Schema: public; Owner: django_agriculture_user
--

COPY public.manager_promotion (id, name, name_ar, name_fr, name_de, name_en, description, description_ar, description_fr, description_de, description_en, image, type, created_on, slug, has_image, showroom_id) FROM stdin;
4	Fruits Offers	\N	\N	\N	Fruits Offers	Fruits Offers	\N	\N	\N	Fruits Offers	Promotion/images/fruits-offers-6d58e0f5-70bc-4363-b6d1-af41e21a488f-f6f699cc-5566-4688-_ywgfAXB.jpeg	BANNER	2025-06-24	fruits-offers-6d58e0f5-70bc-4363-b6d1-af41e21a488f	t	2
3	Vegetables Offers	\N	\N	\N	Vegetables Offers	Vegetables Offers	\N	\N	\N	Vegetables Offers	Promotion/images/vegetables-offers-1f6cb73e-0d8b-41e2-a459-8f5e7770-7f95db41-cecf-4eae-_DEXRJw4.jpeg	BANNER	2025-06-24	vegetables-offers-1f6cb73e-0d8b-41e2-a459-8f5e7770	t	2
2	Chicken Offers	\N	\N	\N	Chicken Offers	Chicken Offers	\N	\N	\N	Chicken Offers	Promotion/images/chicken-offers-f6678685-49e5-49dd-bcbb-ed9ca55035a-8d6e1235-1678-4b31-_yqTI270.jpeg	BANNER	2025-06-24	chicken-offers-f6678685-49e5-49dd-bcbb-ed9ca55035a	t	2
5	Groceries Offer	\N	\N	\N	Groceries Offer	Groceries Offer	\N	\N	\N	Groceries Offer	Promotion/images/groceries-offer-5829a1b7-fab4-4cfe-9491-1dc8839cae-fea6f411-4517-48f9-_26kDuwp.jpeg	BANNER	2025-07-24	groceries-offer-5829a1b7-fab4-4cfe-9491-1dc8839cae	t	2
\.


--
-- Data for Name: manager_sentemail; Type: TABLE DATA; Schema: public; Owner: django_agriculture_user
--

COPY public.manager_sentemail (id, recipient, subject, sending_email, content, reply_to, created_on) FROM stdin;
\.


--
-- Data for Name: manager_service; Type: TABLE DATA; Schema: public; Owner: django_agriculture_user
--

COPY public.manager_service (id, name, name_ar, name_fr, name_de, name_en, description, description_ar, description_fr, description_de, description_en, slug, created_on) FROM stdin;
1	AgroTim Farmers  Consultancy	\N	\N	\N	AgroTim Farmers  Consultancy	Consult Us On any matters regarding Farmers  Consultation				Consult Us On any matters regarding Farmers  Consultation	agrotim-farmers-consultancy-ce77dc7d-501b-45ce-bdd	2025-06-24
\.


--
-- Data for Name: manager_serviceimage; Type: TABLE DATA; Schema: public; Owner: django_agriculture_user
--

COPY public.manager_serviceimage (id, image, slug, created_on, service_id) FROM stdin;
1	ServiceImage/images/it-consultancy-0de25ba7-dec0-46c6-a416-ba67c08cf7d-901f718a-164b-4d_86Hb3V6.jpeg	it-consultancy-0de25ba7-dec0-46c6-a416-ba67c08cf7d	2025-06-24	1
\.


--
-- Data for Name: manager_showroom; Type: TABLE DATA; Schema: public; Owner: django_agriculture_user
--

COPY public.manager_showroom (id, name, name_ar, name_fr, name_de, name_en, image, visits, slug, created_on, location_id) FROM stdin;
2	AgroTim ShowRoom	\N	\N	\N	AgroTim ShowRoom	Showroom/images/agrotim-showroom-f14884b7-d142-4487-b2e9-b78d1ab12-5dabfcd9-ce23-44a4-af_QG5MBnp.jpg	0	agrotim-showroom-f14884b7-d142-4487-b2e9-b78d1ab12	2025-06-24	\N
\.


--
-- Data for Name: manager_showroom_store; Type: TABLE DATA; Schema: public; Owner: django_agriculture_user
--

COPY public.manager_showroom_store (id, showroom_id, store_id) FROM stdin;
2	2	4
\.


--
-- Data for Name: manager_userrequest; Type: TABLE DATA; Schema: public; Owner: django_agriculture_user
--

COPY public.manager_userrequest (id, country, city, view, request_method, device, user_os, created_on) FROM stdin;
\.


--
-- Data for Name: payment_braintreesubscription; Type: TABLE DATA; Schema: public; Owner: django_agriculture_user
--

COPY public.payment_braintreesubscription (id, subscription_id, payment_method, current_billing_cycle, days_past_due, next_billing_date, payment_method_token, created_on, membership_id) FROM stdin;
\.


--
-- Data for Name: payment_cardpayment; Type: TABLE DATA; Schema: public; Owner: django_agriculture_user
--

COPY public.payment_cardpayment (id, card_token, card_last_4, card_type, card_expiration_month, card_expiration_year, card_customer_location, card_issuing_bank, subscription_id) FROM stdin;
\.


--
-- Data for Name: payment_contract; Type: TABLE DATA; Schema: public; Owner: django_agriculture_user
--

COPY public.payment_contract (id, ref_no, is_complete, is_accepted, payment_made, start_date, end_date, created_on, buyer_id, service_id, supplier_id) FROM stdin;
\.


--
-- Data for Name: payment_contractreceipt; Type: TABLE DATA; Schema: public; Owner: django_agriculture_user
--

COPY public.payment_contractreceipt (id, address, payment_id, amount_paid, currency, contract_id, mode_of_payment_id) FROM stdin;
\.


--
-- Data for Name: payment_feature; Type: TABLE DATA; Schema: public; Owner: django_agriculture_user
--

COPY public.payment_feature (id, custom_id, name, name_ar, name_fr, name_de, name_en, price, price_ar, price_fr, price_de, price_en, description, billing_frequency, currency_iso_code, currency_iso_code_ar, currency_iso_code_fr, currency_iso_code_de, currency_iso_code_en, interval_unit, status, has_trial, trial_period, trial_period_count, paypal_id) FROM stdin;
\.


--
-- Data for Name: payment_membership; Type: TABLE DATA; Schema: public; Owner: django_agriculture_user
--

COPY public.payment_membership (id, membership_type, start_date, expiry_date, status, payment_completed, client_id, feature_id, previous_feature_id, upgrading_to_id) FROM stdin;
\.


--
-- Data for Name: payment_membershipgroup; Type: TABLE DATA; Schema: public; Owner: django_agriculture_user
--

COPY public.payment_membershipgroup (id, name, name_ar, name_fr, name_de, name_en, slug, created_on, description, description_ar, description_fr, description_de, description_en) FROM stdin;
\.


--
-- Data for Name: payment_membershipplan; Type: TABLE DATA; Schema: public; Owner: django_agriculture_user
--

COPY public.payment_membershipplan (id, name, name_ar, name_fr, name_de, name_en, slug, created_on, description, description_ar, description_fr, description_de, description_en, group_id) FROM stdin;
\.


--
-- Data for Name: payment_membershipplan_features; Type: TABLE DATA; Schema: public; Owner: django_agriculture_user
--

COPY public.payment_membershipplan_features (id, membershipplan_id, feature_id) FROM stdin;
\.


--
-- Data for Name: payment_membershipreceipt; Type: TABLE DATA; Schema: public; Owner: django_agriculture_user
--

COPY public.payment_membershipreceipt (id, method, plan_id, created_on, client_id) FROM stdin;
\.


--
-- Data for Name: payment_modeofpayment; Type: TABLE DATA; Schema: public; Owner: django_agriculture_user
--

COPY public.payment_modeofpayment (id, name, slug, created_on, transaction_count) FROM stdin;
1	cash on delivery	cash-on-delivery4c2d668b-e205-43a7-81c5-8e5eb2ac23	2025-07-22	4
\.


--
-- Data for Name: payment_paypalproduct; Type: TABLE DATA; Schema: public; Owner: django_agriculture_user
--

COPY public.payment_paypalproduct (id, custom_id, name, "ProductType", description) FROM stdin;
\.


--
-- Data for Name: payment_paypalsubscription; Type: TABLE DATA; Schema: public; Owner: django_agriculture_user
--

COPY public.payment_paypalsubscription (id, order_key, created_on, membership_id) FROM stdin;
\.


--
-- Data for Name: payment_transaction; Type: TABLE DATA; Schema: public; Owner: django_agriculture_user
--

COPY public.payment_transaction (id, amount, checkout_id, mpesa_code, phone_number, status, "timestamp") FROM stdin;
1	1.00	ws_CO_240720252033102707077707	\N	254707077707	Pending	2025-07-24 20:33:10.69141+03
2	1.00	ws_CO_240720252033102707077707	TGO9DC7PF7	+254707077707	completed	2025-07-24 20:33:31.967545+03
\.


--
-- Data for Name: socialaccount_socialaccount; Type: TABLE DATA; Schema: public; Owner: django_agriculture_user
--

COPY public.socialaccount_socialaccount (id, provider, uid, last_login, date_joined, extra_data, user_id) FROM stdin;
2	Google	575828224879-asfhisfn1o96sqperclrm2lv6n54ttfo.apps.googleusercontent.com	2025-06-20 11:12:02.287229+03	2025-06-20 11:12:02.287248+03	{"web": {"auth_uri": "https://accounts.google.com/o/oauth2/auth", "client_id": "575828224879-asfhisfn1o96sqperclrm2lv6n54ttfo.apps.googleusercontent.com", "token_uri": "https://oauth2.googleapis.com/token", "project_id": "hybridnairobiskates", "client_secret": "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", "redirect_uris": ["https://demo.nairobiskates.com/accounts/google/login/callback/"], "javascript_origins": ["https://demo.nairobiskates.com"], "auth_provider_x509_cert_url": "https://www.googleapis.com/oauth2/v1/certs"}}	1
3	Facebook	1141600924485019	2025-07-24 20:15:52.665251+03	2025-07-24 20:15:52.66527+03	{"web": {"auth_uri": "https://accounts.google.com/o/oauth2/auth", "client_id": "575828224879-asfhisfn1o96sqperclrm2lv6n54ttfo.apps.googleusercontent.com", "token_uri": "https://oauth2.googleapis.com/token", "project_id": "hybridnairobiskates", "client_secret": "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", "redirect_uris": ["https://demo.nairobiskates.com/accounts/google/login/callback/"], "javascript_origins": ["https://demo.nairobiskates.com"], "auth_provider_x509_cert_url": "https://www.googleapis.com/oauth2/v1/certs"}}	1
\.


--
-- Data for Name: socialaccount_socialapp; Type: TABLE DATA; Schema: public; Owner: django_agriculture_user
--

COPY public.socialaccount_socialapp (id, provider, name, client_id, secret, key, provider_id, settings) FROM stdin;
2	google	Google Login	575828224879-asfhisfn1o96sqperclrm2lv6n54ttfo.apps.googleusercontent.com	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			{}
3	facebook	Facebook Login	1141600924485019	70c46868dd81f1442fd07cce29e3940b	1141600924485019	1141600924485019	{}
\.


--
-- Data for Name: socialaccount_socialapp_sites; Type: TABLE DATA; Schema: public; Owner: django_agriculture_user
--

COPY public.socialaccount_socialapp_sites (id, socialapp_id, site_id) FROM stdin;
3	2	2
4	3	2
\.


--
-- Data for Name: socialaccount_socialtoken; Type: TABLE DATA; Schema: public; Owner: django_agriculture_user
--

COPY public.socialaccount_socialtoken (id, token, token_secret, expires_at, account_id, app_id) FROM stdin;
2	{"web":{"client_id":"575828224879-asfhisfn1o96sqperclrm2lv6n54ttfo.apps.googleusercontent.com","project_id":"hybridnairobiskates","auth_uri":"https://accounts.google.com/o/oauth2/auth","token_uri":"https://oauth2.googleapis.com/token","auth_provider_x509_cert_url":"https://www.googleapis.com/oauth2/v1/certs","client_secret":"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","redirect_uris":["https://demo.nairobiskates.com/accounts/google/login/callback/"],"javascript_origins":["https://demo.nairobiskates.com"]}}	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	\N	2	2
3	1141600924485019	70c46868dd81f1442fd07cce29e3940b	2025-07-31 20:17:26+03	3	3
\.


--
-- Data for Name: supplier_deliverycarrier; Type: TABLE DATA; Schema: public; Owner: django_agriculture_user
--

COPY public.supplier_deliverycarrier (id, name, tax, tax_ar, tax_fr, tax_de, tax_en, delivery_period, delivery_period_ar, delivery_period_fr, delivery_period_de, delivery_period_en, active) FROM stdin;
1	Fargo	3.00	3.00	\N	\N	3.00	44	\N	\N	4	44	t
\.


--
-- Data for Name: supplier_order; Type: TABLE DATA; Schema: public; Owner: django_agriculture_user
--

COPY public.supplier_order (id, order_id, status, status_ar, status_fr, status_de, status_en, currency, total_price, total_price_ar, total_price_fr, total_price_de, total_price_en, agreed_price, agreed_price_ar, agreed_price_fr, agreed_price_de, agreed_price_en, paid_price, paid_price_ar, paid_price_fr, paid_price_de, paid_price_en, discount, discount_ar, discount_fr, discount_de, discount_en, is_complete, accepted_on, delivery_date, created_on, updated_on, buyer_id, supplier_id, payment_id) FROM stdin;
21	FODR25724173352	PENDING	PENDING	PENDING	PENDING	PENDING	KES	1.03	\N	\N	\N	1.03	1.00	\N	\N	\N	1.00	\N	\N	\N	\N	\N	0.00	0.00	0.00	0.00	0.00	f	\N	\N	2025-07-24	2025-07-24 22:31:18.132317+03	4	1	2
\.


--
-- Data for Name: supplier_ordernote; Type: TABLE DATA; Schema: public; Owner: django_agriculture_user
--

COPY public.supplier_ordernote (id, notes, notes_ar, notes_fr, notes_de, notes_en, created_on, updated_on, order_id, user_id) FROM stdin;
\.


--
-- Data for Name: supplier_orderproductvariation; Type: TABLE DATA; Schema: public; Owner: django_agriculture_user
--

COPY public.supplier_orderproductvariation (id, quantity, quantity_ar, quantity_fr, quantity_de, quantity_en, min_total_price, max_total_price, cart_id, color_id, material_id, order_id, price_id, product_id) FROM stdin;
41	1	\N	\N	\N	1	400.00	450.00	3	\N	\N	\N	5	61
\.


--
-- Data for Name: supplier_ordershippingdetail; Type: TABLE DATA; Schema: public; Owner: django_agriculture_user
--

COPY public.supplier_ordershippingdetail (id, address_1, address_2, carrier_id, order_id) FROM stdin;
21	3165	10400	1	21
\.


--
-- Data for Name: supplier_product; Type: TABLE DATA; Schema: public; Owner: django_agriculture_user
--

COPY public.supplier_product (id, name, name_ar, name_fr, name_de, name_en, description, description_ar, description_fr, description_de, description_en, slug, currency, currency_ar, currency_fr, currency_de, currency_en, price, price_ar, price_fr, price_de, price_en, discount, stock, is_verified, created_on, business_id, category_id, sub_category_id) FROM stdin;
58	Green Spinach	\N	\N	\N	Green Spinach	Green Spinach				Green Spinach	green-spinach0b1b873a-ae2a-4cc6-b0ad-e59032a75af2	Ksh	\N	\N	\N	Ksh	30.00	\N	\N	\N	30.00	1.00	2	t	2025-07-24	1	7	19
59	Mangoes	\N	\N	\N	Mangoes	Mangoes				Mangoes	mangoes27643284-0c9b-4ed2-95da-d76e827ebed0	Ksh	\N	\N	\N	Ksh	40.00	\N	\N	\N	40.00	0.01	2	t	2025-07-24	1	8	20
60	Chicken Meat	\N	\N	\N	Chicken Meat	Chicken Meat				Chicken Meat	chicken-meat98a524ce-76e2-43b9-93ee-89fd0a127888	Ksh	\N	\N	\N	Ksh	600.00	\N	\N	\N	600.00	0.01	2	t	2025-07-24	1	9	21
61	Fresh Beef	\N	\N	\N	Fresh Beef	Fresh Beef				Fresh Beef	fresh-beef553981c9-2fa5-4267-a825-00642efb5605	Ksh	\N	\N	\N	Ksh	450.00	\N	\N	\N	450.00	0.02	2	t	2025-07-24	1	10	22
62	90kg Maize	\N	\N	\N	90kg Maize	90kg Maize				90kg Maize	90kg-maizec1f4c20e-d02f-4bc2-9968-35fd0b5412fa	Ksh	\N	\N	\N	Ksh	4400.00	\N	\N	\N	4400.00	0.02	2	t	2025-07-24	1	11	23
\.


--
-- Data for Name: supplier_product_store; Type: TABLE DATA; Schema: public; Owner: django_agriculture_user
--

COPY public.supplier_product_store (id, product_id, store_id) FROM stdin;
65	58	4
66	59	4
67	60	4
68	61	4
69	62	4
\.


--
-- Data for Name: supplier_productcategory; Type: TABLE DATA; Schema: public; Owner: django_agriculture_user
--

COPY public.supplier_productcategory (id, name, name_ar, name_fr, name_de, name_en, product_count, image, slug, created_on) FROM stdin;
7	Vegetables	\N	\N	\N	Vegetables	4	ProductCategory/images/vegetablesb6827ec6-0df2-429f-8df2-4a64ddfb1acf-44d.jpeg	vegetablesbdd8364e-6a62-476f-a9ef-ea0cf1bf67de	2025-07-24
8	Fruits	\N	\N	\N	Fruits	3	ProductCategory/images/fruits68fb8dc7-b709-41fd-9b32-0e9490309fad-5a41d03.jpeg	fruits68fb8dc7-b709-41fd-9b32-0e9490309fad	2025-07-24
9	Poultry Products	\N	\N	\N	Poultry Products	3	ProductCategory/images/poultry-products836db59e-81d5-4519-8b38-b2014e20c7.jpeg	poultry-products836db59e-81d5-4519-8b38-b2014e20c7f7	2025-07-24
10	Livestock Products	\N	\N	\N	Livestock Products	3	ProductCategory/images/livestock-products2ee79c67-e58a-4a82-a2b7-1e9fc19a.jpeg	livestock-products2ee79c67-e58a-4a82-a2b7-1e9fc19a6c70	2025-07-24
11	Cereals	\N	\N	\N	Cereals	3	ProductCategory/images/cereals450e317e-58f6-471c-a147-c0d7b3e74e05-bda92b.jpeg	cereals450e317e-58f6-471c-a147-c0d7b3e74e05	2025-07-24
\.


--
-- Data for Name: supplier_productcolor; Type: TABLE DATA; Schema: public; Owner: django_agriculture_user
--

COPY public.supplier_productcolor (id, name, name_ar, name_fr, name_de, name_en, product_id) FROM stdin;
\.


--
-- Data for Name: supplier_productimage; Type: TABLE DATA; Schema: public; Owner: django_agriculture_user
--

COPY public.supplier_productimage (id, image, slug, created_on, product_id) FROM stdin;
68	ProductImage/images/90kg-maize-72a82f91-c43a-43e2-a355-abd00d4cc6a7-im.jpeg	90kg-maize-72a82f91-c43a-43e2-a355-abd00d4cc6a7-images	2025-07-24	62
69	ProductImage/images/fresh-beef-39feb38c-b99e-45dd-bab2-acbb53e34410-im.jpeg	fresh-beef-39feb38c-b99e-45dd-bab2-acbb53e34410-images	2025-07-24	61
70	ProductImage/images/chicken-me-1f5e59f6-265e-4bcd-862e-fba6cca97ef5-im.jpeg	chicken-me-1f5e59f6-265e-4bcd-862e-fba6cca97ef5-images	2025-07-24	60
71	ProductImage/images/mangoes-734116d0-4b7c-4a81-a68e-67b465f4cfbc-image.jpeg	mangoes-734116d0-4b7c-4a81-a68e-67b465f4cfbc-images	2025-07-24	59
72	ProductImage/images/green-spin-785a8892-92af-4188-94f2-710dbf29dfe5-im.jpeg	green-spin-785a8892-92af-4188-94f2-710dbf29dfe5-images	2025-07-24	58
\.


--
-- Data for Name: supplier_productmaterial; Type: TABLE DATA; Schema: public; Owner: django_agriculture_user
--

COPY public.supplier_productmaterial (id, name, name_ar, name_fr, name_de, name_en, product_id) FROM stdin;
\.


--
-- Data for Name: supplier_productprice; Type: TABLE DATA; Schema: public; Owner: django_agriculture_user
--

COPY public.supplier_productprice (id, currency, min_price, max_price, product_id) FROM stdin;
4	Ksh	4200.00	4400.00	62
5	Ksh	400.00	450.00	61
6	Ksh	550.00	600.00	60
7	Ksh	25.00	30.00	59
8	KSh	30.00	40.00	58
\.


--
-- Data for Name: supplier_productreview; Type: TABLE DATA; Schema: public; Owner: django_agriculture_user
--

COPY public.supplier_productreview (id, content, business_id, product_id) FROM stdin;
\.


--
-- Data for Name: supplier_productsubcategory; Type: TABLE DATA; Schema: public; Owner: django_agriculture_user
--

COPY public.supplier_productsubcategory (id, name, name_ar, name_fr, name_de, name_en, image, slug, created_on, category_id) FROM stdin;
19	Fresh Vegetables	\N	\N	\N	Fresh Vegetables	ProductSubCategory/images/fresh-vegetables80b79748-a969-406b-b1d6-10f0ba277a.jpeg	fresh-vegetables80b79748-a969-406b-b1d6-10f0ba277aee	2025-07-24	7
20	Fresh Fruits	\N	\N	\N	Fresh Fruits	ProductSubCategory/images/fresh-fruitse6d85340-2662-4bad-9a4c-898eefe29b78-c.jpeg	fresh-fruitse6d85340-2662-4bad-9a4c-898eefe29b78	2025-07-24	8
21	Fresh Poultry Products	\N	\N	\N	Fresh Poultry Products	ProductSubCategory/images/fresh-poultry-products8833388f-d524-4d24-b194-10ae.jpeg	fresh-poultry-products8833388f-d524-4d24-b194-10ae121fdcbc	2025-07-24	9
22	Fresh Livestock Products	\N	\N	\N	Fresh Livestock Products	ProductSubCategory/images/fresh-livestock-productsc3ca4c51-88b3-4124-9247-17.jpeg	fresh-livestock-productsc3ca4c51-88b3-4124-9247-1794c174e5c3	2025-07-24	10
23	Bulk Cereals	\N	\N	\N	Bulk Cereals	ProductSubCategory/images/bulk-cereals66e4b3ae-cc9c-45f7-b3e1-2c86d5280dcc-f.jpeg	bulk-cereals66e4b3ae-cc9c-45f7-b3e1-2c86d5280dcc	2025-07-24	11
\.


--
-- Data for Name: supplier_producttag; Type: TABLE DATA; Schema: public; Owner: django_agriculture_user
--

COPY public.supplier_producttag (id, name, name_ar, name_fr, name_de, name_en, product_id) FROM stdin;
\.


--
-- Data for Name: supplier_productvideo; Type: TABLE DATA; Schema: public; Owner: django_agriculture_user
--

COPY public.supplier_productvideo (id, video, slug, created_on, product_id) FROM stdin;
\.


--
-- Data for Name: supplier_service; Type: TABLE DATA; Schema: public; Owner: django_agriculture_user
--

COPY public.supplier_service (id, name, name_ar, name_fr, name_de, name_en, description, description_ar, description_fr, description_de, description_en, price, price_ar, price_fr, price_de, price_en, currency, currency_ar, currency_fr, currency_de, currency_en, contract_count, slug, created_on, supplier_id) FROM stdin;
1	AgroTim Farmers Consultancy	\N	\N	\N	AgroTim Farmers Consultancy	Visit Us for  Farmers Consultancy				Visit Us for  Farmers Consultancy	500.00	\N	\N	\N	500.00	Ksh	\N	\N	\N	Ksh	2	agrotim-farmers-consultancy1a5cd5f9-8bac-4404-9dc1	2025-06-24	3
\.


--
-- Data for Name: supplier_serviceimage; Type: TABLE DATA; Schema: public; Owner: django_agriculture_user
--

COPY public.supplier_serviceimage (id, image, slug, created_on, service_id) FROM stdin;
1	ServiceImage/images/imegeries-c4174154-1e2f-4b3e-89e7-9f94291edfb2-9b3.jpeg	imegeries-c4174154-1e2f-4b3e-89e7-9f94291edfb2	2025-06-24	1
\.


--
-- Data for Name: supplier_servicetag; Type: TABLE DATA; Schema: public; Owner: django_agriculture_user
--

COPY public.supplier_servicetag (id, name, name_ar, name_fr, name_de, name_en, slug, service_id) FROM stdin;
\.


--
-- Data for Name: supplier_store; Type: TABLE DATA; Schema: public; Owner: django_agriculture_user
--

COPY public.supplier_store (id, name, name_ar, name_fr, name_de, name_en, slug, image, is_verified, created_on, supplier_id) FROM stdin;
4	AgroTim Suppliers	\N	\N	\N	AgroTim Suppliers	agrotim-suppliers0b9afa10-f44d-4471-baa1-dde112a72f07	Store/images/agrotim-suppliers0b9afa10-f44d-4471-baa1-dde112a72.jpg	t	2025-06-24	3
\.


--
-- Data for Name: supplier_wishlistproduct; Type: TABLE DATA; Schema: public; Owner: django_agriculture_user
--

COPY public.supplier_wishlistproduct (id, buyer_id, product_id) FROM stdin;
\.


--
-- Name: account_emailaddress_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_agriculture_user
--

SELECT pg_catalog.setval('public.account_emailaddress_id_seq', 1, false);


--
-- Name: account_emailconfirmation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_agriculture_user
--

SELECT pg_catalog.setval('public.account_emailconfirmation_id_seq', 1, false);


--
-- Name: auth_app_clientprofile_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_agriculture_user
--

SELECT pg_catalog.setval('public.auth_app_clientprofile_id_seq', 46, true);


--
-- Name: auth_app_clientprofile_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_agriculture_user
--

SELECT pg_catalog.setval('public.auth_app_clientprofile_team_id_seq', 160, true);


--
-- Name: auth_app_supportprofile_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_agriculture_user
--

SELECT pg_catalog.setval('public.auth_app_supportprofile_id_seq', 1, true);


--
-- Name: auth_app_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_agriculture_user
--

SELECT pg_catalog.setval('public.auth_app_user_groups_id_seq', 1, true);


--
-- Name: auth_app_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_agriculture_user
--

SELECT pg_catalog.setval('public.auth_app_user_id_seq', 8, true);


--
-- Name: auth_app_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_agriculture_user
--

SELECT pg_catalog.setval('public.auth_app_user_user_permissions_id_seq', 1, false);


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_agriculture_user
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, true);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_agriculture_user
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 276, true);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_agriculture_user
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 280, true);


--
-- Name: buyer_cart_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_agriculture_user
--

SELECT pg_catalog.setval('public.buyer_cart_id_seq', 3, true);


--
-- Name: coms_groupchat_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_agriculture_user
--

SELECT pg_catalog.setval('public.coms_groupchat_id_seq', 1, false);


--
-- Name: coms_groupchat_participants_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_agriculture_user
--

SELECT pg_catalog.setval('public.coms_groupchat_participants_id_seq', 1, false);


--
-- Name: coms_interclientchat_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_agriculture_user
--

SELECT pg_catalog.setval('public.coms_interclientchat_id_seq', 1, false);


--
-- Name: coms_interuserchat_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_agriculture_user
--

SELECT pg_catalog.setval('public.coms_interuserchat_id_seq', 1, false);


--
-- Name: coms_interuserchat_participants_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_agriculture_user
--

SELECT pg_catalog.setval('public.coms_interuserchat_participants_id_seq', 1, false);


--
-- Name: coms_orderchat_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_agriculture_user
--

SELECT pg_catalog.setval('public.coms_orderchat_id_seq', 1, false);


--
-- Name: coms_supportclientchat_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_agriculture_user
--

SELECT pg_catalog.setval('public.coms_supportclientchat_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_agriculture_user
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 422, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_agriculture_user
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 70, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_agriculture_user
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 47, true);


--
-- Name: django_site_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_agriculture_user
--

SELECT pg_catalog.setval('public.django_site_id_seq', 3, true);


--
-- Name: manager_advert_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_agriculture_user
--

SELECT pg_catalog.setval('public.manager_advert_id_seq', 1, true);


--
-- Name: manager_advertisinglocation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_agriculture_user
--

SELECT pg_catalog.setval('public.manager_advertisinglocation_id_seq', 1, true);


--
-- Name: manager_calenderevent_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_agriculture_user
--

SELECT pg_catalog.setval('public.manager_calenderevent_id_seq', 1, false);


--
-- Name: manager_discussion_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_agriculture_user
--

SELECT pg_catalog.setval('public.manager_discussion_id_seq', 1, false);


--
-- Name: manager_discussionreply_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_agriculture_user
--

SELECT pg_catalog.setval('public.manager_discussionreply_id_seq', 1, false);


--
-- Name: manager_emailpromotion_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_agriculture_user
--

SELECT pg_catalog.setval('public.manager_emailpromotion_id_seq', 1, false);


--
-- Name: manager_location_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_agriculture_user
--

SELECT pg_catalog.setval('public.manager_location_id_seq', 1, false);


--
-- Name: manager_notification_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_agriculture_user
--

SELECT pg_catalog.setval('public.manager_notification_id_seq', 1, false);


--
-- Name: manager_promotion_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_agriculture_user
--

SELECT pg_catalog.setval('public.manager_promotion_id_seq', 5, true);


--
-- Name: manager_sentemail_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_agriculture_user
--

SELECT pg_catalog.setval('public.manager_sentemail_id_seq', 1, false);


--
-- Name: manager_service_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_agriculture_user
--

SELECT pg_catalog.setval('public.manager_service_id_seq', 1, true);


--
-- Name: manager_serviceimage_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_agriculture_user
--

SELECT pg_catalog.setval('public.manager_serviceimage_id_seq', 1, true);


--
-- Name: manager_showroom_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_agriculture_user
--

SELECT pg_catalog.setval('public.manager_showroom_id_seq', 2, true);


--
-- Name: manager_showroom_store_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_agriculture_user
--

SELECT pg_catalog.setval('public.manager_showroom_store_id_seq', 2, true);


--
-- Name: manager_userrequest_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_agriculture_user
--

SELECT pg_catalog.setval('public.manager_userrequest_id_seq', 1, false);


--
-- Name: payment_braintreesubscription_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_agriculture_user
--

SELECT pg_catalog.setval('public.payment_braintreesubscription_id_seq', 1, false);


--
-- Name: payment_cardpayment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_agriculture_user
--

SELECT pg_catalog.setval('public.payment_cardpayment_id_seq', 1, false);


--
-- Name: payment_contract_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_agriculture_user
--

SELECT pg_catalog.setval('public.payment_contract_id_seq', 1, false);


--
-- Name: payment_contractreceipt_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_agriculture_user
--

SELECT pg_catalog.setval('public.payment_contractreceipt_id_seq', 1, false);


--
-- Name: payment_feature_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_agriculture_user
--

SELECT pg_catalog.setval('public.payment_feature_id_seq', 1, false);


--
-- Name: payment_membership_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_agriculture_user
--

SELECT pg_catalog.setval('public.payment_membership_id_seq', 1, true);


--
-- Name: payment_membershipgroup_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_agriculture_user
--

SELECT pg_catalog.setval('public.payment_membershipgroup_id_seq', 1, false);


--
-- Name: payment_membershipplan_features_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_agriculture_user
--

SELECT pg_catalog.setval('public.payment_membershipplan_features_id_seq', 1, false);


--
-- Name: payment_membershipplan_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_agriculture_user
--

SELECT pg_catalog.setval('public.payment_membershipplan_id_seq', 1, false);


--
-- Name: payment_membershipreceipt_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_agriculture_user
--

SELECT pg_catalog.setval('public.payment_membershipreceipt_id_seq', 1, false);


--
-- Name: payment_modeofpayment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_agriculture_user
--

SELECT pg_catalog.setval('public.payment_modeofpayment_id_seq', 1, true);


--
-- Name: payment_paypalproduct_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_agriculture_user
--

SELECT pg_catalog.setval('public.payment_paypalproduct_id_seq', 1, false);


--
-- Name: payment_paypalsubscription_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_agriculture_user
--

SELECT pg_catalog.setval('public.payment_paypalsubscription_id_seq', 1, false);


--
-- Name: payment_transaction_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_agriculture_user
--

SELECT pg_catalog.setval('public.payment_transaction_id_seq', 2, true);


--
-- Name: socialaccount_socialaccount_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_agriculture_user
--

SELECT pg_catalog.setval('public.socialaccount_socialaccount_id_seq', 3, true);


--
-- Name: socialaccount_socialapp_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_agriculture_user
--

SELECT pg_catalog.setval('public.socialaccount_socialapp_id_seq', 3, true);


--
-- Name: socialaccount_socialapp_sites_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_agriculture_user
--

SELECT pg_catalog.setval('public.socialaccount_socialapp_sites_id_seq', 4, true);


--
-- Name: socialaccount_socialtoken_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_agriculture_user
--

SELECT pg_catalog.setval('public.socialaccount_socialtoken_id_seq', 3, true);


--
-- Name: supplier_deliverycarrier_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_agriculture_user
--

SELECT pg_catalog.setval('public.supplier_deliverycarrier_id_seq', 1, true);


--
-- Name: supplier_order_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_agriculture_user
--

SELECT pg_catalog.setval('public.supplier_order_id_seq', 21, true);


--
-- Name: supplier_ordernote_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_agriculture_user
--

SELECT pg_catalog.setval('public.supplier_ordernote_id_seq', 1, false);


--
-- Name: supplier_orderproductvariation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_agriculture_user
--

SELECT pg_catalog.setval('public.supplier_orderproductvariation_id_seq', 41, true);


--
-- Name: supplier_ordershippingdetail_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_agriculture_user
--

SELECT pg_catalog.setval('public.supplier_ordershippingdetail_id_seq', 21, true);


--
-- Name: supplier_product_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_agriculture_user
--

SELECT pg_catalog.setval('public.supplier_product_id_seq', 62, true);


--
-- Name: supplier_product_store_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_agriculture_user
--

SELECT pg_catalog.setval('public.supplier_product_store_id_seq', 69, true);


--
-- Name: supplier_productcategory_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_agriculture_user
--

SELECT pg_catalog.setval('public.supplier_productcategory_id_seq', 11, true);


--
-- Name: supplier_productcolor_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_agriculture_user
--

SELECT pg_catalog.setval('public.supplier_productcolor_id_seq', 3, true);


--
-- Name: supplier_productimage_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_agriculture_user
--

SELECT pg_catalog.setval('public.supplier_productimage_id_seq', 72, true);


--
-- Name: supplier_productmaterial_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_agriculture_user
--

SELECT pg_catalog.setval('public.supplier_productmaterial_id_seq', 1, true);


--
-- Name: supplier_productprice_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_agriculture_user
--

SELECT pg_catalog.setval('public.supplier_productprice_id_seq', 8, true);


--
-- Name: supplier_productreview_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_agriculture_user
--

SELECT pg_catalog.setval('public.supplier_productreview_id_seq', 1, false);


--
-- Name: supplier_productsubcategory_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_agriculture_user
--

SELECT pg_catalog.setval('public.supplier_productsubcategory_id_seq', 23, true);


--
-- Name: supplier_producttag_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_agriculture_user
--

SELECT pg_catalog.setval('public.supplier_producttag_id_seq', 1, false);


--
-- Name: supplier_productvideo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_agriculture_user
--

SELECT pg_catalog.setval('public.supplier_productvideo_id_seq', 1, false);


--
-- Name: supplier_service_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_agriculture_user
--

SELECT pg_catalog.setval('public.supplier_service_id_seq', 1, true);


--
-- Name: supplier_serviceimage_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_agriculture_user
--

SELECT pg_catalog.setval('public.supplier_serviceimage_id_seq', 1, true);


--
-- Name: supplier_servicetag_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_agriculture_user
--

SELECT pg_catalog.setval('public.supplier_servicetag_id_seq', 1, false);


--
-- Name: supplier_store_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_agriculture_user
--

SELECT pg_catalog.setval('public.supplier_store_id_seq', 4, true);


--
-- Name: supplier_wishlistproduct_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_agriculture_user
--

SELECT pg_catalog.setval('public.supplier_wishlistproduct_id_seq', 4, true);


--
-- Name: account_emailaddress account_emailaddress_pkey; Type: CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.account_emailaddress
    ADD CONSTRAINT account_emailaddress_pkey PRIMARY KEY (id);


--
-- Name: account_emailaddress account_emailaddress_user_id_email_987c8728_uniq; Type: CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.account_emailaddress
    ADD CONSTRAINT account_emailaddress_user_id_email_987c8728_uniq UNIQUE (user_id, email);


--
-- Name: account_emailconfirmation account_emailconfirmation_key_key; Type: CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.account_emailconfirmation
    ADD CONSTRAINT account_emailconfirmation_key_key UNIQUE (key);


--
-- Name: account_emailconfirmation account_emailconfirmation_pkey; Type: CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.account_emailconfirmation
    ADD CONSTRAINT account_emailconfirmation_pkey PRIMARY KEY (id);


--
-- Name: auth_app_clientprofile auth_app_clientprofile_pkey; Type: CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.auth_app_clientprofile
    ADD CONSTRAINT auth_app_clientprofile_pkey PRIMARY KEY (id);


--
-- Name: auth_app_clientprofile auth_app_clientprofile_slug_key; Type: CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.auth_app_clientprofile
    ADD CONSTRAINT auth_app_clientprofile_slug_key UNIQUE (slug);


--
-- Name: auth_app_clientprofile_team auth_app_clientprofile_t_clientprofile_id_user_id_e35f9f1c_uniq; Type: CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.auth_app_clientprofile_team
    ADD CONSTRAINT auth_app_clientprofile_t_clientprofile_id_user_id_e35f9f1c_uniq UNIQUE (clientprofile_id, user_id);


--
-- Name: auth_app_clientprofile_team auth_app_clientprofile_team_pkey; Type: CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.auth_app_clientprofile_team
    ADD CONSTRAINT auth_app_clientprofile_team_pkey PRIMARY KEY (id);


--
-- Name: auth_app_clientprofile auth_app_clientprofile_user_id_key; Type: CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.auth_app_clientprofile
    ADD CONSTRAINT auth_app_clientprofile_user_id_key UNIQUE (user_id);


--
-- Name: auth_app_supportprofile auth_app_supportprofile_pkey; Type: CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.auth_app_supportprofile
    ADD CONSTRAINT auth_app_supportprofile_pkey PRIMARY KEY (id);


--
-- Name: auth_app_supportprofile auth_app_supportprofile_user_id_key; Type: CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.auth_app_supportprofile
    ADD CONSTRAINT auth_app_supportprofile_user_id_key UNIQUE (user_id);


--
-- Name: auth_app_user_groups auth_app_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.auth_app_user_groups
    ADD CONSTRAINT auth_app_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_app_user_groups auth_app_user_groups_user_id_group_id_5f174ff0_uniq; Type: CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.auth_app_user_groups
    ADD CONSTRAINT auth_app_user_groups_user_id_group_id_5f174ff0_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_app_user auth_app_user_pkey; Type: CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.auth_app_user
    ADD CONSTRAINT auth_app_user_pkey PRIMARY KEY (id);


--
-- Name: auth_app_user_user_permissions auth_app_user_user_permi_user_id_permission_id_727a8e97_uniq; Type: CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.auth_app_user_user_permissions
    ADD CONSTRAINT auth_app_user_user_permi_user_id_permission_id_727a8e97_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_app_user_user_permissions auth_app_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.auth_app_user_user_permissions
    ADD CONSTRAINT auth_app_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_app_user auth_app_user_username_key; Type: CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.auth_app_user
    ADD CONSTRAINT auth_app_user_username_key UNIQUE (username);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: buyer_cart buyer_cart_pkey; Type: CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.buyer_cart
    ADD CONSTRAINT buyer_cart_pkey PRIMARY KEY (id);


--
-- Name: coms_groupchat coms_groupchat_chatfilepath_key; Type: CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.coms_groupchat
    ADD CONSTRAINT coms_groupchat_chatfilepath_key UNIQUE (chatfilepath);


--
-- Name: coms_groupchat_participants coms_groupchat_participants_groupchat_id_user_id_0695fc74_uniq; Type: CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.coms_groupchat_participants
    ADD CONSTRAINT coms_groupchat_participants_groupchat_id_user_id_0695fc74_uniq UNIQUE (groupchat_id, user_id);


--
-- Name: coms_groupchat_participants coms_groupchat_participants_pkey; Type: CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.coms_groupchat_participants
    ADD CONSTRAINT coms_groupchat_participants_pkey PRIMARY KEY (id);


--
-- Name: coms_groupchat coms_groupchat_pkey; Type: CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.coms_groupchat
    ADD CONSTRAINT coms_groupchat_pkey PRIMARY KEY (id);


--
-- Name: coms_groupchat coms_groupchat_roomname_key; Type: CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.coms_groupchat
    ADD CONSTRAINT coms_groupchat_roomname_key UNIQUE (roomname);


--
-- Name: coms_interclientchat coms_interclientchat_chatfilepath_key; Type: CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.coms_interclientchat
    ADD CONSTRAINT coms_interclientchat_chatfilepath_key UNIQUE (chatfilepath);


--
-- Name: coms_interclientchat coms_interclientchat_pkey; Type: CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.coms_interclientchat
    ADD CONSTRAINT coms_interclientchat_pkey PRIMARY KEY (id);


--
-- Name: coms_interclientchat coms_interclientchat_roomname_key; Type: CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.coms_interclientchat
    ADD CONSTRAINT coms_interclientchat_roomname_key UNIQUE (roomname);


--
-- Name: coms_interuserchat coms_interuserchat_chatfilepath_key; Type: CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.coms_interuserchat
    ADD CONSTRAINT coms_interuserchat_chatfilepath_key UNIQUE (chatfilepath);


--
-- Name: coms_interuserchat_participants coms_interuserchat_parti_interuserchat_id_user_id_29774d10_uniq; Type: CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.coms_interuserchat_participants
    ADD CONSTRAINT coms_interuserchat_parti_interuserchat_id_user_id_29774d10_uniq UNIQUE (interuserchat_id, user_id);


--
-- Name: coms_interuserchat_participants coms_interuserchat_participants_pkey; Type: CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.coms_interuserchat_participants
    ADD CONSTRAINT coms_interuserchat_participants_pkey PRIMARY KEY (id);


--
-- Name: coms_interuserchat coms_interuserchat_pkey; Type: CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.coms_interuserchat
    ADD CONSTRAINT coms_interuserchat_pkey PRIMARY KEY (id);


--
-- Name: coms_interuserchat coms_interuserchat_roomname_key; Type: CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.coms_interuserchat
    ADD CONSTRAINT coms_interuserchat_roomname_key UNIQUE (roomname);


--
-- Name: coms_orderchat coms_orderchat_chatfilepath_key; Type: CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.coms_orderchat
    ADD CONSTRAINT coms_orderchat_chatfilepath_key UNIQUE (chatfilepath);


--
-- Name: coms_orderchat coms_orderchat_order_id_key; Type: CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.coms_orderchat
    ADD CONSTRAINT coms_orderchat_order_id_key UNIQUE (order_id);


--
-- Name: coms_orderchat coms_orderchat_pkey; Type: CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.coms_orderchat
    ADD CONSTRAINT coms_orderchat_pkey PRIMARY KEY (id);


--
-- Name: coms_orderchat coms_orderchat_roomname_key; Type: CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.coms_orderchat
    ADD CONSTRAINT coms_orderchat_roomname_key UNIQUE (roomname);


--
-- Name: coms_supportclientchat coms_supportclientchat_chatfilepath_key; Type: CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.coms_supportclientchat
    ADD CONSTRAINT coms_supportclientchat_chatfilepath_key UNIQUE (chatfilepath);


--
-- Name: coms_supportclientchat coms_supportclientchat_pkey; Type: CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.coms_supportclientchat
    ADD CONSTRAINT coms_supportclientchat_pkey PRIMARY KEY (id);


--
-- Name: coms_supportclientchat coms_supportclientchat_roomname_key; Type: CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.coms_supportclientchat
    ADD CONSTRAINT coms_supportclientchat_roomname_key UNIQUE (roomname);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: django_site django_site_domain_a2e37b91_uniq; Type: CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.django_site
    ADD CONSTRAINT django_site_domain_a2e37b91_uniq UNIQUE (domain);


--
-- Name: django_site django_site_pkey; Type: CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.django_site
    ADD CONSTRAINT django_site_pkey PRIMARY KEY (id);


--
-- Name: manager_advert manager_advert_pkey; Type: CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.manager_advert
    ADD CONSTRAINT manager_advert_pkey PRIMARY KEY (id);


--
-- Name: manager_advert manager_advert_slug_key; Type: CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.manager_advert
    ADD CONSTRAINT manager_advert_slug_key UNIQUE (slug);


--
-- Name: manager_advertisinglocation manager_advertisinglocation_pkey; Type: CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.manager_advertisinglocation
    ADD CONSTRAINT manager_advertisinglocation_pkey PRIMARY KEY (id);


--
-- Name: manager_calenderevent manager_calenderevent_pkey; Type: CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.manager_calenderevent
    ADD CONSTRAINT manager_calenderevent_pkey PRIMARY KEY (id);


--
-- Name: manager_discussion manager_discussion_pkey; Type: CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.manager_discussion
    ADD CONSTRAINT manager_discussion_pkey PRIMARY KEY (id);


--
-- Name: manager_discussion manager_discussion_slug_key; Type: CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.manager_discussion
    ADD CONSTRAINT manager_discussion_slug_key UNIQUE (slug);


--
-- Name: manager_discussionreply manager_discussionreply_pkey; Type: CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.manager_discussionreply
    ADD CONSTRAINT manager_discussionreply_pkey PRIMARY KEY (id);


--
-- Name: manager_emailpromotion manager_emailpromotion_pkey; Type: CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.manager_emailpromotion
    ADD CONSTRAINT manager_emailpromotion_pkey PRIMARY KEY (id);


--
-- Name: manager_emailpromotion manager_emailpromotion_slug_key; Type: CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.manager_emailpromotion
    ADD CONSTRAINT manager_emailpromotion_slug_key UNIQUE (slug);


--
-- Name: manager_location manager_location_pkey; Type: CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.manager_location
    ADD CONSTRAINT manager_location_pkey PRIMARY KEY (id);


--
-- Name: manager_location manager_location_slug_key; Type: CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.manager_location
    ADD CONSTRAINT manager_location_slug_key UNIQUE (slug);


--
-- Name: manager_notification manager_notification_pkey; Type: CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.manager_notification
    ADD CONSTRAINT manager_notification_pkey PRIMARY KEY (id);


--
-- Name: manager_promotion manager_promotion_pkey; Type: CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.manager_promotion
    ADD CONSTRAINT manager_promotion_pkey PRIMARY KEY (id);


--
-- Name: manager_promotion manager_promotion_slug_key; Type: CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.manager_promotion
    ADD CONSTRAINT manager_promotion_slug_key UNIQUE (slug);


--
-- Name: manager_sentemail manager_sentemail_pkey; Type: CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.manager_sentemail
    ADD CONSTRAINT manager_sentemail_pkey PRIMARY KEY (id);


--
-- Name: manager_service manager_service_pkey; Type: CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.manager_service
    ADD CONSTRAINT manager_service_pkey PRIMARY KEY (id);


--
-- Name: manager_service manager_service_slug_key; Type: CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.manager_service
    ADD CONSTRAINT manager_service_slug_key UNIQUE (slug);


--
-- Name: manager_serviceimage manager_serviceimage_pkey; Type: CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.manager_serviceimage
    ADD CONSTRAINT manager_serviceimage_pkey PRIMARY KEY (id);


--
-- Name: manager_serviceimage manager_serviceimage_slug_key; Type: CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.manager_serviceimage
    ADD CONSTRAINT manager_serviceimage_slug_key UNIQUE (slug);


--
-- Name: manager_showroom manager_showroom_pkey; Type: CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.manager_showroom
    ADD CONSTRAINT manager_showroom_pkey PRIMARY KEY (id);


--
-- Name: manager_showroom manager_showroom_slug_key; Type: CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.manager_showroom
    ADD CONSTRAINT manager_showroom_slug_key UNIQUE (slug);


--
-- Name: manager_showroom_store manager_showroom_store_pkey; Type: CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.manager_showroom_store
    ADD CONSTRAINT manager_showroom_store_pkey PRIMARY KEY (id);


--
-- Name: manager_showroom_store manager_showroom_store_showroom_id_store_id_e0ea94a5_uniq; Type: CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.manager_showroom_store
    ADD CONSTRAINT manager_showroom_store_showroom_id_store_id_e0ea94a5_uniq UNIQUE (showroom_id, store_id);


--
-- Name: manager_userrequest manager_userrequest_pkey; Type: CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.manager_userrequest
    ADD CONSTRAINT manager_userrequest_pkey PRIMARY KEY (id);


--
-- Name: payment_braintreesubscription payment_braintreesubscription_membership_id_key; Type: CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.payment_braintreesubscription
    ADD CONSTRAINT payment_braintreesubscription_membership_id_key UNIQUE (membership_id);


--
-- Name: payment_braintreesubscription payment_braintreesubscription_pkey; Type: CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.payment_braintreesubscription
    ADD CONSTRAINT payment_braintreesubscription_pkey PRIMARY KEY (id);


--
-- Name: payment_cardpayment payment_cardpayment_pkey; Type: CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.payment_cardpayment
    ADD CONSTRAINT payment_cardpayment_pkey PRIMARY KEY (id);


--
-- Name: payment_cardpayment payment_cardpayment_subscription_id_key; Type: CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.payment_cardpayment
    ADD CONSTRAINT payment_cardpayment_subscription_id_key UNIQUE (subscription_id);


--
-- Name: payment_contract payment_contract_pkey; Type: CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.payment_contract
    ADD CONSTRAINT payment_contract_pkey PRIMARY KEY (id);


--
-- Name: payment_contract payment_contract_ref_no_key; Type: CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.payment_contract
    ADD CONSTRAINT payment_contract_ref_no_key UNIQUE (ref_no);


--
-- Name: payment_contractreceipt payment_contractreceipt_pkey; Type: CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.payment_contractreceipt
    ADD CONSTRAINT payment_contractreceipt_pkey PRIMARY KEY (id);


--
-- Name: payment_feature payment_feature_pkey; Type: CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.payment_feature
    ADD CONSTRAINT payment_feature_pkey PRIMARY KEY (id);


--
-- Name: payment_membership payment_membership_pkey; Type: CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.payment_membership
    ADD CONSTRAINT payment_membership_pkey PRIMARY KEY (id);


--
-- Name: payment_membershipgroup payment_membershipgroup_pkey; Type: CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.payment_membershipgroup
    ADD CONSTRAINT payment_membershipgroup_pkey PRIMARY KEY (id);


--
-- Name: payment_membershipgroup payment_membershipgroup_slug_key; Type: CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.payment_membershipgroup
    ADD CONSTRAINT payment_membershipgroup_slug_key UNIQUE (slug);


--
-- Name: payment_membershipplan_features payment_membershipplan_f_membershipplan_id_featur_998d299c_uniq; Type: CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.payment_membershipplan_features
    ADD CONSTRAINT payment_membershipplan_f_membershipplan_id_featur_998d299c_uniq UNIQUE (membershipplan_id, feature_id);


--
-- Name: payment_membershipplan_features payment_membershipplan_features_pkey; Type: CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.payment_membershipplan_features
    ADD CONSTRAINT payment_membershipplan_features_pkey PRIMARY KEY (id);


--
-- Name: payment_membershipplan payment_membershipplan_pkey; Type: CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.payment_membershipplan
    ADD CONSTRAINT payment_membershipplan_pkey PRIMARY KEY (id);


--
-- Name: payment_membershipplan payment_membershipplan_slug_key; Type: CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.payment_membershipplan
    ADD CONSTRAINT payment_membershipplan_slug_key UNIQUE (slug);


--
-- Name: payment_membershipreceipt payment_membershipreceipt_pkey; Type: CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.payment_membershipreceipt
    ADD CONSTRAINT payment_membershipreceipt_pkey PRIMARY KEY (id);


--
-- Name: payment_modeofpayment payment_modeofpayment_pkey; Type: CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.payment_modeofpayment
    ADD CONSTRAINT payment_modeofpayment_pkey PRIMARY KEY (id);


--
-- Name: payment_modeofpayment payment_modeofpayment_slug_key; Type: CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.payment_modeofpayment
    ADD CONSTRAINT payment_modeofpayment_slug_key UNIQUE (slug);


--
-- Name: payment_paypalproduct payment_paypalproduct_pkey; Type: CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.payment_paypalproduct
    ADD CONSTRAINT payment_paypalproduct_pkey PRIMARY KEY (id);


--
-- Name: payment_paypalsubscription payment_paypalsubscription_membership_id_key; Type: CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.payment_paypalsubscription
    ADD CONSTRAINT payment_paypalsubscription_membership_id_key UNIQUE (membership_id);


--
-- Name: payment_paypalsubscription payment_paypalsubscription_pkey; Type: CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.payment_paypalsubscription
    ADD CONSTRAINT payment_paypalsubscription_pkey PRIMARY KEY (id);


--
-- Name: payment_transaction payment_transaction_mpesa_code_key; Type: CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.payment_transaction
    ADD CONSTRAINT payment_transaction_mpesa_code_key UNIQUE (mpesa_code);


--
-- Name: payment_transaction payment_transaction_pkey; Type: CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.payment_transaction
    ADD CONSTRAINT payment_transaction_pkey PRIMARY KEY (id);


--
-- Name: socialaccount_socialaccount socialaccount_socialaccount_pkey; Type: CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.socialaccount_socialaccount
    ADD CONSTRAINT socialaccount_socialaccount_pkey PRIMARY KEY (id);


--
-- Name: socialaccount_socialaccount socialaccount_socialaccount_provider_uid_fc810c6e_uniq; Type: CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.socialaccount_socialaccount
    ADD CONSTRAINT socialaccount_socialaccount_provider_uid_fc810c6e_uniq UNIQUE (provider, uid);


--
-- Name: socialaccount_socialapp_sites socialaccount_socialapp__socialapp_id_site_id_71a9a768_uniq; Type: CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.socialaccount_socialapp_sites
    ADD CONSTRAINT socialaccount_socialapp__socialapp_id_site_id_71a9a768_uniq UNIQUE (socialapp_id, site_id);


--
-- Name: socialaccount_socialapp socialaccount_socialapp_pkey; Type: CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.socialaccount_socialapp
    ADD CONSTRAINT socialaccount_socialapp_pkey PRIMARY KEY (id);


--
-- Name: socialaccount_socialapp_sites socialaccount_socialapp_sites_pkey; Type: CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.socialaccount_socialapp_sites
    ADD CONSTRAINT socialaccount_socialapp_sites_pkey PRIMARY KEY (id);


--
-- Name: socialaccount_socialtoken socialaccount_socialtoken_app_id_account_id_fca4e0ac_uniq; Type: CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.socialaccount_socialtoken
    ADD CONSTRAINT socialaccount_socialtoken_app_id_account_id_fca4e0ac_uniq UNIQUE (app_id, account_id);


--
-- Name: socialaccount_socialtoken socialaccount_socialtoken_pkey; Type: CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.socialaccount_socialtoken
    ADD CONSTRAINT socialaccount_socialtoken_pkey PRIMARY KEY (id);


--
-- Name: supplier_deliverycarrier supplier_deliverycarrier_pkey; Type: CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.supplier_deliverycarrier
    ADD CONSTRAINT supplier_deliverycarrier_pkey PRIMARY KEY (id);


--
-- Name: supplier_order supplier_order_order_id_key; Type: CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.supplier_order
    ADD CONSTRAINT supplier_order_order_id_key UNIQUE (order_id);


--
-- Name: supplier_order supplier_order_pkey; Type: CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.supplier_order
    ADD CONSTRAINT supplier_order_pkey PRIMARY KEY (id);


--
-- Name: supplier_ordernote supplier_ordernote_order_id_key; Type: CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.supplier_ordernote
    ADD CONSTRAINT supplier_ordernote_order_id_key UNIQUE (order_id);


--
-- Name: supplier_ordernote supplier_ordernote_pkey; Type: CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.supplier_ordernote
    ADD CONSTRAINT supplier_ordernote_pkey PRIMARY KEY (id);


--
-- Name: supplier_orderproductvariation supplier_orderproductvariation_pkey; Type: CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.supplier_orderproductvariation
    ADD CONSTRAINT supplier_orderproductvariation_pkey PRIMARY KEY (id);


--
-- Name: supplier_ordershippingdetail supplier_ordershippingdetail_carrier_id_key; Type: CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.supplier_ordershippingdetail
    ADD CONSTRAINT supplier_ordershippingdetail_carrier_id_key UNIQUE (carrier_id);


--
-- Name: supplier_ordershippingdetail supplier_ordershippingdetail_order_id_key; Type: CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.supplier_ordershippingdetail
    ADD CONSTRAINT supplier_ordershippingdetail_order_id_key UNIQUE (order_id);


--
-- Name: supplier_ordershippingdetail supplier_ordershippingdetail_pkey; Type: CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.supplier_ordershippingdetail
    ADD CONSTRAINT supplier_ordershippingdetail_pkey PRIMARY KEY (id);


--
-- Name: supplier_product supplier_product_pkey; Type: CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.supplier_product
    ADD CONSTRAINT supplier_product_pkey PRIMARY KEY (id);


--
-- Name: supplier_product supplier_product_slug_key; Type: CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.supplier_product
    ADD CONSTRAINT supplier_product_slug_key UNIQUE (slug);


--
-- Name: supplier_product_store supplier_product_store_pkey; Type: CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.supplier_product_store
    ADD CONSTRAINT supplier_product_store_pkey PRIMARY KEY (id);


--
-- Name: supplier_product_store supplier_product_store_product_id_store_id_6394e2e5_uniq; Type: CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.supplier_product_store
    ADD CONSTRAINT supplier_product_store_product_id_store_id_6394e2e5_uniq UNIQUE (product_id, store_id);


--
-- Name: supplier_productcategory supplier_productcategory_pkey; Type: CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.supplier_productcategory
    ADD CONSTRAINT supplier_productcategory_pkey PRIMARY KEY (id);


--
-- Name: supplier_productcategory supplier_productcategory_slug_key; Type: CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.supplier_productcategory
    ADD CONSTRAINT supplier_productcategory_slug_key UNIQUE (slug);


--
-- Name: supplier_productcolor supplier_productcolor_pkey; Type: CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.supplier_productcolor
    ADD CONSTRAINT supplier_productcolor_pkey PRIMARY KEY (id);


--
-- Name: supplier_productimage supplier_productimage_pkey; Type: CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.supplier_productimage
    ADD CONSTRAINT supplier_productimage_pkey PRIMARY KEY (id);


--
-- Name: supplier_productimage supplier_productimage_slug_key; Type: CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.supplier_productimage
    ADD CONSTRAINT supplier_productimage_slug_key UNIQUE (slug);


--
-- Name: supplier_productmaterial supplier_productmaterial_pkey; Type: CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.supplier_productmaterial
    ADD CONSTRAINT supplier_productmaterial_pkey PRIMARY KEY (id);


--
-- Name: supplier_productprice supplier_productprice_pkey; Type: CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.supplier_productprice
    ADD CONSTRAINT supplier_productprice_pkey PRIMARY KEY (id);


--
-- Name: supplier_productreview supplier_productreview_pkey; Type: CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.supplier_productreview
    ADD CONSTRAINT supplier_productreview_pkey PRIMARY KEY (id);


--
-- Name: supplier_productsubcategory supplier_productsubcategory_pkey; Type: CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.supplier_productsubcategory
    ADD CONSTRAINT supplier_productsubcategory_pkey PRIMARY KEY (id);


--
-- Name: supplier_productsubcategory supplier_productsubcategory_slug_key; Type: CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.supplier_productsubcategory
    ADD CONSTRAINT supplier_productsubcategory_slug_key UNIQUE (slug);


--
-- Name: supplier_producttag supplier_producttag_pkey; Type: CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.supplier_producttag
    ADD CONSTRAINT supplier_producttag_pkey PRIMARY KEY (id);


--
-- Name: supplier_productvideo supplier_productvideo_pkey; Type: CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.supplier_productvideo
    ADD CONSTRAINT supplier_productvideo_pkey PRIMARY KEY (id);


--
-- Name: supplier_productvideo supplier_productvideo_slug_key; Type: CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.supplier_productvideo
    ADD CONSTRAINT supplier_productvideo_slug_key UNIQUE (slug);


--
-- Name: supplier_service supplier_service_pkey; Type: CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.supplier_service
    ADD CONSTRAINT supplier_service_pkey PRIMARY KEY (id);


--
-- Name: supplier_service supplier_service_slug_key; Type: CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.supplier_service
    ADD CONSTRAINT supplier_service_slug_key UNIQUE (slug);


--
-- Name: supplier_serviceimage supplier_serviceimage_pkey; Type: CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.supplier_serviceimage
    ADD CONSTRAINT supplier_serviceimage_pkey PRIMARY KEY (id);


--
-- Name: supplier_serviceimage supplier_serviceimage_slug_key; Type: CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.supplier_serviceimage
    ADD CONSTRAINT supplier_serviceimage_slug_key UNIQUE (slug);


--
-- Name: supplier_servicetag supplier_servicetag_pkey; Type: CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.supplier_servicetag
    ADD CONSTRAINT supplier_servicetag_pkey PRIMARY KEY (id);


--
-- Name: supplier_servicetag supplier_servicetag_slug_key; Type: CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.supplier_servicetag
    ADD CONSTRAINT supplier_servicetag_slug_key UNIQUE (slug);


--
-- Name: supplier_store supplier_store_pkey; Type: CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.supplier_store
    ADD CONSTRAINT supplier_store_pkey PRIMARY KEY (id);


--
-- Name: supplier_store supplier_store_slug_key; Type: CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.supplier_store
    ADD CONSTRAINT supplier_store_slug_key UNIQUE (slug);


--
-- Name: supplier_wishlistproduct supplier_wishlistproduct_pkey; Type: CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.supplier_wishlistproduct
    ADD CONSTRAINT supplier_wishlistproduct_pkey PRIMARY KEY (id);


--
-- Name: account_emailaddress_email_03be32b2; Type: INDEX; Schema: public; Owner: django_agriculture_user
--

CREATE INDEX account_emailaddress_email_03be32b2 ON public.account_emailaddress USING btree (email);


--
-- Name: account_emailaddress_email_03be32b2_like; Type: INDEX; Schema: public; Owner: django_agriculture_user
--

CREATE INDEX account_emailaddress_email_03be32b2_like ON public.account_emailaddress USING btree (email varchar_pattern_ops);


--
-- Name: account_emailaddress_user_id_2c513194; Type: INDEX; Schema: public; Owner: django_agriculture_user
--

CREATE INDEX account_emailaddress_user_id_2c513194 ON public.account_emailaddress USING btree (user_id);


--
-- Name: account_emailconfirmation_email_address_id_5b7f8c58; Type: INDEX; Schema: public; Owner: django_agriculture_user
--

CREATE INDEX account_emailconfirmation_email_address_id_5b7f8c58 ON public.account_emailconfirmation USING btree (email_address_id);


--
-- Name: account_emailconfirmation_key_f43612bd_like; Type: INDEX; Schema: public; Owner: django_agriculture_user
--

CREATE INDEX account_emailconfirmation_key_f43612bd_like ON public.account_emailconfirmation USING btree (key varchar_pattern_ops);


--
-- Name: auth_app_clientprofile_slug_8855f1ce_like; Type: INDEX; Schema: public; Owner: django_agriculture_user
--

CREATE INDEX auth_app_clientprofile_slug_8855f1ce_like ON public.auth_app_clientprofile USING btree (slug varchar_pattern_ops);


--
-- Name: auth_app_clientprofile_team_clientprofile_id_39a3e1ff; Type: INDEX; Schema: public; Owner: django_agriculture_user
--

CREATE INDEX auth_app_clientprofile_team_clientprofile_id_39a3e1ff ON public.auth_app_clientprofile_team USING btree (clientprofile_id);


--
-- Name: auth_app_clientprofile_team_user_id_01a6df3e; Type: INDEX; Schema: public; Owner: django_agriculture_user
--

CREATE INDEX auth_app_clientprofile_team_user_id_01a6df3e ON public.auth_app_clientprofile_team USING btree (user_id);


--
-- Name: auth_app_user_groups_group_id_b4576925; Type: INDEX; Schema: public; Owner: django_agriculture_user
--

CREATE INDEX auth_app_user_groups_group_id_b4576925 ON public.auth_app_user_groups USING btree (group_id);


--
-- Name: auth_app_user_groups_user_id_2b6e45f5; Type: INDEX; Schema: public; Owner: django_agriculture_user
--

CREATE INDEX auth_app_user_groups_user_id_2b6e45f5 ON public.auth_app_user_groups USING btree (user_id);


--
-- Name: auth_app_user_user_permissions_permission_id_cc1b2396; Type: INDEX; Schema: public; Owner: django_agriculture_user
--

CREATE INDEX auth_app_user_user_permissions_permission_id_cc1b2396 ON public.auth_app_user_user_permissions USING btree (permission_id);


--
-- Name: auth_app_user_user_permissions_user_id_b7c37328; Type: INDEX; Schema: public; Owner: django_agriculture_user
--

CREATE INDEX auth_app_user_user_permissions_user_id_b7c37328 ON public.auth_app_user_user_permissions USING btree (user_id);


--
-- Name: auth_app_user_username_31bc9e0e_like; Type: INDEX; Schema: public; Owner: django_agriculture_user
--

CREATE INDEX auth_app_user_username_31bc9e0e_like ON public.auth_app_user USING btree (username varchar_pattern_ops);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: django_agriculture_user
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: django_agriculture_user
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: django_agriculture_user
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: django_agriculture_user
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: buyer_cart_buyer_id_60276c20; Type: INDEX; Schema: public; Owner: django_agriculture_user
--

CREATE INDEX buyer_cart_buyer_id_60276c20 ON public.buyer_cart USING btree (buyer_id);


--
-- Name: coms_groupchat_chatfilepath_4bc07548_like; Type: INDEX; Schema: public; Owner: django_agriculture_user
--

CREATE INDEX coms_groupchat_chatfilepath_4bc07548_like ON public.coms_groupchat USING btree (chatfilepath varchar_pattern_ops);


--
-- Name: coms_groupchat_participants_groupchat_id_619966a9; Type: INDEX; Schema: public; Owner: django_agriculture_user
--

CREATE INDEX coms_groupchat_participants_groupchat_id_619966a9 ON public.coms_groupchat_participants USING btree (groupchat_id);


--
-- Name: coms_groupchat_participants_user_id_aa6bac36; Type: INDEX; Schema: public; Owner: django_agriculture_user
--

CREATE INDEX coms_groupchat_participants_user_id_aa6bac36 ON public.coms_groupchat_participants USING btree (user_id);


--
-- Name: coms_groupchat_roomname_944d0ed1_like; Type: INDEX; Schema: public; Owner: django_agriculture_user
--

CREATE INDEX coms_groupchat_roomname_944d0ed1_like ON public.coms_groupchat USING btree (roomname varchar_pattern_ops);


--
-- Name: coms_interclientchat_chatfilepath_bba9f3c2_like; Type: INDEX; Schema: public; Owner: django_agriculture_user
--

CREATE INDEX coms_interclientchat_chatfilepath_bba9f3c2_like ON public.coms_interclientchat USING btree (chatfilepath varchar_pattern_ops);


--
-- Name: coms_interclientchat_initiator_id_d8743854; Type: INDEX; Schema: public; Owner: django_agriculture_user
--

CREATE INDEX coms_interclientchat_initiator_id_d8743854 ON public.coms_interclientchat USING btree (initiator_id);


--
-- Name: coms_interclientchat_participant_id_0a9d6048; Type: INDEX; Schema: public; Owner: django_agriculture_user
--

CREATE INDEX coms_interclientchat_participant_id_0a9d6048 ON public.coms_interclientchat USING btree (participant_id);


--
-- Name: coms_interclientchat_roomname_d1dfdaa2_like; Type: INDEX; Schema: public; Owner: django_agriculture_user
--

CREATE INDEX coms_interclientchat_roomname_d1dfdaa2_like ON public.coms_interclientchat USING btree (roomname varchar_pattern_ops);


--
-- Name: coms_interuserchat_chatfilepath_b294ef43_like; Type: INDEX; Schema: public; Owner: django_agriculture_user
--

CREATE INDEX coms_interuserchat_chatfilepath_b294ef43_like ON public.coms_interuserchat USING btree (chatfilepath varchar_pattern_ops);


--
-- Name: coms_interuserchat_participants_interuserchat_id_abc939d9; Type: INDEX; Schema: public; Owner: django_agriculture_user
--

CREATE INDEX coms_interuserchat_participants_interuserchat_id_abc939d9 ON public.coms_interuserchat_participants USING btree (interuserchat_id);


--
-- Name: coms_interuserchat_participants_user_id_a5d9d291; Type: INDEX; Schema: public; Owner: django_agriculture_user
--

CREATE INDEX coms_interuserchat_participants_user_id_a5d9d291 ON public.coms_interuserchat_participants USING btree (user_id);


--
-- Name: coms_interuserchat_roomname_62e5bf63_like; Type: INDEX; Schema: public; Owner: django_agriculture_user
--

CREATE INDEX coms_interuserchat_roomname_62e5bf63_like ON public.coms_interuserchat USING btree (roomname varchar_pattern_ops);


--
-- Name: coms_orderchat_buyer_representative_id_f5c20fa8; Type: INDEX; Schema: public; Owner: django_agriculture_user
--

CREATE INDEX coms_orderchat_buyer_representative_id_f5c20fa8 ON public.coms_orderchat USING btree (buyer_representative_id);


--
-- Name: coms_orderchat_chatfilepath_fbf0d05e_like; Type: INDEX; Schema: public; Owner: django_agriculture_user
--

CREATE INDEX coms_orderchat_chatfilepath_fbf0d05e_like ON public.coms_orderchat USING btree (chatfilepath varchar_pattern_ops);


--
-- Name: coms_orderchat_roomname_a02c374b_like; Type: INDEX; Schema: public; Owner: django_agriculture_user
--

CREATE INDEX coms_orderchat_roomname_a02c374b_like ON public.coms_orderchat USING btree (roomname varchar_pattern_ops);


--
-- Name: coms_orderchat_supplier_representative_id_fea75338; Type: INDEX; Schema: public; Owner: django_agriculture_user
--

CREATE INDEX coms_orderchat_supplier_representative_id_fea75338 ON public.coms_orderchat USING btree (supplier_representative_id);


--
-- Name: coms_supportclientchat_chatfilepath_0b8136d4_like; Type: INDEX; Schema: public; Owner: django_agriculture_user
--

CREATE INDEX coms_supportclientchat_chatfilepath_0b8136d4_like ON public.coms_supportclientchat USING btree (chatfilepath varchar_pattern_ops);


--
-- Name: coms_supportclientchat_roomname_e216b1d4_like; Type: INDEX; Schema: public; Owner: django_agriculture_user
--

CREATE INDEX coms_supportclientchat_roomname_e216b1d4_like ON public.coms_supportclientchat USING btree (roomname varchar_pattern_ops);


--
-- Name: coms_supportclientchat_support_id_110c505c; Type: INDEX; Schema: public; Owner: django_agriculture_user
--

CREATE INDEX coms_supportclientchat_support_id_110c505c ON public.coms_supportclientchat USING btree (support_id);


--
-- Name: coms_supportclientchat_user_id_182fbc58; Type: INDEX; Schema: public; Owner: django_agriculture_user
--

CREATE INDEX coms_supportclientchat_user_id_182fbc58 ON public.coms_supportclientchat USING btree (user_id);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: django_agriculture_user
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: django_agriculture_user
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: django_agriculture_user
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: django_agriculture_user
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: django_site_domain_a2e37b91_like; Type: INDEX; Schema: public; Owner: django_agriculture_user
--

CREATE INDEX django_site_domain_a2e37b91_like ON public.django_site USING btree (domain varchar_pattern_ops);


--
-- Name: manager_advert_location_id_0dc97317; Type: INDEX; Schema: public; Owner: django_agriculture_user
--

CREATE INDEX manager_advert_location_id_0dc97317 ON public.manager_advert USING btree (location_id);


--
-- Name: manager_advert_product_id_65da07c5; Type: INDEX; Schema: public; Owner: django_agriculture_user
--

CREATE INDEX manager_advert_product_id_65da07c5 ON public.manager_advert USING btree (product_id);


--
-- Name: manager_advert_slug_eeeb4b5e_like; Type: INDEX; Schema: public; Owner: django_agriculture_user
--

CREATE INDEX manager_advert_slug_eeeb4b5e_like ON public.manager_advert USING btree (slug varchar_pattern_ops);


--
-- Name: manager_advertisinglocation_showroom_id_41ddf37c; Type: INDEX; Schema: public; Owner: django_agriculture_user
--

CREATE INDEX manager_advertisinglocation_showroom_id_41ddf37c ON public.manager_advertisinglocation USING btree (showroom_id);


--
-- Name: manager_calenderevent_business_id_53e6bec8; Type: INDEX; Schema: public; Owner: django_agriculture_user
--

CREATE INDEX manager_calenderevent_business_id_53e6bec8 ON public.manager_calenderevent USING btree (business_id);


--
-- Name: manager_discussion_slug_089f7675_like; Type: INDEX; Schema: public; Owner: django_agriculture_user
--

CREATE INDEX manager_discussion_slug_089f7675_like ON public.manager_discussion USING btree (slug varchar_pattern_ops);


--
-- Name: manager_discussion_user_id_d5865256; Type: INDEX; Schema: public; Owner: django_agriculture_user
--

CREATE INDEX manager_discussion_user_id_d5865256 ON public.manager_discussion USING btree (user_id);


--
-- Name: manager_discussionreply_discussion_id_643a929b; Type: INDEX; Schema: public; Owner: django_agriculture_user
--

CREATE INDEX manager_discussionreply_discussion_id_643a929b ON public.manager_discussionreply USING btree (discussion_id);


--
-- Name: manager_discussionreply_user_id_ca6060dd; Type: INDEX; Schema: public; Owner: django_agriculture_user
--

CREATE INDEX manager_discussionreply_user_id_ca6060dd ON public.manager_discussionreply USING btree (user_id);


--
-- Name: manager_emailpromotion_showroom_id_7ecf00ce; Type: INDEX; Schema: public; Owner: django_agriculture_user
--

CREATE INDEX manager_emailpromotion_showroom_id_7ecf00ce ON public.manager_emailpromotion USING btree (showroom_id);


--
-- Name: manager_emailpromotion_slug_a740182c_like; Type: INDEX; Schema: public; Owner: django_agriculture_user
--

CREATE INDEX manager_emailpromotion_slug_a740182c_like ON public.manager_emailpromotion USING btree (slug varchar_pattern_ops);


--
-- Name: manager_location_slug_9940b2ab_like; Type: INDEX; Schema: public; Owner: django_agriculture_user
--

CREATE INDEX manager_location_slug_9940b2ab_like ON public.manager_location USING btree (slug varchar_pattern_ops);


--
-- Name: manager_notification_target_id_a0d990ea; Type: INDEX; Schema: public; Owner: django_agriculture_user
--

CREATE INDEX manager_notification_target_id_a0d990ea ON public.manager_notification USING btree (target_id);


--
-- Name: manager_promotion_showroom_id_456bc74a; Type: INDEX; Schema: public; Owner: django_agriculture_user
--

CREATE INDEX manager_promotion_showroom_id_456bc74a ON public.manager_promotion USING btree (showroom_id);


--
-- Name: manager_promotion_slug_fe67d636_like; Type: INDEX; Schema: public; Owner: django_agriculture_user
--

CREATE INDEX manager_promotion_slug_fe67d636_like ON public.manager_promotion USING btree (slug varchar_pattern_ops);


--
-- Name: manager_service_slug_059ac103_like; Type: INDEX; Schema: public; Owner: django_agriculture_user
--

CREATE INDEX manager_service_slug_059ac103_like ON public.manager_service USING btree (slug varchar_pattern_ops);


--
-- Name: manager_serviceimage_service_id_b329cf1b; Type: INDEX; Schema: public; Owner: django_agriculture_user
--

CREATE INDEX manager_serviceimage_service_id_b329cf1b ON public.manager_serviceimage USING btree (service_id);


--
-- Name: manager_serviceimage_slug_8d509bab_like; Type: INDEX; Schema: public; Owner: django_agriculture_user
--

CREATE INDEX manager_serviceimage_slug_8d509bab_like ON public.manager_serviceimage USING btree (slug varchar_pattern_ops);


--
-- Name: manager_showroom_location_id_87c05668; Type: INDEX; Schema: public; Owner: django_agriculture_user
--

CREATE INDEX manager_showroom_location_id_87c05668 ON public.manager_showroom USING btree (location_id);


--
-- Name: manager_showroom_slug_a857c008_like; Type: INDEX; Schema: public; Owner: django_agriculture_user
--

CREATE INDEX manager_showroom_slug_a857c008_like ON public.manager_showroom USING btree (slug varchar_pattern_ops);


--
-- Name: manager_showroom_store_showroom_id_860442b9; Type: INDEX; Schema: public; Owner: django_agriculture_user
--

CREATE INDEX manager_showroom_store_showroom_id_860442b9 ON public.manager_showroom_store USING btree (showroom_id);


--
-- Name: manager_showroom_store_store_id_5da20b70; Type: INDEX; Schema: public; Owner: django_agriculture_user
--

CREATE INDEX manager_showroom_store_store_id_5da20b70 ON public.manager_showroom_store USING btree (store_id);


--
-- Name: payment_contract_buyer_id_b70e6da0; Type: INDEX; Schema: public; Owner: django_agriculture_user
--

CREATE INDEX payment_contract_buyer_id_b70e6da0 ON public.payment_contract USING btree (buyer_id);


--
-- Name: payment_contract_ref_no_95790182_like; Type: INDEX; Schema: public; Owner: django_agriculture_user
--

CREATE INDEX payment_contract_ref_no_95790182_like ON public.payment_contract USING btree (ref_no varchar_pattern_ops);


--
-- Name: payment_contract_service_id_20203005; Type: INDEX; Schema: public; Owner: django_agriculture_user
--

CREATE INDEX payment_contract_service_id_20203005 ON public.payment_contract USING btree (service_id);


--
-- Name: payment_contract_supplier_id_5906d20b; Type: INDEX; Schema: public; Owner: django_agriculture_user
--

CREATE INDEX payment_contract_supplier_id_5906d20b ON public.payment_contract USING btree (supplier_id);


--
-- Name: payment_contractreceipt_contract_id_6f545366; Type: INDEX; Schema: public; Owner: django_agriculture_user
--

CREATE INDEX payment_contractreceipt_contract_id_6f545366 ON public.payment_contractreceipt USING btree (contract_id);


--
-- Name: payment_contractreceipt_mode_of_payment_id_cfa76f38; Type: INDEX; Schema: public; Owner: django_agriculture_user
--

CREATE INDEX payment_contractreceipt_mode_of_payment_id_cfa76f38 ON public.payment_contractreceipt USING btree (mode_of_payment_id);


--
-- Name: payment_membership_client_id_d4e5eb3e; Type: INDEX; Schema: public; Owner: django_agriculture_user
--

CREATE INDEX payment_membership_client_id_d4e5eb3e ON public.payment_membership USING btree (client_id);


--
-- Name: payment_membership_feature_id_b59dd157; Type: INDEX; Schema: public; Owner: django_agriculture_user
--

CREATE INDEX payment_membership_feature_id_b59dd157 ON public.payment_membership USING btree (feature_id);


--
-- Name: payment_membership_previous_feature_id_50c952cf; Type: INDEX; Schema: public; Owner: django_agriculture_user
--

CREATE INDEX payment_membership_previous_feature_id_50c952cf ON public.payment_membership USING btree (previous_feature_id);


--
-- Name: payment_membership_upgrading_to_id_d849c0c7; Type: INDEX; Schema: public; Owner: django_agriculture_user
--

CREATE INDEX payment_membership_upgrading_to_id_d849c0c7 ON public.payment_membership USING btree (upgrading_to_id);


--
-- Name: payment_membershipgroup_slug_0432e744_like; Type: INDEX; Schema: public; Owner: django_agriculture_user
--

CREATE INDEX payment_membershipgroup_slug_0432e744_like ON public.payment_membershipgroup USING btree (slug varchar_pattern_ops);


--
-- Name: payment_membershipplan_features_feature_id_3aac4038; Type: INDEX; Schema: public; Owner: django_agriculture_user
--

CREATE INDEX payment_membershipplan_features_feature_id_3aac4038 ON public.payment_membershipplan_features USING btree (feature_id);


--
-- Name: payment_membershipplan_features_membershipplan_id_a2d1b8e1; Type: INDEX; Schema: public; Owner: django_agriculture_user
--

CREATE INDEX payment_membershipplan_features_membershipplan_id_a2d1b8e1 ON public.payment_membershipplan_features USING btree (membershipplan_id);


--
-- Name: payment_membershipplan_group_id_22659393; Type: INDEX; Schema: public; Owner: django_agriculture_user
--

CREATE INDEX payment_membershipplan_group_id_22659393 ON public.payment_membershipplan USING btree (group_id);


--
-- Name: payment_membershipplan_slug_3e52682b_like; Type: INDEX; Schema: public; Owner: django_agriculture_user
--

CREATE INDEX payment_membershipplan_slug_3e52682b_like ON public.payment_membershipplan USING btree (slug varchar_pattern_ops);


--
-- Name: payment_membershipreceipt_client_id_0848851e; Type: INDEX; Schema: public; Owner: django_agriculture_user
--

CREATE INDEX payment_membershipreceipt_client_id_0848851e ON public.payment_membershipreceipt USING btree (client_id);


--
-- Name: payment_modeofpayment_slug_afddf4b4_like; Type: INDEX; Schema: public; Owner: django_agriculture_user
--

CREATE INDEX payment_modeofpayment_slug_afddf4b4_like ON public.payment_modeofpayment USING btree (slug varchar_pattern_ops);


--
-- Name: payment_transaction_mpesa_code_e47775b8_like; Type: INDEX; Schema: public; Owner: django_agriculture_user
--

CREATE INDEX payment_transaction_mpesa_code_e47775b8_like ON public.payment_transaction USING btree (mpesa_code varchar_pattern_ops);


--
-- Name: socialaccount_socialaccount_user_id_8146e70c; Type: INDEX; Schema: public; Owner: django_agriculture_user
--

CREATE INDEX socialaccount_socialaccount_user_id_8146e70c ON public.socialaccount_socialaccount USING btree (user_id);


--
-- Name: socialaccount_socialapp_sites_site_id_2579dee5; Type: INDEX; Schema: public; Owner: django_agriculture_user
--

CREATE INDEX socialaccount_socialapp_sites_site_id_2579dee5 ON public.socialaccount_socialapp_sites USING btree (site_id);


--
-- Name: socialaccount_socialapp_sites_socialapp_id_97fb6e7d; Type: INDEX; Schema: public; Owner: django_agriculture_user
--

CREATE INDEX socialaccount_socialapp_sites_socialapp_id_97fb6e7d ON public.socialaccount_socialapp_sites USING btree (socialapp_id);


--
-- Name: socialaccount_socialtoken_account_id_951f210e; Type: INDEX; Schema: public; Owner: django_agriculture_user
--

CREATE INDEX socialaccount_socialtoken_account_id_951f210e ON public.socialaccount_socialtoken USING btree (account_id);


--
-- Name: socialaccount_socialtoken_app_id_636a42d7; Type: INDEX; Schema: public; Owner: django_agriculture_user
--

CREATE INDEX socialaccount_socialtoken_app_id_636a42d7 ON public.socialaccount_socialtoken USING btree (app_id);


--
-- Name: supplier_order_buyer_id_33de697d; Type: INDEX; Schema: public; Owner: django_agriculture_user
--

CREATE INDEX supplier_order_buyer_id_33de697d ON public.supplier_order USING btree (buyer_id);


--
-- Name: supplier_order_order_id_d9a5fbe7_like; Type: INDEX; Schema: public; Owner: django_agriculture_user
--

CREATE INDEX supplier_order_order_id_d9a5fbe7_like ON public.supplier_order USING btree (order_id varchar_pattern_ops);


--
-- Name: supplier_order_payment_id_57f3d513; Type: INDEX; Schema: public; Owner: django_agriculture_user
--

CREATE INDEX supplier_order_payment_id_57f3d513 ON public.supplier_order USING btree (payment_id);


--
-- Name: supplier_order_supplier_id_4292fc37; Type: INDEX; Schema: public; Owner: django_agriculture_user
--

CREATE INDEX supplier_order_supplier_id_4292fc37 ON public.supplier_order USING btree (supplier_id);


--
-- Name: supplier_ordernote_user_id_74f43a3c; Type: INDEX; Schema: public; Owner: django_agriculture_user
--

CREATE INDEX supplier_ordernote_user_id_74f43a3c ON public.supplier_ordernote USING btree (user_id);


--
-- Name: supplier_orderproductvariation_cart_id_0ce6675e; Type: INDEX; Schema: public; Owner: django_agriculture_user
--

CREATE INDEX supplier_orderproductvariation_cart_id_0ce6675e ON public.supplier_orderproductvariation USING btree (cart_id);


--
-- Name: supplier_orderproductvariation_color_id_e96f2f40; Type: INDEX; Schema: public; Owner: django_agriculture_user
--

CREATE INDEX supplier_orderproductvariation_color_id_e96f2f40 ON public.supplier_orderproductvariation USING btree (color_id);


--
-- Name: supplier_orderproductvariation_material_id_6a120db1; Type: INDEX; Schema: public; Owner: django_agriculture_user
--

CREATE INDEX supplier_orderproductvariation_material_id_6a120db1 ON public.supplier_orderproductvariation USING btree (material_id);


--
-- Name: supplier_orderproductvariation_order_id_6fe9284c; Type: INDEX; Schema: public; Owner: django_agriculture_user
--

CREATE INDEX supplier_orderproductvariation_order_id_6fe9284c ON public.supplier_orderproductvariation USING btree (order_id);


--
-- Name: supplier_orderproductvariation_price_id_56945920; Type: INDEX; Schema: public; Owner: django_agriculture_user
--

CREATE INDEX supplier_orderproductvariation_price_id_56945920 ON public.supplier_orderproductvariation USING btree (price_id);


--
-- Name: supplier_orderproductvariation_product_id_1e151f49; Type: INDEX; Schema: public; Owner: django_agriculture_user
--

CREATE INDEX supplier_orderproductvariation_product_id_1e151f49 ON public.supplier_orderproductvariation USING btree (product_id);


--
-- Name: supplier_product_business_id_e875e09b; Type: INDEX; Schema: public; Owner: django_agriculture_user
--

CREATE INDEX supplier_product_business_id_e875e09b ON public.supplier_product USING btree (business_id);


--
-- Name: supplier_product_category_id_fcab0966; Type: INDEX; Schema: public; Owner: django_agriculture_user
--

CREATE INDEX supplier_product_category_id_fcab0966 ON public.supplier_product USING btree (category_id);


--
-- Name: supplier_product_slug_bb394dfb_like; Type: INDEX; Schema: public; Owner: django_agriculture_user
--

CREATE INDEX supplier_product_slug_bb394dfb_like ON public.supplier_product USING btree (slug varchar_pattern_ops);


--
-- Name: supplier_product_store_product_id_1101525a; Type: INDEX; Schema: public; Owner: django_agriculture_user
--

CREATE INDEX supplier_product_store_product_id_1101525a ON public.supplier_product_store USING btree (product_id);


--
-- Name: supplier_product_store_store_id_cce92df5; Type: INDEX; Schema: public; Owner: django_agriculture_user
--

CREATE INDEX supplier_product_store_store_id_cce92df5 ON public.supplier_product_store USING btree (store_id);


--
-- Name: supplier_product_sub_category_id_6b95aa02; Type: INDEX; Schema: public; Owner: django_agriculture_user
--

CREATE INDEX supplier_product_sub_category_id_6b95aa02 ON public.supplier_product USING btree (sub_category_id);


--
-- Name: supplier_productcategory_slug_f7449658_like; Type: INDEX; Schema: public; Owner: django_agriculture_user
--

CREATE INDEX supplier_productcategory_slug_f7449658_like ON public.supplier_productcategory USING btree (slug varchar_pattern_ops);


--
-- Name: supplier_productcolor_product_id_50624bf9; Type: INDEX; Schema: public; Owner: django_agriculture_user
--

CREATE INDEX supplier_productcolor_product_id_50624bf9 ON public.supplier_productcolor USING btree (product_id);


--
-- Name: supplier_productimage_product_id_5f2b7070; Type: INDEX; Schema: public; Owner: django_agriculture_user
--

CREATE INDEX supplier_productimage_product_id_5f2b7070 ON public.supplier_productimage USING btree (product_id);


--
-- Name: supplier_productimage_slug_125e424e_like; Type: INDEX; Schema: public; Owner: django_agriculture_user
--

CREATE INDEX supplier_productimage_slug_125e424e_like ON public.supplier_productimage USING btree (slug varchar_pattern_ops);


--
-- Name: supplier_productmaterial_product_id_cd84c7dd; Type: INDEX; Schema: public; Owner: django_agriculture_user
--

CREATE INDEX supplier_productmaterial_product_id_cd84c7dd ON public.supplier_productmaterial USING btree (product_id);


--
-- Name: supplier_productprice_product_id_659a1b65; Type: INDEX; Schema: public; Owner: django_agriculture_user
--

CREATE INDEX supplier_productprice_product_id_659a1b65 ON public.supplier_productprice USING btree (product_id);


--
-- Name: supplier_productreview_business_id_a00a1f0b; Type: INDEX; Schema: public; Owner: django_agriculture_user
--

CREATE INDEX supplier_productreview_business_id_a00a1f0b ON public.supplier_productreview USING btree (business_id);


--
-- Name: supplier_productreview_product_id_b700d1a2; Type: INDEX; Schema: public; Owner: django_agriculture_user
--

CREATE INDEX supplier_productreview_product_id_b700d1a2 ON public.supplier_productreview USING btree (product_id);


--
-- Name: supplier_productsubcategory_category_id_2d3ab428; Type: INDEX; Schema: public; Owner: django_agriculture_user
--

CREATE INDEX supplier_productsubcategory_category_id_2d3ab428 ON public.supplier_productsubcategory USING btree (category_id);


--
-- Name: supplier_productsubcategory_slug_37a97192_like; Type: INDEX; Schema: public; Owner: django_agriculture_user
--

CREATE INDEX supplier_productsubcategory_slug_37a97192_like ON public.supplier_productsubcategory USING btree (slug varchar_pattern_ops);


--
-- Name: supplier_producttag_product_id_03807bef; Type: INDEX; Schema: public; Owner: django_agriculture_user
--

CREATE INDEX supplier_producttag_product_id_03807bef ON public.supplier_producttag USING btree (product_id);


--
-- Name: supplier_productvideo_product_id_f1897967; Type: INDEX; Schema: public; Owner: django_agriculture_user
--

CREATE INDEX supplier_productvideo_product_id_f1897967 ON public.supplier_productvideo USING btree (product_id);


--
-- Name: supplier_productvideo_slug_b6fd747e_like; Type: INDEX; Schema: public; Owner: django_agriculture_user
--

CREATE INDEX supplier_productvideo_slug_b6fd747e_like ON public.supplier_productvideo USING btree (slug varchar_pattern_ops);


--
-- Name: supplier_service_slug_f09d947d_like; Type: INDEX; Schema: public; Owner: django_agriculture_user
--

CREATE INDEX supplier_service_slug_f09d947d_like ON public.supplier_service USING btree (slug varchar_pattern_ops);


--
-- Name: supplier_service_supplier_id_a15f036b; Type: INDEX; Schema: public; Owner: django_agriculture_user
--

CREATE INDEX supplier_service_supplier_id_a15f036b ON public.supplier_service USING btree (supplier_id);


--
-- Name: supplier_serviceimage_service_id_ae128000; Type: INDEX; Schema: public; Owner: django_agriculture_user
--

CREATE INDEX supplier_serviceimage_service_id_ae128000 ON public.supplier_serviceimage USING btree (service_id);


--
-- Name: supplier_serviceimage_slug_08e4f5c7_like; Type: INDEX; Schema: public; Owner: django_agriculture_user
--

CREATE INDEX supplier_serviceimage_slug_08e4f5c7_like ON public.supplier_serviceimage USING btree (slug varchar_pattern_ops);


--
-- Name: supplier_servicetag_service_id_0eae94ec; Type: INDEX; Schema: public; Owner: django_agriculture_user
--

CREATE INDEX supplier_servicetag_service_id_0eae94ec ON public.supplier_servicetag USING btree (service_id);


--
-- Name: supplier_servicetag_slug_45441d51_like; Type: INDEX; Schema: public; Owner: django_agriculture_user
--

CREATE INDEX supplier_servicetag_slug_45441d51_like ON public.supplier_servicetag USING btree (slug varchar_pattern_ops);


--
-- Name: supplier_store_slug_8df22fa1_like; Type: INDEX; Schema: public; Owner: django_agriculture_user
--

CREATE INDEX supplier_store_slug_8df22fa1_like ON public.supplier_store USING btree (slug varchar_pattern_ops);


--
-- Name: supplier_store_supplier_id_d7bbffc3; Type: INDEX; Schema: public; Owner: django_agriculture_user
--

CREATE INDEX supplier_store_supplier_id_d7bbffc3 ON public.supplier_store USING btree (supplier_id);


--
-- Name: supplier_wishlistproduct_buyer_id_5c994e63; Type: INDEX; Schema: public; Owner: django_agriculture_user
--

CREATE INDEX supplier_wishlistproduct_buyer_id_5c994e63 ON public.supplier_wishlistproduct USING btree (buyer_id);


--
-- Name: supplier_wishlistproduct_product_id_811c4e6a; Type: INDEX; Schema: public; Owner: django_agriculture_user
--

CREATE INDEX supplier_wishlistproduct_product_id_811c4e6a ON public.supplier_wishlistproduct USING btree (product_id);


--
-- Name: unique_primary_email; Type: INDEX; Schema: public; Owner: django_agriculture_user
--

CREATE UNIQUE INDEX unique_primary_email ON public.account_emailaddress USING btree (user_id, "primary") WHERE "primary";


--
-- Name: unique_verified_email; Type: INDEX; Schema: public; Owner: django_agriculture_user
--

CREATE UNIQUE INDEX unique_verified_email ON public.account_emailaddress USING btree (email) WHERE verified;


--
-- Name: account_emailaddress account_emailaddress_user_id_2c513194_fk_auth_app_user_id; Type: FK CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.account_emailaddress
    ADD CONSTRAINT account_emailaddress_user_id_2c513194_fk_auth_app_user_id FOREIGN KEY (user_id) REFERENCES public.auth_app_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: account_emailconfirmation account_emailconfirm_email_address_id_5b7f8c58_fk_account_e; Type: FK CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.account_emailconfirmation
    ADD CONSTRAINT account_emailconfirm_email_address_id_5b7f8c58_fk_account_e FOREIGN KEY (email_address_id) REFERENCES public.account_emailaddress(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_app_clientprofile_team auth_app_clientprofi_clientprofile_id_39a3e1ff_fk_auth_app_; Type: FK CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.auth_app_clientprofile_team
    ADD CONSTRAINT auth_app_clientprofi_clientprofile_id_39a3e1ff_fk_auth_app_ FOREIGN KEY (clientprofile_id) REFERENCES public.auth_app_clientprofile(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_app_clientprofile_team auth_app_clientprofi_user_id_01a6df3e_fk_auth_app_; Type: FK CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.auth_app_clientprofile_team
    ADD CONSTRAINT auth_app_clientprofi_user_id_01a6df3e_fk_auth_app_ FOREIGN KEY (user_id) REFERENCES public.auth_app_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_app_clientprofile auth_app_clientprofile_user_id_0b61782b_fk_auth_app_user_id; Type: FK CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.auth_app_clientprofile
    ADD CONSTRAINT auth_app_clientprofile_user_id_0b61782b_fk_auth_app_user_id FOREIGN KEY (user_id) REFERENCES public.auth_app_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_app_supportprofile auth_app_supportprofile_user_id_e53c684a_fk_auth_app_user_id; Type: FK CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.auth_app_supportprofile
    ADD CONSTRAINT auth_app_supportprofile_user_id_e53c684a_fk_auth_app_user_id FOREIGN KEY (user_id) REFERENCES public.auth_app_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_app_user_groups auth_app_user_groups_group_id_b4576925_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.auth_app_user_groups
    ADD CONSTRAINT auth_app_user_groups_group_id_b4576925_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_app_user_groups auth_app_user_groups_user_id_2b6e45f5_fk_auth_app_user_id; Type: FK CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.auth_app_user_groups
    ADD CONSTRAINT auth_app_user_groups_user_id_2b6e45f5_fk_auth_app_user_id FOREIGN KEY (user_id) REFERENCES public.auth_app_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_app_user_user_permissions auth_app_user_user_p_permission_id_cc1b2396_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.auth_app_user_user_permissions
    ADD CONSTRAINT auth_app_user_user_p_permission_id_cc1b2396_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_app_user_user_permissions auth_app_user_user_p_user_id_b7c37328_fk_auth_app_; Type: FK CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.auth_app_user_user_permissions
    ADD CONSTRAINT auth_app_user_user_p_user_id_b7c37328_fk_auth_app_ FOREIGN KEY (user_id) REFERENCES public.auth_app_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: buyer_cart buyer_cart_buyer_id_60276c20_fk_auth_app_clientprofile_id; Type: FK CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.buyer_cart
    ADD CONSTRAINT buyer_cart_buyer_id_60276c20_fk_auth_app_clientprofile_id FOREIGN KEY (buyer_id) REFERENCES public.auth_app_clientprofile(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: coms_groupchat_participants coms_groupchat_parti_user_id_aa6bac36_fk_auth_app_; Type: FK CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.coms_groupchat_participants
    ADD CONSTRAINT coms_groupchat_parti_user_id_aa6bac36_fk_auth_app_ FOREIGN KEY (user_id) REFERENCES public.auth_app_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: coms_groupchat_participants coms_groupchat_participants_groupchat_id_619966a9_fk; Type: FK CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.coms_groupchat_participants
    ADD CONSTRAINT coms_groupchat_participants_groupchat_id_619966a9_fk FOREIGN KEY (groupchat_id) REFERENCES public.coms_groupchat(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: coms_interclientchat coms_interclientchat_initiator_id_d8743854_fk_auth_app_; Type: FK CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.coms_interclientchat
    ADD CONSTRAINT coms_interclientchat_initiator_id_d8743854_fk_auth_app_ FOREIGN KEY (initiator_id) REFERENCES public.auth_app_clientprofile(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: coms_interclientchat coms_interclientchat_participant_id_0a9d6048_fk_auth_app_; Type: FK CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.coms_interclientchat
    ADD CONSTRAINT coms_interclientchat_participant_id_0a9d6048_fk_auth_app_ FOREIGN KEY (participant_id) REFERENCES public.auth_app_clientprofile(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: coms_interuserchat_participants coms_interuserchat_p_user_id_a5d9d291_fk_auth_app_; Type: FK CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.coms_interuserchat_participants
    ADD CONSTRAINT coms_interuserchat_p_user_id_a5d9d291_fk_auth_app_ FOREIGN KEY (user_id) REFERENCES public.auth_app_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: coms_interuserchat_participants coms_interuserchat_participants_interuserchat_id_abc939d9_fk; Type: FK CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.coms_interuserchat_participants
    ADD CONSTRAINT coms_interuserchat_participants_interuserchat_id_abc939d9_fk FOREIGN KEY (interuserchat_id) REFERENCES public.coms_interuserchat(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: coms_orderchat coms_orderchat_buyer_representative_f5c20fa8_fk_auth_app_; Type: FK CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.coms_orderchat
    ADD CONSTRAINT coms_orderchat_buyer_representative_f5c20fa8_fk_auth_app_ FOREIGN KEY (buyer_representative_id) REFERENCES public.auth_app_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: coms_orderchat coms_orderchat_order_id_1d711362_fk_supplier_order_id; Type: FK CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.coms_orderchat
    ADD CONSTRAINT coms_orderchat_order_id_1d711362_fk_supplier_order_id FOREIGN KEY (order_id) REFERENCES public.supplier_order(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: coms_orderchat coms_orderchat_supplier_representat_fea75338_fk_auth_app_; Type: FK CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.coms_orderchat
    ADD CONSTRAINT coms_orderchat_supplier_representat_fea75338_fk_auth_app_ FOREIGN KEY (supplier_representative_id) REFERENCES public.auth_app_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: coms_supportclientchat coms_supportclientch_support_id_110c505c_fk_auth_app_; Type: FK CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.coms_supportclientchat
    ADD CONSTRAINT coms_supportclientch_support_id_110c505c_fk_auth_app_ FOREIGN KEY (support_id) REFERENCES public.auth_app_supportprofile(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: coms_supportclientchat coms_supportclientchat_user_id_182fbc58_fk_auth_app_user_id; Type: FK CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.coms_supportclientchat
    ADD CONSTRAINT coms_supportclientchat_user_id_182fbc58_fk_auth_app_user_id FOREIGN KEY (user_id) REFERENCES public.auth_app_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_app_user_id; Type: FK CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_app_user_id FOREIGN KEY (user_id) REFERENCES public.auth_app_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: manager_advert manager_advert_location_id_0dc97317_fk_manager_a; Type: FK CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.manager_advert
    ADD CONSTRAINT manager_advert_location_id_0dc97317_fk_manager_a FOREIGN KEY (location_id) REFERENCES public.manager_advertisinglocation(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: manager_advert manager_advert_product_id_65da07c5_fk_supplier_product_id; Type: FK CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.manager_advert
    ADD CONSTRAINT manager_advert_product_id_65da07c5_fk_supplier_product_id FOREIGN KEY (product_id) REFERENCES public.supplier_product(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: manager_advertisinglocation manager_advertisingl_showroom_id_41ddf37c_fk_manager_s; Type: FK CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.manager_advertisinglocation
    ADD CONSTRAINT manager_advertisingl_showroom_id_41ddf37c_fk_manager_s FOREIGN KEY (showroom_id) REFERENCES public.manager_showroom(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: manager_calenderevent manager_calendereven_business_id_53e6bec8_fk_auth_app_; Type: FK CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.manager_calenderevent
    ADD CONSTRAINT manager_calendereven_business_id_53e6bec8_fk_auth_app_ FOREIGN KEY (business_id) REFERENCES public.auth_app_clientprofile(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: manager_discussion manager_discussion_user_id_d5865256_fk_auth_app_user_id; Type: FK CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.manager_discussion
    ADD CONSTRAINT manager_discussion_user_id_d5865256_fk_auth_app_user_id FOREIGN KEY (user_id) REFERENCES public.auth_app_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: manager_discussionreply manager_discussionre_discussion_id_643a929b_fk_manager_d; Type: FK CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.manager_discussionreply
    ADD CONSTRAINT manager_discussionre_discussion_id_643a929b_fk_manager_d FOREIGN KEY (discussion_id) REFERENCES public.manager_discussion(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: manager_discussionreply manager_discussionreply_user_id_ca6060dd_fk_auth_app_user_id; Type: FK CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.manager_discussionreply
    ADD CONSTRAINT manager_discussionreply_user_id_ca6060dd_fk_auth_app_user_id FOREIGN KEY (user_id) REFERENCES public.auth_app_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: manager_emailpromotion manager_emailpromoti_showroom_id_7ecf00ce_fk_manager_s; Type: FK CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.manager_emailpromotion
    ADD CONSTRAINT manager_emailpromoti_showroom_id_7ecf00ce_fk_manager_s FOREIGN KEY (showroom_id) REFERENCES public.manager_showroom(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: manager_notification manager_notification_target_id_a0d990ea_fk_auth_app_; Type: FK CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.manager_notification
    ADD CONSTRAINT manager_notification_target_id_a0d990ea_fk_auth_app_ FOREIGN KEY (target_id) REFERENCES public.auth_app_clientprofile(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: manager_promotion manager_promotion_showroom_id_456bc74a_fk_manager_showroom_id; Type: FK CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.manager_promotion
    ADD CONSTRAINT manager_promotion_showroom_id_456bc74a_fk_manager_showroom_id FOREIGN KEY (showroom_id) REFERENCES public.manager_showroom(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: manager_serviceimage manager_serviceimage_service_id_b329cf1b_fk_manager_service_id; Type: FK CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.manager_serviceimage
    ADD CONSTRAINT manager_serviceimage_service_id_b329cf1b_fk_manager_service_id FOREIGN KEY (service_id) REFERENCES public.manager_service(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: manager_showroom manager_showroom_location_id_87c05668_fk_manager_location_id; Type: FK CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.manager_showroom
    ADD CONSTRAINT manager_showroom_location_id_87c05668_fk_manager_location_id FOREIGN KEY (location_id) REFERENCES public.manager_location(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: manager_showroom_store manager_showroom_sto_showroom_id_860442b9_fk_manager_s; Type: FK CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.manager_showroom_store
    ADD CONSTRAINT manager_showroom_sto_showroom_id_860442b9_fk_manager_s FOREIGN KEY (showroom_id) REFERENCES public.manager_showroom(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: manager_showroom_store manager_showroom_store_store_id_5da20b70_fk_supplier_store_id; Type: FK CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.manager_showroom_store
    ADD CONSTRAINT manager_showroom_store_store_id_5da20b70_fk_supplier_store_id FOREIGN KEY (store_id) REFERENCES public.supplier_store(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: payment_braintreesubscription payment_braintreesub_membership_id_2b12583b_fk_payment_m; Type: FK CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.payment_braintreesubscription
    ADD CONSTRAINT payment_braintreesub_membership_id_2b12583b_fk_payment_m FOREIGN KEY (membership_id) REFERENCES public.payment_membership(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: payment_cardpayment payment_cardpayment_subscription_id_ff41091f_fk_payment_b; Type: FK CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.payment_cardpayment
    ADD CONSTRAINT payment_cardpayment_subscription_id_ff41091f_fk_payment_b FOREIGN KEY (subscription_id) REFERENCES public.payment_braintreesubscription(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: payment_contract payment_contract_buyer_id_b70e6da0_fk_auth_app_user_id; Type: FK CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.payment_contract
    ADD CONSTRAINT payment_contract_buyer_id_b70e6da0_fk_auth_app_user_id FOREIGN KEY (buyer_id) REFERENCES public.auth_app_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: payment_contract payment_contract_service_id_20203005_fk_supplier_service_id; Type: FK CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.payment_contract
    ADD CONSTRAINT payment_contract_service_id_20203005_fk_supplier_service_id FOREIGN KEY (service_id) REFERENCES public.supplier_service(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: payment_contract payment_contract_supplier_id_5906d20b_fk_auth_app_user_id; Type: FK CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.payment_contract
    ADD CONSTRAINT payment_contract_supplier_id_5906d20b_fk_auth_app_user_id FOREIGN KEY (supplier_id) REFERENCES public.auth_app_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: payment_contractreceipt payment_contractrece_contract_id_6f545366_fk_payment_c; Type: FK CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.payment_contractreceipt
    ADD CONSTRAINT payment_contractrece_contract_id_6f545366_fk_payment_c FOREIGN KEY (contract_id) REFERENCES public.payment_contract(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: payment_contractreceipt payment_contractrece_mode_of_payment_id_cfa76f38_fk_payment_m; Type: FK CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.payment_contractreceipt
    ADD CONSTRAINT payment_contractrece_mode_of_payment_id_cfa76f38_fk_payment_m FOREIGN KEY (mode_of_payment_id) REFERENCES public.payment_modeofpayment(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: payment_membership payment_membership_client_id_d4e5eb3e_fk_auth_app_user_id; Type: FK CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.payment_membership
    ADD CONSTRAINT payment_membership_client_id_d4e5eb3e_fk_auth_app_user_id FOREIGN KEY (client_id) REFERENCES public.auth_app_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: payment_membership payment_membership_feature_id_b59dd157_fk_payment_feature_id; Type: FK CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.payment_membership
    ADD CONSTRAINT payment_membership_feature_id_b59dd157_fk_payment_feature_id FOREIGN KEY (feature_id) REFERENCES public.payment_feature(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: payment_membership payment_membership_previous_feature_id_50c952cf_fk_payment_f; Type: FK CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.payment_membership
    ADD CONSTRAINT payment_membership_previous_feature_id_50c952cf_fk_payment_f FOREIGN KEY (previous_feature_id) REFERENCES public.payment_feature(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: payment_membership payment_membership_upgrading_to_id_d849c0c7_fk_payment_f; Type: FK CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.payment_membership
    ADD CONSTRAINT payment_membership_upgrading_to_id_d849c0c7_fk_payment_f FOREIGN KEY (upgrading_to_id) REFERENCES public.payment_feature(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: payment_membershipplan_features payment_membershippl_feature_id_3aac4038_fk_payment_f; Type: FK CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.payment_membershipplan_features
    ADD CONSTRAINT payment_membershippl_feature_id_3aac4038_fk_payment_f FOREIGN KEY (feature_id) REFERENCES public.payment_feature(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: payment_membershipplan payment_membershippl_group_id_22659393_fk_payment_m; Type: FK CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.payment_membershipplan
    ADD CONSTRAINT payment_membershippl_group_id_22659393_fk_payment_m FOREIGN KEY (group_id) REFERENCES public.payment_membershipgroup(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: payment_membershipplan_features payment_membershippl_membershipplan_id_a2d1b8e1_fk_payment_m; Type: FK CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.payment_membershipplan_features
    ADD CONSTRAINT payment_membershippl_membershipplan_id_a2d1b8e1_fk_payment_m FOREIGN KEY (membershipplan_id) REFERENCES public.payment_membershipplan(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: payment_membershipreceipt payment_membershipre_client_id_0848851e_fk_auth_app_; Type: FK CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.payment_membershipreceipt
    ADD CONSTRAINT payment_membershipre_client_id_0848851e_fk_auth_app_ FOREIGN KEY (client_id) REFERENCES public.auth_app_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: payment_paypalsubscription payment_paypalsubscr_membership_id_999c0ef9_fk_payment_m; Type: FK CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.payment_paypalsubscription
    ADD CONSTRAINT payment_paypalsubscr_membership_id_999c0ef9_fk_payment_m FOREIGN KEY (membership_id) REFERENCES public.payment_membership(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: socialaccount_socialtoken socialaccount_social_account_id_951f210e_fk_socialacc; Type: FK CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.socialaccount_socialtoken
    ADD CONSTRAINT socialaccount_social_account_id_951f210e_fk_socialacc FOREIGN KEY (account_id) REFERENCES public.socialaccount_socialaccount(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: socialaccount_socialtoken socialaccount_social_app_id_636a42d7_fk_socialacc; Type: FK CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.socialaccount_socialtoken
    ADD CONSTRAINT socialaccount_social_app_id_636a42d7_fk_socialacc FOREIGN KEY (app_id) REFERENCES public.socialaccount_socialapp(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: socialaccount_socialapp_sites socialaccount_social_site_id_2579dee5_fk_django_si; Type: FK CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.socialaccount_socialapp_sites
    ADD CONSTRAINT socialaccount_social_site_id_2579dee5_fk_django_si FOREIGN KEY (site_id) REFERENCES public.django_site(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: socialaccount_socialapp_sites socialaccount_social_socialapp_id_97fb6e7d_fk_socialacc; Type: FK CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.socialaccount_socialapp_sites
    ADD CONSTRAINT socialaccount_social_socialapp_id_97fb6e7d_fk_socialacc FOREIGN KEY (socialapp_id) REFERENCES public.socialaccount_socialapp(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: socialaccount_socialaccount socialaccount_social_user_id_8146e70c_fk_auth_app_; Type: FK CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.socialaccount_socialaccount
    ADD CONSTRAINT socialaccount_social_user_id_8146e70c_fk_auth_app_ FOREIGN KEY (user_id) REFERENCES public.auth_app_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: supplier_order supplier_order_buyer_id_33de697d_fk_auth_app_clientprofile_id; Type: FK CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.supplier_order
    ADD CONSTRAINT supplier_order_buyer_id_33de697d_fk_auth_app_clientprofile_id FOREIGN KEY (buyer_id) REFERENCES public.auth_app_clientprofile(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: supplier_order supplier_order_payment_id_57f3d513_fk_payment_transaction_id; Type: FK CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.supplier_order
    ADD CONSTRAINT supplier_order_payment_id_57f3d513_fk_payment_transaction_id FOREIGN KEY (payment_id) REFERENCES public.payment_transaction(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: supplier_order supplier_order_supplier_id_4292fc37_fk_auth_app_; Type: FK CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.supplier_order
    ADD CONSTRAINT supplier_order_supplier_id_4292fc37_fk_auth_app_ FOREIGN KEY (supplier_id) REFERENCES public.auth_app_clientprofile(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: supplier_ordernote supplier_ordernote_order_id_c0e1580d_fk_supplier_order_id; Type: FK CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.supplier_ordernote
    ADD CONSTRAINT supplier_ordernote_order_id_c0e1580d_fk_supplier_order_id FOREIGN KEY (order_id) REFERENCES public.supplier_order(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: supplier_ordernote supplier_ordernote_user_id_74f43a3c_fk_auth_app_user_id; Type: FK CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.supplier_ordernote
    ADD CONSTRAINT supplier_ordernote_user_id_74f43a3c_fk_auth_app_user_id FOREIGN KEY (user_id) REFERENCES public.auth_app_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: supplier_orderproductvariation supplier_orderproduc_cart_id_0ce6675e_fk_buyer_car; Type: FK CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.supplier_orderproductvariation
    ADD CONSTRAINT supplier_orderproduc_cart_id_0ce6675e_fk_buyer_car FOREIGN KEY (cart_id) REFERENCES public.buyer_cart(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: supplier_orderproductvariation supplier_orderproduc_color_id_e96f2f40_fk_supplier_; Type: FK CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.supplier_orderproductvariation
    ADD CONSTRAINT supplier_orderproduc_color_id_e96f2f40_fk_supplier_ FOREIGN KEY (color_id) REFERENCES public.supplier_productcolor(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: supplier_orderproductvariation supplier_orderproduc_material_id_6a120db1_fk_supplier_; Type: FK CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.supplier_orderproductvariation
    ADD CONSTRAINT supplier_orderproduc_material_id_6a120db1_fk_supplier_ FOREIGN KEY (material_id) REFERENCES public.supplier_productmaterial(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: supplier_orderproductvariation supplier_orderproduc_order_id_6fe9284c_fk_supplier_; Type: FK CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.supplier_orderproductvariation
    ADD CONSTRAINT supplier_orderproduc_order_id_6fe9284c_fk_supplier_ FOREIGN KEY (order_id) REFERENCES public.supplier_order(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: supplier_orderproductvariation supplier_orderproduc_price_id_56945920_fk_supplier_; Type: FK CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.supplier_orderproductvariation
    ADD CONSTRAINT supplier_orderproduc_price_id_56945920_fk_supplier_ FOREIGN KEY (price_id) REFERENCES public.supplier_productprice(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: supplier_orderproductvariation supplier_orderproduc_product_id_1e151f49_fk_supplier_; Type: FK CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.supplier_orderproductvariation
    ADD CONSTRAINT supplier_orderproduc_product_id_1e151f49_fk_supplier_ FOREIGN KEY (product_id) REFERENCES public.supplier_product(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: supplier_ordershippingdetail supplier_ordershippi_carrier_id_2f48e1e2_fk_supplier_; Type: FK CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.supplier_ordershippingdetail
    ADD CONSTRAINT supplier_ordershippi_carrier_id_2f48e1e2_fk_supplier_ FOREIGN KEY (carrier_id) REFERENCES public.supplier_deliverycarrier(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: supplier_ordershippingdetail supplier_ordershippi_order_id_2f8fd135_fk_supplier_; Type: FK CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.supplier_ordershippingdetail
    ADD CONSTRAINT supplier_ordershippi_order_id_2f8fd135_fk_supplier_ FOREIGN KEY (order_id) REFERENCES public.supplier_order(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: supplier_product supplier_product_business_id_e875e09b_fk_auth_app_; Type: FK CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.supplier_product
    ADD CONSTRAINT supplier_product_business_id_e875e09b_fk_auth_app_ FOREIGN KEY (business_id) REFERENCES public.auth_app_clientprofile(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: supplier_product supplier_product_category_id_fcab0966_fk_supplier_; Type: FK CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.supplier_product
    ADD CONSTRAINT supplier_product_category_id_fcab0966_fk_supplier_ FOREIGN KEY (category_id) REFERENCES public.supplier_productcategory(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: supplier_product_store supplier_product_sto_product_id_1101525a_fk_supplier_; Type: FK CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.supplier_product_store
    ADD CONSTRAINT supplier_product_sto_product_id_1101525a_fk_supplier_ FOREIGN KEY (product_id) REFERENCES public.supplier_product(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: supplier_product_store supplier_product_store_store_id_cce92df5_fk_supplier_store_id; Type: FK CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.supplier_product_store
    ADD CONSTRAINT supplier_product_store_store_id_cce92df5_fk_supplier_store_id FOREIGN KEY (store_id) REFERENCES public.supplier_store(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: supplier_product supplier_product_sub_category_id_6b95aa02_fk_supplier_; Type: FK CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.supplier_product
    ADD CONSTRAINT supplier_product_sub_category_id_6b95aa02_fk_supplier_ FOREIGN KEY (sub_category_id) REFERENCES public.supplier_productsubcategory(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: supplier_productcolor supplier_productcolo_product_id_50624bf9_fk_supplier_; Type: FK CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.supplier_productcolor
    ADD CONSTRAINT supplier_productcolo_product_id_50624bf9_fk_supplier_ FOREIGN KEY (product_id) REFERENCES public.supplier_product(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: supplier_productimage supplier_productimag_product_id_5f2b7070_fk_supplier_; Type: FK CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.supplier_productimage
    ADD CONSTRAINT supplier_productimag_product_id_5f2b7070_fk_supplier_ FOREIGN KEY (product_id) REFERENCES public.supplier_product(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: supplier_productmaterial supplier_productmate_product_id_cd84c7dd_fk_supplier_; Type: FK CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.supplier_productmaterial
    ADD CONSTRAINT supplier_productmate_product_id_cd84c7dd_fk_supplier_ FOREIGN KEY (product_id) REFERENCES public.supplier_product(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: supplier_productprice supplier_productpric_product_id_659a1b65_fk_supplier_; Type: FK CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.supplier_productprice
    ADD CONSTRAINT supplier_productpric_product_id_659a1b65_fk_supplier_ FOREIGN KEY (product_id) REFERENCES public.supplier_product(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: supplier_productreview supplier_productrevi_business_id_a00a1f0b_fk_auth_app_; Type: FK CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.supplier_productreview
    ADD CONSTRAINT supplier_productrevi_business_id_a00a1f0b_fk_auth_app_ FOREIGN KEY (business_id) REFERENCES public.auth_app_clientprofile(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: supplier_productreview supplier_productrevi_product_id_b700d1a2_fk_supplier_; Type: FK CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.supplier_productreview
    ADD CONSTRAINT supplier_productrevi_product_id_b700d1a2_fk_supplier_ FOREIGN KEY (product_id) REFERENCES public.supplier_product(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: supplier_productsubcategory supplier_productsubc_category_id_2d3ab428_fk_supplier_; Type: FK CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.supplier_productsubcategory
    ADD CONSTRAINT supplier_productsubc_category_id_2d3ab428_fk_supplier_ FOREIGN KEY (category_id) REFERENCES public.supplier_productcategory(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: supplier_producttag supplier_producttag_product_id_03807bef_fk_supplier_product_id; Type: FK CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.supplier_producttag
    ADD CONSTRAINT supplier_producttag_product_id_03807bef_fk_supplier_product_id FOREIGN KEY (product_id) REFERENCES public.supplier_product(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: supplier_productvideo supplier_productvide_product_id_f1897967_fk_supplier_; Type: FK CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.supplier_productvideo
    ADD CONSTRAINT supplier_productvide_product_id_f1897967_fk_supplier_ FOREIGN KEY (product_id) REFERENCES public.supplier_product(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: supplier_service supplier_service_supplier_id_a15f036b_fk_auth_app_user_id; Type: FK CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.supplier_service
    ADD CONSTRAINT supplier_service_supplier_id_a15f036b_fk_auth_app_user_id FOREIGN KEY (supplier_id) REFERENCES public.auth_app_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: supplier_serviceimage supplier_serviceimag_service_id_ae128000_fk_supplier_; Type: FK CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.supplier_serviceimage
    ADD CONSTRAINT supplier_serviceimag_service_id_ae128000_fk_supplier_ FOREIGN KEY (service_id) REFERENCES public.supplier_service(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: supplier_servicetag supplier_servicetag_service_id_0eae94ec_fk_supplier_service_id; Type: FK CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.supplier_servicetag
    ADD CONSTRAINT supplier_servicetag_service_id_0eae94ec_fk_supplier_service_id FOREIGN KEY (service_id) REFERENCES public.supplier_service(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: supplier_store supplier_store_supplier_id_d7bbffc3_fk_auth_app_user_id; Type: FK CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.supplier_store
    ADD CONSTRAINT supplier_store_supplier_id_d7bbffc3_fk_auth_app_user_id FOREIGN KEY (supplier_id) REFERENCES public.auth_app_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: supplier_wishlistproduct supplier_wishlistpro_buyer_id_5c994e63_fk_auth_app_; Type: FK CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.supplier_wishlistproduct
    ADD CONSTRAINT supplier_wishlistpro_buyer_id_5c994e63_fk_auth_app_ FOREIGN KEY (buyer_id) REFERENCES public.auth_app_clientprofile(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: supplier_wishlistproduct supplier_wishlistpro_product_id_811c4e6a_fk_supplier_; Type: FK CONSTRAINT; Schema: public; Owner: django_agriculture_user
--

ALTER TABLE ONLY public.supplier_wishlistproduct
    ADD CONSTRAINT supplier_wishlistpro_product_id_811c4e6a_fk_supplier_ FOREIGN KEY (product_id) REFERENCES public.supplier_product(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

