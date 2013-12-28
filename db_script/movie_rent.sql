INSERT INTO tcustomer (cust_id, date_of_membership, cust_fname, cust_mname, cust_lname, cust_address, cust_phone, cust_email) VALUES ('2000-0001', '2000-10-12', 'Sharon         ', 'Jarantilla     ', 'Falceso        ', 'Capitol, Pagadian City   ', '062-9250467', 'shynx_swear@yahoo.com    ');
INSERT INTO tcustomer (cust_id, date_of_membership, cust_fname, cust_mname, cust_lname, cust_address, cust_phone, cust_email) VALUES ('2000-0002', '2000-11-22', 'Haide          ', 'Lamatan        ', 'Molejon        ', 'Capitol, Pagadian City   ', '062-9250234', 'hydzlam@yahoo.com        ');
INSERT INTO tcustomer (cust_id, date_of_membership, cust_fname, cust_mname, cust_lname, cust_address, cust_phone, cust_email) VALUES ('2001-0003', '2001-02-12', 'Maynard        ', 'Balboa         ', 'Pilongo        ', 'Francisco. Pagadian City ', '062-9250281', 'adonis@yahoo.com         ');
INSERT INTO tcustomer (cust_id, date_of_membership, cust_fname, cust_mname, cust_lname, cust_address, cust_phone, cust_email) VALUES ('2001-0004', '2001-05-23', 'Edilmer        ', 'Santos         ', 'Balbutin       ', 'Sunrise, Pagadian City   ', '062-9250786', 'remilde@yahoo.com        ');
INSERT INTO tcustomer (cust_id, date_of_membership, cust_fname, cust_mname, cust_lname, cust_address, cust_phone, cust_email) VALUES ('2001-0005', '2001-09-16', 'Orven          ', 'Ebarle         ', 'Llantos        ', 'Iligan City              ', '088-389189', 'orven@yahoo.com          ');

INSERT INTO tcd (cd_id, cd_genre, cd_year_release, cd_rent_rate, cd_title) VALUES ('2013-1001', 'Fantasy   ', 2010, '$50.00', 'Batman                   ');
INSERT INTO tcd (cd_id, cd_genre, cd_year_release, cd_rent_rate, cd_title) VALUES ('2013-1002', 'Romance   ', 2013, '$50.00', 'Twilight Saga            ');
INSERT INTO tcd (cd_id, cd_genre, cd_year_release, cd_rent_rate, cd_title) VALUES ('2013-1003', 'Action    ', 2013, '$75.00', 'Homefront                ');
INSERT INTO tcd (cd_id, cd_genre, cd_year_release, cd_rent_rate, cd_title) VALUES ('2013-1004', 'Action    ', 2013, '$75.00', 'Pain and Gain            ');
INSERT INTO tcd (cd_id, cd_genre, cd_year_release, cd_rent_rate, cd_title) VALUES ('2013-1005', 'Action    ', 2013, '$75.00', 'Hunger Games             ');

INSERT INTO tcd_rent (rent_id, cust_id, cd_id, date_rented, date_due, date_return) VALUES ('000000001', '2001-0003', '2013-1003', '2013-12-22', '2013-12-23', '2013-12-23');
INSERT INTO tcd_rent (rent_id, cust_id, cd_id, date_rented, date_due, date_return) VALUES ('000000002', '2000-0001', '2013-1002', '2013-12-22', '2013-12-23', '2013-12-23');
INSERT INTO tcd_rent (rent_id, cust_id, cd_id, date_rented, date_due, date_return) VALUES ('000000003', '2001-0004', '2013-1001', '2013-12-25', '2013-12-26', '2013-12-27');
INSERT INTO tcd_rent (rent_id, cust_id, cd_id, date_rented, date_due, date_return) VALUES ('000000004', '2000-0002', '2013-1005', '2013-12-26', '2013-12-27', '2013-12-27');
INSERT INTO tcd_rent (rent_id, cust_id, cd_id, date_rented, date_due, date_return) VALUES ('000000005', '2001-0005', '2013-1004', '2013-12-26', '2013-12-27', '2013-12-27');

INSERT INTO actor (actor_id, actor_fname, actor_lname, actor_gender) VALUES ('5000     ', 'Jason          ', 'Statham        ', 'male      ');
INSERT INTO actor (actor_id, actor_fname, actor_lname, actor_gender) VALUES ('5001     ', 'Jennifer       ', 'Lawrence       ', 'female    ');
INSERT INTO actor (actor_id, actor_fname, actor_lname, actor_gender) VALUES ('5002     ', 'Mark           ', 'Wahlberg       ', 'male      ');
INSERT INTO actor (actor_id, actor_fname, actor_lname, actor_gender) VALUES ('5003     ', 'Robert         ', 'De niro        ', 'male      ');
INSERT INTO actor (actor_id, actor_fname, actor_lname, actor_gender) VALUES ('5004     ', 'Kristine       ', 'Stewart        ', 'female    ');

INSERT INTO cd_cast (cd_id, actor_id) VALUES ('2013-1001', '5003     ');
INSERT INTO cd_cast (cd_id, actor_id) VALUES ('2013-1002', '5004     ');
INSERT INTO cd_cast (cd_id, actor_id) VALUES ('2013-1003', '5000     ');
INSERT INTO cd_cast (cd_id, actor_id) VALUES ('2013-1004', '5002     ');


--
-- PostgreSQL database dump
--

-- Dumped from database version 9.2.4
-- Dumped by pg_dump version 9.2.4
-- Started on 2013-12-28 14:13:57



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
-- TOC entry 1957 (class 0 OID 16497)
-- Dependencies: 169
-- Data for Name: tcd; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 1958 (class 0 OID 16502)
-- Dependencies: 170
-- Data for Name: tcd_rent; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 1956 (class 0 OID 16487)
-- Dependencies: 168
-- Data for Name: tcustomer; Type: TABLE DATA; Schema: public; Owner: postgres
--


-- Completed on 2013-12-28 14:14:00

--
-- PostgreSQL database dump complete
--

