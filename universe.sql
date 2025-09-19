--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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
-- Name: black_hole; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.black_hole (
    black_hole_id integer NOT NULL,
    name character varying(30) NOT NULL,
    galaxy_id integer
);


ALTER TABLE public.black_hole OWNER TO freecodecamp;

--
-- Name: black_hole_black_hole_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.black_hole_black_hole_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.black_hole_black_hole_id_seq OWNER TO freecodecamp;

--
-- Name: black_hole_black_hole_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.black_hole_black_hole_id_seq OWNED BY public.black_hole.black_hole_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(40) NOT NULL,
    age_billion integer,
    number_of_stars_billion integer,
    distance_from_milky_way_light_years numeric(8,1),
    galaxy_type text,
    dwarf boolean
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
    diameter_in_km integer,
    density integer,
    gravity numeric(3,1),
    composition text,
    global_magnetic_field boolean,
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
    diameter_in_km integer,
    density integer,
    gravity numeric(3,1),
    composition text,
    global_magnetic_field boolean,
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
    diameter_in_km integer,
    density integer,
    gravity numeric(10,1),
    composition text,
    global_magnetic_field boolean,
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
-- Name: black_hole black_hole_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole ALTER COLUMN black_hole_id SET DEFAULT nextval('public.black_hole_black_hole_id_seq'::regclass);


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
-- Data for Name: black_hole; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.black_hole VALUES (1, 'Sagittarius A', 1);
INSERT INTO public.black_hole VALUES (2, 'M31*', 4);
INSERT INTO public.black_hole VALUES (3, 'M33 X-7', 5);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'milky way', 13, 400, 0.0, 'spiral', false);
INSERT INTO public.galaxy VALUES (2, 'canis major', 2, 1, 42000.0, 'irregular', true);
INSERT INTO public.galaxy VALUES (3, 'SagDIG', 8, 0, 3400000.0, 'irregular', true);
INSERT INTO public.galaxy VALUES (4, 'andromeda', 10, 1000, 2500000.0, 'spiral', false);
INSERT INTO public.galaxy VALUES (5, 'triangulum', 10, 40, 2730000.0, 'spiral', false);
INSERT INTO public.galaxy VALUES (6, 'large_magellanic', 1, 30, 163000.0, 'irregular', true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon', 3474, 3340, 1.6, 'rocky', false, 1);
INSERT INTO public.moon VALUES (2, 'ganymede', 5262, 1942, 1.4, 'rocky', true, 5);
INSERT INTO public.moon VALUES (3, 'titan', 5149, 1880, 1.3, 'rocky', false, 6);
INSERT INTO public.moon VALUES (4, 'callisto', 4820, 1834, 1.2, 'rocky', false, 5);
INSERT INTO public.moon VALUES (5, 'io', 3643, 3528, 1.8, 'rocky', false, 5);
INSERT INTO public.moon VALUES (6, 'europa', 3121, 3010, 1.3, 'rocky', false, 5);
INSERT INTO public.moon VALUES (7, 'triton', 2706, 2060, 0.8, 'icy', false, 8);
INSERT INTO public.moon VALUES (8, 'titania', 1576, 1710, 0.4, 'icy', false, 7);
INSERT INTO public.moon VALUES (9, 'rhea', 1527, 1236, 0.3, 'icy', false, 6);
INSERT INTO public.moon VALUES (10, 'oberon', 1522, 1630, 0.4, 'icy', false, 7);
INSERT INTO public.moon VALUES (11, 'iapetus', 1469, 1090, 0.2, 'icy', false, 6);
INSERT INTO public.moon VALUES (12, 'umbriel', 1169, 1400, 0.2, 'rocky', false, 7);
INSERT INTO public.moon VALUES (13, 'ariel', 1157, 1650, 0.3, 'rocky', false, 7);
INSERT INTO public.moon VALUES (14, 'dione', 1122, 1480, 0.2, 'icy', false, 6);
INSERT INTO public.moon VALUES (15, 'tethys', 1062, 984, 0.2, 'icy', false, 6);
INSERT INTO public.moon VALUES (16, 'enceladus', 504, 1610, 0.1, 'icy', false, 6);
INSERT INTO public.moon VALUES (17, 'miranda', 471, 1200, 0.1, 'icy', false, 7);
INSERT INTO public.moon VALUES (18, 'proteus', 420, 650, 0.0, 'icy', false, 8);
INSERT INTO public.moon VALUES (19, 'mimas', 396, 1150, 0.1, 'icy', false, 6);
INSERT INTO public.moon VALUES (20, 'nereid', 340, 1500, 0.1, 'icy', false, 8);
INSERT INTO public.moon VALUES (21, 'hyperion', 266, 500, 0.0, 'icy', false, 6);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'earth', 12742, 5510, 9.8, 'rocky', true, 1);
INSERT INTO public.planet VALUES (2, 'mercury', 4879, 5429, 3.7, 'metallic', true, 1);
INSERT INTO public.planet VALUES (3, 'venus', 12104, 5243, 8.9, 'rocky', false, 1);
INSERT INTO public.planet VALUES (4, 'mars', 6792, 3934, 3.7, 'rocky', false, 1);
INSERT INTO public.planet VALUES (5, 'jupiter', 142984, 1326, 23.1, 'gaseous', true, 1);
INSERT INTO public.planet VALUES (6, 'saturn', 120536, 687, 9.0, 'gaseous', true, 1);
INSERT INTO public.planet VALUES (7, 'uranus', 51118, 1270, 8.7, 'gaseous', true, 1);
INSERT INTO public.planet VALUES (8, 'neptune', 49528, 1638, 11.0, 'icy', true, 1);
INSERT INTO public.planet VALUES (9, 'Proxima Centauri b', 16564, 7163, 12.7, 'rocky', true, 2);
INSERT INTO public.planet VALUES (10, 'Proxima Centauri c', 89194, 38570, 68.6, 'rocky', true, 2);
INSERT INTO public.planet VALUES (11, 'Proxima Centauri d', 3185, 1377, 2.4, 'rocky', false, 2);
INSERT INTO public.planet VALUES (12, 'Barnard b', 3809, 1647, 2.9, 'rocky', false, 5);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'sun', 13900000, 1410, 274.0, 'gaseous', true, 1);
INSERT INTO public.star VALUES (2, 'Proxima centauri', 214550, 47100, 1585.0, 'gaseous', true, 1);
INSERT INTO public.star VALUES (3, 'Alpha Centauri A', 1702200, 1571, 305.0, 'gaseous', true, 1);
INSERT INTO public.star VALUES (4, 'Alpha Centauri B', 1201600, 1398, 9.0, 'gaseous', true, 1);
INSERT INTO public.star VALUES (5, 'Barnards Star', 225300, 26800, 465.0, 'gaseous', true, 1);
INSERT INTO public.star VALUES (6, 'Alpheratz', 81732000, 5076, 1507.0, 'gaseous', true, 4);


--
-- Name: black_hole_black_hole_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.black_hole_black_hole_id_seq', 3, true);


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
-- Name: black_hole black_hole_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole
    ADD CONSTRAINT black_hole_name_key UNIQUE (name);


--
-- Name: black_hole black_hole_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole
    ADD CONSTRAINT black_hole_pkey PRIMARY KEY (black_hole_id);


--
-- Name: galaxy galaxy_number_of_stars_billion_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_number_of_stars_billion_key UNIQUE (number_of_stars_billion);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_density_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_density_key UNIQUE (density);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_density_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_density_key UNIQUE (density);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_density_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_density_key UNIQUE (density);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: black_hole black_hole_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole
    ADD CONSTRAINT black_hole_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


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

