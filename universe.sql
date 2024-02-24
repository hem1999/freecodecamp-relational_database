--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
-- Name: dummy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.dummy (
    name character varying(20) NOT NULL,
    dummy_id integer NOT NULL,
    description text
);


ALTER TABLE public.dummy OWNER TO freecodecamp;

--
-- Name: dummy_dummy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.dummy_dummy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.dummy_dummy_id_seq OWNER TO freecodecamp;

--
-- Name: dummy_dummy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.dummy_dummy_id_seq OWNED BY public.dummy.dummy_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    diameter integer,
    description text,
    has_planets boolean
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
    name character varying(30) NOT NULL,
    diameter integer,
    planet_id integer,
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
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    diameter integer,
    dist_from_sun numeric(9,2),
    has_moons boolean,
    description text,
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
    diameter integer,
    name character varying(30) NOT NULL,
    galaxy_id integer,
    description text
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
-- Name: dummy dummy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.dummy ALTER COLUMN dummy_id SET DEFAULT nextval('public.dummy_dummy_id_seq'::regclass);


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
-- Data for Name: dummy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.dummy VALUES ('k', 1, 'kk');
INSERT INTO public.dummy VALUES ('j', 2, 'jj');
INSERT INTO public.dummy VALUES ('l', 3, 'll');
INSERT INTO public.dummy VALUES ('a', 4, 'aa');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 100000, 'Our home galaxy containing billions of stars.', true);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 140000, 'Spiral galaxy neighboring the Milky Way.', true);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 60000, 'Small spiral galaxy in the Local Group.', true);
INSERT INTO public.galaxy VALUES (4, 'Centaurus A', 20000, 'Elliptical galaxy with an active galactic nucleus.', false);
INSERT INTO public.galaxy VALUES (5, 'Sombrero', 50000, 'Edge-on spiral galaxy resembling a sombrero hat.', true);
INSERT INTO public.galaxy VALUES (6, 'Silky Way', 100000, 'villan galaxy containing billions of stars.', true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 2159, 3, 'The only natural satellite of Earth.');
INSERT INTO public.moon VALUES (2, 'Phobos', 14, 4, 'The larger and closer of the two moons of Mars.');
INSERT INTO public.moon VALUES (3, 'Deimos', 8, 4, 'The smaller and farther of the two moons of Mars.');
INSERT INTO public.moon VALUES (4, 'Io', 2263, 5, 'The most volcanically active moon in the solar system.');
INSERT INTO public.moon VALUES (5, 'Europa', 1561, 5, 'An icy moon with a subsurface ocean of liquid water.');
INSERT INTO public.moon VALUES (6, 'Ganymede', 2634, 5, 'The largest and most massive moon in the solar system.');
INSERT INTO public.moon VALUES (7, 'Callisto', 2410, 5, 'The most heavily cratered moon in the solar system.');
INSERT INTO public.moon VALUES (8, 'Titan', 2576, 6, 'The second largest moon in the solar system with a thick nitrogen atmosphere.');
INSERT INTO public.moon VALUES (9, 'Enceladus', 252, 6, 'A moon with geysers of water and organic molecules.');
INSERT INTO public.moon VALUES (10, 'Mimas', 198, 6, 'A moon with a giant impact crater named Herschel.');
INSERT INTO public.moon VALUES (11, 'Tethys', 531, 6, 'A moon with a prominent equatorial ridge.');
INSERT INTO public.moon VALUES (12, 'Dione', 561, 6, 'A moon with bright ice cliffs.');
INSERT INTO public.moon VALUES (13, 'Rhea', 764, 6, 'The second largest moon of Saturn with a tenuous oxygen atmosphere.');
INSERT INTO public.moon VALUES (14, 'Iapetus', 735, 6, 'A moon with a striking contrast between its dark and bright hemispheres.');
INSERT INTO public.moon VALUES (15, 'Miranda', 236, 7, 'The smallest and innermost of the five major moons of Uranus.');
INSERT INTO public.moon VALUES (16, 'Ariel', 579, 7, 'The brightest and fourth largest of the major moons of Uranus.');
INSERT INTO public.moon VALUES (17, 'Umbriel', 585, 7, 'The darkest and third largest of the major moons of Uranus.');
INSERT INTO public.moon VALUES (18, 'Titania', 789, 7, 'The largest of the moons of Uranus and the eighth largest in the solar system.');
INSERT INTO public.moon VALUES (19, 'Oberon', 761, 7, 'The second largest and outermost of the major moons of Uranus.');
INSERT INTO public.moon VALUES (20, 'Triton', 1353, 8, 'The largest and only major moon of Neptune with a retrograde orbit.');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 3031, 36.00, false, 'Closest planet to the Sun.', 1);
INSERT INTO public.planet VALUES (2, 'Venus', 7521, 67.00, false, 'Known for its thick atmosphere and extreme temperatures.', 2);
INSERT INTO public.planet VALUES (3, 'Earth', 7917, 93.00, true, 'Our home planet with diverse ecosystems.', 3);
INSERT INTO public.planet VALUES (4, 'Mars', 4212, 142.00, true, 'The Red Planet with polar ice caps.', 4);
INSERT INTO public.planet VALUES (5, 'Jupiter', 86881, 484.00, true, 'Largest planet in our solar system.', 5);
INSERT INTO public.planet VALUES (6, 'Saturn', 72367, 886.00, true, 'Famous for its stunning rings.', 6);
INSERT INTO public.planet VALUES (7, 'Uranus', 31518, 1782.00, true, 'Tilted on its side with icy blue color.', 7);
INSERT INTO public.planet VALUES (8, 'Neptune', 30599, 2793.00, true, 'Cold and windy planet with a deep blue hue.', 8);
INSERT INTO public.planet VALUES (9, 'Pluto', 1475, 3674.00, false, 'Dwarf planet beyond Neptune.', 9);
INSERT INTO public.planet VALUES (10, 'Kepler-186f', 12400, 490000.00, false, 'Exoplanet in the habitable zone of its star.', 10);
INSERT INTO public.planet VALUES (11, 'HD 209458 b', 80700, 4900000.00, false, 'Hot Jupiter exoplanet with an evaporating atmosphere.', 11);
INSERT INTO public.planet VALUES (12, 'TRAPPIST-1 e', 11800, 4000000.00, true, 'Rocky exoplanet in the TRAPPIST-1 system.', 12);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 100000, 'Star A', 1, 'Bright and massive star in the Milky Way');
INSERT INTO public.star VALUES (2, 80000, 'Star B', 2, 'Luminous star in the Andromeda galaxy');
INSERT INTO public.star VALUES (3, 50000, 'Star C', 3, 'Small star in the Triangulum galaxy');
INSERT INTO public.star VALUES (4, 15000, 'Star D', 4, 'Distant star in the Centaurus A galaxy');
INSERT INTO public.star VALUES (5, 20000, 'Star E', 5, 'Spectacular star in the Sombrero galaxy');
INSERT INTO public.star VALUES (6, 90000, 'Star F', 1, 'Giant star in the Milky Way');
INSERT INTO public.star VALUES (7, 70000, 'Star G', 2, 'Radiant star in the Andromeda galaxy');
INSERT INTO public.star VALUES (8, 40000, 'Star H', 3, 'Dim star in the Triangulum galaxy');
INSERT INTO public.star VALUES (9, 18000, 'Star I', 4, 'Close star in the Centaurus A galaxy');
INSERT INTO public.star VALUES (10, 22000, 'Star J', 5, 'Brilliant star in the Sombrero galaxy');
INSERT INTO public.star VALUES (11, 100000, 'Star A', 1, 'Bright and massive star in the Milky Way');
INSERT INTO public.star VALUES (12, 80000, 'Star B', 2, 'Luminous star in the Andromeda galaxy');
INSERT INTO public.star VALUES (13, 50000, 'Star C', 3, 'Small star in the Triangulum galaxy');
INSERT INTO public.star VALUES (14, 15000, 'Star D', 4, 'Distant star in the Centaurus A galaxy');
INSERT INTO public.star VALUES (15, 20000, 'Star E', 5, 'Spectacular star in the Sombrero galaxy');
INSERT INTO public.star VALUES (16, 90000, 'Star F', 1, 'Giant star in the Milky Way');
INSERT INTO public.star VALUES (17, 70000, 'Star G', 2, 'Radiant star in the Andromeda galaxy');
INSERT INTO public.star VALUES (18, 40000, 'Star H', 3, 'Dim star in the Triangulum galaxy');
INSERT INTO public.star VALUES (19, 18000, 'Star I', 4, 'Close star in the Centaurus A galaxy');
INSERT INTO public.star VALUES (20, 22000, 'Star J', 5, 'Brilliant star in the Sombrero galaxy');


--
-- Name: dummy_dummy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.dummy_dummy_id_seq', 4, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 20, true);


--
-- Name: dummy dummy_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.dummy
    ADD CONSTRAINT dummy_description_key UNIQUE (description);


--
-- Name: dummy dummy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.dummy
    ADD CONSTRAINT dummy_pkey PRIMARY KEY (dummy_id);


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
-- Name: galaxy unq; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unq UNIQUE (galaxy_id);


--
-- Name: dummy unq_dummy; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.dummy
    ADD CONSTRAINT unq_dummy UNIQUE (dummy_id);


--
-- Name: moon unq_moon; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unq_moon UNIQUE (moon_id);


--
-- Name: planet unq_planet; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unq_planet UNIQUE (planet_id);


--
-- Name: star unq_star; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unq_star UNIQUE (star_id);


--
-- Name: star fk_star_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_star_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


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
-- PostgreSQL database dump complete
--

