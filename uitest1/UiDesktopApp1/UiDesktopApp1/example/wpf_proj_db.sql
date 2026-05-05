--
-- PostgreSQL database dump
--

-- Dumped from database version 15.4
-- Dumped by pg_dump version 15.4

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


--
-- Drop existing objects
--

DROP TABLE IF EXISTS public.gangnamgu_population CASCADE;
DROP SEQUENCE IF EXISTS public.gangnamgu_population_id_seq CASCADE;


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: gangnamgu_population; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.gangnamgu_population (
    administrative_agency character varying,
    total_population integer,
    male_population integer,
    female_population integer,
    sex_ratio double precision,
    number_of_households integer,
    number_of_people_per_household double precision,
    id integer NOT NULL
);


ALTER TABLE public.gangnamgu_population OWNER TO postgres;

--
-- Name: gangnamgu_population_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.gangnamgu_population_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.gangnamgu_population_id_seq OWNER TO postgres;

--
-- Name: gangnamgu_population_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.gangnamgu_population_id_seq OWNED BY public.gangnamgu_population.id;


--
-- Name: gangnamgu_population id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.gangnamgu_population ALTER COLUMN id SET DEFAULT nextval('public.gangnamgu_population_id_seq'::regclass);


--
-- Data for Name: gangnamgu_population; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.gangnamgu_population (administrative_agency, total_population, male_population, female_population, sex_ratio, number_of_households, number_of_people_per_household, id) VALUES
('신사동', 15433, 7192, 8241, 87.27, 6773, 2.28, 2),
('논현1동', 21123, 9951, 11172, 89.07, 13633, 1.55, 3),
('논현2동', 20492, 9518, 10974, 86.73, 11288, 1.82, 4),
('압구정동', 25571, 11818, 13753, 85.93, 10000, 2.56, 5),
('청담동', 24806, 11609, 13197, 87.97, 10899, 2.28, 6),
('삼성1동', 12333, 6032, 6301, 95.73, 5297, 2.33, 7),
('삼성2동', 30497, 14634, 15863, 92.25, 13656, 2.23, 8),
('대치1동', 23969, 12009, 11960, 100.41, 7259, 3.3, 9),
('대치2동', 38049, 19290, 18759, 102.83, 13384, 2.84, 10),
('대치4동', 18893, 9032, 9861, 91.59, 9957, 1.9, 11),
('역삼1동', 34352, 16773, 17579, 95.41, 23763, 1.45, 12),
('역삼2동', 36776, 17130, 19646, 87.19, 15820, 2.32, 13),
('도곡1동', 20681, 9806, 10875, 90.17, 8287, 2.5, 14),
('도곡2동', 32605, 15117, 17488, 86.44, 11475, 2.84, 15),
('개포1동', 6892, 3324, 3568, 93.16, 2618, 2.63, 16),
('개포2동', 40824, 19748, 21076, 93.7, 14419, 2.83, 17),
('개포3동', 16949, 8218, 8731, 94.12, 7404, 2.29, 18),
('개포4동', 23412, 11273, 12139, 92.87, 10102, 2.32, 19),
('세곡동', 45641, 21410, 24231, 88.36, 19387, 2.35, 20),
('일원본동', 22849, 11281, 11568, 97.52, 8017, 2.85, 21),
('일원1동', 14652, 7109, 7543, 94.25, 7466, 1.96, 22),
('수서동', 14158, 6382, 7776, 82.07, 7743, 1.83, 23);


--
-- Name: gangnamgu_population_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.gangnamgu_population_id_seq', 142, true);


--
-- Name: gangnamgu_population gangnamgu_population_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.gangnamgu_population
    ADD CONSTRAINT gangnamgu_population_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--


