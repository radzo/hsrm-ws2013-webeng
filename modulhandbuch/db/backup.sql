--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

--
-- Name: mail; Type: DOMAIN; Schema: public; Owner: ntetz001
--

CREATE DOMAIN mail AS text
	CONSTRAINT email CHECK ((VALUE ~ '@'::text));


ALTER DOMAIN public.mail OWNER TO ntetz001;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: dozent; Type: TABLE; Schema: public; Owner: ntetz001; Tablespace: 
--

CREATE TABLE dozent (
    name character varying(80) NOT NULL,
    bid integer NOT NULL
);


ALTER TABLE public.dozent OWNER TO ntetz001;

--
-- Name: dozent_bid_seq; Type: SEQUENCE; Schema: public; Owner: ntetz001
--

CREATE SEQUENCE dozent_bid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.dozent_bid_seq OWNER TO ntetz001;

--
-- Name: dozent_bid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ntetz001
--

ALTER SEQUENCE dozent_bid_seq OWNED BY dozent.bid;


--
-- Name: kommentar; Type: TABLE; Schema: public; Owner: ntetz001; Tablespace: 
--

CREATE TABLE kommentar (
    text text NOT NULL,
    studentbid integer NOT NULL,
    modulnummer character(4) NOT NULL,
    date timestamp without time zone DEFAULT now(),
    id integer NOT NULL,
    last_modify timestamp without time zone
);


ALTER TABLE public.kommentar OWNER TO ntetz001;

--
-- Name: kommentar_id_seq; Type: SEQUENCE; Schema: public; Owner: ntetz001
--

CREATE SEQUENCE kommentar_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.kommentar_id_seq OWNER TO ntetz001;

--
-- Name: kommentar_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ntetz001
--

ALTER SEQUENCE kommentar_id_seq OWNED BY kommentar.id;


--
-- Name: kommentar_studentbid_seq; Type: SEQUENCE; Schema: public; Owner: ntetz001
--

CREATE SEQUENCE kommentar_studentbid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.kommentar_studentbid_seq OWNER TO ntetz001;

--
-- Name: kommentar_studentbid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ntetz001
--

ALTER SEQUENCE kommentar_studentbid_seq OWNED BY kommentar.studentbid;


--
-- Name: liste; Type: TABLE; Schema: public; Owner: ntetz001; Tablespace: 
--

CREATE TABLE liste (
    bezeichnung character varying(80) NOT NULL
);


ALTER TABLE public.liste OWNER TO ntetz001;

--
-- Name: literatur; Type: TABLE; Schema: public; Owner: ntetz001; Tablespace: 
--

CREATE TABLE literatur (
    autor character varying(50) NOT NULL,
    titel character varying(150) NOT NULL,
    verlag character varying(80),
    jahr character(4),
    bid integer NOT NULL
);


ALTER TABLE public.literatur OWNER TO ntetz001;

--
-- Name: literatur_bid_seq; Type: SEQUENCE; Schema: public; Owner: ntetz001
--

CREATE SEQUENCE literatur_bid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.literatur_bid_seq OWNER TO ntetz001;

--
-- Name: literatur_bid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ntetz001
--

ALTER SEQUENCE literatur_bid_seq OWNED BY literatur.bid;


--
-- Name: modul; Type: TABLE; Schema: public; Owner: ntetz001; Tablespace: 
--

CREATE TABLE modul (
    modulnummer character(4) NOT NULL,
    bezeichnung character varying(80) NOT NULL,
    semester character(1) NOT NULL,
    liste character varying(80) NOT NULL,
    voraussetzung character varying(800) NOT NULL,
    inhalte character varying(2000) NOT NULL,
    lernziele character varying(1500) NOT NULL,
    aufwand character varying(200) NOT NULL,
    bewertung character(100) NOT NULL,
    lehrform character varying(80) NOT NULL,
    credits character varying(20) NOT NULL,
    bild character varying(80) NOT NULL
);


ALTER TABLE public.modul OWNER TO ntetz001;

--
-- Name: moduldozent; Type: TABLE; Schema: public; Owner: ntetz001; Tablespace: 
--

CREATE TABLE moduldozent (
    modulnummer character(4) NOT NULL,
    dozentid integer NOT NULL
);


ALTER TABLE public.moduldozent OWNER TO ntetz001;

--
-- Name: moduldozent_dozentid_seq; Type: SEQUENCE; Schema: public; Owner: ntetz001
--

CREATE SEQUENCE moduldozent_dozentid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moduldozent_dozentid_seq OWNER TO ntetz001;

--
-- Name: moduldozent_dozentid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ntetz001
--

ALTER SEQUENCE moduldozent_dozentid_seq OWNED BY moduldozent.dozentid;


--
-- Name: modulliteratur; Type: TABLE; Schema: public; Owner: ntetz001; Tablespace: 
--

CREATE TABLE modulliteratur (
    modulnummer character(4) NOT NULL,
    literaturid integer NOT NULL
);


ALTER TABLE public.modulliteratur OWNER TO ntetz001;

--
-- Name: modulliteratur_literaturid_seq; Type: SEQUENCE; Schema: public; Owner: ntetz001
--

CREATE SEQUENCE modulliteratur_literaturid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.modulliteratur_literaturid_seq OWNER TO ntetz001;

--
-- Name: modulliteratur_literaturid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ntetz001
--

ALTER SEQUENCE modulliteratur_literaturid_seq OWNED BY modulliteratur.literaturid;


--
-- Name: projekt; Type: TABLE; Schema: public; Owner: ntetz001; Tablespace: 
--

CREATE TABLE projekt (
    name character varying(80) NOT NULL,
    beschreibung character varying(1000) NOT NULL,
    videourl text NOT NULL,
    modulnummer character(4) NOT NULL,
    bid integer NOT NULL,
    titelbild character varying(50) DEFAULT '../img/placeholder.png'::character varying,
    bilddir character varying(255),
    thumbdir character varying(255)
);


ALTER TABLE public.projekt OWNER TO ntetz001;

--
-- Name: projekt_bid_seq; Type: SEQUENCE; Schema: public; Owner: ntetz001
--

CREATE SEQUENCE projekt_bid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.projekt_bid_seq OWNER TO ntetz001;

--
-- Name: projekt_bid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ntetz001
--

ALTER SEQUENCE projekt_bid_seq OWNED BY projekt.bid;


--
-- Name: semester; Type: TABLE; Schema: public; Owner: ntetz001; Tablespace: 
--

CREATE TABLE semester (
    bezeichnung character(1) NOT NULL
);


ALTER TABLE public.semester OWNER TO ntetz001;

--
-- Name: student; Type: TABLE; Schema: public; Owner: ntetz001; Tablespace: 
--

CREATE TABLE student (
    vorname character varying(80) NOT NULL,
    nachname character varying(80) NOT NULL,
    email mail NOT NULL,
    passwort character varying(80) NOT NULL,
    bid integer NOT NULL
);


ALTER TABLE public.student OWNER TO ntetz001;

--
-- Name: student_bid_seq; Type: SEQUENCE; Schema: public; Owner: ntetz001
--

CREATE SEQUENCE student_bid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.student_bid_seq OWNER TO ntetz001;

--
-- Name: student_bid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ntetz001
--

ALTER SEQUENCE student_bid_seq OWNED BY student.bid;


--
-- Name: studentprojekt; Type: TABLE; Schema: public; Owner: ntetz001; Tablespace: 
--

CREATE TABLE studentprojekt (
    projektid integer NOT NULL,
    studentid integer NOT NULL,
    inportfolio boolean DEFAULT false
);


ALTER TABLE public.studentprojekt OWNER TO ntetz001;

--
-- Name: studentprojekt_projektid_seq; Type: SEQUENCE; Schema: public; Owner: ntetz001
--

CREATE SEQUENCE studentprojekt_projektid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.studentprojekt_projektid_seq OWNER TO ntetz001;

--
-- Name: studentprojekt_projektid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ntetz001
--

ALTER SEQUENCE studentprojekt_projektid_seq OWNED BY studentprojekt.projektid;


--
-- Name: studentprojekt_studentid_seq; Type: SEQUENCE; Schema: public; Owner: ntetz001
--

CREATE SEQUENCE studentprojekt_studentid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.studentprojekt_studentid_seq OWNER TO ntetz001;

--
-- Name: studentprojekt_studentid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ntetz001
--

ALTER SEQUENCE studentprojekt_studentid_seq OWNED BY studentprojekt.studentid;


--
-- Name: bid; Type: DEFAULT; Schema: public; Owner: ntetz001
--

ALTER TABLE ONLY dozent ALTER COLUMN bid SET DEFAULT nextval('dozent_bid_seq'::regclass);


--
-- Name: studentbid; Type: DEFAULT; Schema: public; Owner: ntetz001
--

ALTER TABLE ONLY kommentar ALTER COLUMN studentbid SET DEFAULT nextval('kommentar_studentbid_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: ntetz001
--

ALTER TABLE ONLY kommentar ALTER COLUMN id SET DEFAULT nextval('kommentar_id_seq'::regclass);


--
-- Name: bid; Type: DEFAULT; Schema: public; Owner: ntetz001
--

ALTER TABLE ONLY literatur ALTER COLUMN bid SET DEFAULT nextval('literatur_bid_seq'::regclass);


--
-- Name: dozentid; Type: DEFAULT; Schema: public; Owner: ntetz001
--

ALTER TABLE ONLY moduldozent ALTER COLUMN dozentid SET DEFAULT nextval('moduldozent_dozentid_seq'::regclass);


--
-- Name: literaturid; Type: DEFAULT; Schema: public; Owner: ntetz001
--

ALTER TABLE ONLY modulliteratur ALTER COLUMN literaturid SET DEFAULT nextval('modulliteratur_literaturid_seq'::regclass);


--
-- Name: bid; Type: DEFAULT; Schema: public; Owner: ntetz001
--

ALTER TABLE ONLY projekt ALTER COLUMN bid SET DEFAULT nextval('projekt_bid_seq'::regclass);


--
-- Name: bid; Type: DEFAULT; Schema: public; Owner: ntetz001
--

ALTER TABLE ONLY student ALTER COLUMN bid SET DEFAULT nextval('student_bid_seq'::regclass);


--
-- Name: projektid; Type: DEFAULT; Schema: public; Owner: ntetz001
--

ALTER TABLE ONLY studentprojekt ALTER COLUMN projektid SET DEFAULT nextval('studentprojekt_projektid_seq'::regclass);


--
-- Name: studentid; Type: DEFAULT; Schema: public; Owner: ntetz001
--

ALTER TABLE ONLY studentprojekt ALTER COLUMN studentid SET DEFAULT nextval('studentprojekt_studentid_seq'::regclass);


--
-- Name: dozent_pkey; Type: CONSTRAINT; Schema: public; Owner: ntetz001; Tablespace: 
--

ALTER TABLE ONLY dozent
    ADD CONSTRAINT dozent_pkey PRIMARY KEY (bid);


--
-- Name: kommentar_pkey; Type: CONSTRAINT; Schema: public; Owner: ntetz001; Tablespace: 
--

ALTER TABLE ONLY kommentar
    ADD CONSTRAINT kommentar_pkey PRIMARY KEY (id);


--
-- Name: liste_pkey; Type: CONSTRAINT; Schema: public; Owner: ntetz001; Tablespace: 
--

ALTER TABLE ONLY liste
    ADD CONSTRAINT liste_pkey PRIMARY KEY (bezeichnung);


--
-- Name: literatur_pkey; Type: CONSTRAINT; Schema: public; Owner: ntetz001; Tablespace: 
--

ALTER TABLE ONLY literatur
    ADD CONSTRAINT literatur_pkey PRIMARY KEY (bid);


--
-- Name: modul_pkey; Type: CONSTRAINT; Schema: public; Owner: ntetz001; Tablespace: 
--

ALTER TABLE ONLY modul
    ADD CONSTRAINT modul_pkey PRIMARY KEY (modulnummer);


--
-- Name: moduldozent_pkey; Type: CONSTRAINT; Schema: public; Owner: ntetz001; Tablespace: 
--

ALTER TABLE ONLY moduldozent
    ADD CONSTRAINT moduldozent_pkey PRIMARY KEY (modulnummer, dozentid);


--
-- Name: modulliteratur_pkey; Type: CONSTRAINT; Schema: public; Owner: ntetz001; Tablespace: 
--

ALTER TABLE ONLY modulliteratur
    ADD CONSTRAINT modulliteratur_pkey PRIMARY KEY (modulnummer, literaturid);


--
-- Name: projekt_pkey; Type: CONSTRAINT; Schema: public; Owner: ntetz001; Tablespace: 
--

ALTER TABLE ONLY projekt
    ADD CONSTRAINT projekt_pkey PRIMARY KEY (bid);


--
-- Name: semester_pkey; Type: CONSTRAINT; Schema: public; Owner: ntetz001; Tablespace: 
--

ALTER TABLE ONLY semester
    ADD CONSTRAINT semester_pkey PRIMARY KEY (bezeichnung);


--
-- Name: student_pkey; Type: CONSTRAINT; Schema: public; Owner: ntetz001; Tablespace: 
--

ALTER TABLE ONLY student
    ADD CONSTRAINT student_pkey PRIMARY KEY (bid);


--
-- Name: studentprojekt_pkey; Type: CONSTRAINT; Schema: public; Owner: ntetz001; Tablespace: 
--

ALTER TABLE ONLY studentprojekt
    ADD CONSTRAINT studentprojekt_pkey PRIMARY KEY (projektid, studentid);


--
-- Name: kommentar_modulnummer_fkey; Type: FK CONSTRAINT; Schema: public; Owner: ntetz001
--

ALTER TABLE ONLY kommentar
    ADD CONSTRAINT kommentar_modulnummer_fkey FOREIGN KEY (modulnummer) REFERENCES modul(modulnummer);


--
-- Name: kommentar_studentbid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: ntetz001
--

ALTER TABLE ONLY kommentar
    ADD CONSTRAINT kommentar_studentbid_fkey FOREIGN KEY (studentbid) REFERENCES student(bid);


--
-- Name: modul_liste_fkey; Type: FK CONSTRAINT; Schema: public; Owner: ntetz001
--

ALTER TABLE ONLY modul
    ADD CONSTRAINT modul_liste_fkey FOREIGN KEY (liste) REFERENCES liste(bezeichnung);


--
-- Name: modul_semester_fkey; Type: FK CONSTRAINT; Schema: public; Owner: ntetz001
--

ALTER TABLE ONLY modul
    ADD CONSTRAINT modul_semester_fkey FOREIGN KEY (semester) REFERENCES semester(bezeichnung);


--
-- Name: moduldozent_dozentid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: ntetz001
--

ALTER TABLE ONLY moduldozent
    ADD CONSTRAINT moduldozent_dozentid_fkey FOREIGN KEY (dozentid) REFERENCES dozent(bid);


--
-- Name: moduldozent_modulnummer_fkey; Type: FK CONSTRAINT; Schema: public; Owner: ntetz001
--

ALTER TABLE ONLY moduldozent
    ADD CONSTRAINT moduldozent_modulnummer_fkey FOREIGN KEY (modulnummer) REFERENCES modul(modulnummer);


--
-- Name: modulliteratur_literaturid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: ntetz001
--

ALTER TABLE ONLY modulliteratur
    ADD CONSTRAINT modulliteratur_literaturid_fkey FOREIGN KEY (literaturid) REFERENCES literatur(bid);


--
-- Name: modulliteratur_modulnummer_fkey; Type: FK CONSTRAINT; Schema: public; Owner: ntetz001
--

ALTER TABLE ONLY modulliteratur
    ADD CONSTRAINT modulliteratur_modulnummer_fkey FOREIGN KEY (modulnummer) REFERENCES modul(modulnummer);


--
-- Name: projekt_modulnummer_fkey; Type: FK CONSTRAINT; Schema: public; Owner: ntetz001
--

ALTER TABLE ONLY projekt
    ADD CONSTRAINT projekt_modulnummer_fkey FOREIGN KEY (modulnummer) REFERENCES modul(modulnummer);


--
-- Name: studentprojekt_projektid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: ntetz001
--

ALTER TABLE ONLY studentprojekt
    ADD CONSTRAINT studentprojekt_projektid_fkey FOREIGN KEY (projektid) REFERENCES projekt(bid);


--
-- Name: studentprojekt_studentid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: ntetz001
--

ALTER TABLE ONLY studentprojekt
    ADD CONSTRAINT studentprojekt_studentid_fkey FOREIGN KEY (studentid) REFERENCES student(bid);


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

