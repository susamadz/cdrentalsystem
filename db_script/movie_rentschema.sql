--
-- PostgreSQL database dump
--

-- Dumped from database version 9.2.4
-- Dumped by pg_dump version 9.2.4
-- Started on 2013-12-28 14:15:14

-- TOC entry 174 (class 3079 OID 11727)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

--CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 1969 (class 0 OID 0)
-- Dependencies: 174
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

--COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';



--
-- TOC entry 172 (class 1259 OID 16527)
-- Name: actor; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE actor (
    actor_id character(9) NOT NULL,
    actor_fname character(15) NOT NULL,
    actor_lname character(15) NOT NULL,
    actor_gender character(10)
);



--
-- TOC entry 173 (class 1259 OID 16539)
-- Name: cd_cast; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE cd_cast (
    cd_id character(9) NOT NULL,
    actor_id character(9) NOT NULL
);




--
-- TOC entry 171 (class 1259 OID 16517)
-- Name: payment; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE payment (
    transact_id character(9) NOT NULL,
    rent_id character(9),
    transact_date date NOT NULL,
    transact_amount money NOT NULL
);



--
-- TOC entry 169 (class 1259 OID 16497)
-- Name: tcd; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE tcd (
    cd_id character(9) NOT NULL,
    cd_genre character(10),
    cd_year_release integer,
    cd_rent_rate money NOT NULL,
    cd_title character(25) NOT NULL
);




--
-- TOC entry 170 (class 1259 OID 16502)
-- Name: tcd_rent; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE tcd_rent (
    rent_id character(9) NOT NULL,
    cust_id character(9),
    cd_id character(9),
    date_rented date NOT NULL,
    date_due date NOT NULL,
    date_return date
);



--
-- TOC entry 168 (class 1259 OID 16487)
-- Name: tcustomer; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE tcustomer (
    cust_id character(9) NOT NULL,
    date_of_membership date,
    cust_fname character(15) NOT NULL,
    cust_mname character(15),
    cust_lname character(15) NOT NULL,
    cust_address character(25),
    cust_phone text,
    cust_email character(25)
);



--
-- TOC entry 1960 (class 0 OID 16527)
-- Dependencies: 172
-- Data for Name: actor; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 1961 (class 0 OID 16539)
-- Dependencies: 173
-- Data for Name: cd_cast; Type: TABLE DATA; Schema: public; Owner: postgres
--




--
-- TOC entry 1959 (class 0 OID 16517)
-- Dependencies: 171
-- Data for Name: payment; Type: TABLE DATA; Schema: public; Owner: postgres
--




--
-- TOC entry 1956 (class 0 OID 16487)
-- Dependencies: 168
-- Data for Name: tcustomer; Type: TABLE DATA; Schema: public; Owner: postgres
--




--
-- TOC entry 1946 (class 2606 OID 16533)
-- Name: actor_actor_fname_actor_lname_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY actor
    ADD CONSTRAINT actor_actor_fname_actor_lname_key UNIQUE (actor_fname, actor_lname);


--
-- TOC entry 1948 (class 2606 OID 16531)
-- Name: actor_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY actor
    ADD CONSTRAINT actor_pkey PRIMARY KEY (actor_id);


--
-- TOC entry 1950 (class 2606 OID 16543)
-- Name: cd_cast_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY cd_cast
    ADD CONSTRAINT cd_cast_pkey PRIMARY KEY (cd_id, actor_id);


--
-- TOC entry 1944 (class 2606 OID 16521)
-- Name: payment_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY payment
    ADD CONSTRAINT payment_pkey PRIMARY KEY (transact_id);


--
-- TOC entry 1940 (class 2606 OID 16501)
-- Name: tcd_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY tcd
    ADD CONSTRAINT tcd_pkey PRIMARY KEY (cd_id);


--
-- TOC entry 1942 (class 2606 OID 16506)
-- Name: tcd_rent_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY tcd_rent
    ADD CONSTRAINT tcd_rent_pkey PRIMARY KEY (rent_id);


--
-- TOC entry 1936 (class 2606 OID 16496)
-- Name: tcustomer_cust_fname_cust_lname_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY tcustomer
    ADD CONSTRAINT tcustomer_cust_fname_cust_lname_key UNIQUE (cust_fname, cust_lname);


--
-- TOC entry 1938 (class 2606 OID 16494)
-- Name: tcustomer_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY tcustomer
    ADD CONSTRAINT tcustomer_pkey PRIMARY KEY (cust_id);


--
-- TOC entry 1955 (class 2606 OID 16549)
-- Name: cd_cast_actor_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY cd_cast
    ADD CONSTRAINT cd_cast_actor_id_fkey FOREIGN KEY (actor_id) REFERENCES actor(actor_id);


--
-- TOC entry 1954 (class 2606 OID 16544)
-- Name: cd_cast_cd_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY cd_cast
    ADD CONSTRAINT cd_cast_cd_id_fkey FOREIGN KEY (cd_id) REFERENCES tcd(cd_id);


--
-- TOC entry 1953 (class 2606 OID 16522)
-- Name: payment_rent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY payment
    ADD CONSTRAINT payment_rent_id_fkey FOREIGN KEY (rent_id) REFERENCES tcd_rent(rent_id);


--
-- TOC entry 1952 (class 2606 OID 16512)
-- Name: tcd_rent_cd_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tcd_rent
    ADD CONSTRAINT tcd_rent_cd_id_fkey FOREIGN KEY (cd_id) REFERENCES tcd(cd_id);


--
-- TOC entry 1951 (class 2606 OID 16507)
-- Name: tcd_rent_cust_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tcd_rent
    ADD CONSTRAINT tcd_rent_cust_id_fkey FOREIGN KEY (cust_id) REFERENCES tcustomer(cust_id);


--
-- TOC entry 1968 (class 0 OID 0)
-- Dependencies: 5
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--


-- Completed on 2013-12-28 14:15:15

--
-- PostgreSQL database dump complete
--

