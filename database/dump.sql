--
-- PostgreSQL database dump
--

-- Dumped from database version 14.10 (Debian 14.10-1.pgdg120+1)
-- Dumped by pg_dump version 16.0

-- Started on 2024-02-11 23:26:26

SET statement_timeout
= 0;
SET lock_timeout
= 0;
SET idle_in_transaction_session_timeout
= 0;
SET client_encoding
= 'UTF8';
SET standard_conforming_strings
= on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies
= false;
SET xmloption
= content;
SET client_min_messages
= warning;
SET row_security
= off;

--
-- TOC entry 6 (class 2615 OID 2200)
-- Name: public; Type: SCHEMA; Schema: -; Owner: postgres
--

-- *not* creating schema, since initdb creates it


ALTER SCHEMA public OWNER TO postgres;

--
-- TOC entry 2 (class 3079 OID 16454)
-- Name: uuid-ossp; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION
IF NOT EXISTS "uuid-ossp"
WITH SCHEMA public;


--
-- TOC entry 3368 (class 0 OID 0)
-- Dependencies: 2
-- Name: EXTENSION "uuid-ossp"; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION "uuid-ossp" IS 'generate universally unique identifiers (UUIDs)';


--
-- TOC entry 215 (class 1255 OID 16421)
-- Name: update_transaction_updated_at(); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.update_transaction_updated_at() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
BEGIN
    NEW."updatedAt" = CURRENT_TIMESTAMP;
RETURN NEW;
END;
$$;


ALTER FUNCTION public.update_transaction_updated_at() OWNER TO postgres;

SET default_tablespace
= '';

SET default_table_access_method
= heap;

--
-- TOC entry 210 (class 1259 OID 16422)
-- Name: transaction; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.transaction
(
    transactionexternalid uuid NOT NULL,
    accountexternaliddebit uuid,
    accountexternalidcredit uuid,
    transactiontypeid integer,
    value numeric(18,2),
    transactionstatusid integer DEFAULT 1,
    createdat timestamp
    without time zone DEFAULT CURRENT_TIMESTAMP
);


    ALTER TABLE public.transaction OWNER TO postgres;

    --
    -- TOC entry 211 (class 1259 OID 16427)
    -- Name: transaction_status; Type: TABLE; Schema: public; Owner: postgres
    --

    CREATE TABLE public.transaction_status
    (
        id integer NOT NULL,
        name character varying(200)
    );


    ALTER TABLE public.transaction_status OWNER TO postgres;

    --
    -- TOC entry 212 (class 1259 OID 16430)
    -- Name: transaction_type; Type: TABLE; Schema: public; Owner: postgres
    --

    CREATE TABLE public.transaction_type
    (
        id integer NOT NULL,
        name character varying(200)
    );


    ALTER TABLE public.transaction_type OWNER TO postgres;

    --
    -- TOC entry 213 (class 1259 OID 16433)
    -- Name: transactionstatus_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
    --

    CREATE SEQUENCE public.transactionstatus_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


    ALTER SEQUENCE public.transactionstatus_id_seq
    OWNER TO postgres;

    --
    -- TOC entry 3369 (class 0 OID 0)
    -- Dependencies: 213
    -- Name: transactionstatus_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
    --

    ALTER SEQUENCE public.transactionstatus_id_seq
    OWNED BY public.transaction_status.id;


    --
    -- TOC entry 214 (class 1259 OID 16434)
    -- Name: transactiontype_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
    --

    CREATE SEQUENCE public.transactiontype_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


    ALTER SEQUENCE public.transactiontype_id_seq
    OWNER TO postgres;

    --
    -- TOC entry 3370 (class 0 OID 0)
    -- Dependencies: 214
    -- Name: transactiontype_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
    --

    ALTER SEQUENCE public.transactiontype_id_seq
    OWNED BY public.transaction_type.id;


    --
    -- TOC entry 3213 (class 2604 OID 16435)
    -- Name: transaction_status id; Type: DEFAULT; Schema: public; Owner: postgres
    --

    ALTER TABLE ONLY public.transaction_status
    ALTER COLUMN id
    SET
    DEFAULT nextval
    ('public.transactionstatus_id_seq'::regclass);


    --
    -- TOC entry 3214 (class 2604 OID 16436)
    -- Name: transaction_type id; Type: DEFAULT; Schema: public; Owner: postgres
    --

    ALTER TABLE ONLY public.transaction_type
    ALTER COLUMN id
    SET
    DEFAULT nextval
    ('public.transactiontype_id_seq'::regclass);


    --
    -- TOC entry 3216 (class 2606 OID 16438)
    -- Name: transaction transaction_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
    --

    ALTER TABLE ONLY public.transaction
    ADD CONSTRAINT transaction_pkey PRIMARY KEY
    (transactionexternalid);


    --
    -- TOC entry 3218 (class 2606 OID 16440)
    -- Name: transaction_status transactionstatus_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
    --

    ALTER TABLE ONLY public.transaction_status
    ADD CONSTRAINT transactionstatus_pkey PRIMARY KEY
    (id);


    --
    -- TOC entry 3220 (class 2606 OID 16442)
    -- Name: transaction_type transactiontype_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
    --

    ALTER TABLE ONLY public.transaction_type
    ADD CONSTRAINT transactiontype_pkey PRIMARY KEY
    (id);


    --
    -- TOC entry 3221 (class 2606 OID 16444)
    -- Name: transaction transaction_transactionstatusid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
    --

    ALTER TABLE ONLY public.transaction
    ADD CONSTRAINT transaction_transactionstatusid_fkey FOREIGN KEY
    (transactionstatusid) REFERENCES public.transaction_status
    (id);


    --
    -- TOC entry 3222 (class 2606 OID 16449)
    -- Name: transaction transaction_transactiontypeid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
    --

    ALTER TABLE ONLY public.transaction
    ADD CONSTRAINT transaction_transactiontypeid_fkey FOREIGN KEY
    (transactiontypeid) REFERENCES public.transaction_type
    (id);


    --
    -- TOC entry 3367 (class 0 OID 0)
    -- Dependencies: 6
    -- Name: SCHEMA public; Type: ACL; Schema: -; Owner: postgres
    --

    REVOKE USAGE ON SCHEMA public FROM PUBLIC;
    GRANT ALL ON SCHEMA public TO PUBLIC;


    SET statement_timeout
    = 0;
    SET lock_timeout
    = 0;
    SET idle_in_transaction_session_timeout
    = 0;
    SET client_encoding
    = 'UTF8';
    SET standard_conforming_strings
    = on;
    SELECT pg_catalog.set_config('search_path', '', false);
    SET check_function_bodies
    = false;
    SET xmloption
    = content;
    SET client_min_messages
    = warning;
    SET row_security
    = off;

    --
    -- TOC entry 3363 (class 0 OID 16427)
    -- Dependencies: 211
    -- Data for Name: transaction_status; Type: TABLE DATA; Schema: public; Owner: postgres
    --

    INSERT INTO public.transaction_status
    VALUES
        (1, 'pending');
    INSERT INTO public.transaction_status
    VALUES
        (2, 'approved');
    INSERT INTO public.transaction_status
    VALUES
        (3, 'rejected');


    --
    -- TOC entry 3364 (class 0 OID 16430)
    -- Dependencies: 212
    -- Data for Name: transaction_type; Type: TABLE DATA; Schema: public; Owner: postgres
    --

    INSERT INTO public.transaction_type
    VALUES
        (1, 'transaction_type_1');
    INSERT INTO public.transaction_type
    VALUES
        (2, 'transaction_type_2');
    INSERT INTO public.transaction_type
    VALUES
        (3, 'transaction_type_3');


    --
    -- TOC entry 3376 (class 0 OID 0)
    -- Dependencies: 213
    -- Name: transactionstatus_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
    --

    SELECT pg_catalog.setval('public.transactionstatus_id_seq', 3, true);


    --
    -- TOC entry 3377 (class 0 OID 0)
    -- Dependencies: 214
    -- Name: transactiontype_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
    --

    SELECT pg_catalog.setval('public.transactiontype_id_seq', 3, true);


-- Completed on 2024-02-11 23:27:17

--
-- PostgreSQL database dump complete
--

