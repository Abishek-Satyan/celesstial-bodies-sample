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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(20) NOT NULL,
    description text NOT NULL,
    discovery_in_year integer,
    hasexplored boolean,
    noofstars integer,
    noofplanets integer
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
    name character varying(20) NOT NULL,
    planet_id integer,
    has_life boolean,
    has_water boolean
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
-- Name: moon_resource; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon_resource (
    moon_resource_id integer NOT NULL,
    moon_id integer,
    name character varying(10) NOT NULL
);


ALTER TABLE public.moon_resource OWNER TO freecodecamp;

--
-- Name: moon_resource_moon_recource_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_resource_moon_recource_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_resource_moon_recource_id_seq OWNER TO freecodecamp;

--
-- Name: moon_resource_moon_recource_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_resource_moon_recource_id_seq OWNED BY public.moon_resource.moon_resource_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(20) NOT NULL,
    diameter numeric,
    no_of_moons integer,
    star_id integer,
    has_life boolean
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
    name character varying(20) NOT NULL,
    galaxy_id integer,
    no_of_planets_revolving integer,
    years_from_star_death_in_billions integer
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
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: moon_resource moon_resource_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon_resource ALTER COLUMN moon_resource_id SET DEFAULT nextval('public.moon_resource_moon_recource_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda', 'short form of andromeda galaxy', 1948, false, 2, 3);
INSERT INTO public.galaxy VALUES (2, 'Milky Way', 'Galaxy where earth located', 1920, true, 13, 9);
INSERT INTO public.galaxy VALUES (3, 'Antennae', 'short for antennae galaxy', 1960, true, 2, 4);
INSERT INTO public.galaxy VALUES (4, 'Needle', 'short for needle galaxy', 1999, true, 12, 7);
INSERT INTO public.galaxy VALUES (5, 'Butterfly', 'name derived from butterfly like appearance', 2005, false, 20, 6);
INSERT INTO public.galaxy VALUES (6, 'Mice', 'short for mice galaxy', 2016, false, 4, 7);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Mercury1', 49, false, false);
INSERT INTO public.moon VALUES (2, 'Venus2', 49, false, true);
INSERT INTO public.moon VALUES (3, 'Earth12', 49, true, true);
INSERT INTO public.moon VALUES (4, 'Milner21', 50, true, false);
INSERT INTO public.moon VALUES (5, 'Pluton332', 51, true, false);
INSERT INTO public.moon VALUES (6, 'Krypton321', 53, false, true);
INSERT INTO public.moon VALUES (7, 'Xenon23', 52, false, false);
INSERT INTO public.moon VALUES (8, 'Saturn43', 51, false, true);
INSERT INTO public.moon VALUES (9, 'Neptune55', 50, false, false);
INSERT INTO public.moon VALUES (10, 'Nephron', 51, true, true);
INSERT INTO public.moon VALUES (11, 'Jupiter3', 56, false, false);
INSERT INTO public.moon VALUES (12, 'Manman77', 55, false, false);
INSERT INTO public.moon VALUES (13, 'Mercury12', 49, false, false);
INSERT INTO public.moon VALUES (14, 'Venus21', 49, false, true);
INSERT INTO public.moon VALUES (15, 'Earth122', 49, true, true);
INSERT INTO public.moon VALUES (16, 'Milner216', 50, true, false);
INSERT INTO public.moon VALUES (17, 'Pluton3352', 51, true, false);
INSERT INTO public.moon VALUES (18, 'Krypton3213', 53, false, true);
INSERT INTO public.moon VALUES (19, 'Xenon232', 52, false, false);
INSERT INTO public.moon VALUES (20, 'Saturn431', 51, false, true);
INSERT INTO public.moon VALUES (21, 'Neptune554', 50, false, false);
INSERT INTO public.moon VALUES (22, 'Nephron3', 51, true, true);
INSERT INTO public.moon VALUES (23, 'Jupiter31', 56, false, false);
INSERT INTO public.moon VALUES (24, 'Manman727', 55, false, false);


--
-- Data for Name: moon_resource; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon_resource VALUES (1, 1, 'Uranium');
INSERT INTO public.moon_resource VALUES (2, 2, 'Titanium');
INSERT INTO public.moon_resource VALUES (3, 3, 'Vibranium');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (49, 'Mercury', 4871, 0, 11, false);
INSERT INTO public.planet VALUES (50, 'Venus', 12342, 1, 11, false);
INSERT INTO public.planet VALUES (51, 'Earth', 12343, 1, 10, true);
INSERT INTO public.planet VALUES (52, 'Milner', 22312, 3, 9, false);
INSERT INTO public.planet VALUES (53, 'Pluton', 23245, 6, 9, true);
INSERT INTO public.planet VALUES (54, 'Krypton', 53232, 12, 9, false);
INSERT INTO public.planet VALUES (55, 'Xenon', 23413, 10, 8, false);
INSERT INTO public.planet VALUES (56, 'Saturn', 12321, 8, 7, false);
INSERT INTO public.planet VALUES (57, 'Neptune', 43322, 4, 7, false);
INSERT INTO public.planet VALUES (58, 'Nephron', 32312, 5, 6, true);
INSERT INTO public.planet VALUES (59, 'Jupiter', 65000, 2, 6, false);
INSERT INTO public.planet VALUES (60, 'Manman', 12321, 2, 6, false);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (6, 'Sun', 2, 9, 42);
INSERT INTO public.star VALUES (7, 'xr23', 1, 3, 12);
INSERT INTO public.star VALUES (8, 'regal', 3, 2, 10);
INSERT INTO public.star VALUES (9, 'trax123', 5, 4, 6);
INSERT INTO public.star VALUES (10, 'malexia', 6, 0, 4);
INSERT INTO public.star VALUES (11, 'wick', 4, 2, 54);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 24, true);


--
-- Name: moon_resource_moon_recource_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_resource_moon_recource_id_seq', 3, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 60, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 11, true);


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
-- Name: moon_resource moon_resource_abundant_mineral_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon_resource
    ADD CONSTRAINT moon_resource_abundant_mineral_key UNIQUE (name);


--
-- Name: moon_resource moon_resource_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon_resource
    ADD CONSTRAINT moon_resource_pkey PRIMARY KEY (moon_resource_id);


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
-- Name: star unique_galaxy_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_galaxy_id UNIQUE (galaxy_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: moon_resource moon_resource_moon_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon_resource
    ADD CONSTRAINT moon_resource_moon_id_fkey FOREIGN KEY (moon_id) REFERENCES public.moon(moon_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

