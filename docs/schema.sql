--
-- PostgreSQL database dump
--

-- Dumped from database version 17.5
-- Dumped by pg_dump version 17.5

-- Started on 2025-07-15 18:23:30 PDT

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
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
-- TOC entry 220 (class 1259 OID 16461)
-- Name: sales; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sales (
    order_number integer,
    line_item integer,
    order_date text,
    delivery_date text,
    customer_key integer,
    store_key integer,
    product_key integer,
    quantity integer,
    currency_code text,
    sale_id integer NOT NULL
);


ALTER TABLE public.sales OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 16466)
-- Name: Sales_sale_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.sales ALTER COLUMN sale_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Sales_sale_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 217 (class 1259 OID 16390)
-- Name: customers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.customers (
    customer_key integer NOT NULL,
    gender text,
    name text,
    city text,
    state_code text,
    state text,
    zip_code text,
    country text,
    continent text,
    birthday text
);


ALTER TABLE public.customers OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 16411)
-- Name: exchange_rates; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.exchange_rates (
    date text,
    currency text,
    exchange numeric
);


ALTER TABLE public.exchange_rates OWNER TO postgres;

--
-- TOC entry 222 (class 1259 OID 16518)
-- Name: products; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.products (
    product_key integer NOT NULL,
    product_name text,
    brand text,
    color text,
    unit_cost_usd numeric,
    unit_price_usd numeric,
    subcategory_key integer,
    subcategory text,
    category_key integer,
    category text
);


ALTER TABLE public.products OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 16399)
-- Name: stores; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.stores (
    store_key integer NOT NULL,
    country text,
    state text,
    square_meters integer,
    open_date text
);


ALTER TABLE public.stores OWNER TO postgres;

--
-- TOC entry 3467 (class 2606 OID 16394)
-- Name: customers Customers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customers
    ADD CONSTRAINT "Customers_pkey" PRIMARY KEY (customer_key);


--
-- TOC entry 3471 (class 2606 OID 16524)
-- Name: products Products_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT "Products_pkey" PRIMARY KEY (product_key);


--
-- TOC entry 3469 (class 2606 OID 16403)
-- Name: stores Stores_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stores
    ADD CONSTRAINT "Stores_pkey" PRIMARY KEY (store_key);


-- Completed on 2025-07-15 18:23:30 PDT

--
-- PostgreSQL database dump complete
--

