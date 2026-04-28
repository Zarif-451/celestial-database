


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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(100),
    description text,
    age_in_million_of_years numeric NOT NULL,
    galaxy_type character varying(100)
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
    name character varying(100),
    distance_from_earth numeric,
    has_life boolean,
    diameter integer NOT NULL,
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
-- Name: nebula; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.nebula (
    nebula_id integer NOT NULL,
    name character varying(100) NOT NULL,
    distance_from_earth numeric,
    has_life boolean,
    description text
);


ALTER TABLE public.nebula OWNER TO freecodecamp;

--
-- Name: nebula_nebula_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.nebula_nebula_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.nebula_nebula_id_seq OWNER TO freecodecamp;

--
-- Name: nebula_nebula_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.nebula_nebula_id_seq OWNED BY public.nebula.nebula_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(100),
    has_life boolean NOT NULL,
    is_spherical boolean,
    planet_types text,
    diameter integer NOT NULL,
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
    name character varying(100) NOT NULL,
    description text,
    has_life boolean,
    is_spherical boolean,
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
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: nebula nebula_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.nebula ALTER COLUMN nebula_id SET DEFAULT nextval('public.nebula_nebula_id_seq'::regclass);


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

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Galaxy containing our Solar System', 13600, 'barred spiral');
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'Nearest large galaxy to the Milky Way', 10000, 'spiral');
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 'Third-largest galaxy in the Local Group', 12000, 'spiral');
INSERT INTO public.galaxy VALUES (4, 'Whirlpool Galaxy', 'Interacting grand-design spiral galaxy', 400, 'spiral');
INSERT INTO public.galaxy VALUES (5, 'Sombrero Galaxy', 'Galaxy with a bright nucleus and large central bulge', 13000, 'elliptical');
INSERT INTO public.galaxy VALUES (6, 'Large Magellanic Cloud', 'Satellite galaxy of the Milky Way', 13000, 'irregular');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 384400, false, 3474, 1);
INSERT INTO public.moon VALUES (2, 'Phobos', 225000000, false, 22, 1);
INSERT INTO public.moon VALUES (3, 'Deimos', 225000000, false, 12, 1);
INSERT INTO public.moon VALUES (4, 'Io', 628300000, false, 3643, 1);
INSERT INTO public.moon VALUES (5, 'Europa', 628300000, false, 3122, 1);
INSERT INTO public.moon VALUES (6, 'Ganymede', 628300000, false, 5268, 1);
INSERT INTO public.moon VALUES (7, 'Callisto', 628300000, false, 4821, 1);
INSERT INTO public.moon VALUES (8, 'Titan', 1200000000, false, 5150, 1);
INSERT INTO public.moon VALUES (9, 'Enceladus', 1200000000, false, 504, 1);
INSERT INTO public.moon VALUES (10, 'Mimas', 1200000000, false, 396, 1);
INSERT INTO public.moon VALUES (11, 'Tethys', 1200000000, false, 1062, 1);
INSERT INTO public.moon VALUES (12, 'Rhea', 1200000000, false, 1528, 1);
INSERT INTO public.moon VALUES (13, 'Iapetus', 1200000000, false, 1469, 1);
INSERT INTO public.moon VALUES (14, 'Titania', 2870000000, false, 1578, 1);
INSERT INTO public.moon VALUES (15, 'Oberon', 2870000000, false, 1523, 1);
INSERT INTO public.moon VALUES (16, 'Umbriel', 2870000000, false, 1169, 1);
INSERT INTO public.moon VALUES (17, 'Ariel', 2870000000, false, 1158, 1);
INSERT INTO public.moon VALUES (18, 'Miranda', 2870000000, false, 472, 1);
INSERT INTO public.moon VALUES (19, 'Triton', 4500000000, false, 2706, 1);
INSERT INTO public.moon VALUES (20, 'Nereid', 4500000000, false, 340, 1);


--
-- Data for Name: nebula; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.nebula VALUES (1, 'Orion Nebula', 1344, false, 'Star-forming region in the Orion constellation');
INSERT INTO public.nebula VALUES (2, 'Crab Nebula', 6500, false, 'Supernova remnant from an explosion observed in 1054 AD');
INSERT INTO public.nebula VALUES (3, 'Eagle Nebula', 7000, false, 'Famous for the Pillars of Creation star-forming region');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', false, true, 'terrestrial', 4879, 1);
INSERT INTO public.planet VALUES (2, 'Venus', false, true, 'terrestrial', 12104, 1);
INSERT INTO public.planet VALUES (3, 'Earth', true, true, 'terrestrial', 12742, 1);
INSERT INTO public.planet VALUES (4, 'Mars', false, true, 'terrestrial', 6779, 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', false, true, 'gas giant', 139820, 1);
INSERT INTO public.planet VALUES (6, 'Saturn', false, true, 'gas giant', 116460, 1);
INSERT INTO public.planet VALUES (7, 'Uranus', false, true, 'ice giant', 50724, 1);
INSERT INTO public.planet VALUES (8, 'Neptune', false, true, 'ice giant', 49244, 1);
INSERT INTO public.planet VALUES (9, 'Proxima Centauri b', false, true, 'exoplanet', 14000, 1);
INSERT INTO public.planet VALUES (10, 'Kepler-22b', false, true, 'exoplanet', 24000, 1);
INSERT INTO public.planet VALUES (11, 'Kepler-452b', false, true, 'exoplanet', 26000, 1);
INSERT INTO public.planet VALUES (12, 'HD 209458 b', false, true, 'gas giant exoplanet', 143000, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 'Star at the center of the Solar System', true, true, 1);
INSERT INTO public.star VALUES (2, 'Sirius', 'Brightest star in the night sky', false, true, 1);
INSERT INTO public.star VALUES (3, 'Betelgeuse', 'Red supergiant star in Orion', false, true, 1);
INSERT INTO public.star VALUES (4, 'Rigel', 'Blue supergiant star in Orion', false, true, 1);
INSERT INTO public.star VALUES (5, 'Proxima Centauri', 'Closest known star to the Sun', false, true, 1);
INSERT INTO public.star VALUES (6, 'Vega', 'Bright star in the Lyra constellation', false, true, 1);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: nebula_nebula_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.nebula_nebula_id_seq', 3, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


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
-- Name: nebula nebula_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.nebula
    ADD CONSTRAINT nebula_name_key UNIQUE (name);


--
-- Name: nebula nebula_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.nebula
    ADD CONSTRAINT nebula_pkey PRIMARY KEY (nebula_id);


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
-- Name: moon foreign_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT foreign_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet foreign_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT foreign_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);

