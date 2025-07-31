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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
    year integer NOT NULL,
    round character varying(30) NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
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
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(30) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (22, 2018, 'Final', 572, 573, 4, 2);
INSERT INTO public.games VALUES (23, 2018, 'Third Place', 574, 575, 2, 0);
INSERT INTO public.games VALUES (24, 2018, 'Semi-Final', 573, 575, 2, 1);
INSERT INTO public.games VALUES (25, 2018, 'Semi-Final', 572, 574, 1, 0);
INSERT INTO public.games VALUES (26, 2018, 'Quarter-Final', 573, 581, 3, 2);
INSERT INTO public.games VALUES (27, 2018, 'Quarter-Final', 575, 583, 2, 0);
INSERT INTO public.games VALUES (28, 2018, 'Quarter-Final', 574, 585, 2, 1);
INSERT INTO public.games VALUES (29, 2018, 'Quarter-Final', 572, 587, 2, 0);
INSERT INTO public.games VALUES (30, 2018, 'Eighth-Final', 575, 589, 2, 1);
INSERT INTO public.games VALUES (31, 2018, 'Eighth-Final', 583, 591, 1, 0);
INSERT INTO public.games VALUES (32, 2018, 'Eighth-Final', 574, 593, 3, 2);
INSERT INTO public.games VALUES (33, 2018, 'Eighth-Final', 585, 595, 2, 0);
INSERT INTO public.games VALUES (34, 2018, 'Eighth-Final', 573, 597, 2, 1);
INSERT INTO public.games VALUES (35, 2018, 'Eighth-Final', 581, 599, 2, 1);
INSERT INTO public.games VALUES (36, 2018, 'Eighth-Final', 587, 601, 2, 1);
INSERT INTO public.games VALUES (37, 2018, 'Eighth-Final', 572, 603, 4, 3);
INSERT INTO public.games VALUES (38, 2014, 'Final', 604, 603, 1, 0);
INSERT INTO public.games VALUES (39, 2014, 'Third Place', 606, 585, 3, 0);
INSERT INTO public.games VALUES (40, 2014, 'Semi-Final', 603, 606, 1, 0);
INSERT INTO public.games VALUES (41, 2014, 'Semi-Final', 604, 585, 7, 1);
INSERT INTO public.games VALUES (42, 2014, 'Quarter-Final', 606, 613, 1, 0);
INSERT INTO public.games VALUES (43, 2014, 'Quarter-Final', 603, 574, 1, 0);
INSERT INTO public.games VALUES (44, 2014, 'Quarter-Final', 585, 589, 2, 1);
INSERT INTO public.games VALUES (45, 2014, 'Quarter-Final', 604, 572, 1, 0);
INSERT INTO public.games VALUES (46, 2014, 'Eighth-Final', 585, 621, 2, 1);
INSERT INTO public.games VALUES (47, 2014, 'Eighth-Final', 589, 587, 2, 0);
INSERT INTO public.games VALUES (48, 2014, 'Eighth-Final', 572, 625, 2, 0);
INSERT INTO public.games VALUES (49, 2014, 'Eighth-Final', 604, 627, 2, 1);
INSERT INTO public.games VALUES (50, 2014, 'Eighth-Final', 606, 595, 2, 1);
INSERT INTO public.games VALUES (51, 2014, 'Eighth-Final', 613, 631, 2, 1);
INSERT INTO public.games VALUES (52, 2014, 'Eighth-Final', 603, 591, 1, 0);
INSERT INTO public.games VALUES (53, 2014, 'Eighth-Final', 574, 635, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (572, 'France');
INSERT INTO public.teams VALUES (573, 'Croatia');
INSERT INTO public.teams VALUES (574, 'Belgium');
INSERT INTO public.teams VALUES (575, 'England');
INSERT INTO public.teams VALUES (581, 'Russia');
INSERT INTO public.teams VALUES (583, 'Sweden');
INSERT INTO public.teams VALUES (585, 'Brazil');
INSERT INTO public.teams VALUES (587, 'Uruguay');
INSERT INTO public.teams VALUES (589, 'Colombia');
INSERT INTO public.teams VALUES (591, 'Switzerland');
INSERT INTO public.teams VALUES (593, 'Japan');
INSERT INTO public.teams VALUES (595, 'Mexico');
INSERT INTO public.teams VALUES (597, 'Denmark');
INSERT INTO public.teams VALUES (599, 'Spain');
INSERT INTO public.teams VALUES (601, 'Portugal');
INSERT INTO public.teams VALUES (603, 'Argentina');
INSERT INTO public.teams VALUES (604, 'Germany');
INSERT INTO public.teams VALUES (606, 'Netherlands');
INSERT INTO public.teams VALUES (613, 'Costa Rica');
INSERT INTO public.teams VALUES (621, 'Chile');
INSERT INTO public.teams VALUES (625, 'Nigeria');
INSERT INTO public.teams VALUES (627, 'Algeria');
INSERT INTO public.teams VALUES (631, 'Greece');
INSERT INTO public.teams VALUES (635, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 53, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 635, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

