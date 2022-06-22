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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    number_guesses integer NOT NULL,
    user_id integer
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(30) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 396, 11);
INSERT INTO public.games VALUES (2, 317, 11);
INSERT INTO public.games VALUES (3, 374, 12);
INSERT INTO public.games VALUES (4, 78, 12);
INSERT INTO public.games VALUES (5, 259, 11);
INSERT INTO public.games VALUES (6, 233, 11);
INSERT INTO public.games VALUES (7, 223, 11);
INSERT INTO public.games VALUES (8, 752, 13);
INSERT INTO public.games VALUES (9, 201, 13);
INSERT INTO public.games VALUES (10, 796, 14);
INSERT INTO public.games VALUES (11, 934, 14);
INSERT INTO public.games VALUES (12, 175, 13);
INSERT INTO public.games VALUES (13, 216, 13);
INSERT INTO public.games VALUES (14, 748, 13);
INSERT INTO public.games VALUES (15, 260, 15);
INSERT INTO public.games VALUES (16, 250, 15);
INSERT INTO public.games VALUES (17, 879, 16);
INSERT INTO public.games VALUES (18, 716, 16);
INSERT INTO public.games VALUES (19, 763, 15);
INSERT INTO public.games VALUES (20, 522, 15);
INSERT INTO public.games VALUES (21, 416, 15);
INSERT INTO public.games VALUES (22, 279, 17);
INSERT INTO public.games VALUES (23, 303, 17);
INSERT INTO public.games VALUES (24, 894, 18);
INSERT INTO public.games VALUES (25, 955, 18);
INSERT INTO public.games VALUES (26, 814, 17);
INSERT INTO public.games VALUES (27, 566, 17);
INSERT INTO public.games VALUES (28, 699, 17);
INSERT INTO public.games VALUES (29, 438, 19);
INSERT INTO public.games VALUES (30, 685, 19);
INSERT INTO public.games VALUES (31, 134, 20);
INSERT INTO public.games VALUES (32, 998, 20);
INSERT INTO public.games VALUES (33, 233, 19);
INSERT INTO public.games VALUES (34, 22, 19);
INSERT INTO public.games VALUES (35, 186, 19);
INSERT INTO public.games VALUES (36, 14, 1);
INSERT INTO public.games VALUES (37, 290, 21);
INSERT INTO public.games VALUES (38, 448, 21);
INSERT INTO public.games VALUES (39, 327, 22);
INSERT INTO public.games VALUES (40, 740, 22);
INSERT INTO public.games VALUES (41, 448, 21);
INSERT INTO public.games VALUES (42, 982, 21);
INSERT INTO public.games VALUES (43, 829, 21);
INSERT INTO public.games VALUES (44, 440, 23);
INSERT INTO public.games VALUES (45, 149, 23);
INSERT INTO public.games VALUES (46, 463, 24);
INSERT INTO public.games VALUES (47, 309, 24);
INSERT INTO public.games VALUES (48, 266, 23);
INSERT INTO public.games VALUES (49, 721, 23);
INSERT INTO public.games VALUES (50, 424, 23);
INSERT INTO public.games VALUES (51, 440, 25);
INSERT INTO public.games VALUES (52, 479, 25);
INSERT INTO public.games VALUES (53, 297, 26);
INSERT INTO public.games VALUES (54, 978, 26);
INSERT INTO public.games VALUES (55, 822, 25);
INSERT INTO public.games VALUES (56, 410, 25);
INSERT INTO public.games VALUES (57, 482, 25);
INSERT INTO public.games VALUES (58, 864, 27);
INSERT INTO public.games VALUES (59, 110, 27);
INSERT INTO public.games VALUES (60, 551, 28);
INSERT INTO public.games VALUES (61, 809, 28);
INSERT INTO public.games VALUES (62, 621, 27);
INSERT INTO public.games VALUES (63, 20, 27);
INSERT INTO public.games VALUES (64, 532, 27);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 't');
INSERT INTO public.users VALUES (2, 'user_1655903361863');
INSERT INTO public.users VALUES (3, 'user_1655903361862');
INSERT INTO public.users VALUES (4, 'user_1655903938223');
INSERT INTO public.users VALUES (5, 'user_1655903938222');
INSERT INTO public.users VALUES (6, 'user_1655904017164');
INSERT INTO public.users VALUES (7, 'user_1655904017163');
INSERT INTO public.users VALUES (8, 'user_1655904144267');
INSERT INTO public.users VALUES (9, 'user_1655904144266');
INSERT INTO public.users VALUES (10, 'ee');
INSERT INTO public.users VALUES (11, 'user_1655904312993');
INSERT INTO public.users VALUES (12, 'user_1655904312992');
INSERT INTO public.users VALUES (13, 'user_1655904334079');
INSERT INTO public.users VALUES (14, 'user_1655904334078');
INSERT INTO public.users VALUES (15, 'user_1655904345033');
INSERT INTO public.users VALUES (16, 'user_1655904345032');
INSERT INTO public.users VALUES (17, 'user_1655904366464');
INSERT INTO public.users VALUES (18, 'user_1655904366463');
INSERT INTO public.users VALUES (19, 'user_1655904449579');
INSERT INTO public.users VALUES (20, 'user_1655904449578');
INSERT INTO public.users VALUES (21, 'user_1655904636014');
INSERT INTO public.users VALUES (22, 'user_1655904636013');
INSERT INTO public.users VALUES (23, 'user_1655904675483');
INSERT INTO public.users VALUES (24, 'user_1655904675482');
INSERT INTO public.users VALUES (25, 'user_1655904707387');
INSERT INTO public.users VALUES (26, 'user_1655904707386');
INSERT INTO public.users VALUES (27, 'user_1655904767169');
INSERT INTO public.users VALUES (28, 'user_1655904767168');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 64, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 28, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

