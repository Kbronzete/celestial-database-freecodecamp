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
-- Name: astronauts; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.astronauts (
    astronauts_id integer NOT NULL,
    age numeric(3,1),
    married boolean,
    name character varying(30) NOT NULL
);


ALTER TABLE public.astronauts OWNER TO freecodecamp;

--
-- Name: astronauts_astronauts_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.astronauts_astronauts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.astronauts_astronauts_id_seq OWNER TO freecodecamp;

--
-- Name: astronauts_astronauts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.astronauts_astronauts_id_seq OWNED BY public.astronauts.astronauts_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    name character varying(30) NOT NULL,
    galaxy_id integer NOT NULL,
    years_in_millions integer,
    has_planets boolean,
    type_of_galaxy text
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
    name character varying(30) NOT NULL,
    moon_id integer NOT NULL,
    planet_id integer,
    is_it_invented boolean,
    description text
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
    name character varying(30) NOT NULL,
    planet_id integer NOT NULL,
    has_life boolean,
    distance_from_earth integer,
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
    name character varying(30) NOT NULL,
    star_id integer NOT NULL,
    galaxy_id integer,
    temperature integer,
    it_exploded boolean
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
-- Name: astronauts astronauts_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.astronauts ALTER COLUMN astronauts_id SET DEFAULT nextval('public.astronauts_astronauts_id_seq'::regclass);


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
-- Data for Name: astronauts; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.astronauts VALUES (1, 99.0, true, 'Neil Armstrong');
INSERT INTO public.astronauts VALUES (2, 54.0, true, 'Robert Downey');
INSERT INTO public.astronauts VALUES (3, 24.0, false, 'Milena');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('Milky Way', 1, 1360, true, 'Spiral');
INSERT INTO public.galaxy VALUES ('Andromeda', 2, 1340, true, 'Spiral');
INSERT INTO public.galaxy VALUES ('YourGal', 3, 1069, false, 'Rectangular');
INSERT INTO public.galaxy VALUES ('Aatrox', 4, 102, true, 'Human');
INSERT INTO public.galaxy VALUES ('Aurelion Sol', 5, 2, true, 'Dragon');
INSERT INTO public.galaxy VALUES ('Jaemin', 6, 420, false, 'Spiral');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('Moon1', 1, 1, true, 'Ran out of ideas');
INSERT INTO public.moon VALUES ('Moon2', 2, 1, true, 'Ran out of ideas');
INSERT INTO public.moon VALUES ('Moon3', 3, 1, true, 'Ran out of ideas');
INSERT INTO public.moon VALUES ('Moon4', 4, 2, true, 'Ran out of ideas');
INSERT INTO public.moon VALUES ('Moon5', 5, 2, true, 'Ran out of ideas');
INSERT INTO public.moon VALUES ('Moon6', 7, 1, true, 'Ran out of ideas');
INSERT INTO public.moon VALUES ('Moon7', 8, 3, true, 'Ran out of ideas');
INSERT INTO public.moon VALUES ('Moon8', 9, 3, true, 'Ran out of ideas');
INSERT INTO public.moon VALUES ('Moon9', 10, 4, true, 'Ran out of ideas');
INSERT INTO public.moon VALUES ('Moon10', 11, 4, true, 'Ran out of ideas');
INSERT INTO public.moon VALUES ('Moon11', 12, 1, true, 'Ran out of ideas');
INSERT INTO public.moon VALUES ('Moon12', 13, 3, true, 'Ran out of ideas');
INSERT INTO public.moon VALUES ('Moon13', 14, 1, true, 'Ran out of ideas');
INSERT INTO public.moon VALUES ('Moon14', 15, 6, true, 'Ran out of ideas');
INSERT INTO public.moon VALUES ('Moon15', 16, 8, true, 'Ran out of ideas');
INSERT INTO public.moon VALUES ('Moon16', 17, 5, true, 'Ran out of ideas');
INSERT INTO public.moon VALUES ('Moon17', 18, 9, true, 'Ran out of ideas');
INSERT INTO public.moon VALUES ('Moon18', 19, 7, true, 'Ran out of ideas');
INSERT INTO public.moon VALUES ('Moon19', 20, 11, true, 'Ran out of ideas');
INSERT INTO public.moon VALUES ('Moon20', 21, 10, true, 'Ran out of ideas');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('Earth', 1, true, 0, 1);
INSERT INTO public.planet VALUES ('Mars', 2, false, 300000, 1);
INSERT INTO public.planet VALUES ('Morgana', 3, true, 5, 3);
INSERT INTO public.planet VALUES ('Moooom', 4, false, 10000000, 4);
INSERT INTO public.planet VALUES ('Osvaldo', 5, true, 111412, 6);
INSERT INTO public.planet VALUES ('Invented planet', 6, false, 12345678, 2);
INSERT INTO public.planet VALUES ('Mercurio', 7, false, 556564512, 1);
INSERT INTO public.planet VALUES ('Venus', 8, false, 3335642, 1);
INSERT INTO public.planet VALUES ('Saturn', 9, false, 123321, 1);
INSERT INTO public.planet VALUES ('Still', 10, true, 111111111, 5);
INSERT INTO public.planet VALUES ('Aids', 11, false, 0, 2);
INSERT INTO public.planet VALUES ('Pedro', 12, true, 125590, 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('Sun', 1, 1, 2700, false);
INSERT INTO public.star VALUES ('Andromeda star', 2, 2, 42069, true);
INSERT INTO public.star VALUES ('Kayle', 3, 4, 555, true);
INSERT INTO public.star VALUES ('Smolder', 4, 5, 12122, false);
INSERT INTO public.star VALUES ('Maria', 5, 1, 885, false);
INSERT INTO public.star VALUES ('Kim Lee', 6, 6, 190, true);


--
-- Name: astronauts_astronauts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.astronauts_astronauts_id_seq', 3, true);


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
-- Name: astronauts astronauts_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.astronauts
    ADD CONSTRAINT astronauts_pkey PRIMARY KEY (astronauts_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: galaxy name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT name UNIQUE (name);


--
-- Name: astronauts nameastronaut; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.astronauts
    ADD CONSTRAINT nameastronaut UNIQUE (name);


--
-- Name: moon namemoon; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT namemoon UNIQUE (name);


--
-- Name: planet nameplanet; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT nameplanet UNIQUE (name);


--
-- Name: star namestar; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT namestar UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


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

