--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: constelation; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.constelation (
    constelation_id integer NOT NULL,
    name character varying(40) NOT NULL,
    star_id integer NOT NULL
);


ALTER TABLE public.constelation OWNER TO freecodecamp;

--
-- Name: constelation_constelation_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.constelation_constelation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.constelation_constelation_id_seq OWNER TO freecodecamp;

--
-- Name: constelation_constelation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.constelation_constelation_id_seq OWNED BY public.constelation.constelation_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(40) NOT NULL,
    type character varying(30),
    history text,
    year_of_discovery integer NOT NULL,
    earth_distance numeric(10,3)
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(40) NOT NULL,
    type character varying(30) NOT NULL,
    size integer,
    color character varying(20),
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(40) NOT NULL,
    age integer NOT NULL,
    have_life boolean,
    gravity numeric(3,3),
    have_moon boolean,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(40) NOT NULL,
    color character varying(30),
    age integer NOT NULL,
    type character varying(30),
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: constelation constelation_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constelation ALTER COLUMN constelation_id SET DEFAULT nextval('public.constelation_constelation_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: constelation; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.constelation VALUES (1, 'Constelation1', 1);
INSERT INTO public.constelation VALUES (2, 'Constelation2', 2);
INSERT INTO public.constelation VALUES (3, 'Constelation3', 3);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda', 'Spiral', 'loren ipsun dolor', 1764, 2.500);
INSERT INTO public.galaxy VALUES (2, 'Black eye Galaxy', 'Seyfert', 'loren ipsun dolor', 1779, 17.300);
INSERT INTO public.galaxy VALUES (3, 'Bodes Galaxy', 'Spiral', 'loren ipsun dolor', 1774, 12.000);
INSERT INTO public.galaxy VALUES (4, 'Cartwheel Galaxy', 'Lenticular', 'loren ipsun dolor', 1941, 500.000);
INSERT INTO public.galaxy VALUES (5, 'Cigar Galaxy', 'Starburst', 'loren ipsun dolor', 1774, 12.000);
INSERT INTO public.galaxy VALUES (6, 'Comet Galaxy', 'Spiral', 'loren ipsun dolor', 2007, 3200.000);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon1', 'Natural', 8500, 'Gray', 1);
INSERT INTO public.moon VALUES (2, 'Moon2', 'Natural', 8500, 'Gray', 2);
INSERT INTO public.moon VALUES (3, 'Moon3', 'Natural', 8500, 'Gray', 3);
INSERT INTO public.moon VALUES (4, 'Moon4', 'Natural', 8500, 'Gray', 4);
INSERT INTO public.moon VALUES (5, 'Moon5', 'Natural', 8500, 'Gray', 5);
INSERT INTO public.moon VALUES (6, 'Moon6', 'Natural', 8500, 'Gray', 6);
INSERT INTO public.moon VALUES (7, 'Moon7', 'Natural', 8500, 'Gray', 1);
INSERT INTO public.moon VALUES (8, 'Moon8', 'Artificial', 6500, 'Gray', 2);
INSERT INTO public.moon VALUES (9, 'Moon9', 'Artificial', 6500, 'Gray', 3);
INSERT INTO public.moon VALUES (10, 'Moon10', 'Artificial', 6500, 'Gray', 4);
INSERT INTO public.moon VALUES (11, 'Moon11', 'Artificial', 9500, 'Gray', 5);
INSERT INTO public.moon VALUES (12, 'Moon12', 'Natural', 3500, 'Blue', 6);
INSERT INTO public.moon VALUES (13, 'Moon13', 'Natural', 3500, 'Blue', 1);
INSERT INTO public.moon VALUES (14, 'Moon14', 'Natural', 3500, 'Blue', 2);
INSERT INTO public.moon VALUES (15, 'Moon15', 'Artificial', 7500, 'Blue', 3);
INSERT INTO public.moon VALUES (17, 'Moon16', 'Artificial', 7500, 'Red', 4);
INSERT INTO public.moon VALUES (18, 'Moon17', 'Artificial', 6500, 'Red', 5);
INSERT INTO public.moon VALUES (19, 'Moon18', 'Natural', 500, 'Gray', 6);
INSERT INTO public.moon VALUES (20, 'Moon19', 'Natural', 500, 'Gray', 1);
INSERT INTO public.moon VALUES (21, 'Moon20', 'Natural', 500, 'Pearl', 2);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth?', 4543, true, 0.800, true, 1);
INSERT INTO public.planet VALUES (2, 'Earth2?', 4543, false, 0.800, false, 3);
INSERT INTO public.planet VALUES (3, 'Mars?', 4578, false, 0.200, false, 4);
INSERT INTO public.planet VALUES (4, 'Mar?', 45738, false, 0.720, false, 5);
INSERT INTO public.planet VALUES (5, 'Venus?', 45738, false, 0.720, false, 6);
INSERT INTO public.planet VALUES (6, 'Nep', 75738, true, 0.772, false, 3);
INSERT INTO public.planet VALUES (7, 'Ne2p', 75738, true, 0.772, false, 3);
INSERT INTO public.planet VALUES (8, 'Saturn?', 7538, true, 0.772, true, 6);
INSERT INTO public.planet VALUES (9, 'Saturn2?', 7538, true, 0.772, true, 1);
INSERT INTO public.planet VALUES (10, 'Uranus?', 538, true, 0.980, true, 2);
INSERT INTO public.planet VALUES (11, 'Uranus2?', 7538, false, 0.980, true, 3);
INSERT INTO public.planet VALUES (12, 'pluto?', 7852, true, 0.483, true, 3);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'V338', 'BLUE', 3000, 'Nova', 1);
INSERT INTO public.star VALUES (2, 'B348', 'YELLOW', 3400, 'sNova', 2);
INSERT INTO public.star VALUES (3, 'BB568', 'WHITE', 53400, 'Sa', 3);
INSERT INTO public.star VALUES (4, 'C332', 'WHITE', 653400, 'a', 4);
INSERT INTO public.star VALUES (5, 'CC432', 'GREEN', 87400, 'Ba', 5);
INSERT INTO public.star VALUES (6, 'CCB732', 'ORANGE', 7400, 'CBa', 6);


--
-- Name: constelation_constelation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.constelation_constelation_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: constelation constelation_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constelation
    ADD CONSTRAINT constelation_name_key UNIQUE (name);


--
-- Name: constelation constelation_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constelation
    ADD CONSTRAINT constelation_pkey PRIMARY KEY (constelation_id);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star fk_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: constelation fk_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constelation
    ADD CONSTRAINT fk_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

