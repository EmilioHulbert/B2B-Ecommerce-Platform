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
-- Name: public; Type: SCHEMA; Schema: -; Owner: b2b_user
--

-- *not* creating schema, since initdb creates it


ALTER SCHEMA public OWNER TO b2b_user;

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
-- Name: coms_interclientmessage; Type: TABLE; Schema: public; Owner: b2b_user
--

CREATE TABLE public.coms_interclientmessage (
    id bigint NOT NULL,
    message text NOT NULL,
    "timestamp" timestamp with time zone NOT NULL,
    chat_id bigint NOT NULL,
    sender_id bigint NOT NULL
);


ALTER TABLE public.coms_interclientmessage OWNER TO b2b_user;

--
-- Name: coms_interclientmessage_id_seq; Type: SEQUENCE; Schema: public; Owner: b2b_user
--

CREATE SEQUENCE public.coms_interclientmessage_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.coms_interclientmessage_id_seq OWNER TO b2b_user;

--
-- Name: coms_interclientmessage_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: b2b_user
--

ALTER SEQUENCE public.coms_interclientmessage_id_seq OWNED BY public.coms_interclientmessage.id;


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
-- Name: manager_careerapplication; Type: TABLE; Schema: public; Owner: b2b_user
--

CREATE TABLE public.manager_careerapplication (
    id bigint NOT NULL,
    name character varying(100) NOT NULL,
    phone character varying(15) NOT NULL,
    email character varying(254) NOT NULL,
    status character varying(50) NOT NULL,
    experience integer NOT NULL,
    details text NOT NULL,
    resume character varying(100) NOT NULL,
    submitted_at timestamp with time zone NOT NULL,
    CONSTRAINT manager_careerapplication_experience_check CHECK ((experience >= 0))
);


ALTER TABLE public.manager_careerapplication OWNER TO b2b_user;

--
-- Name: manager_careerapplication_id_seq; Type: SEQUENCE; Schema: public; Owner: b2b_user
--

CREATE SEQUENCE public.manager_careerapplication_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.manager_careerapplication_id_seq OWNER TO b2b_user;

--
-- Name: manager_careerapplication_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: b2b_user
--

ALTER SEQUENCE public.manager_careerapplication_id_seq OWNED BY public.manager_careerapplication.id;


--
-- Name: manager_contactmessage; Type: TABLE; Schema: public; Owner: b2b_user
--

CREATE TABLE public.manager_contactmessage (
    id bigint NOT NULL,
    name character varying(100) NOT NULL,
    phone character varying(15) NOT NULL,
    email character varying(254) NOT NULL,
    message text NOT NULL,
    submitted_at timestamp with time zone NOT NULL
);


ALTER TABLE public.manager_contactmessage OWNER TO b2b_user;

--
-- Name: manager_contactmessage_id_seq; Type: SEQUENCE; Schema: public; Owner: b2b_user
--

CREATE SEQUENCE public.manager_contactmessage_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.manager_contactmessage_id_seq OWNER TO b2b_user;

--
-- Name: manager_contactmessage_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: b2b_user
--

ALTER SEQUENCE public.manager_contactmessage_id_seq OWNED BY public.manager_contactmessage.id;


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
    created_on date NOT NULL,
    category_id bigint
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
-- Name: manager_servicecategory; Type: TABLE; Schema: public; Owner: b2b_user
--

CREATE TABLE public.manager_servicecategory (
    id bigint NOT NULL,
    name character varying(100) NOT NULL,
    description text,
    slug character varying(50)
);


ALTER TABLE public.manager_servicecategory OWNER TO b2b_user;

--
-- Name: manager_servicecategory_id_seq; Type: SEQUENCE; Schema: public; Owner: b2b_user
--

CREATE SEQUENCE public.manager_servicecategory_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.manager_servicecategory_id_seq OWNER TO b2b_user;

--
-- Name: manager_servicecategory_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: b2b_user
--

ALTER SEQUENCE public.manager_servicecategory_id_seq OWNED BY public.manager_servicecategory.id;


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
-- Name: payment_transaction; Type: TABLE; Schema: public; Owner: b2b_user
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


ALTER TABLE public.payment_transaction OWNER TO b2b_user;

--
-- Name: payment_transaction_id_seq; Type: SEQUENCE; Schema: public; Owner: b2b_user
--

CREATE SEQUENCE public.payment_transaction_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.payment_transaction_id_seq OWNER TO b2b_user;

--
-- Name: payment_transaction_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: b2b_user
--

ALTER SEQUENCE public.payment_transaction_id_seq OWNED BY public.payment_transaction.id;


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
    supplier_id bigint NOT NULL,
    payment_id bigint
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
    order_id bigint,
    price_id bigint,
    product_id bigint NOT NULL
);


ALTER TABLE public.supplier_orderproductvariation OWNER TO b2b_user;

--
-- Name: supplier_orderproductvariation_color; Type: TABLE; Schema: public; Owner: b2b_user
--

CREATE TABLE public.supplier_orderproductvariation_color (
    id bigint NOT NULL,
    orderproductvariation_id bigint NOT NULL,
    productcolor_id bigint NOT NULL
);


ALTER TABLE public.supplier_orderproductvariation_color OWNER TO b2b_user;

--
-- Name: supplier_orderproductvariation_color_id_seq; Type: SEQUENCE; Schema: public; Owner: b2b_user
--

CREATE SEQUENCE public.supplier_orderproductvariation_color_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.supplier_orderproductvariation_color_id_seq OWNER TO b2b_user;

--
-- Name: supplier_orderproductvariation_color_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: b2b_user
--

ALTER SEQUENCE public.supplier_orderproductvariation_color_id_seq OWNED BY public.supplier_orderproductvariation_color.id;


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
-- Name: supplier_orderproductvariation_material; Type: TABLE; Schema: public; Owner: b2b_user
--

CREATE TABLE public.supplier_orderproductvariation_material (
    id bigint NOT NULL,
    orderproductvariation_id bigint NOT NULL,
    productmaterial_id bigint NOT NULL
);


ALTER TABLE public.supplier_orderproductvariation_material OWNER TO b2b_user;

--
-- Name: supplier_orderproductvariation_material_id_seq; Type: SEQUENCE; Schema: public; Owner: b2b_user
--

CREATE SEQUENCE public.supplier_orderproductvariation_material_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.supplier_orderproductvariation_material_id_seq OWNER TO b2b_user;

--
-- Name: supplier_orderproductvariation_material_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: b2b_user
--

ALTER SEQUENCE public.supplier_orderproductvariation_material_id_seq OWNED BY public.supplier_orderproductvariation_material.id;


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
-- Name: supplier_product_colors; Type: TABLE; Schema: public; Owner: b2b_user
--

CREATE TABLE public.supplier_product_colors (
    id bigint NOT NULL,
    product_id bigint NOT NULL,
    productcolor_id bigint NOT NULL
);


ALTER TABLE public.supplier_product_colors OWNER TO b2b_user;

--
-- Name: supplier_product_colors_id_seq; Type: SEQUENCE; Schema: public; Owner: b2b_user
--

CREATE SEQUENCE public.supplier_product_colors_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.supplier_product_colors_id_seq OWNER TO b2b_user;

--
-- Name: supplier_product_colors_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: b2b_user
--

ALTER SEQUENCE public.supplier_product_colors_id_seq OWNED BY public.supplier_product_colors.id;


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
-- Name: supplier_product_materials; Type: TABLE; Schema: public; Owner: b2b_user
--

CREATE TABLE public.supplier_product_materials (
    id bigint NOT NULL,
    product_id bigint NOT NULL,
    productmaterial_id bigint NOT NULL
);


ALTER TABLE public.supplier_product_materials OWNER TO b2b_user;

--
-- Name: supplier_product_materials_id_seq; Type: SEQUENCE; Schema: public; Owner: b2b_user
--

CREATE SEQUENCE public.supplier_product_materials_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.supplier_product_materials_id_seq OWNER TO b2b_user;

--
-- Name: supplier_product_materials_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: b2b_user
--

ALTER SEQUENCE public.supplier_product_materials_id_seq OWNED BY public.supplier_product_materials.id;


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
    name_en character varying(256)
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
    name_en character varying(256)
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
-- Name: coms_interclientmessage id; Type: DEFAULT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.coms_interclientmessage ALTER COLUMN id SET DEFAULT nextval('public.coms_interclientmessage_id_seq'::regclass);


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
-- Name: manager_careerapplication id; Type: DEFAULT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.manager_careerapplication ALTER COLUMN id SET DEFAULT nextval('public.manager_careerapplication_id_seq'::regclass);


--
-- Name: manager_contactmessage id; Type: DEFAULT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.manager_contactmessage ALTER COLUMN id SET DEFAULT nextval('public.manager_contactmessage_id_seq'::regclass);


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
-- Name: manager_servicecategory id; Type: DEFAULT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.manager_servicecategory ALTER COLUMN id SET DEFAULT nextval('public.manager_servicecategory_id_seq'::regclass);


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
-- Name: payment_transaction id; Type: DEFAULT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.payment_transaction ALTER COLUMN id SET DEFAULT nextval('public.payment_transaction_id_seq'::regclass);


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
-- Name: supplier_orderproductvariation_color id; Type: DEFAULT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.supplier_orderproductvariation_color ALTER COLUMN id SET DEFAULT nextval('public.supplier_orderproductvariation_color_id_seq'::regclass);


--
-- Name: supplier_orderproductvariation_material id; Type: DEFAULT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.supplier_orderproductvariation_material ALTER COLUMN id SET DEFAULT nextval('public.supplier_orderproductvariation_material_id_seq'::regclass);


--
-- Name: supplier_ordershippingdetail id; Type: DEFAULT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.supplier_ordershippingdetail ALTER COLUMN id SET DEFAULT nextval('public.supplier_ordershippingdetail_id_seq'::regclass);


--
-- Name: supplier_product id; Type: DEFAULT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.supplier_product ALTER COLUMN id SET DEFAULT nextval('public.supplier_product_id_seq'::regclass);


--
-- Name: supplier_product_colors id; Type: DEFAULT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.supplier_product_colors ALTER COLUMN id SET DEFAULT nextval('public.supplier_product_colors_id_seq'::regclass);


--
-- Name: supplier_product_materials id; Type: DEFAULT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.supplier_product_materials ALTER COLUMN id SET DEFAULT nextval('public.supplier_product_materials_id_seq'::regclass);


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
1	Betwan Suppliers	\N	\N	\N	Betwan Suppliers	betwan-suppliers	Betwan Suppliers				Betwan Suppliers	Kenya	\N	\N	\N	Kenya	+254	\N	\N	\N	+254	Nairobi	\N	\N	\N	Nairobi	+254 727 074610	\N	\N	\N	+254 727 074610	\N	\N	\N	\N	test/django.png	3
10	buyer	\N	\N	\N	buyer	buyer	buyer description	\N	\N	\N	buyer description	Kenya	\N	\N	\N	Kenya	254	\N	\N	\N	254	Nairobi	\N	\N	\N	Nairobi	8483278978	\N	\N	\N	8483278978	8483278978	8483278978	https://nairobiskates.com	16035845264	test/django.png	14
11	seller	\N	\N	\N	seller	seller	seller description	\N	\N	\N	seller description	Kenya	\N	\N	\N	Kenya	254	\N	\N	\N	254	Nairobi	\N	\N	\N	Nairobi	778234783	\N	\N	\N	778234783	778234783	778234783	https://nairobiskates.com	58820850816	test/django.png	15
9	admin	\N	\N	\N	admin	admin	shakfiw	\N	\N	\N	shakfiw	Kenya	\N	\N	\N	Kenya	254	\N	\N	\N	254	ajhkfieh	\N	\N	\N	ajhkfieh	3892423479	\N	\N	\N	3892423479	3892423479	3892423479	https://nairobiskates.com	57473125601	test/django.png	4
\.


--
-- Data for Name: auth_app_clientprofile_team; Type: TABLE DATA; Schema: public; Owner: b2b_user
--

COPY public.auth_app_clientprofile_team (id, clientprofile_id, user_id) FROM stdin;
2	1	3
28	9	4
48	10	14
68	11	15
\.


--
-- Data for Name: auth_app_supportprofile; Type: TABLE DATA; Schema: public; Owner: b2b_user
--

COPY public.auth_app_supportprofile (id, responses, user_id) FROM stdin;
1	0	3
\.


--
-- Data for Name: auth_app_user; Type: TABLE DATA; Schema: public; Owner: b2b_user
--

COPY public.auth_app_user (id, password, last_login, is_superuser, username, first_name, first_name_ar, first_name_fr, first_name_de, first_name_en, last_name, last_name_ar, last_name_fr, last_name_de, last_name_en, email, is_staff, is_active, date_joined, account_type, image, is_email_activated) FROM stdin;
15	pbkdf2_sha256$320000$xKLWUyS8ovcy2YTbp44W66$8kfaNkkESffKu2DhQaQMfp2jYhnzKd5nvwJSTleTiUs=	2025-08-05 17:00:59.72333+03	f	seller	seller	\N	\N	\N	seller	seller	\N	\N	\N	seller	seller@gmail.com	f	t	2025-08-05 11:55:34+03	SUPPLIER	assets/imgs/resources/profiledefault.png	t
3	pbkdf2_sha256$320000$GuJQnnqDBoqelHJn31jS3h$C0qzsjEPgZezFEHYvhMr/J5ByXIWfO3F3Kyhj/b9I+8=	2025-06-24 19:19:20+03	t	Betwan	Betwan	\N	\N	\N	Betwan	Suppliers	\N	\N	\N	Suppliers	info@betwancomputers.co.ke	t	t	2025-06-24 19:19:08+03	SUPPLIER	assets/imgs/resources/profiledefault.png	t
14	pbkdf2_sha256$320000$N8XZv7icB5kXQ5SXuPOttu$ZiqqMiQC7JkKmx0cO1Uwh4Vl2mzdKlfa+BkbpykR4rs=	2025-08-06 06:34:07.200433+03	f	buyer	buyer	\N	\N	\N	buyer	buyer	\N	\N	\N	buyer	buyer@gmail.com	f	t	2025-08-05 11:54:58+03	BUYER	assets/imgs/resources/profiledefault.png	t
4	pbkdf2_sha256$320000$GuJQnnqDBoqelHJn31jS3h$C0qzsjEPgZezFEHYvhMr/J5ByXIWfO3F3Kyhj/b9I+8=	2025-08-09 08:03:48.999182+03	t	Admin		\N	\N	\N	\N		\N	\N	\N	\N	emiliohulbert2017@gmail.com	t	t	2025-06-30 20:15:14+03	SUPPLIER	assets/imgs/resources/profiledefault.png	t
\.


--
-- Data for Name: auth_app_user_groups; Type: TABLE DATA; Schema: public; Owner: b2b_user
--

COPY public.auth_app_user_groups (id, user_id, group_id) FROM stdin;
1	3	1
3	4	1
4	14	1
5	15	1
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
1	1
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: b2b_user
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
277	Can add service category	70	add_servicecategory
278	Can change service category	70	change_servicecategory
279	Can delete service category	70	delete_servicecategory
280	Can view service category	70	view_servicecategory
281	Can add contact message	71	add_contactmessage
282	Can change contact message	71	change_contactmessage
283	Can delete contact message	71	delete_contactmessage
284	Can view contact message	71	view_contactmessage
285	Can add career application	72	add_careerapplication
286	Can change career application	72	change_careerapplication
287	Can delete career application	72	delete_careerapplication
288	Can view career application	72	view_careerapplication
289	Can add transaction	73	add_transaction
290	Can change transaction	73	change_transaction
291	Can delete transaction	73	delete_transaction
292	Can view transaction	73	view_transaction
293	Can add inter client message	74	add_interclientmessage
294	Can change inter client message	74	change_interclientmessage
295	Can delete inter client message	74	delete_interclientmessage
296	Can view inter client message	74	view_interclientmessage
\.


--
-- Data for Name: buyer_cart; Type: TABLE DATA; Schema: public; Owner: b2b_user
--

COPY public.buyer_cart (id, created_on, buyer_id) FROM stdin;
1	2025-08-05	10
2	2025-08-05	11
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
-- Data for Name: coms_interclientmessage; Type: TABLE DATA; Schema: public; Owner: b2b_user
--

COPY public.coms_interclientmessage (id, message, "timestamp", chat_id, sender_id) FROM stdin;
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
231	2025-07-07 13:52:44.908672+03	1	Web App Development	2	[{"changed": {"fields": ["Name", "Name [en]", "Description", "Description [en]", "Safe Url"]}}]	10	4
232	2025-07-07 13:53:18.918925+03	2	Digital Marketing	1	[{"added": {}}]	10	4
233	2025-07-07 13:53:43.016689+03	3	Mobile App Development	1	[{"added": {}}]	10	4
234	2025-07-07 13:54:02.656887+03	4	Software & AI Solutions	1	[{"added": {}}]	10	4
235	2025-07-07 13:54:33.832843+03	5	Marketing & Branding	1	[{"added": {}}]	10	4
236	2025-07-07 13:54:58.5792+03	6	IT Infrastructure	1	[{"added": {}}]	10	4
237	2025-07-07 14:00:22.5912+03	2	Web App Development	1	[{"added": {}}]	13	4
238	2025-07-07 14:00:33.713223+03	3	Digital Marketing	1	[{"added": {}}]	13	4
239	2025-07-07 14:01:28.659668+03	4	Mobile App Development	1	[{"added": {}}]	13	4
240	2025-07-07 14:01:41.596752+03	5	Software & AI Solutions	1	[{"added": {}}]	13	4
241	2025-07-07 14:02:13.393949+03	6	Marketing & Branding	1	[{"added": {}}]	13	4
242	2025-07-07 14:03:23.835087+03	7	IT Infrastructure	1	[{"added": {}}]	13	4
243	2025-07-07 14:24:01.753364+03	1	Web App Development	3		13	4
244	2025-07-07 18:54:22.989656+03	1	Web App Development	2	[{"changed": {"fields": ["Description [en]"]}}]	10	4
245	2025-07-07 18:56:15.861636+03	1	Web App Development	2	[{"changed": {"fields": ["Description [en]"]}}]	10	4
246	2025-07-07 18:57:14.578119+03	3	Mobile App Development	2	[{"changed": {"fields": ["Description"]}}]	10	4
247	2025-07-07 18:57:25.371217+03	3	Mobile App Development	2	[{"changed": {"fields": ["Description [en]"]}}]	10	4
248	2025-07-07 18:57:42.811279+03	3	Mobile App Development	2	[]	10	4
249	2025-07-07 18:57:49.859309+03	2	Digital Marketing	2	[{"changed": {"fields": ["Description [en]"]}}]	10	4
250	2025-07-07 18:58:09.966343+03	4	Software & AI Solutions	2	[{"changed": {"fields": ["Description [en]"]}}]	10	4
251	2025-07-07 18:58:26.469047+03	5	Marketing & Branding	2	[{"changed": {"fields": ["Description [en]"]}}]	10	4
252	2025-07-07 18:58:43.762536+03	6	IT Infrastructure	2	[{"changed": {"fields": ["Description [en]"]}}]	10	4
253	2025-07-10 19:50:55.672173+03	1	Information Management Systems	1	[{"added": {}}]	70	4
254	2025-07-10 19:51:17.388778+03	2	2. Digital Marketing & Branding	1	[{"added": {}}]	70	4
255	2025-07-10 19:51:53.118404+03	3	3. Hardware & IT Infrastructure	1	[{"added": {}}]	70	4
256	2025-07-10 19:52:13.800074+03	4	4. Creative Media	1	[{"added": {}}]	70	4
257	2025-07-10 19:52:32.480655+03	5	5. Bootcamp & Skills Training	1	[{"added": {}}]	70	4
258	2025-07-10 20:21:41.66681+03	7	ERP Systems (Custom-built)	1	[{"added": {}}]	10	4
259	2025-07-10 20:36:41.018109+03	6	IT Infrastructure	3		10	4
260	2025-07-10 20:36:41.022977+03	5	Marketing & Branding	3		10	4
261	2025-07-10 20:36:41.027312+03	4	Software & AI Solutions	3		10	4
262	2025-07-10 20:36:41.032918+03	3	Mobile App Development	3		10	4
263	2025-07-10 20:36:41.039138+03	2	Digital Marketing	3		10	4
264	2025-07-10 20:36:41.045904+03	1	Web App Development	3		10	4
265	2025-07-10 20:49:28.320745+03	8	ERP Systems (Custom-built)	1	[{"added": {}}]	13	4
266	2025-07-10 20:57:25.206876+03	2	Digital Marketing & Branding	2	[{"changed": {"fields": ["Name"]}}]	70	4
267	2025-07-10 20:57:34.106825+03	3	Hardware & IT Infrastructure	2	[{"changed": {"fields": ["Name"]}}]	70	4
268	2025-07-10 20:57:41.873326+03	4	Creative Media	2	[{"changed": {"fields": ["Name"]}}]	70	4
269	2025-07-10 20:57:50.727725+03	5	Bootcamp & Skills Training	2	[{"changed": {"fields": ["Name"]}}]	70	4
270	2025-07-10 22:33:36.699526+03	8	Web & Mobile App Development (Android & iOS)	1	[{"added": {}}]	10	4
271	2025-07-10 22:33:57.582366+03	9	Web & Mobile App Development (Android & iOS)	1	[{"added": {}}]	13	4
272	2025-07-10 22:35:02.653355+03	7	ERP Systems (Custom-built)	2	[{"changed": {"fields": ["Description", "Description [en]"]}}]	10	4
273	2025-07-13 10:57:52.48617+03	9	CCTV & Surveillance Systems	1	[{"added": {}}]	10	4
274	2025-07-13 10:58:29.532201+03	10	CCTV & Surveillance Systems	1	[{"added": {}}]	13	4
275	2025-07-13 10:59:07.473573+03	9	CCTV & Surveillance Systems	2	[{"changed": {"fields": ["Category"]}}]	10	4
276	2025-07-13 10:59:34.127466+03	9	CCTV & Surveillance Systems	2	[{"changed": {"fields": ["Category"]}}]	10	4
277	2025-07-20 22:19:02.779047+03	3	Betwan	2	[]	54	4
278	2025-07-20 22:20:07.330591+03	3	Betwan	2	[]	54	4
279	2025-07-20 22:22:39.280581+03	3	Betwan	2	[{"changed": {"fields": ["Active"]}}]	54	4
280	2025-07-20 22:23:14.882134+03	3	Betwan	2	[{"changed": {"fields": ["Active"]}}]	54	4
281	2025-07-20 22:25:03.608014+03	5	test	1	[{"added": {}}]	54	4
282	2025-07-20 22:25:40.398012+03	5	test	2	[{"changed": {"fields": ["User permissions"]}}]	54	4
283	2025-07-20 22:27:08.566513+03	5	test	2	[{"changed": {"fields": ["Staff status"]}}]	54	4
284	2025-07-20 22:28:47.44638+03	3	Betwan	2	[{"changed": {"fields": ["Account Type"]}}]	54	4
285	2025-07-20 22:30:19.714796+03	3	Betwan	2	[{"changed": {"fields": ["Password"]}}]	54	4
286	2025-07-20 22:30:56.014285+03	3	Betwan	2	[{"changed": {"fields": ["Account Type"]}}]	54	4
287	2025-07-20 22:33:43.543477+03	5	test	3		54	4
288	2025-07-20 22:35:16.940874+03	6	test	2	[{"changed": {"fields": ["Staff status"]}}]	54	4
289	2025-07-20 22:36:43.77699+03	6	test	3		54	4
290	2025-07-20 22:37:44.611632+03	7	test1	1	[{"added": {}}]	54	4
291	2025-07-21 10:44:20.241127+03	7	test1	2	[]	54	4
292	2025-07-21 10:45:13.447097+03	7	test1	2	[{"changed": {"fields": ["Password"]}}]	54	4
293	2025-07-21 10:48:47.476725+03	7	test1	2	[{"changed": {"fields": ["Superuser status"]}}]	54	4
294	2025-07-21 10:48:55.038272+03	7	test1	2	[{"changed": {"fields": ["Account Type"]}}]	54	4
295	2025-07-21 10:49:57.089324+03	7	test1	2	[{"changed": {"fields": ["Last login", "Account Type"]}}]	54	4
296	2025-07-21 10:50:47.105805+03	7	test1	3		54	4
297	2025-07-21 10:51:37.429622+03	8	test	1	[{"added": {}}]	54	4
298	2025-07-21 11:19:39.605908+03	8	test	2	[]	54	4
299	2025-07-21 11:20:21.610052+03	8	test	3		54	4
300	2025-07-21 11:20:57.524919+03	9	test	1	[{"added": {}}]	54	4
301	2025-07-21 11:22:16.632888+03	9	test	2	[]	54	4
302	2025-07-21 11:22:44.914378+03	9	test	2	[]	54	4
303	2025-07-21 11:57:08.858132+03	9	test	2	[]	54	4
304	2025-07-21 11:57:27.092479+03	9	test	3		54	4
305	2025-07-21 11:57:59.286207+03	10	test	1	[{"added": {}}]	54	4
306	2025-07-21 12:13:08.443446+03	10	test	2	[]	54	4
307	2025-07-21 12:21:00.296552+03	10	test	2	[]	54	4
308	2025-07-21 12:21:29.423255+03	10	test	2	[{"changed": {"fields": ["Account Type"]}}]	54	4
309	2025-07-21 12:22:16.665259+03	10	test	2	[]	54	4
310	2025-07-21 12:23:41.159016+03	10	test	2	[]	54	4
311	2025-07-21 12:25:24.771672+03	10	test	2	[]	54	4
312	2025-07-21 12:25:27.776406+03	10	test	2	[]	54	4
313	2025-07-21 13:02:29.095697+03	10	test	2	[]	54	4
314	2025-07-21 13:02:56.878331+03	11	test1	1	[{"added": {}}]	54	4
315	2025-07-21 13:06:21.851684+03	11	test1	2	[]	54	4
316	2025-07-21 13:08:02.285043+03	10	test	2	[]	54	4
317	2025-07-21 13:08:13.474579+03	10	test	2	[]	54	4
318	2025-07-21 13:08:49.242261+03	10	test	2	[]	54	4
319	2025-07-21 13:45:46.683437+03	10	test	2	[{"changed": {"fields": ["Password"]}}]	54	4
320	2025-07-21 13:53:45.455218+03	10	test	2	[]	54	4
321	2025-07-21 13:55:37.015383+03	10	test	2	[{"changed": {"fields": ["Account Type"]}}]	54	4
322	2025-07-21 14:05:35.357213+03	11	test1	2	[{"changed": {"fields": ["Password"]}}]	54	4
323	2025-07-21 14:07:16.262271+03	11	test1	2	[]	54	4
324	2025-07-21 14:08:46.119476+03	11	test1	2	[]	54	4
325	2025-07-21 14:11:14.143067+03	12	king	1	[{"added": {}}]	54	4
326	2025-07-21 14:12:12.248162+03	12	king	2	[{"changed": {"fields": ["Last login", "Account Type"]}}]	54	4
327	2025-07-21 14:12:44.848566+03	12	king	2	[{"changed": {"fields": ["Staff status"]}}]	54	4
328	2025-07-21 14:13:05.519473+03	12	king	2	[{"changed": {"fields": ["Last login", "Superuser status"]}}]	54	4
332	2025-07-21 14:20:05.738867+03	13	user	1	[{"added": {}}]	54	4
333	2025-07-21 15:17:01.964007+03	3	hybridapp	1	[{"added": {}}]	68	4
334	2025-07-21 15:18:57.165741+03	3	social application token (3)	1	[{"added": {}}]	69	4
335	2025-07-21 15:21:32.250434+03	3	Admin	1	[{"added": {}}]	67	4
336	2025-07-21 15:21:59.309616+03	3	Admin	2	[{"changed": {"fields": ["Provider"]}}]	67	4
337	2025-07-21 15:22:42.168798+03	3	Facebook Login	2	[{"changed": {"fields": ["Name"]}}]	68	4
338	2025-07-21 20:24:31.734675+03	13	user	2	[{"changed": {"fields": ["Password"]}}]	54	4
339	2025-07-31 12:41:21.632235+03	9	CCTV & Surveillance Systems	3		10	4
340	2025-07-31 12:41:21.65091+03	8	Web & Mobile App Development (Android & iOS)	3		10	4
341	2025-07-31 12:41:21.656585+03	7	ERP Systems (Custom-built)	3		10	4
342	2025-07-31 12:42:21.700685+03	10	ERP Systems (Custom-built)	1	[{"added": {}}]	10	4
343	2025-07-31 12:42:53.249857+03	11	Web & Mobile App Development (Android & iOS)	1	[{"added": {}}]	10	4
344	2025-07-31 12:43:05.051458+03	11	Web & Mobile App Development (Android & iOS)	2	[]	10	4
345	2025-07-31 12:43:14.305371+03	12	POS Systems	1	[{"added": {}}]	10	4
346	2025-07-31 12:43:29.525324+03	13	UI/UX Design	1	[{"added": {}}]	10	4
347	2025-07-31 12:43:47.388619+03	14	AI Solutions	1	[{"added": {}}]	10	4
348	2025-07-31 12:44:02.760138+03	15	IoT Integration	1	[{"added": {}}]	10	4
349	2025-07-31 12:44:17.520707+03	16	Data Science & Analysis	1	[{"added": {}}]	10	4
350	2025-07-31 12:44:36.249967+03	17	Digital Strategy & Marketing Campaign	1	[{"added": {}}]	10	4
351	2025-07-31 12:44:50.191502+03	18	Search Engine Optimization (SEO)	1	[{"added": {}}]	10	4
352	2025-07-31 12:45:03.195394+03	19	Search Engine Marketing (SEM)	1	[{"added": {}}]	10	4
353	2025-07-31 12:45:16.332519+03	20	Social Media Marketing & Management	1	[{"added": {}}]	10	4
354	2025-07-31 12:45:28.76741+03	21	Content Creation	1	[{"added": {}}]	10	4
355	2025-07-31 12:45:42.069168+03	22	Promotional Items e.g. t-shirts, mugs, hoodies, biros	1	[{"added": {}}]	10	4
356	2025-07-31 12:45:59.051609+03	23	Branding & Creative/ Graphic Design	1	[{"added": {}}]	10	4
357	2025-07-31 12:46:10.148613+03	24	Bulk SMS Services	1	[{"added": {}}]	10	4
358	2025-07-31 12:46:21.799772+03	25	Influencer & Affiliate Marketing	1	[{"added": {}}]	10	4
359	2025-07-31 12:46:35.836798+03	26	Phones, Computers, Laptops, Cameras, Projectors, TV’s & Accessories etc.	1	[{"added": {}}]	10	4
360	2025-07-31 12:46:46.607434+03	27	CCTV & Surveillance Systems	1	[{"added": {}}]	10	4
361	2025-07-31 12:47:04.869154+03	28	Cybersecurity Services	1	[{"added": {}}]	10	4
362	2025-07-31 12:47:17.037365+03	29	Networking & IT Infrastructure Setup	1	[{"added": {}}]	10	4
363	2025-07-31 12:47:29.333098+03	30	POS Systems & Hardware	1	[{"added": {}}]	10	4
364	2025-07-31 12:47:39.917175+03	31	Internet Service Provider	1	[{"added": {}}]	10	4
365	2025-07-31 12:47:52.519673+03	32	IoT & Smart Office Solutions	1	[{"added": {}}]	10	4
366	2025-07-31 12:48:07.407531+03	33	IT Maintenance & Support	1	[{"added": {}}]	10	4
367	2025-07-31 12:48:18.304405+03	34	Photography & Videography	1	[{"added": {}}]	10	4
368	2025-07-31 12:48:30.807495+03	35	Multimedia: Video Production, Film Making, Podcasts& Voiceovers etc	1	[{"added": {}}]	10	4
369	2025-07-31 12:48:53.276639+03	36	All Tech categories	1	[{"added": {}}]	10	4
370	2025-07-31 12:49:55.657765+03	11	ERP Systems (Custom-built)	1	[{"added": {}}]	13	4
371	2025-07-31 13:02:01.506157+03	12	Web & Mobile App Development (Android & iOS)	1	[{"added": {}}]	13	4
372	2025-07-31 13:02:23.393427+03	13	POS Systems	1	[{"added": {}}]	13	4
373	2025-07-31 13:02:32.71444+03	14	UI/UX Design	1	[{"added": {}}]	13	4
374	2025-07-31 13:02:41.945884+03	15	AI Solutions	1	[{"added": {}}]	13	4
375	2025-07-31 13:02:51.147984+03	16	IoT Integration	1	[{"added": {}}]	13	4
376	2025-07-31 13:02:58.933552+03	17	Data Science & Analysis	1	[{"added": {}}]	13	4
377	2025-07-31 13:03:07.336697+03	18	Digital Strategy & Marketing Campaign	1	[{"added": {}}]	13	4
378	2025-07-31 13:03:18.924706+03	19	Search Engine Optimization (SEO)	1	[{"added": {}}]	13	4
379	2025-07-31 13:03:30.261414+03	20	Search Engine Marketing (SEM)	1	[{"added": {}}]	13	4
380	2025-07-31 13:03:40.155712+03	21	Social Media Marketing & Management	1	[{"added": {}}]	13	4
381	2025-07-31 13:03:52.212388+03	22	Content Creation	1	[{"added": {}}]	13	4
382	2025-07-31 13:04:00.839569+03	23	Promotional Items e.g. t-shirts, mugs, hoodies, biros	1	[{"added": {}}]	13	4
383	2025-07-31 13:04:10.067485+03	24	Branding & Creative/ Graphic Design	1	[{"added": {}}]	13	4
384	2025-07-31 13:04:19.404516+03	25	Bulk SMS Services	1	[{"added": {}}]	13	4
385	2025-07-31 13:04:27.79143+03	26	Influencer & Affiliate Marketing	1	[{"added": {}}]	13	4
386	2025-07-31 13:04:38.319253+03	27	Phones, Computers, Laptops, Cameras, Projectors, TV’s & Accessories etc.	1	[{"added": {}}]	13	4
387	2025-07-31 13:04:47.27883+03	28	CCTV & Surveillance Systems	1	[{"added": {}}]	13	4
388	2025-07-31 13:04:54.842505+03	29	Cybersecurity Services	1	[{"added": {}}]	13	4
389	2025-07-31 13:05:12.62134+03	30	Networking & IT Infrastructure Setup	1	[{"added": {}}]	13	4
390	2025-07-31 13:05:28.289007+03	31	POS Systems & Hardware	1	[{"added": {}}]	13	4
391	2025-07-31 13:05:37.510291+03	32	Internet Service Provider	1	[{"added": {}}]	13	4
392	2025-07-31 13:05:50.039774+03	33	IoT & Smart Office Solutions	1	[{"added": {}}]	13	4
393	2025-07-31 13:06:01.128397+03	34	IT Maintenance & Support	1	[{"added": {}}]	13	4
394	2025-07-31 13:06:13.229829+03	35	Photography & Videography	1	[{"added": {}}]	13	4
395	2025-07-31 13:06:25.402216+03	36	Multimedia: Video Production, Film Making, Podcasts& Voiceovers etc	1	[{"added": {}}]	13	4
396	2025-07-31 13:11:43.288503+03	10	ERP Systems (Custom-built)	2	[{"changed": {"fields": ["Description"]}}]	10	4
397	2025-07-31 13:11:49.42231+03	10	ERP Systems (Custom-built)	2	[{"changed": {"fields": ["Description [en]"]}}]	10	4
398	2025-07-31 13:12:12.546908+03	11	Web & Mobile App Development (Android & iOS)	2	[{"changed": {"fields": ["Description [en]"]}}]	10	4
399	2025-07-31 13:13:28.07738+03	12	POS Systems	2	[{"changed": {"fields": ["Description [en]"]}}]	10	4
400	2025-07-31 13:13:45.537975+03	13	UI/UX Design	2	[{"changed": {"fields": ["Description [en]"]}}]	10	4
401	2025-07-31 13:13:58.648005+03	14	AI Solutions	2	[{"changed": {"fields": ["Description [en]"]}}]	10	4
402	2025-07-31 13:14:09.458521+03	15	IoT Integration	2	[{"changed": {"fields": ["Description [en]"]}}]	10	4
403	2025-07-31 13:15:02.400602+03	16	Data Science & Analysis	2	[{"changed": {"fields": ["Description [en]"]}}]	10	4
404	2025-07-31 13:15:14.178975+03	17	Digital Strategy & Marketing Campaign	2	[{"changed": {"fields": ["Description [en]"]}}]	10	4
405	2025-07-31 13:15:24.891281+03	18	Search Engine Optimization (SEO)	2	[{"changed": {"fields": ["Description [en]"]}}]	10	4
406	2025-07-31 13:15:39.3056+03	19	Search Engine Marketing (SEM)	2	[{"changed": {"fields": ["Description [en]"]}}]	10	4
407	2025-07-31 13:15:51.728158+03	20	Social Media Marketing & Management	2	[{"changed": {"fields": ["Description [en]"]}}]	10	4
408	2025-07-31 13:16:03.158536+03	21	Content Creation	2	[{"changed": {"fields": ["Description [en]"]}}]	10	4
409	2025-07-31 13:16:17.418684+03	22	Promotional Items e.g. t-shirts, mugs, hoodies, biros	2	[{"changed": {"fields": ["Description [en]"]}}]	10	4
410	2025-07-31 13:16:27.646384+03	23	Branding & Creative/ Graphic Design	2	[{"changed": {"fields": ["Description [en]"]}}]	10	4
411	2025-07-31 13:16:38.847697+03	24	Bulk SMS Services	2	[{"changed": {"fields": ["Description [en]"]}}]	10	4
412	2025-07-31 13:16:51.151742+03	25	Influencer & Affiliate Marketing	2	[{"changed": {"fields": ["Description [en]"]}}]	10	4
413	2025-07-31 13:17:01.90551+03	26	Phones, Computers, Laptops, Cameras, Projectors, TV’s & Accessories etc.	2	[{"changed": {"fields": ["Description [en]"]}}]	10	4
414	2025-07-31 13:17:12.15507+03	27	CCTV & Surveillance Systems	2	[{"changed": {"fields": ["Description [en]"]}}]	10	4
415	2025-07-31 13:17:21.446162+03	28	Cybersecurity Services	2	[{"changed": {"fields": ["Description [en]"]}}]	10	4
416	2025-07-31 13:17:49.242976+03	29	Networking & IT Infrastructure Setup	2	[{"changed": {"fields": ["Description [en]"]}}]	10	4
417	2025-07-31 13:17:58.893734+03	30	POS Systems & Hardware	2	[{"changed": {"fields": ["Description [en]"]}}]	10	4
418	2025-07-31 13:18:12.447366+03	31	Internet Service Provider	2	[{"changed": {"fields": ["Description [en]"]}}]	10	4
419	2025-07-31 13:18:28.614674+03	32	IoT & Smart Office Solutions	2	[{"changed": {"fields": ["Description [en]"]}}]	10	4
420	2025-07-31 13:18:34.57098+03	33	IT Maintenance & Support	2	[{"changed": {"fields": ["Description [en]"]}}]	10	4
421	2025-07-31 13:18:43.973168+03	34	Photography & Videography	2	[{"changed": {"fields": ["Description [en]"]}}]	10	4
422	2025-07-31 13:18:53.075341+03	35	Multimedia: Video Production, Film Making, Podcasts& Voiceovers etc	2	[{"changed": {"fields": ["Description [en]"]}}]	10	4
423	2025-07-31 13:19:28.098676+03	36	All Tech categories	2	[{"changed": {"fields": ["Description [en]"]}}]	10	4
424	2025-07-31 13:27:34.074782+03	26	Phones, Computers, Laptops, Cameras, Projectors, TV’s & Accessories etc.	2	[{"changed": {"fields": ["Category"]}}]	10	4
425	2025-07-31 13:28:52.381149+03	27	CCTV & Surveillance Systems	2	[{"changed": {"fields": ["Category"]}}]	10	4
426	2025-08-05 10:32:16.459761+03	3	Facebook Login	2	[]	68	4
427	2025-08-05 10:32:54.052006+03	4	nashtech.nairobiskates.com	1	[{"added": {}}]	6	4
428	2025-08-05 10:33:10.422084+03	3	Facebook Login	2	[{"changed": {"fields": ["Sites"]}}]	68	4
429	2025-08-05 10:34:59.127545+03	4	Admin	2	[{"changed": {"fields": ["Groups"]}}]	54	4
430	2025-08-05 10:35:20.278639+03	2	social application token (2)	2	[{"changed": {"fields": ["Expires at"]}}]	69	4
431	2025-08-05 10:35:34.547556+03	3	Facebook Login	2	[]	68	4
432	2025-08-05 10:38:29.123201+03	3	Admin	3		67	4
433	2025-08-05 10:38:38.25732+03	3	social application token (3)	3		69	4
434	2025-08-05 10:38:51.896149+03	3	Facebook Login	3		68	4
435	2025-08-05 11:04:13.864771+03	13	user	2	[{"changed": {"fields": ["Account Type"]}}]	54	4
436	2025-08-05 11:04:22.314433+03	13	user	2	[{"changed": {"fields": ["Password"]}}]	54	4
437	2025-08-05 11:12:26.084369+03	3	user	3		56	4
438	2025-08-05 11:13:12.181681+03	2	vegetables	3		56	4
439	2025-08-05 11:20:20.95113+03	4	user	3		56	4
440	2025-08-05 11:22:31.055263+03	5	user	3		56	4
441	2025-08-05 11:35:25.699227+03	7	user	3		56	4
442	2025-08-05 11:54:43.695953+03	13	user	3		54	4
443	2025-08-05 11:55:32.154059+03	14	buyer	1	[{"added": {}}]	54	4
444	2025-08-05 11:56:07.605843+03	15	seller	1	[{"added": {}}]	54	4
445	2025-08-05 11:57:30.69776+03	3	Hp Elite book 840 G9 - Ksh	1	[{"added": {}}]	34	4
446	2025-08-05 14:00:21.808008+03	58	test Betwan Suppliers	1	[{"added": {}}]	23	4
447	2025-08-05 14:12:17.302113+03	58	test Betwan Suppliers	3		23	4
448	2025-08-05 14:12:57.30028+03	59	test Betwan Suppliers	1	[{"added": {}}]	23	4
449	2025-08-05 14:24:48.606942+03	59	test Betwan Suppliers	3		23	4
450	2025-08-05 14:40:23.594322+03	61	test Betwan Suppliers	1	[{"added": {}}]	23	4
451	2025-08-05 14:55:29.258521+03	1	Aluminium	1	[{"added": {}}]	35	4
452	2025-08-05 15:15:14.058609+03	2	White	3		37	4
453	2025-08-05 15:15:14.072316+03	1	black	3		37	4
454	2025-08-05 15:15:22.104869+03	3	white	1	[{"added": {}}]	37	4
455	2025-08-05 15:40:45.871893+03	4	black	1	[{"added": {}}]	37	4
456	2025-08-05 15:42:13.27676+03	4	black	3		37	4
457	2025-08-05 15:42:13.295825+03	3	white	3		37	4
458	2025-08-05 15:43:29.564886+03	1	Aluminium	3		35	4
459	2025-08-05 15:43:48.8129+03	5	purple	1	[{"added": {}}]	37	4
460	2025-08-05 15:43:53.680539+03	6	black	1	[{"added": {}}]	37	4
461	2025-08-05 15:44:10.052487+03	2	aluminium	1	[{"added": {}}]	35	4
462	2025-08-05 15:47:16.037825+03	3	plastic	1	[{"added": {}}]	35	4
463	2025-08-05 15:47:53.89911+03	6	black	3		37	4
464	2025-08-05 15:47:53.913259+03	5	purple	3		37	4
465	2025-08-05 15:48:00.826118+03	7	black	1	[{"added": {}}]	37	4
466	2025-08-05 15:48:09.437405+03	8	purple	1	[{"added": {}}]	37	4
467	2025-08-05 15:48:26.70371+03	2	aluminium	2	[]	35	4
468	2025-08-05 21:11:02.349077+03	4	Admin	1	[{"added": {}}]	67	4
469	2025-08-05 21:12:12.001233+03	4	Facebook Login	1	[{"added": {}}]	68	4
470	2025-08-05 21:12:49.992672+03	4	social application token (4)	1	[{"added": {}}]	69	4
471	2025-08-05 21:15:22.206323+03	4	Facebook Login	2	[{"changed": {"fields": ["Sites"]}}]	68	4
472	2025-08-05 21:19:56.005925+03	61	test Betwan Suppliers	3		23	4
473	2025-08-09 08:06:06.866761+03	1	FODR-TEST - Betwan Suppliers - buyer - PAID	1	[{"added": {}}]	22	4
474	2025-08-09 08:06:31.169173+03	1	FODR-TEST - Betwan Suppliers - buyer - VIEWED BY SUPPLER	2	[{"changed": {"fields": ["Order Status [en]"]}}]	22	4
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
70	manager	servicecategory
71	manager	contactmessage
72	manager	careerapplication
73	payment	transaction
74	coms	interclientmessage
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: b2b_user
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
44	manager	0002_servicecategory_service_category	2025-07-10 19:45:20.849806+03
45	manager	0003_contactmessage	2025-07-11 13:47:23.881692+03
46	manager	0004_careerapplication	2025-07-11 16:38:04.120911+03
47	payment	0002_transaction	2025-08-05 11:53:53.316634+03
48	payment	0003_alter_transaction_checkout_id_and_more	2025-08-05 11:53:53.344117+03
49	supplier	0003_remove_productcolor_product_and_more	2025-08-05 14:55:12.530537+03
50	supplier	0004_product_colors_product_materials	2025-08-05 15:14:03.890661+03
51	supplier	0005_order_payment_alter_order_is_complete	2025-08-05 23:01:42.924671+03
52	coms	0003_interclientmessage	2025-08-06 00:08:40.302842+03
53	supplier	0006_alter_order_status_alter_order_status_ar_and_more	2025-08-06 08:20:13.724486+03
54	supplier	0007_alter_orderproductvariation_order	2025-08-06 08:39:54.08763+03
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: b2b_user
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
ula8jracylu30gdfucs9evtypksk0mkg	.eJxVjMsOwiAQRf-FtSHIy45L9_0GMgODVA0kpV0Z_92QdKHbe865bxFw30rYO69hSeIqrDj9boTxyXWA9MB6bzK2uq0LyaHIg3Y5t8Sv2-H-HRTsZdRM1vuM1sHkISsgyxrOViFPRBkuWbMCYASTNHuVHDoyXhuOADmC-HwB87A4Wg:1uWYID:FxM0efwKssxpsAVOpqJRxaWPHnPzv9V4_ZFhHqMrng4	2025-07-15 13:32:49.246665+03
y5ig2xn335ky73vv163ukzsnsy5iinq0	.eJxVjMsOwiAQRf-FtSHIy45L9_0GMgODVA0kpV0Z_92QdKHbe865bxFw30rYO69hSeIqrDj9boTxyXWA9MB6bzK2uq0LyaHIg3Y5t8Sv2-H-HRTsZdRM1vuM1sHkISsgyxrOViFPRBkuWbMCYASTNHuVHDoyXhuOADmC-HwB87A4Wg:1uYjQe:j4V-s9vmo9HulXt8rVhHWCXc_hFnIxtSSCCHDWx0Rpk	2025-07-21 13:50:32.848283+03
fbjlzqdm7ear6qw2gh9otuze5r102zqu	.eJxVjMsOwiAQRf-FtSEwhQ64dO83kBkeUjU0Ke3K-O_apAvd3nPOfYlA21rD1vMSpiTOwojT78YUH7ntIN2p3WYZ57YuE8tdkQft8jqn_Lwc7t9BpV6_NScC0sYM2hKP0TosxvNIwOCh-AyEjsihskUBqAJRIRZPSusBPGbx_gDjNDdk:1uZuPc:0OvX34AChATQ3zN53Me1dbeJV0XDSDx-ipl9XMxobOk	2025-07-24 19:46:20.721659+03
lpfz46uzmcz99fpy4dro1wi3bb0q0qub	.eJxVjMsOwiAQRf-FtSEwhQ64dO83kBkeUjU0Ke3K-O_apAvd3nPOfYlA21rD1vMSpiTOwojT78YUH7ntIN2p3WYZ57YuE8tdkQft8jqn_Lwc7t9BpV6_NScC0sYM2hKP0TosxvNIwOCh-AyEjsihskUBqAJRIRZPSusBPGbx_gDjNDdk:1uZvW8:mv3Gp7HQRMSHusw3zfQ0kcHftzNoTREkr7Cj-uMoQO0	2025-07-24 20:57:08.889832+03
bbcd0x8cjqu6zd8i2j6pj7f1hwd4pei9	.eJxVjMsOwiAQRf-FtSEwhQ64dO83kBkeUjU0Ke3K-O_apAvd3nPOfYlA21rD1vMSpiTOwojT78YUH7ntIN2p3WYZ57YuE8tdkQft8jqn_Lwc7t9BpV6_NScC0sYM2hKP0TosxvNIwOCh-AyEjsihskUBqAJRIRZPSusBPGbx_gDjNDdk:1uZx0I:q7HelD1lLEdf1Z9kyoQINomSn2r9dvkyU6uQiJUndww	2025-07-24 22:32:22.678645+03
vum27h3yzrbuzubciqljm94juxmb0c7l	.eJxVjMsOwiAQRf-FtSEwhQ64dO83kBkeUjU0Ke3K-O_apAvd3nPOfYlA21rD1vMSpiTOwojT78YUH7ntIN2p3WYZ57YuE8tdkQft8jqn_Lwc7t9BpV6_NScC0sYM2hKP0TosxvNIwOCh-AyEjsihskUBqAJRIRZPSusBPGbx_gDjNDdk:1uaBH5:FqWwdatZX6Gf6RtErqCkWzL8vNjDdvrNGwoIwoVKQZ8	2025-07-25 13:46:39.901354+03
mwljekyfdxg3314sovm28lc7133j4g60	.eJxVjMsOwiAQRf-FtSEwhQ64dO83kBkeUjU0Ke3K-O_apAvd3nPOfYlA21rD1vMSpiTOwojT78YUH7ntIN2p3WYZ57YuE8tdkQft8jqn_Lwc7t9BpV6_NScC0sYM2hKP0TosxvNIwOCh-AyEjsihskUBqAJRIRZPSusBPGbx_gDjNDdk:1uaBTV:bhWgiHwrJzGFOGTvxlsHL6YIPRA8_WTNJsdxrbvpDUU	2025-07-25 13:59:29.615624+03
2b2elgjixvqo8t117ych4qbnd7lnjaq7	.eJxVjMsOwiAQRf-FtSEwhQ64dO83kBkeUjU0Ke3K-O_apAvd3nPOfYlA21rD1vMSpiTOwojT78YUH7ntIN2p3WYZ57YuE8tdkQft8jqn_Lwc7t9BpV6_NScC0sYM2hKP0TosxvNIwOCh-AyEjsihskUBqAJRIRZPSusBPGbx_gDjNDdk:1uaC4q:F0dApA8YMTtPcF7qzgZuasOGeYKQZm8pZ-0M0mZpMz8	2025-07-25 14:38:04.868053+03
i5nvt71nhvrgxrxidwweobgvaqgcypaj	.eJxVjMsOwiAQRf-FtSEwhQ64dO83kBkeUjU0Ke3K-O_apAvd3nPOfYlA21rD1vMSpiTOwojT78YUH7ntIN2p3WYZ57YuE8tdkQft8jqn_Lwc7t9BpV6_NScC0sYM2hKP0TosxvNIwOCh-AyEjsihskUBqAJRIRZPSusBPGbx_gDjNDdk:1uaCKK:Gdyov3prvFsgUYpVKsSph6UmBi6hI1aFWO765T8gdAc	2025-07-25 14:54:04.441689+03
h43md707d4c0vjmhf5m6ddz7eyad93li	.eJxVjMsOwiAQRf-FtSEwhQ64dO83kBkeUjU0Ke3K-O_apAvd3nPOfYlA21rD1vMSpiTOwojT78YUH7ntIN2p3WYZ57YuE8tdkQft8jqn_Lwc7t9BpV6_NScC0sYM2hKP0TosxvNIwOCh-AyEjsihskUBqAJRIRZPSusBPGbx_gDjNDdk:1uaCTS:FuJZ9OnDw2j0_bpub9nQsf0Os6gwQ1aE1PTPv6n53a4	2025-07-25 15:03:30.319314+03
2ktjhyn7lqmuskqc14dir8wl2kzxljm2	.eJxVjDsOwyAQBe-ydYQIxsTrMn3OgHZhCc7HSMYoRZS7R5bcuH0z875Qc_n42kKQWv27RHrBuC5NTuCprdm3KoufIoxg4bAxhafMG4gPmu9FhTKvy8RqU9ROq7qVKK_r7h4OMtW81cLWuUS2x8Fh0shWDJ6tJhmYE16SEY0ohF004nTsqefOmU4CYgoIvz8ifkJJ:1uaCyG:v9h2DjcgLhX6mO07yPPnzb15dIx9pJFZCZPWuUUN4KA	2025-07-25 15:35:20.113879+03
fdxl8drjvkkk29cr7mqxm4pi680ksc5p	eyJzaG93X3N1Y2Nlc3NfbW9kYWwiOnRydWV9:1uaD67:njfydwBX89swGCy81gMvim5xwTWrEAb0wrOLfyYG24Y	2025-07-25 15:43:27.25908+03
7zx145engqb8ln9nauf5dh8crbsnyycs	eyJzaG93X3N1Y2Nlc3NfbW9kYWwiOnRydWV9:1uaD9l:jCvQVd2YoZd6Ee5Y6NM0O0YRV7EhDzJ1w-6eWb74wCE	2025-07-25 15:47:13.452558+03
rrq4lkzsrk49i5p1vzd4tc55v2pg2ede	eyJzaG93X3N1Y2Nlc3NfbW9kYWwiOnRydWV9:1uaDCR:EqUJIfeZSM1b7qkL-6DCcq9XWG4sip8AoENNvGayDb8	2025-07-25 15:49:59.059922+03
5pxihy5wlufq91mshm0zokmxeu1ald72	.eJxVjMsOwiAQRf-FtSEwhQ64dO83kBkeUjU0Ke3K-O_apAvd3nPOfYlA21rD1vMSpiTOwojT78YUH7ntIN2p3WYZ57YuE8tdkQft8jqn_Lwc7t9BpV6_NScC0sYM2hKP0TosxvNIwOCh-AyEjsihskUBqAJRIRZPSusBPGbx_gDjNDdk:1uaDxZ:mBbGpiP-C_DfvTzlrFKasUfwVjelqRc6MfpI6J-Q8N8	2025-07-25 16:38:41.636167+03
1e77vy0kac9yc67ik2tlmbaphfy2t9p9	.eJxVjMsOwiAQRf-FtSEwhQ64dO83kBkeUjU0Ke3K-O_apAvd3nPOfYlA21rD1vMSpiTOwojT78YUH7ntIN2p3WYZ57YuE8tdkQft8jqn_Lwc7t9BpV6_NScC0sYM2hKP0TosxvNIwOCh-AyEjsihskUBqAJRIRZPSusBPGbx_gDjNDdk:1uaERk:EirYHbYzqYkrQ4shNI6RRhYJ6XedhdOhALgsGyWQsfU	2025-07-25 17:09:52.447452+03
v446l3s8rpxih3l4stxnwctwj59msh4z	.eJxVjMsOwiAQRf-FtSEwhQ64dO83kBkeUjU0Ke3K-O_apAvd3nPOfYlA21rD1vMSpiTOwojT78YUH7ntIN2p3WYZ57YuE8tdkQft8jqn_Lwc7t9BpV6_NScC0sYM2hKP0TosxvNIwOCh-AyEjsihskUBqAJRIRZPSusBPGbx_gDjNDdk:1uaEZS:O8S8oT-gpwmN8zQPcNT9MLNL1RasKbzpw2Rl68Hb1og	2025-07-25 17:17:50.847111+03
wsokkl9nheoawqj4jn3ap3gqnu7512al	.eJxVjMsOwiAQRf-FtSEwhQ64dO83kBkeUjU0Ke3K-O_apAvd3nPOfYlA21rD1vMSpiTOwojT78YUH7ntIN2p3WYZ57YuE8tdkQft8jqn_Lwc7t9BpV6_NScC0sYM2hKP0TosxvNIwOCh-AyEjsihskUBqAJRIRZPSusBPGbx_gDjNDdk:1uaEqs:PqUIiHPRX_n8-IkIth0_B27g4Ac4uu5smti3oj1iZqs	2025-07-25 17:35:50.410429+03
9ukgly3xyyci9jqq8d3rrg7cnqvtqf77	.eJxVjbFOxDAQRP9l6yhyNs45TonogIICIUDIWjv2xSSyT7ZDE-XfyYlrrp0382aDHI2nhYyJaygqFyo2w7DB8yu-f-i3HD_ZPD2JRxi-NrikaGw-OCzx7ANUMFIhGMK6LBVcZmOViaNVvzZ55236J3vViK5lUiDHGiXvhWi_9woUrWVSa7ZJ-fFwcrjLNJnZhisYfyicY21iKMnr-lqpbzTXL8fh8nDr3gkmytOx1iMhNZy3TUf6ZLpeOC71iVCjRCctkuiJesE6xxCZQ8OEcJJY07QohYX9D6nuYDo:1udopT:Gcz_cehfFPv6s7W5c_Ya12r_wqpWphVPAjuks-Qp4i0	2025-08-04 14:37:11.713041+03
fbv0iuksftsmj6i2ex5ggss3fu2ibm8d	.eJxVjM0OwiAQhN-Fs2mQP7ve9EXIsiyB2NBE4GR8d1vTgx7nm5nvJTyOnv1o_PQliqsw4vTLAtKD617gsux4QqJ11D59N0fdptuWuPZC2Mta78frT5Wx5c0TORjnEhoLs4MkIRhWcDYSeQ4hwSUplgCMoKNiJ6NFG7RTmgkgEYj3B8vKPM4:1udZQ2:gR_79n-spUOcNJ9Mm5ejIRkr9WrCAhL_yOt4TQPBVow	2025-08-03 22:09:54.925547+03
efdwa83p0w46kby59g4x9vn0fn1tnmw0	.eJxVjDsOwyAQRO9CHSEwH0PK9D4D2l0gOImwZOwqyt2DJRdJNdK8N_NmAfathL2lNcyRXZlU7PJbItAz1YPEB9T7wmmp2zojPxR-0sanJabX7XT_Dgq00tc5jZTJDcIrBckM4NA7IO-UAe2kxCyABLlRIvZUmK0WOSltvbHdY58vIFE4kw:1uduFv:r8qCUYs50oq4eezg3aTSHV7U8AA0CcBjJRBUhWaA6b8	2025-08-04 20:24:51.460762+03
ldhssaq33tlj1a5k7sfphv2senfvipxl	.eJxVjMsOwiAQRf-FtSHIy45L9_0GMgODVA0kpV0Z_92QdKHbe865bxFw30rYO69hSeIqrDj9boTxyXWA9MB6bzK2uq0LyaHIg3Y5t8Sv2-H-HRTsZdRM1vuM1sHkISsgyxrOViFPRBkuWbMCYASTNHuVHDoyXhuOADmC-HwB87A4Wg:1uhPjT:lyI28ihTBIIamZxWzIFDFcYznotBtzrS6rq7wPeZwI4	2025-08-14 12:37:51.989058+03
euhuonf9mcealrtsc9lm3r90jgdycpdh	.eJxVjMsOwiAQRf-FtSHIy45L9_0GMgODVA0kpV0Z_92QdKHbe865bxFw30rYO69hSeIqrDj9boTxyXWA9MB6bzK2uq0LyaHIg3Y5t8Sv2-H-HRTsZdRM1vuM1sHkISsgyxrOViFPRBkuWbMCYASTNHuVHDoyXhuOADmC-HwB87A4Wg:1ujC5X:AaEHAWe3fQqcTNWljDKEk3F8huGzVDR319gtudU_XJo	2025-08-19 10:27:59.211401+03
5eeci208dhku29jtba7hiv3teol6q75e	.eJxVjEEOwiAQRe_C2hAYSgdcuvcMDcMMUjVtUtqV8e7apAvd_vfef6khbWsdtibLMLI6q16dfjdK-SHTDvieptus8zyty0h6V_RBm77OLM_L4f4d1NTqt6YSPThL6IRKCd4Bo0SJLmCXLED2XQY0hYDJeg-CCJZN6DGwGFfU-wPgTTeA:1udZpM:kS7-CAud38LFu_KiY17L7RbcV58KpXubCixMl7Dyh8Y	2025-08-03 22:36:04.913418+03
fxtyoun77bz6xy4qxuigjmx5kk02ssb2	.eJxVjMsOwiAQRf-FtSHIqx2X7v0GMgODVA0kpV0Z_92QdKHbe865bxFw30rYO69hSeIiJnH63Qjjk-sA6YH13mRsdVsXkkORB-3y1hK_rof7d1Cwl1EzWe8zWgezh6yALGs4W4U8E2WYsmYFwAgmafYqOXRkvDYcAXIE8fkC9Xs4XQ:1udlH3:Y0xBSkXDjZwKWCzxd6MDVWz_6vb3S4S33uhVmuytDIk	2025-08-04 10:49:25.331101+03
irtdbjduzvqipxpxakruhcpoxdb33v9u	.eJxVjDsOwyAQBe9CHSEwH7Mp0_sMaIElOIlAMnYV5e6xJRdJ-2bmvZnHbS1-67T4ObErk4pdfseA8Un1IOmB9d54bHVd5sAPhZ-086klet1O9--gYC97jVkYqaIll0UEpYGSgVE60iiMy0hCwzhkS-jkEIUMkLRVcrc1CGuAfb4ArDdV:1udoZK:YA56XiDKPwdZjDIIlRqM7lH7ejjq1n0RMeg3YbPmcH8	2025-08-04 14:20:30.410942+03
w00950jbrkv69fo06rgz7iyfbdt8gtca	.eJxVjEEOwiAQRe_C2hBgKLQu3fcMzQwMUjWQlHZlvLsh6UK3_73332LBY8_L0Xhb1iiuQoO4_I6E4cmlk_jAcq8y1LJvK8muyJM2OdfIr9vp_h1kbLnXTjMQKkOcErChUUFKBgP6ISFNWnnrteUEdmIfiHQMYRitcQ7AOhKfLzKLOLU:1ujCwV:aE4B4emdondSi-vwctApTrX8PGWKO-8mshQ7OrpvQXc	2025-08-19 11:22:43.739721+03
y5i4naird6oa8vzsukz5m4gn6ezdw5ao	.eJxVjMsOwiAQRf-FtSEwhQ64dO83kBkeUjU0Ke3K-O_apAvd3nPOfYlA21rD1vMSpiTOwojT78YUH7ntIN2p3WYZ57YuE8tdkQft8jqn_Lwc7t9BpV6_NScC0sYM2hKP0TosxvNIwOCh-AyEjsihskUBqAJRIRZPSusBPGbx_gDjNDdk:1ujD8f:SskTrY3rpjS8RI1pa5UIWszliAZwZfoYJ7pGUC-25JE	2025-08-19 11:35:17.312869+03
h7z1dbr2zhhi75q4onwzbft55qguj0vf	.eJxVjDsOwjAQBe_iGlnetVl7KelzBsu_4ABypDipEHeHSCmgfTPzXsKHba1-62XxUxYXAUacfscY0qO0neR7aLdZprmtyxTlrsiDdjnMuTyvh_t3UEOv3_rsECgTKDUSE1nWGC1DCjEDOkV5NEpbRI3GMhfnrEFwxWmDmgNH8f4Av9U2DQ:1ujDTG:naJjnWiw7LhuKUzcKV-mmy3sudpGth-cASrRiLiQ6tc	2025-08-19 11:56:34.400605+03
z35o00rjppoxa3j2nc25fksf1o38f9ln	.eJxVjDsOwjAQBe_iGlnetVl7KelzBsu_4ABypDipEHeHSCmgfTPzXsKHba1-62XxUxYXAUacfscY0qO0neR7aLdZprmtyxTlrsiDdjnMuTyvh_t3UEOv3_rsECgTKDUSE1nWGC1DCjEDOkV5NEpbRI3GMhfnrEFwxWmDmgNH8f4Av9U2DQ:1ujDcm:kKPq-omv23FosOMJufBHcXp1gFjjIvVOp6vbaE9liyk	2025-08-19 12:06:24.535475+03
3ak4ejlrdl6qsho2qlvt9g0l9q68v9as	.eJxVjDsOwjAQBe_iGlnetVl7KelzBsu_4ABypDipEHeHSCmgfTPzXsKHba1-62XxUxYXAUacfscY0qO0neR7aLdZprmtyxTlrsiDdjnMuTyvh_t3UEOv3_rsECgTKDUSE1nWGC1DCjEDOkV5NEpbRI3GMhfnrEFwxWmDmgNH8f4Av9U2DQ:1ujGx5:mu7K_beyp1m1E41U11n78ipMTwYUhmkreu50cx6jjLI	2025-08-19 15:39:35.124496+03
gkj69y737ee7hhhirah1mthc0nmiy72y	.eJxVjDsOwjAQBe_iGlnetVl7KelzBsu_4ABypDipEHeHSCmgfTPzXsKHba1-62XxUxYXAUacfscY0qO0neR7aLdZprmtyxTlrsiDdjnMuTyvh_t3UEOv3_rsECgTKDUSE1nWGC1DCjEDOkV5NEpbRI3GMhfnrEFwxWmDmgNH8f4Av9U2DQ:1ujHS2:QXPpVlSucJoidSVUvy0lei07RNw5G6df26Xz5VPqIyw	2025-08-19 16:11:34.526645+03
gl8760o0w8qkz6fas0luafzm1mj5hnv3	.eJxVjDsOwjAQBe_iGlnetVl7KelzBsu_4ABypDipEHeHSCmgfTPzXsKHba1-62XxUxYXAUacfscY0qO0neR7aLdZprmtyxTlrsiDdjnMuTyvh_t3UEOv3_rsECgTKDUSE1nWGC1DCjEDOkV5NEpbRI3GMhfnrEFwxWmDmgNH8f4Av9U2DQ:1ujHa6:CiGkfOf5jlgwpBoXUJCKjZ3oObDbUlJpx213jOqhMJY	2025-08-19 16:19:54.53405+03
79674t791xxzjhlp0xmnq0190zk3jggo	.eJxVjDsOwjAQBe_iGlnetVl7KelzBsu_4ABypDipEHeHSCmgfTPzXsKHba1-62XxUxYXAUacfscY0qO0neR7aLdZprmtyxTlrsiDdjnMuTyvh_t3UEOv3_rsECgTKDUSE1nWGC1DCjEDOkV5NEpbRI3GMhfnrEFwxWmDmgNH8f4Av9U2DQ:1ujHhF:Hs4IlR4uce34p-tB0p9o4Ro0DFfOmcv_2h34kHXJZbA	2025-08-19 16:27:17.535175+03
vs7prxsl6x8316qpu1wfcnrr2ierjgiy	.eJxVjDsOwjAQBe_iGlnetVl7KelzBsu_4ABypDipEHeHSCmgfTPzXsKHba1-62XxUxYXAUacfscY0qO0neR7aLdZprmtyxTlrsiDdjnMuTyvh_t3UEOv3_rsECgTKDUSE1nWGC1DCjEDOkV5NEpbRI3GMhfnrEFwxWmDmgNH8f4Av9U2DQ:1ujHig:q_-j6QVxoTmnsbqjarqxnm8LqF482d9wIIya0uWfuRM	2025-08-19 16:28:46.157866+03
1mtq4oxuoh9gblaidfxvx8ghjha8z60k	.eJxVjMsOwiAQRf-FtSE8ygy4dO83EAYGWzUlKe3K-O_apAvd3nPOfYmYtnWMW-clTkWchXbi9DtSyg-ed1Luab41mdu8LhPJXZEH7fLaCj8vh_t3MKY-fmskBA1eGeMGbzNaowMiBDUYpQFzpUDAAQiVB0fW5so2c61MqLUN4v0BwXY2_g:1ujIDr:xc27ekPdCx2z54xXXTHKAkofcyoPvJn0yG9U3DxKYMk	2025-08-19 17:00:59.732424+03
9nqhkx00g4p1xis8kqa52jjo0e0d9jm9	.eJxVjMsOwiAQRf-FtSHIy45L9_0GMgODVA0kpV0Z_92QdKHbe865bxFw30rYO69hSeIqrDj9boTxyXWA9MB6bzK2uq0LyaHIg3Y5t8Sv2-H-HRTsZdRM1vuM1sHkISsgyxrOViFPRBkuWbMCYASTNHuVHDoyXhuOADmC-HwB87A4Wg:1ujMAN:KUMPz-YfL1tj4yP4dnPjntPcD8qJ19o5hZaJuhB6R_0	2025-08-19 21:13:39.706859+03
y94sawmb95hubipxxx8qxw7fesk9hgt0	.eJxVjMsOwiAQRf-FtSHIy45L9_0GMgODVA0kpV0Z_92QdKHbe865bxFw30rYO69hSeIqrDj9boTxyXWA9MB6bzK2uq0LyaHIg3Y5t8Sv2-H-HRTsZdRM1vuM1sHkISsgyxrOViFPRBkuWbMCYASTNHuVHDoyXhuOADmC-HwB87A4Wg:1ujMGA:2syjSlNplKZoqr7Wi6zrieWfGBwOTD07EvpRdSNc8aw	2025-08-19 21:19:38.985999+03
74zz4an9zz5gtk4r3w99kbdloq7dquk2	.eJxVjDsOwyAQBe9CHSEwyy9lep8BLV4ITiKQjF1FuXuE5CJp38y8Nwt47CUcPW1hJXZlEtjld4y4PFMdhB5Y740vre7bGvlQ-Ek7nxul1-10_w4K9jJqL20GctohKdAWjJPaJDlpCUDRArqJtBJOeFJZi5x8NJCVskhRJcs-X-HgN1k:1ujUul:ftOPfHK_s10U0pCF9DxKTND72O74RsLmbU9a_XV22zg	2025-08-20 06:34:07.209656+03
60sdk82lsnerx26d4enly8f9l9rmpvub	.eJxVjMsOwiAQRf-FtSHIy45L9_0GMgODVA0kpV0Z_92QdKHbe865bxFw30rYO69hSeIqrDj9boTxyXWA9MB6bzK2uq0LyaHIg3Y5t8Sv2-H-HRTsZdRM1vuM1sHkISsgyxrOViFPRBkuWbMCYASTNHuVHDoyXhuOADmC-HwB87A4Wg:1ujehg:XQp_IsSj28zIBGis7P6btiRL9x-NdYxPXyLIEldba4E	2025-08-20 17:01:16.864888+03
7hdvs3rfh4qa7rgve0g7cognwm1ebn45	.eJxVjMsOwiAQRf-FtSHIy45L9_0GMgODVA0kpV0Z_92QdKHbe865bxFw30rYO69hSeIqrDj9boTxyXWA9MB6bzK2uq0LyaHIg3Y5t8Sv2-H-HRTsZdRM1vuM1sHkISsgyxrOViFPRBkuWbMCYASTNHuVHDoyXhuOADmC-HwB87A4Wg:1ukbmp:4Nxy4SF-RoJlXfUE1Th_KX-vJAa6ho0Za9mUFAGJdbw	2025-08-09 09:06:31.648635+03
\.


--
-- Data for Name: django_site; Type: TABLE DATA; Schema: public; Owner: b2b_user
--

COPY public.django_site (id, domain, name) FROM stdin;
2	nashtech.nairobiskates.com	HybridNairobiSkates
4	nashtech.nairobiskates.com	nashtech solutions
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
-- Data for Name: manager_careerapplication; Type: TABLE DATA; Schema: public; Owner: b2b_user
--

COPY public.manager_careerapplication (id, name, phone, email, status, experience, details, resume, submitted_at) FROM stdin;
1	emhal	0795800861	emhal@gmail.com	Web Developer	4	ewr	resumes/Amnesty_Certificate.pdf	2025-07-11 17:35:43.800045+03
2	emhal	0795800861	emhal@gmail.com	Web Developer	34	saf	resumes/receipt.pdf	2025-07-11 17:41:21.252424+03
3	emhal	0795800861	emhal@gmail.com	Mobile App Designer	45	gwet	resumes/Amnesty_Certificate_1.pdf	2025-07-11 17:42:12.410709+03
4	emhal	0795800861	emhal@gmail.com	Mobile App Developer	3	asf	resumes/18th_Graduation_Booklet_as_at__14-05-2025.pdf	2025-07-11 17:42:52.984076+03
5	emhal	0795800861	emhal@gmail.com	Web Developer	34	werwe	resumes/certificate-android-application-security-free-course-661be95c60428f9d100f6ef2.pdf	2025-07-11 17:45:44.792888+03
\.


--
-- Data for Name: manager_contactmessage; Type: TABLE DATA; Schema: public; Owner: b2b_user
--

COPY public.manager_contactmessage (id, name, phone, email, message, submitted_at) FROM stdin;
1	emilio	0795800861	emiliohulbert2017@gmail.com	hello world	2025-07-11 14:10:30.375706+03
2	emilio	0795800861	emiliohulbert2017@gmail.com	kshfiasrfo	2025-07-11 14:33:59.549156+03
3	emilio	0795800861	emiliohulbert2017@gmail.co	awdaQW	2025-07-11 14:35:05.940649+03
4	emilio	0795800861	emiliohulbert2017@gmail.com	hello here	2025-07-11 14:37:36.207775+03
5	test	0795800861	test@gmail.com	test 123	2025-07-11 14:51:39.10102+03
6	test	0795800861	emiliohulbert2017@gmail.com	ksfnlmwer	2025-07-11 14:59:47.931925+03
7	emilio	0784960420	emiliobckp@gmail.com	melody	2025-07-11 15:03:22.650138+03
8	emilio	0248294798	emilio@gmail.com	test123	2025-07-11 15:18:56.453779+03
9	hasfih	0795800861	sfkwherih@mail.com	sjowjqr	2025-07-11 15:30:26.870511+03
10	hasfih	0248294798	emilio@gmail.com	sdf	2025-07-11 15:35:20.097068+03
11	emilio	0795800861	emilio@gmail.com	asd	2025-07-11 15:37:59.263246+03
12	emhal	0795800861	emhal@gmail.com	sasjrojw	2025-07-11 15:40:32.43911+03
13	emhal	0795800861	emhal@gmail.com	sd	2025-07-11 15:43:27.236088+03
14	emhal	0789235795	emhal@gmail.com	asjklfw	2025-07-11 15:43:58.380534+03
15	emhal	0789235795	emhal@gmail.com	awd	2025-07-11 15:47:13.44546+03
16	jkaw@mail	3894092380	sdgfuigwe@mail.com	krwqjrojqw	2025-07-11 15:49:59.042005+03
17	emhal	7342890237	emhal@gmail.com	owjrojw	2025-07-11 15:56:00.219138+03
18	emhal	8672478236	jhkewg@gmail.com	wqhrjioqw	2025-07-11 15:58:21.252595+03
19	emhal	7842372379	emhal@gmail.com	sjajapjw	2025-07-11 15:59:45.332506+03
20	emhal	7842372379	emhal@gmail.com	s	2025-07-11 16:01:23.557497+03
21	emhal	7842372379	emhal@gmail.com	asd	2025-07-11 16:07:42.730904+03
22	emhal	7842372379	emhal@gmail.com	sa	2025-07-11 16:09:33.304285+03
23	emhal	7842372379	emhal@gmail.com	adas	2025-07-11 16:11:54.688229+03
24	emhal	7842372379	emhal@gmail.com	s	2025-07-11 16:13:46.420959+03
25	jkl	8378533523	jkl@gmail.com	jkl	2025-07-11 16:16:49.65548+03
26	jkl	2353534634	jkl@gmail.com	jkl	2025-07-11 16:18:01.105126+03
27	test	4589333333	test@jhdfd.com	oiwurwoer	2025-07-11 16:20:51.437822+03
28	hey	3847222222	hey@mail.com	werhkwe	2025-07-11 16:24:09.287278+03
29	hello	3625896935	hello@mail.com	sfjakgfakf	2025-07-11 16:24:37.415405+03
30	jksfsdl	9362982365	dgksdhh@mail.com	ljaifwq	2025-07-11 16:24:59.392349+03
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
2	Samsung Offers	\N	\N	\N	Samsung Offers	Samsung Offers	\N	\N	\N	Samsung Offers	Promotion/images/samsung-offers-ea0ce214-9ac4-4ea1-bde5-ebe0fd7d664-da500bd2-6e92-4a38-8_MfVBXHK.jpg	BANNER	2025-06-24	samsung-offers-ea0ce214-9ac4-4ea1-bde5-ebe0fd7d664	t	2
3	Laptop Offers	\N	\N	\N	Laptop Offers	Laptop Offers	\N	\N	\N	Laptop Offers	Promotion/images/laptop-offers-3ec067dd-f311-44a0-82d3-b2ac4dea51fb-fd232b16-24dc-4227-8_SyzWjdS.jpg	BANNER	2025-06-24	laptop-offers-3ec067dd-f311-44a0-82d3-b2ac4dea51fb	t	2
4	Design Mugs Offers	\N	\N	\N	Design Mugs Offers	Design Mugs Offers	\N	\N	\N	Design Mugs Offers	Promotion/images/design-mugs-offers-ab34c59a-b1e3-49e7-98b3-8c3c53e-0e3da394-d318-4542-9_KY4Y9Gs.jpg	BANNER	2025-06-24	design-mugs-offers-ab34c59a-b1e3-49e7-98b3-8c3c53e	t	2
\.


--
-- Data for Name: manager_sentemail; Type: TABLE DATA; Schema: public; Owner: b2b_user
--

COPY public.manager_sentemail (id, recipient, subject, sending_email, content, reply_to, created_on) FROM stdin;
\.


--
-- Data for Name: manager_service; Type: TABLE DATA; Schema: public; Owner: b2b_user
--

COPY public.manager_service (id, name, name_ar, name_fr, name_de, name_en, description, description_ar, description_fr, description_de, description_en, slug, created_on, category_id) FROM stdin;
10	ERP Systems (Custom-built)	\N	\N	\N	ERP Systems (Custom-built)	We build powerful, scalable, and fully customizable ERP (Enterprise Resource Planning) systems tailored to your business operations. Whether you're managing a retail chain, a hospital, or a large enterprise with multiple departments, our ERP solutions integrate key functions like inventory management, finance and accounting, CRM, HR, and procurement into one centralized platform. We don’t believe in one-size-fits-all — each ERP is built from the ground up to align with your unique workflows, ensuring maximum efficiency, automation, and real-time insights for better decision-making.				We build powerful, scalable, and fully customizable ERP (Enterprise Resource Planning) systems tailored to your business operations. Whether you're managing a retail chain, a hospital, or a large enterprise with multiple departments, our ERP solutions integrate key functions like inventory management, finance and accounting, CRM, HR, and procurement into one centralized platform. We don’t believe in one-size-fits-all — each ERP is built from the ground up to align with your unique workflows, ensuring maximum efficiency, automation, and real-time insights for better decision-making.	erp-systems-custom-built-55e72d00-88b5-4e28-8059-6	2025-07-31	1
11	Web & Mobile App Development (Android & iOS)	\N	\N	\N	Web & Mobile App Development (Android & iOS)	From concept to launch, we develop responsive websites and feature-rich mobile applications tailored to your business goals. Whether you're a startup launching a new e-commerce app or an enterprise digitizing your services, our development team builds intuitive, scalable, and secure apps for Android and iOS platforms. We use modern frameworks and tools to deliver seamless user experiences, powerful backend systems, and integrations with third-party services such as payment gateways, CRMs, and APIs. Our goal is to help you innovate, scale, and stay competitive in the digital era.				From concept to launch, we develop responsive websites and feature-rich mobile applications tailored to your business goals. Whether you're a startup launching a new e-commerce app or an enterprise digitizing your services, our development team builds intuitive, scalable, and secure apps for Android and iOS platforms. We use modern frameworks and tools to deliver seamless user experiences, powerful backend systems, and integrations with third-party services such as payment gateways, CRMs, and APIs. Our goal is to help you innovate, scale, and stay competitive in the digital era.	web-mobile-app-development-android-ios-42dbcf3b-8e	2025-07-31	1
15	IoT Integration	\N	\N	\N	IoT Integration	We help businesses and organizations harness the Internet of Things (IoT) to connect devices, collect data, and automate operations. Our IoT solutions include integrating smart sensors, controllers, and communication networks that allow devices to work together intelligently. Whether it’s automating home lighting, managing supply chains in logistics, or monitoring utilities in real time, we design reliable, secure, and scalable IoT infrastructures. Data collected is then visualized via dashboards or linked with alerting systems for actionable insights.				We help businesses and organizations harness the Internet of Things (IoT) to connect devices, collect data, and automate operations. Our IoT solutions include integrating smart sensors, controllers, and communication networks that allow devices to work together intelligently. Whether it’s automating home lighting, managing supply chains in logistics, or monitoring utilities in real time, we design reliable, secure, and scalable IoT infrastructures. Data collected is then visualized via dashboards or linked with alerting systems for actionable insights.	iot-integration-0b63cd91-ca86-40ff-b5fc-71e9b8fb30	2025-07-31	1
20	Social Media Marketing & Management	\N	\N	\N	Social Media Marketing & Management	We manage your social media presence across platforms like Facebook, Instagram, X (Twitter), LinkedIn, and TikTok. From content creation to daily management and audience engagement, we help you grow your community and brand. Our strategies include influencer collaborations, ad placements, contests, and analytics tracking to ensure your social media not only looks good — it delivers measurable results.				We manage your social media presence across platforms like Facebook, Instagram, X (Twitter), LinkedIn, and TikTok. From content creation to daily management and audience engagement, we help you grow your community and brand. Our strategies include influencer collaborations, ad placements, contests, and analytics tracking to ensure your social media not only looks good — it delivers measurable results.	social-media-marketing-management-7667a209-cc71-4f	2025-07-31	2
23	Branding & Creative/ Graphic Design	\N	\N	\N	Branding & Creative/ Graphic Design	We craft powerful brand identities that resonate. From logo design and brand guidelines to marketing collateral, brochures, and packaging — our creative team delivers visuals that tell your story. Whether you're rebranding an established company or launching a new product, we help you define your look, voice, and market positioning with design that connects.				We craft powerful brand identities that resonate. From logo design and brand guidelines to marketing collateral, brochures, and packaging — our creative team delivers visuals that tell your story. Whether you're rebranding an established company or launching a new product, we help you define your look, voice, and market positioning with design that connects.	branding-creative-graphic-design-1075edb5-940f-4d7	2025-07-31	2
30	POS Systems & Hardware	\N	\N	\N	POS Systems & Hardware	Our turnkey POS hardware packages include everything you need to start selling — touchscreen terminals, barcode scanners, cash drawers, thermal printers, and customer displays. All hardware is pre-configured to work with our POS software for a plug-and-play experience that gets your business up and running quickly.				Our turnkey POS hardware packages include everything you need to start selling — touchscreen terminals, barcode scanners, cash drawers, thermal printers, and customer displays. All hardware is pre-configured to work with our POS software for a plug-and-play experience that gets your business up and running quickly.	pos-systems-hardware-f76267fd-5f6c-4040-88a5-93851	2025-07-31	3
12	POS Systems	\N	\N	\N	POS Systems	Our advanced Point of Sale (POS) systems streamline transactions and enhance customer service in retail stores, supermarkets, restaurants, and service businesses. With modules for inventory tracking, staff management, customer loyalty programs, and real-time sales analytics, our POS solutions go far beyond basic billing. We also provide hardware like receipt printers, barcode scanners, and touch-screen terminals, all configured for quick deployment. Whether it's a single outlet or a multi-branch operation, our systems are built to scale and simplify day-to-day operations.				Our advanced Point of Sale (POS) systems streamline transactions and enhance customer service in retail stores, supermarkets, restaurants, and service businesses. With modules for inventory tracking, staff management, customer loyalty programs, and real-time sales analytics, our POS solutions go far beyond basic billing. We also provide hardware like receipt printers, barcode scanners, and touch-screen terminals, all configured for quick deployment. Whether it's a single outlet or a multi-branch operation, our systems are built to scale and simplify day-to-day operations.	pos-systems-bcf454e7-b528-4118-8f75-bc9c98dd9071	2025-07-31	1
13	UI/UX Design	\N	\N	\N	UI/UX Design	Design is not just about aesthetics; it’s about usability, flow, and user satisfaction. Our UI/UX design team creates intuitive interfaces and seamless user journeys across mobile apps, websites, dashboards, and software platforms. We conduct in-depth user research, wireframing, prototyping, and user testing to ensure the final product meets both user needs and business goals. Whether you're redesigning a patient portal for a hospital or launching a mobile banking app, we make sure the user experience is smooth, efficient, and delightful.				Design is not just about aesthetics; it’s about usability, flow, and user satisfaction. Our UI/UX design team creates intuitive interfaces and seamless user journeys across mobile apps, websites, dashboards, and software platforms. We conduct in-depth user research, wireframing, prototyping, and user testing to ensure the final product meets both user needs and business goals. Whether you're redesigning a patient portal for a hospital or launching a mobile banking app, we make sure the user experience is smooth, efficient, and delightful.	uiux-design-5bf5cdeb-ffee-4f5d-af6b-78c1b1ca3738	2025-07-31	1
14	AI Solutions	\N	\N	\N	AI Solutions	Unlock the power of Artificial Intelligence to streamline operations, predict outcomes, and personalize user experiences. We design and deploy AI-powered solutions such as chatbots, recommendation engines, predictive analytics tools, and machine learning models tailored to your business. From automating customer support to detecting fraud in financial systems, our AI services empower organizations to make data-driven decisions, cut costs, and innovate at scale. We support end-to-end implementation — from model training to deployment and monitoring.				Unlock the power of Artificial Intelligence to streamline operations, predict outcomes, and personalize user experiences. We design and deploy AI-powered solutions such as chatbots, recommendation engines, predictive analytics tools, and machine learning models tailored to your business. From automating customer support to detecting fraud in financial systems, our AI services empower organizations to make data-driven decisions, cut costs, and innovate at scale. We support end-to-end implementation — from model training to deployment and monitoring.	ai-solutions-812d8f0a-d4c5-42bd-b151-8ac4cf331dab	2025-07-31	1
16	Data Science & Analysis	\N	\N	\N	Data Science & Analysis	Transform your raw data into actionable insights. We offer advanced data analysis services including real-time dashboards, KPI tracking, and business intelligence (BI) tools tailored to your strategic goals. Our team helps you gather, clean, and visualize your data using tools like Power BI, Tableau, or custom-built dashboards. Whether you’re tracking sales performance, customer behavior, or operational efficiency, we ensure that your data tells a story you can act on — fast and accurately.				Transform your raw data into actionable insights. We offer advanced data analysis services including real-time dashboards, KPI tracking, and business intelligence (BI) tools tailored to your strategic goals. Our team helps you gather, clean, and visualize your data using tools like Power BI, Tableau, or custom-built dashboards. Whether you’re tracking sales performance, customer behavior, or operational efficiency, we ensure that your data tells a story you can act on — fast and accurately.	data-science-analysis-c9089465-bd2a-47af-b6f6-f0b5	2025-07-31	1
17	Digital Strategy & Marketing Campaign	\N	\N	\N	Digital Strategy & Marketing Campaign	We help brands develop digital strategies that deliver results. From defining your online voice and target audience to running multi-channel marketing campaigns, we provide end-to-end support for digital growth. Our strategies combine market research, performance analytics, content planning, and ad optimization to ensure your business gets noticed and stays ahead of the competition. Whether you're launching a product or running a seasonal promotion, we craft campaigns that convert.				We help brands develop digital strategies that deliver results. From defining your online voice and target audience to running multi-channel marketing campaigns, we provide end-to-end support for digital growth. Our strategies combine market research, performance analytics, content planning, and ad optimization to ensure your business gets noticed and stays ahead of the competition. Whether you're launching a product or running a seasonal promotion, we craft campaigns that convert.	digital-strategy-marketing-campaign-6c67f55d-2a0c-	2025-07-31	2
33	IT Maintenance & Support	\N	\N	\N	IT Maintenance & Support	Keep your tech running smoothly with our proactive IT maintenance and support services. From routine checkups to emergency repairs, we provide both remote and on-site assistance to resolve issues quickly. Our services include software updates, hardware diagnostics, backup solutions, and user training.				Keep your tech running smoothly with our proactive IT maintenance and support services. From routine checkups to emergency repairs, we provide both remote and on-site assistance to resolve issues quickly. Our services include software updates, hardware diagnostics, backup solutions, and user training.	it-maintenance-support-db504c45-d03b-444f-ba3c-4a3	2025-07-31	3
18	Search Engine Optimization (SEO)	\N	\N	\N	Search Engine Optimization (SEO)	Get found where it matters. Our SEO services improve your website's ranking on Google and other search engines through keyword research, on-page optimization, technical audits, link-building, and content strategy. We also optimize for local SEO to help businesses appear in maps and regional searches. By making your site more visible and user-friendly, we help attract more organic traffic and generate long-term growth without the need for constant ad spending.				Get found where it matters. Our SEO services improve your website's ranking on Google and other search engines through keyword research, on-page optimization, technical audits, link-building, and content strategy. We also optimize for local SEO to help businesses appear in maps and regional searches. By making your site more visible and user-friendly, we help attract more organic traffic and generate long-term growth without the need for constant ad spending.	search-engine-optimization-seo-2fd2cc6e-66d4-4a64-	2025-07-31	2
19	Search Engine Marketing (SEM)	\N	\N	\N	Search Engine Marketing (SEM)	Accelerate your online visibility and sales with our SEM services. We manage Pay-Per-Click (PPC) campaigns across Google Ads, Bing, and YouTube — including search, display, shopping, and remarketing ads. Our campaigns are data-driven, A/B tested, and performance-optimized to generate the best ROI for your ad spend. Whether your goal is lead generation, brand awareness, or e-commerce sales, we deliver campaigns that reach your audience at the right time.				Accelerate your online visibility and sales with our SEM services. We manage Pay-Per-Click (PPC) campaigns across Google Ads, Bing, and YouTube — including search, display, shopping, and remarketing ads. Our campaigns are data-driven, A/B tested, and performance-optimized to generate the best ROI for your ad spend. Whether your goal is lead generation, brand awareness, or e-commerce sales, we deliver campaigns that reach your audience at the right time.	search-engine-marketing-sem-4f51e735-f3eb-4ae8-a98	2025-07-31	2
21	Content Creation	\N	\N	\N	Content Creation	Content is the heart of digital communication. We create high-quality, engaging content across multiple formats — blog posts, infographics, videos, animations, and podcasts. Whether you're explaining a complex product, launching a new brand, or educating your audience, we ensure your message is clear, compelling, and aligned with your goals. Our content is designed to educate, entertain, and convert.				Content is the heart of digital communication. We create high-quality, engaging content across multiple formats — blog posts, infographics, videos, animations, and podcasts. Whether you're explaining a complex product, launching a new brand, or educating your audience, we ensure your message is clear, compelling, and aligned with your goals. Our content is designed to educate, entertain, and convert.	content-creation-a5f91387-fb44-4228-b08c-1972e5abf	2025-07-31	2
22	Promotional Items e.g. t-shirts, mugs, hoodies, biros	\N	\N	\N	Promotional Items e.g. t-shirts, mugs, hoodies, biros	Make your brand tangible with custom-designed promotional items. We produce and print branded merchandise including t-shirts, mugs, pens, hoodies, caps, bags, and more. Ideal for corporate giveaways, product launches, or brand awareness campaigns, our promotional items are designed to leave a lasting impression and increase your visibility — both online and offline.				Make your brand tangible with custom-designed promotional items. We produce and print branded merchandise including t-shirts, mugs, pens, hoodies, caps, bags, and more. Ideal for corporate giveaways, product launches, or brand awareness campaigns, our promotional items are designed to leave a lasting impression and increase your visibility — both online and offline.	promotional-items-eg-t-shirts-mugs-hoodies-biros-d	2025-07-31	2
24	Bulk SMS Services	\N	\N	\N	Bulk SMS Services	Reach thousands of customers instantly with our bulk SMS platform. Ideal for promotions, alerts, reminders, and announcements, we provide a simple interface for sending customized messages to targeted lists. Our SMS gateway ensures high delivery rates, while tracking tools let you measure engagement and response in real time.				Reach thousands of customers instantly with our bulk SMS platform. Ideal for promotions, alerts, reminders, and announcements, we provide a simple interface for sending customized messages to targeted lists. Our SMS gateway ensures high delivery rates, while tracking tools let you measure engagement and response in real time.	bulk-sms-services-354ffc18-3398-4a70-84a6-26f4f552	2025-07-31	2
25	Influencer & Affiliate Marketing	\N	\N	\N	Influencer & Affiliate Marketing	Tap into the power of digital word-of-mouth. We connect your brand with the right influencers and affiliate marketers who can authentically promote your products or services. Whether you're looking for micro-influencers for niche audiences or larger campaigns, we manage outreach, contracts, and performance tracking to ensure you get measurable returns.				Tap into the power of digital word-of-mouth. We connect your brand with the right influencers and affiliate marketers who can authentically promote your products or services. Whether you're looking for micro-influencers for niche audiences or larger campaigns, we manage outreach, contracts, and performance tracking to ensure you get measurable returns.	influencer-affiliate-marketing-74ccb215-74fd-45d8-	2025-07-31	2
28	Cybersecurity Services	\N	\N	\N	Cybersecurity Services	Stay protected in an ever-evolving threat landscape. Our cybersecurity services include firewall setup, penetration testing, endpoint protection, vulnerability scanning, email security, and compliance consulting. We help you identify risks, secure data, and maintain business continuity in the face of potential cyber attacks.				Stay protected in an ever-evolving threat landscape. Our cybersecurity services include firewall setup, penetration testing, endpoint protection, vulnerability scanning, email security, and compliance consulting. We help you identify risks, secure data, and maintain business continuity in the face of potential cyber attacks.	cybersecurity-services-57d585b8-51d5-4564-a564-39d	2025-07-31	3
29	Networking & IT Infrastructure Setup	\N	\N	\N	Networking & IT Infrastructure Setup	We plan, install, and configure complete IT networks for offices, schools, data centers, and commercial buildings. Our services cover wired and wireless networking, routers, switches, servers, cloud connectivity, and structured cabling. We ensure your infrastructure is reliable, secure, and scalable for future growth.				We plan, install, and configure complete IT networks for offices, schools, data centers, and commercial buildings. Our services cover wired and wireless networking, routers, switches, servers, cloud connectivity, and structured cabling. We ensure your infrastructure is reliable, secure, and scalable for future growth.	networking-it-infrastructure-setup-6e77117f-759e-4	2025-07-31	3
31	Internet Service Provider	\N	\N	\N	Internet Service Provider	We deliver reliable, high-speed internet services for homes, SMEs, and corporate clients. With flexible packages for fiber, wireless, and satellite connections, we ensure consistent performance and support. Whether you're streaming, gaming, or running critical online operations, we keep you connected 24/7.				We deliver reliable, high-speed internet services for homes, SMEs, and corporate clients. With flexible packages for fiber, wireless, and satellite connections, we ensure consistent performance and support. Whether you're streaming, gaming, or running critical online operations, we keep you connected 24/7.	internet-service-provider-23cae367-f0de-4efa-a5ed-	2025-07-31	3
32	IoT & Smart Office Solutions	\N	\N	\N	IoT & Smart Office Solutions	Bring intelligence into your workspace with smart office solutions. We install and integrate systems for energy-saving lighting, automated doors, smart meeting room scheduling, occupancy sensors, and more. These tools not only make offices more efficient but also enhance security and sustainability.				Bring intelligence into your workspace with smart office solutions. We install and integrate systems for energy-saving lighting, automated doors, smart meeting room scheduling, occupancy sensors, and more. These tools not only make offices more efficient but also enhance security and sustainability.	iot-smart-office-solutions-b3c78859-749a-4882-bcb7	2025-07-31	3
34	Photography & Videography	\N	\N	\N	Photography & Videography	Capture the essence of your brand or event with professional photography and videography services. Whether it’s product shoots, corporate events, weddings, or promotional videos, we handle the entire process from planning and shooting to editing and delivery in high resolution.				Capture the essence of your brand or event with professional photography and videography services. Whether it’s product shoots, corporate events, weddings, or promotional videos, we handle the entire process from planning and shooting to editing and delivery in high resolution.	photography-videography-f8a29358-dd8f-4b4c-989d-47	2025-07-31	4
35	Multimedia: Video Production, Film Making, Podcasts& Voiceovers etc	\N	\N	\N	Multimedia: Video Production, Film Making, Podcasts& Voiceovers etc	We bring ideas to life through audio-visual storytelling. Our multimedia services cover video production, filmmaking, podcast creation, voiceovers, animation, and post-production editing. Whether you're launching a YouTube series, a documentary, or a brand commercial, we produce content that engages and inspires.				We bring ideas to life through audio-visual storytelling. Our multimedia services cover video production, filmmaking, podcast creation, voiceovers, animation, and post-production editing. Whether you're launching a YouTube series, a documentary, or a brand commercial, we produce content that engages and inspires.	multimedia-video-production-film-making-podcasts-v	2025-07-31	4
36	All Tech categories	\N	\N	\N	All Tech categories	We provide a full suite of technology services designed to support businesses, institutions, and individuals at every stage of their digital journey. From custom ERP systems and mobile app development to cutting-edge AI solutions, IoT integration, and smart device automation, we engineer tools that help you operate smarter and scale faster. Our team specializes in building intelligent infrastructure — including industrial IoT systems, remote monitoring platforms, and full-stack IT setups — that improve efficiency, data visibility, and control across your organization.\r\n\r\nIn the digital experience space, we craft world-class UI/UX designs, power data-driven decisions through advanced data analytics and dashboards, and create seamless omnichannel marketing strategies — spanning SEO, SEM, social media, content creation, influencer marketing, and branded merchandise production. On the hardware front, we supply and maintain essential electronics including computers, phones, laptops, surveillance systems, and POS equipment, while ensuring robust cybersecurity, stable networking, and IT infrastructure that supports daily operations.\r\n\r\nOur multimedia division completes the offering with creative services like professional photography, videography, video production, podcasts, and voiceovers to help you tell your story with impact. Whether you need a smart office setup, digital transformation, or full-service tech support, we’re your one-stop partner for future-ready technology.				We provide a full suite of technology services designed to support businesses, institutions, and individuals at every stage of their digital journey. From custom ERP systems and mobile app development to cutting-edge AI solutions, IoT integration, and smart device automation, we engineer tools that help you operate smarter and scale faster. Our team specializes in building intelligent infrastructure — including industrial IoT systems, remote monitoring platforms, and full-stack IT setups — that improve efficiency, data visibility, and control across your organization.\r\n\r\nIn the digital experience space, we craft world-class UI/UX designs, power data-driven decisions through advanced data analytics and dashboards, and create seamless omnichannel marketing strategies — spanning SEO, SEM, social media, content creation, influencer marketing, and branded merchandise production. On the hardware front, we supply and maintain essential electronics including computers, phones, laptops, surveillance systems, and POS equipment, while ensuring robust cybersecurity, stable networking, and IT infrastructure that supports daily operations.\r\n\r\nOur multimedia division completes the offering with creative services like professional photography, videography, video production, podcasts, and voiceovers to help you tell your story with impact. Whether you need a smart office setup, digital transformation, or full-service tech support, we’re your one-stop partner for future-ready technology.	all-tech-categories-5550f16d-a7ca-4486-af38-f952db	2025-07-31	5
26	Phones, Computers, Laptops, Cameras, Projectors, TV’s & Accessories etc.	\N	\N	\N	Phones, Computers, Laptops, Cameras, Projectors, TV’s & Accessories etc.	We supply a wide range of electronics and accessories — from smartphones and laptops to DSLR cameras, TVs, projectors, routers, and gaming accessories. Whether for home use, business, or education, we offer reliable tech from trusted brands, backed by warranty and after-sales support.				We supply a wide range of electronics and accessories — from smartphones and laptops to DSLR cameras, TVs, projectors, routers, and gaming accessories. Whether for home use, business, or education, we offer reliable tech from trusted brands, backed by warranty and after-sales support.	phones-computers-laptops-cameras-projectors-tvs-ac	2025-07-31	3
27	CCTV & Surveillance Systems	\N	\N	\N	CCTV & Surveillance Systems	Protect your assets with modern CCTV surveillance systems. We offer installation and maintenance of high-resolution cameras with features like remote viewing, motion detection, night vision, and cloud storage. Whether it’s a home, office, shop, or industrial facility, our security setups are scalable and tailored to your safety needs.				Protect your assets with modern CCTV surveillance systems. We offer installation and maintenance of high-resolution cameras with features like remote viewing, motion detection, night vision, and cloud storage. Whether it’s a home, office, shop, or industrial facility, our security setups are scalable and tailored to your safety needs.	cctv-surveillance-systems-80a82b14-7962-49f7-9cdb-	2025-07-31	3
\.


--
-- Data for Name: manager_servicecategory; Type: TABLE DATA; Schema: public; Owner: b2b_user
--

COPY public.manager_servicecategory (id, name, description, slug) FROM stdin;
1	Information Management Systems	Information Management Systems refer to the tools, processes, and methodologies used by organizations to collect, process, store, and distribute data to support decision-making and operational efficiency. It's the intersection of business and technology, enabling companies to manage their digital assets effectively. IMS professionals focus on areas like data analytics, database management, software development, and project management to help organizations leverage information for strategic advantage. Examples include Enterprise Resource Planning (ERP) systems for managing core business processes, Customer Relationship Management (CRM) systems for customer interactions, and Decision Support Systems (DSS) for analytical insights. The goal of IMS is to provide timely, accurate, and relevant information to various stakeholders, from operational staff to senior executives, to improve productivity, gain competitive advantage,	information-management-systems
2	Digital Marketing & Branding	Digital Marketing & Branding encompasses the strategies and tactics used to promote products, services, and brands through digital channels and technologies. This includes a wide array of online platforms such such as websites, social media (Facebook, Instagram, LinkedIn, TikTok), email, mobile applications, search engines (Google, Bing), and various forms of digital advertising (PPC, banner ads). The core aim is to reach, engage, and convert target audiences online, build brand awareness, and foster customer loyalty. Key components often include Search Engine Optimization (SEO) to improve visibility in search results, content marketing (blogs, videos, infographics) to provide value, social media marketing for direct engagement, email marketing for targeted communication, and influencer marketing for leveraging established audiences. Digital marketing emphasizes measurability, agility, and precise targeting to maximize impact and ROI.	2-digital-marketing-branding
3	Hardware & IT Infrastructure	Hardware & IT Infrastructure refers to the foundational physical and software components that support an organization's entire information technology environment. It's the backbone upon which all IT services and applications operate.\r\n\r\nHardware includes physical devices like servers, desktop and laptop computers, networking equipment (routers, switches, firewalls), storage devices (hard drives, solid-state drives), and peripheral devices (printers, scanners).\r\n\r\nIT Infrastructure broadly encompasses not just hardware, but also:\r\n\r\nSoftware: Operating systems (Windows Server, Linux), databases, virtualization software, and enterprise applications (ERP, CRM).\r\n\r\nNetworking: The systems and devices that connect computers and other components to share data and resources, including cables, wireless access points, and network protocols.\r\n\r\nData Centers: Physical facilities housing critical IT equipment, with specialized power, cooling, and security systems.\r\n\r\nCloud Services: Virtualized IT resources delivered over the internet by third-party providers (e.g., AWS, Azure, Google Cloud), offering scalable compute power, storage, and managed databases.\r\n\r\nSecurity Infrastructure: Measures like firewalls, antivirus software, intrusion detection systems, and encryption protocols to protect data and systems from cyber threats.\r\nA robust IT infrastructure is crucial for efficient operations, business agility, data security, and supporting innovation within an organization.	3-hardware-it-infrastructure
4	Creative Media	Creative Media is a broad field focused on the development, planning, and execution of visual and audio content for various platforms to tell stories, communicate messages, and create engaging experiences. It combines artistry, technology, and storytelling. This domain encompasses:\r\n\r\nMoving Image Production: Film, television, and online video content (YouTube), involving skills in camera operation, lighting, editing, and directing.\r\n\r\nAudio Production: Sound recording, editing, and mixing techniques for podcasts, music, and enhancing visual media.\r\n\r\nGraphic Design: Creating visually appealing designs for branding, marketing materials, websites, and digital content using industry-standard software (e.g., Adobe Creative Suite).\r\n\r\nDigital Photography: Capturing and manipulating images for various purposes, including photojournalism, commercial use, and social media.\r\n\r\nInteractive Media: Development of content for video games, virtual reality, and other interactive digital experiences.\r\nProfessionals in creative media use their skills to produce compelling narratives and visuals that resonate with audiences across traditional and digital platforms, often working as content creators, editors, producers, or designers.	4-creative-media
5	Bootcamp & Skills Training	Bootcamps and Skills Training refer to intensive, short-term educational programs designed to rapidly equip individuals with specific, in-demand skills for immediate career application or advancement. Unlike traditional academic courses, they are highly practical, hands-on, and often industry-aligned.\r\n\r\nKey Characteristics:\r\n\r\nFocused Learning: Concentrates on a narrow set of skills directly relevant to current job market needs (e.g., coding, digital marketing, data analysis, specific technical trades).\r\n\r\nIntensive Format: Typically run for a few weeks to several months, with a high commitment of time from participants.\r\n\r\nPractical Experience: Emphasizes hands-on projects, real-world scenarios, and often includes industry placements or guaranteed job interviews upon completion.\r\n\r\nEmployability-Oriented: Designed to make participants job-ready quickly, often with career development support, CV writing workshops, and networking opportunities.\r\n\r\nBenefits: Offers a fast track to acquiring new skills, facilitates career transitions, improves employability, and provides valuable connections with industry professionals. Many bootcamps are developed in collaboration with employers to ensure the curriculum meets industry demands.	5-bootcamp-skills-training
\.


--
-- Data for Name: manager_serviceimage; Type: TABLE DATA; Schema: public; Owner: b2b_user
--

COPY public.manager_serviceimage (id, image, slug, created_on, service_id) FROM stdin;
11	ServiceImage/images/erp-systems-custom-built-210057c5-50db-43c9-a286-7-c9cad320-fac4-467_qaKIkJy.jpg	erp-systems-custom-built-210057c5-50db-43c9-a286-7	2025-07-31	10
12	ServiceImage/images/web-mobile-app-development-android-ios-0b413656-f9-215ef169-c5e5-402_nKyMNWQ.png	web-mobile-app-development-android-ios-0b413656-f9	2025-07-31	11
13	ServiceImage/images/pos-systems-8522be30-7d65-42b8-9191-fffb575ca229-ef1c6f15-76b5-4b8d-_SIjpjrh.png	pos-systems-8522be30-7d65-42b8-9191-fffb575ca229	2025-07-31	12
14	ServiceImage/images/uiux-design-de82e790-c4f5-48ab-9019-6fa4c2e73d71-3541521a-40a0-4608-_YcqFXlq.png	uiux-design-de82e790-c4f5-48ab-9019-6fa4c2e73d71	2025-07-31	13
15	ServiceImage/images/ai-solutions-c756256d-a57b-4a9b-9d92-7a8e68ff5832-9fcb2e46-6354-4733_GIW1uIN.png	ai-solutions-c756256d-a57b-4a9b-9d92-7a8e68ff5832	2025-07-31	14
16	ServiceImage/images/iot-integration-0fdfad16-3ffc-4a40-8ddd-44c500a064-f6880f6a-cb41-438_hiEVaFd.png	iot-integration-0fdfad16-3ffc-4a40-8ddd-44c500a064	2025-07-31	15
17	ServiceImage/images/data-science-analysis-05031375-1329-45a5-9b03-8991-8962c434-3d98-427_gzeLVG8.png	data-science-analysis-05031375-1329-45a5-9b03-8991	2025-07-31	16
18	ServiceImage/images/digital-strategy-marketing-campaign-2e6a7724-09ae--c926717f-4102-464_iyCJScY.png	digital-strategy-marketing-campaign-2e6a7724-09ae-	2025-07-31	17
19	ServiceImage/images/search-engine-optimization-seo-a4d0d295-ea8f-4251--cf300c23-ca39-426_4CxDzqa.png	search-engine-optimization-seo-a4d0d295-ea8f-4251-	2025-07-31	18
20	ServiceImage/images/search-engine-marketing-sem-2f854dc4-7df7-4317-a83-09c43ad1-570f-40e_Dc9FnPl.png	search-engine-marketing-sem-2f854dc4-7df7-4317-a83	2025-07-31	19
21	ServiceImage/images/social-media-marketing-management-bac59804-061b-49-bab2716e-f986-4ba_I8Wi9OM.png	social-media-marketing-management-bac59804-061b-49	2025-07-31	20
22	ServiceImage/images/content-creation-1ed6240c-edc7-4600-8a95-445c0862a-39f06ae9-b190-400_uS40BFp.png	content-creation-1ed6240c-edc7-4600-8a95-445c0862a	2025-07-31	21
23	ServiceImage/images/promotional-items-eg-t-shirts-mugs-hoodies-biros-c-f931394b-5dd9-4cf_xDx6BoF.png	promotional-items-eg-t-shirts-mugs-hoodies-biros-c	2025-07-31	22
24	ServiceImage/images/branding-creative-graphic-design-62b316cc-af41-402-65490ab1-0e4d-4e3_Txpeb5U.png	branding-creative-graphic-design-62b316cc-af41-402	2025-07-31	23
25	ServiceImage/images/bulk-sms-services-fe46f22f-db7d-4cfa-9b89-cd11a1d4-5fa43c43-acb5-477_VnT8zyA.png	bulk-sms-services-fe46f22f-db7d-4cfa-9b89-cd11a1d4	2025-07-31	24
26	ServiceImage/images/influencer-affiliate-marketing-9d415550-8ffd-4a50--ffccf666-b985-43d_yBFDnFE.png	influencer-affiliate-marketing-9d415550-8ffd-4a50-	2025-07-31	25
27	ServiceImage/images/phones-computers-laptops-cameras-projectors-tvs-ac-900972e1-2ff7-4bc_1oqkVeJ.png	phones-computers-laptops-cameras-projectors-tvs-ac	2025-07-31	26
28	ServiceImage/images/cctv-surveillance-systems-48cf4891-7f04-4fe7-a268--a65ad482-5719-4b8_SOvGhYT.png	cctv-surveillance-systems-48cf4891-7f04-4fe7-a268-	2025-07-31	27
29	ServiceImage/images/cybersecurity-services-4e13ed28-5afb-4525-bb8b-e2c-d15c2e1c-dc55-4a3_vrev23q.png	cybersecurity-services-4e13ed28-5afb-4525-bb8b-e2c	2025-07-31	28
30	ServiceImage/images/networking-it-infrastructure-setup-bc8e489a-8b8f-4-a7251b58-87f9-4dc_wYCJHqV.png	networking-it-infrastructure-setup-bc8e489a-8b8f-4	2025-07-31	29
31	ServiceImage/images/pos-systems-hardware-b25f1a38-9f72-4e7e-a1b1-9a09b-b95acb15-bd48-443_FE2vFcz.png	pos-systems-hardware-b25f1a38-9f72-4e7e-a1b1-9a09b	2025-07-31	30
32	ServiceImage/images/internet-service-provider-c99eeb72-720d-415b-aa7f--0b87a2c6-8162-4eb_UHRiQ9p.png	internet-service-provider-c99eeb72-720d-415b-aa7f-	2025-07-31	31
33	ServiceImage/images/iot-smart-office-solutions-f993366e-0a6b-484f-a5ff-eab36055-9b9d-405_uvayqOF.png	iot-smart-office-solutions-f993366e-0a6b-484f-a5ff	2025-07-31	32
34	ServiceImage/images/it-maintenance-support-b154f73b-4ffd-4834-b847-b4b-b0cda17e-e37f-471_gb0dfnM.png	it-maintenance-support-b154f73b-4ffd-4834-b847-b4b	2025-07-31	33
35	ServiceImage/images/photography-videography-dc4ba80c-df8d-402e-bb08-49-e1cf035c-cfaa-414_R5ydsZy.png	photography-videography-dc4ba80c-df8d-402e-bb08-49	2025-07-31	34
36	ServiceImage/images/multimedia-video-production-film-making-podcasts-v-120f9900-9075-4e7_oCEFio4.png	multimedia-video-production-film-making-podcasts-v	2025-07-31	35
\.


--
-- Data for Name: manager_showroom; Type: TABLE DATA; Schema: public; Owner: b2b_user
--

COPY public.manager_showroom (id, name, name_ar, name_fr, name_de, name_en, image, visits, slug, created_on, location_id) FROM stdin;
2	Betwan ShowRoom	\N	\N	\N	Betwan ShowRoom	Showroom/images/betwan-showroom-b14a54ac-aabb-4032-8c4d-2e291026d3-7ef9de33-b662-4b0e-9_Cho6QHD.jpeg	0	betwan-showroom-b14a54ac-aabb-4032-8c4d-2e291026d3	2025-06-24	\N
\.


--
-- Data for Name: manager_showroom_store; Type: TABLE DATA; Schema: public; Owner: b2b_user
--

COPY public.manager_showroom_store (id, showroom_id, store_id) FROM stdin;
2	2	4
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
-- Data for Name: payment_transaction; Type: TABLE DATA; Schema: public; Owner: b2b_user
--

COPY public.payment_transaction (id, amount, checkout_id, mpesa_code, phone_number, status, "timestamp") FROM stdin;
\.


--
-- Data for Name: socialaccount_socialaccount; Type: TABLE DATA; Schema: public; Owner: b2b_user
--

COPY public.socialaccount_socialaccount (id, provider, uid, last_login, date_joined, extra_data, user_id) FROM stdin;
2	Google	575828224879-asfhisfn1o96sqperclrm2lv6n54ttfo.apps.googleusercontent.com	2025-07-07 13:49:29.193896+03	2025-06-20 11:12:02.287248+03	{"web": {"auth_uri": "https://accounts.google.com/o/oauth2/auth", "client_id": "575828224879-asfhisfn1o96sqperclrm2lv6n54ttfo.apps.googleusercontent.com", "token_uri": "https://oauth2.googleapis.com/token", "project_id": "hybridnairobiskates", "client_secret": "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", "redirect_uris": ["https://nashtech.nairobiskates.com/accounts/google/login/callback/"], "javascript_origins": ["https://nashtech.nairobiskates.com"], "auth_provider_x509_cert_url": "https://www.googleapis.com/oauth2/v1/certs"}}	4
4	Facebook	1141600924485019	2025-08-05 21:11:02.34488+03	2025-08-05 21:11:02.344908+03	{"web": {"auth_uri": "https://accounts.google.com/o/oauth2/auth", "client_id": "575828224879-asfhisfn1o96sqperclrm2lv6n54ttfo.apps.googleusercontent.com", "token_uri": "https://oauth2.googleapis.com/token", "project_id": "hybridnairobiskates", "client_secret": "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", "redirect_uris": ["https://demo.nairobiskates.com/accounts/google/login/callback/"], "javascript_origins": ["https://demo.nairobiskates.com"], "auth_provider_x509_cert_url": "https://www.googleapis.com/oauth2/v1/certs"}}	4
\.


--
-- Data for Name: socialaccount_socialapp; Type: TABLE DATA; Schema: public; Owner: b2b_user
--

COPY public.socialaccount_socialapp (id, provider, name, client_id, secret, key, provider_id, settings) FROM stdin;
2	google	Google Login	575828224879-asfhisfn1o96sqperclrm2lv6n54ttfo.apps.googleusercontent.com	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			{}
4	facebook	Facebook Login	1141600924485019	70c46868dd81f1442fd07cce29e3940b	1141600924485019	1141600924485019	{}
\.


--
-- Data for Name: socialaccount_socialapp_sites; Type: TABLE DATA; Schema: public; Owner: b2b_user
--

COPY public.socialaccount_socialapp_sites (id, socialapp_id, site_id) FROM stdin;
3	2	2
5	4	4
6	4	2
\.


--
-- Data for Name: socialaccount_socialtoken; Type: TABLE DATA; Schema: public; Owner: b2b_user
--

COPY public.socialaccount_socialtoken (id, token, token_secret, expires_at, account_id, app_id) FROM stdin;
2	{"web":{"client_id":"575828224879-asfhisfn1o96sqperclrm2lv6n54ttfo.apps.googleusercontent.com","project_id":"hybridnairobiskates","auth_uri":"https://accounts.google.com/o/oauth2/auth","token_uri":"https://oauth2.googleapis.com/token","auth_provider_x509_cert_url":"https://www.googleapis.com/oauth2/v1/certs","client_secret":"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","redirect_uris":["https://nashtech.nairobiskates.com/accounts/google/login/callback/"],"javascript_origins":["https://nashtech.nairobiskates.com"]}}	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	2025-08-30 10:35:11+03	2	2
4	1141600924485019	70c46868dd81f1442fd07cce29e3940b	2025-08-29 21:12:47+03	4	4
\.


--
-- Data for Name: supplier_deliverycarrier; Type: TABLE DATA; Schema: public; Owner: b2b_user
--

COPY public.supplier_deliverycarrier (id, name, tax, tax_ar, tax_fr, tax_de, tax_en, delivery_period, delivery_period_ar, delivery_period_fr, delivery_period_de, delivery_period_en, active) FROM stdin;
\.


--
-- Data for Name: supplier_order; Type: TABLE DATA; Schema: public; Owner: b2b_user
--

COPY public.supplier_order (id, order_id, status, status_ar, status_fr, status_de, status_en, currency, total_price, total_price_ar, total_price_fr, total_price_de, total_price_en, agreed_price, agreed_price_ar, agreed_price_fr, agreed_price_de, agreed_price_en, paid_price, paid_price_ar, paid_price_fr, paid_price_de, paid_price_en, discount, discount_ar, discount_fr, discount_de, discount_en, is_complete, accepted_on, delivery_date, created_on, updated_on, buyer_id, supplier_id, payment_id) FROM stdin;
1	FODR-TEST	VIEWED BY SUPPLER	PAID	PAID	PAID	VIEWED BY SUPPLER	Ksh	200.00	\N	\N	\N	200.00	200.00	\N	\N	\N	200.00	200.00	\N	\N	\N	200.00	0.00	0.00	0.00	0.00	0.00	f	2025-08-09	2025-08-09	2025-08-09	2025-08-09 08:06:31.154846+03	10	1	\N
\.


--
-- Data for Name: supplier_ordernote; Type: TABLE DATA; Schema: public; Owner: b2b_user
--

COPY public.supplier_ordernote (id, notes, notes_ar, notes_fr, notes_de, notes_en, created_on, updated_on, order_id, user_id) FROM stdin;
\.


--
-- Data for Name: supplier_orderproductvariation; Type: TABLE DATA; Schema: public; Owner: b2b_user
--

COPY public.supplier_orderproductvariation (id, quantity, quantity_ar, quantity_fr, quantity_de, quantity_en, min_total_price, max_total_price, cart_id, order_id, price_id, product_id) FROM stdin;
12	1	\N	\N	\N	1	23000.00	23000.00	2	\N	9	51
13	1	\N	\N	\N	1	23000.00	23000.00	2	\N	9	51
15	1	\N	\N	\N	1	84000.00	84000.00	1	\N	7	53
\.


--
-- Data for Name: supplier_orderproductvariation_color; Type: TABLE DATA; Schema: public; Owner: b2b_user
--

COPY public.supplier_orderproductvariation_color (id, orderproductvariation_id, productcolor_id) FROM stdin;
5	12	7
6	13	7
8	15	8
\.


--
-- Data for Name: supplier_orderproductvariation_material; Type: TABLE DATA; Schema: public; Owner: b2b_user
--

COPY public.supplier_orderproductvariation_material (id, orderproductvariation_id, productmaterial_id) FROM stdin;
5	12	3
6	13	3
8	15	2
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
7	Hp Mini	\N	\N	\N	Hp Mini	Hp Mini Portable Laptop				Hp Mini Portable Laptop	hp-minia7353e8c-df50-4e9e-bd76-1a5de5630207	Ksh	\N	\N	\N	Ksh	30000.00	\N	\N	\N	30000.00	\N	\N	t	2025-06-24	1	1	2
6	i7 11th 3.0ghz (8VPUS) 32GB RAM 512ssd touch	\N	\N	\N	i7 11th 3.0ghz (8VPUS) 32GB RAM 512ssd touch	i7 11th 3.0ghz (8VPUS) 32GB RAM 512ssd touch				i7 11th 3.0ghz (8VPUS) 32GB RAM 512ssd touch	i7-11th-30ghz-8vpus-32gb-ram-512ssd-touchd07f133a-330e-4fab-9e82-c848a1dc099d	Ksh	\N	\N	\N	Ksh	60000.00	\N	\N	\N	60000.00	\N	\N	t	2025-06-24	1	1	2
5	Hp Omen 16	\N	\N	\N	Hp Omen 16	Core i9 13th gen 16Gb 1TB ssd 8GB 4060 RTX				Core i9 13th gen 16Gb 1TB ssd 8GB 4060 RTX	hp-omen-169e43aff5-5696-4898-b2f7-6c456842f474	Ksh	\N	\N	\N	Ksh	139999.00	\N	\N	\N	139999.00	\N	\N	t	2025-06-24	1	1	1
4	Epison L3210	\N	\N	\N	Epison L3210	Epison L3210 Printer				Epison L3210 Printer	epison-l321074c93608-cb57-4913-8e25-5dce73eef3ca	Ksh	\N	\N	\N	Ksh	23500.00	\N	\N	\N	23500.00	\N	\N	t	2025-06-24	1	2	6
28	Lenovo thinkpad yoga 11e	\N	\N	\N	Lenovo thinkpad yoga 11e	8gb ram 128gb ssd				8gb ram 128gb ssd	lenovo-thinkpad-yoga-11e9701d8c8-452e-4111-90d1-a86f5db95ec6	Ksh	\N	\N	\N	Ksh	14000.00	\N	\N	\N	14000.00	\N	\N	t	2025-06-25	1	1	2
27	HP 1040	\N	\N	\N	HP 1040	core i5 4gb 256gb SSD.				core i5 4gb 256gb SSD.	hp-1040063d3e98-0d95-4c73-b7eb-0405dc5edfd7	Ksh	\N	\N	\N	Ksh	17000.00	\N	\N	\N	17000.00	\N	\N	t	2025-06-25	1	1	2
26	🔥🔥🔥 Lenovo T490s	\N	\N	\N	🔥🔥🔥 Lenovo T490s	i7 8th 2.1aGHz 8CPUS 32GB RAM 512SSD touchscreen				i7 8th 2.1aGHz 8CPUS 32GB RAM 512SSD touchscreen	lenovo-t490sb2bca716-b8a8-43bc-a0df-897a60619205	Ksh	\N	\N	\N	Ksh	45999.00	\N	\N	\N	45999.00	\N	\N	t	2025-06-25	1	1	2
24	LENOVO X1 YOGA	\N	\N	\N	LENOVO X1 YOGA	i7 10510U 8CPUS, 2.3GHz 16GB RAM 512 SSD TOUCHSCREEN with stylus pen 🖊️🖊️🖊️ available in stock				i7 10510U 8CPUS, 2.3GHz 16GB RAM 512 SSD TOUCHSCREEN with stylus pen 🖊️🖊️🖊️ available in stock	lenovo-x1-yogaeb38afef-4b10-44e1-a0be-6b7c252099d2	Ksh	\N	\N	\N	Ksh	50500.00	\N	\N	\N	50500.00	\N	\N	t	2025-06-25	1	1	2
23	Lenovo x1 carbon G7	\N	\N	\N	Lenovo x1 carbon G7	CORE  i5 8 TH GEB \r\n16gb RAM 512 GB SSD STORAGE \r\n1.8 GHz BASE CLOCK SPEED \r\nBACKLIT KEYBOARD/ YPE C THUNDERBOLT				CORE  i5 8 TH GEB \r\n16gb RAM 512 GB SSD STORAGE \r\n1.8 GHz BASE CLOCK SPEED \r\nBACKLIT KEYBOARD/ YPE C THUNDERBOLT	lenovo-x1-carbon-g7399c9a59-237e-48e3-95cd-3c0a7745ba6f	Ksh	\N	\N	\N	Ksh	40000.00	\N	\N	\N	40000.00	\N	\N	t	2025-06-25	1	1	2
22	MACBOOK PRO M1 (2338)	\N	\N	\N	MACBOOK PRO M1 (2338)	APPLE M1 8 (4 Performance : 4 Efficiency) 16 GB RAM : 1 TB SSD \r\n13.3 INCH 2560 by 1600 RETINA				APPLE M1 8 (4 Performance : 4 Efficiency) 16 GB RAM : 1 TB SSD \r\n13.3 INCH 2560 by 1600 RETINA	macbook-pro-m1-2338f0624ec2-80c8-4308-952a-742e85359f66	Ksh	\N	\N	\N	Ksh	104999.00	\N	\N	\N	104999.00	\N	\N	t	2025-06-25	1	1	7
21	NEW ARRIVALS  MACBOOK PRO M1	\N	\N	\N	NEW ARRIVALS  MACBOOK PRO M1	16 INCH \r\n32 GB RAM : APPLE 512 GB SSD \r\n10 CORE (8 Performing 2 Efficiency) \r\n16 INCH LIQUID RETINA  3456 by 2234\r\nFACETIME :  USB THUNDER BOLT 4 40gb/s :USB 3.1 .				16 INCH \r\n32 GB RAM : APPLE 512 GB SSD \r\n10 CORE (8 Performing 2 Efficiency) \r\n16 INCH LIQUID RETINA  3456 by 2234\r\nFACETIME :  USB THUNDER BOLT 4 40gb/s :USB 3.1 .	new-arrivals-macbook-pro-m1ebac3367-e896-49b9-aec6-b01fb6646382	Ksh	\N	\N	\N	Ksh	168999.00	\N	\N	\N	168999.00	\N	\N	t	2025-06-25	1	1	7
20	Samsung Galaxy A56	\N	\N	\N	Samsung Galaxy A56	256gb ROM & 8GB RAM				256gb ROM & 8GB RAM	samsung-galaxy-a562fe9f400-a2ff-4f4d-ba36-40f81dd9457d	Ksh	\N	\N	\N	Ksh	50500.00	\N	\N	\N	50500.00	\N	\N	t	2025-06-25	1	3	3
19	Dell Precision 5520	\N	\N	\N	Dell Precision 5520	Corei7-7700HQ I7 16GB 512SSD with M1200 Nvidia  4 GB				Corei7-7700HQ I7 16GB 512SSD with M1200 Nvidia  4 GB	dell-precision-5520baac7e5d-8645-4945-b3a3-c4ec42eb5b5f	Ksh	\N	\N	\N	Ksh	56000.00	\N	\N	\N	56000.00	\N	\N	t	2025-06-25	1	1	2
18	DELL LATITUDE 7390	\N	\N	\N	DELL LATITUDE 7390	INTEL CORE I5 8TH 8GB RAM 256GB SSD, 1.7GHZ, (8CPUS),1.9GHZ, TOUCHSCREEN Window 11 pro ,64BITS MICROSOFT OFFICE AVAILABLE				INTEL CORE I5 8TH 8GB RAM 256GB SSD, 1.7GHZ, (8CPUS),1.9GHZ, TOUCHSCREEN Window 11 pro ,64BITS MICROSOFT OFFICE AVAILABLE	dell-latitude-7390d3fb46c8-34fc-4694-8fb4-de53da926791	Ksh	\N	\N	\N	Ksh	28000.00	\N	\N	\N	28000.00	\N	\N	t	2025-06-25	1	1	2
17	DELL LATITUDE 7280	\N	\N	\N	DELL LATITUDE 7280	CORE i7 7th GEN 8gb Ram 256gb ssd  NON TOUCH WITH BACKLIGHT KEYBOARD  2.4 GHZ (4CPUS) 2.9 GHZ  WINDOWS 10 PRO 64BITS MICROSOFT OFFICE AVAILABLE				CORE i7 7th GEN 8gb Ram 256gb ssd  NON TOUCH WITH BACKLIGHT KEYBOARD  2.4 GHZ (4CPUS) 2.9 GHZ  WINDOWS 10 PRO 64BITS MICROSOFT OFFICE AVAILABLE	dell-latitude-72800d4c589c-2668-4292-b656-b89ef4724447	Ksh	\N	\N	\N	Ksh	23000.00	\N	\N	\N	23000.00	\N	\N	t	2025-06-25	1	1	2
16	MICROSOFT PRO 5	\N	\N	\N	MICROSOFT PRO 5	CORE I5 8 GB RAM 256 GB SSD \r\n1.5 GHz BASE CLOCK 12.3 INCH 2K DISPLAY  / USB A /  DETOUCHABLE BACKLIT KEYBOARD.				CORE I5 8 GB RAM 256 GB SSD \r\n1.5 GHz BASE CLOCK 12.3 INCH 2K DISPLAY  / USB A /  DETOUCHABLE BACKLIT KEYBOARD.	microsoft-pro-55bff5920-3b3e-4252-b926-f4f15d8c143f	Ksh	\N	\N	\N	Ksh	36000.00	\N	\N	\N	36000.00	\N	\N	t	2025-06-25	1	1	2
15	Hp 840G8	\N	\N	\N	Hp 840G8	i7 11Th Gen 16gb /512gb SSD				i7 11Th Gen 16gb /512gb SSD	hp-840g8361732de-e3fb-4da4-ad43-fe526c335957	Ksh	\N	\N	\N	Ksh	55000.00	\N	\N	\N	55000.00	\N	\N	t	2025-06-25	1	1	2
14	HP Z Book 14 G7 Firefly	\N	\N	\N	HP Z Book 14 G7 Firefly	10rg gen i7 32gb 1tb ssd Touch with 4gb Nvidia graphics				10rg gen i7 32gb 1tb ssd Touch with 4gb Nvidia graphics	hp-z-book-14-g7-fireflyc02d2770-1011-466b-821f-e6a0d483164f	Ksh	\N	\N	\N	Ksh	78999.00	\N	\N	\N	78999.00	\N	\N	t	2025-06-25	1	1	2
13	HP Elitebook 840 g9	\N	\N	\N	HP Elitebook 840 g9	core i7 12th gen 32gb RWM 512gb SSD				core i7 12th gen 32gb RWM 512gb SSD	hp-elitebook-840-g97f2a4aca-b8d8-4a81-aa82-3b85ea03e05b	Ksh	\N	\N	\N	Ksh	76500.00	\N	\N	\N	76500.00	\N	\N	t	2025-06-25	1	1	2
12	Laptop Bag	\N	\N	\N	Laptop Bag	Normal Laptop Bag				Normal Laptop Bag	laptop-bag3546d10f-c8e2-43f1-bb27-7c3e967c511a	Ksh	\N	\N	\N	Ksh	950.00	\N	\N	\N	950.00	\N	\N	t	2025-06-24	1	4	9
11	Beauty Mug	\N	\N	\N	Beauty Mug	Colored Beauty Mug				Colored Beauty Mug	beauty-muge51c6ff1-82ad-4ffa-ac80-ea41810b40cf	Ksh	\N	\N	\N	Ksh	2000.00	\N	\N	\N	2000.00	\N	\N	t	2025-06-24	1	5	8
9	HP Victus 16 Gaming	\N	\N	\N	HP Victus 16 Gaming	11th Gen Core i5 16gb Ram 1TB SSD 4gb Nvidia GTX 1650				11th Gen Core i5 16gb Ram 1TB SSD 4gb Nvidia GTX 1650	hp-victus-16-gamingaf34be7d-2009-4969-a9a2-1bfb1592f982	Ksh	\N	\N	\N	Ksh	90000.00	\N	\N	\N	90000.00	\N	\N	t	2025-06-24	1	1	1
8	Hp G3	\N	\N	\N	Hp G3	Portable Business Laptop				Portable Business Laptop	hp-g3e8ab8f28-1f7b-488e-80ef-c5f67bc586e4	Ksh	\N	\N	\N	Ksh	50000.00	\N	\N	\N	50000.00	\N	1	t	2025-06-24	1	1	2
43	MACBOOK PRO M1 2021 (A2442)	\N	\N	\N	MACBOOK PRO M1 2021 (A2442)	16GB RAM 512 GB SSD STORAGE \r\n14 INCHS RETINA DISPLAY   BACKLIT KEYBOARD / TYPE C THUNDER BOLT / HDMI /				16GB RAM 512 GB SSD STORAGE \r\n14 INCHS RETINA DISPLAY   BACKLIT KEYBOARD / TYPE C THUNDER BOLT / HDMI /	macbook-pro-m1-2021-a2442f133e04a-7b8f-49f3-b683-cdfb16a0ec5f	Ksh	\N	\N	\N	Ksh	148000.00	\N	\N	\N	148000.00	\N	\N	t	2025-06-25	1	1	7
42	MACBOOK PRO M1	\N	\N	\N	MACBOOK PRO M1	16 INCH  A2485 32 GB RAM  512 GB SSD 4K RETINA DISPLAY				16 INCH  A2485 32 GB RAM  512 GB SSD 4K RETINA DISPLAY	macbook-pro-m165e342bc-e773-46bc-9ac0-8193f2eab008	Ksh	\N	\N	\N	Ksh	169000.00	\N	\N	\N	169000.00	\N	\N	t	2025-06-25	1	1	7
41	DELL PRECISION 5530	\N	\N	\N	DELL PRECISION 5530	CORE I9  8 TH GEN \r\n32 GB RAM 512 GB SSD \r\n4 GB NVIDIA QUADRO T1000\r\nBACKLIT KEYBOARD / FHD DISPLAY				CORE I9  8 TH GEN \r\n32 GB RAM 512 GB SSD \r\n4 GB NVIDIA QUADRO T1000\r\nBACKLIT KEYBOARD / FHD DISPLAY	dell-precision-55309e62270a-f6c9-467b-b014-5dc31a1dcac6	Ksh	\N	\N	\N	Ksh	74999.00	\N	\N	\N	74999.00	\N	\N	t	2025-06-25	1	1	2
40	Lenovo x1 carbon G7	\N	\N	\N	Lenovo x1 carbon G7	CORE  i5 8 TH GEB \r\n16gb RAM 512 GB SSD STORAGE \r\n1.8 GHz BASE CLOCK SPEED \r\nBACKLIT KEYBOARD/ YPE C THUNDERBOLT				CORE  i5 8 TH GEB \r\n16gb RAM 512 GB SSD STORAGE \r\n1.8 GHz BASE CLOCK SPEED \r\nBACKLIT KEYBOARD/ YPE C THUNDERBOLT	lenovo-x1-carbon-g7a5a474b2-d696-478a-9bcc-ca86f0ce6da1	Ksh	\N	\N	\N	Ksh	43999.00	\N	\N	\N	43999.00	\N	\N	t	2025-06-25	1	1	2
39	🔥LENOVO THINKPAD X380 YOGA	\N	\N	\N	🔥LENOVO THINKPAD X380 YOGA	INTEL CORE I5  8TH GEN, 8GB RAM, 256GB SSD ,1.70GHZ (8CPUS)~1.9GHZ,TOUCHSCREEN, WITH STYLUS PEN, WINDOWS 10PRO 64BITS,MICROSOFT OFFICE 🔥				INTEL CORE I5  8TH GEN, 8GB RAM, 256GB SSD ,1.70GHZ (8CPUS)~1.9GHZ,TOUCHSCREEN, WITH STYLUS PEN, WINDOWS 10PRO 64BITS,MICROSOFT OFFICE 🔥	lenovo-thinkpad-x380-yoga3e089aed-d638-4aa6-a73c-5de3147103d5	Ksh	\N	\N	\N	Ksh	28000.00	\N	\N	\N	28000.00	\N	\N	t	2025-06-25	1	1	2
38	LENOVO X1 YOGA G7	\N	\N	\N	LENOVO X1 YOGA G7	CORE I7 12 TH GEN \r\n32 GB RAM 512 GB SSD \r\nX360 TOUCH SCREEN \r\nSTYLUS PEN 🖊️ \r\nFHD INFINITY DISPLAY				CORE I7 12 TH GEN \r\n32 GB RAM 512 GB SSD \r\nX360 TOUCH SCREEN \r\nSTYLUS PEN 🖊️ \r\nFHD INFINITY DISPLAY	lenovo-x1-yoga-g7182609ab-05b9-4b63-a504-81344bac8ecb	Ksh	\N	\N	\N	Ksh	78999.00	\N	\N	\N	78999.00	\N	\N	t	2025-06-25	1	1	2
37	🔥🔥🔥Lenovo ThinkPad X1 Yoga	\N	\N	\N	🔥🔥🔥Lenovo ThinkPad X1 Yoga	Core i7 8th Gen 16GB RAM 512GB SSD With stylus pen , *1.9GHZ,(8CPUS) 2.1GHZ, windows 10 PRO Microsoft office available				Core i7 8th Gen 16GB RAM 512GB SSD With stylus pen , *1.9GHZ,(8CPUS) 2.1GHZ, windows 10 PRO Microsoft office available	lenovo-thinkpad-x1-yogaf61d2f40-5f41-4208-b6cd-f3dfa9d93f01	Ksh	\N	\N	\N	Ksh	46000.00	\N	\N	\N	46000.00	\N	\N	t	2025-06-25	1	1	2
36	💻 Dell Precision 5550	\N	\N	\N	💻 Dell Precision 5550	Mobile Workstation Beast!\r\n🔥 Intel Core i9 10th Gen (8 Cores, 16 Threads\r\n⚡ 32GB RAM | 512GB SSD (NVMe)\r\n🎮 4GB NVIDIA Quadro T2000 – Perfect for CAD, 3D, Video Editing\r\n🌟 Ultra-premium 15.6” Display (InfinityEdge)\r\n💼 Sleek & powerful – Ideal for pros and creators				Mobile Workstation Beast!\r\n🔥 Intel Core i9 10th Gen (8 Cores, 16 Threads\r\n⚡ 32GB RAM | 512GB SSD (NVMe)\r\n🎮 4GB NVIDIA Quadro T2000 – Perfect for CAD, 3D, Video Editing\r\n🌟 Ultra-premium 15.6” Display (InfinityEdge)\r\n💼 Sleek & powerful – Ideal for pros and creators	dell-precision-5550b168b292-8d46-49de-b542-e1f5094ceefe	Ksh	\N	\N	\N	Ksh	92000.00	\N	\N	\N	92000.00	\N	\N	t	2025-06-25	1	1	1
35	HP VICTUS 16 GAMING	\N	\N	\N	HP VICTUS 16 GAMING	1th gen core i5 16gb RAM 1TB SSD 4gb Nvidia GTX 1650				1th gen core i5 16gb RAM 1TB SSD 4gb Nvidia GTX 1650	hp-victus-16-gaming5f76a364-7c8c-444f-a340-57ece25abcb5	Ksh	\N	\N	\N	Ksh	95000.00	\N	\N	\N	95000.00	\N	\N	t	2025-06-25	1	1	1
34	HP PAVILION AERO	\N	\N	\N	HP PAVILION AERO	RYZEN 5 5600U 8 GB RAM 512 SSD GOLD				RYZEN 5 5600U 8 GB RAM 512 SSD GOLD	hp-pavilion-aero49a01b4e-c231-4e02-be19-757ba7b8eb55	Ksh	\N	\N	\N	Ksh	62000.00	\N	\N	\N	62000.00	\N	\N	t	2025-06-25	1	1	1
33	🔥HP Z Book 14 G7 Firefly	\N	\N	\N	🔥HP Z Book 14 G7 Firefly	10th i7 32gb 1tbssd Touch with 4gb NVidia				10th i7 32gb 1tbssd Touch with 4gb NVidia	hp-z-book-14-g7-fireflye1a49fa1-dadb-4110-a58a-ab3b089c68a6	Ksh	\N	\N	\N	Ksh	74500.00	\N	\N	\N	74500.00	\N	\N	t	2025-06-25	1	1	2
32	DELL LATITUDE 7280	\N	\N	\N	DELL LATITUDE 7280	CORE i7 7th GEN 8gb Ram 256gb ssd  NON TOUCH WITH BACKLIGHT KEYBOARD  2.4 GHZ (4CPUS) 2.9 GHZ  WINDOWS 10 PRO 64BITS MICROSOFT OFFICE AVAILABLE				CORE i7 7th GEN 8gb Ram 256gb ssd  NON TOUCH WITH BACKLIGHT KEYBOARD  2.4 GHZ (4CPUS) 2.9 GHZ  WINDOWS 10 PRO 64BITS MICROSOFT OFFICE AVAILABLE	dell-latitude-728027e20e7e-a71a-4207-a344-22d3d3fae637	Ksh	\N	\N	\N	Ksh	23000.00	\N	\N	\N	23000.00	\N	\N	t	2025-06-25	1	1	2
31	Dell XPS 15 9500	\N	\N	\N	Dell XPS 15 9500	Corei7-10750H 32GB RAM 512SSD with NVIDIA 1650TI 4GB				Corei7-10750H 32GB RAM 512SSD with NVIDIA 1650TI 4GB	dell-xps-15-9500da6e9e34-c05a-44fa-8937-08e90976d11a	Ksh	\N	\N	\N	Ksh	79999.00	\N	\N	\N	79999.00	\N	\N	t	2025-06-25	1	1	2
30	🔥 LENOVO X1 YOGA G7 – Premium Convertible Laptop 🔥	\N	\N	\N	🔥 LENOVO X1 YOGA G7 – Premium Convertible Laptop 🔥	✅ Intel Core i7 (12th Gen)\r\n✅ 32GB RAM | 512GB SSD\r\n✅ 14" FHD Infinity Touchscreen\r\n✅ 360° Flip Design (X360)\r\n✅ Stylus Pen 🖊️ Included\r\n✅ Ultra-slim & Lightweight\r\n✅ Backlit Keyboard\r\n✅ Fingerprint Reader & Webcam\r\n✅ 12 Months Manufacturer Warranty				✅ Intel Core i7 (12th Gen)\r\n✅ 32GB RAM | 512GB SSD\r\n✅ 14" FHD Infinity Touchscreen\r\n✅ 360° Flip Design (X360)\r\n✅ Stylus Pen 🖊️ Included\r\n✅ Ultra-slim & Lightweight\r\n✅ Backlit Keyboard\r\n✅ Fingerprint Reader & Webcam\r\n✅ 12 Months Manufacturer Warranty	lenovo-x1-yoga-g7-premium-convertible-laptop-0e21a7ff-e063-466d-9c81-8ec5465a105a	Ksh	\N	\N	\N	Ksh	75000.00	\N	\N	\N	75000.00	\N	\N	t	2025-06-25	1	1	2
29	LENOVO 460P	\N	\N	\N	LENOVO 460P	CORE I7 6TH GEN (6700HQ)\r\n8 GB RAM 256 GB SSD STORAGE \r\n2.6 GHZ BASE CLOCK PROCESSOR SPEED \r\n4.2 GHZ TURBO BOOST PROCESSOR SPEED \r\n2 GB NVIDIA GRAPHICS DEDICATED \r\nBACKLIT KEYBOARD / WIFI / BLUETOOTH /				CORE I7 6TH GEN (6700HQ)\r\n8 GB RAM 256 GB SSD STORAGE \r\n2.6 GHZ BASE CLOCK PROCESSOR SPEED \r\n4.2 GHZ TURBO BOOST PROCESSOR SPEED \r\n2 GB NVIDIA GRAPHICS DEDICATED \r\nBACKLIT KEYBOARD / WIFI / BLUETOOTH /	lenovo-460pd2890aba-9292-4192-83fc-f84fb9a8f925	Ksh	\N	\N	\N	Ksh	26000.00	\N	\N	\N	26000.00	\N	\N	t	2025-06-25	1	1	2
44	DELL PRECISION 5530	\N	\N	\N	DELL PRECISION 5530	CORE I9  9 TH GEN \r\n32 GB RAM 512 GB SSD \r\n4 GB NVIDIA QUADRO T1000\r\nBACKLIT KEYBOARD / FHD DISPLAY				CORE I9  9 TH GEN \r\n32 GB RAM 512 GB SSD \r\n4 GB NVIDIA QUADRO T1000\r\nBACKLIT KEYBOARD / FHD DISPLAY	dell-precision-5530515f0fdb-1530-49b2-9b66-234b90a2f623	Ksh	\N	\N	\N	Ksh	82000.00	\N	\N	\N	82000.00	\N	\N	t	2025-06-25	1	1	2
53	HP RAZOR BLADE 14	\N	\N	\N	HP RAZOR BLADE 14	CORE I7 7TH GEN  16 GB RAM 1TB SSD  2.8 GHZ BASE CLOCK 8CPUs  4.2 GHZ TURBO BOOST 8 CPUs 14 INCHS IPS DISPLAY 6 GB NVIDIA GEFORCE  MULTI COLOR BACKLIGHT KEYBOARD RGB				CORE I7 7TH GEN  16 GB RAM 1TB SSD  2.8 GHZ BASE CLOCK 8CPUs  4.2 GHZ TURBO BOOST 8 CPUs 14 INCHS IPS DISPLAY 6 GB NVIDIA GEFORCE  MULTI COLOR BACKLIGHT KEYBOARD RGB	hp-razor-blade-14d74a3324-02e7-44e7-8665-0003b42e8172	Ksh	\N	\N	\N	Ksh	84000.00	\N	\N	\N	84000.00	\N	\N	t	2025-06-27	1	1	1
52	HP 840 G5 core i5 8th gen	\N	\N	\N	HP 840 G5 core i5 8th gen	/core i5/8gb Ram/ 256gb ssd				/core i5/8gb Ram/ 256gb ssd	hp-840-g5-core-i5-8th-gen85ad1373-a761-4d3e-a46c-dd817164f08a	Ksh	\N	\N	\N	Ksh	28000.00	\N	\N	\N	28000.00	\N	\N	t	2025-06-25	1	1	2
51	DELL LATITUDE 7280	\N	\N	\N	DELL LATITUDE 7280	CORE I5 7TH GEN 8GB RAM 256GB SSD NON TOUCH WITH 2.6 GHZ (4CPUS) 2.7 GHZ ,BACKLIT KEYBOARD ,WINDOWS 10PRO 64BITS MICROSOFT OFFICE				CORE I5 7TH GEN 8GB RAM 256GB SSD NON TOUCH WITH 2.6 GHZ (4CPUS) 2.7 GHZ ,BACKLIT KEYBOARD ,WINDOWS 10PRO 64BITS MICROSOFT OFFICE	dell-latitude-72801bb9c6cc-c44d-45ed-a652-ff3af26c00dd	Ksh	\N	\N	\N	Ksh	23000.00	\N	\N	\N	23000.00	\N	\N	t	2025-06-25	1	1	2
50	DELL 3310	\N	\N	\N	DELL 3310	CORE  I5 8TH GEN \r\n8 GB RAM / 256 GB SSD \r\n2.1 GHZ BASE CLOCK\r\n8 CPUS 4.6 GHz MAX SPEED\r\n13.3 INCH TOUCH  SCREEN				CORE  I5 8TH GEN \r\n8 GB RAM / 256 GB SSD \r\n2.1 GHZ BASE CLOCK\r\n8 CPUS 4.6 GHz MAX SPEED\r\n13.3 INCH TOUCH  SCREEN	dell-331001d4c4c7-5f27-4ca7-9dda-65e3e672a17b	Ksh	\N	\N	\N	Ksh	25000.00	\N	\N	\N	25000.00	\N	\N	t	2025-06-25	1	1	2
49	HP ELITEBOOK 830 G5	\N	\N	\N	HP ELITEBOOK 830 G5	CORE I5 8TH GEN 8 GB RAM 256 GB SSD				CORE I5 8TH GEN 8 GB RAM 256 GB SSD	hp-elitebook-830-g5e61e6fa3-90e4-40d3-9d5e-6721d3ca49e0	Ksh	\N	\N	\N	Ksh	28000.00	\N	\N	\N	28000.00	\N	\N	t	2025-06-25	1	1	2
48	HP ELITEBOOK 1040 G8	\N	\N	\N	HP ELITEBOOK 1040 G8	Core I7 11 TH GEN 32 GB RAM 512 GB SSD 3.0 GHz , X360 TOUCH SCREEN, HDMI, TYPE C				Core I7 11 TH GEN 32 GB RAM 512 GB SSD 3.0 GHz , X360 TOUCH SCREEN, HDMI, TYPE C	hp-elitebook-1040-g822b656a7-d3d0-482e-aa2a-a78d1e1367a5	Ksh	\N	\N	\N	Ksh	65000.00	\N	\N	\N	65000.00	\N	\N	t	2025-06-25	1	1	2
47	*DEll XPS 13 9365	\N	\N	\N	*DEll XPS 13 9365	CORE i7 7TH GEN 16 GB RAM,  512 GB SSD STORAGE TOUCH SCREEN WITH BACKLIGHT KEYBOARD WINDOWS 10   PRO 64BITS MICROSOFT OFFICE AVAILABLE				CORE i7 7TH GEN 16 GB RAM,  512 GB SSD STORAGE TOUCH SCREEN WITH BACKLIGHT KEYBOARD WINDOWS 10   PRO 64BITS MICROSOFT OFFICE AVAILABLE	dell-xps-13-9365e9bd3536-23d3-44be-87ab-f6629487cef6	Ksh	\N	\N	\N	Ksh	48000.00	\N	\N	\N	48000.00	\N	\N	t	2025-06-25	1	1	2
46	HP ELITEBOOK 840 G6	\N	\N	\N	HP ELITEBOOK 840 G6	CORE I5 8 TH GEN \r\n8 GB RAM : 256 GB SSD \r\n14 INCH FHD TOUCH SCREEN \r\nBACKLIT KEYBAORD				CORE I5 8 TH GEN \r\n8 GB RAM : 256 GB SSD \r\n14 INCH FHD TOUCH SCREEN \r\nBACKLIT KEYBAORD	hp-elitebook-840-g6cddcddec-ef5b-49f6-b861-8550b46f663f	Ksh	\N	\N	\N	Ksh	31000.00	\N	\N	\N	31000.00	\N	\N	t	2025-06-25	1	1	2
45	HP Elitebook 830 G6/8th	\N	\N	\N	HP Elitebook 830 G6/8th	gen/Core i5/16gb Ram/512gb SSD/x360 touch				gen/Core i5/16gb Ram/512gb SSD/x360 touch	hp-elitebook-830-g68th07b8f677-8858-4edc-bcc0-9fddff2e186b	Ksh	\N	\N	\N	Ksh	37500.00	\N	\N	\N	37500.00	\N	\N	t	2025-06-25	1	1	2
25	🔥LENOVO THINKPAD X380 YOGA	\N	\N	\N	🔥LENOVO THINKPAD X380 YOGA	INTEL CORE I5  8TH GEN, 8GB RAM, 256GB SSD ,1.70GHZ (8CPUS)~1.9GHZ,TOUCHSCREEN, WITH STYLUS PEN, WINDOWS 10PRO 64BITS,MICROSOFT OFFICE				INTEL CORE I5  8TH GEN, 8GB RAM, 256GB SSD ,1.70GHZ (8CPUS)~1.9GHZ,TOUCHSCREEN, WITH STYLUS PEN, WINDOWS 10PRO 64BITS,MICROSOFT OFFICE	lenovo-thinkpad-x380-yogad1b7ac9f-cc8b-46cb-9190-55838c14fa4f	Ksh	\N	\N	\N	Ksh	28000.00	\N	\N	\N	28000.00	\N	\N	t	2025-06-25	1	1	2
10	Rechargable wireless mouse	\N	\N	\N	Rechargable wireless mouse	Rechargable wireless mouse				Rechargable wireless mouse	rechargable-wireless-mousec0f24a30-8baa-48d3-a875-5818b0532a51	Ksh	\N	\N	\N	Ksh	800.00	\N	\N	\N	800.00	\N	\N	t	2025-06-24	1	6	18
57	Hp Elite book 840 G9	\N	\N	\N	Hp Elite book 840 G9	core i7 12th gen 32gb RAM 512GBssd				core i7 12th gen 32gb RAM 512GBssd	hp-elite-book-840-g91c7dc60f-76d5-4f07-85fd-e5793a20cc82	Ksh	\N	\N	\N	Ksh	72000.00	\N	\N	\N	72000.00	\N	\N	t	2025-06-27	1	1	2
56	🔥🔥🔥HP  Eliteboook 830 G8	\N	\N	\N	🔥🔥🔥HP  Eliteboook 830 G8	I7 11TH @ 3.0 GHZ (8VPUS) 32Gb RAM 512ssd touch available in stock				I7 11TH @ 3.0 GHZ (8VPUS) 32Gb RAM 512ssd touch available in stock	hp-eliteboook-830-g8f63f38e4-52fc-4df4-8694-2b15b02bb32b	Ksh	\N	\N	\N	Ksh	55000.00	\N	\N	\N	55000.00	\N	\N	t	2025-06-27	1	1	2
55	🔥🔥 HP Dragonfly G2	\N	\N	\N	🔥🔥 HP Dragonfly G2	i7 11th @2.80GHz (8CPUS) 16GB RAM 512SSD x360 Touchscreen Window 11 pro Available in stock				i7 11th @2.80GHz (8CPUS) 16GB RAM 512SSD x360 Touchscreen Window 11 pro Available in stock	hp-dragonfly-g2ddca444a-17d6-4cb2-89c1-a7ddf4255796	Ksh	\N	\N	\N	Ksh	71000.00	\N	\N	\N	71000.00	\N	\N	t	2025-06-27	1	1	1
54	HP DRAGON FLY G3	\N	\N	\N	HP DRAGON FLY G3	CORE I7 12 TH GEN \r\n32 GB RAM 512 GB SSD \r\n14 INCH FHD DISPLAY \r\nBACKLIT KEYBOARD				CORE I7 12 TH GEN \r\n32 GB RAM 512 GB SSD \r\n14 INCH FHD DISPLAY \r\nBACKLIT KEYBOARD	hp-dragon-fly-g3cbbefb44-b333-4067-acce-76ce6f903911	Ksh	\N	\N	\N	Ksh	79999.00	\N	\N	\N	79999.00	\N	\N	t	2025-06-27	1	1	1
\.


--
-- Data for Name: supplier_product_colors; Type: TABLE DATA; Schema: public; Owner: b2b_user
--

COPY public.supplier_product_colors (id, product_id, productcolor_id) FROM stdin;
112	57	7
113	56	7
114	55	7
115	54	7
116	53	7
117	52	7
118	51	7
119	50	7
120	49	7
121	48	7
122	47	7
123	46	7
124	45	7
125	44	7
126	43	7
127	42	7
128	41	7
129	40	7
130	39	7
131	38	7
132	37	7
133	36	7
134	35	7
135	34	7
136	33	7
137	32	7
138	31	7
139	30	7
140	29	7
141	28	7
142	27	7
143	26	7
144	25	7
145	24	7
146	23	7
147	22	7
148	21	7
149	20	7
150	19	7
151	18	7
152	17	7
153	16	7
154	15	7
155	14	7
156	13	7
157	12	7
158	11	7
159	10	7
160	9	7
161	8	7
162	7	7
163	6	7
164	5	7
165	4	7
167	57	8
168	56	8
169	55	8
170	54	8
171	53	8
172	52	8
173	51	8
174	50	8
175	49	8
176	48	8
177	47	8
178	46	8
179	45	8
180	44	8
181	43	8
182	42	8
183	41	8
184	40	8
185	39	8
186	38	8
187	37	8
188	36	8
189	35	8
190	34	8
191	33	8
192	32	8
193	31	8
194	30	8
195	29	8
196	28	8
197	27	8
198	26	8
199	25	8
200	24	8
201	23	8
202	22	8
203	21	8
204	20	8
205	19	8
206	18	8
207	17	8
208	16	8
209	15	8
210	14	8
211	13	8
212	12	8
213	11	8
214	10	8
215	9	8
216	8	8
217	7	8
218	6	8
219	5	8
220	4	8
\.


--
-- Data for Name: supplier_product_materials; Type: TABLE DATA; Schema: public; Owner: b2b_user
--

COPY public.supplier_product_materials (id, product_id, productmaterial_id) FROM stdin;
57	57	3
58	56	3
59	55	3
60	54	3
61	53	3
62	52	3
63	51	3
64	50	3
65	49	3
66	48	3
67	47	3
68	46	3
69	45	3
70	44	3
71	43	3
72	42	3
73	41	3
74	40	3
75	39	3
76	38	3
77	37	3
78	36	3
79	35	3
80	34	3
81	33	3
82	32	3
83	31	3
84	30	3
85	29	3
86	28	3
87	27	3
88	26	3
89	25	3
90	24	3
91	23	3
92	22	3
93	21	3
94	20	3
95	19	3
96	18	3
97	17	3
98	16	3
99	15	3
100	14	3
101	13	3
102	12	3
103	11	3
104	10	3
105	9	3
106	8	3
107	7	3
108	6	3
109	5	3
110	4	3
112	57	2
113	56	2
114	55	2
115	54	2
116	53	2
117	52	2
118	51	2
119	50	2
120	49	2
121	48	2
122	47	2
123	46	2
124	45	2
125	44	2
126	43	2
127	42	2
128	41	2
129	40	2
130	39	2
131	38	2
132	37	2
133	36	2
134	35	2
135	34	2
136	33	2
137	32	2
138	31	2
139	30	2
140	29	2
141	28	2
142	27	2
143	26	2
144	25	2
145	24	2
146	23	2
147	22	2
148	21	2
149	20	2
150	19	2
151	18	2
152	17	2
153	16	2
154	15	2
155	14	2
156	13	2
157	12	2
158	11	2
159	10	2
160	9	2
161	8	2
162	7	2
163	6	2
164	5	2
165	4	2
\.


--
-- Data for Name: supplier_product_store; Type: TABLE DATA; Schema: public; Owner: b2b_user
--

COPY public.supplier_product_store (id, product_id, store_id) FROM stdin;
11	8	4
12	7	4
13	6	4
14	5	4
15	4	4
16	9	4
17	10	4
18	11	4
19	12	4
20	13	4
21	14	4
22	15	4
23	16	4
24	17	4
25	18	4
26	19	4
27	20	4
28	21	4
29	22	4
30	23	4
31	24	4
32	25	4
33	26	4
34	27	4
35	28	4
36	29	4
37	30	4
38	31	4
39	32	4
40	33	4
41	34	4
42	35	4
43	36	4
44	37	4
45	38	4
46	39	4
47	40	4
48	41	4
49	42	4
50	43	4
51	44	4
52	45	4
53	46	4
54	47	4
55	48	4
56	49	4
57	50	4
58	51	4
59	52	4
60	53	4
61	54	4
62	55	4
63	56	4
64	57	4
\.


--
-- Data for Name: supplier_productcategory; Type: TABLE DATA; Schema: public; Owner: b2b_user
--

COPY public.supplier_productcategory (id, name, name_ar, name_fr, name_de, name_en, product_count, image, slug, created_on) FROM stdin;
3	Phones	\N	\N	\N	Phones	8	ProductCategory/images/phonesf1186290-9e6d-4306-8753-53df70b98bac-b147879.jpeg	phonesf1186290-9e6d-4306-8753-53df70b98bac	2025-06-24
4	Laptop Bags	\N	\N	\N	Laptop Bags	3	ProductCategory/images/laptop-bagsfe77e747-1339-43a3-ae9c-ecaf2ff6039d-5d.webp	laptop-bagsfe77e747-1339-43a3-ae9c-ecaf2ff6039d	2025-06-24
5	Designer Mugs	\N	\N	\N	Designer Mugs	3	ProductCategory/images/designer-mugs189e7237-d172-4341-8063-af50ec1dbddd-.jpeg	designer-mugs189e7237-d172-4341-8063-af50ec1dbddd	2025-06-24
6	Mouse	\N	\N	\N	Mouse	3	ProductCategory/images/mouse300e2e15-cfea-44f7-bcfb-6284a8656e1a-1dce872e.jpeg	mouse300e2e15-cfea-44f7-bcfb-6284a8656e1a	2025-06-24
2	Printers	\N	\N	\N	Printers	7	ProductCategory/images/printersee5af875-3f31-44b2-ae3e-54a43cc9b7a1-b598a.jpeg	printersee5af875-3f31-44b2-ae3e-54a43cc9b7a1	2025-06-24
1	Laptops	\N	\N	\N	Laptops	176	ProductCategory/images/laptops509a457f-9c4f-4089-b83d-afd4d0b3d76f-2f54da.jpeg	laptops509a457f-9c4f-4089-b83d-afd4d0b3d76f	2025-06-24
\.


--
-- Data for Name: supplier_productcolor; Type: TABLE DATA; Schema: public; Owner: b2b_user
--

COPY public.supplier_productcolor (id, name, name_ar, name_fr, name_de, name_en) FROM stdin;
7	black	\N	\N	\N	black
8	purple	\N	\N	\N	purple
\.


--
-- Data for Name: supplier_productimage; Type: TABLE DATA; Schema: public; Owner: b2b_user
--

COPY public.supplier_productimage (id, image, slug, created_on, product_id) FROM stdin;
3	ProductImage/images/rechargabl-7aad0a9a-cb1a-4c00-8ed7-6f8854b3b2f7-im.jpg	rechargabl-7aad0a9a-cb1a-4c00-8ed7-6f8854b3b2f7-images	2025-06-24	10
4	ProductImage/images/hp-victus-373a4510-b8f6-4bd5-9eee-5912721c0869-ima.jpg	hp-victus-373a4510-b8f6-4bd5-9eee-5912721c0869-images	2025-06-24	9
5	ProductImage/images/hp-omen-16-c5626acf-e81f-4e20-98ff-9322d0969242-im.jpg	hp-omen-16-c5626acf-e81f-4e20-98ff-9322d0969242-images	2025-06-24	5
6	ProductImage/images/i7-11th-3-38170127-8b09-41b1-9263-02bc3fe03ef2-ima.jpg	i7-11th-3-38170127-8b09-41b1-9263-02bc3fe03ef2-images	2025-06-24	6
7	ProductImage/images/hp-omen-16-913f3aae-4ff8-4152-9104-61d3e6d957a8-im.jpg	hp-omen-16-913f3aae-4ff8-4152-9104-61d3e6d957a8-images	2025-06-24	5
8	ProductImage/images/epison-l32-55dfa784-48e3-45cd-8a50-32a01a06c5b9-im.jpg	epison-l32-55dfa784-48e3-45cd-8a50-32a01a06c5b9-images	2025-06-24	4
9	ProductImage/images/beauty-mug-93745dfa-a8f7-426e-85fa-70203be3487d-im.jpg	beauty-mug-93745dfa-a8f7-426e-85fa-70203be3487d-images	2025-06-24	11
10	ProductImage/images/hp-g3-29a4a4a6-c0ee-415b-8d0c-8eada364b0f5-images-.jpg	hp-g3-29a4a4a6-c0ee-415b-8d0c-8eada364b0f5-images	2025-06-24	8
11	ProductImage/images/hp-mini-91e6cbc4-e69f-471e-82ac-38440fedfd17-image.jpg	hp-mini-91e6cbc4-e69f-471e-82ac-38440fedfd17-images	2025-06-24	7
12	ProductImage/images/laptop-bag-f8eab8a5-29da-4d74-841a-51d094dc4e79-im.webp	laptop-bag-f8eab8a5-29da-4d74-841a-51d094dc4e79-images	2025-06-24	12
13	ProductImage/images/hp-z-book-29986f1e-401f-4d7a-9473-2e0696f891f8-ima.jpg	hp-z-book-29986f1e-401f-4d7a-9473-2e0696f891f8-images	2025-06-25	14
14	ProductImage/images/hp-840g8-19e0cb37-fbd0-48e0-92e6-4d753e9cf170-imag.jpg	hp-840g8-19e0cb37-fbd0-48e0-92e6-4d753e9cf170-images	2025-06-25	15
15	ProductImage/images/microsoft-a0a48fe2-c87b-465e-990d-883f6608d7b2-ima.jpg	microsoft-a0a48fe2-c87b-465e-990d-883f6608d7b2-images	2025-06-25	16
16	ProductImage/images/dell-latit-03906a64-1194-4ffa-b184-603e028836b7-im.jpg	dell-latit-03906a64-1194-4ffa-b184-603e028836b7-images	2025-06-25	51
17	ProductImage/images/dell-preci-83d54d32-7417-4877-ae29-fa18a2996532-im.jpg	dell-preci-83d54d32-7417-4877-ae29-fa18a2996532-images	2025-06-25	19
18	ProductImage/images/samsung-ga-4f1cb8fd-129b-4a79-bb5e-9d4bb6e82cd5-im.jpg	samsung-ga-4f1cb8fd-129b-4a79-bb5e-9d4bb6e82cd5-images	2025-06-25	20
19	ProductImage/images/macbook-pr-3e96dfe7-85ae-4043-8422-dc52463a3f88-im.jpg	macbook-pr-3e96dfe7-85ae-4043-8422-dc52463a3f88-images	2025-06-25	42
20	ProductImage/images/macbook-pr-c190cd28-0e0a-4c7d-922d-37a6ab9af072-im.jpeg	macbook-pr-c190cd28-0e0a-4c7d-922d-37a6ab9af072-images	2025-06-25	22
21	ProductImage/images/lenovo-x1-54be9467-5c1e-4eab-95d7-ed611b58ac26-ima.jpg	lenovo-x1-54be9467-5c1e-4eab-95d7-ed611b58ac26-images	2025-06-25	24
22	ProductImage/images/lenovo-th-83b37ac5-2b79-4368-a2dd-b4095db34a4c-ima.jpg	lenovo-th-83b37ac5-2b79-4368-a2dd-b4095db34a4c-images	2025-06-25	39
23	ProductImage/images/lenovo-d9ded111-6394-45f6-b677-8aaf430663f3-images.jpg	lenovo-d9ded111-6394-45f6-b677-8aaf430663f3-images	2025-06-25	26
24	ProductImage/images/hp-1040-67e04f77-6acb-4546-89e1-ec71e8da081e-image.jpg	hp-1040-67e04f77-6acb-4546-89e1-ec71e8da081e-images	2025-06-25	27
25	ProductImage/images/lenovo-460-be0b641e-2320-4af2-8347-fee5dfd5d963-im.jpg	lenovo-460-be0b641e-2320-4af2-8347-fee5dfd5d963-images	2025-06-25	29
26	ProductImage/images/lenovo-x-84561c96-2711-420b-9329-deabedcbec77-imag.jpg	lenovo-x-84561c96-2711-420b-9329-deabedcbec77-images	2025-06-25	30
27	ProductImage/images/dell-xps-1-c551e2e1-453e-4a81-9007-2284bdc07b2a-im.jpg	dell-xps-1-c551e2e1-453e-4a81-9007-2284bdc07b2a-images	2025-06-25	31
28	ProductImage/images/dell-latit-d643f6a6-16f3-44d6-a97b-53d624a66835-im.jpg	dell-latit-d643f6a6-16f3-44d6-a97b-53d624a66835-images	2025-06-25	32
29	ProductImage/images/hp-z-book-902a6b4c-a13c-403d-acef-f2590a55c87c-ima.jpg	hp-z-book-902a6b4c-a13c-403d-acef-f2590a55c87c-images	2025-06-25	14
30	ProductImage/images/hp-z-book-b919b669-01da-4d67-a56f-483ffbb21815-ima.jpg	hp-z-book-b919b669-01da-4d67-a56f-483ffbb21815-images	2025-06-25	14
31	ProductImage/images/hp-pavilio-dd5d12b2-bf9d-4e1f-adb9-b7531502bfee-im.jpg	hp-pavilio-dd5d12b2-bf9d-4e1f-adb9-b7531502bfee-images	2025-06-25	34
32	ProductImage/images/hp-victus-65435ed0-f0a2-4b73-8b90-6665207ece49-ima.jpg	hp-victus-65435ed0-f0a2-4b73-8b90-6665207ece49-images	2025-06-25	35
33	ProductImage/images/dell-pre-f6b13ae4-22c5-478f-9a06-574097f7204d-imag.jpg	dell-pre-f6b13ae4-22c5-478f-9a06-574097f7204d-images	2025-06-25	36
34	ProductImage/images/lenovo-fead718e-f777-4334-b76f-5c97fc91cd50-images.jpg	lenovo-fead718e-f777-4334-b76f-5c97fc91cd50-images	2025-06-25	37
35	ProductImage/images/lenovo-th-21e1b5c6-a11f-4f3e-8957-d241364244ba-ima.jpg	lenovo-th-21e1b5c6-a11f-4f3e-8957-d241364244ba-images	2025-06-25	39
36	ProductImage/images/lenovo-x1-0835c4cb-0a9e-4769-b362-6038fb444e3c-ima.jpg	lenovo-x1-0835c4cb-0a9e-4769-b362-6038fb444e3c-images	2025-06-25	40
37	ProductImage/images/dell-preci-a5448332-285e-46be-951e-a8a3301aa850-im.jpg	dell-preci-a5448332-285e-46be-951e-a8a3301aa850-images	2025-06-25	41
38	ProductImage/images/macbook-pr-18c454eb-5d8f-474b-8f87-85c21701b9d6-im.jpg	macbook-pr-18c454eb-5d8f-474b-8f87-85c21701b9d6-images	2025-06-25	43
39	ProductImage/images/dell-preci-36405384-6a1f-4971-bbf7-e3331e9658cc-im.jpg	dell-preci-36405384-6a1f-4971-bbf7-e3331e9658cc-images	2025-06-25	44
40	ProductImage/images/hp-elitebo-3e0c3dde-4c00-4f7a-a721-10ced405aac9-im.jpg	hp-elitebo-3e0c3dde-4c00-4f7a-a721-10ced405aac9-images	2025-06-25	45
41	ProductImage/images/laptop-bag-1690e383-824c-4584-936b-ee9c7965c90c-im.jpg	laptop-bag-1690e383-824c-4584-936b-ee9c7965c90c-images	2025-06-25	12
42	ProductImage/images/hp-pavilio-4f089238-2bc6-4828-bc7e-b429f4b16368-im.jpg	hp-pavilio-4f089238-2bc6-4828-bc7e-b429f4b16368-images	2025-06-25	34
43	ProductImage/images/hp-elitebo-fa86b7ec-c807-4170-9392-f1ff528f7e82-im.jpg	hp-elitebo-fa86b7ec-c807-4170-9392-f1ff528f7e82-images	2025-06-25	46
44	ProductImage/images/dell-xps-4440c7a3-6a4a-4ea5-bad7-327d9d322834-imag.jpg	dell-xps-4440c7a3-6a4a-4ea5-bad7-327d9d322834-images	2025-06-25	47
45	ProductImage/images/hp-elitebo-e6776538-ed68-4a8e-be02-7c7ba2d21e29-im.jpg	hp-elitebo-e6776538-ed68-4a8e-be02-7c7ba2d21e29-images	2025-06-25	49
46	ProductImage/images/dell-latit-13dc09f0-8612-4f6c-9840-49efc230ef3b-im.jpg	dell-latit-13dc09f0-8612-4f6c-9840-49efc230ef3b-images	2025-06-25	51
47	ProductImage/images/dell-3310-9b08319e-bd3e-4d48-aa4c-81d696b16939-ima.jpg	dell-3310-9b08319e-bd3e-4d48-aa4c-81d696b16939-images	2025-06-25	50
48	ProductImage/images/hp-840-g5-8a19bcdf-e0a4-4128-8d03-d564c05a57d3-ima.jpg	hp-840-g5-8a19bcdf-e0a4-4128-8d03-d564c05a57d3-images	2025-06-25	52
49	ProductImage/images/hp-elitebo-2693e5cb-e98e-4cf5-ac6b-946ee50bff68-im.jpg	hp-elitebo-2693e5cb-e98e-4cf5-ac6b-946ee50bff68-images	2025-06-25	48
50	ProductImage/images/lenovo-x1-4b99be5c-8736-4aca-b014-0bf2f6a0abcc-ima.jpg	lenovo-x1-4b99be5c-8736-4aca-b014-0bf2f6a0abcc-images	2025-06-25	38
51	ProductImage/images/hp-z-book-b8193f4d-ba7b-4d65-8e19-e7db3870d80e-ima.jpg	hp-z-book-b8193f4d-ba7b-4d65-8e19-e7db3870d80e-images	2025-06-25	33
52	ProductImage/images/lenovo-thi-e7f432d5-925d-40cd-bf27-36b6d86f5cdf-im.jpg	lenovo-thi-e7f432d5-925d-40cd-bf27-36b6d86f5cdf-images	2025-06-25	28
53	ProductImage/images/lenovo-th-76111447-3f50-4b2c-96d3-9edabcd95267-ima.jpg	lenovo-th-76111447-3f50-4b2c-96d3-9edabcd95267-images	2025-06-25	39
54	ProductImage/images/lenovo-x1-d8d85466-596a-42bc-92af-160104111f50-ima.jpg	lenovo-x1-d8d85466-596a-42bc-92af-160104111f50-images	2025-06-25	23
55	ProductImage/images/new-arriva-fa591566-15a4-4ebe-8307-4533fd3089bc-im.jpg	new-arriva-fa591566-15a4-4ebe-8307-4533fd3089bc-images	2025-06-25	21
56	ProductImage/images/dell-latit-8884fc87-44d6-49d5-8017-0780cbfc3b3b-im.jpg	dell-latit-8884fc87-44d6-49d5-8017-0780cbfc3b3b-images	2025-06-25	18
57	ProductImage/images/dell-latit-be84c7e1-8543-42e9-a625-b8f5dee20f9b-im.jpg	dell-latit-be84c7e1-8543-42e9-a625-b8f5dee20f9b-images	2025-06-25	51
58	ProductImage/images/hp-elitebo-24b4b424-c3c7-47f6-9de0-6582f697b85d-im.jpg	hp-elitebo-24b4b424-c3c7-47f6-9de0-6582f697b85d-images	2025-06-25	13
59	ProductImage/images/lenovo-th-bac47788-98f7-4695-978b-c85437608f66-ima.jpg	lenovo-th-bac47788-98f7-4695-978b-c85437608f66-images	2025-06-25	39
60	ProductImage/images/lenovo-th-8a14a78b-6edc-4ddb-a353-9bdc9de10bfc-ima.jpg	lenovo-th-8a14a78b-6edc-4ddb-a353-9bdc9de10bfc-images	2025-06-25	25
61	ProductImage/images/dell-latit-02407fc6-e7cc-493e-bb7a-4a21a13437f5-im.jpg	dell-latit-02407fc6-e7cc-493e-bb7a-4a21a13437f5-images	2025-06-25	17
62	ProductImage/images/hp-razor-b-2dfe5c32-5a8c-4032-9ee9-be6463698ab7-im.jpeg	hp-razor-b-2dfe5c32-5a8c-4032-9ee9-be6463698ab7-images	2025-06-27	53
63	ProductImage/images/hp-dragon-f4535d46-4a01-4463-8b96-44f8d1c1dc02-ima.jpeg	hp-dragon-f4535d46-4a01-4463-8b96-44f8d1c1dc02-images	2025-06-27	54
64	ProductImage/images/hp-drag-8feddfa1-e604-413a-9e16-9cf090fe5c76-image.jpeg	hp-drag-8feddfa1-e604-413a-9e16-9cf090fe5c76-images	2025-06-27	55
65	ProductImage/images/hp-eli-c439d7da-0311-46cb-8c01-4f852018d191-images.jpeg	hp-eli-c439d7da-0311-46cb-8c01-4f852018d191-images	2025-06-27	56
66	ProductImage/images/hp-elite-b-2da43f5e-bf45-4628-a996-bda0a47f12dc-im.jpeg	hp-elite-b-2da43f5e-bf45-4628-a996-bda0a47f12dc-images	2025-06-27	57
67	ProductImage/images/rechargabl-716acfdd-3095-426b-8cbb-920f675dc746-im.jpg	rechargabl-716acfdd-3095-426b-8cbb-920f675dc746-images	2025-06-27	10
\.


--
-- Data for Name: supplier_productmaterial; Type: TABLE DATA; Schema: public; Owner: b2b_user
--

COPY public.supplier_productmaterial (id, name, name_ar, name_fr, name_de, name_en) FROM stdin;
3	plastic	\N	\N	\N	plastic
2	aluminium	\N	\N	\N	aluminium
\.


--
-- Data for Name: supplier_productprice; Type: TABLE DATA; Schema: public; Owner: b2b_user
--

COPY public.supplier_productprice (id, currency, min_price, max_price, product_id) FROM stdin;
3	Ksh	72000.00	72000.00	57
4	Ksh	55000.00	55000.00	56
5	Ksh	71000.00	71000.00	55
6	Ksh	79999.00	79999.00	54
7	Ksh	84000.00	84000.00	53
8	Ksh	28000.00	28000.00	52
9	Ksh	23000.00	23000.00	51
10	Ksh	25000.00	25000.00	50
11	Ksh	28000.00	28000.00	49
12	Ksh	65000.00	65000.00	48
13	Ksh	48000.00	48000.00	47
14	Ksh	31000.00	31000.00	46
15	Ksh	37500.00	37500.00	45
16	Ksh	82000.00	82000.00	44
17	Ksh	148000.00	148000.00	43
18	Ksh	169000.00	169000.00	42
19	Ksh	74999.00	74999.00	41
20	Ksh	43999.00	43999.00	40
21	Ksh	28000.00	28000.00	39
22	Ksh	78999.00	78999.00	38
23	Ksh	46000.00	46000.00	37
24	Ksh	92000.00	92000.00	36
25	Ksh	95000.00	95000.00	35
26	Ksh	62000.00	62000.00	34
27	Ksh	74500.00	74500.00	33
28	Ksh	23000.00	23000.00	32
29	Ksh	79999.00	79999.00	31
30	Ksh	75000.00	75000.00	30
31	Ksh	26000.00	26000.00	29
32	Ksh	14000.00	14000.00	28
33	Ksh	17000.00	17000.00	27
34	Ksh	45999.00	45999.00	26
35	Ksh	28000.00	28000.00	25
36	Ksh	50500.00	50500.00	24
37	Ksh	40000.00	40000.00	23
38	Ksh	104999.00	104999.00	22
39	Ksh	168999.00	168999.00	21
40	Ksh	50500.00	50500.00	20
41	Ksh	56000.00	56000.00	19
42	Ksh	28000.00	28000.00	18
43	Ksh	23000.00	23000.00	17
44	Ksh	36000.00	36000.00	16
45	Ksh	55000.00	55000.00	15
46	Ksh	78999.00	78999.00	14
47	Ksh	76500.00	76500.00	13
48	Ksh	950.00	950.00	12
49	Ksh	2000.00	2000.00	11
50	Ksh	800.00	800.00	10
51	Ksh	90000.00	90000.00	9
52	Ksh	50000.00	50000.00	8
53	Ksh	30000.00	30000.00	7
54	Ksh	60000.00	60000.00	6
55	Ksh	139999.00	139999.00	5
56	Ksh	23500.00	23500.00	4
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
6	Inkjet	\N	\N	\N	Inkjet	ProductSubCategory/images/inkjetc2f92320-5e94-47ba-b69c-7d30110f2487-e549f6e.jpeg	inkjetc2f92320-5e94-47ba-b69c-7d30110f2487	2025-06-24	2
3	Android	\N	\N	\N	Android	ProductSubCategory/images/android925aed98-3a54-47d3-b78b-7e13e3918279-d6121f.jpeg	android925aed98-3a54-47d3-b78b-7e13e3918279	2025-06-24	3
2	Business	\N	\N	\N	Business	ProductSubCategory/images/businesscb8287cc-a067-4cbb-9d0b-6b08ff4231de-dc044.business-laptopjpeg	businesscb8287cc-a067-4cbb-9d0b-6b08ff4231de	2025-06-24	1
1	Gaming	\N	\N	\N	Gaming	ProductSubCategory/images/gaming65ceb52a-977d-4b7f-91d0-4feb45b0ec55-0015a14.jpeg	gaming65ceb52a-977d-4b7f-91d0-4feb45b0ec55	2025-06-24	1
5	Wireless	\N	\N	\N	Wireless	ProductSubCategory/images/wireless85f98399-7347-43dd-ae1a-2c1a7b12b44e-80fe3.jpeg	wireless85f98399-7347-43dd-ae1a-2c1a7b12b44e	2025-06-24	2
7	Apple	\N	\N	\N	Apple	ProductSubCategory/images/apple8fd5ce40-9bcc-4730-915d-a79b80c8434d-91023cb3.jpeg	apple8fd5ce40-9bcc-4730-915d-a79b80c8434d	2025-06-24	1
4	iOS	\N	\N	\N	iOS	ProductSubCategory/images/iosf6b177dd-4a2f-47a2-b182-d8d2b860b305-6cfcc47b-2.jpeg	iosf6b177dd-4a2f-47a2-b182-d8d2b860b305	2025-06-24	3
8	Designer Mugs	\N	\N	\N	Designer Mugs	ProductSubCategory/images/designer-mugs422e9071-6d7c-4cb7-8099-c2c2118d4fb1-.jpg	designer-mugs422e9071-6d7c-4cb7-8099-c2c2118d4fb1	2025-06-24	5
9	Normal Laptop Bag	\N	\N	\N	Normal Laptop Bag	ProductSubCategory/images/normal-laptop-bag547f6208-4577-4889-b39f-42eb74405.webp	normal-laptop-bag547f6208-4577-4889-b39f-42eb74405918	2025-06-24	4
10	wired	\N	\N	\N	wired	ProductSubCategory/images/wired5d252309-6bf7-4b89-b806-905e4d30b7c0-e62cb14d.jpeg	wired5d252309-6bf7-4b89-b806-905e4d30b7c0	2025-06-24	6
12	NOKIA	\N	\N	\N	NOKIA	ProductSubCategory/images/nokia8eebddfc-772f-4a3e-9b09-00e1840f4045-b16e23f3.jpeg	nokia8eebddfc-772f-4a3e-9b09-00e1840f4045	2025-06-25	3
13	VIVO	\N	\N	\N	VIVO	ProductSubCategory/images/vivo03478c0e-58f8-4752-9ca3-f014670d4130-a2d132ed-.jpeg	vivo03478c0e-58f8-4752-9ca3-f014670d4130	2025-06-25	3
15	OPPO	\N	\N	\N	OPPO	ProductSubCategory/images/oppo99c04728-a3b6-4f63-bd18-2305cbf68ac6-c3c0f1b3-.png	oppo99c04728-a3b6-4f63-bd18-2305cbf68ac6	2025-06-25	3
16	ITEL	\N	\N	\N	ITEL	ProductSubCategory/images/itel78d75681-82e8-4ce1-b1e7-a7dc3ec96cad-b2a8a91a-.png	itel78d75681-82e8-4ce1-b1e7-a7dc3ec96cad	2025-06-25	3
17	TECNO	\N	\N	\N	TECNO	ProductSubCategory/images/tecno964d457c-f14c-42bc-bd55-1144dfe0f4a7-7acd0197.tecnopng	tecno964d457c-f14c-42bc-bd55-1144dfe0f4a7	2025-06-25	3
11	Samsung	\N	\N	\N	Samsung	ProductSubCategory/images/samsung8c46a23f-d5e3-4db7-a2de-019e1f9d0e3b-98c792.png	samsung8c46a23f-d5e3-4db7-a2de-019e1f9d0e3b	2025-06-25	3
14	REDMI	\N	\N	\N	REDMI	ProductSubCategory/images/redmie54aa83e-5627-4677-ab85-19ec24ad7978-b903707b.png	redmie54aa83e-5627-4677-ab85-19ec24ad7978	2025-06-25	3
18	Wireless Mouse	\N	\N	\N	Wireless Mouse	ProductSubCategory/images/wireless-mouse0ea30c68-973f-4958-9eb4-4b8672d1e7b3.jpg	wireless-mouse0ea30c68-973f-4958-9eb4-4b8672d1e7b3	2025-06-27	6
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
1	Imegeries	\N	\N	\N	Imegeries	Visit Us				Visit Us	2323.00	\N	\N	\N	2323.00	Ksh	\N	\N	\N	Ksh	0	imegeriesff9e11a2-e41c-45e6-8546-2953b97628cc	2025-06-24	3
\.


--
-- Data for Name: supplier_serviceimage; Type: TABLE DATA; Schema: public; Owner: b2b_user
--

COPY public.supplier_serviceimage (id, image, slug, created_on, service_id) FROM stdin;
1	ServiceImage/images/imegeries-c4174154-1e2f-4b3e-89e7-9f94291edfb2-9b3.jpeg	imegeries-c4174154-1e2f-4b3e-89e7-9f94291edfb2	2025-06-24	1
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
4	Betwan Suppliers	\N	\N	\N	Betwan Suppliers	betwan-suppliersc3608791-a05a-4267-a1d3-20cc1b8df5d1	Store/images/betwan-suppliers3859400d-e3bb-47fa-82da-7a0ad33ff3.jpeg	t	2025-06-24	3
\.


--
-- Data for Name: supplier_wishlistproduct; Type: TABLE DATA; Schema: public; Owner: b2b_user
--

COPY public.supplier_wishlistproduct (id, buyer_id, product_id) FROM stdin;
1	10	49
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

SELECT pg_catalog.setval('public.auth_app_clientprofile_id_seq', 11, true);


--
-- Name: auth_app_clientprofile_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: b2b_user
--

SELECT pg_catalog.setval('public.auth_app_clientprofile_team_id_seq', 87, true);


--
-- Name: auth_app_supportprofile_id_seq; Type: SEQUENCE SET; Schema: public; Owner: b2b_user
--

SELECT pg_catalog.setval('public.auth_app_supportprofile_id_seq', 1, true);


--
-- Name: auth_app_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: b2b_user
--

SELECT pg_catalog.setval('public.auth_app_user_groups_id_seq', 5, true);


--
-- Name: auth_app_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: b2b_user
--

SELECT pg_catalog.setval('public.auth_app_user_id_seq', 15, true);


--
-- Name: auth_app_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: b2b_user
--

SELECT pg_catalog.setval('public.auth_app_user_user_permissions_id_seq', 9, true);


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: b2b_user
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, true);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: b2b_user
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 276, true);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: b2b_user
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 296, true);


--
-- Name: buyer_cart_id_seq; Type: SEQUENCE SET; Schema: public; Owner: b2b_user
--

SELECT pg_catalog.setval('public.buyer_cart_id_seq', 2, true);


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
-- Name: coms_interclientmessage_id_seq; Type: SEQUENCE SET; Schema: public; Owner: b2b_user
--

SELECT pg_catalog.setval('public.coms_interclientmessage_id_seq', 1, false);


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

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 474, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: b2b_user
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 74, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: b2b_user
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 54, true);


--
-- Name: django_site_id_seq; Type: SEQUENCE SET; Schema: public; Owner: b2b_user
--

SELECT pg_catalog.setval('public.django_site_id_seq', 4, true);


--
-- Name: manager_advert_id_seq; Type: SEQUENCE SET; Schema: public; Owner: b2b_user
--

SELECT pg_catalog.setval('public.manager_advert_id_seq', 1, true);


--
-- Name: manager_advertisinglocation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: b2b_user
--

SELECT pg_catalog.setval('public.manager_advertisinglocation_id_seq', 1, true);


--
-- Name: manager_calenderevent_id_seq; Type: SEQUENCE SET; Schema: public; Owner: b2b_user
--

SELECT pg_catalog.setval('public.manager_calenderevent_id_seq', 1, false);


--
-- Name: manager_careerapplication_id_seq; Type: SEQUENCE SET; Schema: public; Owner: b2b_user
--

SELECT pg_catalog.setval('public.manager_careerapplication_id_seq', 5, true);


--
-- Name: manager_contactmessage_id_seq; Type: SEQUENCE SET; Schema: public; Owner: b2b_user
--

SELECT pg_catalog.setval('public.manager_contactmessage_id_seq', 30, true);


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

SELECT pg_catalog.setval('public.manager_promotion_id_seq', 4, true);


--
-- Name: manager_sentemail_id_seq; Type: SEQUENCE SET; Schema: public; Owner: b2b_user
--

SELECT pg_catalog.setval('public.manager_sentemail_id_seq', 1, false);


--
-- Name: manager_service_id_seq; Type: SEQUENCE SET; Schema: public; Owner: b2b_user
--

SELECT pg_catalog.setval('public.manager_service_id_seq', 36, true);


--
-- Name: manager_servicecategory_id_seq; Type: SEQUENCE SET; Schema: public; Owner: b2b_user
--

SELECT pg_catalog.setval('public.manager_servicecategory_id_seq', 5, true);


--
-- Name: manager_serviceimage_id_seq; Type: SEQUENCE SET; Schema: public; Owner: b2b_user
--

SELECT pg_catalog.setval('public.manager_serviceimage_id_seq', 36, true);


--
-- Name: manager_showroom_id_seq; Type: SEQUENCE SET; Schema: public; Owner: b2b_user
--

SELECT pg_catalog.setval('public.manager_showroom_id_seq', 2, true);


--
-- Name: manager_showroom_store_id_seq; Type: SEQUENCE SET; Schema: public; Owner: b2b_user
--

SELECT pg_catalog.setval('public.manager_showroom_store_id_seq', 2, true);


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
-- Name: payment_transaction_id_seq; Type: SEQUENCE SET; Schema: public; Owner: b2b_user
--

SELECT pg_catalog.setval('public.payment_transaction_id_seq', 1, false);


--
-- Name: socialaccount_socialaccount_id_seq; Type: SEQUENCE SET; Schema: public; Owner: b2b_user
--

SELECT pg_catalog.setval('public.socialaccount_socialaccount_id_seq', 4, true);


--
-- Name: socialaccount_socialapp_id_seq; Type: SEQUENCE SET; Schema: public; Owner: b2b_user
--

SELECT pg_catalog.setval('public.socialaccount_socialapp_id_seq', 4, true);


--
-- Name: socialaccount_socialapp_sites_id_seq; Type: SEQUENCE SET; Schema: public; Owner: b2b_user
--

SELECT pg_catalog.setval('public.socialaccount_socialapp_sites_id_seq', 6, true);


--
-- Name: socialaccount_socialtoken_id_seq; Type: SEQUENCE SET; Schema: public; Owner: b2b_user
--

SELECT pg_catalog.setval('public.socialaccount_socialtoken_id_seq', 4, true);


--
-- Name: supplier_deliverycarrier_id_seq; Type: SEQUENCE SET; Schema: public; Owner: b2b_user
--

SELECT pg_catalog.setval('public.supplier_deliverycarrier_id_seq', 1, false);


--
-- Name: supplier_order_id_seq; Type: SEQUENCE SET; Schema: public; Owner: b2b_user
--

SELECT pg_catalog.setval('public.supplier_order_id_seq', 1, true);


--
-- Name: supplier_ordernote_id_seq; Type: SEQUENCE SET; Schema: public; Owner: b2b_user
--

SELECT pg_catalog.setval('public.supplier_ordernote_id_seq', 1, false);


--
-- Name: supplier_orderproductvariation_color_id_seq; Type: SEQUENCE SET; Schema: public; Owner: b2b_user
--

SELECT pg_catalog.setval('public.supplier_orderproductvariation_color_id_seq', 8, true);


--
-- Name: supplier_orderproductvariation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: b2b_user
--

SELECT pg_catalog.setval('public.supplier_orderproductvariation_id_seq', 15, true);


--
-- Name: supplier_orderproductvariation_material_id_seq; Type: SEQUENCE SET; Schema: public; Owner: b2b_user
--

SELECT pg_catalog.setval('public.supplier_orderproductvariation_material_id_seq', 8, true);


--
-- Name: supplier_ordershippingdetail_id_seq; Type: SEQUENCE SET; Schema: public; Owner: b2b_user
--

SELECT pg_catalog.setval('public.supplier_ordershippingdetail_id_seq', 1, false);


--
-- Name: supplier_product_colors_id_seq; Type: SEQUENCE SET; Schema: public; Owner: b2b_user
--

SELECT pg_catalog.setval('public.supplier_product_colors_id_seq', 220, true);


--
-- Name: supplier_product_id_seq; Type: SEQUENCE SET; Schema: public; Owner: b2b_user
--

SELECT pg_catalog.setval('public.supplier_product_id_seq', 61, true);


--
-- Name: supplier_product_materials_id_seq; Type: SEQUENCE SET; Schema: public; Owner: b2b_user
--

SELECT pg_catalog.setval('public.supplier_product_materials_id_seq', 165, true);


--
-- Name: supplier_product_store_id_seq; Type: SEQUENCE SET; Schema: public; Owner: b2b_user
--

SELECT pg_catalog.setval('public.supplier_product_store_id_seq', 67, true);


--
-- Name: supplier_productcategory_id_seq; Type: SEQUENCE SET; Schema: public; Owner: b2b_user
--

SELECT pg_catalog.setval('public.supplier_productcategory_id_seq', 6, true);


--
-- Name: supplier_productcolor_id_seq; Type: SEQUENCE SET; Schema: public; Owner: b2b_user
--

SELECT pg_catalog.setval('public.supplier_productcolor_id_seq', 8, true);


--
-- Name: supplier_productimage_id_seq; Type: SEQUENCE SET; Schema: public; Owner: b2b_user
--

SELECT pg_catalog.setval('public.supplier_productimage_id_seq', 67, true);


--
-- Name: supplier_productmaterial_id_seq; Type: SEQUENCE SET; Schema: public; Owner: b2b_user
--

SELECT pg_catalog.setval('public.supplier_productmaterial_id_seq', 3, true);


--
-- Name: supplier_productprice_id_seq; Type: SEQUENCE SET; Schema: public; Owner: b2b_user
--

SELECT pg_catalog.setval('public.supplier_productprice_id_seq', 57, true);


--
-- Name: supplier_productreview_id_seq; Type: SEQUENCE SET; Schema: public; Owner: b2b_user
--

SELECT pg_catalog.setval('public.supplier_productreview_id_seq', 1, false);


--
-- Name: supplier_productsubcategory_id_seq; Type: SEQUENCE SET; Schema: public; Owner: b2b_user
--

SELECT pg_catalog.setval('public.supplier_productsubcategory_id_seq', 18, true);


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

SELECT pg_catalog.setval('public.supplier_service_id_seq', 1, true);


--
-- Name: supplier_serviceimage_id_seq; Type: SEQUENCE SET; Schema: public; Owner: b2b_user
--

SELECT pg_catalog.setval('public.supplier_serviceimage_id_seq', 1, true);


--
-- Name: supplier_servicetag_id_seq; Type: SEQUENCE SET; Schema: public; Owner: b2b_user
--

SELECT pg_catalog.setval('public.supplier_servicetag_id_seq', 1, false);


--
-- Name: supplier_store_id_seq; Type: SEQUENCE SET; Schema: public; Owner: b2b_user
--

SELECT pg_catalog.setval('public.supplier_store_id_seq', 4, true);


--
-- Name: supplier_wishlistproduct_id_seq; Type: SEQUENCE SET; Schema: public; Owner: b2b_user
--

SELECT pg_catalog.setval('public.supplier_wishlistproduct_id_seq', 1, true);


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
-- Name: coms_interclientmessage coms_interclientmessage_pkey; Type: CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.coms_interclientmessage
    ADD CONSTRAINT coms_interclientmessage_pkey PRIMARY KEY (id);


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
-- Name: manager_careerapplication manager_careerapplication_pkey; Type: CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.manager_careerapplication
    ADD CONSTRAINT manager_careerapplication_pkey PRIMARY KEY (id);


--
-- Name: manager_contactmessage manager_contactmessage_pkey; Type: CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.manager_contactmessage
    ADD CONSTRAINT manager_contactmessage_pkey PRIMARY KEY (id);


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
-- Name: manager_servicecategory manager_servicecategory_pkey; Type: CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.manager_servicecategory
    ADD CONSTRAINT manager_servicecategory_pkey PRIMARY KEY (id);


--
-- Name: manager_servicecategory manager_servicecategory_slug_key; Type: CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.manager_servicecategory
    ADD CONSTRAINT manager_servicecategory_slug_key UNIQUE (slug);


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
-- Name: payment_transaction payment_transaction_mpesa_code_key; Type: CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.payment_transaction
    ADD CONSTRAINT payment_transaction_mpesa_code_key UNIQUE (mpesa_code);


--
-- Name: payment_transaction payment_transaction_pkey; Type: CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.payment_transaction
    ADD CONSTRAINT payment_transaction_pkey PRIMARY KEY (id);


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
-- Name: supplier_orderproductvariation_material supplier_orderproductvar_orderproductvariation_id_4c6a5181_uniq; Type: CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.supplier_orderproductvariation_material
    ADD CONSTRAINT supplier_orderproductvar_orderproductvariation_id_4c6a5181_uniq UNIQUE (orderproductvariation_id, productmaterial_id);


--
-- Name: supplier_orderproductvariation_color supplier_orderproductvar_orderproductvariation_id_9faaf25c_uniq; Type: CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.supplier_orderproductvariation_color
    ADD CONSTRAINT supplier_orderproductvar_orderproductvariation_id_9faaf25c_uniq UNIQUE (orderproductvariation_id, productcolor_id);


--
-- Name: supplier_orderproductvariation_color supplier_orderproductvariation_color_pkey; Type: CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.supplier_orderproductvariation_color
    ADD CONSTRAINT supplier_orderproductvariation_color_pkey PRIMARY KEY (id);


--
-- Name: supplier_orderproductvariation_material supplier_orderproductvariation_material_pkey; Type: CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.supplier_orderproductvariation_material
    ADD CONSTRAINT supplier_orderproductvariation_material_pkey PRIMARY KEY (id);


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
-- Name: supplier_product_colors supplier_product_colors_pkey; Type: CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.supplier_product_colors
    ADD CONSTRAINT supplier_product_colors_pkey PRIMARY KEY (id);


--
-- Name: supplier_product_colors supplier_product_colors_product_id_productcolor__51fd640f_uniq; Type: CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.supplier_product_colors
    ADD CONSTRAINT supplier_product_colors_product_id_productcolor__51fd640f_uniq UNIQUE (product_id, productcolor_id);


--
-- Name: supplier_product_materials supplier_product_materia_product_id_productmateri_60be1bff_uniq; Type: CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.supplier_product_materials
    ADD CONSTRAINT supplier_product_materia_product_id_productmateri_60be1bff_uniq UNIQUE (product_id, productmaterial_id);


--
-- Name: supplier_product_materials supplier_product_materials_pkey; Type: CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.supplier_product_materials
    ADD CONSTRAINT supplier_product_materials_pkey PRIMARY KEY (id);


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
-- Name: supplier_productcolor supplier_productcolor_name_ar_0114ce1e_uniq; Type: CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.supplier_productcolor
    ADD CONSTRAINT supplier_productcolor_name_ar_0114ce1e_uniq UNIQUE (name_ar);


--
-- Name: supplier_productcolor supplier_productcolor_name_bac5abd6_uniq; Type: CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.supplier_productcolor
    ADD CONSTRAINT supplier_productcolor_name_bac5abd6_uniq UNIQUE (name);


--
-- Name: supplier_productcolor supplier_productcolor_name_de_e50a31d5_uniq; Type: CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.supplier_productcolor
    ADD CONSTRAINT supplier_productcolor_name_de_e50a31d5_uniq UNIQUE (name_de);


--
-- Name: supplier_productcolor supplier_productcolor_name_en_fe47bd2f_uniq; Type: CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.supplier_productcolor
    ADD CONSTRAINT supplier_productcolor_name_en_fe47bd2f_uniq UNIQUE (name_en);


--
-- Name: supplier_productcolor supplier_productcolor_name_fr_3dc0383a_uniq; Type: CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.supplier_productcolor
    ADD CONSTRAINT supplier_productcolor_name_fr_3dc0383a_uniq UNIQUE (name_fr);


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
-- Name: supplier_productmaterial supplier_productmaterial_name_45de6b23_uniq; Type: CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.supplier_productmaterial
    ADD CONSTRAINT supplier_productmaterial_name_45de6b23_uniq UNIQUE (name);


--
-- Name: supplier_productmaterial supplier_productmaterial_name_ar_beb19736_uniq; Type: CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.supplier_productmaterial
    ADD CONSTRAINT supplier_productmaterial_name_ar_beb19736_uniq UNIQUE (name_ar);


--
-- Name: supplier_productmaterial supplier_productmaterial_name_de_db08cede_uniq; Type: CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.supplier_productmaterial
    ADD CONSTRAINT supplier_productmaterial_name_de_db08cede_uniq UNIQUE (name_de);


--
-- Name: supplier_productmaterial supplier_productmaterial_name_en_ed6485c5_uniq; Type: CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.supplier_productmaterial
    ADD CONSTRAINT supplier_productmaterial_name_en_ed6485c5_uniq UNIQUE (name_en);


--
-- Name: supplier_productmaterial supplier_productmaterial_name_fr_cbf10b2c_uniq; Type: CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.supplier_productmaterial
    ADD CONSTRAINT supplier_productmaterial_name_fr_cbf10b2c_uniq UNIQUE (name_fr);


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
-- Name: coms_interclientmessage_chat_id_18559665; Type: INDEX; Schema: public; Owner: b2b_user
--

CREATE INDEX coms_interclientmessage_chat_id_18559665 ON public.coms_interclientmessage USING btree (chat_id);


--
-- Name: coms_interclientmessage_sender_id_efa059f6; Type: INDEX; Schema: public; Owner: b2b_user
--

CREATE INDEX coms_interclientmessage_sender_id_efa059f6 ON public.coms_interclientmessage USING btree (sender_id);


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
-- Name: manager_service_category_id_98c1f9ce; Type: INDEX; Schema: public; Owner: b2b_user
--

CREATE INDEX manager_service_category_id_98c1f9ce ON public.manager_service USING btree (category_id);


--
-- Name: manager_service_slug_059ac103_like; Type: INDEX; Schema: public; Owner: b2b_user
--

CREATE INDEX manager_service_slug_059ac103_like ON public.manager_service USING btree (slug varchar_pattern_ops);


--
-- Name: manager_servicecategory_slug_30610745_like; Type: INDEX; Schema: public; Owner: b2b_user
--

CREATE INDEX manager_servicecategory_slug_30610745_like ON public.manager_servicecategory USING btree (slug varchar_pattern_ops);


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
-- Name: payment_transaction_mpesa_code_e47775b8_like; Type: INDEX; Schema: public; Owner: b2b_user
--

CREATE INDEX payment_transaction_mpesa_code_e47775b8_like ON public.payment_transaction USING btree (mpesa_code varchar_pattern_ops);


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
-- Name: supplier_order_payment_id_57f3d513; Type: INDEX; Schema: public; Owner: b2b_user
--

CREATE INDEX supplier_order_payment_id_57f3d513 ON public.supplier_order USING btree (payment_id);


--
-- Name: supplier_order_supplier_id_4292fc37; Type: INDEX; Schema: public; Owner: b2b_user
--

CREATE INDEX supplier_order_supplier_id_4292fc37 ON public.supplier_order USING btree (supplier_id);


--
-- Name: supplier_ordernote_user_id_74f43a3c; Type: INDEX; Schema: public; Owner: b2b_user
--

CREATE INDEX supplier_ordernote_user_id_74f43a3c ON public.supplier_ordernote USING btree (user_id);


--
-- Name: supplier_orderproductvaria_orderproductvariation_id_a76edb6f; Type: INDEX; Schema: public; Owner: b2b_user
--

CREATE INDEX supplier_orderproductvaria_orderproductvariation_id_a76edb6f ON public.supplier_orderproductvariation_color USING btree (orderproductvariation_id);


--
-- Name: supplier_orderproductvaria_orderproductvariation_id_b0c6baf7; Type: INDEX; Schema: public; Owner: b2b_user
--

CREATE INDEX supplier_orderproductvaria_orderproductvariation_id_b0c6baf7 ON public.supplier_orderproductvariation_material USING btree (orderproductvariation_id);


--
-- Name: supplier_orderproductvaria_productmaterial_id_2a8c6cb9; Type: INDEX; Schema: public; Owner: b2b_user
--

CREATE INDEX supplier_orderproductvaria_productmaterial_id_2a8c6cb9 ON public.supplier_orderproductvariation_material USING btree (productmaterial_id);


--
-- Name: supplier_orderproductvariation_cart_id_0ce6675e; Type: INDEX; Schema: public; Owner: b2b_user
--

CREATE INDEX supplier_orderproductvariation_cart_id_0ce6675e ON public.supplier_orderproductvariation USING btree (cart_id);


--
-- Name: supplier_orderproductvariation_color_productcolor_id_c1ceea7c; Type: INDEX; Schema: public; Owner: b2b_user
--

CREATE INDEX supplier_orderproductvariation_color_productcolor_id_c1ceea7c ON public.supplier_orderproductvariation_color USING btree (productcolor_id);


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
-- Name: supplier_product_colors_product_id_78838609; Type: INDEX; Schema: public; Owner: b2b_user
--

CREATE INDEX supplier_product_colors_product_id_78838609 ON public.supplier_product_colors USING btree (product_id);


--
-- Name: supplier_product_colors_productcolor_id_734e48c3; Type: INDEX; Schema: public; Owner: b2b_user
--

CREATE INDEX supplier_product_colors_productcolor_id_734e48c3 ON public.supplier_product_colors USING btree (productcolor_id);


--
-- Name: supplier_product_materials_product_id_22e0a8d6; Type: INDEX; Schema: public; Owner: b2b_user
--

CREATE INDEX supplier_product_materials_product_id_22e0a8d6 ON public.supplier_product_materials USING btree (product_id);


--
-- Name: supplier_product_materials_productmaterial_id_0ef8f26e; Type: INDEX; Schema: public; Owner: b2b_user
--

CREATE INDEX supplier_product_materials_productmaterial_id_0ef8f26e ON public.supplier_product_materials USING btree (productmaterial_id);


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
-- Name: supplier_productcolor_name_ar_0114ce1e_like; Type: INDEX; Schema: public; Owner: b2b_user
--

CREATE INDEX supplier_productcolor_name_ar_0114ce1e_like ON public.supplier_productcolor USING btree (name_ar varchar_pattern_ops);


--
-- Name: supplier_productcolor_name_bac5abd6_like; Type: INDEX; Schema: public; Owner: b2b_user
--

CREATE INDEX supplier_productcolor_name_bac5abd6_like ON public.supplier_productcolor USING btree (name varchar_pattern_ops);


--
-- Name: supplier_productcolor_name_de_e50a31d5_like; Type: INDEX; Schema: public; Owner: b2b_user
--

CREATE INDEX supplier_productcolor_name_de_e50a31d5_like ON public.supplier_productcolor USING btree (name_de varchar_pattern_ops);


--
-- Name: supplier_productcolor_name_en_fe47bd2f_like; Type: INDEX; Schema: public; Owner: b2b_user
--

CREATE INDEX supplier_productcolor_name_en_fe47bd2f_like ON public.supplier_productcolor USING btree (name_en varchar_pattern_ops);


--
-- Name: supplier_productcolor_name_fr_3dc0383a_like; Type: INDEX; Schema: public; Owner: b2b_user
--

CREATE INDEX supplier_productcolor_name_fr_3dc0383a_like ON public.supplier_productcolor USING btree (name_fr varchar_pattern_ops);


--
-- Name: supplier_productimage_product_id_5f2b7070; Type: INDEX; Schema: public; Owner: b2b_user
--

CREATE INDEX supplier_productimage_product_id_5f2b7070 ON public.supplier_productimage USING btree (product_id);


--
-- Name: supplier_productimage_slug_125e424e_like; Type: INDEX; Schema: public; Owner: b2b_user
--

CREATE INDEX supplier_productimage_slug_125e424e_like ON public.supplier_productimage USING btree (slug varchar_pattern_ops);


--
-- Name: supplier_productmaterial_name_45de6b23_like; Type: INDEX; Schema: public; Owner: b2b_user
--

CREATE INDEX supplier_productmaterial_name_45de6b23_like ON public.supplier_productmaterial USING btree (name varchar_pattern_ops);


--
-- Name: supplier_productmaterial_name_ar_beb19736_like; Type: INDEX; Schema: public; Owner: b2b_user
--

CREATE INDEX supplier_productmaterial_name_ar_beb19736_like ON public.supplier_productmaterial USING btree (name_ar varchar_pattern_ops);


--
-- Name: supplier_productmaterial_name_de_db08cede_like; Type: INDEX; Schema: public; Owner: b2b_user
--

CREATE INDEX supplier_productmaterial_name_de_db08cede_like ON public.supplier_productmaterial USING btree (name_de varchar_pattern_ops);


--
-- Name: supplier_productmaterial_name_en_ed6485c5_like; Type: INDEX; Schema: public; Owner: b2b_user
--

CREATE INDEX supplier_productmaterial_name_en_ed6485c5_like ON public.supplier_productmaterial USING btree (name_en varchar_pattern_ops);


--
-- Name: supplier_productmaterial_name_fr_cbf10b2c_like; Type: INDEX; Schema: public; Owner: b2b_user
--

CREATE INDEX supplier_productmaterial_name_fr_cbf10b2c_like ON public.supplier_productmaterial USING btree (name_fr varchar_pattern_ops);


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
-- Name: coms_interclientmessage coms_interclientmess_chat_id_18559665_fk_coms_inte; Type: FK CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.coms_interclientmessage
    ADD CONSTRAINT coms_interclientmess_chat_id_18559665_fk_coms_inte FOREIGN KEY (chat_id) REFERENCES public.coms_interclientchat(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: coms_interclientmessage coms_interclientmessage_sender_id_efa059f6_fk_auth_app_user_id; Type: FK CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.coms_interclientmessage
    ADD CONSTRAINT coms_interclientmessage_sender_id_efa059f6_fk_auth_app_user_id FOREIGN KEY (sender_id) REFERENCES public.auth_app_user(id) DEFERRABLE INITIALLY DEFERRED;


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
-- Name: manager_service manager_service_category_id_98c1f9ce_fk_manager_s; Type: FK CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.manager_service
    ADD CONSTRAINT manager_service_category_id_98c1f9ce_fk_manager_s FOREIGN KEY (category_id) REFERENCES public.manager_servicecategory(id) DEFERRABLE INITIALLY DEFERRED;


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
-- Name: supplier_order supplier_order_payment_id_57f3d513_fk_payment_transaction_id; Type: FK CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.supplier_order
    ADD CONSTRAINT supplier_order_payment_id_57f3d513_fk_payment_transaction_id FOREIGN KEY (payment_id) REFERENCES public.payment_transaction(id) DEFERRABLE INITIALLY DEFERRED;


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
-- Name: supplier_orderproductvariation supplier_orderproduc_order_id_6fe9284c_fk_supplier_; Type: FK CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.supplier_orderproductvariation
    ADD CONSTRAINT supplier_orderproduc_order_id_6fe9284c_fk_supplier_ FOREIGN KEY (order_id) REFERENCES public.supplier_order(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: supplier_orderproductvariation_color supplier_orderproduc_orderproductvariatio_a76edb6f_fk_supplier_; Type: FK CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.supplier_orderproductvariation_color
    ADD CONSTRAINT supplier_orderproduc_orderproductvariatio_a76edb6f_fk_supplier_ FOREIGN KEY (orderproductvariation_id) REFERENCES public.supplier_orderproductvariation(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: supplier_orderproductvariation_material supplier_orderproduc_orderproductvariatio_b0c6baf7_fk_supplier_; Type: FK CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.supplier_orderproductvariation_material
    ADD CONSTRAINT supplier_orderproduc_orderproductvariatio_b0c6baf7_fk_supplier_ FOREIGN KEY (orderproductvariation_id) REFERENCES public.supplier_orderproductvariation(id) DEFERRABLE INITIALLY DEFERRED;


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
-- Name: supplier_orderproductvariation_color supplier_orderproduc_productcolor_id_c1ceea7c_fk_supplier_; Type: FK CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.supplier_orderproductvariation_color
    ADD CONSTRAINT supplier_orderproduc_productcolor_id_c1ceea7c_fk_supplier_ FOREIGN KEY (productcolor_id) REFERENCES public.supplier_productcolor(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: supplier_orderproductvariation_material supplier_orderproduc_productmaterial_id_2a8c6cb9_fk_supplier_; Type: FK CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.supplier_orderproductvariation_material
    ADD CONSTRAINT supplier_orderproduc_productmaterial_id_2a8c6cb9_fk_supplier_ FOREIGN KEY (productmaterial_id) REFERENCES public.supplier_productmaterial(id) DEFERRABLE INITIALLY DEFERRED;


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
-- Name: supplier_product_colors supplier_product_col_product_id_78838609_fk_supplier_; Type: FK CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.supplier_product_colors
    ADD CONSTRAINT supplier_product_col_product_id_78838609_fk_supplier_ FOREIGN KEY (product_id) REFERENCES public.supplier_product(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: supplier_product_colors supplier_product_col_productcolor_id_734e48c3_fk_supplier_; Type: FK CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.supplier_product_colors
    ADD CONSTRAINT supplier_product_col_productcolor_id_734e48c3_fk_supplier_ FOREIGN KEY (productcolor_id) REFERENCES public.supplier_productcolor(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: supplier_product_materials supplier_product_mat_product_id_22e0a8d6_fk_supplier_; Type: FK CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.supplier_product_materials
    ADD CONSTRAINT supplier_product_mat_product_id_22e0a8d6_fk_supplier_ FOREIGN KEY (product_id) REFERENCES public.supplier_product(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: supplier_product_materials supplier_product_mat_productmaterial_id_0ef8f26e_fk_supplier_; Type: FK CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.supplier_product_materials
    ADD CONSTRAINT supplier_product_mat_productmaterial_id_0ef8f26e_fk_supplier_ FOREIGN KEY (productmaterial_id) REFERENCES public.supplier_productmaterial(id) DEFERRABLE INITIALLY DEFERRED;


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
-- Name: supplier_productimage supplier_productimag_product_id_5f2b7070_fk_supplier_; Type: FK CONSTRAINT; Schema: public; Owner: b2b_user
--

ALTER TABLE ONLY public.supplier_productimage
    ADD CONSTRAINT supplier_productimag_product_id_5f2b7070_fk_supplier_ FOREIGN KEY (product_id) REFERENCES public.supplier_product(id) DEFERRABLE INITIALLY DEFERRED;


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
-- Name: DEFAULT PRIVILEGES FOR TABLES; Type: DEFAULT ACL; Schema: public; Owner: postgres
--

ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA public GRANT ALL ON TABLES  TO b2b_user;


--
-- PostgreSQL database dump complete
--

