--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.4
-- Dumped by pg_dump version 9.5.4

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: customer_recipes; Type: TABLE; Schema: public; Owner: vagrant
--

CREATE TABLE customer_recipes (
    cust_rec_id integer NOT NULL,
    customer_id integer NOT NULL,
    recipe_id integer NOT NULL
);


ALTER TABLE customer_recipes OWNER TO vagrant;

--
-- Name: customer_recipes_cust_rec_id_seq; Type: SEQUENCE; Schema: public; Owner: vagrant
--

CREATE SEQUENCE customer_recipes_cust_rec_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE customer_recipes_cust_rec_id_seq OWNER TO vagrant;

--
-- Name: customer_recipes_cust_rec_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: vagrant
--

ALTER SEQUENCE customer_recipes_cust_rec_id_seq OWNED BY customer_recipes.cust_rec_id;


--
-- Name: customer_restrictions; Type: TABLE; Schema: public; Owner: vagrant
--

CREATE TABLE customer_restrictions (
    cust_restr_id integer NOT NULL,
    customer_id integer NOT NULL,
    diet_id integer NOT NULL
);


ALTER TABLE customer_restrictions OWNER TO vagrant;

--
-- Name: customer_restrictions_cust_restr_id_seq; Type: SEQUENCE; Schema: public; Owner: vagrant
--

CREATE SEQUENCE customer_restrictions_cust_restr_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE customer_restrictions_cust_restr_id_seq OWNER TO vagrant;

--
-- Name: customer_restrictions_cust_restr_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: vagrant
--

ALTER SEQUENCE customer_restrictions_cust_restr_id_seq OWNED BY customer_restrictions.cust_restr_id;


--
-- Name: customers; Type: TABLE; Schema: public; Owner: vagrant
--

CREATE TABLE customers (
    user_id integer NOT NULL,
    first_name character varying(100),
    last_name character varying(100),
    email character varying(100) NOT NULL,
    password_hash character varying(500) NOT NULL,
    street_address character varying(100),
    zipcode character varying(15),
    state character varying(2),
    phone character varying(30)
);


ALTER TABLE customers OWNER TO vagrant;

--
-- Name: customers_user_id_seq; Type: SEQUENCE; Schema: public; Owner: vagrant
--

CREATE SEQUENCE customers_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE customers_user_id_seq OWNER TO vagrant;

--
-- Name: customers_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: vagrant
--

ALTER SEQUENCE customers_user_id_seq OWNED BY customers.user_id;


--
-- Name: deliveries; Type: TABLE; Schema: public; Owner: vagrant
--

CREATE TABLE deliveries (
    delivery_id integer NOT NULL,
    vendor character varying(500),
    received_at timestamp without time zone NOT NULL
);


ALTER TABLE deliveries OWNER TO vagrant;

--
-- Name: deliveries_delivery_id_seq; Type: SEQUENCE; Schema: public; Owner: vagrant
--

CREATE SEQUENCE deliveries_delivery_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE deliveries_delivery_id_seq OWNER TO vagrant;

--
-- Name: deliveries_delivery_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: vagrant
--

ALTER SEQUENCE deliveries_delivery_id_seq OWNED BY deliveries.delivery_id;


--
-- Name: delivery_quantities; Type: TABLE; Schema: public; Owner: vagrant
--

CREATE TABLE delivery_quantities (
    deliv_qty_id integer NOT NULL,
    product_id integer NOT NULL,
    product_qty integer NOT NULL,
    delivery_id integer NOT NULL
);


ALTER TABLE delivery_quantities OWNER TO vagrant;

--
-- Name: delivery_quantities_deliv_qty_id_seq; Type: SEQUENCE; Schema: public; Owner: vagrant
--

CREATE SEQUENCE delivery_quantities_deliv_qty_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE delivery_quantities_deliv_qty_id_seq OWNER TO vagrant;

--
-- Name: delivery_quantities_deliv_qty_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: vagrant
--

ALTER SEQUENCE delivery_quantities_deliv_qty_id_seq OWNED BY delivery_quantities.deliv_qty_id;


--
-- Name: dietary_restrictions; Type: TABLE; Schema: public; Owner: vagrant
--

CREATE TABLE dietary_restrictions (
    diet_id integer NOT NULL,
    name character varying(100) NOT NULL
);


ALTER TABLE dietary_restrictions OWNER TO vagrant;

--
-- Name: dietary_restrictions_diet_id_seq; Type: SEQUENCE; Schema: public; Owner: vagrant
--

CREATE SEQUENCE dietary_restrictions_diet_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE dietary_restrictions_diet_id_seq OWNER TO vagrant;

--
-- Name: dietary_restrictions_diet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: vagrant
--

ALTER SEQUENCE dietary_restrictions_diet_id_seq OWNED BY dietary_restrictions.diet_id;


--
-- Name: icons; Type: TABLE; Schema: public; Owner: vagrant
--

CREATE TABLE icons (
    icon_id integer NOT NULL,
    url character varying(500) NOT NULL,
    credit character varying(100) NOT NULL
);


ALTER TABLE icons OWNER TO vagrant;

--
-- Name: icons_icon_id_seq; Type: SEQUENCE; Schema: public; Owner: vagrant
--

CREATE SEQUENCE icons_icon_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE icons_icon_id_seq OWNER TO vagrant;

--
-- Name: icons_icon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: vagrant
--

ALTER SEQUENCE icons_icon_id_seq OWNED BY icons.icon_id;


--
-- Name: order_quantities; Type: TABLE; Schema: public; Owner: vagrant
--

CREATE TABLE order_quantities (
    order_qty_id integer NOT NULL,
    product_id integer NOT NULL,
    product_qty integer NOT NULL,
    order_id integer NOT NULL
);


ALTER TABLE order_quantities OWNER TO vagrant;

--
-- Name: order_quantities_order_qty_id_seq; Type: SEQUENCE; Schema: public; Owner: vagrant
--

CREATE SEQUENCE order_quantities_order_qty_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE order_quantities_order_qty_id_seq OWNER TO vagrant;

--
-- Name: order_quantities_order_qty_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: vagrant
--

ALTER SEQUENCE order_quantities_order_qty_id_seq OWNED BY order_quantities.order_qty_id;


--
-- Name: orders; Type: TABLE; Schema: public; Owner: vagrant
--

CREATE TABLE orders (
    order_id integer NOT NULL,
    customer_id integer NOT NULL,
    placed_at timestamp without time zone NOT NULL,
    total numeric NOT NULL,
    pickup_id integer NOT NULL,
    received_at timestamp without time zone
);


ALTER TABLE orders OWNER TO vagrant;

--
-- Name: orders_order_id_seq; Type: SEQUENCE; Schema: public; Owner: vagrant
--

CREATE SEQUENCE orders_order_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE orders_order_id_seq OWNER TO vagrant;

--
-- Name: orders_order_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: vagrant
--

ALTER SEQUENCE orders_order_id_seq OWNED BY orders.order_id;


--
-- Name: pickups; Type: TABLE; Schema: public; Owner: vagrant
--

CREATE TABLE pickups (
    pickup_id integer NOT NULL,
    name character varying(100),
    street_address character varying(100) NOT NULL,
    zipcode character varying(15) NOT NULL,
    state character varying(2) NOT NULL
);


ALTER TABLE pickups OWNER TO vagrant;

--
-- Name: pickups_pickup_id_seq; Type: SEQUENCE; Schema: public; Owner: vagrant
--

CREATE SEQUENCE pickups_pickup_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE pickups_pickup_id_seq OWNER TO vagrant;

--
-- Name: pickups_pickup_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: vagrant
--

ALTER SEQUENCE pickups_pickup_id_seq OWNED BY pickups.pickup_id;


--
-- Name: product_tags; Type: TABLE; Schema: public; Owner: vagrant
--

CREATE TABLE product_tags (
    prod_tag_id integer NOT NULL,
    product_id integer NOT NULL,
    tag_id integer NOT NULL
);


ALTER TABLE product_tags OWNER TO vagrant;

--
-- Name: product_tags_prod_tag_id_seq; Type: SEQUENCE; Schema: public; Owner: vagrant
--

CREATE SEQUENCE product_tags_prod_tag_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE product_tags_prod_tag_id_seq OWNER TO vagrant;

--
-- Name: product_tags_prod_tag_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: vagrant
--

ALTER SEQUENCE product_tags_prod_tag_id_seq OWNED BY product_tags.prod_tag_id;


--
-- Name: products; Type: TABLE; Schema: public; Owner: vagrant
--

CREATE TABLE products (
    product_id integer NOT NULL,
    name character varying(200) NOT NULL,
    description character varying,
    weight numeric,
    unit character varying(50),
    price numeric NOT NULL,
    price_per numeric,
    per_unit character varying(50),
    aisle character varying(50),
    category character varying(50),
    img character varying(500),
    icon_id integer,
    color character varying(10),
    search_term character varying(50),
    search_strength integer
);


ALTER TABLE products OWNER TO vagrant;

--
-- Name: products_product_id_seq; Type: SEQUENCE; Schema: public; Owner: vagrant
--

CREATE SEQUENCE products_product_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE products_product_id_seq OWNER TO vagrant;

--
-- Name: products_product_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: vagrant
--

ALTER SEQUENCE products_product_id_seq OWNED BY products.product_id;


--
-- Name: recipes; Type: TABLE; Schema: public; Owner: vagrant
--

CREATE TABLE recipes (
    recipe_id integer NOT NULL,
    url character varying(300) NOT NULL,
    name character varying(100) NOT NULL,
    ingredients json NOT NULL,
    img character varying(300)
);


ALTER TABLE recipes OWNER TO vagrant;

--
-- Name: recipes_recipe_id_seq; Type: SEQUENCE; Schema: public; Owner: vagrant
--

CREATE SEQUENCE recipes_recipe_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE recipes_recipe_id_seq OWNER TO vagrant;

--
-- Name: recipes_recipe_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: vagrant
--

ALTER SEQUENCE recipes_recipe_id_seq OWNED BY recipes.recipe_id;


--
-- Name: tags; Type: TABLE; Schema: public; Owner: vagrant
--

CREATE TABLE tags (
    tag_id integer NOT NULL,
    name character varying(100) NOT NULL
);


ALTER TABLE tags OWNER TO vagrant;

--
-- Name: tags_tag_id_seq; Type: SEQUENCE; Schema: public; Owner: vagrant
--

CREATE SEQUENCE tags_tag_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE tags_tag_id_seq OWNER TO vagrant;

--
-- Name: tags_tag_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: vagrant
--

ALTER SEQUENCE tags_tag_id_seq OWNED BY tags.tag_id;


--
-- Name: cust_rec_id; Type: DEFAULT; Schema: public; Owner: vagrant
--

ALTER TABLE ONLY customer_recipes ALTER COLUMN cust_rec_id SET DEFAULT nextval('customer_recipes_cust_rec_id_seq'::regclass);


--
-- Name: cust_restr_id; Type: DEFAULT; Schema: public; Owner: vagrant
--

ALTER TABLE ONLY customer_restrictions ALTER COLUMN cust_restr_id SET DEFAULT nextval('customer_restrictions_cust_restr_id_seq'::regclass);


--
-- Name: user_id; Type: DEFAULT; Schema: public; Owner: vagrant
--

ALTER TABLE ONLY customers ALTER COLUMN user_id SET DEFAULT nextval('customers_user_id_seq'::regclass);


--
-- Name: delivery_id; Type: DEFAULT; Schema: public; Owner: vagrant
--

ALTER TABLE ONLY deliveries ALTER COLUMN delivery_id SET DEFAULT nextval('deliveries_delivery_id_seq'::regclass);


--
-- Name: deliv_qty_id; Type: DEFAULT; Schema: public; Owner: vagrant
--

ALTER TABLE ONLY delivery_quantities ALTER COLUMN deliv_qty_id SET DEFAULT nextval('delivery_quantities_deliv_qty_id_seq'::regclass);


--
-- Name: diet_id; Type: DEFAULT; Schema: public; Owner: vagrant
--

ALTER TABLE ONLY dietary_restrictions ALTER COLUMN diet_id SET DEFAULT nextval('dietary_restrictions_diet_id_seq'::regclass);


--
-- Name: icon_id; Type: DEFAULT; Schema: public; Owner: vagrant
--

ALTER TABLE ONLY icons ALTER COLUMN icon_id SET DEFAULT nextval('icons_icon_id_seq'::regclass);


--
-- Name: order_qty_id; Type: DEFAULT; Schema: public; Owner: vagrant
--

ALTER TABLE ONLY order_quantities ALTER COLUMN order_qty_id SET DEFAULT nextval('order_quantities_order_qty_id_seq'::regclass);


--
-- Name: order_id; Type: DEFAULT; Schema: public; Owner: vagrant
--

ALTER TABLE ONLY orders ALTER COLUMN order_id SET DEFAULT nextval('orders_order_id_seq'::regclass);


--
-- Name: pickup_id; Type: DEFAULT; Schema: public; Owner: vagrant
--

ALTER TABLE ONLY pickups ALTER COLUMN pickup_id SET DEFAULT nextval('pickups_pickup_id_seq'::regclass);


--
-- Name: prod_tag_id; Type: DEFAULT; Schema: public; Owner: vagrant
--

ALTER TABLE ONLY product_tags ALTER COLUMN prod_tag_id SET DEFAULT nextval('product_tags_prod_tag_id_seq'::regclass);


--
-- Name: product_id; Type: DEFAULT; Schema: public; Owner: vagrant
--

ALTER TABLE ONLY products ALTER COLUMN product_id SET DEFAULT nextval('products_product_id_seq'::regclass);


--
-- Name: recipe_id; Type: DEFAULT; Schema: public; Owner: vagrant
--

ALTER TABLE ONLY recipes ALTER COLUMN recipe_id SET DEFAULT nextval('recipes_recipe_id_seq'::regclass);


--
-- Name: tag_id; Type: DEFAULT; Schema: public; Owner: vagrant
--

ALTER TABLE ONLY tags ALTER COLUMN tag_id SET DEFAULT nextval('tags_tag_id_seq'::regclass);


--
-- Data for Name: customer_recipes; Type: TABLE DATA; Schema: public; Owner: vagrant
--

COPY customer_recipes (cust_rec_id, customer_id, recipe_id) FROM stdin;
1	1	1
\.


--
-- Name: customer_recipes_cust_rec_id_seq; Type: SEQUENCE SET; Schema: public; Owner: vagrant
--

SELECT pg_catalog.setval('customer_recipes_cust_rec_id_seq', 1, true);


--
-- Data for Name: customer_restrictions; Type: TABLE DATA; Schema: public; Owner: vagrant
--

COPY customer_restrictions (cust_restr_id, customer_id, diet_id) FROM stdin;
\.


--
-- Name: customer_restrictions_cust_restr_id_seq; Type: SEQUENCE SET; Schema: public; Owner: vagrant
--

SELECT pg_catalog.setval('customer_restrictions_cust_restr_id_seq', 1, false);


--
-- Data for Name: customers; Type: TABLE DATA; Schema: public; Owner: vagrant
--

COPY customers (user_id, first_name, last_name, email, password_hash, street_address, zipcode, state, phone) FROM stdin;
1	Maria	Moy	mariakmoy@gmail.com	$pbkdf2-sha256$20000$8f7/v5cyhrBWag3B2Ls3pg$wZRTyCpeyWPJYgKLUTcRteESBbza88/twZFkyCuuAL8	8201 16th St, 818	20910	MD	6177841741
\.


--
-- Name: customers_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: vagrant
--

SELECT pg_catalog.setval('customers_user_id_seq', 1, true);


--
-- Data for Name: deliveries; Type: TABLE DATA; Schema: public; Owner: vagrant
--

COPY deliveries (delivery_id, vendor, received_at) FROM stdin;
\.


--
-- Name: deliveries_delivery_id_seq; Type: SEQUENCE SET; Schema: public; Owner: vagrant
--

SELECT pg_catalog.setval('deliveries_delivery_id_seq', 1, false);


--
-- Data for Name: delivery_quantities; Type: TABLE DATA; Schema: public; Owner: vagrant
--

COPY delivery_quantities (deliv_qty_id, product_id, product_qty, delivery_id) FROM stdin;
\.


--
-- Name: delivery_quantities_deliv_qty_id_seq; Type: SEQUENCE SET; Schema: public; Owner: vagrant
--

SELECT pg_catalog.setval('delivery_quantities_deliv_qty_id_seq', 1, false);


--
-- Data for Name: dietary_restrictions; Type: TABLE DATA; Schema: public; Owner: vagrant
--

COPY dietary_restrictions (diet_id, name) FROM stdin;
\.


--
-- Name: dietary_restrictions_diet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: vagrant
--

SELECT pg_catalog.setval('dietary_restrictions_diet_id_seq', 1, false);


--
-- Data for Name: icons; Type: TABLE DATA; Schema: public; Owner: vagrant
--

COPY icons (icon_id, url, credit) FROM stdin;
\.


--
-- Name: icons_icon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: vagrant
--

SELECT pg_catalog.setval('icons_icon_id_seq', 1, false);


--
-- Data for Name: order_quantities; Type: TABLE DATA; Schema: public; Owner: vagrant
--

COPY order_quantities (order_qty_id, product_id, product_qty, order_id) FROM stdin;
\.


--
-- Name: order_quantities_order_qty_id_seq; Type: SEQUENCE SET; Schema: public; Owner: vagrant
--

SELECT pg_catalog.setval('order_quantities_order_qty_id_seq', 1, false);


--
-- Data for Name: orders; Type: TABLE DATA; Schema: public; Owner: vagrant
--

COPY orders (order_id, customer_id, placed_at, total, pickup_id, received_at) FROM stdin;
2	1	2016-11-14 23:25:00.81001	55.91	1	\N
3	1	2016-11-14 23:26:54.695579	4.48	1	\N
4	1	2016-11-15 22:28:52.368666	26.97	1	\N
\.


--
-- Name: orders_order_id_seq; Type: SEQUENCE SET; Schema: public; Owner: vagrant
--

SELECT pg_catalog.setval('orders_order_id_seq', 4, true);


--
-- Data for Name: pickups; Type: TABLE DATA; Schema: public; Owner: vagrant
--

COPY pickups (pickup_id, name, street_address, zipcode, state) FROM stdin;
1	Home Delivery	Home Delivery	Home Delivery	00
4	Parnassus Farmers' Market (UCSF)	505 Parnassus Avenue	94122	CA
5	Mission Bay Farmers' Market (UCSF in Mission Bay)	550 Gene Friend Way	94158	CA
6	Noe Valley Farmers' Market	3861 24th St.	94114	CA
7	Inner Sunset Farmers' Market	1315 8th Ave	94122	CA
8	Inner Richmond: Clement Street Farmer's Market	200 Clement St.	94118	CA
9	Heart of the City Farmers' Market	1182 Market St.	94102	CA
\.


--
-- Name: pickups_pickup_id_seq; Type: SEQUENCE SET; Schema: public; Owner: vagrant
--

SELECT pg_catalog.setval('pickups_pickup_id_seq', 9, true);


--
-- Data for Name: product_tags; Type: TABLE DATA; Schema: public; Owner: vagrant
--

COPY product_tags (prod_tag_id, product_id, tag_id) FROM stdin;
1	1	1
2	1	2
3	2	2
4	2	3
5	3	1
6	3	2
7	5	2
8	5	3
9	6	4
10	7	1
11	7	2
12	8	1
13	8	2
14	9	1
15	9	2
16	10	2
17	10	3
18	11	1
19	11	2
20	12	3
21	13	1
22	13	2
23	14	1
24	14	2
25	15	2
26	15	3
27	16	3
28	17	1
29	17	2
30	18	1
31	18	2
32	19	1
33	19	2
34	19	5
35	20	6
36	20	7
37	21	1
38	21	8
39	22	1
40	23	1
41	23	2
42	24	1
43	25	1
44	26	1
45	27	1
46	28	3
47	29	1
48	29	2
49	30	1
50	30	2
51	31	1
52	32	3
53	33	1
54	34	1
55	34	2
56	35	1
57	35	2
58	36	1
59	37	3
60	38	1
61	39	3
62	40	3
63	41	3
64	42	1
65	42	2
66	43	1
67	43	2
68	44	1
69	44	2
70	45	1
71	45	2
72	46	1
73	46	2
74	47	1
75	47	2
76	48	1
77	49	1
78	49	2
79	49	3
80	50	1
81	51	1
82	51	2
83	52	1
84	52	2
85	53	1
86	53	2
87	54	1
88	54	2
89	55	1
90	55	2
91	56	1
92	56	2
93	57	1
94	57	2
95	58	1
96	58	2
97	59	1
98	59	2
99	60	1
100	60	2
101	60	5
102	61	1
103	61	2
104	62	2
105	63	1
106	63	2
107	64	1
108	64	2
109	65	1
110	67	1
111	68	1
112	70	1
113	71	1
114	72	1
115	72	2
116	73	1
117	74	2
118	75	2
119	75	3
120	76	2
121	76	3
122	77	2
123	78	1
124	78	2
125	79	1
126	79	2
127	80	1
128	80	2
129	81	6
130	81	2
131	84	1
132	85	1
133	85	2
134	86	1
135	87	1
136	87	2
137	88	1
138	88	2
139	89	1
140	89	2
141	90	1
142	90	2
143	91	1
144	91	2
145	92	1
146	92	2
147	93	1
148	93	2
149	94	1
150	94	2
151	95	1
152	95	2
153	96	1
154	96	2
155	97	1
156	97	2
157	98	1
158	98	2
159	99	1
160	99	2
161	100	1
162	100	2
163	101	2
164	101	3
165	102	1
166	102	2
167	103	1
168	104	1
169	104	2
170	105	1
171	105	2
172	106	2
173	106	3
174	107	1
175	107	2
176	108	1
177	108	2
178	109	2
179	109	3
180	110	1
181	110	2
182	111	1
183	111	2
184	112	1
185	112	2
186	113	1
187	114	1
188	114	2
189	115	1
190	115	2
191	116	1
192	117	2
193	117	3
194	117	9
195	118	1
196	118	2
197	119	1
198	119	2
199	122	1
200	123	1
201	123	2
202	124	1
203	124	2
204	125	1
205	125	2
206	126	1
207	126	2
208	127	1
209	127	2
210	128	1
211	128	7
212	129	1
213	129	2
214	130	1
215	130	2
216	131	1
217	131	2
218	132	1
219	132	2
220	133	1
221	134	1
222	134	2
223	135	2
224	135	3
225	136	1
226	136	2
227	137	1
228	137	2
229	138	1
230	138	2
231	139	1
232	139	2
233	140	1
234	140	2
235	141	1
236	141	2
237	142	1
238	142	2
239	143	1
240	143	2
241	144	1
242	144	2
243	145	1
244	145	2
245	146	1
246	146	2
247	147	1
248	147	2
249	148	1
250	148	2
251	149	1
252	149	2
253	150	1
254	150	2
255	151	2
256	151	3
257	152	2
258	153	1
259	153	2
260	154	1
261	154	2
262	155	1
263	155	2
264	156	1
265	156	2
266	157	1
267	157	2
268	158	1
269	158	2
270	159	1
271	159	2
272	160	1
273	160	2
274	161	1
275	161	2
276	162	1
277	162	2
278	163	1
279	163	2
280	164	1
281	164	2
282	165	1
283	165	2
284	166	1
285	166	2
286	167	1
287	167	2
288	168	1
289	168	2
290	169	1
291	170	1
292	170	2
293	171	1
294	171	2
295	174	1
296	174	2
297	175	2
298	175	3
299	176	1
300	176	2
301	177	2
302	177	3
303	177	9
304	178	1
305	178	2
306	179	9
307	179	2
308	180	9
309	180	2
310	180	3
311	181	1
312	181	2
313	182	1
314	183	1
315	183	2
316	184	2
317	184	3
318	185	9
319	185	2
320	186	1
321	186	2
322	187	1
323	187	2
324	188	1
325	188	2
326	189	1
327	189	2
328	190	1
329	190	2
330	191	1
331	191	2
332	192	1
333	192	2
334	193	1
335	193	2
336	194	1
337	194	2
338	195	1
339	195	2
340	196	1
341	196	2
342	197	2
343	197	3
344	198	1
345	198	2
346	199	2
347	199	3
348	200	1
349	200	2
350	201	1
351	201	2
352	202	2
353	202	3
354	203	1
355	203	2
356	204	1
357	204	2
358	205	1
359	205	2
360	206	2
361	206	3
362	207	1
363	207	2
364	208	1
365	208	2
366	209	1
367	209	2
368	210	1
369	210	2
370	211	1
371	211	2
372	211	10
373	211	3
374	212	1
375	212	2
376	213	1
377	213	2
378	214	1
379	214	2
380	214	10
381	214	3
382	215	1
383	215	2
384	216	1
385	216	2
386	216	10
387	216	3
388	217	1
389	217	2
390	217	10
391	217	3
392	218	2
393	218	3
394	219	1
395	219	2
396	220	1
397	220	2
398	222	1
399	222	2
400	226	1
401	226	2
402	228	7
403	229	7
404	230	7
405	231	7
406	233	1
407	234	1
408	234	2
409	235	1
410	236	1
411	236	2
412	237	1
413	237	2
414	238	1
415	238	2
416	239	1
417	239	2
418	240	1
419	240	2
420	241	1
421	241	2
422	242	1
423	242	2
424	243	2
425	243	3
426	244	1
427	244	2
428	245	1
429	246	1
430	250	1
431	251	1
432	251	2
433	252	1
434	252	2
435	253	1
436	253	2
437	254	1
438	254	2
439	255	1
440	255	2
441	256	1
442	256	2
443	257	1
444	257	2
445	258	1
446	258	2
447	259	1
448	259	2
449	260	2
450	260	10
451	260	3
452	261	1
453	261	2
454	262	1
455	262	2
456	263	1
457	263	2
458	264	1
459	264	2
460	265	2
461	265	3
462	266	1
463	270	1
464	270	2
465	271	1
466	271	2
467	272	1
468	272	2
469	273	1
470	273	2
471	274	1
472	274	2
473	275	1
474	275	2
475	276	2
476	276	3
477	277	2
478	277	3
479	278	1
480	278	2
481	279	2
482	279	3
483	280	1
484	280	2
485	281	1
486	281	2
487	282	1
488	282	2
489	283	8
490	284	2
491	284	3
492	285	2
493	285	3
494	286	2
495	286	3
496	287	2
497	287	3
498	288	2
499	288	3
500	289	1
501	289	2
502	290	2
503	290	3
504	291	1
505	291	2
506	292	2
507	292	3
508	293	11
509	295	1
510	295	2
511	296	12
512	296	11
513	296	3
514	297	12
515	298	11
516	299	12
517	299	11
518	299	3
519	302	12
520	302	11
521	302	3
522	303	12
523	303	11
524	303	10
525	303	3
526	304	12
527	304	11
528	304	10
529	304	3
530	305	12
531	305	11
532	305	3
533	306	13
534	306	14
535	306	15
536	306	16
537	307	1
538	308	1
539	309	15
540	309	10
541	310	6
542	310	2
543	311	1
544	311	17
545	311	10
546	311	18
547	312	1
548	312	10
549	313	1
550	313	15
551	313	10
552	313	14
553	314	6
554	314	2
555	314	7
556	314	10
557	314	3
558	316	6
559	316	2
560	316	7
561	316	10
562	316	19
563	316	3
564	317	6
565	317	2
566	317	7
567	317	10
568	317	3
569	318	6
570	318	2
571	318	7
572	318	10
573	318	19
574	318	3
575	319	1
576	319	19
577	320	2
578	320	7
579	320	10
580	320	6
581	320	19
582	320	3
583	320	15
584	320	17
585	321	1
586	321	20
587	321	10
588	321	18
589	322	15
590	322	10
591	323	1
592	324	18
593	325	1
594	325	20
595	325	10
596	326	1
597	326	20
598	326	10
599	327	1
600	327	18
601	328	2
602	328	3
603	329	2
604	330	2
605	330	7
606	330	10
607	330	6
608	330	19
609	330	3
610	330	15
611	330	17
612	331	2
613	331	7
614	331	10
615	331	6
616	331	19
617	331	3
618	331	15
619	331	17
620	332	2
621	333	6
622	333	2
623	333	7
624	333	15
625	333	17
626	333	10
627	333	19
628	333	3
629	334	2
630	335	6
631	335	2
632	335	15
633	335	17
634	335	10
635	335	19
636	335	3
637	336	6
638	336	2
639	336	7
640	336	15
641	336	17
642	336	10
643	336	19
644	336	3
645	337	2
646	337	3
647	338	2
648	338	3
649	339	2
650	339	3
651	340	6
652	340	2
653	340	7
654	340	15
655	340	17
656	340	10
657	340	3
658	341	6
659	341	2
660	341	7
661	341	15
662	341	17
663	341	10
664	341	19
665	341	3
666	342	6
667	342	2
668	342	7
669	342	15
670	342	17
671	342	10
672	342	19
673	342	3
674	343	6
675	343	2
676	343	7
677	343	15
678	343	17
679	343	10
680	343	19
681	343	3
682	344	6
683	344	2
684	344	7
685	344	15
686	344	17
687	344	10
688	344	19
689	344	3
690	345	6
691	345	2
692	345	7
693	345	15
694	345	17
695	345	10
696	345	19
697	345	3
698	346	2
699	346	7
700	346	15
701	346	17
702	346	10
703	346	3
704	347	1
705	347	3
706	347	21
707	347	22
708	348	1
709	348	21
710	348	23
711	348	18
712	349	1
713	349	21
714	349	23
715	349	18
716	350	1
717	350	10
718	351	24
719	351	25
720	353	23
721	356	1
722	356	7
723	356	23
724	356	8
725	357	1
726	357	7
727	357	23
728	357	8
729	358	23
730	358	1
731	358	18
732	358	21
733	359	20
734	359	23
735	359	8
736	360	1
737	360	7
738	360	23
739	360	8
740	361	23
741	361	1
742	361	18
743	361	21
744	362	1
745	362	7
746	362	23
747	362	8
748	363	23
749	363	1
750	363	18
751	363	21
752	364	1
753	365	20
754	365	23
755	366	7
756	366	23
757	367	1
758	367	14
759	367	22
760	368	1
761	368	14
762	368	22
763	369	1
764	369	14
765	369	22
766	370	1
767	370	21
768	370	23
769	370	18
770	371	1
771	371	21
772	371	23
773	371	18
774	371	8
775	372	1
776	372	7
777	372	23
778	373	20
779	373	23
780	374	1
781	374	7
782	374	23
783	375	23
784	375	1
785	375	18
786	375	21
787	376	20
788	376	23
789	378	1
790	378	23
791	378	8
792	379	1
793	379	23
794	380	23
795	380	1
796	381	1
797	381	21
798	381	23
799	381	18
800	382	7
801	382	23
802	383	20
803	383	23
804	384	1
805	384	21
806	384	23
807	384	18
808	385	1
809	385	14
810	385	22
811	386	1
812	386	2
813	386	3
814	386	21
815	387	1
816	387	26
817	388	21
818	388	22
819	389	1
820	389	2
821	389	26
822	389	21
823	390	1
824	390	27
825	390	22
826	391	21
827	391	22
828	392	27
829	392	10
830	392	22
831	393	1
832	393	26
833	394	21
834	394	22
835	395	1
836	395	3
837	395	21
838	395	22
839	396	1
840	396	22
841	396	27
842	397	21
843	398	1
844	398	2
845	398	21
846	398	26
847	400	1
848	400	21
849	400	23
850	400	18
851	400	8
852	401	1
853	401	21
854	401	23
855	401	18
856	402	1
857	404	1
858	405	1
859	406	1
860	406	21
861	406	23
862	406	18
863	406	8
864	407	1
865	407	21
866	407	23
867	407	18
868	407	8
869	408	1
870	408	7
871	409	1
872	410	1
873	411	1
874	411	14
875	411	22
876	413	1
877	413	7
878	413	18
879	414	1
880	414	7
881	415	1
882	415	7
883	416	1
884	417	1
885	417	7
886	418	1
887	418	8
888	419	1
889	419	8
890	420	1
891	421	1
892	422	1
893	422	7
894	423	1
895	423	7
896	424	1
897	424	7
898	425	1
899	425	7
900	426	1
901	426	7
902	427	1
903	428	1
904	429	1
905	429	8
906	430	1
907	430	8
908	431	1
909	431	8
910	432	1
911	432	8
912	433	1
913	434	1
914	434	8
915	435	1
916	436	1
917	437	1
918	438	23
919	438	1
920	438	10
921	439	1
922	439	10
923	439	23
924	440	23
925	440	1
926	440	10
927	441	23
928	441	1
929	441	10
930	442	23
931	442	1
932	442	10
933	443	1
934	443	10
935	443	23
936	444	1
937	444	10
938	444	23
939	445	1
940	445	10
941	445	23
942	446	23
943	446	1
944	446	10
945	447	26
946	447	23
947	448	26
948	448	23
949	450	6
950	450	13
951	450	15
952	450	17
953	451	6
954	451	15
955	451	17
956	451	27
957	452	7
958	452	6
959	452	27
960	452	15
961	452	17
962	453	6
963	453	13
964	453	7
965	453	15
966	453	27
967	453	10
968	454	13
969	454	7
970	454	10
971	454	6
972	455	1
973	455	7
974	455	23
975	455	18
976	456	1
977	456	7
978	456	23
979	456	18
980	457	1
981	457	7
982	457	23
983	457	18
984	458	6
985	458	27
986	458	15
987	458	17
988	459	13
989	459	7
990	459	10
991	459	6
992	460	15
993	461	1
994	461	23
995	462	1
996	462	21
997	462	23
998	462	18
999	463	24
1000	463	18
1001	464	1
1002	464	26
1003	464	23
1004	465	23
1005	465	10
1006	466	1
1007	466	7
1008	466	19
1009	466	24
1010	466	22
1011	467	1
1012	467	7
1013	467	19
1014	467	24
1015	467	22
1016	468	1
1017	468	7
1018	468	19
1019	468	24
1020	468	22
1021	469	24
1022	469	18
1023	470	1
1024	470	23
1025	470	8
1026	471	1
1027	471	21
1028	471	23
1029	471	18
1030	472	1
1031	472	26
1032	472	23
1033	473	23
1034	473	10
1035	474	28
1036	474	7
1037	474	26
1038	474	21
1039	476	13
1040	476	6
1041	476	27
1042	477	1
1043	477	27
1044	478	13
1045	478	15
1046	478	27
1047	479	1
1048	479	13
1049	479	18
1050	479	10
1051	479	27
1052	479	16
1053	480	13
1054	480	27
1055	480	15
1056	481	1
1057	481	13
1058	481	15
1059	481	17
1060	481	10
1061	481	6
1062	482	1
1063	482	13
1064	482	10
1065	482	27
1066	482	15
1067	482	16
1068	483	1
1069	483	27
1070	483	8
1071	485	1
1072	485	13
1073	485	18
1074	485	10
1075	485	27
1076	485	16
1077	487	1
1078	487	13
1079	487	16
1080	487	10
1081	487	18
1082	488	1
1083	488	13
1084	488	10
1085	488	18
1086	489	13
1087	489	14
1088	489	27
1089	489	15
1090	490	1
1091	490	13
1092	490	18
1093	490	10
1094	490	16
1095	491	1
1096	491	27
1097	492	1
1098	493	1
1099	494	1
1100	495	6
1101	495	13
1102	495	15
1103	495	17
1104	495	27
1105	495	14
1106	495	25
1107	496	6
1108	496	13
1109	496	27
1110	497	6
1111	497	13
1112	497	27
1113	498	13
1114	498	15
1115	498	27
1116	498	14
1117	499	6
1118	499	13
1119	499	15
1120	499	17
1121	499	27
1122	499	14
1123	499	25
1124	500	6
1125	500	13
1126	500	15
1127	500	17
1128	500	27
1129	500	14
1130	500	25
1131	501	6
1132	501	13
1133	501	15
1134	501	17
1135	501	27
1136	501	14
1137	501	25
1138	503	6
1139	503	7
1140	504	6
1141	504	7
1142	504	16
1143	505	6
1144	505	7
1145	505	16
1146	506	10
1147	506	23
1148	507	1
1149	507	7
1150	509	10
1151	509	23
1152	510	10
1153	510	23
1154	513	7
1155	513	6
1156	513	16
1157	515	6
1158	516	1
1159	517	1
1160	517	7
1161	518	6
1162	518	7
1163	518	16
1164	520	1
1165	520	7
1166	522	6
1167	522	7
1168	522	16
1169	524	1
1170	524	7
1171	525	1
1172	526	7
1173	526	6
1174	526	16
1175	534	1
1176	534	7
1177	534	10
1178	534	17
1179	535	1
1180	535	7
1181	535	10
1182	535	17
1183	536	1
1184	536	7
1185	536	17
1186	536	10
1187	537	1
1188	537	7
1189	537	10
1190	537	17
1191	538	1
1192	538	7
1193	538	10
1194	538	17
1195	539	1
1196	539	7
1197	539	10
1198	539	17
1199	540	1
1200	540	7
1201	540	10
1202	540	17
1203	547	6
1204	549	6
1205	549	7
1206	549	16
1207	550	6
1208	550	13
1209	550	15
1210	550	27
1211	550	29
1212	550	19
1213	552	6
1214	552	13
1215	552	15
1216	552	27
1217	552	29
1218	552	19
1219	553	13
1220	553	6
1221	553	27
1222	553	15
1223	553	17
1224	554	1
1225	554	13
1226	554	7
1227	554	10
1228	554	15
1229	554	17
1230	555	6
1231	555	13
1232	555	15
1233	555	27
1234	555	29
1235	555	19
1236	556	6
1237	556	13
1238	556	15
1239	556	27
1240	556	29
1241	556	19
1242	557	6
1243	557	13
1244	557	15
1245	557	27
1246	557	29
1247	557	19
1248	558	13
1249	558	27
1250	558	15
1251	558	17
1252	559	13
1253	559	27
1254	559	15
1255	559	17
1256	560	13
1257	560	27
1258	560	15
1259	560	17
1260	561	13
1261	561	6
1262	561	27
1263	561	15
1264	561	17
1265	562	13
1266	562	15
1267	562	17
1268	563	13
1269	563	27
1270	563	15
1271	563	17
1272	564	13
1273	564	6
1274	564	27
1275	564	15
1276	564	17
1277	565	1
1278	566	1
1279	566	7
1280	566	24
1281	566	23
1282	569	1
1283	569	7
1284	569	18
1285	570	8
1286	571	8
1287	573	7
1288	574	7
1289	575	7
1290	576	18
1291	576	7
1292	576	30
1293	578	7
1294	580	26
1295	580	23
1296	581	26
1297	581	23
1298	582	23
1299	583	1
1300	583	7
1301	584	23
1302	584	17
1303	585	1
1304	585	7
1305	588	17
1306	590	17
1307	591	17
1308	592	23
1309	592	17
1310	593	23
1311	593	17
1312	594	1
1313	594	7
1314	595	17
1315	596	1
1316	596	7
1317	597	1
1318	597	7
1319	598	23
1320	598	8
1321	599	17
1322	600	23
1323	602	25
1324	603	23
1325	604	23
1326	605	17
1327	606	17
1328	607	23
1329	607	2
1330	608	23
1331	608	2
1332	609	23
1333	609	1
1334	609	7
1335	609	26
1336	610	1
1337	610	22
1338	610	14
1339	611	1
1340	611	24
1341	611	25
1342	612	7
1343	614	23
1344	614	2
1345	615	23
1346	615	8
1347	616	1
1348	616	7
1349	617	1
1350	617	24
1351	617	25
1352	618	17
1353	620	7
1354	620	30
1355	621	7
1356	621	30
1357	623	23
1358	623	1
1359	623	26
1360	624	23
1361	624	1
1362	624	26
1363	625	7
1364	626	1
1365	626	7
1366	626	30
1367	626	8
1368	628	7
1369	630	20
1370	630	23
1371	630	25
1372	631	1
1373	631	10
1374	633	2
1375	633	23
1376	633	30
1377	635	7
1378	635	23
1379	638	7
1380	638	23
1381	640	7
1382	640	30
1383	642	23
1384	642	1
1385	642	7
1386	643	1
1387	643	21
1388	643	23
1389	643	18
1390	644	23
1391	644	1
1392	644	7
1393	645	1
1394	645	7
1395	645	30
1396	646	26
1397	646	23
1398	647	7
1399	648	23
1400	648	1
1401	648	7
1402	649	24
1403	649	26
1404	649	23
1405	650	23
1406	650	24
1407	650	26
1408	652	30
1409	653	21
1410	653	26
1411	653	23
1412	653	25
1413	654	20
1414	654	30
1415	655	20
1416	655	30
1417	656	20
1418	656	30
1419	657	1
1420	657	18
1421	657	7
1422	657	10
1423	658	24
1424	658	26
1425	658	23
1426	659	24
1427	659	26
1428	659	23
1429	660	23
1430	661	23
1431	661	24
1432	661	26
1433	662	24
1434	662	26
1435	662	23
1436	663	25
1437	664	7
1438	664	30
1439	664	18
1440	666	25
1441	668	25
1442	669	23
1443	669	25
1444	670	23
1445	672	25
1446	673	21
1447	673	26
1448	673	23
1449	673	25
1450	674	23
1451	674	26
1452	674	21
1453	677	23
1454	677	25
1455	678	20
1456	678	23
1457	679	7
1458	680	24
1459	680	25
1460	681	24
1461	681	25
1462	682	24
1463	682	25
1464	683	13
1465	683	10
1466	683	27
1467	683	15
1468	684	13
1469	684	20
1470	684	15
1471	684	27
1472	684	10
1473	685	13
1474	685	15
1475	685	27
1476	685	10
1477	686	13
1478	686	10
1479	686	27
1480	686	15
1481	687	10
1482	687	27
1483	687	15
1484	688	15
1485	688	27
1486	688	10
1487	689	15
1488	689	27
1489	689	10
1490	691	23
1491	691	2
1492	692	2
1493	692	23
1494	693	7
1495	693	30
1496	694	2
1497	694	23
1498	695	24
1499	695	26
1500	695	23
1501	696	23
1502	696	2
1503	697	2
1504	697	23
1505	697	30
1506	698	2
1507	698	23
1508	699	23
1509	699	24
1510	699	26
1511	700	24
1512	700	26
1513	700	23
1514	701	23
1515	701	2
1516	701	30
1517	702	23
1518	702	24
1519	702	26
1520	703	10
1521	703	23
1522	704	23
1523	704	2
1524	706	1
1525	706	13
1526	706	15
1527	706	17
1528	706	10
1529	707	15
1530	707	12
1531	707	16
1532	707	10
1533	707	14
1534	707	25
1535	708	1
1536	708	13
1537	708	15
1538	708	17
1539	708	10
1540	708	6
1541	709	1
1542	709	13
1543	709	10
1544	709	6
1545	709	15
1546	709	17
1547	710	1
1548	710	13
1549	710	10
1550	710	6
1551	710	15
1552	710	17
1553	711	1
1554	712	20
1555	712	15
1556	712	10
1557	712	18
1558	713	15
1559	713	10
1560	713	18
1561	714	20
1562	714	15
1563	714	10
1564	714	18
1565	715	1
1566	715	6
1567	715	13
1568	715	15
1569	715	17
1570	715	10
1571	716	20
1572	716	15
1573	717	13
1574	717	15
1575	717	10
1576	718	13
1577	718	15
1578	718	10
1579	719	13
1580	719	15
1581	719	10
1582	720	1
1583	720	13
1584	720	10
1585	720	6
1586	720	15
1587	720	17
1588	721	1
1589	721	6
1590	721	13
1591	721	15
1592	721	17
1593	721	10
1594	722	1
1595	722	6
1596	722	13
1597	722	15
1598	722	17
1599	722	10
1600	723	13
1601	723	15
1602	723	10
1603	724	13
1604	724	15
1605	724	10
1606	725	1
1607	725	6
1608	725	13
1609	725	15
1610	725	17
1611	725	10
1612	726	7
1613	726	28
1614	726	26
1615	727	21
1616	728	2
1617	728	12
1618	728	26
1619	729	1
1620	729	28
1621	729	21
1622	730	28
1623	730	24
1624	730	31
1625	730	26
1626	731	28
1627	731	21
1628	732	1
1629	732	28
1630	732	21
1631	733	2
1632	733	12
1633	733	26
1634	734	2
1635	734	12
1636	734	26
1637	735	1
1638	735	12
1639	735	21
1640	736	12
1641	736	1
1642	736	21
1643	737	1
1644	737	28
1645	737	21
1646	738	1
1647	738	12
1648	738	21
1649	739	1
1650	739	21
1651	739	28
1652	740	1
1653	740	28
1654	740	21
1655	741	28
1656	741	1
1657	741	21
1658	742	1
1659	742	28
1660	742	21
1661	743	1
1662	743	21
1663	743	28
1664	744	1
1665	744	21
1666	744	28
1667	745	1
1668	745	12
1669	745	21
1670	746	12
1671	746	10
1672	746	26
1673	747	1
1674	747	21
1675	747	28
1676	748	1
1677	748	28
1678	748	21
1679	749	1
1680	749	21
1681	749	28
1682	750	12
1683	750	1
1684	750	21
1685	751	1
1686	751	2
1687	751	12
1688	751	21
1689	752	2
1690	752	26
1691	752	21
1692	753	12
1693	753	1
1694	753	2
1695	753	21
1696	754	12
1697	754	1
1698	754	2
1699	754	21
1700	755	2
1701	755	26
1702	755	21
1703	756	2
1704	756	12
1705	756	21
1706	756	26
1707	757	2
1708	757	12
1709	757	21
1710	757	26
1711	758	12
1712	758	10
1713	759	26
1714	759	32
1715	760	20
1716	761	2
1717	761	21
1718	762	2
1719	762	21
1720	763	20
1721	764	20
1722	765	2
1723	765	21
1724	765	32
1725	766	20
1726	767	20
1727	768	12
1728	768	21
1729	769	12
1730	769	21
1731	770	12
1732	770	21
1733	770	26
1734	771	2
1735	771	12
1736	771	19
1737	771	21
1738	771	26
1739	771	32
1740	771	33
1741	772	12
1742	773	2
1743	773	12
1744	774	12
1745	774	21
1746	774	26
1747	775	12
1748	775	24
1749	775	2
1750	775	26
1751	775	21
1752	776	2
1753	776	12
1754	776	21
1755	776	26
1756	777	21
1757	778	21
1758	779	12
1759	779	24
1760	779	2
1761	779	19
1762	779	26
1763	780	28
1764	780	24
1765	780	31
1766	780	26
1767	781	12
1768	781	24
1769	781	21
1770	782	12
1771	782	24
1772	782	31
1773	782	26
1774	783	2
1775	783	12
1776	783	19
1777	783	24
1778	783	26
1779	784	2
1780	784	12
1781	784	19
1782	784	24
1783	784	21
1784	784	26
1785	784	32
1786	785	12
1787	785	19
1788	785	24
1789	785	21
1790	785	26
1791	786	2
1792	786	12
1793	786	19
1794	786	24
1795	786	21
1796	786	26
1797	787	12
1798	787	19
1799	787	24
1800	787	21
1801	788	28
1802	788	19
1803	788	24
1804	788	21
1805	788	26
1806	789	12
1807	789	19
1808	789	24
1809	789	21
1810	790	12
1811	790	19
1812	790	24
1813	790	21
1814	790	26
1815	791	28
1816	791	24
1817	791	31
1818	791	26
1819	792	28
1820	792	24
1821	792	31
1822	792	26
1823	793	28
1824	793	19
1825	793	24
1826	793	21
1827	793	26
1828	794	28
1829	794	31
1830	794	24
1831	794	26
1832	795	12
1833	795	19
1834	795	24
1835	795	21
1836	796	28
1837	796	24
1838	796	31
1839	796	26
1840	797	28
1841	797	24
1842	797	31
1843	797	26
1844	798	28
1845	798	24
1846	798	31
1847	798	26
1848	799	12
1849	799	24
1850	799	31
1851	799	26
1852	800	28
1853	800	31
1854	800	24
1855	800	26
1856	801	12
1857	801	31
1858	801	24
1859	801	26
1860	802	28
1861	802	19
1862	802	24
1863	802	21
1864	802	26
1865	803	2
1866	803	12
1867	803	24
1868	803	31
1869	804	12
1870	804	24
1871	804	31
1872	804	26
1873	805	28
1874	805	19
1875	805	24
1876	805	21
1877	805	26
1878	806	28
1879	806	31
1880	806	24
1881	806	26
1882	807	28
1883	807	31
1884	807	24
1885	807	26
1886	808	28
1887	808	24
1888	808	31
1889	808	26
1890	809	12
1891	809	24
1892	809	21
1893	809	31
1894	810	28
1895	810	31
1896	810	24
1897	810	26
1898	811	28
1899	811	31
1900	811	24
1901	811	26
1902	812	28
1903	812	24
1904	812	31
1905	812	26
1906	813	12
1907	813	19
1908	813	24
1909	813	21
1910	813	26
1911	814	28
1912	814	31
1913	814	24
1914	814	26
1915	815	12
1916	815	19
1917	815	24
1918	815	21
1919	815	26
1920	816	12
1921	816	19
1922	816	24
1923	816	21
1924	816	26
1925	817	12
1926	817	24
1927	817	31
1928	817	26
1929	818	28
1930	818	31
1931	818	24
1932	818	26
1933	819	2
1934	819	12
1935	819	19
1936	819	24
1937	819	26
1938	820	28
1939	820	24
1940	820	31
1941	820	26
1942	821	28
1943	821	31
1944	821	24
1945	821	26
1946	823	12
1947	823	19
1948	823	24
1949	823	21
1950	823	26
1951	824	28
1952	824	24
1953	824	31
1954	824	26
1955	825	28
1956	825	24
1957	825	31
1958	825	26
1959	826	28
1960	826	19
1961	826	24
1962	826	21
1963	826	26
1964	827	12
1965	827	19
1966	827	24
1967	827	21
1968	827	26
1969	828	12
1970	828	19
1971	828	24
1972	828	21
1973	828	26
1974	829	28
1975	829	24
1976	829	31
1977	829	26
1978	830	12
1979	830	19
1980	830	24
1981	830	21
1982	830	31
1983	831	28
1984	831	31
1985	831	24
1986	831	26
1987	832	12
1988	832	31
1989	832	24
1990	832	26
1991	833	12
1992	833	24
1993	833	2
1994	833	19
1995	833	21
1996	834	12
1997	834	19
1998	834	24
1999	834	21
2000	834	26
2001	835	2
2002	835	28
2003	835	21
2004	835	26
2005	836	12
2006	836	2
2007	837	12
2008	837	21
2009	838	12
2010	838	26
2011	839	28
2012	839	2
2013	839	26
2014	839	21
2015	840	12
2016	840	21
2017	841	28
2018	841	10
2019	841	21
2020	842	12
2021	842	2
2022	842	26
2023	843	2
2024	843	12
2025	843	21
2026	843	26
2027	844	12
2028	844	21
2029	844	33
2030	845	21
2031	845	8
2032	846	21
2033	846	33
2034	846	12
2035	846	26
2036	847	26
2037	847	22
2038	848	22
2039	849	22
2040	850	22
2041	851	2
2042	851	28
2043	851	21
2044	851	26
2045	852	12
2046	852	2
2047	853	28
2048	853	2
2049	853	26
2050	853	21
2051	854	28
2052	854	2
2053	854	26
2054	854	21
2055	855	28
2056	855	2
2057	855	26
2058	855	21
2059	856	2
2060	856	28
2061	856	21
2062	856	26
2063	857	28
2064	857	2
2065	857	26
2066	857	21
2067	858	28
2068	858	2
2069	858	26
2070	858	21
2071	859	12
2072	859	26
2073	859	21
2074	860	12
2075	860	10
2076	860	26
2077	860	21
2078	861	28
2079	861	2
2080	861	26
2081	861	21
2082	862	12
2083	862	21
2084	862	26
2085	863	2
2086	863	12
2087	864	12
2088	864	2
2089	864	26
2090	865	12
2091	865	21
2092	866	28
2093	866	2
2094	866	26
2095	866	21
2096	867	28
2097	867	2
2098	867	26
2099	867	21
2100	868	12
2101	868	21
2102	868	26
2103	869	12
2104	869	26
2105	869	21
2106	870	2
2107	870	12
2108	870	21
2109	870	26
2110	871	2
2111	871	12
2112	871	21
2113	871	26
2114	872	12
2115	872	21
2116	872	26
2117	873	12
2118	873	21
2119	873	26
2120	874	12
2121	874	2
2122	874	26
2123	875	28
2124	875	2
2125	875	26
2126	875	21
2127	876	12
2128	876	24
2129	876	26
2130	877	2
2131	877	28
2132	877	19
2133	877	21
2134	877	26
2135	878	28
2136	878	2
2137	878	19
2138	878	26
2139	878	21
2140	879	28
2141	879	2
2142	879	19
2143	879	26
2144	879	21
2145	880	2
2146	880	12
2147	880	19
2148	880	21
2149	880	26
2150	881	2
2151	881	12
2152	881	19
2153	881	21
2154	881	26
2155	882	2
2156	882	28
2157	882	19
2158	882	21
2159	882	26
2160	883	2
2161	883	28
2162	883	19
2163	883	21
2164	883	26
2165	884	2
2166	884	28
2167	884	19
2168	884	21
2169	884	26
2170	885	2
2171	885	28
2172	885	19
2173	885	21
2174	885	26
2175	886	2
2176	886	28
2177	886	19
2178	886	21
2179	886	26
2180	887	2
2181	887	28
2182	887	19
2183	887	21
2184	887	26
2185	888	2
2186	888	28
2187	888	19
2188	888	21
2189	888	26
2190	889	2
2191	889	12
2192	889	19
2193	889	21
2194	889	26
2195	890	2
2196	890	28
2197	890	19
2198	890	21
2199	890	26
2200	891	2
2201	891	12
2202	891	19
2203	891	26
2204	892	2
2205	892	12
2206	892	19
2207	892	26
2208	893	2
2209	893	12
2210	893	19
2211	893	26
2212	894	2
2213	894	12
2214	894	19
2215	894	26
2216	895	2
2217	895	12
2218	895	19
2219	895	26
2220	896	2
2221	896	12
2222	896	19
2223	896	26
2224	897	2
2225	897	12
2226	897	19
2227	897	26
2228	898	2
2229	898	12
2230	898	19
2231	898	26
2232	899	2
2233	899	12
2234	899	19
2235	899	26
2236	900	2
2237	900	12
2238	900	19
2239	900	26
2240	901	2
2241	901	12
2242	901	19
2243	901	26
2244	902	2
2245	902	12
2246	902	19
2247	902	26
2248	903	2
2249	903	12
2250	903	19
2251	903	26
2252	904	2
2253	904	12
2254	904	19
2255	904	26
2256	905	2
2257	905	12
2258	905	19
2259	905	26
2260	906	2
2261	906	12
2262	906	19
2263	906	26
2264	907	2
2265	907	12
2266	907	19
2267	907	26
2268	908	2
2269	908	12
2270	908	19
2271	908	26
2272	909	2
2273	909	12
2274	909	19
2275	909	26
2276	910	6
2277	911	12
2278	911	21
2279	911	26
2280	912	12
2281	913	12
2282	914	1
2283	914	13
2284	914	20
2285	914	27
2286	914	29
2287	914	10
2288	915	28
2289	915	10
2290	915	21
2291	916	12
2292	917	12
2293	918	12
2294	919	12
2295	920	20
2296	920	2
2297	920	12
2298	920	21
2299	921	12
2300	922	23
2301	923	12
2302	923	2
2303	923	26
2304	923	21
2305	925	12
2306	925	10
2307	925	21
2308	926	12
2309	926	2
2310	926	26
2311	926	21
2312	927	2
2313	927	12
2314	927	26
2315	928	12
2316	928	21
2317	929	12
2318	929	21
2319	930	12
2320	930	2
2321	930	26
2322	930	21
2323	931	12
2324	931	2
2325	931	26
2326	931	21
2327	932	12
2328	932	24
2329	932	2
2330	932	26
2331	932	21
2332	933	23
2333	934	12
2334	934	2
2335	934	26
2336	934	21
2337	935	23
2338	936	23
2339	937	12
2340	937	21
2341	938	12
2342	938	2
2343	938	26
2344	938	21
2345	939	23
2346	940	2
2347	940	12
2348	940	24
2349	940	26
2350	941	2
2351	941	12
2352	941	24
2353	941	21
2354	941	26
2355	942	12
2356	942	24
2357	943	2
2358	943	12
2359	943	24
2360	943	31
2361	943	26
2362	944	12
2363	944	24
2364	944	21
2365	944	26
2366	945	2
2367	945	12
2368	945	24
2369	945	26
2370	946	12
2371	946	24
2372	946	21
2373	946	26
2374	947	2
2375	947	12
2376	947	24
2377	947	31
2378	947	26
2379	948	2
2380	948	12
2381	948	24
2382	948	21
2383	948	26
2384	949	28
2385	949	24
2386	949	2
2387	949	26
2388	949	21
2389	950	2
2390	950	12
2391	950	24
2392	950	31
2393	950	26
2394	951	13
2395	951	20
2396	951	27
2397	951	29
2398	951	10
2399	952	13
2400	952	20
2401	952	27
2402	952	29
2403	952	10
2404	956	2
2405	956	12
2406	956	24
2407	956	21
2408	956	26
2409	957	2
2410	957	12
2411	957	24
2412	957	21
2413	957	26
2414	958	1
2415	958	28
2416	958	10
2417	958	21
2418	959	1
2419	959	13
2420	959	20
2421	959	27
2422	959	29
2423	959	10
2424	959	21
2425	959	23
2426	960	1
2427	960	28
2428	960	10
2429	960	21
2430	961	26
2431	961	32
2432	962	1
2433	962	28
2434	962	10
2435	962	21
2436	963	28
2437	963	10
2438	963	21
2439	964	28
2440	964	10
2441	964	21
2442	965	1
2443	965	28
2444	965	10
2445	965	21
2446	966	1
2447	966	28
2448	966	10
2449	966	21
2450	966	8
2451	967	33
2452	967	16
2453	968	16
2454	968	33
2455	969	24
2456	969	21
2457	970	33
2458	970	16
2459	971	33
2460	971	16
2461	972	33
2462	972	16
2463	973	24
2464	973	21
2465	974	28
2466	974	24
2467	974	26
2468	975	24
2469	975	21
2470	976	24
2471	976	21
2472	977	23
2473	978	23
2474	979	23
2475	980	2
2476	980	12
2477	980	24
2478	980	26
2479	981	2
2480	981	12
2481	981	24
2482	981	26
2483	982	6
2484	982	13
2485	982	2
2486	982	7
2487	982	28
2488	982	16
2489	982	27
2490	982	10
2491	982	19
2492	982	26
2493	983	2
2494	983	12
2495	983	19
2496	983	24
2497	983	21
2498	983	26
2499	984	23
2500	986	23
2501	987	23
2502	988	23
2503	989	7
2504	990	23
2505	990	8
2506	991	23
2507	991	8
2508	992	23
2509	993	23
2510	994	23
2511	995	23
2512	996	23
2513	997	23
2514	998	26
2515	998	32
2516	1000	22
2517	1002	6
2518	1002	15
2519	1002	17
2520	1002	10
2521	1004	6
2522	1004	7
2523	1005	6
2524	1005	7
2525	1006	13
2526	1006	15
2527	1006	17
2528	1006	16
2529	1007	6
2530	1007	15
2531	1007	17
2532	1007	10
2533	1009	12
2534	1010	13
2535	1010	15
2536	1010	17
2537	1010	16
2538	1011	6
2539	1011	10
2540	1012	15
2541	1012	17
2542	1012	12
2543	1013	13
2544	1013	15
2545	1013	16
2546	1014	12
2547	1014	31
2548	1014	24
2549	1014	26
2550	1015	2
2551	1015	12
2552	1015	19
2553	1015	24
2554	1015	21
2555	1016	12
2556	1016	2
2557	1016	26
2558	1016	21
2559	1018	28
2560	1018	2
2561	1018	19
2562	1018	26
2563	1018	21
2564	1019	28
2565	1019	2
2566	1019	19
2567	1019	26
2568	1019	21
2569	1020	2
2570	1020	12
2571	1020	19
2572	1020	24
2573	1020	21
2574	1021	2
2575	1021	12
2576	1021	19
2577	1021	26
2578	1022	2
2579	1022	12
2580	1022	19
2581	1022	26
2582	1023	2
2583	1023	12
2584	1023	19
2585	1023	26
2586	1024	12
2587	1024	2
2588	1024	26
2589	1024	21
2590	1025	12
2591	1025	2
2592	1025	26
2593	1025	21
2594	1026	12
2595	1026	2
2596	1026	26
2597	1026	21
2598	1027	12
2599	1027	24
2600	1027	31
2601	1027	26
2602	1028	12
2603	1028	24
2604	1028	31
2605	1028	26
2606	1029	12
2607	1029	2
2608	1029	26
2609	1029	21
2610	1030	2
2611	1030	12
2612	1030	21
2613	1031	2
2614	1031	12
2615	1031	19
2616	1031	24
2617	1031	21
2618	1032	2
2619	1032	28
2620	1032	21
2621	1032	26
2622	1033	12
2623	1033	2
2624	1033	26
2625	1033	21
2626	1034	12
2627	1034	2
2628	1034	26
2629	1034	21
2630	1035	12
2631	1035	2
2632	1035	26
2633	1035	21
2634	1036	12
2635	1036	24
2636	1036	31
2637	1036	26
2638	1037	12
2639	1037	24
2640	1037	31
2641	1037	26
2642	1038	2
2643	1038	12
2644	1038	19
2645	1038	24
2646	1038	21
2647	1040	2
2648	1040	12
2649	1040	4
2650	1042	12
2651	1042	4
2652	1043	12
2653	1043	4
2654	1044	28
2655	1044	4
2656	1046	12
2657	1046	4
2658	1047	12
2659	1047	4
2660	1048	12
2661	1048	4
2662	1049	12
2663	1049	4
2664	1050	28
2665	1050	19
2666	1050	4
2667	1051	28
2668	1051	4
2669	1052	19
2670	1053	12
2671	1053	34
2672	1053	4
2673	1054	28
2674	1054	19
2675	1054	4
2676	1056	12
2677	1056	4
2678	1057	12
2679	1057	4
2680	1058	28
2681	1058	19
2682	1058	4
2683	1059	28
2684	1059	4
2685	1060	12
2686	1060	4
2687	1061	12
2688	1061	4
2689	1062	12
2690	1062	4
2691	1063	28
2692	1063	4
2693	1069	20
2694	1069	10
2695	1069	18
2696	1071	10
2697	1071	34
2698	1071	4
2699	1071	18
2700	1072	10
2701	1072	34
2702	1072	4
2703	1072	18
2704	1073	34
2705	1073	4
2706	1074	20
2707	1074	10
2708	1074	18
2709	1075	34
2710	1075	4
2711	1076	34
2712	1076	4
2713	1077	34
2714	1077	4
2715	1078	34
2716	1078	4
2717	1079	20
2718	1079	10
2719	1080	20
2720	1080	10
\.


--
-- Name: product_tags_prod_tag_id_seq; Type: SEQUENCE SET; Schema: public; Owner: vagrant
--

SELECT pg_catalog.setval('product_tags_prod_tag_id_seq', 2720, true);


--
-- Data for Name: products; Type: TABLE DATA; Schema: public; Owner: vagrant
--

COPY products (product_id, name, description, weight, unit, price, price_per, per_unit, aisle, category, img, icon_id, color, search_term, search_strength) FROM stdin;
1	Organic Red Flame Grapes	Grape season is here! Enjoy the crisp texture and excellent, sweet-tart flavor of our Organic Red Flame variety. A perfect between-meal snack, grapes are also a refreshing addition to both fruit and vegetable salads. Keep a stash on hand in your freezer for a deliciously sweet treat without the extra sugar and calories! Grapes are an outstanding source of health promoting poly-phenolic antioxidants, vitamins and minerals.	2	lb	6.99	3.5	lb	Produce	New & Peak Season	http://goodeggs1.imgix.net/product_photos/W8yH5WQdS6GEKHpClDQW_lRZ_3Vy0jB72bLviUNRIIhmMxMHtE-MyA6YyjfcxwCQ.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
2	Red Little Gem Lettuces	Martin's Red Little Gems are always crunchy and always sweet. Use as the base of your next salad, coarsely chopped or torn.	1	lb	5.99	5.99	lb	Produce	New & Peak Season	http://goodeggs1.imgix.net/product_photos/3WS3Dw1DRDe2k1mytnFg_lettuce.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
3	Organic Lunch-Box Peppers	Our Organic Lunch-Box Peppers are the perfect sweet pepper for any purpose.Use them as their namesake in your lunch as a fresh, crunchy snack, or sauté them. Blend them into a tomato - pepper soup or reduce that down to an unforgettable pasta sauce.If you really want to get creative, bake and stuff them with your choice selection of rice, egg, meat and seasoning for a fantastic international dish you'll remember.	1	lb	5.99	5.99	lb	Produce	New & Peak Season	http://goodeggs2.imgix.net/product_photos/iQvSgdWRIWQH8MgupyjS_20160803-Eatwell_LunchboxPeppers_MG_7090.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
4	Fresh Wild Chanterelle Mushrooms	Wild Golden Chanterelles from the Pacific North West are considered some of the finest mushrooms in the world.  With hints of apricots and pepper, Chanterelles are a wonderful highlight to any dish.  We recommend sautéing them with eggs and keeping it simple!	6	oz	8.99	23.97	lb	Produce	New & Peak Season	http://goodeggs1.imgix.net/product_photos/FXmXdvxlRymsg4fPcg8M_FK1A2151.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
5	Baby Spigariello Kale	These baby leaves of the Spigariello plant--an heirloom Italian Broccoli variety--have the Brassica sweetness of Broccoli with the tenderness of a Baby Kale.  It's great in hearty white bean soups or quickly sautéed with some olive oil, garlic and shallots, then hit with a bit of lemon juice at the end to bring out the sweetness. For a hearty salad, massage the Spigariello Greens with some buttery olive oil and let it soak in, covered in the fridge, for an hour or two.  Top with a pungent goat cheese, some slivered or toasted almonds, raw or pickled shallots, and a hit of lemon juice.	0.5	lb	3.99	7.98	lb	Produce	New & Peak Season	http://goodeggs2.imgix.net/product_photos/Wy7NQ9B9R1yEZoKswAJH_MartinB_Spigariello_Greens_Half_Pound.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
6	Foraged Chanterelle Mushrooms	Freshly foraged from forests of the the Pacific Northwest, these delicious wild mushrooms are meaty and sweet. Simply sautéed with a bit of butter and a pinch of fresh rosemary, Fresh Chanterelles are some of the most delicious wild-harvested mushrooms around. The season is dependent upon the rains in Washington and Oregon, so don't miss out on this short season!Connie from Wineforest has been working for decades with some of the most professional foragers in the country, all of whom harvest sustainably in order to ensure abundant harvests for generations to come.	1	lb	19.99	19.99	lb	Produce	New & Peak Season	http://goodeggs2.imgix.net/product_photos/008We1UTMGZlIi4blRxh_20161006-Wineforest_Chantrelles_1pd_MG_3154save4.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
7	Organic Belgian Endive	"EN-dive," "on-DEEV," no matter how you pronounce it, this crunchy, sweet veggie is perfect for boats, or sliced into salads.Belgian Endive is part of the chicory family, along with Radicchio, Frisée, Escarole, and Dandelion Greens, but because their secondary growth period happens indoors, without any light, they have only a very mild amount of the characteristic bitterness of that family.	0.5	lb	3.99	7.98	lb	Produce	New & Peak Season	http://goodeggs2.imgix.net/product_photos/oDyfJ6LLQc2eQQlY3zHi_endive.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
8	Organic Karinata Kale	Karinata Kale from Full Belly Farm is a very special and unique green. It is a cross between Mustard Greens and Red Russian Kale and has a mildly spicy flavor with the texture and characteristics of a kale. Its leaves have a beautiful deep purple and green color. Get this special treat while it lasts. Only 3 farms that we know of anywhere grow this beautiful kale variety: Full Belly Farm, Good Humus Produce and the UC Davis student farm, so come get your kale bragging rights right here!	1	bunch	1.99	3.98	lb	Produce	New & Peak Season	http://goodeggs1.imgix.net/product_photos/2zyXMi5QSlmm6ZY231dt_kale_01.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
9	Organic Wonderful Pomegranate	Organic Wonderful Pomegranates are one of the great treats of Fall! These hefty powerhouses of health promoting antioxidants are bursting with uniquely sweet-tart flavor. Their deliciously juicy seeds are commonly enjoyed fresh out of hand. You may also toss them in salads for extra crunch, blend them into tangy sauces or use them to add flavor and texture to decadent desserts.	1	count	2.49	3.11	lb	Produce	New & Peak Season	http://goodeggs2.imgix.net/product_photos/5znG9YH3SGKoupr1Hhpd_pomegranate_04.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
10	Ruby Crescent Fingerling Potatoes	These Ruby Crescent Fingerling Potatoes are the perfect small size for roasting whole or halved with maximum surface area. Martin's potatoes should be used within a few days of purchase. They should be kept in a cool, dark spot to prevent moisture loss and sprouting.	1	lb	3.99	3.99	lb	Produce	New & Peak Season	http://goodeggs2.imgix.net/product_photos/siO8nEdgS46Ufx04v0Rw_potatoes_fingerling_banana.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
11	Organic Padron Peppers	These Padron Peppers make the perfect appetizer. Bring a cast-iron to high heat, throw in your peppers, don't touch them until they've blistered on one side, give the pan a shake to blister another side, then remove from heat and sprinkle on some sea salt.	0.5	lb	4.99	9.98	lb	Produce	New & Peak Season	http://goodeggs2.imgix.net/product_photos/4nFPveR7Q1uNKfCtBLpP_20160726-FullBelly_Padron_1-2pd_MG_5819%20%285%29.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
12	Yellow Barhi Dates	Barhi dates are nature's caramel. Sensual, velvety, and buttercream-sweet, these dates will please more than any candy bar, ice cream, or pie.When they're picked fresh off the palm tree, dates have a firmer, almost foam-like texture. While they can be used to pickle or chopped very small and used as a subtle sweetener to hearty grain salads, before they dry, they're very tannic. They're most commonly allowed to dry out to the point where the dates have a very apparent translucent quality to them, at which point their tannins have given way to an incredibly rich sweetness that can only be found in this short period of the fresh Date season.	8	oz	5.99	0.75	oz	Produce	New & Peak Season	http://goodeggs2.imgix.net/product_photos/yUF4Fer3Qee86AptPXsW_20160912-YellowBarhiDates_MG_0758.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
13	Organic Sweet Wickson Crab Apples	The Wickson Crab Apple is small, like other crab apples, but different in every other way. They're sweet, with a tangy acidity. They're amazing for cider and perfect for a bite-sized snack.	3	lb	11.99	4.0	lb	Produce	New & Peak Season	http://goodeggs1.imgix.net/product_photos/cbiEb4A7Q5Cy4aGEO5zg_20161102-Filigreen_WicksonApples_3pd_MG_save3.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
14	Organic Dried Flower Wreath	Seasonally spectacular, this wreath features an assortment of dried flowers, grasses, and even chili peppers at the discretion of Full Belly Farm's amazing 8-woman flower crew. Each gorgeous, long-lasting wreath is individual in style, and may vary in color and content from those we've pictured here. We promise they'll all be equally beautiful and since it's already dried, it will last beautifully in your home throughout the holiday season!When most markets turn towards Southern California or South America for their winter flowers, we love continuing to support Full Belly Farm's floral program through the winter months. Having a steady off-season revenue stream allows Full Belly to provide as many year-round employment opportunities as possible, a relative rarity in the agriculture world.	1	count	44.99	\N	\N	Produce	New & Peak Season	http://goodeggs2.imgix.net/product_photos/Ho2eeGaSRat18vsPHIbT_20161103-FullBelly_HolidayWreaths_MG_6017.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
15	Aquaponic Living Genovese Basil	A living Genovese basil plant fresh out of our system, harvested just for you.  Young, tender leaves, fresh and full of flavor will add a unique and dynamic experience to any dish prepared with this most popular of basils.	1	bunch	3.99	\N	\N	Produce	New & Peak Season	http://goodeggs1.imgix.net/product_photos/GTIqvdKCRiwly2coyExG_YN1G9sNAL19uNWylh_uHncLBagK-uzXsouZ68OaInJ0.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
16	Jumbo Jarrahdale Squash	Autumn's huge winter squash harvest at RobinSong produced some amazing looking and amazing tasting squashes, and we'd love to share the abundance with you. Jarrahdales have a deliciously nutty flavor, with very firm and non-stringy flesh. It'll store for months, so feel free to use it as a dining room table centerpiece until you're ready to use it!Please note: this is a fairly large squash. It weighs 7.5-12.5 lb and is approx. 12-15" in diameter.  It can also vary in color: it starts out blue-ish or green-ish grey and then begins to turn a bit more of a tan or pink in storage. It'll taste equally delicious no matter how it looks on the outside!	1	count	17.99	2.4	lb	Produce	New & Peak Season	http://goodeggs2.imgix.net/product_photos/nNKvqtCRQ2E1bLAvIiof_20161102-ThomasFarm_JarrahdaleSquash_MG_5956.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
17	Organic Seasonal Bouquet	We can guarantee that each and every one of Thomas Farm's unique seasonal bouquets will be beautiful, but please note that due to their seasonal nature, the bouquet might not look exactly the same as the one pictured.	1	bunch	11.99	\N	\N	Produce	New & Peak Season	http://goodeggs2.imgix.net/product_photos/e8wj2Ul7T2W2AShXgzJM_salebouq.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
18	Organic Purple Carrots	Sweet, crunchy, and pretty easy on the eyes, these beautiful Organic Purple Carrots will give some great eye appeal to any green salad.	1	lb	2.99	2.99	lb	Produce	New & Peak Season	http://goodeggs2.imgix.net/product_photos/T05T4iAoSBWFHbFrrTrN_20161006-PurpleCarrots_MG_3171.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
19	Stan Devoto's Organic Apples of the Week	Stan Devoto and his crew up in Sebastopol are in full-swing apple season right now! With so many delicious, heirloom varieties, sometimes you want to choose them all! Well now you can!We'll send you 3 lb of Devoto Garden's best varieties, which'll vary as the season marches on. (Due to the short harvest window for Stan's apples, and the fact that he's selling them as fresh apples instead of storage apples, the selection may change day to day, and may sometimes include fewer than three varieties. But don't worry, at the end of the day, you'll always end up with 3 lb of delicious, Organic Sebastopol-grown Apples!)	3	lb	8.99	3.0	lb	Produce	New & Peak Season	http://goodeggs2.imgix.net/product_photos/7QjBfElaQ6uE6WUSWEIw_Apple_Party_01.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
20	Organic Ugly Seasonal Juicing Box	The Good Eggs Juice Box is a weekly selection of fresh, juice-able (yet still totally snack-worthy) produce from the Good Eggs Farmers you have come to know and love. Each week we will feature a new selection of organic fruits and veggies in bulk for you to blend, press, or simply munch on for the week.	1	count	12.99	1.62	lb	Produce	New & Peak Season	http://goodeggs1.imgix.net/product_photos/74TTOpnDSsKPwx6HAnov_2016-04-14.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
21	Six Organic Bananas	We've heard from hundreds of you that you'd love for us to offer Bananas, and we're proud to now offer a very different kind of banana than what you'll generally find at the supermarket.These Organic and Fairtrade Bananas are grown by the San Miguel de Brasil Cooperative in El Oro, Ecuador are many things: they're a perfectly healthy on-the-go snack, they're a naturally sweet base to your morning smoothie, and if all else fails, they're the frozen inspiration behind your next batch of banana bread. For all the things these bananas can be, we decided early on in our search for an ethically-grown banana that one thing they will never be is a product of the prevailing global banana industry that has both historically and even recently wreaked ecological, social and political havoc in regions of the world in which bananas grow.The 134 small growers of the Cooperative work together to pack, market and ship their bananas directly to international buyers, which allows them to receive a higher price for their fruit and have more control over the process than going through one of the larger banana labels. These bananas are Certified Organic, Global GAP Certified and Fairtrade Certified by Fairtrade International.	6	count	3.99	1.6	lb	Produce	Fruit	http://goodeggs2.imgix.net/product_photos/NjWf2hI8TPlY4wk93SBy_FK1A8104.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
22	Organic Banana	We've heard from hundreds of you that you'd love for us to offer Bananas, and we're proud to now offer a very different kind of banana than what you'll generally find at the supermarket.These Organic and Fairtrade Bananas are grown by the San Miguel de Brasil Cooperative in El Oro, Ecuador are many things: they're a perfectly healthy on-the-go snack, they're a naturally sweet base to your morning smoothie, and if all else fails, they're the frozen inspiration behind your next batch of banana bread. For all the things these bananas can be, we decided early on in our search for an ethically-grown banana that one thing they will never be is a product of the prevailing global banana industry that has both historically and even recently wreaked ecological, social and political havoc in regions of the world in which bananas grow.The 134 small growers of the Cooperative work together to pack, market and ship their bananas directly to international buyers, which allows them to receive a higher price for their fruit and have more control over the process than going through one of the larger banana labels. These bananas are Certified Organic, Global GAP Certified and Fairtrade Certified by Fairtrade International.	1	count	0.69	1.97	lb	Produce	Fruit	http://goodeggs2.imgix.net/product_photos/ZvQsVECTTdu9bUWhEdKe_FK1A8096.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
23	Organic Hayward Kiwis	Also known as Chinese Gooseberries, these Hayward Kiwis are fuzzy and bland on the outside, yet bright as a gem on the inside. Once the fuzzy skin is shaved off, the fruit that remains is a perfect balance of sweet-tart deliciousness. The California Kiwi season is short, so get em while you can!As we're currently near the beginning of the California Harvest, so the Kiwis may be on the firmer side and may need up to a week to fully ripen.	1	lb	3.99	3.99	lb	Produce	Fruit	http://goodeggs1.imgix.net/product_photos/4YJe7mLcRAa05v3hantp_kiwis_02.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
24	Organic Baby Dragonfruit	With a refreshingly mild, tropical flavor (think Kiwi mixed with Banana mixed with Honeydew), this unique fruit -- rarely grown in California -- has a striking exterior and an even more striking flesh. Juiced or blended, the Dragonfruit can serve as an amazing color addition and mild sweetener.These dragonfruit is grown by Devine Growers in Fallbrook, CA, and brought to us by our trusted distributor partner, Veritable Vegetiable.	1	count	4.99	14.26	lb	Produce	Fruit	http://goodeggs1.imgix.net/product_photos/33x6oRhXQnafI9oWgs7R_20161102-DevineGrowers_BabyDragonfruit_MG_5892.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
25	Organic White Sapote	The word Sapote comes from the Aztec Nahuatl language, where tzapotl is used to talk about many soft, sweet fruits. This White Sapote, also known as casimiroa or Mexican Apple, has a custard-like texture when ripe and a mildy sweet, tropical flavor that has notes of banana, mango, pineapple and guava. Sapotes are ripe when their green skin has turned slightly yellow and they give ever so slightly to the touch.These Sapotes were grown by Noah's Ark in Carpinteria, CA, and brought to us by our trusted distributor partner, Veritable Vegetable.	1	lb	7.99	7.99	lb	Produce	Fruit	http://goodeggs1.imgix.net/product_photos/XGCDTS59QqOsZvwnFYHZ_20161021-BeckGrove_Sapotes_MG_4708.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
26	Six Organic Smoothie Bananas	As part of our efforts to reduce food waste here at Good Eggs, we'd love to offer our riper bananas to you at a great price. These bananas are perfect for eating out of hand within a day or two of your delivery, for those of you who like to wait for your bananas to sweeten up to their fullest potential before opening. They're also great for smoothies or, if you don't get to them all right away, for throwing in the freezer for a future banana bread project.	6	count	1.99	0.8	lb	Produce	Fruit	http://goodeggs2.imgix.net/product_photos/aMl8olp2RlAV5cEDkm0H_DSC_3428.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
27	Organic Lemon	Juicy and acidic, lemons are a must-have for any kitchen. Use it on fish or to add some life to your next salad dressing.When none of the farms we work with directly has lemons, we rely on our trusted distributor, Veritable Vegetable, to source us the highest quality organic lemons around. These Organic Lemons are grown in Riverside Co. by Corona-College Heights.	1	count	0.99	3.3	lb	Produce	Fruit	http://goodeggs2.imgix.net/product_photos/m1XSgyCBTXaatVP9HF5f_lemons_01%20%281%29.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
28	Lime	Sustainably grown, these first-of-the-season Limes offer a bright acidity to liven up tacos, pho or any earthy, nutty grain salad.	1	count	0.59	2.95	lb	Produce	Fruit	http://goodeggs1.imgix.net/product_photos/MPMLcMrtQ9XjLwpS6fug_limes_03%20copy.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
29	Organic Meyer Lemons	These Meyers aren't the gorgeous, glossy Meyers of peak season, but their zest and juice are perfect for baking, making cocktails, and finishing off a salad dressing. Meyer lemons are sweeter and more fragrant than other varieties of lemons, with a slightly lower but perfectly balanced acid content, making them exceptional in flavor for lemonade and juicing. Also delicious zested onto desserts such a lemon bars and cream pies.	1	lb	5.99	5.99	lb	Produce	Fruit	http://goodeggs2.imgix.net/product_photos/lodymfjxQOaYUK4kyeKH_lemons_meyer_4_1.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
30	Organic Meyer Lemons	The Meyer Lemon is less tart than other lemon varieties. It also has a noticeably more floral taste, making it perfect for desserts and salad dressings. These lovely lemons are from Guru Ram Das Farm.	1	lb	3.99	3.99	lb	Produce	Fruit	http://goodeggs2.imgix.net/product_photos/Zh1XKGGeSguiRGkM0ZVI_unspecified-13.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
31	Organic Limes	A must have for salsas, guacamole, fish dishes and thai food. 	1	count	0.79	3.95	lb	Produce	Fruit	http://goodeggs2.imgix.net/product_photos/alDvXiZbQyarV634fYIA_limes_03.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
32	Limes	Sustainably grown, these first-of-the-season Limes offer a bright acidity to liven up tacos, pho or any earthy, nutty grain salad. With this 2 lb bulk sizing, you'll have plenty of juice for desserts or limeade.	2	lb	4.99	2.5	lb	Produce	Fruit	http://goodeggs1.imgix.net/product_photos/jzFHOdtESlWc5adHZPNp_bag_limes.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
33	Organic Finger Limes	Known as the "caviar of citrus," this tiny fruit grows in a thorny citrus bush, making it a pain to harvest, but oh-so worth it. It contains tiny round segments bursting with an acidic, lime-like juice, making it great for coating the rim of cocktails, replacing caviar on sushi, and adding a textural pop to your next taco.	1.75	oz	5.99	3.42	oz	Produce	Fruit	http://goodeggs1.imgix.net/product_photos/PSJRA9SXRiibU9Lj0qhT_finger_limes_02.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
34	Organic Makrut Limes	Also known as Kaffir Limes, Makrut limes are the secret ingredient to your next homemade curry paste. The zest from these limes is what really sets authentic South East Asian cooking apart from the imitations.	0.5	lb	3.99	7.98	lb	Produce	Fruit	http://goodeggs2.imgix.net/product_photos/MqHBOuVTW6AI63m08Sle_GKJNrALSWCvVGHSetZdX_limes_kafir_01.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
35	Organic Bulk Satsuma Mandarin	Side Hill Citrus's Satsuma Mandarins have a tangy level of acidity that brings light to its incredibly sweet flavor.  You won't be able to stop eating this easy-to-peel, seedless fruit.	3	lb	9.99	3.33	lb	Produce	Fruit	http://goodeggs1.imgix.net/product_photos/OgcVMOCVQvKtInlmwaWQ_bag_satsumas.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
36	Organic Rio Grapefruit	Powerfully tart with a bit of sweetness, these Organic Rio Grapefruits are great for eating raw or broiling with a bit of brown sugar on top.They were grown by farmers in or near Riverside County, who sell to Corona-College Heights Orange and Lemon Association, a packing and marketing association with almost 600 grower members, 80% of whom operate on 20 acres or less. They were brought to us by our trusted distributor partner, Veritable Vegetable.	1	count	2.49	2.77	lb	Produce	Fruit	http://goodeggs2.imgix.net/product_photos/taffXflnQMWxckx9KB7E_grapefruit.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
37	Valencia Orange Duo	Valencia Oranges are the ultimate off-season citrus. They produce in the summer, while most citrus fruits in the winter. They're a lower acid, high sugar citrus that are great for juicing.	2	count	2.79	2.79	lb	Produce	Fruit	http://goodeggs1.imgix.net/product_photos/lHTh80VOSDK8adxQIrHU_20160708-BernardRanch_Valencia_Duo_MG_4979.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
38	Cosmetically-Challenged Organic Valencia Oranges	Valencias are great for juicing, salads, cocktails and eating out of hand.These cosmetically-challenges fruits might be a bit scarred up on the outside, but they're just as sweet on the inside!These oranges were grown by Pauma Valley Citrus in Valley Center, CA, and brought to us by our trusted distributor Veritable Vegetable.	5	lb	6.99	1.4	lb	Produce	Fruit	http://goodeggs1.imgix.net/product_photos/eQQL9m7dTRORBZP6xozy_Capay%20Organic%20Ugly%20Juicing%20Orange%2010lb.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
39	Bulk Valencia Oranges	Valencia Oranges are the ultimate off-season citrus. They produce in the summer, while most citrus fruits in the winter. They're a lower acid, high sugar citrus that are great for juicing.	5	lb	9.99	2.0	lb	Produce	Fruit	http://goodeggs2.imgix.net/product_photos/M5daQVkRQHS4b5Az3mrw_20160708-BernardRanch_Valencia_5lb_MG_4972.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
40	White Marsh Grapefruit Duo	Lightly acidic with plenty of sugars to balance it out, these delicious White Marsh Grapefruit from Bernard Ranches in Riverside County are the perfect healthy snack.  Try broiling the halved grapefruit with a bit of honey or brown sugar on top for a sweet and tart dessert!Note: the White Marsh can vary in flesh color from light pink to yellow-white.	2	count	3.79	2.23	lb	Produce	Fruit	http://goodeggs2.imgix.net/product_photos/F55rewYaTV2UBbRzTnIB_20161003-BernardRanches_GrapefruitDuo_MG_2595.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
41	White Marsh Grapefruit	Lightly acidic with plenty of sugars to balance it out, these delicious White Marsh Grapefruit from Bernard Ranches in Riverside County are the perfect healthy snack.  Try broiling the halved grapefruit with a bit of honey or brown sugar on top for a sweet and tart dessert!Note: the White Marsh can vary in flesh color from light pink to yellow-white.	5	lb	9.99	2.0	lb	Produce	Fruit	http://goodeggs1.imgix.net/product_photos/csIKBVdQq621d79rFjTq_20161003-BernardRanches_Grapefruit5pd_MG_2577.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
42	Organic Limequats	The Limequat is, as its name suggests, the result of a cross between a Key Lime and a Kumquat that dates back to 1909.  It's aromatic like a lime, with the texture of a kumquat.  Very few cocktails wouldn't benefit from a Limequat garnish.	0.5	lb	3.99	7.98	lb	Produce	Fruit	http://goodeggs1.imgix.net/product_photos/jhPMkDXHSuMR8RMLywEe_Limequat_Deer_Creek_Heights_Ranch_Buck_Brand.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
43	Organic Juicing Satsuma Mandarin	These oddly shaped or oddly sized Satsumas might not be the prettiest, but the juice inside them is just as sweet and tangy as their more aesthetically pleasing brethren.  Some of these are fine to be eaten out of hand, while others may need a small soft-spot cut off before juicing.  And the price on these is perfect for making you and your loved ones tangy Satsuma juice for the next few breakfasts!	25	lb	49.99	2.0	lb	Produce	Fruit	http://goodeggs2.imgix.net/product_photos/R7o2i425RSqcson31PsQ_Satsuma%20%232%20Jucing%20Side%20Hill%2025%23.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
44	Organic Honey Crisp Apples	Honey Crisp apples are a fairly new variety that has quickly become an American favorite. They are a fantastic eating apple. Explosively crisp and juicy, this refreshing apple is honey-sweet with a touch of tart flavor. Great for applesauce, juicing and baking.	2	lb	6.99	3.5	lb	Produce	Fruit	http://goodeggs2.imgix.net/product_photos/cHcYj1oHQiWRZQJBvhnK_prUd2aORxy4yglUNQlVg_9YPJC4yqs30_M2j8ixLn5FXI4CEd9v5k-u6bux80BDU.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
45	Organic Fuji Apples	Delicious, crisp and sweet, Stan's Fujis showcase what the Sebastopol climate and his crew's dedicated care and collective green thumb.	1	lb	2.99	2.99	lb	Produce	Fruit	http://goodeggs1.imgix.net/product_photos/RaUtxCh9RcyXklf4GGow_JvPpnrPl0QbuPp0P86Wv969AkmedfI7m4Ze93hiNbLk.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
46	Organic Pink Lady Apples	The Pink Lady, with it's delicate balance of both sweet and tart, almost effervescent flavor, has quickly become a customer favorite. And what a beauty it is! This cross between a Golden Delicious and Lady Williams variety is the only truly pink apple on the market. Great for baking and fantastic for applesauce!	1	lb	3.49	3.49	lb	Produce	Fruit	http://goodeggs2.imgix.net/product_photos/KnKv4EeNTUaTBBJifpoI_Apples_PinkLady.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
47	Organic Fuji Apples	Perfect for on-the-go snacking these Fujis are on the smaller side, but pack a sweet punch nonetheless. Mostly on the sweet side, these apples are great for throwing into salads or eating with peanut butter.	4	lb	7.99	2.0	lb	Produce	Fruit	http://goodeggs1.imgix.net/product_photos/idBYd9NRTbSG5cJuIMD3_xzemHBTxj3-pY7qj_myMXTyD5VVhSNK5GGm3PgSWg6Q.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
48	Organic & Biodynamic D'Anjou Pear Duo	The d'Anjou pear (sometimes known as the Anjou pear), is sweet and juicy when ripe, with hints of a citrusy brightness, but the flesh is dense enough to hold up well to baking or poaching.  Unlike the more familiar Bartlett pear, the d'Anjou barely changes color at all when ripe (perhaps a bit more yellow, but still pretty green), so the best way to test for ripeness is the apply gently pressure to the neck of the pear, looking for the flesh to yield ever so slightly.	2	count	2.99	2.08	lb	Produce	Fruit	http://goodeggs2.imgix.net/product_photos/YqxNOtgSLucUbIK8dwog_D%27Anjouy_Pear_Duo_60ct_MtHood.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
49	Organic Granny Smith Apples	These Granny Smith Apples are far from your standard supermarket wax-covered apple. They're grown in Sebastopol's coastal climate, in which they slowly mature, concentrating all of their flavors into a more compact fruit, dense with sweet-tart flavor. They develop a light green, occasionally yellow tint, and are wonderful for eating and, of course, for baking projects. When Grannies are in town, they are not to be missed.	1	lb	2.99	2.99	lb	Produce	Fruit	http://goodeggs1.imgix.net/product_photos/IDwaDPUSwSqSIhNIUd9C_Apples_Gingergold_01.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
50	Organic & Biodynamic d'Anjou Pear	The d'Anjou pear (sometimes known as the Anjou pear), is sweet and juicy when ripe, with hints of a citrusy brightness, but the flesh is dense enough to hold up well to baking or poaching. The best way to test for ripeness is the apply gentle pressure to the neck of the pear, looking for the flesh to yield ever so slightly.	1	count	1.29	2.87	lb	Produce	Fruit	http://goodeggs2.imgix.net/product_photos/2iiVq3MqSXSrpPAFGaQ6_20161104-MtHood_DAnjou_1ct_MG_6193.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
51	Organic Newton Pippin Apples	As brightly colored as they are flavored, these Newton Pippins are the perfect choice for the tart apple lover, delicious eaten fresh and paired with mild cheeses. They have a tart-sweet flavor and a crisp, dense texture that holds up well to baking, makes them ideal for use in desserts.	1	lb	2.49	2.49	lb	Produce	Fruit	http://goodeggs1.imgix.net/product_photos/Q0RIy4W9TiuAwaBy5edz_TUVReWJMRKyAZSjpPn3c_LsSxwrkARMF4g1xaqi7CwECAYqGB-2Lp-UdIpZzIEeI.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
52	Organic Jonagold Apples	A very popular commercial variety, with exceptional flavour. Inherits many of the good qualities of its parents -- Jonathan and Golden Delicious. This variety has a sharp and refreshing taste!	1	lb	2.99	2.99	lb	Produce	Fruit	http://goodeggs1.imgix.net/product_photos/9RJfufXHRvSIsawK1WRz_Good%20Eggs%20010715-13.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
53	Organic Rome Beauty Baking Apples	What a beautiful apple!  Rome beauties are very firm at the beginning of the harvest, but already have exceptional flavorful.  These apples sweeten as their short season progresses, and they are renowned for the baking qualities as they maintain their shape when cooked.	1	lb	3.99	3.99	lb	Produce	Fruit	http://goodeggs2.imgix.net/product_photos/524VyaD3SZaCtLD6Z1VV_apples_01.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
54	Organic Sierra Beauty Apples	 With a robust flavor, and a crisp and juicy yellow flesh, there's no better use for this apple than eating out-of-hand (though we won't stop you from using it in a pie). This Biodynamically Grown Sierra Beauty is everything one could ever want out of a snacking apple. 	1	lb	4.99	4.99	lb	Produce	Fruit	http://goodeggs1.imgix.net/product_photos/KELTVr13T0G74aVXgadn_OYJbcpt4QNWe4Ifad9kS_apples_01.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
55	Organic Royal Gala Apples	The Royal Gala is a crisp and juicy early-season variety. It has enough acidity to balance the sweetness, but isn't too tart, making it a kids' favorite. Live Earth is packing their smaller apples into 4 lb bags, so you can enjoy them throughout the week. They store best kept in the refrigerator, but take them out a few at a time if you want to enjoy them at room temperature.Regular price: $9.99. Sale price: $7.99!	4	lb	7.99	2.0	lb	Produce	Fruit	http://goodeggs2.imgix.net/product_photos/eF25N2t5RCu4rVHjhp0u_apples_bulk_with_bag%20save2.jpeg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
56	Organic Sweet Wickson Crab Apples	The Wickson Crab Apple is small, like other crab apples, but different in every other way. They're sweet, with a tangy acidity. They're amazing for cider and perfect for a bite-sized snack.	1	lb	4.99	4.99	lb	Produce	Fruit	http://goodeggs2.imgix.net/product_photos/sdldTnRGTF25LkJrbFOF_20161102-Filigreen_WicksonApples_3pdMG_5924.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
57	Assorted Organic Sauce Apples	Before we send them to your door, we sort through all our apples to pull out any bruised ones, cut ones, scarred ones, or slightly-nibbled-on ones, so that you get only the best of the best. We hate the idea of throwing out a delicious apple because of one of these defects, so we're offering them to you at a discounted price for use in sauces, juicing, dehydrating, or, for those willing to eat around a bruise or a small worm-hole, snacking!These Apples are a mix of this week's seasonal varieties, all certified organic, from any of the following farms: Devoto Orchards, Hidden Star Orchards, and Filigreen Farm.	5	lb	6.99	1.4	lb	Produce	Fruit	http://goodeggs1.imgix.net/product_photos/A4Ygu6WRw2v8ppckXAEt_20160812-Apples_MixedSeconds_MG_7927.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
58	Organic Belle de Boskoop Apples	These large, sometimes bumpy have a sharp but sweet flavor with a relatively dense flesh. They're great in baking applications, or sliced onto a cheese plate.	1	lb	4.99	4.99	lb	Produce	Fruit	http://goodeggs2.imgix.net/product_photos/ugxa01BeRylzYI0ivnxL_apples_fuji.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
59	Organic Princess Seedless Grapes	Organic Princess Seedless Grapes! These large, luscious, light green berries are a perfect blend of sweet and tart. Gobble them by the handful while you enjoy their satisfying crunch and slight floral character. Kids especially love frozen grapes as a refreshing treat on those warm summer days.	2	lb	6.99	3.5	lb	Produce	Fruit	http://goodeggs1.imgix.net/product_photos/Hw7KQ4eSQmGC5I6ld3pA_xLKNUloLvGi2c0DPg-zPwQowoJFqmX5R0peONf8gqAI.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
60	Organic Fuyu Persimmons	Of the many varieties of persimmon enjoyed worldwide, the Fuyu is by far the most popular. Fuyus are sweet, rich in flavor, and unlike their astringent Hachiya cousins, they are ready to consume while still crisp, like munching on an Autumn apple. Enjoy these seedless wonders sliced in salad, with yogurt, or right out of hand. They also make fabulous seasonal decorations!	1	lb	3.99	3.99	lb	Produce	Fruit	http://goodeggs1.imgix.net/product_photos/Np9IHpeR26ZcLyhPLaIw_unspecified-17.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
61	Organic Pomegranates	Pomegranates are the darling of fall fruit, as they hide in their caverns tiny jeweled arils that bring color to otherwise drably colored fall dishes. To easily access the arils with minimum mess, try quartering the fruit and removing arils in a bowl of water.	2	lb	4.99	2.5	lb	Produce	Fruit	http://goodeggs2.imgix.net/product_photos/XsiebQSsRrGDniRmkP8L_unspecified-10.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
62	Pomegranate	Bursting with fresh flavor, this quintessential fall fruit is the perfect addition to a Delicata and Arugula salad with a bit of reduced balsamic drizzled on top.These Pomegranates were grown by 3 Sisters Pomegranates in Healdsburg, CA, and brought to us by our friends at FEED Sonoma.	1	count	1.99	2.65	lb	Produce	Fruit	http://goodeggs2.imgix.net/product_photos/3qNmR0tTQlSSBpyrnHOD_pomegranate_03.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
63	Organic Dried Jujubes	Jujubes (aka Chinese Dates) are widely consumed throughout the Asian continent: dried as a snack with coffee, made into a syrup or juice, even pickled! Jujubes naturally turn from a lime-green color to a dark, amber red as they dry, and they'll begin to wrinkle when they're at their sweetest stage.These Jujubes are fully dried to a wrinkled stage, making them a wonderful chewy snack.	1	pint	4.99	9.98	lb	Produce	Fruit	http://goodeggs1.imgix.net/product_photos/3Efiet8VQVCrMCH7y0QD_20161019-FullBelly_Jujubes_MG_4505.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
64	Organic Hachiya Persimmons	KNOW YOUR PERSIMMON VARIETIES!From Farmer Bryce Loewen: "At almost every Fall farmers' market, I get at least one potential customer that believes that they don't like persimmons because they have eaten an astringent variety--such as the Hachiya--before it was ready. So many lost sales!"The Hachiya persimmon is actually even sweeter than the Fuyu, but only when it's so ripe that it feels like a sack of jelly. If you eat it at any point before then, it has a tannic flavor (like a mouthful of mothballs) that rivals the greenest plantain. It can take a while for Hachiyas to ripen, but the good news is that they look stunning while you wait."Or you can try your hand at Hoshigaki, a difficult, fascinating method of peeling and drying Hachiyas.	1	lb	4.99	4.99	lb	Produce	Fruit	http://goodeggs1.imgix.net/product_photos/xNrKIc7ZQXuaAedPq3O7_persimmon_02.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
78	Organic Red Norland Potatoes	Organic Red Norland Potatoes are beautiful red potatoes and the accompaniment to your main dish. They do well with any task they are given, be it frying, steaming, roasting, stewing, grilling or baking. Pairs well with any herb.	1	lb	2.49	2.49	lb	Produce	Vegetables	http://goodeggs1.imgix.net/product_photos/YAHSXXpDTH6iXMGzrGbt_potatoes_red.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
65	Organic Fresh Cranberries (Canada)	These little berries are super-tart and deliciously sweet, not to mention a fantastic source of Vitamin C, manganese, and other naturally-occurring vitamins and minerals. Cranberries are great for roasting or braising alongside veggies and meat, blending into smoothies, cooking down into sauces or compotes, or (of course!) baking into a perfect apple-cranberry pie.	8	oz	2.99	5.98	lb	Produce	Fruit	http://goodeggs2.imgix.net/product_photos/whTh9WQ9m6QRKhQ1Iy1w_20161110-CranberryPatienceIMG_5781.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
66	Large Gwen Avocado	The Gwen is a tasty, green-skinned avocado--it doesn't darken as it ripens.  A cousin of the Hass, it is among the highest in oil content, which comes through in its rich flavor. It also oxidizes slowly, so its flesh looks bright green long after it has been cut open.  Bye-bye brown guacamole!	1	count	2.99	4.78	lb	Produce	Vegetables	http://goodeggs1.imgix.net/product_photos/hheR8zaS2SI2wJNEz8hg_avocados_01.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
67	Organic Fuerte Avocado	The Fuerte Avocado is your grandmother's avocado.  In fact, it wasn't so long ago that the Hass held little to no commercial appeal because it turned black when ripe.  In the 1950's, before the Hass reigned supreme, the Fuerte accounted for nearly two-thirds of all California avocado production, so people were more used to this thinner- and green-skinned avocado.  And even though the Hass is pretty much the only domestic avocado you find anymore outside of California and Florida, the Fuerte has a thriving fan club in the Golden State.  Once you spread some creamy Fuerte goodness over a thick slab of hearty toast, you'll understand why.	1	count	2.49	4.98	lb	Produce	Vegetables	http://goodeggs1.imgix.net/product_photos/m7q4dgsRR8aF30BUbA8w_Fuerte_Avocado_Duo_Rancho_Vazquez_36ct.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
68	Organic Jumbo Bacon Avocado	This oval-shaped avocado is known to be less oily than other avocado varieties. It has a light and buttery taste and green smooth skin that never really darkens. These Bacon Avocados were produced by growers in California working with the family-owned and operated Del Rey Avocado Company, which is based in Fallbrook, CA.	1	count	1.99	2.84	lb	Produce	Vegetables	http://goodeggs1.imgix.net/product_photos/WgouS2CPT2qW0jpKhsyc_unspecified-11.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
69	Extra Large Gwen Avocado	The Gwen is a tasty, green-skinned avocado--it doesn't darken as it ripens.  A cousin of the Hass, it is among the highest in oil content, which comes through in its rich flavor. It also oxidizes slowly, so its flesh looks bright green long after it has been cut open.  Bye-bye brown guacamole!	1	count	3.99	5.7	lb	Produce	Vegetables	http://goodeggs1.imgix.net/product_photos/68gHm9JjTtG4G17OLS1E_unspecified-16.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
70	Organic Russet Potato Trio	Once the supply of storage potatoes starts to dwindle at the farms we work with directly, we rely heavily on our trusted distributor, Veritable Vegetable, to source the highest quality organic potatoes they can find.  These Russet Potatoes may be grown by one of the few trusted growers and labels Veritable Vegetable works with, including Nature's Pride, Fern Ridge, and Noonan. We'll do our best to update you as Veritable Vegetable's source changes.Today's Organic Russet Potatoes are coming from: Nature's Pride in Tulelake, CA.____________________________________________Veritable Vegetable: A Unique Organic DistributorAs an organic produce distributor with over 40 years of experience, Veritable Vegetable has benefited from the creativity and hard work of our employees, and the deep relationships we’ve formed with our growers. We’re proud of our reputation for quality and integrity. As a mission–driven company, we make every business decision based on a set of core values. Because we believe in supporting our growers, we maintain visibility for each of the 200+ farm labels we carry and communicate the distance each grower is from our warehouse in San Francisco. Our environmental initiatives are vast: not only do we transport our organic produce via an award winning, environmentally sustainable green fleet of trucks and trailers; we also divert 99% of our waste stream through a vigorous waste management program and the use of reusable pallets, crates and fabric wraps. Additionally, our solar array generates 70% of our electricity needs. We actively support our community by creating unique partnerships with local and national organizations, donating time, produce, and resources to sustainability efforts, and by weighing in on policy initiatives that impact sustainable food systems. Veritable Vegetable is a woman-owned, certified B Corporation, using the power of business to solve social and environmental challenges.	3	count	1.99	1.21	lb	Produce	Vegetables	http://goodeggs1.imgix.net/product_photos/mnkbPfIQEG5JplKmbYIg_Russet_Potato_3pack_90ct.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
71	Organic Medium Garnet Sweet Potatoes	This classic variety of sweet potato has a burgundy skin and deep orange flesh. Wash them, poke a few holes in them, toss them on a baking sheet, and you'll have a sweet and filling side by the time you've finished prepping the rest of your dinner.	1	lb	2.79	2.79	lb	Produce	Vegetables	http://goodeggs1.imgix.net/product_photos/3fRTu31ETXqlCtC4vX5A_Sweet_Potatoes.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
72	Organic Small German Butterball Potatoes	German Butterballs are sweet, fluffy and make the perfect mashed potatoes.	1	lb	2.99	2.99	lb	Produce	Vegetables	http://goodeggs2.imgix.net/product_photos/TJagh2tjRYuNyAjChjdL_20161003-TerraFirma_GermanButterball_MG_2568.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
73	Organic Japanese Sweet Potatoes	These sweet potatoes have a firm, white flesh! These babies cook a little differently than their orange-fleshed cousins, so if you're unfamiliar read on: while orange sweet potatoes become soft and fluffy when cooked, white sweet potatoes remain dense and firm, making them an excellent candidate for dishes like a breakfast hash, oven roasted sweet potato fries, or chopped into chunks and added to hearty soups or stews.	1	lb	2.99	2.99	lb	Produce	Vegetables	http://goodeggs1.imgix.net/product_photos/F62B1mB0S6aMLYT2FQ9R_jcWyBZvB5Dqbug3SNkrewYssa657h2iMDhee-4NdwuY.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
74	Red Beets	With their blood red color, these beets are richly sweet. Boiled or roasted, these beets are great simply topped with butter or chopped into a fresh salad.	1	lb	2.99	2.99	lb	Produce	Vegetables	http://goodeggs2.imgix.net/product_photos/ASlZxFUsTyyS9b0tnEfw_beets_loose_02.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
75	Yellow Potatoes	Martin grows a number of heirloom German potato varieties, and this yellow-skinned, yellow-fleshed variety is one of his favorites. Great for roasting.	1	lb	3.49	3.49	lb	Produce	Vegetables	http://goodeggs1.imgix.net/product_photos/6ShHtiSRY217Dpobfkxw_potatoes_01.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
76	Large Kennebec Potatoes	Martin grows a number of heirloom German potato varieties, and this yellow-skinned, yellow-fleshed variety is a classic potato for mashing and frying.	2	lb	4.99	2.5	lb	Produce	Vegetables	http://goodeggs1.imgix.net/product_photos/w2ZMN6CnQC6aLQodmKqQ_yukon_gold_potatoes_a_size_td_willey_2_pounds_1024.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
77	Organic Purple Majesty Potatoes	Beautiful dark purple skins with deep blue-purple flesh. Keeps its color when cooked. Firm flesh and high in antioxidants! These Purple Majesty Potatoes were brought to us by Capay Valley Farm Shop and grown by Fiddler's Green Farm in Brooks, CA.	1	lb	2.99	2.99	lb	Produce	Vegetables	http://goodeggs2.imgix.net/product_photos/jUgThaW9RQetLLTHPYqg_unspecified-12.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
79	Organic New Red Lasoda Potatoes	Full Belly Farm's Organic Red Lasoda Potatoes are fresh, thin-skinned, and creamy new potatoes! These potatoes are coming from this year's new crop, not out of last year's storage crop, so they should be stored in the refrigerator rather than your kitchen pantry for optimum freshness. Perfect for potato salads or roasting with your favorite herb.  These lovelies are red skinned and white-fleshed. These are smaller potatoes, ranging in diameter from dime-sized to quarter-sized.	1	lb	4.99	4.99	lb	Produce	Vegetables	http://goodeggs1.imgix.net/product_photos/mLotDKukQl6MI93mOXMF_unspecified-7.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
80	Organic Gold Beets	Boiled or roasted, there's no wrong way to eat these delicious golden roots. And don't forget to save the greens to sauté--they've got a flavor very similar to Chard!	1	bunch	2.79	2.79	lb	Produce	Vegetables	http://goodeggs2.imgix.net/product_photos/zIvWmzAXTziQZcVlpGM4_beets_gold_bunch_04.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
81	Organic New Bintje Potatoes	Organic New Bintje Potatoes are beautiful golden potatoes and the perfect all-around crowd pleaser. They do well with any task they are given, be it frying, steaming, roasting, stewing, grilling or baking. Because these are fresh, hand-dug new potatoes, store them in the refrigerator until you're ready to eat.	1	lb	4.99	4.99	lb	Produce	Vegetables	http://goodeggs2.imgix.net/product_photos/suQpWuvmTmCKx8GglpoQ_unspecified-6.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
82	Organic Russet Potato	Russet or "Idaho" potatoes are large and starchy, with relatively dry white flesh that is perfectly suited to baking, mashing, or frying. Slice them into long wedges and bake with olive oil and salt for a healthier take on a French fry, or chop them up and boil the pieces, then mash them with butter, salt, and pepper for a classic rustic mashed potato.	1	count	0.79	1.58	lb	Produce	Vegetables	http://goodeggs1.imgix.net/product_photos/mTyslwP5QkmO1YU8zHTy_Russet_Potato_90ct.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
83	Organic Russet Potatoes (Bulk)	Russet or "Idaho" potatoes are large and starchy, with relatively dry white flesh that is perfectly suited to baking, mashing, or frying. Slice them into long wedges and bake with olive oil and salt for a healthier take on a French fry, or chop them up and boil the pieces, then mash them with butter, salt, and pepper for a classic rustic mashed potato. This 3 lb bulk bag of potatoes should be enough for all of your Thanksgiving guests!	10	count	4.99	1.0	lb	Produce	Vegetables	http://goodeggs1.imgix.net/product_photos/LQxWbx3lSmWYU6H8KN9S_20161102-RussetPotatoes_10ct_MG_5952.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
84	Organic Green Beans	Last of the season Greens Beans should help to round off your holiday menu with the strangely classic Green Bean casserole, or a more delicately prepared in a quick sauté with garlic and a squeeze of lemon at the end. These Green Beans are from OC Harvest Farms in Irvine, CA.	1	lb	3.99	3.99	lb	Produce	Vegetables	http://goodeggs1.imgix.net/product_photos/SnWaO7ocTaZiklOiGd7F_iQEuuvQmKRvTlaQaMPw7LCm4LDiCrvl6X-5O3DdekGQ.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
85	Organic Japanese Cucumber	It's hard to believe it, since it just turned to springtime, but summer is starting up in Janet and Akira's magical greenhouses in Watsonville, CA. Hikari Farms is known for their amazing Japanese Cucumbers. They're thin-skinned and virtually seedless, so these delicate cukes are all sweet and lack the bitterness often associated with the thick-skinned, rigid, and heavily-seeded slicer cucumbers you'd generally find at the supermarket. Perfect for cutting into thin spears and dipping into hummus or chopped roughly into your next fresh green salad.	1	count	1.99	6.03	lb	Produce	Vegetables	http://goodeggs2.imgix.net/product_photos/I5cfzT05QKeUguoBEFYw_20160607-Hikari_JapaneseCucumber_MG_1445.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
86	Organic Small Slicing Cucumber	Slice into salads or layer onto sandwiches, these all-purpose cukes are sweet and crunchy.These Organic Cucumbers were grown by the Sanchez Brothers in Carpinteria, CA.	1	count	1.79	3.58	lb	Produce	Vegetables	http://goodeggs2.imgix.net/product_photos/z8HqBCT8uuU1q3THOzw6_20160518-Lakeside_Cucumber_MG_0046.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
87	Organic Japanese Cucumber	Hikari Farms is known for their amazing Japanese Cucumbers. Thin-skinned and virtually seedless, these cukes lack the bitterness often associated with thick-skinned, rigid, heavily-seeded slicer cucumbers you'd generally find at the supermarket. Perfect for cutting into thin spears and dipping into hummus or chopped roughly into your next fresh green salad. Springtime may have just started, but it's already summer in Janet and Akira's magical greenhouses in Watsonville, CA.	1	lb	5.49	5.49	lb	Produce	Vegetables	http://goodeggs1.imgix.net/product_photos/LibzqbVgTXON4EUIPJPW_Hikari_Japanese_Cucumber_Trio.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
88	Organic Sugar Snap Peas	Pie Ranch's coastal microclimate allows them to grow this spring treat well into summer. Sweet crunchy and (almost) entirely edible, these delicious pods are great raw or sautéed.	1	lb	6.99	6.99	lb	Produce	Vegetables	http://goodeggs1.imgix.net/product_photos/NNQ29s8LTdqW6MsqpbRs_Peas_Sugar_Snap.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
89	Organic English Shelling Peas	Inside these fibrous, inedible pods, are some incredibly sweet, adorable little peas. They're delicious raw, but cooking them converts their starches into sugars and makes them even sweeter. Pie Ranch's coastal microclimate allows them to grow this spring treat well into summer.	1	lb	4.99	4.99	lb	Produce	Vegetables	http://goodeggs2.imgix.net/product_photos/JCW980BQeFduuVEJ37w6_peas_english.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
90	Organic Watermelon Gherkins	These tiny members of the Cucumber family are slightly sour, with a taste between a Watermelon rind and a Lemon Cucumber. Also known as Mouse Melons, they're great pickled or as a healthy, crunch snack.	0.5	lb	4.99	9.98	lb	Produce	Vegetables	http://goodeggs1.imgix.net/product_photos/P9bLiHCdRnm4my9AEoS4_MexicanSourGherkin-1%20%281%29.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
91	Organic Persian Cucumbers	With its thin skin, this lightly seeded cuke is sweet and juicy.	1	lb	3.99	3.99	lb	Produce	Vegetables	http://goodeggs1.imgix.net/product_photos/LPdORPPfQuuh3YZVcUQH_cucumbers_01.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
92	Organic Zucchini	Zucchini is a versatile summer veg with lots of nutty flavor. Quick sautée as a side, toss into scrambled eggs with a little parmesan cheese, or grate raw into a salad.	1	lb	2.99	2.99	lb	Produce	Vegetables	http://goodeggs1.imgix.net/product_photos/48BEFSLxQZSmja9GF77v_Zucchini_02.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
93	Organic Globe Eggplant	An American Eggplant variety, the Globe Eggplant is also the most common. Large and pear-shaped, this classic summer veggie is versatile and tasty. Throw 'em on the grill, bake 'em or stew 'em up with some tomatoes and basil.	1	lb	2.99	2.99	lb	Produce	Vegetables	http://goodeggs2.imgix.net/product_photos/1H8AMEenSzuQY5f1rRtC_globeeggplant.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
94	Organic Mixed Summer Squash	Summer squash makes a great grilling addition, as the Sunburst, Eight Ball, and Zucchini varieties are perfect for slicing, dressing with olive oil, and tossing over the flame.	1	lb	3.99	3.99	lb	Produce	Vegetables	http://goodeggs2.imgix.net/product_photos/4QdvBNYwQyuZgxIjz6d1_squash_mix.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
95	Organic Mixed Summer Squash	Grilled or sautéed, this succulent summer squash is sweet and tender.	2	lb	4.99	2.5	lb	Produce	Vegetables	http://goodeggs1.imgix.net/product_photos/UuZqXDe9QsaAHPy1TVHe_squash_mix%20copy.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
96	Organic Mixed Eggplant	This farmer's choice mix of eggplant may include Globe, Listada, Machiaw, Neon, Chinese and other eggplant varieties. Allowing Riverdog to put whatever eggplant varieties they have most of on any given harvest day is a great way to help the farm reduce waste and sell through their crop.	2	lb	9.99	5.0	lb	Produce	Vegetables	http://goodeggs1.imgix.net/product_photos/8Z396rG7ThqLPeIOjjWU_eggplant_mix_02.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
97	Organic Tomatillos	Time to break out the blender for some good ol' fashioned salsa verde! Tomatillos also play an important role in many pozole recipes.	1	lb	3.99	3.99	lb	Produce	Vegetables	http://goodeggs2.imgix.net/product_photos/VtQbn3t7R3KIE5GSqwiL_tomatillos_03.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
98	Organic Broccoli	As the weather gets cooler, this classic Brassica gets sweeter and sweeter. Enjoy roasted, stir-fried or simply steamed.	2	lb	3.99	2.0	lb	Produce	Vegetables	http://goodeggs2.imgix.net/product_photos/BuUimoXDSpKO6TvSikqj_Broccoli.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
99	Organic Small Cauliflower	This beautiful Brassica can be roasted or added to any stir-fry.  Lakeside Organics grows these large cauliflower heads down in Watsonville, CA.	1	head	2.99	2.39	lb	Produce	Vegetables	http://goodeggs1.imgix.net/product_photos/fpp8dkzSPiJ6S8PIut8Q_cauliflower_01%20copy.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
100	Organic Cauliflower	Roasted whole, crumbled into a salad or zapped up into a creamy soup, there's no wrong way to enjoy this delectable Brassica.	2	lb	5.99	3.0	lb	Produce	Vegetables	http://goodeggs1.imgix.net/product_photos/1fjggu7sTm8ZbbQq2Zg6_cauliflower_01%20%281%29.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
101	Broccoli Di Ciccio	These baby leaves of the Spigariello plant--an heirloom Italian Broccoli variety--have the Brassica sweetness of Broccoli with the tenderness of a Baby Kale.  It's great in hearty white bean soups or quickly sautéed with some olive oil, garlic and shallots, then hit with a bit of lemon juice at the end to bring out the sweetness. For a hearty salad, massage the Spigariello Greens with some buttery olive oil and let it soak in, covered in the fridge, for an hour or two.  Top with a pungent goat cheese, some slivered or toasted almonds, raw or pickled shallots, and a hit of lemon juice.	0.5	lb	3.99	7.98	lb	Produce	Vegetables	http://goodeggs2.imgix.net/product_photos/ty64iIPXTz6OLErQtMD0_20160620-DiCiccio_1-2pd_MG_3131.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
102	Organic Bunched Broccolini	Broccolini is great to have around--it's the more elegant counterpart to broccoli crowns (ironically) with slightly more concentrated flavor and crisp.	1	bunch	2.49	4.98	lb	Produce	Vegetables	http://goodeggs1.imgix.net/product_photos/NuqWUJE2R6Wub12pccxA_unspecified.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
103	Organic Broccolini Trio	When none of the farms we source from directly have Baby Broccoli, we rely on our trusted distributors--like Earl's Organic Produce--to source the highest quality Cailifornia-grown Organic Baby Broccoli around. This week's Baby Broccoli is grown by Josie's Organics.	3	bunch	4.99	3.99	lb	Produce	Vegetables	http://goodeggs1.imgix.net/product_photos/cgPz5cLtQ6SyA3OjTIxU_broctriosave250.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
104	Organic Happy Rich Broccolini	Happy Rich Broccolini is the tender, juicy-stemmed, sweet side shoots that grow off the broccoli plant. Enjoy this flavorful vegetable in a variety of ways -- sauteed in olive oil and garlic, it is the perfect addition to pasta and rice-based dishes, or as a side to compliment a steak or filet. Delivered in a 1 lb quantity.	1	lb	4.99	\N	\N	Produce	Vegetables	http://goodeggs2.imgix.net/product_photos/AOby9hy1QziZGjVaJE5e_oDuiNd57QmiyRFAATJdD_live_earth_broccoli%20rabe_03.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
105	Organic Baby Cauliflower	This beautiful Brassica can be roasted or added to any stir-fry.  Lakeside Organics grows these baby cauliflower heads down in Watsonville, CA.	1	head	2.29	3.05	lb	Produce	Vegetables	http://goodeggs1.imgix.net/product_photos/fpp8dkzSPiJ6S8PIut8Q_cauliflower_01%20copy.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
106	Piracicaba Broccoli	This broccoli has beautiful, nearly open florets and long, tender and entirely stems. Quick sauté with a little garlic, olive oil and red pepper flakes for a sweet, delicious addition to any meal.	0.4	lb	3.49	8.73	lb	Produce	Vegetables	http://goodeggs2.imgix.net/product_photos/aZKXH2rpQVuYjQBZwEyv_17m_IhG0Ny-vZk_O8svvIvu8lpcKy6FryUB2d2X8f8Y.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
107	Organic Rapini Greens	This relative of Broccoli has a bit more of a mustardy kick.  Stir-fry these greens with garlic and red pepper flakes for a quick side!	1	bunch	2.49	3.32	lb	Produce	Vegetables	http://goodeggs1.imgix.net/product_photos/zsovDPljQcW4ibbHxNm2_Rapini_Greens_Riverdog_Huge.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
108	Organic Carrots	Sweet and crisp, these carrots are tasty cooked and raw. Try them roasted whole for a fancy side-dish, or sweep them through your favorite dip for an easy snack.	1	bunch	2.99	4.98	lb	Produce	Vegetables	http://goodeggs2.imgix.net/product_photos/KKM5jIDZTDeVoB7uvVHJ_Medium%20Bunched%20Carrots%20Happy%20Boy.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
109	Rainbow Carrots	As delicious as they are beautiful, Martin's Rainbow carrots are great for shaving raw into salads or roasting for a multi-colored side dish.	1	lb	2.49	2.49	lb	Produce	Vegetables	http://goodeggs1.imgix.net/product_photos/pdd4QhpVRwaI3vDKQqtn_20161006-MixedCarrots_MG_3182.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
110	Organic Carrots	Crunchy and sweet Organic Carrots. Great for shaving into salads or steaming and topping with dill for a healthy and hearty side.	1	lb	1.49	1.49	lb	Produce	Vegetables	http://goodeggs1.imgix.net/product_photos/pWksMSO2TyZ4gUT4SciN_carrots_01.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
111	"Just a Few" Organic Celery Stalks	Try this organic Celery in a hearty vegetable stock, with peanut butter or in a salad with fresh mozzarella, olive oil and lemon zest!	0.25	lb	0.49	1.96	lb	Produce	Vegetables	http://goodeggs2.imgix.net/product_photos/QQcnDbSVRNC7QeMqqeFN_20160816-SingleStalkCelery_MG_8028%20%281%29.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
127	Organic Serrano Pepper Trio	Hot Peppers! Perfect for salsa and great in Thai food.	3	count	0.99	0.99	oz	Produce	Vegetables	http://goodeggs2.imgix.net/product_photos/u5ZaAEOQTmyZJuDlaZLq_peppers_serrano%20%281%29.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
112	Organic Baby Carrots	Sweet and tender, these baby carrots (either Nelson or Mokum variety) are exceptionally fresh. Ideal as a raw snack or shredded into salads, but also thin enough to roast whole in the oven with a touch of oil and salt as a side dish that speaks for itself. Sold as 1 bunch, size and number highly variable, but typically 7-12 carrots.	1	bunch	2.49	\N	\N	Produce	Vegetables	http://goodeggs1.imgix.net/product_photos/dCLSMw26T4qYs6XINtXA_Baby%20Orange%20Carrots%20Countyline.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
113	Organic Purple Carrots	Crunchy and colorful, these carrots are great cooked or used raw--sliced, shaved or grated--in a salad.When we can't find Organic Carrots from the farms we source from directly, we rely on our trusted distributor partner Veritable Vegetable to source from the best and closest farms around. This week's Organic Purple Carrots are coming from Ralph's Organic Greenhouses in Mount Vernon, Washington.	1	lb	1.49	1.49	lb	Produce	Vegetables	http://goodeggs2.imgix.net/product_photos/mF6sU4J0QjupgfFDyhcH_20161006-PurpleCarrots_MG_3171%20%283eefbeb30fb2465ae1c800ab78e77a63c8477844%29.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
114	Organic Fennel	Fennel is great in soups alongside chicken and mushroom, and delicious in rigatoni or baked, seasoned and covered in parmesan. Try it in salads and casseroles as well.	1	head	2.49	2.49	lb	Produce	Vegetables	http://goodeggs1.imgix.net/product_photos/3qMY9zUJThiNwxF3yH6L_S994FmSr0wpl6gfH9_l4-be-ZKqh1U5mKlGDENYs_l8.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
115	Organic Celery Root with Greens	Great for gratins, soups, mashes and roasted vegetable medleys, celery root is an awesome substitute for any recipe that calls for potatoes or turnips. While reminiscent of celery itself, it has a much sweeter, earthy appeal that warms the soul on a cool winter night.The greens may be a bit more bitter than standard celery, but are great used in soups or stews!	1	count	2.99	2.99	lb	Produce	Vegetables	http://goodeggs1.imgix.net/product_photos/EvEkR06eQDOLQHOQMMw3_celeriac%202.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
116	Organic Cosmetically-Challenged Juicing Carrots	Misshapen, too short, too thin, or slightly split, these Organic Carrots may not be the most beautiful in many supermarkets' eyes, but we know that their true beauty is in their flavor. These carrots are just fine for cooking or eating raw, but they're a great deal for those who want to add them to their fresh juice!These Carrots were grown by Ralph's Greenhouse in Mt. Vernon and brought to us by our trusted distributor partner, Veritable Vegetable.	3	lb	3.99	1.33	lb	Produce	Vegetables	http://goodeggs2.imgix.net/product_photos/2jGAcPExQnGuyxLFPPK3_20161007-OrangeCarrots_MG_3194.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
117	Small Aquaponic Calypso Celery	A staple for soups, a crunchy addition to fresh salads, and a healthy vehicle for peanut butter and raisins, these heads of celery can do it all. Aquaponically grown celery differs from its traditionally grown counterpart by having a distinctly balanced sweet and salty flavor to it, while being far juicier. Further differentiating itself from more traditional celery is the fact that this celery comes packed with the leaves of the plant, which can be tossed with salad greens, thrown into a stir-fry, as well as used for stocks, soups, and sauces. Toss the tender leaves with salad greens and vinaigrette. Throw them into stir-fries, stocks, soups, and sauces.	1	count	2.99	4.98	lb	Produce	Vegetables	http://goodeggs1.imgix.net/product_photos/frWWo2YrQ6SOFH3mnbea_20160713-Ourboros_AquaponicCelery_MG_5301.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
118	Organic Celery	Try this organic Celery in a hearty vegetable stock, with peanut butter or in a salad with fresh mozzarella, olive oil and lemon zest!	1	bunch	1.99	1.0	lb	Produce	Vegetables	http://goodeggs1.imgix.net/product_photos/USehtrtRTRGXseCGtQom_YipZKPb-agJ427eru_J5Tf_Byu2nT7G7a4GDGxjHBEM.jpeg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
119	Organic Large Celery	Try this Organic Celery in a hearty vegetable stock, with peanut butter or in a salad with fresh mozzarella, olive oil and lemon zest!	1	bunch	2.49	1.13	lb	Produce	Vegetables	http://goodeggs1.imgix.net/product_photos/5PMLRjLQ7Kmuui3bRchx_celery_02%20%281%29%20%281%29.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
120	Organic Carrots	Who doesn't love carrots? These sweet, crunchy root veggies can be harvested all year round, and they can be prepared in an endless number of ways. Invaluable for stock, soup, stuffing your turkey, roasting, baking, juicing, mashing, slicing raw, and shredding for carrot cake.	1	bunch	2.49	2.49	lb	Produce	Vegetables	http://goodeggs1.imgix.net/product_photos/enWpMEkgTKgGim6l8Y3c_Medium%20Bunched%20Carrots%20Happy%20Boy.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
121	Organic Celery	What's a kitchen without Celery? Crisp, mild, and slightly peppery, celery can be diced for a mirepoix to make broth and soup, stuffed into your turkey, shaved into salads, or sliced and eaten as a snack. The leaves are edible too, and a bit more strongly flavored than the stalks.	1	count	2.99	1.5	lb	Produce	Vegetables	http://goodeggs2.imgix.net/product_photos/IQKpuWwbTROFR8KglqKg_celery_04.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
122	Organic Mixed Medley Cherry Tomatoes	This delicious mix of colorful and flavorful cherry tomato varieties is all you need to liven up your next salad. Just slice in half, sprinkle with a bit of salt and toss them into some salad mix, and you've got yourself a summer salad!	1	pint	4.99	5.87	lb	Produce	Vegetables	http://goodeggs1.imgix.net/product_photos/FWL3H6ESd2W7tScz24Gs_tomatoes_cherry_mixed_01.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
123	Organic Red Bell Pepper	Red Bell Peppers are a great addition to any kitchen, as they're versatile and can be added to any dish, cooked or raw. Try charring them on top of the stove and adding to a simple fresh tomato sauce to add sweetness and depth of flavor.	1	count	2.49	4.15	lb	Produce	Vegetables	http://goodeggs1.imgix.net/product_photos/RLNxcitiQOi7gIhNwmhq_20160712-Rundle_RedBellPepper_MG_5085%20%281%29.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
124	Organic Orange Bell Pepper	Add some beautiful orange to your next fresh salad or some sweetness to your next fajita mix with these Organic Orange Bell Peppers! They're refreshingly sweet, crunchy and juicy.	1	lb	4.99	4.99	lb	Produce	Vegetables	http://goodeggs2.imgix.net/product_photos/ab8hZIT2K5bd925EuSiA_Orangebellpeppers.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
125	Organic Jalapeño Peppers	Jalapeños are your classic peppers for chiles rellenos, with their thick, sturdy walls, rich flavor, and mild-to-medium kick. They can also be added to a mix of fajita veggies for a bit of spice!	3	count	0.79	6.32	lb	Produce	Vegetables	http://goodeggs1.imgix.net/product_photos/bb06giIZRS6lFPxhbXBy_peppers_jalepenos.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
126	Organic Carmen Italian Frying Peppers	Widely considered one of the best flavored peppers on the market, these Carmens are sweet and robust.	1	lb	5.99	5.99	lb	Produce	Vegetables	http://goodeggs1.imgix.net/product_photos/5gGNcqFSDCeUsZFoy3rb_peppers_01.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
128	Organic Cayenne Peppers	These gorgeous, long and ethereal looking peppers should not be passed by. Hang to dry and color your kitchen, or mince while fresh to enhance any dish calling for cayenne.	4	oz	2.99	0.75	oz	Produce	Vegetables	http://goodeggs1.imgix.net/product_photos/6CI5QhfnSaOxBBlowvZQ_x6yurmJhLN73fxEVZAwgWKpY6U5VnFn1RXohFV0uSAE.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
129	Organic Yellow Bell Peppers	Add some beautiful yellow to your next fresh salad or some sweetness to your next fajita mix with these Organic Yellow Bell Peppers! They're refreshingly sweet, crunchy and juicy.	1	lb	4.99	4.99	lb	Produce	Vegetables	http://goodeggs2.imgix.net/product_photos/MN9wxqNBQ32ThVDQKhw2_peppers_bell_yellow_01.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
130	Organic Purple Bell Peppers	Add some beautiful color to your next green salad or complete the rainbow in your next fajita mix with these Organic Purple Bell Peppers! They're refreshingly sweet, crunchy and juicy.	1	lb	4.99	4.99	lb	Produce	Vegetables	http://goodeggs2.imgix.net/product_photos/vBel6SJRQvWOBbnDxIfz_bell_pepper_purple.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
131	Organic Padron Peppers	Impress the whole party with enough of this salty, savory, sometimes spicy appetizer for dozens of guests or a few very hungry padron fans!Padron Peppers are a Spanish appetizer that took hold in our part of the globe over the past ten years. They're a crowd-pleaser with the easiest preparation: simply sauté on high heat in a well-oiled pan until the skin is blistered. Salt, serve, and dig in!	2	lb	14.99	7.5	lb	Produce	Vegetables	http://goodeggs2.imgix.net/product_photos/s665tI8SSgGgVLyDOG00_20160726-FullBelly_Padron_2pd_MG_5827%20%282%29.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
132	Organic Jimmy Nardello Peppers	Delightful fresh or fried, this pepper is one of the sweetest peppers there is. These pepper are a vibrant red when fully ripe and are as beautiful as they are delicious. This Italian heirloom that was preserved by the Nardello family after immigrating to the United States in 1887.	1	lb	7.99	7.99	lb	Produce	Vegetables	http://goodeggs1.imgix.net/product_photos/KtKX5WKHR6eHb25fTZ4H_unspecified-5.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
133	Organic Brussels Sprouts	Tender and young, Brussels sprouts are a seasonal treat that should not be missed. Cook them on high heat to caramelize, which brings out their naturally sweet and rich flavor.Note: organically-grown Brussels Sprouts have had a difficult season due to early heat and then some wet and cold weather.  While Lakeside generally does a pretty good job of sorting through and cleaning up their Brussels, you should expect these to look less perfect than conventional Brussels Sprouts you might find at the supermarket.	1	lb	7.99	7.99	lb	Produce	Vegetables	http://goodeggs2.imgix.net/product_photos/e6moGaonRyKtCui66Kew_Brussels_Spouts_03%20%281%29.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
134	Organic Medium Artichoke Duo	The Santa Cruz and Watsonville region is world renowned for it's artichoke production, and Rodoni Farms has led the way in growing them organically. Artichokes are surprisingly versatile. While they are easily enjoyed by boiling with lemon and eating with a garlic aioli, one should experiment with soups, dips and using the hearts to top a home baked pizza.	2	count	3.99	3.33	lb	Produce	Vegetables	http://goodeggs1.imgix.net/product_photos/O3CPwDCWScm9GbBhNyOB_artichokes.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
135	Calçot Red Scallion	Calçots are a relatively bulb-less onion variety, widely consumed in Catalonia during their annual  Calçotada event. During the event, the onions are charred over an open flame, then wrapped in newspapers, which steams them and allows them to tenderize. The char and greens are removed and the succulent white portions of the plant are dipped in romesco sauce and accompanied by wine, bread, meat, beans and, for dessert, oranges and cava.While we won't stop you from inviting some friends over for your own personal Calçotada, these onions are perfectly delicious used in other applications: sliced thinly raw into salads, as a replacement for scallions, roasted alongside root veggies, or grilled alongside sausages for a sweet and smokey topping.	0.5	lb	2.49	4.98	lb	Produce	Vegetables	http://goodeggs1.imgix.net/product_photos/SytBFNDWRa27c7z05sVY_Onions_Spring.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
136	Organic Baby Green Kabocha Squash Duo	These mini squashes from Pie Ranch are the perfect size squashes for stuffing! Kabocha squash doesn't carry as much sweetness as some of the other winter squashes. This velvety and golden - fleshed squash has a chestnut-like flavor. It packs a punch of umami that makes it the most supremely flavorful of all winter squashes. Goes great in soups, roasts, and curry.	2	count	3.99	2.0	lb	Produce	Vegetables	http://goodeggs1.imgix.net/product_photos/k7OaEYnRQYWGrzPWkGKp_unspecified-8.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
137	Organic Honey Nut Squash	Honey Nut squash are mini Butternut Squash. They have a flavor similar to a butternut but sweeter and have a deep orange color.	2	lb	4.99	2.5	lb	Produce	Vegetables	http://goodeggs2.imgix.net/product_photos/unyhipVaTfeBMSGSUyO4_squash_honey-nut.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
138	Organic Small Green Cabbage	This hearty Brassica adds some bulk to your next stir-fry, or can form the base to a sweet cabbage stew.	1	count	2.49	1.66	lb	Produce	Vegetables	http://goodeggs1.imgix.net/product_photos/2Y3ot8RPTipOoQzn4QtA_live_earth_cabbage_01.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
139	Organic Acorn Squash	Acorn Squash has a light, corn-like sweetness, so it takes on other flavors very well. Its large seed cavity is well suited for stuffing, so load it up with quinoa and seasonal veggies for a healthy main course.	1	count	1.99	1.99	lb	Produce	Vegetables	http://goodeggs1.imgix.net/product_photos/JBQTI9yDRwa33Xmi1iMv_squash_acorn_01.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
140	Organic Baby Red Kuri Squash Duo	These mini squashes from Pie Ranch are the perfect size squashes for stuffing! Red Kuri Squash has a bright red flesh that is slightly nutty and a little bit sweet.This mellow squash is great with butter and herbs.	2	count	3.99	2.0	lb	Produce	Vegetables	http://goodeggs2.imgix.net/product_photos/kmkBpN5xT2y7XLiiUKOU_unspecified-9.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
141	Organic Carnival Squash Duo	Festive and decorative, this variety of squash will color your home until you bake it off. The flesh has a sweet, nutty flavor, and is a great size for stuffing.	2	count	3.99	2.0	lb	Produce	Vegetables	http://goodeggs1.imgix.net/product_photos/HlzeaqGVRtmy04P14tNr_pESmL06ZQPyH5AR0DNO4_squash_02.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
142	Organic Red Kuri Squash	These hubbard-type squash has a distinctly chestnutty flavor that pairs well with alliums, bay leaves and bright sweetnesses like cranberries. The Red Kuri can be hard to skin raw, so it's best cooked with the skin on or cubed and roasted. When fully cooked, the skin is edible, just like a Delicata! It has a smooth, silky orange flesh.	1	count	4.99	1.66	lb	Produce	Vegetables	http://goodeggs2.imgix.net/product_photos/qtOd4xxnQbKeGiqnUuNg_squash_2.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
143	Organic Spaghetti Squash	This incredible squash has spaghetti-like flesh! Bake the squash, fork out the stringy flesh and sauté with onions, garlic and parsley for a unique take on aglio olio!	1	count	4.99	1.43	lb	Produce	Vegetables	http://goodeggs1.imgix.net/product_photos/VeD3MIkxT1aShR7918sM_squash_spaghetti_01.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
144	Organic Butternut Winter Squash	This is the last of the winter squash! Butternut Squash has a nutty flavor and is sweet like a pumpkin. When ripe, the flesh turns increasingly deep orange, and becomes sweeter and richer. It has a long shelf life and is great countertop kitchen staple. Butternut squash pairs well with sage. Caramelize your sage in butter and drizzle upon your perfectly roasted squash for an incredible treat.	1	count	4.99	1.66	lb	Produce	Vegetables	http://goodeggs2.imgix.net/product_photos/9ihqKrteRHmHv7gXe4rz_squash_butternut_02.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
145	Organic Fava Greens	An essential part of many farms' cover-cropping program, and the bearing of some of springtime's most delicious fresh beans, the Fava plant also has velvety soft leaves that boast a sweet, nutty and earthy flavor. Use them raw in a salad with a grassy olive oil, or throw them on top of a pizza. Fava Greens are a springtime treat that you won't want to miss out on!	0.25	lb	2.99	11.96	lb	Produce	Vegetables	http://goodeggs2.imgix.net/product_photos/TdnF184zSvOFQ0NIIdlL_fava_leaves.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
146	Organic Cardoons with Greens	The leaf stalks of the Cardoon plant have an artichoke-like flavor. They are in the thistle family, like sunchokes, sunflowers and artichokes.  They need to be cooked before being eaten, or they are very bitter.  To cook cardoons, take off any leaves with a peeler, as these tend to be too fibrous.  In order to prevent discoloration, place them in acidulated water, They can then be braised or boiled into a stew. In New Orleans, they're frequently battered and deep fried. Larger stalks can sometimes take up to an hour to soften, but the wait is well worth your while when you can add that artichoke-y sweetness to any dish.	1	lb	2.99	2.99	lb	Produce	Vegetables	http://goodeggs2.imgix.net/product_photos/fP90d9iUQzWiK9ZL6oDE_FK1A1770.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
147	Organic Jack-o-Lantern Pumpkin	These beautiful carving pumpkins will ready your stoop, porch or window for Halloween! While many markets that sell mostly organic produce will source conventional Pumpkins for carving, we feel strongly about supporting sustainable growing practices even when the fruit, vegetable or flower isn't being ingested. We still want everyone who touches the produce--from seed to harvest to delivery--to work in a safe environment, free of harmful pesticides, and we still want to protect the immediate and regional environments from synthetic fertilizers.	1	count	4.99	1.0	lb	Produce	Vegetables	http://goodeggs1.imgix.net/product_photos/jEqtEu4iShCnPVx5WtpG_pumpkin.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
148	Organic Cinderella Pumpkin	These large, beautiful, lobed Pumpkins have a red-orange skin with a creamy, rich flesh. They sometimes have a dark green webbing to them and the occasional (spooky!) scarring, but that just makes them look all the cooler and shouldn't affect their flavor at all. They're beautiful enough to replace your standard Jack-O-Lantern Pumpkin, and delicious enough to roast into your next pumpkin pie filling.	1	count	14.99	1.5	lb	Produce	Vegetables	http://goodeggs1.imgix.net/product_photos/cQLSIgzOS6C4ci5dWdtK_20161027-CinderellaPumpkinTrio_MG_5377.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
149	Organic Red Kabocha Squash	Kabocha is also called the Japanese Pumpkin. It has bright red colored skin and is shaped like a squat pumpkin! With a more complex flavor than a sugar pie pumpkin, these beauties are actually higher on the brix scale (sugar content measurement) than the sugar pies or butternuts. Once you try these, you'll never go back!	4	lb	7.99	2.0	lb	Produce	Vegetables	http://goodeggs2.imgix.net/product_photos/DDc2hCQyT6yY99BoCZ8Q_redkabocha.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
150	Organic Pink Beauty Radishes	Crunchy with a slight kick, these beautifully vibrant radishes will add some pizazz to your next green salad.	1	bunch	1.99	7.96	lb	Produce	Vegetables	http://goodeggs2.imgix.net/product_photos/q1wdqvezQC6A7YnAV5Bx_radish_03.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
151	Baby French Breakfast Radishes	Martin picks his French Breakfast Radishes small, so they're all sweet, without the bitterness often associated with overgrown radishes. Chefs love working with radishes this small for their tenderness and sweetness.Try them thinly sliced on a piece of toast with butter, salt and pepper.	1	bunch	2.49	9.96	lb	Produce	Vegetables	http://goodeggs2.imgix.net/product_photos/u0VPQInuSueaWy6VZek2_radish_breakfast_03.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
152	Watermelon Radishes	With its gorgeous neon pink interior and its mild kick, these gorgeous fall radishes will brighten up any salad. For a new adventure with these beautiful roots, try roasting them with a bit of salt and olive oil, along with turnips, rutabagas and other root veggies.	1	lb	4.99	4.99	lb	Produce	Vegetables	http://goodeggs2.imgix.net/product_photos/BmxgRHfFQYaxAYrLq3tE_radish_watermelon_03%20%281%29.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
153	Organic Jerusalem Artichoke	Great for gratins, mashes and roasted vegetable medleys, Jerusalem Artichokes (aka Sunchokes) are a deliciously sweet tuber of a plant in the sunflower family.  They have a sweetness reminiscent of artichokes, with a texture closer to that of a potato, but a bit less starchy.	1	lb	5.99	5.99	lb	Produce	Vegetables	http://goodeggs1.imgix.net/product_photos/mgCclCTTVKbTsicPzQrQ_sunchoke_04.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
154	Organic Daikon Radish	These beautifully white Daikon Radishes from Riverdog are mildly flavored, with barely any kick, but plenty of crunch.	1	lb	2.49	2.49	lb	Produce	Vegetables	http://goodeggs1.imgix.net/product_photos/msFJxKO5SFO550LTElXC_Riverdog_Daikon_One_Pound.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
155	Organic Loose Scarlet Queen Turnips	These vibrant and beautiful turnips can be boiled, roasted, steamed, or eaten raw. Their flavor is among the freshest of all root veggies, as they're a little sweet, and somehow very light on the palette. Mash some up with other roots for a bit of a kick, slice them up and put them on your salad for some extra zip, roast them along side your root medley and they won't disappoint.	1	lb	2.79	2.79	lb	Produce	Vegetables	http://goodeggs1.imgix.net/product_photos/M9N7zadoQfKr3JU5imlw_turnips_01.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
156	Organic Purple Top Turnips	Riverdog Farm's Purple Top Turnips are crunchy, creamy, and ever-so-slightly bitter. They are high in Vitamins B6 and C, as well as folate, iron, potassium and calcium. They are considered a "blood builder" (promote red blood cell growth) as well as a blood detoxifier, and are a potent ally when fighting a cough or relieving a sore throat. Try mashing some in with your potatoes or roasted under a chicken. 	1	lb	3.99	3.99	lb	Produce	Vegetables	http://goodeggs1.imgix.net/product_photos/M0wDAEASmyI7th49Dm3w_RC5GNwzQTOSYjW3dyDli_Turnip-Purple-Top.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
157	Organic Black Spanish Radish	These black radishes have a white interior and a spicy taste. Slice thin for a green salad, thicker pieces in a cold, prepared salad or snack on them raw with with a pinch of salt.	1	lb	3.79	3.79	lb	Produce	Vegetables	http://goodeggs1.imgix.net/product_photos/5imUZsvtRCO1Y4Yt7Tra_9EsatC25Tkyrve1rJey6_Radishes-Black.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
158	Organic Black Spanish Radishes	Crunchy with a pungently spicy skin, these Organic Black Spanish Radishes are as delicious as they are beautiful.	1	lb	3.99	3.99	lb	Produce	Vegetables	http://goodeggs1.imgix.net/product_photos/4MoBkdszR2Ul3GdoChDK_Radishes-Black_cut.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
159	Organic Sugar Pie Pumpkin	These little sugar babies from Live Earth Farm are the perfect size for a family meal! Try them roasted and then baked into pies or whizzed into creamy, dreamy pumpkin soups. Tis the season!	1	count	2.99	1.5	lb	Produce	Vegetables	http://goodeggs1.imgix.net/product_photos/65uF2A4iTIS3wwxg9JbZ_hdXkIBhVT9eSMkfwjZhg_BiabuV2oKAQZEl2q22YnNnbQTJQ0KDHTnwT6pqZnleQ.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
160	Organic Celery Root with Tops	Don't be fooled by the gnarly attached to this fledgling celery plant: its flavor is anything but! With the delicious sweetness and slight salinity of a celery stalk, but a texture closer to a not-too-starchy potato, Celery Root (aka Celeriac) is a great vegetable for soups, mashes or roasting medleys.	1	head	2.29	2.86	lb	Produce	Vegetables	http://goodeggs1.imgix.net/product_photos/aIVFp2PwRuWtVWnAqWIV_celeriac%202%20%281%29.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
161	Pre-Washed Organic Baby Spinach	Terra Firma's Baby Flatleaf Spinach has a deep green color and a springy, crisp texture that makes it perfect for a fresh salad or sandwich topping.  It has a sweet flavor that melts in your mouth! Not to mention, its hearty leaves hold up in most recipes that call for spinach—from soups and dips to lasagnas to quiches!	0.5	lb	2.99	5.98	lb	Produce	Greens	http://goodeggs1.imgix.net/product_photos/YY8ohSnfQbWPkmBf7Tvi_spinach.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
162	Organic Baby Dino Kale	Dino Kale, Lacinato Kale, Tuscan Kale, Cavolo Nero or Blue Kale: whatever you call it, we call it delicious! These tiny leaves are harvested from very young plants, so they are extra tender and sweet. They will cook much more quickly than large kales and are also delicious raw!	0.5	lb	3.99	7.98	lb	Produce	Greens	http://goodeggs2.imgix.net/product_photos/iwYQyKlTSsKpWTfXt2Ix_q5LaXlxKkCJ3Ef_FSIXriiBv2B4OkXRqAkh_xZFk3pU.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
163	Organic Bunched Spinach	Full Belly Spinach has a deep green color and a springy, crisp texture that makes it perfect for a fresh salad or sandwich topping.  It has a sweet flavor that melts in your mouth! Not to mention, its hearty leaves holds up in most recipes that call for spinach—from soups and dips to lasagnas and quiches!	1	bunch	2.99	5.98	lb	Produce	Greens	http://goodeggs2.imgix.net/product_photos/fxtIjG8eTAKIBplXMih9_Spinach.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
164	Organic Lacinato Kale	Dino Kale also known as Tuscan or Lacinato Kale has a wonderful nutty flavor and retains a lot of its firm texture when cooked. Try a bit of garlic, and olive oil in a quick sauté, then add a quick squeeze of lemon juice and a pinch of salt.	1	bunch	2.49	4.98	lb	Produce	Greens	http://goodeggs2.imgix.net/product_photos/hmNNX1IKSuCbRME1pRRW_kale_lacinato_02.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
165	Organic Baby Red Russian Kale	The tender young leaves of this baby Red Russian Kale are smooth and sweeter than other varieties. They are from the baby Kale plant and are perfect for sautéing.	0.5	lb	3.99	7.98	lb	Produce	Greens	http://goodeggs2.imgix.net/product_photos/Y6SAnrXlTTWrhlm9GEha_NED9dsuIQGm7Q5GuznMm_kale_red_bag.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
166	Organic Baby Green Curly Kale	The tender young leaves of this baby Green Curly are tender and sweet. They are from the baby Kale plant and are perfect for sautéing.	0.5	lb	3.99	7.98	lb	Produce	Greens	http://goodeggs2.imgix.net/product_photos/BmfTAE7iQ4WU80rJmoGj_kale_baby.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
167	Organic Mixed Baby Kale	The Knolls are at it again with another one of their delicious greens: this time, it's a mix of baby kales! Exact varieties may vary week to week, but they'll always be delicious!	0.5	lb	4.99	9.98	lb	Produce	Greens	http://goodeggs2.imgix.net/product_photos/sJYoL7AeRIh70eYMB2bw_kale_baby_mix_01.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
168	Organic Green Curly Kale	Tender and sweeter than the more common Lacinato Kale, Green Curly Kale can be made into the perfect raw salad. Massage with olive oil and salt and top with a bit of lemon. Add some slivered almonds and a mild goat cheese, and enjoy!	1	bunch	2.49	4.98	lb	Produce	Greens	http://goodeggs2.imgix.net/product_photos/NJMDJiAGQcG3N89IVClJ_Ouroboros_Aquaponic_Green_Curly_Kale.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
169	Organic Juicing Lacinato Kale	Too small to bunch, slightly sunburnt, a small hole or tear: there are many reasons Lacinato Kale might end up getting tossed instead of sold on the retail shelf. We're happy to partner with Alba Organics to find a happy home for these perfectly delicious loose leaves of Lacinato Kale. They're great for juicing, making chips, or even sautéing!	0.5	lb	1.79	3.58	lb	Produce	Greens	http://goodeggs2.imgix.net/product_photos/UKof4UH9T4GuYrJGkIQg_Kale_dino_03.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
170	Organic Lacinato Kale Trio	Dino Kale also known as Tuscan or Lacinato Kale has a wonderful nutty flavor and retains a lot of its firm texture when cooked. Try a bit of garlic, and olive oil in a quick sauté, then add a quick squeeze of lemon juice and a pinch of salt.	3	bunch	5.99	3.99	lb	Produce	Greens	http://goodeggs2.imgix.net/product_photos/YJSrNV5R3uA3ce5WSUTf_20160607-Lacinato_KaleTrio_MG_1384%20Save1.jpeg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
171	Organic Spinach	With a deeper flavor than the more ubiquitous Baby Spinach, these hearty bunches feature larger leaves and more sizable stems that can withstand a quick sauté without losing texture.	1	bunch	2.49	4.98	lb	Produce	Greens	http://goodeggs1.imgix.net/product_photos/cfaYKd4QhCEMTmrkPc3E_Riverdog_Bunched%2BSpinach.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
172	Organic Lacinato Kale	Lacinato kale has been cultivated for centuries and is a true staple of our kitchens. Also known as dinosaur kale, Italian kale, or cavolo nero, its earthy and slightly bittersweet flavor lends itself perfectly to salads, sautés, soups, casseroles, gratins, and smoothies. Try pairing it with a salty, strong cheese like parmigiano or manchego and a sweet dried fruit for a delicious and nutritious salad that deserves a place on the Thanksgiving table.	1	bunch	2.29	4.58	lb	Produce	Greens	http://goodeggs2.imgix.net/product_photos/zmmRZRRPQRWzOJF9pwZb_kale_lacinato_02.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
173	Organic Lacinato Kale Trio	Lacinato kale has been cultivated for centuries and is a true staple of our kitchens. Also known as dinosaur kale, Italian kale, or cavolo nero, its earthy and slightly bittersweet flavor lends itself perfectly to salads, sautés, soups, casseroles, gratins, and smoothies. Try pairing it with a salty, strong cheese like parmigiano or manchego and a sweet dried fruit for a delicious and nutritious salad that deserves a place on the Thanksgiving table.	1	bunch	4.99	9.98	lb	Produce	Greens	http://goodeggs2.imgix.net/product_photos/Pb07Yl4oS5y2Uof7fOb7_20160607-Lacinato_KaleTrio_MG_1384%20Save1.jpeg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
174	Pre-Washed Organic Salad Mix	A delightfully fresh mix of sweet, tender baby lettuces with other baby salad greens. You might find small leaves of frisee, tatsoi, radicchio, escarole, baby beet greens and other greens with earthy, spicy and/or bitter flavors.Comes pre-washed, though we always suggest an extra rinse!	0.5	lb	3.79	7.58	lb	Produce	Greens	http://goodeggs1.imgix.net/product_photos/Y1yIPH3RpaFIgUJuiJcw__BWnWRQNxD3qcTNVtBFGuNAFEJdOd4_b71bNdP75Wtw.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
175	Baby Arugula	Martin grows some of the most delicious Arugula in the world. Because it's greenhouse-grown, it's delicate and tender, but it doesn't skimp on having a nice spice to it. Chefs at some of San Francisco's most renowned restaurants swear by Martin's Arugula, and once you try some, you'll swear by it, too.	0.5	lb	4.99	9.98	lb	Produce	Greens	http://goodeggs2.imgix.net/product_photos/IfNzA1XISDiO3PlIVrRr_FK1A6779.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
176	Organic Mixed Baby Head Lettuces	Farmer's choice of that day's best lettuces. Varieties may include Green Little Gem, Red Little Gem, Baby Red Romaine, Red Oakleaf, Green Oakleaf, Mini Red Butterhead, and Red Lolla Rossa. Small, tender, sweet and oh-so-pretty!	0.5	lb	3.99	7.98	lb	Produce	Greens	http://goodeggs1.imgix.net/product_photos/qItfp61TSrVZ1L12F3gf_dD2YyI9RoJIBjfb4xVBtQ3nkvK-UveSDHs8ShuO_qis.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
177	Aquaponic Living Butter Lettuce	A duo of Red and Green Butter lettuce.  Butter lettuce is named for its smooth buttery texture and delicate flavors.  Excellent as a stand alone salad or mixed with other types to create a variety of textures, flavors and colors.  Our lettuce comes with the roots still attached for maximum freshness and flavor!By buying our Duo of Butterheads, you just saved 14+ gallons of water compared to similar lettuce grown in soil.	2	head	4.99	6.65	lb	Produce	Greens	http://goodeggs2.imgix.net/product_photos/Jitk0mA4T7wTAlIQbatk_lettuce_03.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
178	Organic Pre-Washed Salanova Salad Mix	Salanova is a beautiful mix of baby Red and Green Butter and Oak Leaf Lettuce varieties. Sweet and tender, perfect for a beautiful salad. Wash, dress and serve!Comes pre-washed, but we always suggest an extra rinse!	0.5	lb	3.99	7.98	lb	Produce	Greens	http://goodeggs2.imgix.net/product_photos/odG1Xm0CRnDOzfnmx9RO_salad_mix_05.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
179	Pre-Washed Aquaponic Deluxe Salad Mix	A tantalizing mixture of our best lettuce with baby Red Veined Sorrel, known as Hearts of Fire, Ruby Streaks Mustard Greens, Tatsoi, and a touch of Watercress to add texture and a hint of sour and spice to your evening salad.By buying our Deluxe Salad mix, you just saved 7+ gallons of water compared to a similar mix grown in soil!	0.5	lb	4.99	9.98	lb	Produce	Greens	http://goodeggs1.imgix.net/product_photos/BpQuWJART0KvyLLTcCYQ_JLbuiqGntNdBBbdHhg0jxmSoydYEri26ZJ41boS3ynM.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
180	Aquaponic Deluxe Salad Fixings	All the delicious extras that turn Ouroboros' famous Aquaponic Salad Mix into their even more delicious Aquaponic Deluxe Salad Mix.The Deluxe Fixings are usually a mix of Ruby Streaks Mustard, Mizuna, Hearts of Fire, Watercress and Tatsoi.	4	oz	2.49	0.62	oz	Produce	Greens	http://goodeggs1.imgix.net/product_photos/okUhtetQLKN4op43eSoj_Ouroboros_Deluxe_Fixings.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
181	Organic Romaine Lettuce	Crisp Romaine Lettuce has sturdy leaves that are perfect for any salad, but are classicly used to make Caesar salads. This lettuce grows in tall heads with a firm rib down the center of each leaf. Unlike most lettuces, it can tolerate some heat. Try using the outside leaves for a loose salad and grill the romaine heart! Simply cut the romaine heart in half and brush with a herb vinaigrette, then throw it on the grill! It's delicious and versatile.	1	head	2.29	4.58	lb	Produce	Greens	http://goodeggs2.imgix.net/product_photos/M8jiDnCvSjWComch9L6K_lettuce_01.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
182	Organic Chioggia Radicchio	Crisp, tender, and slightly bitter, this radicchio makes a tasty addition to a cool-season salad and is also delicious gently braised in a salty, vinegary broth.	1	head	3.99	7.98	lb	Produce	Greens	http://goodeggs2.imgix.net/product_photos/JZGNqJxQSg4mPJiGZoWZ_FK1A9469.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
183	Organic Wasabi Arugula	Crisp, green leaves with the same wasabi flavor as in the Japanese condiment.  An intense peppery flavor as well as a a slight hint of arugula.  They come from the mustard family, along with broccoli, cabbage, radish and collard greens.They're high in vitamins C, A, Calcium and Iron.Wasabi Arugula is most popular eaten raw, as it loses its peppery taste when cooked.  It's often used as an accent in salads, with Ahi Tuna, or in sushi.  Add it to your favorite green salad--it's great paired with sweet, creamy dressings--or include in wraps or sandwiches. For a quick project and a special treat, substitute Wasabi Arugula for basil to make a peppery pesto.Enjoy!	1	count	4.99	1.81	oz	Produce	Greens	http://goodeggs1.imgix.net/product_photos/BXTCTsRpSmirW13DnSBg_Hikari_Wasabi_Arugula_Clamshell.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
184	Pomegranate Punch Lettuce Duo	Cunchy and sweet like a Little Gem, with a beautiful crimson color, these Pomegranate Punch lettuces will be the star of your next salad.	2	count	4.99	8.32	lb	Produce	Greens	http://goodeggs2.imgix.net/product_photos/yLHKsIchQGucYQ0CJkAz_20160714-OakHill_PomegranitePunchDuo_MG_5527.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
185	Aquaponic Living Baby Lettuce Trio	A trio of our freshest, most delicious baby head lettuces.  Baby lettuces add a tenderness and sweetness to any salad combination.  We include three different varieties to provide a mixture of flavors, textures and colors to make your salad mix exceptional!By buying out Baby Lettuce Trio, you just saved 12+ gallons of water compared to lettuce grown in soil!	3	head	4.19	\N	\N	Produce	Greens	http://goodeggs2.imgix.net/product_photos/AjFdA1XVSWaO8wZtxp3h_HaXtfUA7n5WWwosQm_qAvn9ttVRLPzoAjq2n6GoIzio.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
186	Organic Escarole	Escarole is one of the sweetest of the characteristically bitter chicory family.  This beautifully blanched head of escarole can be braised, grilled or chopped up raw into a salad.  Top it with some fat, salt and acidity to turn what little bitterness this winter veggie has into a bright and lively symphony of flavors.	1	head	3.99	7.98	lb	Produce	Greens	http://goodeggs2.imgix.net/product_photos/g51zrTliQpTlEFKIMawN_Escarole.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
187	Organic Little Gem Lettuce	The prince of lettuces, Little Gem delivers what its name promises. A perfect blend of crunchy and tender, this is a widely versatile variety and favorite of many a lettuce aficionado. Whole leaves of this little beauty can be tossed into a salad, a mild flavor that can handle either sweet or savory dressings with ease.	2	head	3.49	6.98	lb	Produce	Greens	http://goodeggs2.imgix.net/product_photos/dPNAvG33Tx2iKjyWeWcO_Little%20Gem%20Duo%20LIve%20Earth.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
188	Organic Batavian Lettuce	Classically crisp and versatile, Batavian Bibb lettuce has a mouthwatering crunchy texture and a mellow, sweet flavor.	1	head	2.99	5.98	lb	Produce	Greens	http://goodeggs1.imgix.net/product_photos/Za5D02Q3QXCThp5ft9dX_lettuce_03.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
189	Organic Red Butter Lettuce	Butter Lettuces are just as their name suggests, like butter! Their soft cup shaped leaves have a buttery, velvety texture. They are loosely shaped, often resemble a flowering rose and will make a beautiful and tasty salad.	1	count	2.49	4.98	lb	Produce	Greens	http://goodeggs2.imgix.net/product_photos/d3kRoRdQsKjBO9wcNXuC_Lettuce_Red_Leaf.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
190	Organic Watercress	A little peppery with a delightful tang, watercress is an awesome, versatile green. It makes a lively addition to any salad, or can be blended with potatoes, onions, and garlic into a light soup.	1	bunch	3.49	\N	\N	Produce	Greens	http://goodeggs1.imgix.net/product_photos/yjdRKBPUTy2UFnIRiP1w_watercress.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
191	Organic Rainbow Chard	As tasty as it is colorful, Rainbow Chard  has a balanced, slightly savory flavor. Try pickling the stems for a delightful, beautiful snack.	1	bunch	2.99	5.98	lb	Produce	Greens	http://goodeggs2.imgix.net/product_photos/ZXZwEw3uRCWQXar7L4on_CPk4j0uNlyfgouMO2QZvofrY6CxPgAd3TQJLZpHihEg.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
192	Organic Baby Rainbow Chard	Baby Mixed chard is the younger leaves of the chard plant. The younger shoots are more delicate and sweet than the mature versions which makes this mix great for adding to a salad or lightly sauteing.	0.5	lb	3.99	7.98	lb	Produce	Greens	http://goodeggs2.imgix.net/product_photos/vIJi0XDSSH2HLVqGashN_wywVnMioQdii2c4n87w1_mixed_chard_04.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
193	Organic Green Cabbage	Sweet and crunchy cabbage adds texture to any dish. It's great raw or cooked!	1	count	2.49	1.25	lb	Produce	Greens	http://goodeggs1.imgix.net/product_photos/xCKqivZBTWmPWWFJr88C_unspecified-5.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
194	Organic Large Red Cabbage	Sweet and hearty, Lakeside Organic's Red Cabbage is perfect for soups, stews and slaws!	1	count	2.99	1.2	lb	Produce	Greens	http://goodeggs2.imgix.net/product_photos/vvYw5oKZRYqhkIs8IlhQ_eat_well_cabbage_red.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
195	Organic Collard Greens	Beautiful organic Collard Greens from Full Belly Farm. The collard plant produces large, dark-colored, edible leaves. These greens are high in vitamin C and soluble fiber, and contain multiple nutrients with potent anticancer properties! Collards are closely related to cabbage and broccoli. We like to pair them with fresh black eyed peas!	1	bunch	2.29	4.58	lb	Produce	Greens	http://goodeggs1.imgix.net/product_photos/UwD66Yw7RcCPMSWWuKzw_Collards.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
196	Organic Pea Greens	These early season Pea Greens are sweet and tender.  They taste just like the pods or peas themselves, but a bit grassier. Sauté them quickly with some Green Garlic and Spring Onions and salt to taste.  Pea Greens are also delicious coarsely chopped into a raw salad.From time to time, Rick Knoll will harvest his Pea Greens in their flowering stage, and you can occasionally see baby peas just beginning to form from the edible flower!	0.5	lb	4.99	9.98	lb	Produce	Greens	http://goodeggs1.imgix.net/product_photos/yyWdodrTRPuGvaXupQfx_Knoll_Farms_Flowering_Pea_Greens_Half_Pound.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
197	Bull's Blood Beet Greens	Bull's Blood Beet Greens are beautiful, red greens that can be used fresh or cooked down. They have a naturally sweet-tangy and savory flavor that set them apart from other braising greens.	0.5	lb	3.99	7.98	lb	Produce	Greens	http://goodeggs1.imgix.net/product_photos/BnYYRfxlSGCPjlUS67cj_Screen%20Shot%202016-10-27%20at%207.46.17%20PM.png?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
198	Organic Braising Mix	Riverdog's braising mix includes a beautiful array of baby greens including the best of what's in the field that day: baby chard, curly kale, dino kale, bok choy and red russian kale, among others!	0.5	lb	4.29	8.58	lb	Produce	Greens	http://goodeggs2.imgix.net/product_photos/xdgQjG01RkaHfLTQg4sD_KQ3r9BtYSYu0CaXJaC7x_FK1A0049.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
199	Stinging Nettles	Nettles grow like a weed, and are often discarded as such, but can be used as the base of pesto, as an addition to a hearty marinara sauce, or in soups and stews. Their flavor is similar to spinach, but with an earthier or nuttier tone.Do not eat Nettles raw or handle them bare-handed! Nettle leaves and stems have tons of stinging hairs (trichomes), whose tips act as needles when touched, injecting natural compounds that can cause painful stings. Nettles must be soaked in water or cooked to remove the chemicals from the plant, allowing them to be handled and eaten without risk of stinging.Nettles are rich in vitamins A and C, iron, potassium, manganese, and calcium. Nettles can also be composed of up to 25% protein by dry weight, which is very high for a leafy green.	0.25	lb	2.99	11.96	lb	Produce	Greens	http://goodeggs2.imgix.net/product_photos/8zRKeuVpQx2xEBjOXPdw_nettles_01%20%281%29.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
200	Organic Mizuna Greens	Mizuna is a Japanese mustard green with thin, delicate leaves. It has a very mild radish flavor and is often used in salad mixes or with many Japanese dishes such as sashimi or in soups.  It's best used raw or very lightly cooked.Mizuna is high in vitamins C, A, K, Calcium and Fiber.100g of Mizuna contains: 70 mg of vitamin C (100% dv)151 mcg vitamin A (30% dv)257 mcg vitmain K (200%)1790 mcg beta carotene115 mg Calcium (14% dv)3.2g fiber	1	bunch	3.49	11.63	lb	Produce	Greens	http://goodeggs2.imgix.net/product_photos/0LLZF5ijSl6jsol1ifJi_Hikari_Mizuna_Tender_Bunch.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
201	Organic Komatsuna Greens	These amazingly tender Japanese mustard greens have a spinach-y taste with a mild radish-y kick.  It can be eaten raw or cooked.  It's great for stir-fries--garlic and shiitake mushrooms go amazingly well with Komatsuna--or hotpot dishes. They were greenhouse grown, giving them a light flavor and a delicate texture.They're high in vitamins C, A, K, Calcium and Fiber.100g of Komtsuna contains: 130mg of vitamin C (162% dv)495mcg vitamin A (61% dv)210mg Calcium (21% dv)2.8g fiber	1	bunch	3.49	6.98	lb	Produce	Greens	http://goodeggs1.imgix.net/product_photos/fzNtDId1SqmUAAaxUCsP_Hikari_Komatsuna_Tender_Bunch.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
202	Savoy Cabbage	Savoy cabbage is tender and sweet, perfect for a quick stir-fry or in an Asian-inspired slaw. It's also great for salads or vegetable wraps.	1	count	5.29	1.51	lb	Produce	Greens	http://goodeggs2.imgix.net/product_photos/X0DpUjdQVS3feHfqBonN_4y-NsCExYvuI185hV-3MEB2rL7XC1vkNnxXuXEN5zPs.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
203	Organic Baby Bok Choy	Sweet, tender and crunchy, this beautiful Baby Bok Choy can be the main ingredient in your next stir-fry. Chop up the stem coarsely and throw it in a hot pan 2 minutes before the leaves, then remove from heat before any of the Bok Choy gets too soft. Pairs well with soy sauce and garlic.	1	lb	1.99	1.99	lb	Produce	Greens	http://goodeggs2.imgix.net/product_photos/6NOOzLvbTDiEROHONoQp_bokchoy_03.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
204	Organic Spigariello Riccia	Spigariello is an heirloom broccoli plant with sweet and tender leaves.  Riccia is a curly-leafed Italian Spigariello variety that has it all: the classic sweetness of a winter-grown Brassica, a slight mustardy kick, reminiscent of Broccoli Raab, a substantial stem that's crunchy, not woody, and all that manifested in a beautifully serrated dark green leaf.  Move over, Kale, Spigariello's here.To cook Spigariello, start by adding shallots and garlic or any other allium to a cast iron with high heat oil.  Chop up the stems first and throw them into the pan once the shallots and garlic have begun to sweat a bit. After two minutes, add the leaves, coarsely chopped.  Shake the pan around to make sure the shallots don't burn, then remove from heat after 3-4 minutes, before the greens are full cooked.  They'll continue to wilt and become more tender after.  Season to taste, and add some red pepper flakes for an extra kick or some raisins or dried cranberries to bring out the Spigariello's natural sweetness.	1	bunch	2.49	6.23	lb	Produce	Greens	http://goodeggs1.imgix.net/product_photos/J5MxlTmYQt6XJDc19ZoI_GoodEggs027644.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
205	Organic Baby Spigariello	These baby leaves of the Spigariello plant--an heirloom Italian Broccoli variety--have the Brassica sweetness of Broccoli with the tenderness of a Baby Kale.  It's great in hearty white bean soups or quickly sautéed with some olive oil, garlic and shallots, then hit with a bit of lemon juice at the end to bring out the sweetness. For a hearty salad, massage the Spigariello Greens with some buttery olive oil and let it soak in, covered in the fridge, for an hour or two.  Top with a pungent goat cheese, some slivered or toasted almonds, raw or pickled shallots, and a hit of lemon juice.	0.5	lb	3.99	7.98	lb	Produce	Greens	http://goodeggs2.imgix.net/product_photos/rf8tbLNGQQW1tV5ZwfDQ_unspecified-9.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
206	Aquaponic Living Baby Red Pac Choi	This beautifully purple-red variety of Pac Choi (aka Bok Choy) is tender and sweet.  Enjoy raw, chopped up in a salad, or lightly steamed.	1	count	1.79	5.97	lb	Produce	Greens	http://goodeggs2.imgix.net/product_photos/rn2uSlmSYix72LxPCqHg_FK1A3111.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
207	Organic Pea Shoots (4oz)	Very young green pea shoots with a fresh pea flavor for salads, wraps, quick stir fry, or wilting with hot water. Eat fresh in salads for that fresh pea flavor all year. Great crunch in a fresh spring roll. For an Asian noodle dish, place pea shoots in the colander and drain the hot noodle over them for the perfect wilt. For your stir fry drop the pea shoots in to retain some crunch. All young greens concentrate the nutrition of the mature vegetable.Packed with vitamins A, C and folic acid, Pea Shoots are a delicious, nutritious modern slant on the classic British garden pea. Lyndel Costain, B.Sc.RD, award winning dietitian and author of Super Nutrients Handbook, says, “Pea Shoots are a nutritious leaf with high levels of vitamin C and vitamin A. A 50g bag of these tasty greens offers more than half of the RDA for vitamin C, a quarter of the RDA for vitamin A and significant amounts of folic acid. It is great news that this healthy and simple to prepare vegetable leaf is readily available to consumers.”From http://www.peashoots.com/peashoots-nutrition.htm	4	oz	3.99	1.0	oz	Produce	Greens	http://goodeggs1.imgix.net/product_photos/8re0JSqSYyDfeB9uxwbI_UYqaOC-Tum2HJrBVLxp_fBox5ZfHFN0FyyHSxBjCxDk.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
208	Organic Micro Mix	Amazing flavors unfolding on your tongue with this mix. From solid yummy broccoli to zinger arugula, and a few in between. Get all the different nutritional benefits that micro greens offer individually, combined in every mouthful.From the USDA Agricultural Research Service: In general, microgreens contained considerably higher levels of vitamins and carotenoids—about five times greater—than their mature plant counterparts, .......http//en.wikipedia.org/wiki/Micro_greens 	2.5	oz	4.49	1.8	oz	Produce	Greens	http://goodeggs1.imgix.net/product_photos/bIuHJ3Tq6gJaXWRiIFLw_YInwhLt1EKnEmmkOVCfozeC5F0j51FdsQaDpTE_dMx4.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
209	Organic Salad Mix	A combination of some of your favorite New Natives micro and baby greens. Sunflower Greens, Pea Shoots, and our Micro Arugula, Broccoli, Kale, Kohlrabi, and Daikon Radish ready to mix straight into your salad bowl. With New Natives' Salad Mix it is easier than ever to bolster your salad with great nutrition and amazing flavor.From the USDA Agricultural Research Service: In general, microgreens contained considerably higher levels of vitamins and carotenoids—about five times greater—than their mature plant counterparts, .......http//en.wikipedia.org/wiki/Micro_greens 	4	oz	4.99	1.25	oz	Produce	Greens	http://goodeggs1.imgix.net/product_photos/OmGkEWwUREGvDRPcZiBp_T2kwFO0Vo4x3v-x7bMif-0IxJiiipEJbLbue5fJfeHQ.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
210	Organic Micro Arugula	Very Arugula!! Super packed with flavor and nutrition. Sprinkle our little greens on your salad, pasta just before you serve it, or try them on sandwiches and in wraps. From the USDA Agricultural Research Service: In general, microgreens contained considerably higher levels of vitamins and carotenoids—about five times greater—than their mature plant counterparts, .......http//en.wikipedia.org/wiki/Micro_greens 	2.5	oz	4.49	1.8	oz	Produce	Greens	http://goodeggs1.imgix.net/product_photos/gb8VcfESt6uxDZhPgkya_AhBdUmeQyVzkhsC_4BPN0lfPTTd2v78g_nrkYjEFpnk.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
211	Organic Protein Crunch (Sprouted Mixed Beans)	Protein crunch is a mighty mix of germinated peas, lentils, adzuki and mung beans. Enjoy this protein-packed crunchy treat raw or cooked. USDA Certified OrganicAdd some protein to your salad Add to soupsRoast or pan fry (when lightly oiled)Substitute them for chickpeas in hummusFor more recipes and nutritional info please visit www.localgreensfarm.com	8	oz	4.99	0.62	oz	Produce	Greens	http://goodeggs2.imgix.net/product_photos/WPqmRJe6TjW6adxcM9FW_FK1A7465.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
212	Organic Micro Broccoli	This is the really, really nutritious one and it tastes great! Top off a salad, soup, rice bowl, sandwich, or just eat em out of the container. Crunchy, fresh, and full of flavor.	2.5	oz	4.49	1.8	oz	Produce	Greens	http://goodeggs1.imgix.net/product_photos/6ANVIwotQNS9h0DI48wu_nEVAZCOBVtqfEa8kEpqgB8adHd7ho6jfrfFggAyluy4.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
213	Organic Baby Radish Greens	Baby Radish Greens (aka Kaiware, or daikon sprouts), are great tasting, versatile and super nutritious for you.  They are an excellent base for your salad, added to a soup, put onto a sandwich or as a garnish for tacos.  They are a must for sushi.  These little guys add a great spicy kick to whatever they are accompanying.   For some people, eating them raw is a little too intense.  In that case, or for a change of pace, they can  also be lightly cooked in a soup or saute and this will mellow out the flavor and spice considerably.Kaiware has been studied recently in Japan for its ability to fight cancer and results have been very promising.  One study called kaiware "a naturally multipotent chemopreventive agent".We hope you'll try it for yourself.... I don't think that you'll be disappointed.	2	oz	2.99	1.5	oz	Produce	Greens	http://goodeggs1.imgix.net/product_photos/4bkIRv0gS8ywJq7uCEMv_Baby%20Radish%20Greens%202oz%20Green%20Skies%20Vertical.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
214	Organic Micro Kale	Local Greens' Micro Kale  it's USDA Certified Organic and hydroponically-grown.USDA Certified OrganicHydroponically-grown in Berkeley, CAGrown using 1 cup of waterPerfect for adding to a green salad mix or for topping eggs, soups or any other dishFor more recipes and nutritional info please visit www.localgreensfarm.com	2	oz	4.99	2.5	oz	Produce	Greens	http://goodeggs2.imgix.net/product_photos/LUVw8K7wSLeR6YfrAoVF_FK1A7508.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
215	Organic Sunflower Greens (4oz)	Nutty Sunflower Greens are perfect for salads, green smoothies, wraps, or sandwiches. Sunflower seed flavor in a crunchy green. \n\n\n\n\n\n\n\nNutritional info:\nVitamins A, B, C and E\nCalcium, Chlorophyll, Iron, Magnesium, Niacin, Phosphorus, Potassium\nAmino Acids\nProtein: 20-25%	4	oz	3.99	1.0	oz	Produce	Greens	http://goodeggs1.imgix.net/product_photos/og0Jo9faS5uUFlGjEdLh_Broccoli%20%20IMG_7566.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
216	Organic Salading	Local Greens' Salading is combination of three of their best products: Pea Shoots, Protein Crunch (a mighty mix of germinated peas, lentils, adzuki and mung beans) and Sunflower Shoots. It's USDA Certified Organic and hydroponically-grown.USDA Certified OrganicHydroponically-grown in Berkeley, CAGrown using 1 cup of waterPerfect for an on-the-go salad, or to add to a green salad mix.For more recipes and nutritional info please visit www.localgreensfarm.com	4	oz	4.99	1.25	oz	Produce	Greens	http://goodeggs2.imgix.net/product_photos/hkHFkwN9RlckG5cQiZV7_FK1A7524.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
217	Organic Germinated Peas	Sprouted Peas are just newly germinated, nutritionally-dense peas.  Enjoy this protein-packed crunchy treat raw or cooked. USDA Certified OrganicAdd some protein to your salad Add to soupsRoast or pan fry (when lightly oiled)Substitute them for chickpeas in hummusFor more recipes and nutritional info please visit www.localgreensfarm.com	9	oz	4.99	0.55	oz	Produce	Greens	http://goodeggs2.imgix.net/product_photos/RvvZbq0FQmGbc9X07cro_20160429-LocalGreeen_GerminatedPeas_MG_8501.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
218	Organic Super Salad	Enjoy this mighty mix of Organic baby radish greens, baby kale and sorrel.  The super salad has a base of baby radish greens topped with a touch of sorrel and kale to make it the perfect salad mix.  The radish greens are zesty, but mellow out when eaten with an oil based dressing.Upon harvest, our super salad is packed into a plastic bag and refrigerated. We don't rinse the salad before packaging because it stays fresher that way. Please rinse before enjoying.	9	oz	8.75	0.97	oz	Produce	Greens	http://goodeggs2.imgix.net/product_photos/oNdaGRrRTbCJhigJRnhv_522e24663d92f70200000134_standard.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
219	Organic Purslane	Purslane, otherwise known as Pigweed or Verdolaga, is a succulent that often grows as a weed, but is harvested for consumption by adventurous cooks. Its taste is slightly sour and cool, somewhat like a bright cucumber, with a bit of salinity. Its leaves are great added to summer salads. As a succulent, it has a somewhat mucilaginous quality, making it an excellent (and delicious) thickener for soups and stews.Purslane is also extremely nutritious! It contains a huge amount of omega-3 fatty acids and many essential vitamins and minerals, including vitamin A, vitamin B, vitamin C, vitamin E, carotenoids, calcium, magnesium, potassium, and iron.	0.5	lb	2.99	5.98	lb	Produce	Greens	http://goodeggs2.imgix.net/product_photos/s9BSYfA1SequdOdPv4S1_purslane_03.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
220	Organic Crimini Mushrooms	The classic Crimini is widely versatile, as many dishes can benefit from their rich, meaty, and earthy flavors. A quickly sauté with butter, garlic, and your favorite herb always amounts to a tasty starter, or add a few to your next late night grilled cheese, vegetarian nut roast, or lasagna.	8	oz	2.99	5.98	lb	Produce	Mushrooms	http://goodeggs2.imgix.net/product_photos/e4LG13KjSfWv1IkxjbW3_r8dVolYMQAu1nt8clGF9_s9gy2ycTTsCfDYLiJ77d_z6_ky29DCzM-yRUzrxvFEsY6lkSI7-uK4UFifIJd4vk.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
221	Fresh Organic Shiitake Mushrooms	Shiitake is also known as "black mushroom" of Oriental cuisine.  They are full-bodied with a meaty texture and distinctively woodsy flavor. They are one of the most versatile mushrooms for a novice of exotic mushrooms and high in both protein and vitamin D.	6	oz	5.79	15.44	lb	Produce	Mushrooms	http://goodeggs1.imgix.net/product_photos/dNIfB5RoRyerIt9qJMzl_FK1A4406.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
222	Organic White Button Mushrooms	White Mushrooms are the same species as Criminis, but younger, resulting in a closed cap and a meatier texture. They have a clean, fresh flavor that makes them great candidates for eating raw.	8	oz	2.79	5.58	lb	Produce	Mushrooms	http://goodeggs2.imgix.net/product_photos/LqZVvgoTtKUcNuKgPxLW_p9MJXXLkQTWA6S00j2DR_jmseGhEy-tm8FssZRSiV8qOROVghhW2GtLBBhrC9MMg.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
223	Fresh Organic Maitake Mushroom	Maitake are also know as Hen of the Woods and can be gathered wild on the East Coast.  Our cultivated organic Maitake have a firm crisp texture and intense roasted chicken/ earthy mushroom flavor.  Known for it's immune enhancing abilities these mushrooms are also one of the best culinary mushrooms to eat.  They are easy to clean and can last for 10 days in refrigeration.  Perfect for a simple broth soup, roasting or a quick egg scramble.	6	oz	6.99	18.64	lb	Produce	Mushrooms	http://goodeggs2.imgix.net/product_photos/dE9E4OFAQIWuEPrfsiKK_MUkGcMpiNF6EbWaCXKeZc_eiwvypLHhRfDCZtuyYV1k.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
224	Fresh Organic Tree Oyster Mushrooms	Tree Oyster mushrooms have a mild flavor with a velvet-like texture.  They have a 3-4 day shelf life and only need to be sauteed for a few minutes.	6	oz	4.49	11.97	lb	Produce	Mushrooms	http://goodeggs1.imgix.net/product_photos/HuY27cmGRz6Yyu2NS9lp_FK1A4420.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
259	Organic Oregano	The great, classic, Italian herb. The go-to spice for pizza, for pastas and Italian style breads, oregano is also amazing on roasted tomatoes. Try it mixed into a breadcrumb with parmesan or just sprinkle it across the top of a nice feta with olive oil as an appetizer.	1	bunch	1.99	\N	\N	Produce	Herbs	http://goodeggs1.imgix.net/product_photos/NOR6OfFZQ8aAGnSEBJni_oregano_01.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
225	Fresh Organic Exotic Mix Mushrooms	Throughout our daily harvest, we hand pick the finest mushrooms from our largest crops and place them in this clamshell.  Shiitake, Tree Oyster, King Trumpet, Lions Mane, Maitake, Yellow Oyster, Pink Oyster, Nameko and Pioppini may be found in this versatile pack.  If you’re looking for a pleasant surprise or a unique mix for your soup, sauté, stir-fry or risotto, check out this mystery box and enjoy	6	oz	6.99	18.64	lb	Produce	Mushrooms	http://goodeggs1.imgix.net/product_photos/kNpandRKTg6sVKZlul02_FK1A7434.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
226	Organic Portabella Mushroom Duo	Did you know that the Portabella Mushroom is just a Crimini Mushroom that's been given a few more days to grow?  It's got a somewhat earthier flavor and a much meatier texture. Enjoy it grilled whole or chopped up into a stir-fry!	2	count	6.99	9.99	lb	Produce	Mushrooms	http://goodeggs1.imgix.net/product_photos/pCZNEt6cSh6BA7gGK8Q4_Portabella_Duo_Monterrey_Mushroom_One_Pound_Gils.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
227	Fresh Organic King Trumpet Mushrooms	Our Organic King Trumpets are sweet and hardy.  Usually used as a replacement for Porcini, these mushrooms are best grilled whole or cut thin and cooks with greens.  We like to cut then into long strips and use them as a noodle substitute.	6	oz	5.99	15.97	lb	Produce	Mushrooms	http://goodeggs2.imgix.net/product_photos/ldu0VLTKSJy5Wlklo6kw_HdZwkxSbUmqyInszrzYYlcqr-RSn_zYrKAMrkjr1gAU.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
228	Dried Porcini Mushrooms	Flavor­-loaded dried porcini should be on every single pantry shelf. Our dried porcini are picked and dried here in Northern California. We know where these mushrooms are picked because we’ve been sustainably harvesting in the same forests for decades. Our little family is a fussy bunch, and the care we take in harvesting and handling make these dried wild mushrooms state­ of­ the­ art.Having our large tube of dried porcini is the equivalent of always having over a pound of fresh porcini or boletes in the house. Porcini's legendary rich flavor is just a 15 minute water or broth soak away. Once tender they are ready for a quick sauté and bring intense, rich earthiness to to everything, from endless pasta sauces, to soups. Porcini will elevate something as simple as meatloaf into something extraordinary.	0.8	oz	8.49	10.61	oz	Produce	Mushrooms	http://goodeggs1.imgix.net/product_photos/viWuNEo8QnSoy5InsidB_20160505-WineForest_Porcini_MG_8880.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
229	Dried Chanterelles	Our Wine Forest Dried Chanterelles have a mild, earthy mushroom flavor with a hint of dried apricot, and will rehydrate with the intensity of flavor dried mushrooms provide plus a wonderful meaty texture that make them ideal for incorporation into vegan dishes, soups and stews.At Wine Forest, we’ve haunted the Western woods hunting wild mushrooms for over three decades now. Chefs like Thomas Keller, Michael, Mina, Traci des Jardin and a herd of others have been devoted to the wild fruits of our work. There simply are no better wild mushrooms.	0.96	oz	8.99	9.36	oz	Produce	Mushrooms	http://goodeggs1.imgix.net/product_photos/mH4uVqIQBGD02lVIvzSc_20160505-WineForest_Chanterelles_MG_8886.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
230	Dried Porcini Mushrooms	Flavor­-loaded dried porcini should be on every single pantry shelf. Our driedporcini are picked and dried here in Northern California. We know where these mushrooms are picked because we’ve been sustainably harvesting in the same forests for decades. Our little family is a fussy bunch, and the care we take in harvesting and handling make these dried wild mushrooms state­ of­ the­ art.Having our large tube of dried porcini is the equivalent of always having over a pound of fresh porcini or boletes in the house. Porcini's legendary rich flavor is just a 15 minute water or broth soak away. Once tender they are ready for a quick sauté and bring intense, rich earthiness to to everything, from endless pasta sauces, to soups. Porcini will elevate something as simple as meatloaf into something extraordinary.	1.6	oz	10.99	6.87	oz	Produce	Mushrooms	http://goodeggs1.imgix.net/product_photos/GQTs5R28R6isxX7gYX0w_20160505-WineForest_Porcini_MG_8896.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
231	Dried Chanterelles	Our Wine Forest Dried Chanterelles have a mild, earthy mushroom flavor with a hint of dried apricot, and will rehydrate with the intensity of flavor dried mushrooms provide plus a wonderful meaty texture that make them ideal for incorporation into vegan dishes, soups and stews.At Wine Forest, we’ve haunted the Western woods hunting wild mushrooms for over three decades now. Chefs like Thomas Keller, Michael, Mina, Traci des Jardin and a herd of others have been devoted to the wild fruits of our work. There simply are no better wild mushrooms.	1.92	oz	11.49	5.98	oz	Produce	Mushrooms	http://goodeggs1.imgix.net/product_photos/7You7B5TtKj7XIwT4wIw_20160505-WineForest_Chanterelles__MG_8889.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
232	Organic Garnet Sweet Potatoes (Bulk)	The classic Garnet sweet potato has deep burgundy skin and bright orange flesh. Starchy and sweet, they are high in healthy complex carbohydrates, beta carotene, and vitamins. Whether your family likes their sweet potatoes baked, fried, as raw "noodles," in a gratin, a casserole, or a pie, they're a great choice for holiday and every day. This 3 lb bulk bag should be enough potatoes to go around the table!	3	lb	14.99	5.0	lb	Produce	Mushrooms	http://goodeggs1.imgix.net/product_photos/jKxJOXqcQpmmHffGHUwK_20161104-MediumGarnetSweet_3pd_MG_6229.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
233	Organic Medium Yellow Onion	Once the supply of storage onions starts to dwindle at the farms we work with directly, we rely heavily on our trusted distributor, Veritable Vegetable, to source the highest quality organic onions they can find.  These onions may be grown by one of the few trusted growers and labels Veritable Vegetable works with, including Hummingbird, Peri & Sons, Pinnacle/Foster Farms, and Heger Farms. We'll do our best to update you as Veritable Vegetable's source changes.Today's Organic Yellow Onions are coming from: Anderson Organics, in Washington____________________________________________Veritable Vegetable: A Unique Organic DistributorAs an organic produce distributor with over 40 years of experience, Veritable Vegetable has benefited from the creativity and hard work of our employees, and the deep relationships we’ve formed with our growers. We’re proud of our reputation for quality and integrity. As a mission–driven company, we make every business decision based on a set of core values. Because we believe in supporting our growers, we maintain visibility for each of the 200+ farm labels we carry and communicate the distance each grower is from our warehouse in San Francisco. Our environmental initiatives are vast: not only do we transport our organic produce via an award winning, environmentally sustainable green fleet of trucks and trailers; we also divert 99% of our waste stream through a vigorous waste management program and the use of reusable pallets, crates and fabric wraps. Additionally, our solar array generates 70% of our electricity needs. We actively support our community by creating unique partnerships with local and national organizations, donating time, produce, and resources to sustainability efforts, and by weighing in on policy initiatives that impact sustainable food systems. Veritable Vegetable is a woman-owned, certified B Corporation, using the power of business to solve social and environmental challenges.	1	count	0.49	1.96	lb	Produce	Garlic & Onions	http://goodeggs1.imgix.net/product_photos/Halqe4MiQxyBQuBf52sz_onion_large_03.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
234	Organic Garlic	Affectionately called "the stinking rose," garlic is powerfully flavorful and medicinal! Anti-inflammatory, antimicrobial, antioxidizing and anti-cancerous, it truly is a wonder of the culinary world. Garlic was first cultivated over 5,000 years ago, making it one of the oldest known vegetables, and is now a staple in every kitchen around the world.Please note: Christopher Ranch has run out of their storage crop of California-grown Organic Garlic. Instead of sourcing conventionally-grown garlic, we've decided to stick with an organically-grown crop that Christopher Ranch sources from Argentina.	1	head	0.99	5.82	lb	Produce	Garlic & Onions	http://goodeggs1.imgix.net/product_photos/qtarMs0HSTidkMzNnvEM_TYBfi1hKTnKuwrqQzk30_Garlic-Jumbo.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
235	Organic Large Red Onion	Sweet with a bit of a kick, this kitchen staple is great raw and sliced thin or added to stir-fries.When none of the farms we work with directly have Organic Red Onions, we work with our neighbor and trusted distributed partner, Earl's Organic to source us the highest quality produce they can. This week's Red Onions were grown by Peri & Sons in California's Imperial Valley.	1	count	0.99	1.65	lb	Produce	Garlic & Onions	http://goodeggs2.imgix.net/product_photos/JMH6bUZgRCJSlD7FltpQ_Hummingbird_Medium_Red_Onion2.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
236	Organic Senmoto Negi Green Onion	This Green Onion variety from southern Japan, is known as Senmoto Negi. It has a have a very intense, almost garlicky aroma and is very tender. Unlike most green onions, which tend to be a bit on the milder side, this variety is so pungent, it will make your eyes water when cutting!	1	bunch	3.49	13.96	lb	Produce	Garlic & Onions	http://goodeggs1.imgix.net/product_photos/2sw0x5lZREKOQfx56hWl_20160531-Hikari_SenmotoGreenOnion_MG_0769.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
237	Organic Scallions	These long lasting alliums are great to have around the kitchen. Grill alongside your favorite steak, strew atop a billowing baked potato, or garnish a decadent egg taco.	1	bunch	2.99	14.95	lb	Produce	Garlic & Onions	http://goodeggs1.imgix.net/product_photos/TDTbGK7QQxCEMkAXJDDu_unspecified-1.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
238	Organic Leeks	Our spring-planted, medium-large sized Pandora leeks with 1-2 inches of white flesh are nothing but young and succulent. Classic soup aside, these leeks also crisp up nice when separated into rings and roasted in the oven with a touch of oil and salt.	1	lb	2.99	2.99	lb	Produce	Garlic & Onions	http://goodeggs1.imgix.net/product_photos/IjTQbzC9SHux8P7pCWJ1_leeks_01.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
239	Organic Small Red Onions	Stock up on these sweet members of the Allium family! These small sizes are perfect for being able to use the whole thing in one sitting.Once the supply of storage onions starts to dwindle at the farms we work with directly, we rely heavily on our trusted distributor, Veritable Vegetable, to source the highest quality organic onions they can find.  These onions may be grown by one of the few trusted growers and labels Veritable Vegetable works with, including Hummingbird, Peri & Sons, Pinnacle/Foster Farms, and Heger Farms. We'll do our best to update you as Veritable Vegetable's source changes.Today's Organic Red Onions are coming from: Hummingbird.____________________________________________Veritable Vegetable: A Unique Organic DistributorAs an organic produce distributor with over 40 years of experience, Veritable Vegetable has benefited from the creativity and hard work of our employees, and the deep relationships we’ve formed with our growers. We’re proud of our reputation for quality and integrity. As a mission–driven company, we make every business decision based on a set of core values. Because we believe in supporting our growers, we maintain visibility for each of the 200+ farm labels we carry and communicate the distance each grower is from our warehouse in San Francisco. Our environmental initiatives are vast: not only do we transport our organic produce via an award winning, environmentally sustainable green fleet of trucks and trailers; we also divert 99% of our waste stream through a vigorous waste management program and the use of reusable pallets, crates and fabric wraps. Additionally, our solar array generates 70% of our electricity needs. We actively support our community by creating unique partnerships with local and national organizations, donating time, produce, and resources to sustainability efforts, and by weighing in on policy initiatives that impact sustainable food systems. Veritable Vegetable is a woman-owned, certified B Corporation, using the power of business to solve social and environmental challenges.	5	lb	7.99	1.6	lb	Produce	Garlic & Onions	http://goodeggs2.imgix.net/product_photos/EbNM2eqpRJSvfPIbJ4zh_RedOnionsBulk-1.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
240	Organic White Spear Onions	Beautiful white bulbs, with deliciously edible greens, these spring alliums are sweet and juicy, making them perfect for the grill.	1	bunch	3.49	4.65	lb	Produce	Garlic & Onions	http://goodeggs1.imgix.net/product_photos/RqKja5PlRIumTIwrcjRc_Onion-Cipolini.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
241	Organic Yellow Onion	Cured and ready for storage, Yellow Onions are the ultimate kitchen staple.	1	count	0.99	1.98	lb	Produce	Garlic & Onions	http://goodeggs1.imgix.net/product_photos/AZYtBYbySkaYWkSU6ym9_onion_large_03.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
242	Organic Shallots	This sweet and mild allium is a kitchen staple. It'll give a mild kick to a raw salad or, if you cut it up and leave it to soak in your next vinaigrette, it'll add a deliciously sweet crunch.	0.5	lb	2.49	4.98	lb	Produce	Garlic & Onions	http://goodeggs2.imgix.net/product_photos/4WFTTLAMRsKcz2FaaDrm_shallots_03%20copy.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
243	Shallots	One of the sweetest and mildest cured alliums, the Shallot is perfect for adding a subtle kick to a vinaigrette. It is also great for caramelizing by using some low and slow heat.	1	lb	5.99	5.99	lb	Produce	Garlic & Onions	http://goodeggs1.imgix.net/product_photos/HwSFztVFTkuTjZmE0EOY_unspecified-3.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
244	Organic Elephant Garlic Cloves	Elephant Garlic is actually a variant of a garden leek, but has a garlicky bite to it, but less pungent and often less juicy than other varieties of garlic. Its large-sized cloves make it perfect for making garlic chips or roasting whole.Note: sometimes the outer layer of the cloves will fall off or be cracked enough to expose the flesh of the clove, which causes the outside of the clove to harden a bit. But don't worry, this garlic is perfectly safe and delicious to eat!	0.5	lb	4.99	9.98	lb	Produce	Garlic & Onions	http://goodeggs2.imgix.net/product_photos/uMIK3kzvTYywU0qXgFkP_FK1A6593.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
257	Organic Curly Parsley	Slightly bitter and slightly salty, this essential herb is perfect for livening up any salad, green or grain. This curly variety's extra nooks and crannies make it perfect for crisping up under a broiler when added to shrimp or scallops.This Organic Curly Parsley was grown by JTF Organics in Hollister, CA, and brought to us by Coke Farms.	1	bunch	1.49	0.75	oz	Produce	Herbs	http://goodeggs1.imgix.net/product_photos/pVzFQTmUTCq1dVZTS84Q_Parsley_Curly.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
258	Organic Cilantro	A staple for Mexican, Southeast Asian, and many other cuisines, cilantro is a must-have in your refrigerator.When none of the local farms we source from directly have parsley, we rely on our trusted distributor partner, Veritable Vegetable. Veritable Vegetable sources their Parsley from a number of organic farms in California. This week's Cilantro is coming from Something Good Organics (Givens Farm) in Goleta, CA.	1	bunch	1.99	0.5	oz	Produce	Herbs	http://goodeggs1.imgix.net/product_photos/DNY9rRfcRpOcFaQDME7R_cilantro_01.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
245	Organic Large White Onion	Once the supply of storage onions starts to dwindle at the farms we work with directly, we rely heavily on our trusted distributor, Veritable Vegetable, to source the highest quality organic onions they can find.  These onions may be grown by one of the few trusted growers and labels Veritable Vegetable works with, including Hummingbird, Peri & Sons, Pinnacle/Foster Farms, and Heger Farms. We'll do our best to update you as Veritable Vegetable's source changes.Today's Organic White Onions are coming from: Peri & Sons.____________________________________________Veritable Vegetable: A Unique Organic DistributorAs an organic produce distributor with over 40 years of experience, Veritable Vegetable has benefited from the creativity and hard work of our employees, and the deep relationships we’ve formed with our growers. We’re proud of our reputation for quality and integrity. As a mission–driven company, we make every business decision based on a set of core values. Because we believe in supporting our growers, we maintain visibility for each of the 200+ farm labels we carry and communicate the distance each grower is from our warehouse in San Francisco. Our environmental initiatives are vast: not only do we transport our organic produce via an award winning, environmentally sustainable green fleet of trucks and trailers; we also divert 99% of our waste stream through a vigorous waste management program and the use of reusable pallets, crates and fabric wraps. Additionally, our solar array generates 70% of our electricity needs. We actively support our community by creating unique partnerships with local and national organizations, donating time, produce, and resources to sustainability efforts, and by weighing in on policy initiatives that impact sustainable food systems. Veritable Vegetable is a woman-owned, certified B Corporation, using the power of business to solve social and environmental challenges.	1	count	0.99	1.98	lb	Produce	Garlic & Onions	http://goodeggs2.imgix.net/product_photos/wvTOsnbFQy12R7WgT09o_Peri_and_Sons_Jumbo_White_Onion2.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
246	Organic Red Pearl Onions	The quintessential addition to any roast. Toss them in along with your favorite roasting cut and let them stew in the fat and flavor. When none of the farms we work with directly have Organic Red Onions, we work with our neighbor and trusted distributed partner, Earl's Organic to source us the highest quality produce they can. These Organic Red Pearl onions are coming from the third generation family-owned garlic and onion farm, Christopher Ranch. Christopher Ranch is based out of Gilroy, California.	1	count	2.49	0.31	oz	Produce	Garlic & Onions	http://goodeggs2.imgix.net/product_photos/sSao7L7ETSikfz4chQ6v_unspecified.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
247	Organic Leeks	A crucial ingredient in stocks, soups, sautés, braises, gratins, and savory pies, leeks have a mild onion-y flavor that helps enhance savory notes in other foods. Halve the stalk lengthwise and then chop it into thin half-moons, being sure to wash them well (sandy soil can get trapped in the layers).	1	lb	2.49	2.49	lb	Produce	Garlic & Onions	http://goodeggs1.imgix.net/product_photos/rFsrPLnaSsu40ftATuAJ_leeks_01.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
248	Organic Yellow Onion	Yellow onions are the workhorses of the allium family. With rich flavor and a subtle, aromatic sweetness that increases when cooked, these are one staple you won't want to be without. Dice them for a mirepoix to make broth and soup, quarter them to stuff your turkey, or slice and add them to any roasting pan for an extra boost of flavor. As a bonus, they can be substituted for any other type of onion (white, Vidalia, red) your recipe might call for.	1	count	0.69	1.38	lb	Produce	Garlic & Onions	http://goodeggs2.imgix.net/product_photos/Mw8ht7cSFqQng2igiBrE_onion_large_03.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
249	Organic Yellow Onions (Bulk)	Yellow Onions are the workhorses of the allium family. With rich flavor and a subtle, aromatic sweetness that increases when cooked, these are one staple you won't want to be without. Dice them for a mirepoix to make broth and soup, quarter them to stuff your turkey, or slice and add them to any roasting pan for an extra boost of flavor. As a bonus, they can be substituted for any other type of onion (white, Vidalia, red) your recipe might call for.	3	lb	3.99	1.33	lb	Produce	Garlic & Onions	http://goodeggs2.imgix.net/product_photos/W8P8ODDYSWsq4JfoFMt1_onions_bulk.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
250	Organic Ginger Root	Warming and spicy, this root is the quintessential flavoring to a number of sweet and savory dishes. Organically grown in Hawaii. It is great in curry, juices, and cookies.This Ginger is grown by Kolo Kai in Kauai, Hawaii. They are a small family farm that only distributes directly to small retailers, in order to insure that the final consumer receives the product within 10 days or less. 	4	oz	3.99	1.0	oz	Produce	Herbs	http://goodeggs2.imgix.net/product_photos/kcY9byYfSUWaJRERaov9_unspecified-1.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
251	Organic Chives	Excellent tossed with potatoes or thrown atop scrambled eggs!Due to the drought, this perennial herb is flowering more frequently than other, wetter years. Don't fear the flowers though: they are lovely and mild in flavor, and make a beautiful garnish and are delicious (and delightful!) when tossed into salads.	1	bunch	1.99	\N	\N	Produce	Herbs	http://goodeggs1.imgix.net/product_photos/1Q8CWwDS3GLpSBpbB9ih_Chives_02.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
252	Organic Basil	Knoll's basil is looking beautiful right now! Full leaves of pungent, bright basil, just waiting for some sliced Heirloom Tomatoes and fresh Mozzarella. 	1	bunch	2.49	0.62	oz	Produce	Herbs	http://goodeggs1.imgix.net/product_photos/M0VDe27hTumvLi4d2IvF_basil_01.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
253	Organic Thyme	A classic herb sure to intrigue dinner guests, thyme is amazing on roasted pork or chicken. Try it mixed in with dill and cream sauce to drizzle on top of salmon. Thyme is also great added to sautéd mushrooms or mushroom based sauces.	1	bunch	2.29	\N	\N	Produce	Herbs	http://goodeggs2.imgix.net/product_photos/jvLfForQLChJzRDE3akZ_thyme_04.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
254	Organic Sage	Great in a brie and sage stuffed chicken breast and terrific on roasted broccoli. Try it in creamed onions or on roasted pork! Sage is amazing and versatile. For a real treat try spareribs with a savory sage rub including garlic, thyme, lemon, pepper and rosemary.	1	bunch	1.99	\N	\N	Produce	Herbs	http://goodeggs1.imgix.net/product_photos/XOZe7CmAQeiMiwYvAx9Y_sage_01.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
255	Organic Rosemary	Rosemary is a hearty perennial herb that'll bring a liveliness and depth to winter roasts of root veggies or beef. If you only need a couple of sprigs, strip the bottom leaves first, and leave the rest in a cup of water in the fridge!	1	bunch	1.49	\N	\N	Produce	Herbs	http://goodeggs1.imgix.net/product_photos/6MFm2ENQDeQbwyFL7l8p_rosemary_08.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
256	Organic Spearmint	Our organic mint is a great addition to a salad, drinks or desert.   So refreshing !   Or, for a pot of tea, to relax after a difficult day.  Our mint is grown in a water based system so it is super green and fresh all year round, even in the hot summer months.  For tea, we suggest rinsing the mint with water, then chopping finely with a butcher's knife.  Then, add to your tea pot, fill with boiling water and let steep for a few minutes.  It's also great combined with our peppermint.  We hope you enjoy it!	1	bunch	1.99	\N	\N	Produce	Herbs	http://goodeggs2.imgix.net/product_photos/4IfcCfW9T62itD1TrzH8_mint.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
260	Genovese Basil	Local Greens' 1 oz. package of Genovese Large Leaf basil contains very little stems so you get the best part of the plant. They grow basil in a protected environment in Berkeley, CA, all year round using non-GMO organic seeds and natural nutrients. If you trim the stems and place in a cup of water, they'll last for over a week!Their basil is the one product that isn't currently certified organic--the nutrients they used to use in their aquaponic system for basil, though ecologically sustainable, weren't recognized by OMRI's list--but they are excited to announce that their organic certification for this crop is 3-4 months out!	1	oz	3.99	3.99	oz	Produce	Herbs	http://goodeggs2.imgix.net/product_photos/MPPwgn7TAW8J2z0MnGQO_FK1A7489.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
261	Organic Dill	Feathery and slightly pungent, never underestimate the power of fresh dill in your favorite dishes. Mix with sour cream for a delicious dip, use on your favorite fish, sprinkle on some roasted new potatoes, and don't forget to add it to bean, potato and chicken salads.	1	bunch	1.79	\N	\N	Produce	Herbs	http://goodeggs1.imgix.net/product_photos/2l5HLJ2PQRKGWW814tRs_Si_AFImrxhzs6tU_G9YzJEFs7CaTITQYqhiX9EJ7Uh8.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
262	Organic Dill	This beautiful dill from County Line provides the perfect lightness to hearty or rich salads.	1	bunch	2.49	\N	\N	Produce	Herbs	http://goodeggs1.imgix.net/product_photos/BJMZzS7VQajqJ4TKW84h_Countyline_Dill.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
263	Organic Flat Leaf Italian Parsley	Classic Italian cooking herb, always good to have in the kitchen!	1	bunch	1.99	\N	\N	Produce	Herbs	http://goodeggs2.imgix.net/product_photos/jtILgbbjSw6NvifHHRzM_parsley_02.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
264	Organic Italian Flatleaf Parsley	This kitchen staple is great in soups, stews, roasts and salads.	1	bunch	1.29	0.65	oz	Produce	Herbs	http://goodeggs2.imgix.net/product_photos/FMy8oacStyTh30riYHog_parsley%20%281%29.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
265	Italian Parsley	Parsley can be added to almost any dish: soups, salads, sauces, omelettes, or stuffings. It is rich in vitamin C and is a good source of iron and vitamins A and B.	1	bunch	2.29	0.57	oz	Produce	Herbs	http://goodeggs2.imgix.net/product_photos/GnzVAOLpQkSGsFGjQ8Vc_O7jjIXdExsv6jWJn4_-NiuaTl5hgTdMne3rI27FsHHE.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
266	Organic Thyme	Thyme is an indispensable herb in cuisines around the world, lending an aromatic, earthy flavor to dishes. Tuck whole sprigs into a roasting dish alongside meat and vegetables or into the cavity of your turkey, add them to a sauté pan with mushrooms or mirepoix, or pluck the leaves off and add them to sauces and soups.	1	bunch	2.99	\N	\N	Produce	Herbs	http://goodeggs2.imgix.net/product_photos/GG5EgLNORwSsse7GgoCT_thyme_01.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
267	Organic Rosemary	Rosemary is one of the most strongly scented herbs out there, with a pungent notes of lemon and pine. Tuck whole sprigs around meat and vegetables in a roasting pan, infuse them into olive oil for a fragrant dip, or pull the needle-like leaves off the stem and chop them finely to add to rubs, marinades, and stuffing.	1	bunch	1.99	1.99	oz	Produce	Herbs	http://goodeggs2.imgix.net/product_photos/fvHLtV0kTaiorrjRaFQY_rosemary.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
268	Organic Italian Flatleaf Parsley	A truly essential herb, Italian or flatleaf parsley has a clean, bright flavor with a hint of saltiness that adds depth to any salad, soup, or roast. Chop the leaves coarsely to top grains, pasta, or potato dishes and keep the stems to use in gravy, broth, or for stuffing your turkey—they have a slightly more intense flavor than the leaves.	1	bunch	2.29	0.57	oz	Produce	Herbs	http://goodeggs2.imgix.net/product_photos/lnMH3EaHRsCWREyRrPPd_parsley_01.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
269	Organic Bay Leaves	Fresh Bay Leaves are pungent and slightly bitter, adding herbal, floral aromas to dishes. Use the leaves whole in soups, stews, and sauces, in a pot of beans, rice, and other grains, or on roasting meat to add flavor. Remove the leaves before serving; they won't hurt you, but they are tough and bitter to bite into whole.	1	bunch	1.99	1.99	oz	Produce	Herbs	http://goodeggs2.imgix.net/product_photos/c3TwmpJITRmyLSec9CQo_eat_well_bay_leaf.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
270	Organic Fresh Turmeric Root	Juicers and curry-makers rejoice! A new harvest of freshly-dug, barely-cured turmeric is upon is.This fresh turmeric root is brighter in flavor than its powdered counterpart.  Prepare it as you would ginger and add to fresh curries to brighten them up with a slight kick.  Turmeric also contains high levels of curcumin, a natural anti-inflammatory compound, making it a much sought-after item for adding to fresh fruit and veggie juices.Almost all commercially available fresh organic turmeric is imported from Peru or Hawaii, but we're lucky to have Whiskey Hill Farms growing this special treat for us just down the road in the Watsonville area. The wonders of heated greenhouses!	4	oz	4.99	1.25	oz	Produce	Herbs	http://goodeggs2.imgix.net/product_photos/7vfp3quZSiKVGFaE8lIw_20161014-Tumeric_MG_4239.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
271	Organic Bay Leaf	An irreplaceable ingredient in your favorite hearty soups and stews like split pea, chicken or even a moroccan vegetable  soup.Picked fresh from the tree just for you.	1	bunch	1.99	\N	\N	Produce	Herbs	http://goodeggs1.imgix.net/product_photos/1oDawwRkSmKtUgNqxwYO_eat_well_bay_leaf.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
272	Organic Dried Lavender	These beautiful dried bunches of Lavender grown by Capay Organic in the heart of Yolo County, CA, will add a wonderful fragrance to any kitchen. Hang these up, or put them in a waterless vase, for some rustic beautification.  Enjoy the subtle scent of this wonderful herb for months to come.	1	bunch	9.99	\N	\N	Produce	Herbs	http://goodeggs2.imgix.net/product_photos/3tBHI0AsQm2TfPfjcJlw_20160921-Capay_DriedLavendar_MG_1602.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
273	Organic Lemongrass	Lemongrass is a staple for Vietnamese cooking. Hikari's lemongrass is tender and not too fibrous.	1	count	1.49	1.49	oz	Produce	Herbs	http://goodeggs2.imgix.net/product_photos/IKPQn9lYRkeuMx8wzL4g_Ouruboros_Lemongrass.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
274	Organic Garlic Chives	This chive variety has a slightly garlicky kick, and is great for stir-fries or for adding, coarsly chopped, into salty, brothy soups.	1	bunch	2.29	\N	\N	Produce	Herbs	http://goodeggs2.imgix.net/product_photos/mx0RepiFRiPDGnVplQyQ_garlic_chives.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
286	French Marigolds	French Marigolds are everything one would expect from the name: fancy, frilly, and petite. This flower its tall and framed by with fernlike leaves. Petal colors can range from golden to lemon yellow, rust, and crimson. The fresh and herbaceous fragrance of these blossoms will fill the room with scents of a summer garden.	1	bunch	9.99	\N	\N	Produce	Flowers	http://goodeggs2.imgix.net/product_photos/DaYAKeZRuuRbmMD5UV1w_20160910-Marigolds_MG_0675.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
275	Organic Peppermint	Peppermint is here !!!  This is the mint that chef's love for all their dishes.  Using peppermint instead of spearmint takes mint to the next level because it has menthol, making the experience that more intense.  Great in desserts and savory dishes as well or just to chew on, as a calming snack.Our certified organic peppermint is grown in a water based system so it is super green and fresh all year round, even in the hot summer months. It's also great for a pot of tea, to relax after a difficult day.  For tea, we suggest rinsing the mint with water, then chopping finely with a butcher's knife.  Next, add to your tea pot, fill with boiling water and let steep for a few minutes.  It's also great combined with our spearmint.  We hope you enjoy it!	1	bunch	2.59	\N	\N	Produce	Herbs	http://goodeggs2.imgix.net/product_photos/IgmCuEYNTT2S4TA76iPQ_ken5beg5uXSRGnHh2QbXc8mAZqZkygSpw26szVxz3v8.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
276	Aquaponic Lemongrass	An absolute must for many a Thai dish and in other Asian cuisines, Lemongrass will give you the a sweet depth of flavor you can't do without. Ken's aquaponically-grown lemongrass is incredibly tender and flavorful, with plenty of juice in prized bottom half.	1	count	1.49	\N	\N	Produce	Herbs	http://goodeggs1.imgix.net/product_photos/Flf6FoCOSGyBs3RONS6c_FK1A4659.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
277	Chervil	This beautiful Chervil has the light salinity and rich bitterness of of parsley and the licorice sweetness of tarragon. It's great as a topping for dark, rich flavors like risotto or gratins. Martin harvests just the tops of the plants, so you're getting almost no stem.	0.5	oz	1.79	3.58	oz	Produce	Herbs	http://goodeggs1.imgix.net/product_photos/AX9NQ5CgRzqm2LsSKDJh_FK1A7328.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
278	Bulk Organic Turmeric Root (3 lbs.)	Juicers and curry-makers rejoice! This fresh turmeric root is brighter in flavor than its powdered counterpart.  Prepare it as you would ginger and add to fresh curries to brighten them up with a slight kick.  Turmeric also contains high levels of curcumin, a natural anti-inflammatory compound, making it a much sought-after item for adding to fresh fruit and veggie juices.Almost all commercially available fresh organic turmeric is imported from Peru or Hawaii, but we're lucky to have Whiskey Hill Farms growing this special treat for us just down the road in the Watsonville area. The wonders of heated greenhouses!This 3 lbs. bag of Turmeric is perfect for serious juicers.  And fear not, just like Ginger, Turmeric can hold for several weeks in the refrigerator, so you'll have plenty of time to use it all up!	3	lb	49.99	1.04	oz	Produce	Herbs	http://goodeggs2.imgix.net/product_photos/bCrUtiZiTOqCua7muT4R_FK1A7063.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
279	Dried Culinary Bouquet	Krysia at Oak Hill Farm of Sonoma has put together a most gorgeous kitchen bouquet with lovingly gathered safflower, dried chiles, yarrow, bay and lavender. Amazingly colorful for a dried bouquet, this makes a perfect gift for a cook!	1	bunch	12.99	\N	\N	Produce	Herbs	http://goodeggs1.imgix.net/product_photos/Ot39ybnVQ9muXj0bWGkV_IMG_8421.JPG?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
280	Organic Horseradish Root	Knoll's horseradish root is generally thinner and a bit gnarlier looking than you might generally see in the supermarket, but it's certainly not lacking in flavor.Horseradish root contains highly volatile oils that are released when root cells break down by grating.  Vinegar can be added immediately to freshly ground or grated horseradish to stabilize the flavor before it gets too hot, or if you want three minutes to add the vinegar, you'll end up with a very hot paste. Fresh horseradish can also be finely shaved and used to top a plate of steak, potatoes or anything else that could benefit from a slight kick.Fresh horseradish should be scrubbed thoroughly before being grated or thrown into a blender, but as a whole root, it can last for many weeks (if not months) in the fridge in a plastic bag.	0.5	lb	3.99	7.98	lb	Produce	Herbs	http://goodeggs2.imgix.net/product_photos/4hAt5CwUTUeTvmZ69kd6_FK1A1656.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
281	Organic CSA Box	The best of the week of seasonal organic produce from our small farm! Our farm boxes often include, but are not limited to: a mix of bunched greens, roots, squash, and herbs.  Don't forget to check out our Facebook page for news and updates on the farm!Shop the Good Eggs market to add our Organic Pastured Soy-Free Eggs and meet all of your kitchen needs!	1	count	22.99	\N	\N	Produce	Produce Boxes & Bulk	http://goodeggs1.imgix.net/product_photos/B08HFVNITjG1Pgwd8k2f_3o2UTAQUtDZkhb86ZD8IZT7SubgOx9HBNZ3nY7HaXEQ.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
282	Organic Farmer's Choice Mixed Veggie Box	A variety of seasonal vegetables fresh from our farm. In fall, our box typically includes 8-10 items such as loose or bunched roots, salad greens, leafy cooking greens, broccoli/cauliflower, and other seasonal items such as sweet peppers, lemons, winter squash, and apples! (Want to check out the contents of our boxes or find recipe suggestions for that one elusive vegetable? Click Here! Updated on Wednesdays. Contents may vary from those listed.)	1	count	34.99	\N	\N	Produce	Produce Boxes & Bulk	http://goodeggs1.imgix.net/product_photos/f6PVVKttToK8Br3G78P5_KCWPQrBpQrqt3gSQkPJz_FK1A3476.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
283	Office Snacks Mixed Produce Box	The freshest easy-to-eat fruits and veggies in The Bay Area, delivered to your office!The office produce box offers a weekly changing assortment of the best peak-season produce that will keep employees satisfied and healthy. 	1	count	49.99	\N	\N	Produce	Produce Boxes & Bulk	http://goodeggs2.imgix.net/product_photos/AkOXFnAsRKmi0mfTabJ6_20160912-OfficeBoxFall_MG_0751.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
284	Medium Farm-to-Vase Bouquet	Oak Hill Farm calls these medium sized bouquets "Posies", and they're as cute and colorful as they sound! Amongst the greens are some of the finest fall flowers still blooming in Sonoma County.Chuy, the flower production manager at Oak Hill, selects different flowers each week, depending upon what's looking good. So the Posy you get might not look exactly like the one pictured, but it'll be equally as beautiful.In order to give your bouquet the longest life, give each stem a diagonal fresh cut and place in a jar of clean water. (The diagonal cut increases the surface area for each stem to uptake water.) Every couple of days, change out the water and give another fresh cut. Warm water works best.	1	bunch	11.99	\N	\N	Produce	Flowers	http://goodeggs1.imgix.net/product_photos/WTdp1fugRZqGwMsimw7R_20160606-FullBelly_SeasonalBouquet_MG_1232.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
285	Baby Blue Eucalyptus	Beautiful to look at and intoxicating to smell, these large bunches of Baby Blue Eucalyptus are quite long-lasting. Try tying a bunch up somewhere near your shower head so that steam (but no water) hits the leaves, releasing its wonderful aroma.	1	bunch	9.99	\N	\N	Produce	Flowers	http://goodeggs2.imgix.net/product_photos/9HVNv3DyTRGhK1g8u2IN_20161014-Oakhill_Eucalyptus_MG_4055.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
287	Cockscomb	The uniquely textured cockscomb flower looks like a colorful Coral Reef. Presenting in shades of lemon, cranberry, and amaranth purple, they provide a curious sight and lush atmosphere for the summertime heat.Care for these flowers by trimming their stems upon delivery, and doing so periodically, while changing their water daily. They should last a little over a week with proper care.	1	bunch	7.99	\N	\N	Produce	Flowers	http://goodeggs1.imgix.net/product_photos/QB4R2kosSxK6incroppj_unspecified-1.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
288	Amaranth	This beautiful ornamental variety of the grain has beautiful green, gold, and magenta coloring. The flowers drape down from the stems when upright. Decorative grains are our best recommendation for your table during the fall harvest season.	1	bunch	7.99	\N	\N	Produce	Flowers	http://goodeggs2.imgix.net/product_photos/3BbD8imBRAuNwqRAcqGo_unspecified.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
289	Organic Sunflowers	You'll love these beautiful sunflowers from Full Belly Farm, grown in the fertile soil of the Capay Valley. These sunflowers will arrive fully opened, and should last over a week with proper care. To care for them, place them in a vase near a window with sunlight, while regularly trimming their stems and changing their water.	1	bunch	9.99	\N	\N	Produce	Flowers	http://goodeggs2.imgix.net/product_photos/ekInYhn5QneEdXztrmHB_aW3uAbdt8SZSQwNua3gE5z-9wGfTLUFJP9XGVLOQshw.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
290	Mixed Mini Decorative Gourd Trio	Nothing says autumn like Decorative Gourds. With Oak Hill Farm's mini versions of this festive, decorative curcurbit, you'll be able to make your table beautiful while leaving plenty of room for the food!	3	count	7.99	4.0	lb	Produce	Flowers	http://goodeggs1.imgix.net/product_photos/hOz3sblLSJCIXEyhwQqz_20161003-Oakhill_GourdTrio_MG_2542.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
291	Organic Dried Flower Bouquet	So many of Full Belly's summer and fall blooms, dried and arranged into a gorgeous, long-lasting bouquet. When most markets turn towards Southern California or South America for their winter flowers, we love continuing to support Full Belly Farm's floral program through the winter months. Having a steady off-season revenue stream allows Full Belly to provide as many year-round employment opportunities as possible, a relative rarity in the agriculture world.	1	bunch	17.99	\N	\N	Produce	Flowers	http://goodeggs1.imgix.net/product_photos/jhZ4nKyLQ2rW1UsRHnt4_20161019-FullBelly_DriedBouquet_MG_4520.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
292	Broom Corn	Broom Corn is a seasonal delight--a long-lasting dried grass that just screams autumn.May vary in color from dark red to green to orange to purple.	1	bunch	7.99	\N	\N	Produce	Flowers	http://goodeggs2.imgix.net/product_photos/rdpQNSsRxSHlwcF31IEl_20161021-BroomCorn_MG_4730.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
293	Frozen Strawberries	Treat yourself to these Oregon strawberries – deep red through and through, delicate and deliciously sweet.	10	oz	4.79	7.66	lb	Produce	Frozen Fruit & Vegetables	http://goodeggs1.imgix.net/product_photos/7T8cFUOtRaCYeCaQqzWm_FK1A9918.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
294	Frozen Health Berry Blend	For this super-premium berry blend, we selected the berries richest in color.  Add to smoothies for a rich breakfast.Ingredients: Marion Blackberries, Blueberries, and Black Raspberries.	10	oz	4.79	7.66	lb	Produce	Frozen Fruit & Vegetables	http://goodeggs2.imgix.net/product_photos/bKQWfQ2YQBqCvoW3Oj1o_FK1A0693.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
295	Frozen Blueberries	Enjoy the sweet taste of summer year round with our fresh frozen, sustainably grown blueberries. We harvest during peak season, then vacuum seal and flash freeze the berries to assure optimum flavor. These juicy bursts of deliciousness can be added to an endless variety of both sweet and savory dishes. From cobblers, muffins and cheesecakes, to barbeque sauces, chutneys, vinaigrettes and more! Ready and on hand in your freezer.	1	lb	6.99	6.99	lb	Produce	Frozen Fruit & Vegetables	http://goodeggs1.imgix.net/product_photos/xEnLKjYxToC36POljdAi_FK1A7643.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
296	Frozen Raspberries	Our raspberries are sweet, plump and delicate in flavor. Enjoy this healthy treat right out of the bag!	10	oz	4.79	7.66	lb	Produce	Frozen Fruit & Vegetables	http://goodeggs2.imgix.net/product_photos/sZzpsFgYTVCtXonwBSsN_FK1A9752.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
297	Frozen Cranberries	Starvation Alley's no-spray cranberries are transitional organic, meaning that the farms growing the cranberries are in the process of being certified organic. These little berries are super-tart and deliciously sweet, not to mention a fantastic source of Vitamin C, manganese, and other naturally-occurring vitamins and minerals. Cranberries are great for roasting or braising alongside veggies and meat, blending into smoothies, cooking down into sauces or compotes, or (of course!) baking into a perfect apple-cranberry pie.Ingredients: Cranberries.	10	oz	3.49	5.58	lb	Produce	Frozen Fruit & Vegetables	http://goodeggs1.imgix.net/product_photos/qCbpEmnAT5edqhT75MAF_20161021-StarvationAlley_Cranberries_MG_4762.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
298	Frozen Marion Blackberries	Like a fine wine, these deeply hued berries boast complex layers of flavor and fragrance.Located in the heart of Oregon's lush Willamette Valley, Stahlbush Island Farms is an environmentally friendly farm and food processor committed to sustainable agriculture. Our philosophy is that farming practices should leave the soil, air, water, plant life, animals and people healthier. For us, sustainability is a continuing journey.What does it mean to be sustainable? Good question! At Stahlbush, we think it’s important to explain to people what we mean when we use this term to describe our way of farming and producing food. We define sustainable as “meeting the needs of the present without compromising the ability of future generations to meet their own needs” (based on “Report of the World Commission on Environment and Development,” United Nations, 1987). We like this definition because it shows the quest for sustainability is a philosophy. Our philosophy of sustainability guides our farming practices and affects the way we use energy and care for soil, water, people and wildlife.	10	oz	4.79	7.66	lb	Produce	Frozen Fruit & Vegetables	http://goodeggs1.imgix.net/product_photos/SZv6AdhkT7qpmFp4negy_FK1A4859.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
299	Frozen Green Peas	A favorite among our tasting table donations to the local schools, our sweet tasting green peas even get kids excited about eating veggies.  Try combining them with basil, olive oil, garlic, lemon juice, and Parmesan cheese for a fantastically simple pesto dish.	10	oz	2.69	4.3	lb	Produce	Frozen Fruit & Vegetables	http://goodeggs1.imgix.net/product_photos/PZ3d3ETQwSJvxqs71CVw_FK1A9833.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
300	Frozen Sweet Corn	Flash-frozen straight from the field, our corn retains its summertime on-the-cob flavor.  Try combining it with our Cut Spinach, red pepper, garlic, and a little olive oil for the perfect stir-fry.	10	oz	2.69	4.3	lb	Produce	Frozen Fruit & Vegetables	http://goodeggs2.imgix.net/product_photos/EV8UqWEoSUyIGHA149gm_FK1A0673.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
301	Frozen Spinach	Frozen within an hour of harvest, our farm-fresh spinach tastes just like it came from your garden at home.  It’s great for breakfast omelets and scrambles, dips, and savory side dishes.  Try combining it with a bag of our super sweet corn, red pepper, garlic, and a little olive oil for the perfect stir-fry.	10	oz	2.79	4.46	lb	Produce	Frozen Fruit & Vegetables	http://goodeggs1.imgix.net/product_photos/Gpjcq0lmQNqdrFdg0qb2_FK1A9934.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
302	Frozen Broccoli	Tender and bright green, our broccoli florets have a rich farm-fresh flavor.  They are the perfect addition to soups and side dishes or add to macaroni and cheese for a great variation.	10	oz	2.79	4.46	lb	Produce	Frozen Fruit & Vegetables	http://goodeggs2.imgix.net/product_photos/MuD3N03qT1iEO8Z6Sg7S_FK1A9789.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
303	Frozen Sliced Beets	A great addition to salads or paired with goat cheese, these sliced beets pack all the earthy richness you expect from farm-fresh produce, without the time and stains that accompany preparing beets from scratch. Ingredients: Non-GMO Beets	10	oz	2.79	4.46	lb	Produce	Frozen Fruit & Vegetables	http://goodeggs1.imgix.net/product_photos/L04CwxtASl29ahRodqnb_FK1A7648.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
304	Frozen Sweet Potatoes	Equally at home in both sweet and savory dishes, we love these bite-size sweet potatoes for their versatility. Ingredients: Non-GMO Sweet Potatoes	10	oz	2.79	4.46	lb	Produce	Frozen Fruit & Vegetables	http://goodeggs2.imgix.net/product_photos/xCCYuchmRMmXQrZ2dkyQ_FK1A7627.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
305	Frozen Cauliflower	With a subtle nutty flavor and satisfying crunch, our cauliflower florets have been carefully frozen to lock in their farm-fresh flavor. A great substitute for heavier starches like potatoes (try them mashed!) or as the base of a creamy soup.Ingredients: Non-GMO Cauliflower	10	oz	2.79	4.46	lb	Produce	Frozen Fruit & Vegetables	http://goodeggs1.imgix.net/product_photos/jO52KnwWTaSfEYvuov5Q_FK1A7618.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
306	Raw Coconut Meat (Frozen)	You can now get the raw coconut meat that we cut fresh out of the young thai coconuts. The meat is immediately packaged and frozen with a shelf life of at least 6 months. Add to: Smoothies!Vegan WrapsYogurtPuddingCurriesPiesIce CreamOr, you can dry it and make Coconut ChipsIngredients: raw frozen young thai coconut meat100% Raw and VeganNo Preservatives or AdditivesDairy, Soy, Carrageenan, and Gluten FreeHealthy and Delicious!   Raw coconut meat naturally contains many viable living enzymes, which are helpful for digestion and metabolism.  It is high in lauric acid, which is used by the body to make disease-fighting fatty acids. Raw coconut meat is also high in essential fat burning energy giving Medium Chain Fatty Acids as well as concentrated trace minerals: Manganese-Potssium-Copper.The coconut meat has no preservatives, so if you are not ready to consume, please keep it frozen at all times.  The frozen coconut meat can keep for at least six months in the freezer, but we recommend consuming it within 9 months from purchase.To Consume: Please place coconut meat pouch to defrost in the refrigerator.  Once the coconut meat is completely defrosted in the refrigerator, unopened, the coconut meat may last up to 4 days in the refrigerator.  For faster defrost, place the frozen coconut meat pouch into a cold water bath. When it is defrosted, please consume right away or place it back into the fridge while the coconut meat pouch is still cold to touch.	12	oz	8.99	11.99	lb	Produce	Frozen Fruit & Vegetables	http://goodeggs1.imgix.net/product_photos/MWCqcQKlTp26w9EPpNgo_FK1A0784.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
307	Organic Roasted & Salted Cashews	Equal Exchange works directly with co-operative farmers in India to bring you these roasted and lightly salted sustainably farmed organic cashews. Founded in 2006, the 4,500 members of Fair Trade Alliance Kerala utilize Fair Trade premiums to improve their local community through initiatives that support clean drinking water programs, improve local school facilities, and protect both elephants and crops with elephant-friendly fencing. Ingredients: organic cashews, sea salt. Contains: tree nuts (cashews).Packaged in a facility that also handles milk, peanuts, tree nuts, wheat and soy products.	8	oz	7.99	1.0	oz	Produce	Dried Fruit & Nuts	http://goodeggs2.imgix.net/product_photos/L2kkeku2QKCNMY3RoYGE_20160909-EqualExchange_RoastedCashews_MG_0628.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
308	Organic Unsalted Cashews	Equal Exchange works directly with co-operative farmers in India to bring you these sustainably farmed organic cashews. Founded in 2006, the 4,500 members of Fair Trade Alliance Kerala utilize Fair Trade premiums to improve their local community through initiatives that improve local school facilities, support clean drinking water programs, and protect both elephants and crops with elephant-friendly fencing. Ingredients: organic cashews. Contains: tree nuts (cashews).Packaged in a facility that also handles milk, peanuts, tree nuts, wheat and soy products.	8	oz	7.99	1.0	oz	Produce	Dried Fruit & Nuts	http://goodeggs1.imgix.net/product_photos/6lMxtYDDTw2pOexZ8XK0_20160909-EqualExchange_NaturalCashews_MG_0616.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
309	Organic Almonds	Our certified organic California almonds are steam pasteurized to only the extent required by the FDA at our solar powered processing facility in Salinas county. A great snack on their own, or add roasted to your favorite recipes.	8	oz	7.49	14.98	lb	Produce	Dried Fruit & Nuts	http://goodeggs1.imgix.net/product_photos/whXL7kWnR46Z3iKaqKYV_FK1A9496.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
310	Roasted Walnuts	We've taken our creamy good, super natural chandler walnuts and slow roasted them at 300 degrees for 20 - 22 mins. This gives them a delicious, roasted crunch. Great for salads, over ice cream, with your with your favorite granola & bananas  or just plain out of the bag. Our walnuts are grown at Fillmore Farms, a certified organic grower near Gridley, CA.	3.5	oz	5.49	1.57	oz	Produce	Dried Fruit & Nuts	http://goodeggs1.imgix.net/product_photos/m7BWeVeXSouJ7wNiPniQ_R_00NGJ3uGb2ehHPutsZNfNaXBm8o52H1zrIFJNSCPQ%2CY4x8sk2n2GQeoHNhKToaP5eub8MMC6mzEmPOQBUmZ6c.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
311	Organic Raw Pecans	Our certified organic US grown pecans remain raw for ultimate versatility in your favorite dishes and baked goods.	8	oz	7.99	15.98	lb	Produce	Dried Fruit & Nuts	http://goodeggs1.imgix.net/product_photos/Qw9wOpvtTSy3y11hQWHx_Good%20Eggs_111515-9.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
312	Organic Raw Hazelnuts	Grown without the use of pesticides or other additives, our raw hazelnut kernels are sourced from the Willamette Valley of Oregon, America's largest producing region of hazelnuts. Ready to roast for snacking or as an addition to your favorite recipes.	8	oz	7.99	15.98	lb	Produce	Dried Fruit & Nuts	http://goodeggs1.imgix.net/product_photos/uVAHePgAT7irs7L0u7lz_Good%20Eggs_111515-10.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
313	Organic Spicy Raw Lemon Almonds	This Low-Glycemic snack is a divine spin on your everyday trail mix. Soaked in lemon and dehydrated at low temps for optimal digestion this spicy snack can get you through any hunger hurdles during a long day.Sprouted Almonds*, Lemon Juice*, Cayenne*, Himalayan Pink Salt	2	oz	5.99	3.0	oz	Produce	Dried Fruit & Nuts	http://goodeggs2.imgix.net/product_photos/9TFDoiWWRwIOwmCv1fCA_FK1A3779.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
314	Toasted Almonds (3.5oz)	Our toasted almonds are incredibly flavorful. Eat just one? Forget it! Great to pair with variety of cheeses - sharp to soft! We use Carmel variety almonds & roast them at 350º just short of burning. This retains their oil for moisture but intensifies their flavor. There is nothing like it available anywhere.Our grower, Baugher Ranch \nOrganics, is a certified organic grower in Orland, CA. We use only \norganic ingredients in all our products.Our products are packaged in resealable, reusable zip bags for your convenience.	3.5	oz	4.99	1.43	oz	Produce	Dried Fruit & Nuts	http://goodeggs2.imgix.net/product_photos/s8U45iyNRAOSS5zWoNHr_FK1A8758.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
315	Marcona Almonds	Marcona nuts are fatter, rounder and have a buttery taste, like a cross between an almond and a macadamia nut. Marconas are savored all over the world and are a staple at Spanish tapas bars everywhere. Traditional varieties are blanched almonds or almonds fried in olive oil & salted. Have them with cheese, wine, or beer. They are great chopped on salads, in baked goods, or simply just for snacking.Ingredients: Spanish Marcona Almonds, Olive Oil, Salt.	4	oz	7.49	1.87	oz	Produce	Dried Fruit & Nuts	http://goodeggs2.imgix.net/product_photos/QlJIdePHSua9zlxeJmu0_FK1A1896.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
316	Raw Almonds (7oz)	Our raw almonds are the nonpareil variety from the 2014 \nharvest, steam-pasteurized to retain maximum nutrients & \nflavor. They are a complete protein and simply good. Absolutely nothing \nis added: no salt, no oil, no sugar.Our grower, Baugher Ranch \nOrganics, is a certified organic grower in Orland, CA. We use only \norganic ingredients in all our products.Our products are packaged in resealable, reusable zip bags for your convenience.	7	oz	9.19	1.31	oz	Produce	Dried Fruit & Nuts	http://goodeggs2.imgix.net/product_photos/Fe7Fu0GpQgaAXCQmQag9_FK1A7204.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
317	Roasted Almonds (7oz)	Our roasted almonds are the Carmel variety which are packed with \nflavor - slow roasted at 310 degrees - delicious alone or as the perfect\n complement to a wide variety of fruits & cheeses. They are a \ncomplete protein and simply good. Absolutely nothing is added: no salt, \nno oil, no sugar. Our grower, Baugher Ranch \nOrganics, is a certified organic grower in Orland, CA. We use only \norganic ingredients in all our products.Our products are packaged in resealable, reusable zip bags for your convenience.	7	oz	9.59	1.37	oz	Produce	Dried Fruit & Nuts	http://goodeggs1.imgix.net/product_photos/oOTSZDJcR6aRWWRQWPvS_FK1A7196.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
318	Raw Almonds (16oz)	Our raw almonds are the nonpareil variety from the 2014 \nharvest, steam-pasteurized to retain maximum nutrients & \nflavor. They are a complete protein and simply good. Absolutely nothing \nis added: no salt, no oil, no sugar.Our grower, Baugher Ranch \nOrganics, is a certified organic grower in Orland, CA. We use only \norganic ingredients in all our products.Our products are packaged in resealable, reusable zip bags for your convenience.	16	oz	17.99	1.12	oz	Produce	Dried Fruit & Nuts	http://goodeggs2.imgix.net/product_photos/Fe7Fu0GpQgaAXCQmQag9_FK1A7204.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
319	Organic In Shell Chandler Walnuts	Old Dog Ranch proudly grows organic Chandler Walnuts, known for their large size and mild flavor, on a 5th generation family farm located in San Joaquin County. A durable variety favored amongst California farmers, the thin shells crack easily to reveal meaty nut halves inside. Ingredients: Organic Chandler Walnuts. Contains: Tree Nuts (Walnuts)	16	oz	6.99	0.44	oz	Produce	Dried Fruit & Nuts	http://goodeggs1.imgix.net/product_photos/xQgcbZbUTUe1NJVkmi5V_BsgDlLi1ROqI8R7cwTtJ_FK1A7459.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
320	Walnut Halves (16oz)	Oh man. The 2015 harvest is especially creamy & has terrific flavor. Absolutely nothing is added to our Chandler walnuts \nfrom Fillmore Farms, a certified organic grower in Gridley, CA. They are\n an excellent source of Omega-3 fatty acids and essential minerals. Enjoy.Our products are packaged in resealable, reusable zip bags for your convenience.	16	oz	16.99	1.06	oz	Produce	Dried Fruit & Nuts	http://goodeggs2.imgix.net/product_photos/zbYVbNYLR4ge07j7ucXQ_FK1A7240.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
321	Organic Black Chia Seeds	An exceptional source of omega-3 fatty acids, protein, fiber, and nutrients, chia seeds are incredibly versatile and can be incorporate into many of your favorite recipes thanks to their mild flavor and texture. Try mixed into yogurt or smoothies for an extra boost, and even in salads when you desire a satisfying crunch. We particularly love them rehydrated in coconut water (although any liquid will do) for a hydrating pick me up. To rehydrate soak 1 part chia to 10 parts liquid and let sit for 10 minutes until consistency changes to a gel. Edison Grainery travels the world to identify and partner with transparent small scale producers committed to sustainable growing and fair labor practices. Having visited the source farms in person, they are excited to offer you these quality organic chia seeds from Mexico and Bolivia. Ingredients: Organic Black Chia Seeds. Processed in a dedicated gluten-free facility in Oakland, CA that also handles tree nuts.	16	oz	9.99	9.99	lb	Produce	Dried Fruit & Nuts	http://goodeggs2.imgix.net/product_photos/xNvrDVuQRuaTCBXxzxMw_20160520-Edison_ChaiSeeds_MG_0245.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
322	Mediterranean Pine Nuts	Our extra-fancy grade pine nuts are sorted and lightly toasted at our solar powered facility in Salinas county. A great way to add crunch and buttery flavor to soups and salads, or as the base of your favorite pesto recipe! Product of Turkey.	4	oz	14.69	\N	\N	Produce	Dried Fruit & Nuts	http://goodeggs1.imgix.net/product_photos/78vNtKqxQNW29lhCDOdx_Good%20Eggs_111515-13.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
323	Organic Golden Flaxseed	Similar nutritional value to brown flax, it’s used in the same ways as well. Be sure to grind the seeds so your body can benefit from the low-carb, high fiber, vitamins, minerals, and antioxidants. Get your flax straight. Golden Flax has the same benefits as Brown Flax and can be used in the same creative ways. Try it ground up orsprinkled on top of your breakfast cereal, yogurt or fresh fruit.Stuff to know:High in Omega 3 fatty acidsHigh in dietary fiberEat whole, sprouted or ground for optimal health benefits Country of Origin: USA	1	lb	3.99	3.99	lb	Produce	Dried Fruit & Nuts	http://goodeggs2.imgix.net/product_photos/KwueBRfqTFi2TL0tZ3gK_FK1A0232.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
324	Hulled Hemp Seed Hearts	With a pleasant nut-like flavor and creamy texture, these raw hulled hulled hemp seeds are a nutritious and delightful addition to hot cereal and smoothies. Their light flavor allows them to blend easily into desserts, breads, pancakes, granola bars and other baked goods. Try them sprinkled on salads and blended into pilafs, you’ll find hemp seeds to be a delightful, nutritious enhancement to almost any dish.Hemp seeds are raw and are not toasted or salted. Because of their high oil content, hemp seeds should be stored in an airtight container in the fridge or freezer to keep fresh.Ingredients: hulled hemp seed. Manufactured in a facility that also uses tree nuts, soy, wheat & milk. 	12	oz	13.49	1.12	oz	Produce	Dried Fruit & Nuts	http://goodeggs2.imgix.net/product_photos/iLOEeiSFS1dpj5NQnTQT_20160803-BobsRedmill_HempSeedHearts_MG_7237.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
325	Organic Dried Mango	Peeled Snacks' Much-Ado-About-Mango® makes the perfect alternative to sugary filled snacks. Starting with whole organic mangoes harvested at the peak of ripeness, this gently sun dried snack has been preserves with no added sugar, preservatives or oils. Rich in flavor, vitamins and a variety of phytonutrients, with Peeled Snacks’ mango you can snack your way to a healthy new you.\nTo source the mangos for this snack, Peeled works directly with Mexican growers in the Western Sinaloa region. Through initiatives such as the implementation of solar panels on farms, increasing overall organic acreage in the region, and supporting cooperative organizing of workers, Peeled is a proud steward of fair labor and sustainable practices that encourage clean food production and sustain healthy communities.\nIngredients: Organic Mango	2.8	oz	3.99	1.43	oz	Produce	Fruit & Veggie Snacks	http://goodeggs1.imgix.net/product_photos/qPzg4TbNRlmQFTK4ooAg_20160713-Peeled_DriedMango_MG_5175.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
326	Organic Dried Apples	Bursting with flavor, these gently-dried organic apples are an excellent source of fiber and vitamins without any added sugar, preservatives or oils. With recipes for dried apples documented as far back as 1700 BC Mesopotamia, Peeled Snacks' Apple-2-The-Core® honors the storied tradition of preserving the sweet, subtly tart flavor of fresh apples so they can be enjoyed conveniently on the go.  An essential ingredient of Peeled Snacks’ ethos is building long lasting relationships with organic farms and suppliers. In supporting the organic food revolution, Peeled is committed to advancing fair labor and sustainable farming practices that encourage clean food production and healthy producer communities worldwide. \nIngredients: Organic Apples. 	2.8	oz	3.99	1.43	oz	Produce	Fruit & Veggie Snacks	http://goodeggs2.imgix.net/product_photos/NcUyD9FfRMCgsVv82VH3_20160713-Peeled_DriedApple_MG_5190.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
327	100% Organic Mini Medjool Dates	Our smallest Medjool grade of the season. The minis tend to be slightly drier and chewier than the larger medjool date grades we offer.	4	oz	4.99	1.25	oz	Produce	Fruit & Veggie Snacks	http://goodeggs1.imgix.net/product_photos/qrVaqlhpR02nk6Wq00ES_FK1A2069.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
328	Barhi Dates	Barhi dates are nature's caramel. Sensual, velvety, and buttercream-sweet, these dates will please more than any candy bar, ice cream, or pie.	8	oz	4.99	0.62	oz	Produce	Fruit & Veggie Snacks	http://goodeggs2.imgix.net/product_photos/ITBUZ3YDTKK4UEEd2BoJ_Good%20Eggs5415.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
329	Golden Raisins	Our sparkling Golden Raisins are a sweet and tangy bite. Add zing to your trail mix or eat them by the handful as an energy-boosting snack. Golden raisins add a natural sweetness to savory dishes and a bright burst of flavor to baked goods. Chewy, moist and delicious, these golden gems will keep you smiling!	1	pint	5.99	0.67	oz	Produce	Fruit & Veggie Snacks	http://goodeggs1.imgix.net/product_photos/QUrrTUAYSeyVciy98ci1_FK1A9579.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
330	Lil' Apricots	Our sun dried ‘Lil Apricots have a mega sweet & tangy\nflavor. They are the Royal Blenheim variety which have a long history in\nCalifornia as the queens of apricots. The growers, Good Humus Produce, have been organic farming in Capay Valley since 1977 . We take their apricots, re-hydrate them to a chewy\ntexture and then cut them into bit-size bits. Great snack for kids of any age!\n\n\n\n\n\nAll of our products use ONLY organic ingredients. They are packaged in resealable, reusable zip bags for your convenience.	1.5	oz	2.99	1.99	oz	Produce	Fruit & Veggie Snacks	http://goodeggs2.imgix.net/product_photos/edDISDETRJCPKOkarZoC_20160421-YoloFarmstead_Apricots_MG_7599%202.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
331	Sun Dried Peaches (7oz)	Our organic, sun-dried peaches are sulfur-free and soaked with\nCalifornia sunshine. We call ‘em ‘good and ugly’. The peaches are grown at \nFull Belly Farm, a certified organic grower in Guinda, CA. Absolutely \nnothing is added: no salt, no oil, no sugar. All of our products use ONLY organic ingredients.Our products are packaged in resealable, reusable zip bags for your convenience.	7	oz	10.49	1.5	oz	Produce	Fruit & Veggie Snacks	http://goodeggs2.imgix.net/product_photos/UUqX69UdTrqfhGcPXnKG_FK1A7346.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
332	Dried Bing Cherries	Our sun-dried Bing cherries bring you the sweet taste of summer with every chewy bite. Add zing to an entree, brighten a salad or intensify a sauce. Their delicious, earthy flavor blends well with both sweet and savory dishes. Packed with powerful antioxidants, dried Bing cherries are a perfect snack and a popular ingredient in baking. Don't miss out on these little jewels!	1	pint	7.99	0.89	oz	Produce	Fruit & Veggie Snacks	http://goodeggs1.imgix.net/product_photos/ElfaMpi1RxqpeqmQElIv_FK1A9642.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
333	Raisins (7oz)	Our Red Flame Raisins provide a natural energy booster anytime of the day. The plump and juicy Red Flame variety raisins are not coated in any oil, unlike most raisins on the market. Benzler Farms in Fresno, CA is a certified organic grower and are a third generation farm. All of our products use ONLY organic ingredients. They are packaged in resealable, reusable zip bags for your convenience.	7	oz	3.69	0.53	oz	Produce	Fruit & Veggie Snacks	http://goodeggs1.imgix.net/product_photos/2qJ9riOZQCSj0AiubEbs_FK1A3114.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
334	Flame Raisins	Our Flame Raisins are a seriously sweet and tasty bite. Large, moist and chewy, they add a delicious burst of fruit to your favorite muffin or raisin bread recipe. Perfect in all kinds of desserts and savory dishes. Flames are considered the sweetest of raisins. Go ahead and satisfy your candy cravings with this scrumptious, guilt-free snack!	1	pint	5.99	0.67	oz	Produce	Fruit & Veggie Snacks	http://goodeggs2.imgix.net/product_photos/sQ9MYohwTcmR584d8dVw_FK1A9600.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
532	Peanut Butter Fudge Ripple Ice Cream	Peanut butter ice cream with a dark chocolate fudge swirlIngredients: Cream, peanut butter, fudge (corn syrup, sugar, water, butter, bittersweet chocolate, cocoa powder, salt, vanilla extract) salt. Contains dairy, egg, nuts	1	pint	9.99	0.62	oz	Dairy	Ice Cream	http://goodeggs2.imgix.net/product_photos/4LKvSRbUQziXWcIDnOdT_20161103-HumphreySlocombe_PeanutButterFudge_MG_6121.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
335	Raisins (16oz)	Our Red Flame Raisins provide a natural energy booster anytime of the\n day. The plump and juicy Red Flame variety raisins are not coated in \nany oil, unlike most raisins on the market. Benzler Farms in Fresno, CA \nis a certified organic grower and are a third generation farm. All of our products use ONLY organic ingredients. They are packaged in resealable, reusable zip bags for your convenience.	16	oz	6.99	0.44	oz	Produce	Fruit & Veggie Snacks	http://goodeggs1.imgix.net/product_photos/2qJ9riOZQCSj0AiubEbs_FK1A3114.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
336	Peachies - Bite-Size Sun Dried Peaches	Peachies are 'cut to bits' organic sun dried peaches grown by Annie & Jeff Main at Good Humus, certified organic growers in Capay Valley. They're not so pretty but man, are they sweet! They are a great morning or afternoon snack and the perfect complement to our raw almonds if you're looking for a protein/sweet combo. And bonus - they are kid tested so try them in their lunch or on your next visit to the playground! Absolutely \nnothing is added: no salt, no salt, no sugar.                                                                                                                                           All of our products use ONLY organic ingredients. They are packaged in resealable, reusable zip bags for your convenience.	1.5	oz	2.99	1.99	oz	Produce	Fruit & Veggie Snacks	http://goodeggs2.imgix.net/product_photos/8tzRjOq7Q32FSz2N6v3P_FK1A4676.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
337	Khadrawi Dates	The Khadrawi Date is absolutely delicious! It's chewy and caramely with a very satisfying flavor. it would fit right in in a box of chocolates.	8	oz	5.99	0.75	oz	Produce	Fruit & Veggie Snacks	http://goodeggs2.imgix.net/product_photos/HNsxqiUrQA6vOmGxn7yv_20160912-KhadrawiDates_MG_0822.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
338	Medjool Dates	While the Medjool may be the most common date variety grown commercially in California, the flavor of Flying Disc Ranch's Medjool Dates is anything but common. These dates are large and pillowy. It has a meaty texture with a strong, satisfying and quite sweet flavor.	8	oz	6.99	0.87	oz	Produce	Fruit & Veggie Snacks	http://goodeggs2.imgix.net/product_photos/L1slR6JFRWaMhZn029YB_Flying_Disc_Ranch_Medjool_Date_8oz.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
339	Fresh Medjhool Dates	While the Medjhool may be the most common date variety grown commercially in California, the flavor of Flying Disc Ranch's Medjhool Dates is anything but common. These dates are large and pillowy. When freshly harvested and not fully dried, these dates have a huge amount of moisture left in them. If their skin breaks slightly and their sugars seep out a bit, they might form some crystallized sugars as they dry, which can sometimes be confused with mold, but are perfectly safe (and delicious!) to eat!	8	oz	6.99	0.87	oz	Produce	Fruit & Veggie Snacks	http://goodeggs2.imgix.net/product_photos/IlG40LCxRcWXD4dlQDvg_20161013-FlyingDisc_SoftMedjhoolDates_MG_3640.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
340	Snack Pack (5 Bag Sampler)	The snack pack provides a delicious & different snack for every day of the week. The almonds are Carmel & nonpareil varieties, our plump and un-coated raisins are Red Flame, our walnuts are Chandler & Hartley and our sun-dried, sulfur-free peaches are mostly the heirloom Suncrest and O'Henry. Absolutely nothing is added: no salt, no oil, no sugar. Our products are packaged in resealable, reusable zip bags for your convenience.All of our products use ONLY organic ingredients.Includes one bag each of the following:Raw Almonds (2 oz)Roasted Almonds (2 oz)Two Mix (2.5 oz): Raisins & Raw AlmondsThree Mix (2.4 oz): Raisins, Raw Almonds & WalnutsFour Mix (2.2 oz): Raisins, Raw Almonds, Walnuts & Peaches	5	count	14.49	1.31	oz	Produce	Dried Fruit & Nuts	http://goodeggs1.imgix.net/product_photos/M9GsaYCOTBe7bnjnCpxk_FK1A7857.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
341	Four Mix	Our Four Mix is singularly yummy. The almonds are the flavorful Carmel variety, our plump\n and un-coated raisins are Red Flames, our walnuts are Chandler & \nHartleys and our sun-dried, sulfur-free peaches are heirloom \nSuncrest and O'Henrys. Absolutely nothing is added: no salt, no oil, no \nsugar. All of our products use ONLY organic ingredients and are packaged in resealable, reusable zip bags for \nyour convenience.Ingredients: almonds*, raisins*, walnuts*, peaches* (organic ingredients*). Contains: tree nuts.	7	oz	7.29	1.04	oz	Produce	Dried Fruit & Nuts	http://goodeggs1.imgix.net/product_photos/nk5phK2KTQC0XarwbVwY_FK1A7309.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
342	Three Mix (7oz)	Our Three Mix  provides a super combo of protein, omega 3 fatty acids \nand essential minerals. The almonds are the flavorful Carmel variety, \nour plump\n and un-coated raisins are Red Flame's & our walnuts are Chandler \n& \nHartley's. Absolutely nothing is added: no salt, no oil, no \nsugar.All of our products use ONLY organic ingredients. Our products are packaged in resealable, reusable zip bags for \nyour convenience.	7	oz	7.19	1.03	oz	Produce	Dried Fruit & Nuts	http://goodeggs1.imgix.net/product_photos/2U7jtEIbSIE8nUKen3wV_FK1A7282.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
343	Three Mix (16oz)	Our Three Mix  provides a super combo of protein, omega 3 fatty acids \nand essential minerals. The almonds are the flavorful Carmel variety, \nour plump\n and un-coated raisins are Red Flame's & our walnuts are Chandler \n& \nHartley's. Absolutely nothing is added: no salt, no oil, no \nsugar.All of our products use ONLY organic ingredients. Our products are packaged in resealable, reusable zip bags for \nyour convenience.	16	oz	13.59	0.85	oz	Produce	Dried Fruit & Nuts	http://goodeggs1.imgix.net/product_photos/2U7jtEIbSIE8nUKen3wV_FK1A7282.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
344	Four Mix (2.2oz)	Our Four Mix is singularly yummy. The almonds are the flavorful Carmel variety, our plump\n and un-coated raisins are Red Flame's, our walnuts are Chandler & \nHartley's and our sun-dried, sulfur-free peaches are heirloom \nSuncrest and O'Henry's. Absolutely nothing is added: no salt, no oil, no \nsugar.All of our products use ONLY organic ingredients. Our products are packaged in resealable, reusable zip bags for \nyour convenience.	2.2	oz	2.99	1.36	oz	Produce	Dried Fruit & Nuts	http://goodeggs1.imgix.net/product_photos/nk5phK2KTQC0XarwbVwY_FK1A7309.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
345	Two Mix (3.5oz)	Our Two Mix provides a natural\nenergy booster anytime of the day. The almonds are the flavorful Carmel variety & \nour plump\n and un-coated raisins are Red Flame's. Absolutely nothing is added: no salt, no oil, no \nsugar.All of our products use ONLY organic ingredients. Our trail mixes are packaged in resealable, reusable zip bags for \nyour convenience.\n	3.5	oz	3.69	1.05	oz	Produce	Dried Fruit & Nuts	http://goodeggs1.imgix.net/product_photos/vrhIdFKuTT6nuVYBcrUQ_FK1A7165.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
568	Jalapeño Cream Cheese	House-made cream cheese blended together with local farm fresh jalapeños. Ingredients: jalapeños and cream cheese.	8	oz	6.99	13.98	lb	Dairy	Cheese	http://goodeggs1.imgix.net/product_photos/ezx7nV1aQJO92y0t0RZH_FK1A4571.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
346	Three Mix (2.4oz)	Our Three Mix  provides a super combo of protein, omega 3 fatty acids and essential minerals. The almonds are the flavorful Carmel variety, our plump\n and un-coated raisins are Red Flame's & our walnuts are Chandler & \nHartley's. Absolutely nothing is added: no salt, no oil, no \nsugar.All of our products use ONLY organic ingredients. Our products are packaged in resealable, reusable zip bags for \nyour convenience.	2.4	oz	2.99	1.25	oz	Produce	Dried Fruit & Nuts	http://goodeggs1.imgix.net/product_photos/2U7jtEIbSIE8nUKen3wV_FK1A7282.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
347	Organic Pasture Raised Eggs (Large)	Alexandre Kids Organic Pasture Raised Large Eggs- from Alexandre Family EcoDairy Farms, Crescent City, CAHands down some of the best eggs we've ever tasted, these hens are part of a multi-species rotational grazing system, moving twice every week onto fresh green grass all year round. "5-egg" ranking from the Cornucopia Institute, certified organic, and really, really delicious! Read more about Alexandre Kids eggs here!All of the hens are raised on organic pastures under the watchful eyes of the Alexandre dairy cows and Great Pyrenees guard dogs. The hens graze on green, lush organic grass and have room to roam in the fresh coastal air and sunshine. They intermingle with the dairy cows and enjoy a natural farm life setting where they can produce the most nutritious organic eggs. Hens are housed in mobile “egg-mobiles,” designed and constructed by the Alexandre Family. The “egg-mobiles” are moved to new areas of pasture twice a week so the pasture gets desired fertilizer and to prevent overgrazing. Our chickens eat certified organic feeds; irrigated dairy pastures consisting of 50 to 100 variety of plant species ranging from grasses, forbs, herbs and clovers; oyster shell, with limited daily feeding of mixture of organic grains and minerals. We never add any chemicals, hormones or antibiotics. Collected eggs are processed daily at the Alexandre Kids egg ranch.	1	dozen	8.99	\N	\N	Dairy	T-Day Essentials	http://goodeggs1.imgix.net/product_photos/PGDjEUTQzaCYRQd8Cxjr_20160908-AlexanderKids_DozenEggs_MG_0398.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
348	Organic Whole Milk	Our Organic, Cream Top Whole Milk is the way it used to be, with the cream on the top. The cream in our organic milk floats naturally to the top because it is non-homogenized.Straus Family Creamery Organic Whole Milk is pasteurized at 171°F for 18 seconds. Unlike most milk, which is ultra-pasteurized (at or above 280°F for at least two seconds), we preserve the true flavor of our cows’ diet.All of Straus Family Creamery’s certified organic milk products are Non-GMO Project Verified, certified kosher and gluten-free.Recyclable, reusable glass bottles.Ingredients: Pasteurized Organic Milk.	1	half gallon	4.99	0.08	fl oz	Dairy	T-Day Essentials	http://goodeggs1.imgix.net/product_photos/az8cr19SNS7CqAp4G1sX_FK1A5733.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
349	Organic Whipping Cream	Close in flavor to the cream bottled by small dairies in Europe, our Organic Whipping Cream is pure and simple with no added stabilizers. With 35% butterfat, you’ll really taste the difference in, and the true flavor of our cows’ healthy diet.All of Straus Family Creamery’s certified organic milk products are Non-GMO Project Verified, certified kosher and gluten-free.Recyclable, reusable glass bottles. Ingredients: Pasteurized Organic Cream.	1	pint	4.89	0.31	fl oz	Dairy	T-Day Essentials	http://goodeggs1.imgix.net/product_photos/wdaLkQJFSqebL0Pqklur_FK1A5767.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
350	Organic Egg Nog	A favorite for your holiday season, our old-fashioned Organic Eggnog is made with simple, organic ingredients and finished with a touch of organic nutmeg.No emulsifiers or thickeners are ever used in this rich, delicious blend of organic milk, organic cream, organic sugar and organic, pasteurized egg yolks. It's absolutely delicious and worth waiting all year for.Seasonal - only available through JanuaryRecyclable, reusable glass bottlesPrice includes $1.50 bottle deposit.Ingredients: Pasteurized Organic Milk, Organic Cream, Organic Cane Sugar, Organic Egg Yolk, Organic Nutmeg	1	quart	7.49	0.23	fl oz	Dairy	T-Day Essentials	http://goodeggs1.imgix.net/product_photos/EYta75dRTgu2ngY6noid_FK1A3326.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
351	Briana with Truffles	Briana with Truffles is semi-firm, smear-ripened cheese, dense and easily melted, made with Italian truffle oil and black truffles throughout the cheese. Second Place Winner at American Cheese Society 2016.Because we use the freshest milk from our own grass-fed cows, our specialty cheeses have a delicious flavor unique to our farm.  Our cheeses are hand crafted with care using our own specially-developed artisan recipes and the freshest grass-fed ingredients.   We know you will taste the difference.Ingredients: Raw cow's milk, cultures, salt, truffle paste (truffles, water, salt), truffle oil.Contains dairy	8	oz	15.59	31.18	lb	Dairy	T-Day Essentials	http://goodeggs1.imgix.net/product_photos/WYFuqPwRE6ZkIkQL1mTQ_20161004-JacobsBrichford_BriancaTruffle_MG_2624.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
352	McEvoy Olive Oil Ice Cream	You've never experienced an ice cream like this one. Smooth, velvety olive oil ice cream with a hint of citrus zest to set it off. Deliciously refreshing!Ingredients: olive oil, ice cream base (cream, nonfat milk, sugar, egg yolk, buttermilk), salt, orange zest.Contains: milk, eggs.	1	pint	9.99	0.62	oz	Dairy	T-Day Essentials	http://goodeggs1.imgix.net/product_photos/xQFOuoG4TW8BZ02gQrCw_20161103-HumphreySlocombe_McEvoysOiliveOil_MG_6095.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
353	Crème Fraîche	Crème fraîche is an exquisitely rich cultured cows’ cream with a thick, creamy texture and a tart, slightly nutty flavor. Incredibly versatile, crème fraîche can be used as a base for dips and sauces, as an ingredient in baking, or as a simple topping for pies and soups. Unlike other cream based products, crème fraîche will not curdle over high heat or separate when mixed with wine or vinegar; it retains a rich, smooth texture and adds depth of flavor. It can also be whipped and sweetened for desserts. Ingredients: Pasteurized cows' cream, culture. contains dairy	8	oz	5.99	11.98	lb	Dairy	T-Day Essentials	http://goodeggs2.imgix.net/product_photos/LfmOQHhDRcyswpDkHUpa_FK1A4547.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
361	Organic Whole Milk	Please note that this milk comes in plastic containers that can be recycled or reused. One gallon is 128 oz.Our Organic, Cream Top Whole Milk is the way it used to be, with the cream on the top. The cream in our organic milk floats naturally to the top because it non-homogenized.Straus Family Creamery Organic Whole Milk is pasteurized at 171°F for 18 seconds. Unlike most milk, which is ultra-pasteurized (at or above 280°F for at least two seconds), we preserve the true flavor of our cows’ diet.The pasture grasses our cows graze on tend to be sweeter out here in Northern California’s Marin and Sonoma County Coasts. The first thing you’ll notice when you pop the top of our cream-top milk is its beautiful aroma. Milk is supposed to have an aroma and a fresh taste. Enjoy!All of Straus Family Creamery’s certified organic milk products are Non-GMO Project Verified, certified kosher and gluten-free.Ingredients: Pasteurized Organic Milk.	1	gallon	8.49	0.07	fl oz	Dairy	Milk	http://goodeggs1.imgix.net/product_photos/F6IiAC6fQKm3RXweQWnt_FK1A5721.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
354	Harbison	Harbison is named for Anne Harbison, affectionately known as the grandmother of Greensboro. Along with breathtaking views, traditions and people are part of what makes Vermont's working landscape special; we're proud to honor Ms. Harbison's contribution with this cheese.Harbison is a soft-ripened cheese with a rustic, bloomy rind. Young cheeses are wrapped in strips of spruce cambium, the tree's inner bark layer, harvested from the woodlands of Jasper Hill. The spoonable texture begins to develop in our vaults, though the paste continues to soften on the way to market. Harbison is woodsy and sweet, balanced with lemon, mustard, and vegetal flavors.Harbison is a great excuse to gather a few friends and scoop into a decadent treat. When a bit younger, the bark can be peeled away for sliced portioning. If the bark has fused with a more loosened paste, then the best approach is to leave the bark intact and spoon out portions from the top. Pair with oaked white wine, or barrel-aged sour beer. Fruit mostarda and crusty bread make nice accompaniments.Ingredients: Pasteurized cows milk, rennet, cultures, salt, 	10	oz	16.49	26.38	lb	Dairy	T-Day Essentials	http://goodeggs1.imgix.net/product_photos/PLGcM8X0RqyYfcMy13eQ_20160921-JasperHill_Harbison_MG_1519.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
355	"Best of the West" Cheese Plate	From creamy, earthy Mt. Tam to Pt. Reye's tangy, sharp Original Blue, our Good Eggs cheese specialist Erin carefully selected each one to bring you a deliciously balanced cheese board. Whether your favorite is hard cheese or soft, salty cheese or sweet, you can't go wrong with this all-star tour of West Coast cheeses and crackers. Perfect for wowing your friends at a holiday party, and for pairing with your favorite wine or beer!Mt. Tam from Cowgirl Creamery, 8 ozOriginal Blue Cheese from Pt. Reyes Farmstead, 6 ozRioly Run from Stepladder Creamery, 8 ozAtika from Tomales Farmstead Creamery, 5 ozMoonflower from Garden Variety Cheese, 4 ozWalnut Pan Forte Crostini from Rustic Bakery , 5 ozActual products may vary from those featured in photograph, but products listed here will always be accurate.Contains: Milk, tree nuts, wheat.	1	count	59.99	\N	\N	Dairy	T-Day Essentials	http://goodeggs2.imgix.net/product_photos/7C13LBW1RmCvtImQfhLO_20161028-CheesePlates_BestofTheWest_MG_5670.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
356	Organic 2% Reduced Fat Milk	Clover Organic Farms sources its rBST and antibiotic-free milk and cream from a select group of small, organic family farms on the North Coast of California. Our milk and cream arrives at the plant the same day the cows are milked and it is fresh pasteurized* to ensure quality while preserving its fresh farm taste and nutritional value. In 2000, we became the first U.S. dairy processor to be awarded the American Humane Certified label for humanely produced dairy products by the American Humane Association. We invite you to enjoy Clover Organic Farms Milk and Cream products in a good conscience and good health!OrganicrBST and antibiotic-freeFresh pasteurized to ensure the qualityGluten freeLow sodiumExcellent source of calciumIngredients:  Certified organic grade A reduced fat milk, certified organic nonfat dry milk, vitamin A palmitate, vitamin D3	1	half gallon	4.49	0.07	fl oz	Dairy	Milk	http://goodeggs1.imgix.net/product_photos/J35OVXygQgaO8P5e73qT_FK1A9909.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
357	Organic 2% Reduced Fat Milk	Clover Organic Farms sources its rBST and antibiotic-free milk and cream from a select group of small, organic family farms on the North Coast of California. Our milk and cream arrives at the plant the same day the cows are milked and it is fresh pasteurized to ensure quality while preserving its fresh farm taste and nutritional value. In 2000, we became the first U.S. dairy processor to be awarded the American Humane Certified label for humanely produced dairy products by the American Humane Association. We invite you to enjoy Clover Organic Farms Milk and Cream products in a good conscience and good health!OrganicrBST and antibiotic-freeFresh pasteurized to ensure the qualityGluten freeLow sodiumExcellent source of calciumIngredients:  Certified organic grade A reduced fat milk, certified organic nonfat dry milk, vitamin A palmitate, vitamin D3	1	gallon	7.99	0.06	fl oz	Dairy	Milk	http://goodeggs1.imgix.net/product_photos/ZPr0RMbqS0WodT0eJIBQ_FK1A9932.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
358	Organic 2% Reduced Fat Milk	The cream floats to the top, just like in our Organic Whole Milk.Our Organic, Cream Top 2% Reduced Fat milk is pasteurized at 171°F for 18 seconds. Unlike most milk, which is ultra-pasteurized (at or above 280°F for at least two seconds), we preserve the true flavor of milk that results from our cows’ diet.The pasture grasses our cows graze on tend to be sweeter out here in Northern California’s Marin and Sonoma County Coasts. The first thing you’ll notice when you pop the top of our cream-top milk is its beautiful aroma. Milk is supposed to have an aroma and a fresh taste. Enjoy!Ingredients: Pasteurized Organic Reduced Fat Milk, Vitamin A Palmitate.	1	half gallon	4.99	0.08	fl oz	Dairy	Milk	http://goodeggs1.imgix.net/product_photos/fG4sVGJ9SxyGB0GGQ2o7_FK1A5738.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
359	2% Reduced Fat Milk	Clover sources its rBST and anti-biotic-free milk and cream from a select group of small family farms on the North Coast of California. Our milk and cream arrive at the plant the same day the cows are milked and it is fresh pasteurized* to ensure quality while preserving its fresh farm taste and nutritional value. We do this so your family can enjoy Clover Milk and Cream products in a good conscience and good health!Ingredients: Milk, nonfat milk, vitamin A palmitate, vitamin D3	1	half gallon	2.49	0.04	fl oz	Dairy	Milk	http://goodeggs2.imgix.net/product_photos/CG8lzeDSLKVz7A0K6b9A_20160422-Clover_HalfGallon_2percentMilk_MG_7830.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
360	Organic Whole Milk	Clover Organic Farms sources its rBST and antibiotic-free milk and cream from a select group of small, organic family farms on the North Coast of California. Our milk and cream arrives at the plant the same day the cows are milked and it is fresh pasteurized to ensure quality while preserving its fresh farm taste and nutritional value. In 2000, we became the first U.S. dairy processor to be awarded the American Humane Certified label for humanely produced dairy products by the American Humane Association. We invite you to enjoy Clover Organic Farms Milk and Cream products in a good conscience and good health!OrganicrBST and antibiotic-freeFresh pasteurized to ensure the qualityGluten freeLow sodiumExcellent source of calciumIngredients: Organic grade A milk, vitamin D3	1	half gallon	4.49	0.07	fl oz	Dairy	Milk	http://goodeggs1.imgix.net/product_photos/zNv1C63zSVeKUREEH0Zj_FK1A9922.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
387	Organic Pasture Raised Eggs (Large)	Mary's Organic Pasture Raised Chicken Eggs are produced by Pitman Farms, a family owned business that has been raising poultry for three generations. The chickens are fed a healthy non-GMO verified, gluten-free, vegetarian diet and have continuous access to pasture where they can spread their wings and explore. There's no wrong way to enjoy these eggs: scrambled, fried, hard-boiled, baked into a frittata, or as a crucial baking ingredient for your favorite family recipes.	1	dozen	7.99	\N	\N	Dairy	Eggs	http://goodeggs2.imgix.net/product_photos/ynrbcfrSS16cvaYIRVuU_FK1A9532.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
362	Organic Whole Milk	Clover Organic Farms sources its rBST and antibiotic-free milk and cream from a select group of small, organic family farms on the North Coast of California. Our milk and cream arrives at the plant the same day the cows are milked and it is fresh pasteurized to ensure quality while preserving its fresh farm taste and nutritional value. In 2000, we became the first U.S. dairy processor to be awarded the American Humane Certified label for humanely produced dairy products by the American Humane Association. We invite you to enjoy Clover Organic Farms Milk and Cream products in a good conscience and good health!OrganicrBST and antibiotic-freeFresh pasteurized to ensure the qualityGluten freeLow sodiumExcellent source of calciumIngredients: Organic grade A milk, vitamin D3	1	gallon	7.99	0.06	fl oz	Dairy	Milk	http://goodeggs2.imgix.net/product_photos/cV82b2TSTdO2azipp9v3_FK1A7554.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
363	Organic Whole Milk	Our Organic, Cream Top Whole Milk is the way it used to be, with the cream on the top. The cream in our organic milk floats naturally to the top because it is non-homogenized.Straus Family Creamery Organic Whole Milk is pasteurized at 171°F for 18 seconds. Unlike most milk, which is ultra-pasteurized (at or above 280°F for at least two seconds), we preserve the true flavor of our cows’ diet.All of Straus Family Creamery’s certified organic milk products are Non-GMO Project Verified, certified kosher and gluten-free.Recyclable, reusable glass bottles.Ingredients: Pasteurized Organic Milk.	1	quart	3.29	0.1	fl oz	Dairy	Milk	http://goodeggs1.imgix.net/product_photos/P5r4upAZSdafhLe9vaIK_FK1A2603.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
364	Organic Whole Jersey Milk	The Jersey cows at Saint Benoît Creamery in Sonoma are always outside year-round and fed from the pastures they graze on.  This milk is rich and creamy thanks to the high protein and good fat content of a pastured diet. The original fat content remains in the milk to protect the naturally occurring vitamin A and D, providing superior quality taste.Non-homogenizedVat pasteurizedSourced from a small fourth generation dairy farmPlease note, we can only process bottle and jar returns for St. Benoit orders that have been placed via Good Eggs!  If you have other St. Benoit containers to return you can do so at any of the locations listed here.	1	liter	3.99	0.12	fl oz	Dairy	Milk	http://goodeggs2.imgix.net/product_photos/C8dgCZu0Tqqv56JlN96X_FK1A5755.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
365	Whole Milk	Clover sources its rBST-free and anti-biotic-free milk and cream from a select group of small family farms on the North Coast of California. Our milk and cream arrive at the plant the same day the cows are milked and it is fresh pasteurized* to ensure quality while preserving its fresh farm taste and nutritional value. We do this so your family can enjoy Clover Milk and Cream products in a good conscience and good health!Ingredients:  Milk, vitamin D3 added	1	half gallon	2.49	0.04	fl oz	Dairy	Milk	http://goodeggs2.imgix.net/product_photos/kVup6FxcS6ySAjxVh6MI_20160422-Clover_HalfGallon_MilkWhole_MG_7831.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
366	Organic Eggnog	Our rich and creamy eggnog is perfect by itself, or as part of your favorite family recipe!Ingredients: Organic milk and organic cream, organic sugar, organic nonfat milk powder, organic egg yolks, organic tapioca starch, organic nutmeg, salt, carrageenan, organic natural flavor, organic annatto & organic turmeric (for color)	1	quart	5.99	0.19	fl oz	Dairy	Milk	http://goodeggs2.imgix.net/product_photos/e63ZHEeOQyCuFKAmCRkm_FK1A7095.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
367	Organic Whole Raw Milk	OPDC raw milk is alive with fully active enzymes, a broad spectrum of\n naturally occurring beneficial bacteria, all 22 essential amino acids, \n18 good fatty acids, metabolically available vitamins, immunoglobulins, \nminerals, antioxidants, and CLA.The milk is never damaged or \nchanged by pasteurization, homogenization, or other processing. Organic \nPastures produces 100% USDA certified organic, Grade A, raw milk of \nsuper premium quality. USDA organic standards require that cows be pasture grazed just four months out of the year. OPDC goes far beyond this standard and grazes our cows on green pastures every day. In addition to green pastures, our cows are fed: a specially formulated organic mineral supplement, free choice salt and trace mineral blocks, high test organic alfalfa, and some sweet organic corn to keep them healthy and strong. A disease free life: a life with optimal health starts with a strong immune system - and raw milk is the finest immune system support food available.	1	quart	5.99	0.19	fl oz	Dairy	Milk	http://goodeggs1.imgix.net/product_photos/J6xDwjpQ6gHyZYmwKRwu_FK1A1943.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
368	Organic Whole Raw Milk	OPDC raw milk is alive with fully active enzymes, a broad spectrum of\n naturally occurring beneficial bacteria, all 22 essential amino acids, \n18 good fatty acids, metabolically available vitamins, immunoglobulins, \nminerals, antioxidants, and CLA.The milk is never damaged or \nchanged by pasteurization, homogenization, or other processing. Organic \nPastures produces 100% USDA certified organic, Grade A, raw milk of \nsuper premium quality. USDA organic standards require that cows be pasture grazed just four months out of the year. OPDC goes far beyond this standard and grazes our cows on green pastures every day. In addition to green pastures, our cows are fed: a specially formulated organic mineral supplement, free choice salt and trace mineral blocks, high test organic alfalfa, and some sweet organic corn to keep them healthy and strong. A disease free life: a life with optimal health starts with a strong immune system - and raw milk is the finest immune system support food available.	1	half gallon	9.99	0.16	fl oz	Dairy	Milk	http://goodeggs1.imgix.net/product_photos/0l2S1nG3TB6VlJhLuo6c_FK1A1924.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
369	Organic Whole Raw Milk	OPDC raw milk is alive with fully active enzymes, a broad spectrum of naturally occurring beneficial bacteria, all 22 essential amino acids, 18 good fatty acids, metabolically available vitamins, immunoglobulins, minerals, antioxidants, and CLA.The milk is never damaged or changed by pasteurization, homogenization, or other processing. Organic Pastures produces 100% USDA certified organic, Grade A, raw milk of super premium quality. USDA organic standards require that cows be pasture grazed just four months out of the year. OPDC goes far beyond this standard and grazes our cows on green pastures every day. In addition to green pastures, our cows are fed: a specially formulated organic mineral supplement, free choice salt and trace mineral blocks, high test organic alfalfa, and some sweet organic corn to keep them healthy and strong. A disease free life: a life with optimal health starts with a strong immune system - and raw milk is the finest immune system support food available.	1	gallon	17.99	0.14	fl oz	Dairy	Milk	http://goodeggs2.imgix.net/product_photos/OQ5xJ8nNSKW99lscb2NR_FK1A1913.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
388	Pasture Raised Eggs (Large)	Living out in the pasture, our hens are free to explore, chase bugs and snack on hearty green grasses. Three times a day, we serve them freshly mixed non-GMO feed. In the their spacious mobile coops, they lay beautiful eggs and roost for the evening."Appreciate Nature's Perfection"	1	dozen	8.29	\N	\N	Dairy	Eggs	http://goodeggs2.imgix.net/product_photos/fCQYz1HcSKeqWItobqnU_FK1A9515.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
370	Organic Nonfat Milk	Most people agree that our Organic Nonfat Milk is sweeter and richer than any skim milk they've ever tasted. It's the skim milk with the full-bodied flavor of low fat milk.Our Organic Nonfat Milk is pasteurized at 171°F for 18 seconds. Unlike most milk, which is ultra-pasteurized (at or above 280°F for at least two seconds), we preserve the true flavor of milk that results from our cows’ diet.All of Straus Family Creamery’s certified organic milk products are Non-GMO Project Verified, certified kosher and gluten-free.Recyclable, reusable glass bottles.Ingredients: Pasteurized Nonfat Milk, Vitamin A Palmitate.	1	half gallon	4.99	0.08	fl oz	Dairy	Milk	http://goodeggs1.imgix.net/product_photos/0C62QH2wTziKGBP3r3YD_FK1A5740.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
371	Organic Nonfat Milk	Please note that this milk comes in plastic containers that can be recycled or reused. One gallon is 128 ounces.Most people agree that our Organic Nonfat Milk is sweeter and richer than any skim milk they've ever tasted. It's the skim milk with the full-bodied flavor of low fat milk.Our Organic Nonfat Milk is pasteurized at 171°F for 18 seconds. Unlike most milk, which is ultra-pasteurized (at or above 280°F for at least two seconds), we preserve the true flavor of milk that results from our cows’ diet.The pasture grasses our cows graze on tend to be sweeter out here in Northern California’s Marin and Sonoma County Coasts. The first thing you’ll notice when you pop the top of our cream-top milk is its beautiful aroma. Milk is supposed to have an aroma and a fresh taste. Enjoy!All of Straus Family Creamery’s certified organic milk products are Non-GMO Project Verified, certified kosher and gluten-free.Ingredients: Pasteurized Nonfat Milk, Vitamin A Palmitate.	1	gallon	8.49	0.07	fl oz	Dairy	Milk	http://goodeggs2.imgix.net/product_photos/oE1WF6EOQjuOHQIZ7o7J_FK1A1809.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
372	Organic 1% Low Fat Milk	Clover Organic Farms sources its rBST and antibiotic-free milk and cream from a select group of small, organic family farms on the North Coast of California. Our milk and cream arrives at the plant the same day the cows are milked and it is fresh pasteurized to ensure quality while preserving its fresh farm taste and nutritional value. In 2000, we became the first U.S. dairy processor to be awarded the American Humane Certified label for humanely produced dairy products by the American Humane Association. We invite you to enjoy Clover Organic Farms Milk and Cream products in a good conscience and good health!OrganicrBST and antibiotic-freeFresh pasteurized to ensure the qualityGluten freeLow fatExcellent source of calciumGood for reduced calorie dietsIngredients: Certified organic grade A low fat milk, certified organic nonfat dry milk, vitamin A palmitate, vitamin D3Contains Dairy	1	half gallon	4.49	0.07	fl oz	Dairy	Milk	http://goodeggs1.imgix.net/product_photos/nGGvW18IQzqgQgA7YT78_FK1A9914.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
373	Low Fat Chocolate Milk	"This is a new product and we’re excited about it because-- well who doesn't love chocolate milk?" Erin, Good Eggs Buyer.Clover sources its rBST and anti-biotic-free milk and cream from a select group of small family farms on the North Coast of California. Our milk and cream arrive at the plant the same day the cows are milked and it is fresh pasteurized* to ensure quality while preserving its fresh farm taste and nutritional value. We do this so your family can enjoy Clover Milk and Cream products in a good conscience and good health!Ingredients:  Nonfat Milk, Milk Evaporated Cane Juice, Cocoa (Processed with Alkali), Corn Starch, Salt, Carrageenan, Guar gum, Vanilla, Vitamin A Palmitate, and Vitamin D3.	1	half gallon	3.99	0.06	fl oz	Dairy	Milk	http://goodeggs1.imgix.net/product_photos/Q6Gng6mkQWYlS7dfTAwu_20160422-Clover_HalfGallon_ChocolatetMilk_MG_7842.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
374	Organic 1% Low Fat Milk	Clover Organic Farms sources its rBST and antibiotic-free milk and cream from a select group of small, organic family farms on the North Coast of California. Our milk and cream arrives at the plant the same day the cows are milked and it is fresh pasteurized to ensure quality while preserving its fresh farm taste and nutritional value. In 2000, we became the first U.S. dairy processor to be awarded the American Humane Certified label for humanely produced dairy products by the American Humane Association. We invite you to enjoy Clover Organic Farms Milk and Cream products in a good conscience and good health!OrganicrBST and antibiotic-freeFresh pasteurized to ensure the qualityGluten freeLow fatExcellent source of calciumGood for reduced calorie dietsIngredients: Certified organic grade A low fat milk, certified organic nonfat dry milk, vitamin A palmitate, vitamin D3Contains Dairy	1	gallon	7.99	0.06	fl oz	Dairy	Milk	http://goodeggs1.imgix.net/product_photos/048Dyg4T9yHfWaRMIuXT_FK1A9928.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
375	Organic 1%  Lowfat Milk	The only Organic 1% Lowfat Milk available with cream on top!Our Organic, Cream Top Lowfat milk is pasteurized at 171°F for 18 seconds. Unlike most milk, which is ultra-pasteurized (at or above 280°F for at least two seconds), we preserve the true flavor of milk that results from our cows’ diet.The pasture grasses our cows graze on tend to be sweeter out here in Northern California’s Marin and Sonoma County Coasts. The first thing you’ll notice when you pop the top of our cream-top milk is its beautiful aroma. Milk is supposed to have an aroma and a fresh taste. Enjoy!Ingredients: Pasteurized Organic Lowfat Milk, Vitamin A Palmitate.	1	half gallon	4.99	0.08	fl oz	Dairy	Milk	http://goodeggs1.imgix.net/product_photos/0XqeB1kGTv6BucEaJvHI_FK1A5736.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
376	1% Low Fat Milk	Clover sources its rBST and anti-biotic-free milk and cream from a select group of small family farms on the North Coast of California. Our milk and cream arrive at the plant the same day the cows are milked and it is fresh pasteurized* to ensure quality while preserving its fresh farm taste and nutritional value. We do this so your family can enjoy Clover Milk and Cream products in a good conscience and good health!Ingredients:  Nonfat milk, milk, vitamin A palmitate, vitamin D3	1	half gallon	2.49	0.04	fl oz	Dairy	Milk	http://goodeggs1.imgix.net/product_photos/ouhvVn2ET8WHH5lOvNj7_20160422-Clover_HalfGallon_1percentMilk_MG_7828.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
377	100% Sheep's Milk	"Haverton is the only sheep dairy on the West Coast to bottle their sheep milk! This mild milk will have you fighting for the layer of creamy fat at the top of the bottle!" - Erin, BuyerTastes great and is good for you! Sheep’s milk is naturally homogenized, easily digestible and is the perfect alternative for people with lactose intolerance.  Containing almost double the protein and calcium compared to cows milk. Sheep’s milk is high in mono and poly unsaturated fats, and contains substantial amounts of vitamins A, D, E, B12, Folic acid and minerals like zinc, magnesium and phosphorous.  All this plus a mild, creamy flavor make Haverton Hill 100% Sheep’s Milk the healthy choice.Our milk is provided in glass bottles that are re-usable with BPA free tamper evident caps.  Our glass bottles are odor free, providing you with farm fresh cold milk. Not only is our milk nutritious but we are environmentally friendly too.	1	quart	9.29	0.29	fl oz	Dairy	Milk	http://goodeggs1.imgix.net/product_photos/EgHwYlfqQXTM9Jf1qS4Q_FK1A8300.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
378	Organic Half and Half	Clover Organic Farms sources its rBST and antibiotic-free milk and cream from a select group of small, organic family farms on the North Coast of California. Our milk and cream arrives at the plant the same day the cows are milked and it is fresh pasteurized* to ensure quality while preserving its fresh farm taste and nutritional value. In 2000, we became the first U.S. dairy processor to be awarded the American Humane Certified label for humanely produced dairy products by the American Humane Association. We invite you to enjoy Clover Organic Farms Milk and Cream products in a good conscience and good health!Organic rBST and antibiotic-freeFresh pasteurized to ensure the qualityGluten freeLow sodiumPerfect for your morning coffee and your favorite family recipes!Ingredients: Certified organic grade A milk and certified organic cream	1	quart	4.29	0.13	fl oz	Dairy	Cream	http://goodeggs2.imgix.net/product_photos/xuDRxQsOT9Kej7cydZGL_FK1A0595.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
379	Organic Heavy Whipping Cream	Clover Organic Farms sources its rBST and antibiotic-free milk and cream from a select group of small, organic family farms on the North Coast of California. Our milk and cream arrives at the plant the same day the cows are milked and it is fresh pasteurized* to ensure quality while preserving its fresh farm taste and nutritional value. In 2000, we became the first U.S. dairy processor to be awarded the American Humane Certified label for humanely produced dairy products by the American Humane Association. We invite you to enjoy Clover Organic Farms Milk and Cream products in a good conscience and good health!OrganicrBST and antibiotic-freeFresh pasteurized to ensure the qualityMinimum 40% butter fat Gluten free Low sodiumGreat for Baking!Ingredients: Certified organic grade A cream	1	pint	4.59	0.29	fl oz	Dairy	Cream	http://goodeggs2.imgix.net/product_photos/tynsidYQapnWxo0Fv4rA_FK1A0603.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
380	Organic Half and Half	Clover Organic Farms sources its rBST and antibiotic-free milk and cream from a select group of small, organic family farms on the North Coast of California. Our milk and cream arrives at the plant the same day the cows are milked and it is fresh pasteurized* to ensure quality while preserving its fresh farm taste and nutritional value. In 2000, we became the first U.S. dairy processor to be awarded the American Humane Certified label for humanely produced dairy products by the American Humane Association. We invite you to enjoy Clover Organic Farms Milk and Cream products in a good conscience and good health!Organic rBST and antibiotic-freeFresh pasteurized to ensure the qualityGluten freeLow sodiumPerfect for your morning coffee and your favorite family recipes!Ingredients: Certified organic grade A milk and certified organic cream	1	pint	2.49	0.16	fl oz	Dairy	Cream	http://goodeggs2.imgix.net/product_photos/lRTcZGSsS7R0d6c3Lbsg_FK1A2031.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
381	Organic Half & Half	Our Organic Half & Half is rich and delicious for your morning coffee, tea or cereal! It is made up of our Organic Milk and Organic Cream to achieve an 11% butterfat content.Our organic Half & Half is pasteurized at 171°F for 18 seconds and lightly homogenized to emulsify the milk and cream. Unlike most milk, which is ultra-pasteurized (at or above 280°F for at least two seconds), we preserve the true flavor of milk that results from our cows’ diet.Recyclable, reusable glass bottles.Ingredients: Pasteurized Organic Milk and Organic Cream.	1	pint	2.99	0.19	fl oz	Dairy	Cream	http://goodeggs1.imgix.net/product_photos/pBJgDwveSY2Jepu1ekGK_FK1A5774.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
382	Grade A Cultured Low Fat Buttermilk	Cultured with lactic acid bacteria for flavor and thickness.Ingredients: Nonfat milk, milk, culture and salt	1	quart	1.79	0.06	fl oz	Dairy	Cream	http://goodeggs1.imgix.net/product_photos/S6bBoHRuQT2xXDVSqZaV_FK1A9924.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
383	Half & Half	Clover sources its rBST and anti-biotic-free milk and cream from a select group of small family farms on the North Coast of California. Our milk and cream arrive at the plant the same day the cows are milked and it is fresh pasteurized* to ensure quality while preserving its fresh farm taste and nutritional value. We do this so your family can enjoy Clover Milk and Cream products in a good conscience and good health!Ingredients: Milk and cream	1	quart	2.79	0.09	fl oz	Dairy	Cream	http://goodeggs2.imgix.net/product_photos/iZCABPCpT2aWVgPyTqBH_20160422-Clover_OneQuart_HalfNHalf_MG_7823.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
384	Organic Half & Half	Our Organic Half & Half is rich and delicious for your morning coffee, tea or cereal! It is made up of our Organic Milk and Organic Cream to achieve an 11% butterfat content.Our organic Half & Half is pasteurized at 171°F for 18 seconds and lightly homogenized to emulsify the milk and cream. Unlike most milk, which is ultra-pasteurized (at or above 280°F for at least two seconds), we preserve the true flavor of milk that results from our cows’ diet.Recyclable, reusable glass bottles.Ingredients: Pasteurized Organic Milk and Organic Cream.	1	quart	4.79	0.15	fl oz	Dairy	Cream	http://goodeggs1.imgix.net/product_photos/9ZeDfFMMSgLuLp91BRxF_XyGXMnUr5X1F7mWXySCfkUoDIERjWiAjxq89NqMeVeU.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
385	Organic Raw Cream	OPDC Raw Cream is skimmed from the rich raw milk. This incredibly delicious raw cream provides all of the benefits found in raw milk and raw butter, but can be made into whipped cream or raw ice cream, and is ideal for pouring over fruit or cereal. Raw cream is perfect for culturing into crème fraîche or sour cream and makes the most delicious cream cheese you have ever tasted!	1	pint	12.79	0.8	fl oz	Dairy	Cream	http://goodeggs2.imgix.net/product_photos/Pxy6t0WZQCqLNa3PVTvB_FK1A5460.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
386	Organic Cage Free Brown Eggs (Large)	Organic Cage Free Large Eggs- Glaum Egg Ranch, Aptos CAMany of our customers have expressed a desire for cage-free eggs. After careful consideration and in collaboration with our producer community, we have chosen to offer organic, cage-free eggs from Glaum Egg Ranch in Aptos, CA—just south of Santa Cruz.  Glaum goes beyond the letter of the law when it comes to their layers.  These birds have outdoor access from both ends of the barn, constant access to organic feed and water, and space within the barn to spread their wings, scratch and dust bathe. The sides of the barns are screened and can be opened to allow in natural sunlight and the fresh sea breeze.A true family business, Glaum has been far ahead of the game for generations (four, to be precise) when it comes to cage-free eggs and sustainable ranching. They are the first egg ranch in California to be Certified Humane by Humane Farm Animal Care, and have produced zero manure waste since 1988. Glaum is also a member of CAAF (Community Alliance with Family Farmers), and certified organic by the USDA National Organic Program, and are well regarded within the egg producing community, even coming at the recommendation of some of our current egg producers.Follow this link to check out a video of Glaum's organic layers in action: https://www.youtube.com/watch?v=VSyxtcsSaNc&feature=youtu.beClick here to learn more about egg labeling standards	1	dozen	5.49	\N	\N	Dairy	Eggs	http://goodeggs2.imgix.net/product_photos/tFaJ9FjFS2mbP2mtXCX7_20160708-Glaum_DozenEggsMG_4926.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
389	Organic Pasture Raised Eggs (Medium)	Coastal Hill Farm eggs are as natural as can be.  The hens are allowed to feed on grasses, insects, and seeds, as well as given ample feed and space. These conditions make our birds comfortable and happy, which is reflected in their eggs.  Typically, the good cholesterol and omega-3 fatty acid levels are higher in chickens that are allowed to feed on greens such as grasses.Local Certified Organic Pasture Raised EggsCoastal Hill Farm, PetalumaMedium Grade AA, one dozen eggsCertified Organic by MOCA	1	dozen	8.79	\N	\N	Dairy	Eggs	http://goodeggs1.imgix.net/product_photos/G1kQkvASruj6LpXUE41m_FK1A9561.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
390	Organic Soy Free Pasture Raised  Eggs (Large)	These eggs are from our pasture-raised, roaming hens.  In addition to the bugs and vegetables in our fields, these hens eat a certified organic feedstock free of soy, herbal tonics, lacto-fermented dairy and grains.  Our attention to detail and natural low-stress environment produces a flock of happy hens and healthy eggs.  Please visit our website to understand more about how our hens and crops function in an integrated agricultural system.This special flock of soy-free hens was inspired by our CSA members with severe soy allergies or other concerns about soy.	1	dozen	9.99	\N	\N	Dairy	Eggs	http://goodeggs1.imgix.net/product_photos/UZYjRSnQaG4Zb7b6BTAv_FK1A0962.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
391	Pasture Raised Eggs (Medium)	Living out in the pasture, our hens are free to explore, chase bugs and snack on hearty green grasses. Three times a day, we serve them freshly mixed non-GMO feed. In the their spacious mobile coops, they lay beautiful eggs and roost for the evening."Appreciate Nature's Perfection"	1	dozen	6.79	\N	\N	Dairy	Eggs	http://goodeggs2.imgix.net/product_photos/C6bRX2pBRvtnzV6s1gYw_FK1A9548.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
392	Soy Free Pasture Raised Eggs (Medium)	These eggs come to you from Lost Marbles Ranch via the Capay Valley Farmshop.Lost Marbles RanchHi, My name is Lora Murray. Along with my husband I run a small farm playfully named Lost Marbles Ranch near Capay, northern Yolo County. My chickens are free range on irrigated pasture that has no herbicieds, pesticides or fertilizers applied. The feed they are given is GMO and soy free. I get many compliments on their eggs at farmers markets, I hope you enjoy them as well. Feel free to visit the Lost Marbles Ranch Facebook page. Thank you!	1	dozen	6.99	\N	\N	Dairy	Eggs	http://goodeggs2.imgix.net/product_photos/w79bZoLKRea6wg2yWd1N_FK1A7612.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
393	Organic Pasture Raised Eggs (Large)	Mary's Organic Pasture Raised Chicken Eggs are produced by Pitman Farms, a family owned business that has been raising poultry for three generations. The chickens are fed a healthy non-GMO verified, gluten-free, vegetarian diet and have continuous access to pasture where they can spread their wings and explore. There's no wrong way to enjoy these eggs: scrambled, fried, hard-boiled, baked into a frittata, or as a crucial baking ingredient for your favorite family recipes.	1	half dozen	4.29	\N	\N	Dairy	Eggs	http://goodeggs2.imgix.net/product_photos/LyhxSQURQGmIl1SpPADG_FK1A9403.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
394	Pasture Raised Eggs (Large)	Living out in the pasture, our hens are free to explore, chase bugs and snack on hearty green grasses. Three times a day, we serve them freshly mixed non-GMO feed. In the their spacious mobile coops, they lay beautiful eggs and roost for the evening."Appreciate Nature's Perfection"	1	half dozen	4.29	\N	\N	Dairy	Eggs	http://goodeggs1.imgix.net/product_photos/UTAVlvPR4uSi2ygCiKyQ_FK1A9589.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
395	Organic Pasture Raised Eggs (Jumbo)	Alexandre Kids Organic Pasture Raised Large Eggs- from Alexandre Family EcoDairy Farms, Crescent City, CAHands down some of the best eggs we've ever tasted, these hens are part of a multi-species rotational grazing system, moving twice every week onto fresh green grass all year round. "5-egg" ranking from the Cornucopia Institute, certified organic, and really, really delicious! Read more about Alexandre Kids eggs here!All of the hens are raised on organic pastures under the watchful eyes of the Alexandre dairy cows and Great Pyrenees guard dogs. The hens graze on green, lush organic grass and have room to roam in the fresh coastal air and sunshine. They intermingle with the dairy cows and enjoy a natural farm life setting where they can produce the most nutritious organic eggs. Hens are housed in mobile “egg-mobiles,” designed and constructed by the Alexandre Family. The “egg-mobiles” are moved to new areas of pasture twice a week so the pasture gets desired fertilizer and to prevent overgrazing. Our chickens eat certified organic feeds; irrigated dairy pastures consisting of 50 to 100 variety of plant species ranging from grasses, forbs, herbs and clovers; oyster shell, with limited daily feeding of mixture of organic grains and minerals. We never add any chemicals, hormones or antibiotics. Collected eggs are processed daily at the Alexandre Kids egg ranch.	1	half dozen	4.99	\N	\N	Dairy	Eggs	http://goodeggs1.imgix.net/product_photos/fQWhXRbyQBWakK5i5fOe_20160908-AlexanderKids_HalfDozenEggs_MG_0405.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
396	Organic Soy Free Pasture Raised Eggs (Large)	These eggs are from our pasture-raised, roaming hens.  In addition to the bugs and vegetables in our fields, these hens eat a certified organic feedstock free of soy, herbal tonics, lacto-fermented dairy and grains.  Our attention to detail and natural low-stress environment produces a flock of happy hens and healthy eggs.  Please visit our website to understand more about how our hens and crops function in an integrated agricultural system.This special flock of soy-free hens was inspired by our CSA members with severe soy allergies or other concerns about soy.	1	half dozen	5.79	\N	\N	Dairy	Eggs	http://goodeggs2.imgix.net/product_photos/iRSF1OVSY2n2QX4MYLLw_FK1A0985.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
397	Pasture Raised Eggs (Small)	Four times a year we have a new flock start laying.  These new eggs are fabulous for baking.Living out in the pasture, our hens are free to explore, chase bugs and snack on hearty green grasses. Three times a day, we serve them freshly mixed non-GMO feed. In the their spacious mobile coops, they lay beautiful eggs and roost for the evening."Appreciate Nature's Perfection"	1	dozen	4.99	\N	\N	Dairy	Eggs	http://goodeggs1.imgix.net/product_photos/zVxD6q68QfxPX2w8n4Cw_FK1A9542.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
398	Duck Eggs	These delicious duck eggs come from Salmon Creek Ranch and are certified organic.  No hormones, GMO's, antibiotics or other additives are used, ever!  Salmon Creek Ranch ducks are free-ranging, cage-free and pasture raised!	1	dozen	10.99	\N	\N	Dairy	Eggs	http://goodeggs2.imgix.net/product_photos/OzI6AEXfQkW957MWETQt_PiCEWIRx2HSWI3KA3rkA_FK1A8467.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
399	Basket Staples: Milk and Eggs	You buy them every week, now get them in one click! Our Milk and Eggs Bundle contains:Organic whole milk from Straus Family Creamery, 1 half gallonPastured large eggs from St. John Family Farm, 1 dozen	1	count	14.29	\N	\N	Dairy	Eggs	http://goodeggs1.imgix.net/product_photos/441mf2yHQYicDSuAE67K_FK1A9218.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
400	Organic Plain Whole Milk Yogurt	Our Organic, Plain Whole-Milk Yogurt is smooth, tart and creamy.  And, it’s our bestseller.Made only with Organic Whole Milk and live cultures. No thickeners or additives are used, yet the consistency is so smooth it pours beautifully out of the container. It’s a great choice for breakfast cereals, for smoothies or as a substitute for sour cream.All Straus Family Creamery’s certified organic yogurts are Non-GMO Project Verified, certified kosher and gluten-free.Ingredients: Pasteurized Organic Whole Milk, Organic Sweet Cream Buttermilk, Living Yogurt Cultures.	32	oz	5.29	0.17	oz	Dairy	Yogurt	http://goodeggs1.imgix.net/product_photos/hK3rJY6rRPyAPtKNpWOy_FK1A5708.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
401	Organic Vanilla Whole Milk Yogurt	Smooth and creamy with a pure, delicious vanilla taste.Made with Organic Whole Milk, live cultures, organic cane sugar and organic vanilla. These simple ingredients combine to make the most delicious organic vanilla yogurt you’ll ever taste!  It’s creamy, smooth and it pours right out of the container.All Straus Family Creamery’s certified organic yogurts are Non-GMO Project Verified, certified kosher and gluten-free.Ingredients: Pasteurized Organic Whole Milk, Organic Cane Sugar, Organic Sweet Cream Buttermilk, Organic Vanilla Extract, Living Yogurt Cultures.	32	oz	5.29	0.17	oz	Dairy	Yogurt	http://goodeggs2.imgix.net/product_photos/NIag4ELtT56TwJlD3AjM_FK1A5697.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
402	Organic French-Style Plain Yogurt	We use wholesome pasture-fed organic cow's milk from John Mattos’ family farm in Two Rock (near Petaluma) in Sonoma county. Our Yogurt culture comes from France where it has been used for decades to produce sweet, mild and smooth yogurts. Unlike most producers, we add no thickeners, stabilizers or preservatives. Just milk and culture, that’s it!Ingredients: Whole Organic Jersey Milk, Living Cultures. 	23	oz	7.49	0.33	oz	Dairy	Yogurt	http://goodeggs2.imgix.net/product_photos/QwXNXh0rTZOsXm1ybxXK_032116_GoodEggs-4737.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
403	Organic Plain Nonfat Yogurt	This Organic, Plain Nonfat Yogurt is made from Organic Nonfat Milk and live cultures.No thickeners or additives are used, yet the consistency is so smooth it pours beautifully out of the container. It is great in smoothies, on cereals or as a substitute for sour cream. This is our bestselling nonfat yogurt.All Straus Family Creamery’s certified organic yogurts are Non-GMO Project Verified, certified kosher and gluten-free.Ingredients: Pasteurized Organic Nonfat Milk, Organic Sweet Cream Buttermilk, Living Yogurt Cultures.	32	oz	5.29	0.17	oz	Dairy	Yogurt	http://goodeggs2.imgix.net/product_photos/k8yDztaqQPyE6j9HFMxp_FK1A5693.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
404	Organic French-Style Meyer Lemon Yogurt	We use wholesome pasture-fed organic cow's milk from John Mattos’ family farm in Two Rock (near Petaluma) in Sonoma county. We use local jams for our fruit-at-the-bottom flavors. They come from farms in Sonoma county that grow the fruit organically and make the jam by hand.  Our Yogurt culture comes from France where it has been used for decades to produce sweet, mild and smooth yogurts. Unlike most producers, we add no thickeners, stabilizers or preservatives. Just milk and culture, that’s it!Ingredients: Whole Organic Jersey Milk, Meyer Lemon Spread (Organic Meyer Lemon, Organic Sugar), Living Cultures. 	23	oz	7.49	0.33	oz	Dairy	Yogurt	http://goodeggs1.imgix.net/product_photos/YijASihRST6t3GcOe2Nr_FK1A4734.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
405	Organic French-Style Vanilla Yogurt	We use wholesome pasture-fed organic cow's milk from John Mattos’ family farm in Two Rock (near Petaluma) in Sonoma county. Our Yogurt culture comes from France where it has been used for decades to produce sweet, mild and smooth yogurts. Unlike most producers, we add no thickeners, stabilizers or preservatives. Just milk and culture, that’s it!Ingredients: Whole Organic Jersey Milk, Organic Vanilla Sauce (Organic Cane Sugar, Organic Milk, Organic Vanilla Beans), Living Cultures.	23	oz	7.49	0.33	oz	Dairy	Yogurt	http://goodeggs2.imgix.net/product_photos/9kcLNRsmR0iJHbI7ybyM_032116_GoodEggs-4741.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
406	Organic Whole Greek Yogurt	Just two simple ingredients go into our yogurt: organic milk and live, active cultures. Rich, creamy and packed with probiotic goodness, our Greek yogurt is unforgettable. Our cows graze on pasture grass on the beautiful hillsides of Marin and Sonoma Counties in the coastal region of Northern California, for a difference you can taste. Our organic Greek yogurt is certified kosher, gluten-free and is the only Non-GMO Project Verified organic Greek yogurt on the market.Ingredients: Pasteurized organic whole milk, live yogurt cultures.	32	oz	7.99	0.25	oz	Dairy	Yogurt	http://goodeggs2.imgix.net/product_photos/VpCXMmPCQfKlMmEG0ObN_FK1A5703.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
407	Organic Nonfat Greek Yogurt	Enjoy an extra $1.00 off Straus Organic Nonfat Greek Yogurt for the month of October!Just two simple ingredients go into our yogurt: organic milk and live, active cultures. Rich, creamy and packed with probiotic goodness, our Greek yogurt is unforgettable. Our cows graze on pasture grass on the beautiful hillsides of Marin and Sonoma Counties in the coastal region of Northern California, for a difference you can taste. Our organic Greek yogurt is certified kosher, gluten-free and is the only Non-GMO Project Verified organic Greek yogurt on the market.Ingredients: Pasteurized organic nonfat milk, live yogurt cultures.	32	oz	7.99	0.25	oz	Dairy	Yogurt	http://goodeggs1.imgix.net/product_photos/9ZxocAGVSc2G6V6wJLfl_FK1A5711.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
408	Organic Plain Lowfat Greek Yogurt	These lowfat Greek yogurts are authentically strained, rich in protein, and made with premium organic ingredients. In addition to straining, a traditional, unhurried cooking process is used to develop the texture of these yogurts naturally and authentically—bringing you a Greek yogurt that’s not only organic, but unparalleled in taste.Ingredients:Strained Yogurt (Organic Cultured Pasteurized Lowfat Milk)Live Active Cultures:L. acidophilus, L. bulgaricus, S. thermophilus, bifidus.	16	oz	4.99	0.31	oz	Dairy	Yogurt	http://goodeggs2.imgix.net/product_photos/WYqtu0oTyqj7xhrjLNgW_FK1A5780.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
409	Organic Nonfat  Plain Greek Yogurt	Crafted with the perfect balance of creaminess and tang, our Plain Greek Yogurt is anything but plain. Starring fresh Clover Organic Nonfat Milk direct from the happy cows on our family-owned dairy farms, this thick, rich yogurt has a luxurious mouth-feel and texture perfect in its pure form, or used to enhance other foods.We think that if you can't make it right, you shouldn't make it at all. And we've found a way to make it right: in our organic, authentically strained Greek yogurt, with nonfat milk and 22 grams of protein per serving. For decades we've partnered with a handful of humane, family-owned farms where the cows are raised in open pastures to produce our organic milk. Clo even gave her approval. Ingredients: Cultured Organic Pasteurized Nonfat Grade A Milk. Live cultures: Lactobacillus bulgaricus, Streptococcus thermophilus, Lactobacillus acidophilus, Bifidus, Lactobacillus casei.	32	oz	8.29	0.26	oz	Dairy	Yogurt	http://goodeggs2.imgix.net/product_photos/iwAvZoCdRlS1x4H9vEHp_FK1A0485.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
410	Organic Nonfat  Vanilla Greek Yogurt	America’s favorite flavor just got better! We’ve blended fresh Clover Organic Nonfat Milk with aromatic vanilla bean, then strained it for a creamy consistency and rich, tantalizing taste that’s perfect for breakfast, a healthy snack, or a nutritious smoothie.We think that if you can't make it right, you shouldn't make it at all. And we've found a way to make it right: in our organic, authentically strained Greek yogurt, with nonfat milk and 22 grams of protein per serving. For decades we've partnered with a handful of humane, family-owned farms where the cows are raised in open pastures to produce our organic milk. Clo even gave her approval. Ingredients: Cultured Organic Pasteurized Nonfat Grade A Milk, Vanilla Blend (Organic sugar, pectin  natural flavors, organic locust bean gum, organic lemon juice concentrate, vanilla beans, tricalcium citrate). Live cultures: Lactobacillus bulgaricus, Streptococcus thermophilus, Lactobacillus acidophilus, Bifidus, Lactobacillus casei.	32	oz	8.29	0.26	oz	Dairy	Yogurt	http://goodeggs2.imgix.net/product_photos/sleXx6YVSXGB9yP80NfH_FK1A0481.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
411	Organic Raw Milk Kefir	Our delicious raw kefir, made from our raw skim milk, is easy to digest, probiotic, tummy-friendly and immune-building! Twelve live and active cultures are added to make the most delicious and nutritious kefir around. USDA organic standards require that cows be pasture grazed just four months out of the year. OPDC goes far beyond this standard and grazes our cows on green pastures every day. In addition to green pastures, our cows are fed: a specially formulated organic mineral supplement, free choice salt and trace mineral blocks, high test organic alfalfa, and some sweet organic corn to keep them healthy and strong.	1	quart	4.99	0.16	fl oz	Dairy	Yogurt	http://goodeggs2.imgix.net/product_photos/sWRXZ1FzTvG4hGERH6j0_FK1A1939.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
412	Organic Plain Kefir	Clover Organic Farms kefir starts with organic milk from small, family-run dairies on the North Coast of California. Ten beneficial live and active probiotic kefir cultures are added to the milk along with the freshest fruit available to create this tasty and healthy-for-your-body beverage. Drinking kefir is an excellent way to promote improved wellbeing and a balanced immune system and is great for those with milk sensitivities.  Enjoy Clover Organic Farms Kefir in good conscience and good health.Ingredients: Certified Organic Nonfat Milk, Organic Milk, Vitamin A Palmitate, and Cultures.	1	quart	4.79	0.15	fl oz	Dairy	Yogurt	http://goodeggs1.imgix.net/product_photos/tlB0ea4RSa12A3v6W0UA_FK1A1840.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
413	Organic Lactose Free Plain Kefir	Simple delicious cultured flavor makes plain kefir a natural for recipes and anything calling for buttermilk as an ingredient: from soups and sauces, to smoothies and desserts. And, because there is no added sugar, (the sugar listed is the naturally-occuring milk sugar), you can feel good that you are enjoying the healthful nutrition of cultured dairy and nothing else.Green Valley Organics' lactose-free dairy is made by Redwood Hill Farm & Creamery in Sebastopol CA. Ingredients: Organic Lowfat Pasteurized Milk, Lactase Enzyme, Vitamin A and Flourish Live Active Cultures: L. Bulgaricus, L. Acidophilus, L. Casei, L. Rhamnosus, L. Lactis, L. Diacetylactis, S. Thermophilus, L. Cremoris, Leuconostoc Cremoris and B. Bifidum.	1	quart	5.29	0.17	fl oz	Dairy	Yogurt	http://goodeggs1.imgix.net/product_photos/yWUeqeUhTpiAj09r7JEA_greenvalley_plain%20kefir.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
414	Organic Vanilla Whole Milk Greek Yogurt	"Full fat, vanilla goodness! Perfect to snack on any time of the day!" Erin, Good Eggs' BuyerWallaby Organic Whole Milk Greek yogurt is rich and creamy. While maintaining the traditional, unhurried cooking process and authentic straining, the process starts with whole milk. This offers a slightly richer taste, giving you consistent flavor in every spoonful.Ingredients:Organic Cultured Pasteurized Milk and Cream, Organic Cane Sugar, Natural Flavor, Organic Locust Bean Gum, Pectin, Organic Vanilla Beans.Live Active Cultures:L. acidophilus, L. bulgaricus, S. thermophilus, bifidus.	5.3	oz	1.99	0.38	oz	Dairy	Yogurt	http://goodeggs2.imgix.net/product_photos/ielVXwaT2ywkNiwhgKEV_FK1A5791.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
415	Organic Strawberry Lowfat Greek Yogurt	These lowfat Greek yogurts are authentically strained, rich in protein, and made with premium organic ingredients. In addition to straining, a traditional, unhurried cooking process is used to develop the texture of these yogurts naturally and authentically—bringing you a Greek yogurt that’s not only organic, but unparalleled in taste.Ingredients:STRAINED YOGURT: Organic Cultured Pasteurized Lowfat Milk.STRAWBERRY FRUIT PREPARATION (20%): Organic Strawberries, Organic Cane Sugar, Organic Lemon Concentrate, Organic Locust Bean Gum, Pectin, Natural Flavors, Fruit and Vegetable Juice for Color.Live Active Cultures:L. acidophilus, L. bulgaricus, S. thermophilus, bifidus.	5.3	oz	1.99	0.38	oz	Dairy	Yogurt	http://goodeggs1.imgix.net/product_photos/aIPVffOuRIySLDt0vYU6_FK1A5799.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
416	Organic Nonfat  Peach Greek Yogurt	Organic Peach: Savor the fresh-picked essence of sweet, sun-kissed peaches plucked from the tree and perfectly paired with fresh Clover Organic Nonfat Milk. It’s a creamy treat that’s just plain peachy!We think that if you can't make it right, you shouldn't make it at all. And we've found a way to make it right: in our organic, authentically strained Greek yogurt, with nonfat milk and 22 grams of protein per serving. For decades we've partnered with a handful of humane, family-owned farms where the cows are raised in open pastures to produce our organic milk. Clo even gave her approval. Ingredients: Cultured Pasteurized Organic Nonfat Grade A Milk, Organic Peaches, Organic Sugar, Pectin, Natural Flavor, Organic Locust Bean Gum, Organic Annatto (color), Calcium Chloride, Citric Acid. Live Cultures: Lactobacillus bulgaricus, Streptococcus thermophilus, Lactobacillus acidophilus, Bifidus, Lactobacillus casei.	5.3	oz	1.79	0.34	oz	Dairy	Yogurt	http://goodeggs2.imgix.net/product_photos/9oPJ2ReZGR8kh4oszgk0_FK1A0472.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
417	Organic Blueberry Whole Milk Greek Yogurt	Wallaby Organic Whole Milk Greek yogurt is rich and creamy. While maintaining the traditional, unhurried cooking process and authentic straining, the process starts with whole milk. This offers a slightly richer taste that is further complimented by the blending of premium organic fruit throughout each and every cup, giving you consistent flavor in every spoonful.Ingredients:Organic Cultured Pasteurized Milk and Cream, Organic Blueberries, Organic Cane Sugar, Natural Flavor, Organic Locust Bean Gum, Pectin.Live Active Cultures:L. acidophilus, L. bulgaricus, S. thermophilus, bifidus.	5.3	oz	1.99	0.38	oz	Dairy	Yogurt	http://goodeggs2.imgix.net/product_photos/He8XvYHJR4gAjn1ggojG_FK1A5789.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
789	Ribeye (Frozen)	It’s no wonder why Prather Ranch Rib-Eyes have become a\nBay Area steak lover’s dream. Prather beef is grass fed and barley/alfalfa hay finished, then dry-aged for 16-21 days. Well marbled and tender, these steaks are simply addicting. Certified Humane Raised and Handled, GMO free, and Food Alliance Certified.	0.75	lb	17.99	23.99	lb	Meat	Beef	http://goodeggs1.imgix.net/product_photos/1YMCFzdQ5KzVft5Ui1VA_FK1A4836.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
418	Organic Nonfat  Black Cherry Greek Yogurt	Get ready to fall in love with this burst of flavorful tart organic cherries paired with creamy Clover Organic Nonfat Milk and subtle floral notes of cassis and fresh-baked pie.We think that if you can't make it right, you shouldn't make it at all. And we've found a way to make it right: in our organic, authentically strained Greek yogurt, with nonfat milk and 22 grams of protein per serving. For decades we've partnered with a handful of humane, family-owned farms where the cows are raised in open pastures to produce our organic milk. Clo even gave her approval. Ingredients: Cultured Pasteurized Organic Nonfat Grade A Milk, Organic Cherries, Organic Sugar, Pectin, Organic Juice (Black Currant, Apple, Black Carrot) (color), Natural Flavor, Citric Acid, Tricalcium Phosphate. Live Cultures: Lactobacillus bulgaricus, Streptococcus thermophilus, Lactobacillus acidophilus, Bifidus, Lactobacillus casei.	5.3	oz	1.79	0.34	oz	Dairy	Yogurt	http://goodeggs1.imgix.net/product_photos/WtVROvL9TqKlkTCxdOi0_FK1A0477.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
419	Organic Nonfat  Vanilla Greek Yogurt	America’s favorite flavor just got better! We’ve blended fresh Clover Organic Nonfat Milk with aromatic vanilla bean, then strained it for a creamy consistency and rich, tantalizing taste that’s perfect for breakfast, a healthy snack, or a nutritious smoothie.We think that if you can't make it right, you shouldn't make it at all. And we've found a way to make it right: in our organic, authentically strained Greek yogurt, with nonfat milk and 22 grams of protein per serving. For decades we've partnered with a handful of humane, family-owned farms where the cows are raised in open pastures to produce our organic milk. Clo even gave her approval. Ingredients: Cultured Organic Pasteurized Nonfat Grade A Milk, Vanilla Blend (Organic sugar, pectin  natural flavors, organic locust bean gum, organic lemon juice concentrate, vanilla beans, tricalcium citrate). Live cultures: Lactobacillus bulgaricus, Streptococcus thermophilus, Lactobacillus acidophilus, Bifidus, Lactobacillus casei.	5.3	oz	1.79	0.34	oz	Dairy	Yogurt	http://goodeggs1.imgix.net/product_photos/3tW44UtTSeVXZe7GL66P_FK1A0470.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
420	Organic  Nonfat Blueberry Greek Yogurt	Sweet and tangy come together in this classic flavor that combines the floral, jammy notes of Organic Blueberries and Elderberry married with fresh Clover Organic Nonfat Milk.We think that if you can't make it right, you shouldn't make it at all. And we've found a way to make it right: in our organic, authentically strained Greek yogurt, with nonfat milk and 22 grams of protein per serving. For decades we've partnered with a handful of humane, family-owned farms where the cows are raised in open pastures to produce our organic milk. Clo even gave her approval. Ingredients: Cultured Pasteurized Organic Nonfat Grade A Milk, Organic Blueberries, Organic Sugar, Pectin, Natural Flavor, Organic Locust Bean Gum, Organic Elderberry Juice Concentrate (color), Calcium Chloride, Citric Acid. Live Cultures: Lactobacillus bulgaricus, Streptococcus thermophilus, Lactobacillus acidophilus, Bifidus, Lactobacillus casei.	5.3	oz	1.79	0.34	oz	Dairy	Yogurt	http://goodeggs2.imgix.net/product_photos/DfPcsUoSTIS2IS39LQeM_FK1A0466.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
421	Organic Nonfat  Plain Greek Yogurt	Crafted with the perfect balance of creaminess and tang, our Plain Greek Yogurt is anything but plain. Starring fresh Clover Organic Nonfat Milk direct from the happy cows on our family-owned dairy farms, this thick, rich yogurt has a luxurious mouth-feel and texture perfect in its pure form, or used to enhance other foods.We think that if you can't make it right, you shouldn't make it at all. And we've found a way to make it right: in our organic, authentically strained Greek yogurt, with nonfat milk and 22 grams of protein per serving. For decades we've partnered with a handful of humane, family-owned farms where the cows are raised in open pastures to produce our organic milk. Clo even gave her approval. Ingredients: Cultured Organic Pasteurized Nonfat Grade A Milk. Live cultures: Lactobacillus bulgaricus, Streptococcus thermophilus, Lactobacillus acidophilus, Bifidus, Lactobacillus casei.	5.3	oz	1.79	0.34	oz	Dairy	Yogurt	http://goodeggs2.imgix.net/product_photos/xLQVck84R1bVKhNAUSSP_FK1A0465.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
422	Organic Peach Nonfat Greek Yogurt	These Greek yogurts are so thick and creamy, you might find it hard to believe they're nonfat. Wallaby Organic Greek nonfat yogurts are authentically strained, rich in protein, and made with premium organic ingredients. In addition to straining, a traditional, unhurried cooking process is used to develop the texture of these yogurts naturally and authentically—bringing you a Greek nonfat yogurt that's not only organic, but unmatched in taste and quality.Ingredients:STRAINED YOGURT: Organic Cultured Pasteurized Nonfat Milk.PEACH FRUIT PREPARATION: Organic Peaches, Organic Cane Sugar, Organic Lemon Juice Concentrate, Organic Locust Bean Gum, Pectin, Natural Flavor, Organic Turmeric and Annatto Extract for Color.Live Active Cultures: L. acidophilus, L. bulgaricus, S. thermophilus, bifidus.	5.3	oz	1.99	0.38	oz	Dairy	Yogurt	http://goodeggs1.imgix.net/product_photos/PNz7DL6fTQiZgDMAyRMH_FK1A5794.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
423	Organic Blueberry Lowfat Greek Yogurt	These lowfat Greek yogurts are authentically strained, rich in protein, and made with premium organic ingredients. In addition to straining, a traditional, unhurried cooking process is used to develop the texture of these yogurts naturally and authentically—bringing you a Greek yogurt that’s not only organic, but unparalleled in taste.Ingredients:STRAINED YOGURT: Organic Cultured Pasteurized Lowfat MilkBLUEBERRY FRUIT PREPARATION (20%): Organic Blueberries, Organic Cane Sugar, Natural Flavor, Organic Locust Bean Gum, Pectin, Organic Lemon Concentrate.Live Active Cultures:L. acidophilus, L. bulgaricus, S. thermophilus, bifidus.	5.3	oz	1.99	0.38	oz	Dairy	Yogurt	http://goodeggs1.imgix.net/product_photos/crIyXsxQXi4uPPHpXIxl_FK1A5796.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
424	Organic Mixed Berry Nonfat Greek Yogurt	These Greek yogurts are so thick and creamy, you might find it hard to believe they're nonfat. Wallaby Organic Greek nonfat yogurts are authentically strained, rich in protein, and made with premium organic ingredients. In addition to straining, a traditional, unhurried cooking process is used to develop the texture of these yogurts naturally and authentically—bringing you a Greek nonfat yogurt that's not only organic, but unmatched in taste and quality.Ingredients:STRAINED YOGURT: Organic Cultured Pasteurized Nonfat Milk.MIXED BERRY FRUIT PREPARATION: Organic Cane Sugar, Organic Strawberries, Organic Blueberries, Organic Raspberries, Natural Flavors, Organic Locust Bean Gum, Pectin, Organic Lemon Juice Concentrate, Fruit and Vegetable Juice for Color.Live Active Cultures:L. acidophilus, L. bulgaricus, S. thermophilus, bifidus.	5.3	oz	1.99	0.38	oz	Dairy	Yogurt	http://goodeggs2.imgix.net/product_photos/v7VhjcPsRDiJhcA6Ys0V_FK1A5805.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
425	Organic Dark Chocolate Lowfat Greek Yogurt	These lowfat Greek yogurts are authentically strained, rich in protein, and made with premium organic ingredients. In addition to straining, a traditional, unhurried cooking process is used to develop the texture of these yogurts naturally and authentically—bringing you a Greek yogurt that’s not only organic, but unparalleled in taste.Ingredients:STRAINED YOGURT: Organic Cultured Pasteurized Lowfat Milk.CHOCOLATE PREPARATION: Organic Cane Sugar, Organic Chocolate Liquor, Organic Locust Bean Gum, Organic Vanilla ExtractLive Active Ingredients:L. acidophilus, L. bulgaricus, S. thermophilus, bifidus.	5.3	oz	1.99	0.38	oz	Dairy	Yogurt	http://goodeggs2.imgix.net/product_photos/lvslsFkMT5OUpMUv4qV0_FK1A5809.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
426	Organic Plain Nonfat Greek Yogurt	These Greek yogurts are so thick and creamy, you might find it hard to believe they're nonfat. Wallaby Organic Greek nonfat yogurts are authentically strained, rich in protein, and made with premium organic ingredients. In addition to straining, a traditional, unhurried cooking process is used to develop the texture of these yogurts naturally and authentically—bringing you a Greek nonfat yogurt that's not only organic, but unmatched in taste and quality.Ingredients:STRAINED YOGURT: Organic Cultured Pasteurized Nonfat Milk.Live Active Cultures:L. acidophilus, L. bulgaricus, S. thermophilus, bifidus.	6	oz	1.99	0.33	oz	Dairy	Yogurt	http://goodeggs1.imgix.net/product_photos/kSDE39vQhyKjAUv5zykg_FK1A5802.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
427	Organic Nonfat  Strawberry Greek Yogurt	Reminiscent of summer at its peak, our Strawberry Greek Yogurt is like dipping your spoon into a ripe, juicy berry patch blended fresh Clover Organic Nonfat Milk.We think that if you can't make it right, you shouldn't make it at all. And we've found a way to make it right: in our organic, authentically strained Greek yogurt, with nonfat milk and 22 grams of protein per serving. For decades we've partnered with a handful of humane, family-owned farms where the cows are raised in open pastures to produce our organic milk. Clo even gave her approval. Ingredients: Cultured Pasteurized Organic Nonfat Grade A Milk, Organic Strawberries, Organic Sugar, Pectin, Natural Flavor, Carrot Juice (color), Organic Locust Bean Gum,Citric Acid, Calcium Chloride. Live Cultures: Lactobacillus bulgaricus, Streptococcus thermophilus, Lactobacillus acidophilus, Bifidus, Lactobacillus casei.	5.3	oz	1.79	0.34	oz	Dairy	Yogurt	http://goodeggs2.imgix.net/product_photos/EdC16CyTLGAR7IbUObNC_FK1A0468.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
428	Organic French-Style Strawberry Yogurt	We use wholesome pasture-fed organic cow's milk from John Mattos’ family farm in Two Rock (near Petaluma) in Sonoma county. We use local jams for our fruit-at-the-bottom flavors. They come from farms in Sonoma county that grow the fruit organically and make the jam by hand.  Our Yogurt culture comes from France where it has been used for decades to produce sweet, mild and smooth yogurts. Unlike most producers, we add no thickeners, stabilizers or preservatives. Just milk and culture, that’s it!\nIngredients: Whole Organic Jersey Milk, Organic Strawberry Spread (Organic Strawberries, Organic Sugar, Pectin), Living Cultures. 	4.75	oz	2.49	0.52	oz	Dairy	Yogurt	http://goodeggs2.imgix.net/product_photos/C1oOhoIT6a4l3LF6YDjG_Straw_GoodEgg-4745.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
429	Organic Cream on Top Strawberry Yogurt	Clover Organic Farms Yogurts are produced by culturing a mixture of fresh, organic milk from our local family farms along with fresh, organic fruit, sweeteners, and the addition of vitamin A. This particular yogurt has a deliciously rich layer of cream on top. Ingredients: Organic Pasteurized Milk, Organic Pasteurized Cream, Organic Strawberries, Organic Evaporated Cane Juice, Pectin, Organic Corn Starch, Natural Flavor and Live Active Cultures.	6	oz	1.29	0.22	oz	Dairy	Yogurt	http://goodeggs2.imgix.net/product_photos/LHxlag8S8ydEHQClVJ9w_FK1A1877.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
430	Organic Cream on Top Peach Yogurt	Clover Organic Farms Yogurts are produced by culturing a mixture of fresh, organic milk from our local family farms along with fresh, organic fruit, sweeteners, and the addition of vitamin A. This particular yogurt has a deliciously rich layer of cream on top. Ingredients: Organic Pasteurized Milk, Organic Pasteurized Cream, Organic Nonfat Pasteurized Milk, Organic Peaches, Organic Cane Sugar, Pectin, Organic Corn Starch, Natural Flavor and Live Active Cultures.	6	oz	1.29	0.22	oz	Dairy	Yogurt	http://goodeggs1.imgix.net/product_photos/CQCXTtvQSKCXX0uJAcAt_FK1A1881.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
431	Organic Cream On Top Blueberry Yogurt	Clover Organic Farms Yogurts are produced by culturing a mixture of fresh, organic milk from our local family farms along with fresh, organic fruit, sweeteners, and the addition of vitamin A. This particular yogurt has a deliciously rich layer of cream on top. Ingredients: Organic Pasteurized Milk, Organic Pasteurized Cream, Organic Nonfat Pasteurized Milk, Organic Blueberries, Organic Cane Sugar, Pectin, Organic Corn Starch, Natural Flavor and Live Active Cultures.	6	oz	1.29	0.22	oz	Dairy	Yogurt	http://goodeggs2.imgix.net/product_photos/ep403NrSQQKJr0Zcy5AS_FK1A1871.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
432	Organic Cream On Top Forest Berry Yogurt	Clover Organic Farms Yogurts are produced by culturing a mixture of fresh, organic milk from our local family farms along with fresh, organic fruit, sweeteners, and the addition of vitamin A. This particular yogurt has a deliciously rich layer of cream on top. Ingredients: Organic Pasteurized Milk, Organic Pasteurized Cream, Organic Nonfat Pasteurized Milk, Organic Raspberries, Organic Strawberries, Organic Blueberries, Organic Cane Sugar, Pectin, Organic Corn Starch, Natural Flavor and Active Cultures.	6	oz	1.29	0.22	oz	Dairy	Yogurt	http://goodeggs1.imgix.net/product_photos/GzBP7ktRBWHNI5J7R9ap_FK1A1874.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
433	Organic French-Style Vanilla Yogurt	We use wholesome pasture-fed organic cow's milk from John Mattos’ family farm in Two Rock (near Petaluma) in Sonoma county. Our Yogurt culture comes from France where it has been used for decades to produce sweet, mild and smooth yogurts. Unlike most producers, we add no thickeners, stabilizers or preservatives. Just milk and culture, that’s it!Ingredients: Whole Organic Jersey Milk, Organic Vanilla Sauce (Organic Cane Sugar, Organic Milk, Organic Vanilla Beans), Living Cultures.	4.75	oz	2.49	0.52	oz	Dairy	Yogurt	http://goodeggs2.imgix.net/product_photos/wVCbxHWTlOXCZEOIXUFQ_Vanilla_GoodEgg-4747.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
434	Organic Cream on Top Vanilla Yogurt	Clover Organic Farms Yogurts are produced by culturing a mixture of fresh, organic milk from our local family farms along with fresh, organic fruit, sweeteners, and the addition of vitamin A. This particular yogurt has a deliciously rich layer of cream on top. Ingredients: Organic Pasteurized Milk, Organic Pasteurized Cream, Organic Nonfat Milk, Organic Cane Sugar, Organic Vanilla Extract, Pectin Organic Corn Starch and Live Active Cultures.	6	oz	1.29	0.22	oz	Dairy	Yogurt	http://goodeggs2.imgix.net/product_photos/7yMY04B0R1mBFwt1sa2P_FK1A1869.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
435	Organic Cream On Top Plain Yogurt	Clover Organic Farms Yogurts are produced by culturing a mixture of fresh, organic milk from our local family farms along with fresh, organic fruit, sweeteners, and the addition of vitamin A. This particular yogurt has a deliciously rich layer of cream on top. Ingredients: Organic Pasteurized Milk, Organic Pasteurized Cream, Pectin, Organic Corn Starch and Live Active Cultures.	6	oz	1.29	0.22	oz	Dairy	Yogurt	http://goodeggs1.imgix.net/product_photos/iod0CMRlTAWuX41F6Iad_FK1A1879.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
436	Organic French-Style Meyer Lemon Yogurt	We use wholesome pasture-fed organic cow's milk from John Mattos’ family farm in Two Rock (near Petaluma) in Sonoma county. We use local jams for our fruit-at-the-bottom flavors. They come from farms in Sonoma county that grow the fruit organically and make the jam by hand.  Our Yogurt culture comes from France where it has been used for decades to produce sweet, mild and smooth yogurts. Unlike most producers, we add no thickeners, stabilizers or preservatives. Just milk and culture, that’s it!\nIngredients: Whole Organic Jersey Milk, Meyer Lemon Spread (Organic Meyer Lemon, Organic Sugar), Living Cultures. 	4.75	oz	2.49	0.52	oz	Dairy	Yogurt	http://goodeggs1.imgix.net/product_photos/Zy6CX4S5SeKHbpi5GhtT_lemon_GoodEgg-4746.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
437	Organic French-Style Plain Yogurt	We use wholesome pasture-fed organic cow's milk from John Mattos’ family farm in Two Rock (near Petaluma) in Sonoma county. Our Yogurt culture comes from France where it has been used for decades to produce sweet, mild and smooth yogurts. Unlike most producers, we add no thickeners, stabilizers or preservatives. Just milk and culture, that’s it!\nIngredients: Whole Organic Jersey Milk, Living Cultures. 	4.75	oz	2.49	0.52	oz	Dairy	Yogurt	http://goodeggs2.imgix.net/product_photos/d30ZPIwwQ9e8N1dKZsRG_PLAINGoodEgg-4748.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
438	Organic Whole Milk Vanilla Icelandic Yogurt	Smári yogurt has more protein per serving than any other yogurt in the US. It's thicker than most other yogurt. Creamier, also. It's thick because we strain off most of the water, and leave the yogurt. It's concentrated. It takes four cups of whole milk to make one cup of Smári.Ingredients: Organic grade A pasteurized skim milk, organic grade A pasteurized whole milk, organic cane sugar, organic vanilla extract, organic vanilla bean, live and active cultures.	5	oz	1.99	0.4	oz	Dairy	Yogurt	http://goodeggs1.imgix.net/product_photos/ndnj07xLSAiRXYRbPQmy_FK1A4456.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
439	Organic Nonfat Peach Icelandic Yogurt	Smári yogurt has more protein per serving than any other yogurt in the US. It's thicker than most other yogurt. Creamier, also. It's thick because we strain off most of the water, and leave the yogurt. It's concentrated. It takes four cups of whole milk to make one cup of Smári.Ingredients: Organic grade A pasteurized skim milk, organic peaches, organic cane sugar, water, pectin, live and active cultures.	5	oz	1.99	0.4	oz	Dairy	Yogurt	http://goodeggs1.imgix.net/product_photos/ibqK2pjQEYzhyBoZAbpg_FK1A4458.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
440	Organic Nonfat Vanilla Icelandic Yogurt	Smári yogurt has more protein per serving than any other yogurt in the US. It's thicker than most other yogurt. Creamier, also. It's thick because we strain off most of the water, and leave the yogurt. It's concentrated. It takes four cups of whole milk to make one cup of Smári.Ingredients: Organic grade A pasteurized skim milk, organic cane sugar, organic vanilla extract, organic vanilla bean, live and active cultures.	5	oz	1.99	0.4	oz	Dairy	Yogurt	http://goodeggs1.imgix.net/product_photos/pZFQprRmQjK2Wu87Yl6u_FK1A7298.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
441	Organic Nonfat Coconut Icelandic Yogurt	Smári yogurt has more protein per serving than any other yogurt in the US. It's thicker than most other yogurt. Creamier, also. It's thick because we strain off most of the water, and leave the yogurt. It's concentrated. It takes four cups of whole milk to make one cup of Smári.Ingredients: Organic grade A pasteurized skim milk, water, organic cane sugar, organic dehydrated coconut, pectin, organic coconut flavor, organic lemon juice, live and active cultures.	5	oz	1.99	0.4	oz	Dairy	Yogurt	http://goodeggs2.imgix.net/product_photos/TSXRQVQyQD2W1btas139_FK1A4462.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
442	Organic Nonfat Strawberry Icelandic Yogurt	Smári yogurt has more protein per serving than any other yogurt in the US. It's thicker than most other yogurt. Creamier, also. It's thick because we strain off most of the water, and leave the yogurt. It's concentrated. It takes four cups of whole milk to make one cup of Smári.Ingredients: Organic grade A pasteurized skim milk, organic strawberries, organic cane sugar, water, pectin, organic fruit and vegetable juice for color, live and active cultures.	5	oz	1.99	0.4	oz	Dairy	Yogurt	http://goodeggs1.imgix.net/product_photos/DGqqJmH0SbCR716sVoNc_FK1A7294.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
443	Organic Whole Milk Pure Icelandic Yogurt	Smári yogurt has more protein per serving than any other yogurt in the US. It's thicker than most other yogurt. Creamier, also. It's thick because we strain off most of the water, and leave the yogurt. It's concentrated. It takes four cups of whole milk to make one cup of Smári.Ingredients: Organic grade A pasteurized skim milk, organic grade A pasteurized whole milk, live and active cultures	5	oz	1.99	0.4	oz	Dairy	Yogurt	http://goodeggs2.imgix.net/product_photos/G18FdsgmSBHH1wjANxDQ_FK1A4466.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
444	Organic Whole Milk Cherry Chia Icelandic Yogurt	Smári yogurt has more protein per serving than any other yogurt in the US. It's thicker than most other yogurt. Creamier, also. It's thick because we strain off most of the water, and leave the yogurt. It's concentrated. It takes four cups of whole milk to make one cup of Smári.Ingredients: Organic grade A pasteurized skim milk, organic grade A pasteurized whole milk, organic black cherries, organic cane sugar, water, pre-hydrated organic chia seeds, organic cherry flavor, pectin, organic fruit and vegetable juice concentrate for color, organic lemon juice concentrate, live and active cultures.	5	oz	1.99	0.4	oz	Dairy	Yogurt	http://goodeggs1.imgix.net/product_photos/kabf1goTR6aBSUpUv3LO_FK1A4460.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
445	Organic Nonfat Pure Icelandic Yogurt	Smári yogurt has more protein per serving than any other yogurt in the US. It's thicker than most other yogurt. Creamier, also. It's thick because we strain off most of the water, and leave the yogurt. It's concentrated. It takes four cups of whole milk to make one cup of Smári.Ingredients: Organic grade A pasteurized skim milk. Contains live and active cultures.	5	oz	1.99	0.4	oz	Dairy	Yogurt	http://goodeggs2.imgix.net/product_photos/aUge9aY4TDuwXpGRqfL6_FK1A7286.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
1058	Half Pound Fresh Wild California White Seabass	Fresh Wild California White Seabass is a thick, delicious fish. California White Seabass is caught off the Santa Barbara Coast, periodically coming north to San Francisco.  White Seabass is mild flavored, with large flakes.  Best on grill or broiled.  Just add lemon.	0.5	lb	12.49	24.98	lb	Fish	Fish	http://goodeggs1.imgix.net/product_photos/dB8hXxpTzWSEx5QaovwR_FK1A9277.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
446	Organic Nonfat Blueberry Icelandic Yogurt	Smári yogurt has more protein per serving than any other yogurt in the US. It's thicker than most other yogurt. Creamier, also. It's thick because we strain off most of the water, and leave the yogurt. It's concentrated. It takes four cups of whole milk to make one cup of Smári.Ingredients: Organic grade A pasteurized skim milk, organic blueberries, organic cane sugar, water, pectin, organic blueberry juice concentrate, live and active cultures.	5	oz	1.99	0.4	oz	Dairy	Yogurt	http://goodeggs1.imgix.net/product_photos/eeJURAnaSqGFOFOQtRIc_FK1A7281.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
447	Plain Sheep's Milk Yogurt	Our sheep's milk yogurt is sweeter than goat's milk, tastier than soy and richer than cow's milk! Made with naturally homogenized sheep milk, our yogurt contains no antibiotics or growth hormones. For an added benefit, sheep milk could be the answer for those who are lactose intolerant. Did you know that Bellwether Farms tasty Sheep Milk Yogurt is…Made from 100% pure sheep milkMade from milk from healthy, pastured animals and active cultures L.bulgaricus, S. themophilus, L. acidophilus, and Bifidus – all very good for the body’s proper functioning.Is an excellent source of B vitamins, including B12, as well as calcium and riboflavin.Ingredients: Pasteurized Sheep Milk, Live, Active Cultures: S. Thermophilus, L. Bulgaricus, L. Acidophilus, & Bifidus.	16	oz	6.29	0.39	oz	Dairy	Yogurt	http://goodeggs1.imgix.net/product_photos/CNewEwHQZa1w7ILaiI49_FK1A5852.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
448	Blackberry Sheep's Milk Yogurt	With superb Northwestern blackberries.Our sheep's milk yogurt is sweeter than goat's milk, tastier than soy and richer than cow's milk! Made with naturally homogenized sheep milk, our yogurt contains no antibiotics or growth hormones. For an added benefit, sheep milk could be the answer for those who are lactose intolerant. Did you know that Bellwether Farms tasty Sheep Milk Yogurt is…Made from 100% pure sheep milkMade from milk from healthy, pastured animals and active cultures L.bulgaricus, S. themophilus, L. acidophilus, and Bifidus – all very good for the body’s proper functioning.Is an excellent source of B vitamins, including B12, as well as calcium and riboflavin.Ingredients: Pasteurized Sheep Milk, Live, Active Cultures: S. Thermophilus, L. Bulgaricus, L. Acidophilus, & Bifidus.	6	oz	2.49	0.42	oz	Dairy	Yogurt	http://goodeggs2.imgix.net/product_photos/4x6mKdYT6OaSllxK8uSQ_FK1A7713.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
449	Plain Goat's Milk Yogurt	Enjoy the delicious, velvety simplicity of Plain Goat Yogurt!Redwood Hill Farm Goat Milk Yogurt is a gold medal-winning European-style yogurt made with the highest-quality Grade A un-homogenized whole goat milk. The slight cream layer at the top can either be enjoyed or removed if you prefer a lower fat yogurt. We add a special blend of living cultures with acidophilus and bifidus to promote healthy digestion, and create a classic yogurt flavor.Ingredients: Grade A Pasteurized whole goat milk, tapioca starch, pectin.Live active cultures: S. Thermophilus, L. Bulgaricus, L. Acidophilus & Bifidus	6	oz	2.29	0.38	oz	Dairy	Yogurt	http://goodeggs2.imgix.net/product_photos/GF7fCOQfG4ZYWR48ToBQ_FK1A1739.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
450	Maple Coconut & Almond Yogurt	Maple non-dairy yogurt made from almond and organic coconut milk.Maple Non-dairy Yogurt:\n almond milk, coconut milk*, pure maple extract (alcohol, water, natural\n caramel color, glycerine, maple concentrate), sugar*, tapioca flour, \nagar agar,\n live active bacteria (Bifidibacterium difidum, Lactobacillus \nacidophilus, Lactobacillus casei, Lactobacillus delbrueckii subsp \nbulgarius, Lactobacillus rhamnosus, Streptococcus thermophilus) *OrganicAlmond\n Milk Contains Less Than 1% Of The Following: Vitamin/Mineral Blend \n(Calcium Carbonate, Vitamin A, Vitamin E, Vitamin D2, Vitamin B12, \nVitamin B2, Zinc), Gellan Gum, Carrageenan, Potassium Citrate, Sunflower\n Lecithin, Natural Flavors, Sea Salt.	16	oz	7.29	0.46	oz	Dairy	Yogurt	http://goodeggs2.imgix.net/product_photos/8JhAbHuR52Qrm8MEtTgZ_FK1A1889.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
451	Lemon Coconut & Almond Yogurt	Lemon non-dairy yogurt made from almond and coconut milk. From one of our customers:"Hi ,Just wanted to say I LOVE YOUR PRODUCT!!!! I have tried every non-dairy yogurt on the market and found them barely palatable at best. I can't get enough of Crunch Culture... SO good I even eat them as a dessert in the afternoon and evenings! I've been ordering them in my regular Good Eggs delivery..."Lemon Yogurt ingredients: almond milk, coconut milk*, sugar*, lemon juice, tapioca flour, agar agar, live active bacteria (Bifidobacterium bifidum, Lactobacillus acidophilus, Lactobacillus casei, Lactobacillus delbrueckii subsp bulgarcus, Lactobacillus rhamnosus, Streptococcus thermophiles) *OrganicAlmond Milk Contains Less Than 1% Of The Following: Vitamin/Mineral Blend (Calcium Carbonate, Vitamin A, Vitamin E, Vitamin D2, Vitamin B12, Vitamin B2, Zinc), Gellan Gum, Carrageenan, Potassium Citrate, Sunflower Lecithin, Natural Flavors, Sea Salt.	16	oz	7.29	0.46	oz	Dairy	Yogurt	http://goodeggs2.imgix.net/product_photos/OOmeUJ7iRB6NYt5nWl8J_FK1A1911.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
452	Lavender Coconut & Almond Yogurt	Lavender infused non-dairy yogurt made from almond and coconut milk. From one of our customers:"Hi ,Just wanted to say I LOVE YOUR PRODUCT!!!! I have tried every non-dairy yogurt on the market and found them barely palatable at best. I can't get enough of Crunch Culture... SO good I even eat them as a dessert in the afternoon and evenings! I've been ordering them in my regular Good Eggs delivery..."\nLavender-infused Yogurt ingredients: almond milk, coconut\nmilk*, sugar*, lavender, tapioca flour, agar agar, live active bacteria\n(Bifidobacterium bifidum, Lactobacillus acidophilus, Lactobacillus casei,\nLactobacillus delbrueckii subsp bulgarcus, Lactobacillus rhamnosus,\nStreptococcus thermophiles) *Organic\nAlmond Milk Contains Less\nThan 1% Of The Following: Vitamin/Mineral Blend (Calcium Carbonate, Vitamin A,\nVitamin E, Vitamin D2, Vitamin B12, Vitamin B2, Zinc), Gellan Gum, Carrageenan,\nPotassium Citrate, Sunflower Lecithin, Natural Flavors, Sea Salt. 	16	oz	7.29	0.46	oz	Dairy	Yogurt	http://goodeggs2.imgix.net/product_photos/tGuHr5vSiKR7Up4UZdXA_FK1A1898.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
453	Almond & Coconut Milk Lavender Yogurt	Almond & Organic Coconut milk lavender-infused yogurt with coconut-candied citrus peel and pistachio granola.Coconut Candied Citrus Peel Granola: oats*, coconut, sugar*, brown rice syrup*, coconut oil*, lemons, pistachios, salt.Lavender-Infused Non-dairy Yogurt: almond milk, coconut milk*, lavender, sugar*, tapioca flour, agar agar, live active bacteria (Bifidibacterium difidum, Lactobacillus acidophilus, Lactobacillus casei, Lactobacillus delbrueckii subsp bulgarius, Lactobacillus rhamnosus, Streptococcus thermophilus) *OrganicAlmond Milk Contains Less Than 1% Of The Following: Vitamin/Mineral Blend (Calcium Carbonate, Vitamin A, Vitamin E, Vitamin D2, Vitamin B12, Vitamin B2, Zinc), Gellan Gum, Locust Bean Gum, Potassium Citrate, Sunflower Lecithin, Natural Flavors, Sea Salt.	7	oz	4.79	0.68	oz	Dairy	Yogurt	http://goodeggs1.imgix.net/product_photos/PmdiG1mdTG2XGmVh2Fw2_FK1A1876.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
454	Almond & Coconut Milk Strawberry Yogurt	Almond & OrganicCoconut milk basil-infused yogurt with dried strawberry, slivered almond granola.Strawberry Balsamic Granola: oats*, coconut, sugar*, brown rice syrup*, coconut oil*, almonds, dried strawberries, balsamic vinegar*, salt.Basil-Infused Non-dairy Yogurt: almond milk, coconut milk*, basil*, sugar*, tapioca flour, agar agar, live active bacteria (Bifidibacterium difidum, Lactobacillus acidophilus, Lactobacillus casei, Lactobacillus delbrueckii subsp bulgarius, Lactobacillus rhamnosus, Streptococcus thermophilus) *OrganicAlmond Milk Contains Less Than 1% Of The Following: Vitamin/Mineral Blend (Calcium Carbonate, Vitamin A, Vitamin E, Vitamin D2, Vitamin B12, Vitamin B2, Zinc), Gellan Gum, Locust Bean Gum, Potassium Citrate, Sunflower Lecithin, Natural Flavors, Sea Salt.	7	oz	4.79	0.68	oz	Dairy	Yogurt	http://goodeggs2.imgix.net/product_photos/0ORfJ68ERTuHR5ydUaOu_FK1A1879.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
455	Organic Lactose Free Strawberry Yogurt	Real organic strawberries add a rich complexity of fruit flavors, which balance perfectly with the subtle tartness of the yogurt cultures. The creaminess of the organic milk marries the flavors in a luscious harmony.Green Valley Organics' lactose-free dairy is made by Redwood Hill Farm & Creamery in Sebastopol CA. Ingredients: Organic Lowfat Pasteurized Milk, Organic Fruit (Organic Evaporated Cane Juice, Organic Strawberries, Water, Pectin, Organic Locust Bean Gum, Natural Flavor, Vegetable Juice), Lactase Enzyme, Pectin, Flourish 10 Live and Active Cultures.	6	oz	1.79	0.3	oz	Dairy	Yogurt	http://goodeggs2.imgix.net/product_photos/f4pHkgOVRdCHJbEf6rKf_FK1A5816.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
456	Organic Lactose Free Blueberry Yogurt	Green Valley Organics' favorite yogurt flavor is made from luscious blueberries. You will never miss the lactose because this blueberry is loved by the tolerant and intolerant alike. The tanginess of the yogurt and the berries enhance one another. Whether you like to stir-it-up or dig-in-deep, it will astound your taste buds.Green Valley Organics' lactose-free dairy is made by Redwood Hill Farm & Creamery in Sebastopol CA.   Ingredients: Organic Lowfat Pasteurized Milk, Organic Fruit (Organic Evaporated Cane Juice, Water, Organic Blueberries, Natural Flavors, Pectin, Organic Locust Bean Gum), Lactase Enzyme, Pectin, Flourish 10 Live and Active Cultures.	6	oz	1.79	0.3	oz	Dairy	Yogurt	http://goodeggs1.imgix.net/product_photos/SOkpmI83SWinmZ5GkOZo_FK1A5821.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
457	Organic Lactose Free Vanilla Yogurt	The aromatic flavor notes of organic vanilla beans from Madagascar complement the subtle sweetness and enhance the natural creaminess of the fresh yogurt. The rich, delicious taste is accented by a clean, crisp finish, which makes this yogurt one you will want to enjoy often. Whether you have a lactose restriction or not, this is as good as real vanilla can get.Green Valley Organics' lactose-free dairy is made by Redwood Hill Farm & Creamery in Sebastopol CA. Ingredients: Organic Lowfat Pasteurized Milk, Organic Evaporated Cane Juice, Organic Vanilla Extract, Lactase Enzyme, Pectin, Flourish 10 Live and Active Cultures.	6	oz	1.79	0.3	oz	Dairy	Yogurt	http://goodeggs2.imgix.net/product_photos/tyKcHhvbQXafzJxaM1Hi_FK1A5826.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
458	Basil Coconut & Almond Yogurt	Basil infused non-dairy yogurt made from almond and coconut milk. From one of our customers:"Hi ,Just wanted to say I LOVE YOUR PRODUCT!!!! I have tried every non-dairy yogurt on the market and found them barely palatable at best. I can't get enough of Crunch Culture... SO good I even eat them as a dessert in the afternoon and evenings! I've been ordering them in my regular Good Eggs delivery..."\nBasil Yogurt Ingredients: almond milk, coconut milk*, sugar*,\nbasil*, tapioca flour, agar agar, live active bacteria (Bifidobacterium\nbifidum, Lactobacillus acidophilus, Lactobacillus casei, Lactobacillus\ndelbrueckii subsp bulgarcus, Lactobacillus rhamnosus, Streptococcus\nthermophiles) *Organic  \nAlmond Milk Contains Less\nThan 1% Of The Following: Vitamin/Mineral Blend (Calcium Carbonate, Vitamin A,\nVitamin E, Vitamin D2, Vitamin B12, Vitamin B2, Zinc), Gellan Gum, Carrageenan,\nPotassium Citrate, Sunflower Lecithin, Natural Flavors, Sea Salt.	16	oz	7.29	0.46	oz	Dairy	Yogurt	http://goodeggs1.imgix.net/product_photos/9xrPOkybRhmLmsIdrXNw_FK1A1906.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
459	Almond & Coconut Milk Lemon Yogurt	Almond & Organic Coconut milk lemon yogurt with candied ginger, slivered almond granola.Candied Ginger  Granola: oats*, sugar*, brown rice syrup*, coconut oil*, almonds, candied ginger (ginger, sugar), salt.Lemon Non-dairy Yogurt: almond milk, coconut milk*, natural lemon juice, sugar*, tapioca flour, agar agar, live active bacteria (Bifidibacterium difidum, Lactobacillus acidophilus, Lactobacillus casei, Lactobacillus delbrueckii subsp bulgarius, Lactobacillus rhamnosus, Streptococcus thermophilus) *OrganicAlmond Milk Contains Less Than 1% Of The Following: Vitamin/Mineral Blend (Calcium Carbonate, Vitamin A, Vitamin E, Vitamin D2, Vitamin B12, Vitamin B2, Zinc), Gellan Gum, Locust Bean Gum, Potassium Citrate, Sunflower Lecithin, Natural Flavors, Sea Salt.	7	oz	4.79	0.68	oz	Dairy	Yogurt	http://goodeggs1.imgix.net/product_photos/d9ExSZMQa6u9fEU5NWVR_2gR3VJm9Uve2VOjhAV-JBiYYbdLFn64RREUE4Iqa1tY.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
460	Almond & Organic Milk Maple Yogurt	Almond & Organic Coconut milk maple yogurt with cinnamon walnut granola.Cinnamon Walnut Granola: oats*, coconut, sugar*, brown rice syrup*, coconut oil*, walnut, cinnamom, salt.Maple Non-dairy Yogurt:\n almond milk, coconut milk*, pure maple extract (alcohol, water, natural caramel color, glycerine, maple concentrate), sugar*, tapioca flour, agar agar,\n live active bacteria (Bifidibacterium difidum, Lactobacillus \nacidophilus, Lactobacillus casei, Lactobacillus delbrueckii subsp \nbulgarius, Lactobacillus rhamnosus, Streptococcus thermophilus) *OrganicAlmond\n Milk Contains Less Than 1% Of The Following: Vitamin/Mineral Blend \n(Calcium Carbonate, Vitamin A, Vitamin E, Vitamin D2, Vitamin B12, \nVitamin B2, Zinc), Gellan Gum, Locust Bean Gum, Potassium Citrate, Sunflower\n Lecithin, Natural Flavors, Sea Salt.	7	oz	4.79	0.68	oz	Dairy	Yogurt	http://goodeggs2.imgix.net/product_photos/k5tudAp9T0ux2M1zTdzP_FK1A1939.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
461	Organic Unsalted Butter	Clover Organic Farms quality butters are made in small batches with rich, organic milk and cream from a select group of family farms on the North Coast of California. The cows on these farms are not treated with antibiotics or the growth hormone rBST and are American Humane Certified by the American Humane Association, resulting in superior milk and cream used to make our delicious butter products. Enjoy Clover Organic Farms butter in good conscience and good health.OrganicThe cream is culturedGluten freeLow sodiumGreat for baking, cooking and to top your favorite foods!Ingredients: Certified organic cream (derived from milk), cultures	16	oz	7.79	7.79	lb	Dairy	Butter	http://goodeggs1.imgix.net/product_photos/65G9e9rlShKnNuMIKBqk_FK1A0581.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
462	Organic Unsalted Butter	Our European-style, Organic, Unsalted Butter is freshly churned in small batches at our own creamery. Our Organic Unsalted Butter is rich, sweet and creamy, with 85% butterfat content and extremely low moisture levels. Butter with lower moisture content results in flakier pastry that rises higher and browns more evenly. This is the chefs' butter because it doesn't burn as easily as other butters. We make it in small batches in our old-fashioned 1950s butter churn.Named "One of the Top Premium Butters in America" by Food and Wine Magazine. Straus Family Creamery’s certified Organic Butter is also certified kosher and gluten-free.Ingredients: Certified Organic Pasteurized Cream	16	oz	9.99	9.99	lb	Dairy	Butter	http://goodeggs2.imgix.net/product_photos/IIggguphQUCfAkpWatFd_FK1A5947.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
463	Graziers Unsalted Grass-Fed Butter	This European-style cultured butter is made only from grass-fed cream, rich and flavorful with 83% butterfat. Sierra Nevada Cheese Co. vat-cultures the butter for at least 16 hours, giving it a complex, sweet, and delicious taste. Try spreading it on warm, crusty bread and you'll never go back to plain old butter again! Ingredients: cream.Contains: milk.	8	oz	4.79	9.58	lb	Dairy	Butter	http://goodeggs2.imgix.net/product_photos/ehkIOsJQQXWkZ7C79OhV_FK1A5629.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
464	Organic Unsalted Butter	Our famous butter made in the European style. We separate the cream, then let it set for 3 days with the culture before churning it just like in the old days. This sweet butter is a chef favorite! You can use for all of your cooking and baking for amazing results.Ingredients: USDA Organic Culture Pasteurized Grade A Jersey Brand Cream, Enzymes.	8	oz	4.99	9.98	lb	Dairy	Butter	http://goodeggs2.imgix.net/product_photos/nnkcPiS7RRu09V5erkqh_FK1A5978.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
465	Unsalted Cultured Butter	This Unsalted Butter log is perfect for baking with its 86% butterfat content. Cut into your scones or pie dough for a delicate crumb and super flaky texture. While working on a dairy farm in Brittany, France, Allison Hooper took careful note of what happened to the milk. After each milking, she set the cream aside. Natural, lactic bacteria took over, ripening it into cultured cream—or crème fraîche. When the thick result was churned into butter, she knew she had learned something valuable. Inspired by this lesson, our cream is churned in small batches becoming a rich European-style butter with a unique farm-fresh taste. Ingredients: cream, culture.contains dairy	8	oz	4.99	9.98	lb	Dairy	Butter	http://goodeggs2.imgix.net/product_photos/8cRduvahTSu7yfQotM7d_FK1A5293.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
466	Organic Grass Fed Ghee	Ghee is a premium cooking oil, the result of a clarification process that removes all the moisture, milk solids and impurities from butter. The absence of milk solids and water in ghee make it completely shelf stable and give it a 485ºF smoke point, making it a great choice for high-temperature cooking. Ancient Organics Ghee is always made by hand in small batches, using only organic sweet cream butter from Straus Family Creamery. Keep ghee away from moisture and sunlight. Store refrigerated after opening for the longest shelf life.Ingredients: organic butter.Contains: milk.	16	fl oz	19.99	1.25	fl oz	Dairy	Butter	http://goodeggs2.imgix.net/product_photos/4U2PPEBXRVu9wFozcShW_FK1A7510.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
467	Organic Grass Fed Ghee	Ghee is a premium cooking oil, the result of a clarification process that removes all the moisture, milk solids and impurities from butter. The absence of milk solids and water in ghee make it completely shelf stable and give it a 485ºF smoke point, making it a great choice for high-temperature cooking. Ancient Organics Ghee is always made by hand in small batches, using only organic sweet cream butter from Straus Family Creamery. Keep ghee away from moisture and sunlight. Store refrigerated after opening for the longest shelf life.Ingredients: organic butter.Contains: milk.	32	fl oz	39.99	1.25	fl oz	Dairy	Butter	http://goodeggs2.imgix.net/product_photos/4U2PPEBXRVu9wFozcShW_FK1A7510.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
468	Organic Grass-Fed Ghee	Ghee is a premium cooking oil, the result of a clarification process that removes all the moisture, milk solids and impurities from butter. The absence of milk solids and water in ghee make it completely shelf stable and give it a 485ºF smoke point, making it a great choice for high-temperature cooking. Ancient Organics Ghee is always made by hand in small batches, using only organic sweet cream butter from Straus Family Creamery. Keep ghee away from moisture and sunlight. Store refrigerated after opening for the longest shelf life.Ingredients: organic butter.Contains: milk.	8	fl oz	13.99	1.75	fl oz	Dairy	Butter	http://goodeggs2.imgix.net/product_photos/9d3SBv6ZSE6JcU7dxw86_FK1A7505.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
469	Graziers Salted Grass-Fed Butter	This European-style cultured butter is made only from salt and grass-fed cream, rich and flavorful with 83% butterfat. Sierra Nevada Cheese Co. vat-cultures the butter for at least 16 hours, giving it a complex, savory and delicious taste. Try spreading it on warm, crusty bread and you'll never go back to plain old butter again! Ingredients: cream, salt.Contains: milk.	8	oz	4.79	9.58	lb	Dairy	Butter	http://goodeggs1.imgix.net/product_photos/lYWszO1LTfyMYSbBGFch_FK1A5634.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
470	Organic Salted Butter	Clover Organic Farms quality butters are made in small batches with rich, organic milk and cream from a select group of family farms on the North Coast of California. The cows on these farms are not treated with antibiotics or the growth hormone rBST and are American Humane Certified by the American Humane Association, resulting in superior milk and cream used to make our delicious butter products. Enjoy Clover Organic Farms butter in good conscience and good health.OrganicThe cream is culturedGluten freeGreat for baking, cooking and to top your favorite foods!Ingredients:  Certified organic cream (derived from milk), sea salt, cultures	16	oz	7.79	7.79	lb	Dairy	Butter	http://goodeggs1.imgix.net/product_photos/buKuaA23ROWlzxucWmdg_FK1A0587.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
471	Organic Salted Butter	We make Organic Butter like no other. Once you’ve tried this one, you’ll never go back.Rich, sweet and creamy, with 85% butterfat content and extremely low moisture levels, our European-Style, Organic, Lightly Salted Butter contains only half the salt of other butters. With lower moisture, baking results in flakier pastry that rises higher and browns more evenly. This is the “chefs” butter, because it doesn't burn as easily as other butters. We make it European-style, in small batches in our old-fashioned 1950s butter churn.Named "One of the Top Premium Butters in America" by Food and Wine Magazine.Straus Family Creamery's certified Organic Butter is also certified kosher and gluten-free.Ingredients: Certified Organic Pasteurized Cream, Salt. 	16	oz	9.99	9.99	lb	Dairy	Butter	http://goodeggs1.imgix.net/product_photos/tPTkTzA0SDKEZSFy8tUC_FK1A5946.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
472	Organic Salted Butter	Our famous butter made in the European style. We separate the cream, then let it set for 3 days with the culture before churning it just like in the old days. Very lightly salted, with French “Guerande” sea salt, to bring out its flavor.This butter will give you a lot of satisfaction. Try it on your favorite bread or English muffin in the morning!Ingredients: USDA Organic Culture Pasteurized Grade A Jersey Brand Cream, Salt, Enzymes.	8	oz	4.99	9.98	lb	Dairy	Butter	http://goodeggs1.imgix.net/product_photos/QKemTH62QmO6xXcUfZjg_FK1A5972.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
473	Lightly Salted Cultured Butter	While working on a dairy farm in Brittany, France, Allison Hooper took careful note of what happened to the milk. After each milking, she set the cream aside. Natural, lactic bacteria took over, ripening it into cultured cream—or crème fraîche. When the thick result was churned into butter, she knew she had learned something valuable.Inspired by this lesson, our cream is churned in small batches becoming a rich European-style butter with 86% butterfat content and unique farm-fresh taste. Use this cultured butter at high temperatures for a perfect pan sear, or smear on toasted sourdough with jam.Ingredients: pasteurized cows' cream (milk), salt, cultures. contains dairy	8	oz	4.99	9.98	lb	Dairy	Butter	http://goodeggs2.imgix.net/product_photos/aNEkWlNgSkyhsEdO1Vqu_FK1A5304.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
474	Sheep Butter with Sea Salt	Farmstead Cream | Slowly Churned | Lightly Salted | Small Batch | Hand-packedHaverton Hill 100% Sheep’s Milk Butter is handcrafted in small batches using our fresh farmstead sheep cream produced at the source on our farm in Petaluma.  Our fresh cream  is slowly churned while delicious fine sea salt is lightly sprinkled throughout each batch creating our signature  European - style uncultured butter .  A creamy white appearance with an 85% butterfat and it's rich, smooth and mildly sweet flavor make Haverton Hill award winning 100% sheep butter a perfect addition to any meal.  Enjoy!2015 American Cheese Society WinnerIngredients: Sheep cream and sea salt	8	oz	13.99	27.98	lb	Dairy	Butter	http://goodeggs1.imgix.net/product_photos/EcZv5DQTEe1Ey4KKsfyk_X07aQEqt1B3i59vT9ZtUV9cLeF7zneaaNhYWTPQnvQI.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
475	European Style Cultured Vegan Butter	Melts, cooks, bakes, spreads and tastes like butter. Made with Organic Coconut Oil & Organic Cashews. Made without palm oil or milk products.Free of cholesterol, lactose, egg, gluten and soy. Non-GMO product.Ingredients: Organic Coconut Oil, Water, Organic Safflower Oil or Sunflower Oil, Organic Cashews, Soy Lecithin, Sea Salt, Cultures.	8	oz	7.99	15.98	lb	Dairy	Butter	http://goodeggs2.imgix.net/product_photos/Q0Qgn4CuTqu9gDKMAFeD_FK1A0515.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
476	Almond Milk	Organic Ingredients: organic sprouted almonds, filtered water.Marin Living Foods strives to be a 100% organic company, with that in mind our ingredients are of the highest quality in our almond milk drinks.  Our almonds are in a raw and sprouted state before we make our almond milk drinks. Almond milk is one of the most nutritious milk substitutes available. Almond milk does not need to be fortified as almonds are naturally very nutritious, containing vitamin E, omega-3 fatty acids, manganese, selenium, magnesium, potassium, zinc, iron, fiber, phosphorous, calcium and flavonoids.Our almond milk is prepared free of preservatives and is 100% healthy.  The nut's soft texture, milk flavor, and light colouring makes for an efficient analog to dairy, and a soy-free choice for lactose intolerant people and vegans. Please shake well before enjoying our drinks. 	32	fl oz	10.99	0.34	fl oz	Dairy	Nut & Soy Milk	http://goodeggs2.imgix.net/product_photos/n6WuRFd9QeVvc9MMnuDy_FK1A5246.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
477	Organic Unsweetened Almond Milk	Our unsweetened almond milk is the true staple for your fridge. Four simple, organic ingredients create everything you need, and nothing you don’t. We start with single-source spring water and blend it with delicious organic almonds. Then we add just a touch of sea salt for balance, and organic acacia gum to make sure it actually comes back together when you shake it. Our unsweetened almond milk is just like you would make in your own kitchen. Simple, delicious, and good for just about anything.Ingredients: Organic Almondmilk (Spring Water, Organic Almonds), Organic Acacia Gum, Sea SaltContains AlmondsGluten-free, soy-free, produced in a peanut-free facility	28	fl oz	6.29	0.22	fl oz	Dairy	Nut & Soy Milk	http://goodeggs1.imgix.net/product_photos/QC4Kab8YRguvBzytG71H_FK1A3553.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
478	Organic Unsweetened Vanilla Almond Milk	By popular customer demand!  Our smooth almondmilk flavored with real vanilla is perfect in cereal, coffee, or anywhere you might use milk.  Consisting only of almonds and vanilla, Three Trees Unsweetened Vanilla Almondmilk is pure and healthy deliciousness.Simple, quality ingredients and tons of almonds – that’s how we achieve the pure deliciousness in every bottle. A slightly modified recipe of the original, Three Trees now mimic milk more closely. Three Trees is perfectly satisfying as a light meal, after a workout, or anytime you’re craving nourishing, clean energy.Ingredients: Filtered Water, Organic Almonds, Organic Vanilla Extract.	33.8	fl oz	8.99	0.27	fl oz	Dairy	Nut & Soy Milk	http://goodeggs1.imgix.net/product_photos/R5ZDmBGWQ0C2BETO06D5_032116_GoodEggs-4733.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
479	Organic Unsweetened Almond Milk	We take organic almonds and add a gentle roast to allow their natural flavor to shine through. The result is our signature taste that’s a pleasure to drink by the glass and blends perfectly in your recipes.     INGREDIENTS: Almond Base* (Water, Almonds*)Rice Starch*Sea SaltVanilla*Natural FlavorCarrageenanRiboflavin (B2)Vitamin A PalmitateVitamin D2	32	fl oz	3.49	0.11	fl oz	Dairy	Nut & Soy Milk	http://goodeggs1.imgix.net/product_photos/9tG7YGHTtSTeT06dle5A_FK1A0438.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
480	Organic Unsweetened Almond Milk	Taste the difference of true almondmilk.  We never use any additives, so what you're getting is a true almondmilk. The smooth, rich taste of our almond milks comes only from more almonds – that's the Three Trees difference.Simple, quality ingredients and tons of almonds – that’s how we achieve the pure deliciousness in every bottle. A slightly modified recipe of the original, Three Trees now mimic milk more closely. Three Trees is perfectly satisfying as a light meal, after a workout, or anytime you’re craving nourishing, clean energy.Ingredients: Filtered Water, Organic Almonds.	33.8	fl oz	8.99	0.27	fl oz	Dairy	Nut & Soy Milk	http://goodeggs2.imgix.net/product_photos/Cz9C7yqRnqMRUjb1wYB6_032116_GoodEggs-4728.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
481	Organic Soy Milk	This is as pure and simple as it \ngets – just soybeans and water.  Hodo Organic Soymilk is rich, creamy, and full of goodness. Good soybeans make good milk and we make our non-dairy milk the artisan way - a fine grind, boiled, triple pressed and strained -  using the \nfinest organic, non-GMO whole soybeans.  Unsweetened.Ingredients: Water, Organic Non-GMO SoybeansRecipe ideas: Best in it's pure form!  Or, add a splash of ginger vanilla syrup, or whisk in some matcha green tea.	1	half gallon	5.49	0.09	fl oz	Dairy	Nut & Soy Milk	http://goodeggs2.imgix.net/product_photos/rIVsPBMgT4ShAHUPNmNt_FK1A1359.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
482	Organic Original Almond Milk	We take organic almonds and add a gentle roast to allow their natural flavor to shine through. The result is our signature taste that’s a pleasure to drink by the glass and blends perfectly in your recipes.     INGREDIENTSAlmond Base* (Water, Almonds*)Dried Cane Syrup*Potassium CitrateSea SaltCarrageenanRiboflavin (B2)Vitamin A PalmitateVitamin D2 	32	fl oz	3.49	0.11	fl oz	Dairy	Nut & Soy Milk	http://goodeggs1.imgix.net/product_photos/JRIeDIgtQtmKAaXuoNHH_FK1A7360.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
483	Organic Almond Milk	Our sweetened almond milk is made just like you would make it at home. We start with single-source spring water and blend it with delicious organic almonds. Then we add just a touch of maple syrup and sea salt to give it the perfect balanced taste. Finally, we use organic acacia gum to make sure it actually comes back together when you shake it. Our sweetened almond milk is perfect for people who love the taste of regular dairy milk, but with only 7 grams of sugar. It is perfect for drinking straight out of a glass.Ingredients: Organic Almondmilk (Spring Water, Organic Almonds), Organic Maple Syrup, Organic Acacia Gum, Sea SaltContains AlmondsGluten-free, soy-free, produced in a peanut-free facility	28	fl oz	6.29	0.22	fl oz	Dairy	Nut & Soy Milk	http://goodeggs2.imgix.net/product_photos/YaNo3vG7RmiBilPZ8rav_FK1A3544.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
484	Classic Almond Milk	Classic Almond Milk Ingredients: organic blanched almonds, dates, vanilla bean, filtered waterIn two simple words our vegan milks are absolutely scrumptious! We are really reinventing the wheel here. Yes nut and rice milks have been made and consumed by vegans and the dairy intolerant for years, but when was the last time you had a nut milk infused with organic cacao and rose water? The Living Apothecary is hard at work, coming up with mouth watering vegan milk libations that are not only good for you in in-numerous ways, but are also so tasty they are impossible to resist. We pride ourselves on pushing the boundaries in just about every imaginable way in the world of living vegan. Our vegan milks are no exception. Every ingredient is made from scratch. Every combination, painstakingly taste tested. They are a perfect yang to our cold pressed juice and kefir water tonic's yin. After all, life is all about balance. 	32	fl oz	12.29	0.38	fl oz	Dairy	Nut & Soy Milk	http://goodeggs2.imgix.net/product_photos/wngfgcNoS8iTbgOK8ntg_FK1A2669.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
485	Organic Unsweetened Vanilla Almond Milk	We take organic almonds and add a gentle roast to allow their natural flavor to shine through. The result is our signature taste that’s a pleasure to drink by the glass and blends perfectly in your recipes.        INGREDIENTSAlmond Base* (Water, Almonds*)Rice Starch*Vanilla*Sea SaltNatural FlavorCarrageenanRiboflavin (B2)Vitamin A PalmitateVitamin D2	32	fl oz	3.49	0.11	fl oz	Dairy	Nut & Soy Milk	http://goodeggs2.imgix.net/product_photos/DFNNe2acQlejzd2UtREw_FK1A0431.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
486	Unsweetened Classic Almond Milk	Classic Almond Milk (Unsweetened)Ingredients: organic blanched almonds, filtered waterIn two simple words our vegan milks are absolutely scrumptious! We are really reinventing the wheel here. Yes nut and rice milks have been made and consumed by vegans and the dairy intolerant for years, but when was the last time you had a nut milk infused with organic cacao and rose water? The Living Apothecary is hard at work, coming up with mouth watering vegan milk libations that are not only good for you in in-numerous ways, but are also so tasty they are impossible to resist. We pride ourselves on pushing the boundaries in just about every imaginable way in the world of living vegan. Our vegan milks are no exception. Every ingredient is made from scratch. Every combination, painstakingly taste tested. They are a perfect yang to our cold pressed juice and kefir water tonic's yin. After all, life is all about balance. 	32	fl oz	12.29	0.38	fl oz	Dairy	Nut & Soy Milk	http://goodeggs2.imgix.net/product_photos/wngfgcNoS8iTbgOK8ntg_FK1A2669.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
487	Organic Unsweetened Soy Milk	Eden's Organic Unsweetened Soy Milk is smooth, delicious, and high in protein and essential fatty acids. It's made using only Non-GMO Verified soybeans grown on family farms in the Midwest and processed at Eden's own organic facility in Michigan, with no carageenan added. Their packaging is compostable and the soy milk can be stored unrefrigerated until opened. A great addition to your non-dairy pantry!Certified Gluten-Free, Carageenan Free.Ingredients: Purified Water, Organic SoybeansContains: Soy	32	fl oz	3.69	0.12	fl oz	Dairy	Nut & Soy Milk	http://goodeggs1.imgix.net/product_photos/Nj3avKES7GhXJIOaU7c5_20161007-EdenSoy_UnsweetenedOrigianl_MG_3285.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
488	Organic Original Soy Milk	Eden's Organic Original Soy Milk is naturally sweetened to create a delicious and nutritious drink, high in protein and essential fatty acids. It's made using only Non-GMO Verified soybeans grown on family farms in the Midwest and processed at Eden's own organic facility in Michigan, with no carageenan added. Their packaging is compostable and the soy milk can be stored unrefrigerated until opened.Carageenan Free, Non-GMO Verified.Ingredients: Purified Water, Organic Soybeans, Naturally Malted Organic Wheat and Barley Extract, Calcium Carbonate, Kombu Seaweed, Sea SaltContains: Soy	32	fl oz	3.69	0.12	fl oz	Dairy	Nut & Soy Milk	http://goodeggs2.imgix.net/product_photos/flu7OyT5SpqL8qorKYoz_20161007-EdenSoy_Original_MG_3283.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
489	Raw Coconut Almond Milk (Quart)	Ingredients: young coconut water paired with sprouted almonds, filtered water, organic vanilla and pink himalayan sea salt 100% Raw and VeganNo Preservatives or AdditivesDairy, Soy, Carrageenan, and Gluten FreeHealthy and Delicious!   4 day shelf life (delivered fresh to GOOD EGGS on Saturday AM)Always Shake Well and Keep Refrigerated	32	fl oz	13.99	0.44	fl oz	Dairy	Nut & Soy Milk	http://goodeggs2.imgix.net/product_photos/l0P2rs1NSM6ntQEv53yL_FK1A1392.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
490	Organic Vanilla Almond Milk	We take organic almonds and add a gentle roast to allow their natural flavor to shine through. The result is our signature taste that’s a pleasure to drink by the glass and blends perfectly in your recipes.      INGREDIENTSAlmond Base* (Water, Almonds*)Dried Cane Syrup*Potassium CitrateSea SaltNatural Vanilla Flavor With Other Natural FlavorsCarrageenanRiboflavin (B2)Vitamin A PalmitateVitamin D2	32	fl oz	3.49	0.11	fl oz	Dairy	Nut & Soy Milk	http://goodeggs1.imgix.net/product_photos/zw9NpbqSQbmRtsIjWzVM_FK1A7350.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
499	Cacao Almond Milk	Our cacao almond milk has the delicious taste of raw cacao, lightly spiced with cinnamon. It is 100% pure, raw, organic and abundant in almonds. Ideal for breakfast, as a post-workout drink, or a delicious and nutritious on-the-go beverage. Ingredients: organic almonds, organic medjool date, organic cacao, organic cinnamon, purified water, pink himalayan salt	10.75	fl oz	4.99	0.46	fl oz	Dairy	Nut & Soy Milk	http://goodeggs1.imgix.net/product_photos/NGi9GbodTle2E0d8nrBV_FK1A3425.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
491	Organic Vanilla Almond Milk	Our vanilla almond milk is unlike anything you’ve ever tasted. In a good way. We start with single-source spring water and blend it with delicious organic almonds. Then we add just a touch of maple syrup and sea salt to give it the perfect balanced taste. Next, we use organic acacia gum to make sure it actually comes back together when you shake it. And, finally, we add organic vanilla extract, which gives it the signature vanilla flavor. Our vanilla almond milk is the favorite of kids everywhere. Some even say it takes like a milkshake. Try it in cereal, cold-brew coffee, or right out of bottle.Ingredients: Organic Almondmilk (Spring Water, Organic Almonds), Organic Maple Syrup, Organic Vanilla Extract, Organic Acacia Gum, Sea Salt.Contains AlmondsGluten-free, soy-free, produced in a peanut-free facility	28	fl oz	6.29	0.22	fl oz	Dairy	Nut & Soy Milk	http://goodeggs1.imgix.net/product_photos/eNW33BRR14PgnnW4pRpg_FK1A3549.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
492	Organic Original Cashew Milk	Still pure and simple, a dash of fiber rich dates makes our delicious and carefully crafted original a slightly sweeter symphony of subtle goodness.Forager’s 100% organic nut milks are perfect for people seeking to make their daily routine a little healthier. Light and creamy, all of our nut milk products are made using organic, unfiltered cashews. We use dates to provide sweetness with meaning while organic cacao delivers powerful antioxidants. These Paleo-pleasing products are also vegan, gluten-free and soy-free.Ingredients: Cashewmilk (filtered water, cashews*), Dates*,Cassava root*, Fermented corn sugar*, Sea salt.	28	fl oz	6.99	0.25	fl oz	Dairy	Nut & Soy Milk	http://goodeggs2.imgix.net/product_photos/whCapRNNQpeWLmXcS3AH_20161025-Forager_OriginalCashewMilk_MG_4868.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
493	Organic Unsweetened Cashew Milk	Pure, honest, and artfully crafted using heart healthy, 100% organic cashews. Our simple, subtle recipe sings the praises of whatever it accompanies.Forager’s 100% organic nut milks are perfect for people seeking to make their daily routine a little healthier. Light and creamy, all of our nut milk products are made using organic, unfiltered cashews. This product is unsweetened but there is some naturally occurring sugar from the cashews -- one ounce of cashews has 1.7g of sugar.We have added fermented corn sugar to our nut drinks to help naturally preserve product quality. Fermented corn sugar inhibits the growth of bacteria and spoilage organisms. It is Organic, non-GMO and makes up less than 0.5% of the overall product. It does not change the flavor or nutrition panel of the final product, it is not added as a sweetener and there is no additional grams of sugar as a result of its inclusion.Ingredients: Cashewmilk (filtered water, cashews*), Cassava root*, Vanilla extract*, Fermented corn sugar*, Sea salt.*Organic ingredients	28	fl oz	6.99	0.25	fl oz	Dairy	Nut & Soy Milk	http://goodeggs1.imgix.net/product_photos/XJiQMDo3SDWJj3bpAFMU_20161025-Forager_PlainCashewMilk_MG_4866.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
494	Organic Nuts & Vanilla	A luscious blend of cashews, almonds and oats scented with cinnamon and ground vanilla beans, plus just a hint of sweetness from dates. This drink provides products that deliver high levels of healthy unsaturated fats, protein, antioxidants and phytochemicals and are great as a low sugar grab-and-go snack.Ingredients: Cashew milk (filtered water, cashews*), Almond milk (filtered water, almonds*), Oatmilk (Filtered water, gluten-free oats*), Dates*, Fermented corn sugar*, Vanilla bean*, Cinnamon*, Sea salt. *Organic Ingredients. Contains: Tree Nuts (Cashews, and Almonds)	16	fl oz	6.99	0.44	fl oz	Dairy	Nut & Soy Milk	http://goodeggs1.imgix.net/product_photos/5mbYKR3MRHOmgBfq6PEk_20160422-Forager_NutsVanilla_MG_7821.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
495	Vanilla Bean Almond Milk	Our vanilla bean almond milk is light, refreshing and naturally nutritious. It is 100% pure, raw, organic and abundant in almonds. Ideal for breakfast, as a post-workout drink, or a delicious and wholesome on-the-go beverage. Ingredients: organic almonds, organic medjool date, vanilla bean, purified water, pink himalayan salt	10.75	fl oz	4.99	0.46	fl oz	Dairy	Nut & Soy Milk	http://goodeggs1.imgix.net/product_photos/8aXVcu1jS728rry4vX1w_FK1A3454.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
496	Cacao Almond Smoothie	Organic Ingredients: sprouted almond milk, raw cacao, agave nectar, vanilla extract, maca, pink himalayan salt.Marin Living Foods strives to be a 100% organic company, with that in mind our ingredients are of the highest quality in our almond milk drinks.  Our almonds are in a raw and sprouted state before we make our almond milk drinks. Our Cacao Almond Smoothie is made with raw cacao that is rich in magnesium and with the great Incan super food, Maca.  Maca is loaded with Vitamin B1, B2, B6, B12, fiber and so much more.  This chocolate milk will definitely make your taste buds chasse across the dance floor.  Enjoy!  Almond milk is one of the most nutritious milk substitutes available.  Almond milk does not need to be fortified as almonds are naturally very nutritious, containing vitamin E, omega-3 fatty acids, manganese, selenium, magnesium, potassium, zinc, iron, fiber, phosphorous, calcium and flavonoids.Our almond milk is prepared free of preservatives and is 100% healthy.  The nut's soft texture, milk flavor, and light colouring makes for an efficient analog to dairy, and a soy-free choice for lactose intolerant people and vegans. Please shake well before enjoying our drinks. 	10	fl oz	6.99	0.7	fl oz	Dairy	Nut & Soy Milk	http://goodeggs1.imgix.net/product_photos/LOCm79yRO6JxTf8LvaTw_FK1A5266%20%281%29.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
497	Almond Vanilla Chia Milk	Organic Ingredients: sprouted almond milk, sprouted chia seeds, hemp seeds, vanilla extract, agave nectar, pink himalayan salt, filtered water.Marin Living Foods strives to be a 100% organic company, with that in mind our ingredients are of the highest quality in our almond milk drinks.  Our almonds are in a raw and sprouted state before we make our almond milk drinks. Our Almond Vanilla Chia Milk is a lightly sweetened milk with the ancient super-seed, the chia.  Each bottle contains 2 tablespoons of chia which has 24% RDI for magnesium and 50% RDI for manganese.  These tiny seeds are truly magical.Almond milk is one of the most nutritious milk substitutes available.  Almond milk does not need to be fortified as almonds are naturally very nutritious, containing vitamin E, omega-3 fatty acids, manganese, selenium, magnesium, potassium, zinc, iron, fiber, phosphorous, calcium and flavonoids.Our almond milk is prepared free of preservatives and is 100% healthy.  The nut's soft texture, milk flavor, and light colouring makes for an efficient analog to dairy, and a soy-free choice for lactose intolerant people and vegans. Please shake well before enjoying our drinks. 	10	fl oz	6.99	0.7	fl oz	Dairy	Nut & Soy Milk	http://goodeggs1.imgix.net/product_photos/Xh0HK43QCKc92fbnAv8Z_FK1A5251.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
498	Raw Coconut Almond Milk (Pint)	Ingredients: young coconut water paired with sprouted almonds, filtered water, organic vanilla and pink himalayan sea salt 100% Raw and VeganNo Preservatives or AdditivesDairy, Soy, Carrageenan, and Gluten FreeHealthy and Delicious!   4 day shelf life (delivered fresh to GOOD EGGS on Saturday AM)Always Shake Well and Keep Refrigerated	16	fl oz	9.99	0.62	fl oz	Dairy	Nut & Soy Milk	http://goodeggs1.imgix.net/product_photos/Lj0mNvYTiCzUQ3WQ89QR_FK1A1401.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
500	Cold Brew Coffee Almond Milk	Our cold brew coffee almond milk is made from the finest Ritual cold brewed coffee, combined with the refreshing taste of lightly sweetened almond milk. It is 100% pure, raw, organic, and up to 67% less acidic than conventional coffee. A healthful and delicious alternative to your daily brew.Ingredients: organic almonds, organic medjool date, cold brew coffee, purified water, pink himalayan salt	10.75	fl oz	4.99	0.46	fl oz	Dairy	Nut & Soy Milk	http://goodeggs2.imgix.net/product_photos/vSgpH9J9SuMM2onytPZs_FK1A3440.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
501	Chai Spice Almond Milk	Our chai spice almond milk is lightly spiced, delicately sweet and naturally nutritious. It is 100% pure, raw, organic and abundant in almonds. Ideal for breakfast, as a post-workout drink, or a delicious and wholesome on-the-go beverage. Ingredients: organic almonds, organic medjool date, vanilla bean, organic cinnamon, organic cardamom, organic ginger, organic turmeric, purified water, pink himalayan salt	10.75	fl oz	4.99	0.46	fl oz	Dairy	Nut & Soy Milk	http://goodeggs1.imgix.net/product_photos/xpf0Bh1vSMCrunEAGh56_FK1A3432.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
502	Brown Butter Ice Cream	What's better than butter? Brown butter of course! Made by caramelizing the milk solids in butter, this nutty & delicious flavor is our preferred ice cream for affogatos and fall desserts. It's a seasonal offering, so get it while you can! Ingredients: butter, brown sugar, salt, ice cream base (cream, nonfat milk, sugar, egg yolk, buttermilk), apple cider vinegar.Contains: milk, eggs.	1	pint	9.99	0.62	oz	Dairy	Ice Cream	http://goodeggs1.imgix.net/product_photos/7NNXiCpTQQWAiKjlSnPE_20161103-HumphreySlocombe_BrownButter_MG_6090.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
503	Pumpkin Cheesecake & Graham Cracker Ice Cream	This is a seasonal favorite from Bi-Rite Creamery. Tangy, creamy pumpkin cheesecake ice cream is studded with delicious chunks of graham cracker for a scoop to fulfill your wildest holiday dreams. It won't be around for long, so grab a pint while you can!Ingredients: Cream*, Milk*, Sweet Buttermilk*, Egg Yolks*, Pumpkin*, Cream Cheese, Brown Sugar, Flour*, Graham Flour*, Butter, Honey, Kosher Salt, Vanilla*, Ginger*, Cardamom*, Cinnamon*, Baking Soda. *Organic Ingredient Contains: Milk, eggs, wheat.	1	pint	8.99	0.56	oz	Dairy	Ice Cream	http://goodeggs2.imgix.net/product_photos/9FgPYVV8Qh2enWeOlPG0_FK1A4872.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
504	Cookies and Cream Ice Cream	We make our Cookies and Cream with Newman O’s, hand chopped,  and mixed in to our ice cream. One of the most popular flavors we make for our younger guests.Cream*, Milk*, Sugar*, Eggs, Flour*, Palm Fruit Oil*, Rice Bran Oil, Cocoa, Chocolate*, Baking Soda, Soy Lecithin, Vanilla Extract, Salt (*= organic)Proudly made with Straus Family Creamery organic dairy located in Marshall, in West Marin, only 35 miles away.	1	pint	8.99	0.56	oz	Dairy	Ice Cream	http://goodeggs1.imgix.net/product_photos/j5uP1dFvQ8G5tpnTVuHL_c9z2zEjVVOEMDFu6HdxTc8W3qB9wdFxLxxk8Se4BrPE.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
505	Mint Chip Ice Cream	Our mint chip is made with Seely Farm’s mint oil from Oregon and TCHO chocolate chips we make ourselves to ensure they are thin and delicate.Cream*, Milk*, Egg Yolks*, Sugar*, TCHO Bittersweet Chocolate, Seely Farm’s Mint Oil*, Rice Bran Oil, Salt (*= organic)Proudly made with Straus Family Creamery organic dairy located in Marshall, in West Marin, only 35 miles away.	1	pint	8.99	0.56	oz	Dairy	Ice Cream	http://goodeggs1.imgix.net/product_photos/F0coyQZNQ8uvHx16xaBL_FK1A9240.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
506	Chocolate Chip & Tahitian Vanilla Ice Cream Sandwich	A brown sugar-y, chewy-but-soft chocolate chip cookie paired with Tahitian Vanilla Bean (made with the finest vanilla beans) to create the Mies Vanilla Rohe. Ingredients: pastry flour, pure chocolate chips, brown sugar, butter, whole eggs, natural vanilla, salt, baking soda, fruit juice, dextrin, milk, heavy cream, sugar, vanilla bean, salt, stabilizer. Contains dairy	5.8	oz	4.69	0.81	oz	Dairy	Ice Cream	http://goodeggs1.imgix.net/product_photos/cLkFwJcSmC6KXFT1JSyy_Good%20Eggs%20072314-050.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
507	Organic Dutch Chocolate Ice Cream	Lusciously rich, this organic ice cream is a chocolate lover’s delight. Dutch Cocoa is paired with only five simple, certified organic ingredients: Cream, milk, sugar, egg yolks and vanilla extract. No gums, fillers or artificial colorings get in the way of the rich, chocolate flavor. All Straus Family Creamery’s gourmet organic ice creams are Non-GMO Project Verified, certified kosher and gluten free.Ingredients: \n\n\n\n\n\n\n\n\n\n\n\n\n\n \n \n\n  Pasteurized Organic\n  Cream And Organic Nonfat Milk, Organic Cane Sugar, Organic Dutch Cocoa\n  (Processed With Alkali), Organic Egg Yolk, Organic Vanilla Extract.\n\n \n	1	pint	5.59	0.35	oz	Dairy	Ice Cream	http://goodeggs1.imgix.net/product_photos/29nSUPMERRa8YtwWuDrL_FK1A1714.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
508	Organic Mint Confetti Ice Cream	Mint chip enthusiasts rejoice! With flecks of the finest chocolate swirled throughout a smooth peppermint base, this is the most refined version we've ever tasted. Refreshing and indulgent!Ingredients: Organic Milk, Organic\n  Cream, Organic Evaporated Cane Juice, Organic Chocolate Chips (Organic Cane\n  Sugar, Organic Cocoa Paste, Organic Cocoa Butter, Non Gmo Soy Lecithin\n  (Emulsifier)), Organic Egg Yolks, Organic Nonfat Milk, Organic Vanilla\n  Extract, Organic Peppermint Extract, Organic Soybean Oil.	1	pint	4.99	0.31	oz	Dairy	Ice Cream	http://goodeggs2.imgix.net/product_photos/aESGq1ohTnadh41DygIO_FK1A0528.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
509	Snickerdoodle & Salted Caramel Ice Cream Sandwich	A perfect, soft cinnamon and sugar cookie paired with Maldon sea salt and caramel ice cream. Together they create the Caramia Lehrer.Ingredients: Unbleached all-purpose flour, cane sugar, butter, cinnamon, natural vanilla extract, baking soda, fruit juice, dextrin, milk, cream, Maldon sea salt, maltodextrin, skimmed milk powder, dextrose, guar gum, locust bean gum. Contains dairy	5.8	oz	4.69	0.81	oz	Dairy	Ice Cream	http://goodeggs1.imgix.net/product_photos/b1tl3tlyT2G4oW3brmgK_Good%20Eggs%20072314-063.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
510	Double Chocolate & Mint Chip Ice Cream Sandwich	A decadent, chewy brownie cookie paired with fresh mint-infused ice cream with semisweet chocolate chips and a hint of brown sugar. Together they create the Mintimalism sandwich. Ingredients: Pastry flour, pure chocolate chips, cocoa powder, brown sugar, butter, whole eggs, natural vanilla, salt, baking soda, water, fruit juice, dextrin, milk, heavy cream, mint leaves, dark brown sugar, stabilizer.Contains dairy	5.8	oz	4.69	0.81	oz	Dairy	Ice Cream	http://goodeggs1.imgix.net/product_photos/4g7CVwPRS2w7CNLFMnFg_Good%20Eggs%20072314-069.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
521	Blue Bottle Vietnamese Coffee Ice Cream	Traditional\nVietnamese Coffee with Chicory, Sweetened Condense Milk and Giant Steps blend\nBlue Bottle CoffeeIngredients: Milk, cream, sugar, coffee, salt, chicory. Contains dairy.	1	pint	9.99	0.62	oz	Dairy	Ice Cream	http://goodeggs2.imgix.net/product_photos/itohR4VVR94fLFruCbSg_20160617-HumphrySlocombe_BlueBottleVietnameseCoffee_MG_2935.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
511	Organic Bittersweet Chocolate Ice Cream	Bittersweet Chocolate is Three Twins' standard chocolate ice cream, but there's really nothing standard about it. An abundance of organic cocoa makes it darker than most chocolate ice creams, and it also adds an incredibly rich flavor and texture. The milk, cream, sugar and eggs that Three Twins uses to make their clean, simple base form a blank palette on which to build this enticing flavor. They then add more organic cocoa than is standard. And, the twist: At a point where others consider their chocolate ice cream finished, they add the same organic vanilla extract that helps make so many of their other flavors so darn good. In fact, they actually add as much vanilla to their Bittersweet Chocolate as they put in their Madagascar Vanilla. Ingredients: Organic Milk, Organic\n  Cream, Organic Fair Trade Certified Cane Sugar, Organic Fair Trade Certified\n  Cocoa Powder Processed With Alkali, Organic Egg Yolks, Organic Nonfat Milk,\n  Organic Fair Trade Certified Vanilla Extract.	1	quart	7.49	0.23	oz	Dairy	Ice Cream	http://goodeggs1.imgix.net/product_photos/2WaRow5QZWQzBVW1boD3_FK1A0476.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
512	Organic Bittersweet Chocolate Ice Cream	Bittersweet Chocolate is Three Twins' standard chocolate ice cream, but there's really nothing standard about it. An abundance of organic cocoa makes it darker than most chocolate ice creams, and it also adds an incredibly rich flavor and texture. The milk, cream, sugar and eggs that Three Twins uses to make their clean, simple base form a blank palette on which to build this enticing flavor. They then add more organic cocoa than is standard. And, the twist: At a point where others consider their chocolate ice cream finished, they add the same organic vanilla extract that helps make so many of their other flavors so darn good. In fact, they actually add as much vanilla to their Bittersweet Chocolate as they put in their Madagascar Vanilla. Ingredients: Organic Milk, Organic Cream, Organic Fair Trade Certified Cane Sugar, Organic Fair Trade Certified Cocoa Powder Processed With Alkali, Organic Egg Yolks, Organic Nonfat Milk, Organic Fair Trade Certified Vanilla Extract.	1	pint	4.99	0.31	oz	Dairy	Ice Cream	http://goodeggs2.imgix.net/product_photos/1esWkcxjQvi24IU3e5SO_FK1A2126.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
513	Malted Vanilla with Peanut Brittle	This flavor combines malted vanilla ice cream with house make peanut brittle (made with Virginia peanuts) and TCHO milk chocolate pieces. (This flavor is co-owner Anne Walker’s favorite).Cream*, Milk*, Sugar*, Egg Yolks*, Malt Powder*, Milk Chocolate*, Tapioca Syrup*, Peanuts, Vanilla Beans, Butter, Salt, Baking Soda  (*= organic)Proudly made with Straus Family Creamery organic dairy located in Marshall, in West Marin, only 35 miles away.	1	pint	8.99	0.56	oz	Dairy	Ice Cream	http://goodeggs1.imgix.net/product_photos/cYKxtaPSSrONXFoC25US_FK1A9349.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
514	Malted Milk Chocolate Ice Cream	Rich, Guittard Milk Chocolate ice cream with MaltIngredients: Cream, non-fat milk, sugar, bittersweet chocolate (chocolate liquor processed with alkali, sugar, cocoa butter, milk fat, soy lecithin, vanilla), milk chocolate (sugar, whole milk powder, cocoa butter, soy lecithin, vanilla), egg yolk, sweet cream buttermilk, wheat and malted barley extracts, dry whole milk, salt, sodium bicarbonate. Contains egg, dairy, soy, gluten.	1	pint	9.99	0.62	oz	Dairy	Ice Cream	http://goodeggs2.imgix.net/product_photos/XWCHYUBcTjC7oU7lYljz_20160617-HumphrySlocombe_MaltedMilkChoclate_MG_2959.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
515	Organic Vanilla Bean Ice Cream	Anything but Plain Jane, this staple flavor really showcases all the beautiful, fragrant nuance of truly world-class vanilla extract. The perfect companion for birthday cake and berry pie, this is also just perfect all on its own. Ingredients: \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n \n \n\n  Organic Milk, Organic\n  Cream, Organic Evaporated Cane Juice, Organic Egg Yolks, Organic Nonfat Milk,\n  Organic Vanilla Extract.	1	quart	7.49	0.23	oz	Dairy	Ice Cream	http://goodeggs1.imgix.net/product_photos/ffD2fFGsSmWBEvxrnQ3J_FK1A0470.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
516	Organic Vanilla Bean Ice Cream	Anything but Plain Jane, this staple flavor really showcases all the beautiful, fragrant nuance of truly world-class vanilla extract. The perfect companion for birthday cake and berry pie, this is also just perfect all on its own. Ingredients:  Organic Milk, Organic Cream, Organic Evaporated Cane Juice, Organic Egg Yolks, Organic Nonfat Milk, Organic Vanilla Extract.	1	pint	4.99	0.31	oz	Dairy	Ice Cream	http://goodeggs1.imgix.net/product_photos/jc2hBaBySaO4J68qd25r_FK1A2137.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
517	Organic Vanilla Bean Ice Cream	We brought this most traditional ice-cream flavor back to the basics and to perfection: The six certified organic ingredients of cream, milk, sugar, egg yolks, vanilla extract and flecks of real vanilla bean are carefully blended. It will remind you of freshly churned ice cream you'd make at home. All Straus Family Creamery’s gourmet organic ice creams are Non-GMO Project Verified, certified kosher and gluten free.Ingredients: Pasteurized Organic\n  Cream And Organic Nonfat Milk, Organic Cane Sugar, Organic Egg Yolk, Organic\n  Vanilla Extract, Organic Ground Vanilla Bean.	1	pint	5.59	0.35	oz	Dairy	Ice Cream	http://goodeggs1.imgix.net/product_photos/xdrBj9OYQAq1OAGnoswn_FK1A1773.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
518	Vanilla Ice Cream	We use two types of vanilla in our recipe, both from Madecasse, to create the most vanilla-intense flavor we could make.Cream*, Milk*, Egg Yolks*, Sugar*, Madecasse Vanilla Beans and Extract, Salt (*=organic)Proudly made with Straus Family Creamery organic dairy located in Marshall, in West Marin, only 35 miles away.	1	pint	8.99	0.56	oz	Dairy	Ice Cream	http://goodeggs2.imgix.net/product_photos/ZrxYQCcRSDSgmQOqI0NH_FK1A9436.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
519	Tahitian Vanilla Ice Cream	Vanilla ice cream with fresh hand-scraped Tahitian Vanilla BeansIngredients: Cream, non-fat milk, sugar, egg yolk, sweet cream buttermilk, wheat and malted barley extracts, dry whole milk, salt, vanilla, sodium bicarbonate, vanilla extract. Contains egg, dairy, gluten.	1	pint	9.99	0.62	oz	Dairy	Ice Cream	http://goodeggs1.imgix.net/product_photos/zShO37I0TeROq4P2AAtv_20160617-HumphrySlocombe_TahitianVanillaMG_2930.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
520	Organic Coffee Ice Cream	Just a hint of organic Dutch Cocoa is blended with organic, decaffeinated, ground coffee bean. The result is a lusciously, rich taste that comes from just cream, milk, sugar, egg yolks, and decaffeinated organic coffee beans. It’s a coffee lover's delight.All Straus Family Creamery’s gourmet organic ice creams are Non-GMO Project Verified, certified kosher and gluten free.Ingredients: Pasteurized Organic\n  Cream And Organic Nonfat Milk, Organic Sugar, Organic Egg Yolk, Organic\n  Decaffeinated Freeze Dried Coffee, Organic Dutch Cocoa (Processed With\n  Alkali), Organic Vanilla Extract.	1	pint	5.59	0.35	oz	Dairy	Ice Cream	http://goodeggs1.imgix.net/product_photos/IF6VEFFTpa3fpwTe0vSw_FK1A1516.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
522	Coffee Toffee Ice Cream	Starting with organic dairy from Straus Family Creamery in Marshall (West Marin), we then blend in locally roasted Ritual Roasters coffee for a charged base that pairs exceptionally with crunchy bits of house made almond toffee mixed throughout. Ingredients: Cream*, Milk*, Egg Yolks*, Sugar*, Ritual Roaster’s Coffee, Butter, Tapioca Syrup*, Almonds, Vanilla, Salt. Contains: Dairy, Tree Nuts (Almonds) *Organic Ingredients	1	pint	9.99	\N	\N	Dairy	Ice Cream	http://goodeggs1.imgix.net/product_photos/8a5lgMMPT92VAEZiuY1M_FK1A9227.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
523	Organic Lemon Cookie Ice Cream	An ice cream with a cult following! Three Twins combines their notoriously creamy lemon ice cream with chunks of vanilla sandwich cookies turning the classic cookies and cream combo on its head. Ingredients: Organic Milk, Organic\n  Cream, Organic Evaporated Cane Juice, Organic Sandwich Cookies (Organic Wheat\n  Flour, Organic Powdered Sugar With Organic Corn Starch, Organic High Oleic\n  Sunflower Oil, Organic Sugar, Organic Oat Flour, Organic Molasses, Baking\n  Soda, Sea Salt, Organic Vanilla Extract, Soy Lecithin, Natural Flavor),\n  Organic Egg Yolks, Organic Nonfat Milk, Organic Lemon Flavor.	1	pint	4.99	0.31	oz	Dairy	Ice Cream	http://goodeggs1.imgix.net/product_photos/XYLbqBENRPPmvkBT6uUL_FK1A0512.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
524	Organic Caramel Toffee Crunch Ice Cream	This newest organic ice-cream flavor combines sea-salt infused toffee and caramel to create a delicious mix of sweet and savory flavors. The caramel is made with Straus's own Organic Butter and Organic Cream. All Straus Family Creamery’s gourmet organic ice creams are Non-GMO Project Verified, certified kosher and gluten free.Ingredients: Pasteurized Organic Cream And Organic Nonfat Milk, Organic Cane Sugar, Organic Dark Brown Sugar, Organic Cream [Organic Cream], Organic Egg Yolks, Water, Sea Salt, Organic Soy Lecithin (Non-Gmo, Added As An Emulsifier).	1	pint	5.59	0.35	oz	Dairy	Ice Cream	http://goodeggs1.imgix.net/product_photos/BsSGQhBUQQmz3QDNvnuv_FK1A1825.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
525	Organic Raspberry Ice Cream	This flavor tastes like a bowl of raspberries and cream...which it is!  No gums, stabilizers or colorings disturb the fresh, tangy flavor of organic raspberries in this blend of all-organic ingredients.All Straus Family Creamery’s gourmet organic ice creams are Non-GMO Project Verified, certified kosher and gluten free.Ingredients: Pasteurized Organic\n  Cream And Organic Nonfat Milk, Organic Sugar, Organic Raspberry Puree,\n  Organic Egg Yolk, Organic Vanilla Extract.	1	pint	5.59	0.35	oz	Dairy	Ice Cream	http://goodeggs2.imgix.net/product_photos/Y4hNuDJtTSevRwhdvj9O_FK1A1637.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
526	Honey Lavender Ice Cream	Made with local honey from Sonoma and organic dried lavender for a classic Provencal combination.Cream*, Milk*, Egg Yolks*, Sugar*, Local Honey, Lavender*, Salt   (*= organic)Proudly made with Straus Family Creamery organic dairy located in Marshall, in West Marin, only 35 miles away.	1	pint	8.99	0.56	oz	Dairy	Ice Cream	http://goodeggs2.imgix.net/product_photos/5RMGEoYSEesvsRT0jv31_FK1A9323.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
527	Crème Fraîche Ice Cream	Humphry Slocombe uses local crème fraîche from Cowgirl Creamery in this brand-new, limited edition flavor. Its sweet tang is just what your pie is calling out for: fantastic with fall fruit galettes, tarts, or frankly just by the spoonful. It's only here in November, so snag a pint (or three) while you can!Ingredients: crème fraîche, sour cream, tapioca syrup, sugar, salt, buttermilk, vanilla extract. Contains: milk, eggs.	1	pint	9.99	0.62	oz	Dairy	Ice Cream	http://goodeggs2.imgix.net/product_photos/rlisGANQ2LaPvewXEEfw_20161103-HumphreySlocombe_CremeFraiche_MG_6114.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
528	Maple Walnut Ice Cream	Intensely maple-y ice cream folded with toasted walnuts combines autumnal sweetness and toasty crunch. Try it with Humphry Slocombe's Bourbon Caramel sauce. We promise you won't regret it!Ingredients: maple syrup, brown sugar, milk, salt, ice cream base (cream, nonfat milk, sugar, egg yolk, buttermilk), maple extract, vanilla extract, walnuts.Contains: milk, eggs, tree nuts.	1	pint	9.99	0.62	oz	Dairy	Ice Cream	http://goodeggs1.imgix.net/product_photos/GS6aAlrJQdqsG7EkfcXt_20161103-HumphreySlocombe_MapleWalnut_MG_6097.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
529	Dark Chocolate Smoked Sea Salt Ice Cream	Dark Guittard chocolate is paired with a touch of smoked sea salt for the the perfect balance of savory and (not too) sweet that is sure to please even the most particular chocolate lovers. Since 2008 Humphry Slocombe has been handcrafting small batch ice cream with the best stuff available so everything tastes like it’s supposed to, but better—grab a spoon, this pint is calling!\nIngredients: Ice Cream Base (Cream, Nonfat Milk, Sugar, Egg Yolk, Buttermilk), Dark Chocolate (Cacao Beans, Pure Cane Sugar, Cocoa Butter, Sunflower Lecithin, Vanilla Beans), Tapioca Syrip, Sugar, Water, Cocoa Powder, Smoked Sea Salt. Contains: Milk, and Egg. Manufactured on equipment that also processes peanuts and tree nuts. Keep Fozen	1	pint	9.99	0.62	oz	Dairy	Ice Cream	http://goodeggs1.imgix.net/product_photos/g8psgbxS0GHLx9LY9h2A_20160617-HumphrySlocombe_DarkChocolateSeaSalt_MG_2967.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
530	Secret Breakfast Ice Cream	Bourbon ice cream with Cornflakes CookiesIngredients: Milk, cream, sugar, sweetened condensed milk (milk, sugar), bourbon alcohol, bleached enriched flour (bleached wheat flour, malted barley flour, niacin, iron, thiamin mononitrate, riboflavin, folic acid), butter (pasteurized cream, natural flavors), brown sugar, salt, corn flakes (milled corn, sugar, malt flavor, 2% or less salt, BHT added for freshness), eggs, baking soda, vanilla bean. Contains alcohol, dairy, gluten.	1	pint	9.99	0.62	oz	Dairy	Ice Cream	http://goodeggs2.imgix.net/product_photos/UEsGel8cRmCaYri8u9I6_20160617-HumphrySlocombe_SecretBreakfast_MG_2941.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
531	Matchadoodle Ice Cream	Generous chunks of cinnamon-y house-made snickerdoodle cookies are mixed throughout creamy matcha green tea ice cream. Don’t take our word for it, this one-of-a-kind pairing is one take on tea time you don’t want to pass up. Since 2008 Humphry Slocombe has been handcrafting small batch ice cream with the best stuff available so everything tastes like it’s supposed to, but better—grab a spoon, this pint is calling!\nIngredients: Ice Cream Base (Cream, Nonfat Milk, Sugar, Egg Yolk, Buttermilk), Snickerdoodle [All Purpose Flour (Bleached Wheat Flour, Malted Barley Flour), Unsalted Butter, Sugar, Brown Sugar, Eggs, Salt, Vanilla Extract (Water, Alcohol, Sugar, Vanilla Bean Extractives), Ground Cinnamon, Baking Soda, Cream of Tartar, Matcha Powder, Salt. Contains: Milk, Egg, and Wheat. Manufactured on equipment that also processes peanuts and tree nuts. 	1	pint	9.99	0.62	oz	Dairy	Ice Cream	http://goodeggs2.imgix.net/product_photos/XleadbHTmSR7SEMwN1AW_20160617-HumphrySlocombe_MatchaDoodle_MG_2974.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
533	Harvey Milk and Honey Graham Ice Cream	Milk\nand Raw Blackberry Honey ice cream with Housemade Graham CrackersIngredients: Cream, non-fat milk, cane sugar, honey, egg yolk, sweet cream buttermilk, bleached enriched flour (wheat flour, malted barley flour, niacin, iron, thiamin mononitrate, riboflavin, folic acid), whole wheat flour, salt, graham flour, baking soda, cinnamon. Contains egg, dairy, gluten.	1	pint	9.99	0.62	oz	Dairy	Ice Cream	http://goodeggs2.imgix.net/product_photos/H8dfRwalTqGdRgNGltrM_20160617-HumphrySlocombe_HoneyGraham_MG_2920.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
534	Organic Coconut Ice Cream	We call this pillows of heaven. This coconut ice cream is loaded with coconut flakes and full flavor. A classic staff favorite for sure! Not too sweet and so much coconut flavor and texture. Ingredients: Organic Milk, Organic Cream, Organic Light Coconut Milk, Organic Coconut Flakes, Organic Egg Yolks, Organic Sugar	12	oz	9.29	0.77	oz	Dairy	Ice Cream	http://goodeggs1.imgix.net/product_photos/xP4RK85XT9WXYe4UvKyb_FK1A7977.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
535	Organic Jasmine Green Tea Ice Cream	This delectable Organic Tea is made from freshly picked green tea leaves semi-fermented within fresh Jasmine flowers to impart a distinct floral aroma and flavor. A fragrant and delightful, creamy ice cream. It's like putting milk in your aromatic tea. So soothing and divine. Ingredients: Organic Milk, Organic Cream, Organic Egg Yolks, Organic Sugar, Organic Jasmine Green Tea	12	oz	9.29	0.77	oz	Dairy	Ice Cream	http://goodeggs1.imgix.net/product_photos/s8kONWCGRC2RQ2kjtCyJ_FK1A7922.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
536	Organic Black Sesame Ice Cream	We lightly toast the Sesame Seeds and grind them for each batch. This ice cream is packed with antioxidants. The flavor is of light, toasty aroma, with a hearty, warming essence. We love this flavor especially in cold weather. It also makes a great combo with Coconut. Curl up with a container and enjoy.Ingredients: Organic Milk, Organic Cream, Organic Egg Yolks, Organic Sugar, Organic Black Sesame Seeds	12	oz	9.29	0.77	oz	Dairy	Ice Cream	http://goodeggs1.imgix.net/product_photos/xRie9g8jTdyZmIcWC6C0_FK1A7946.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
537	Organic Lavender Ice Cream	Organic Lavender lends a floral and slightly sweet flavor. This ice cream is made from dried Organic Provence ~ French Lavender Flowers. It is so soothing, relaxing, delicate, and divine. Also it is often used as aromatherapy for relaxation. Close your eyes, put your feet up and pretend your at the ice cream spa. Or try it on grilled stone-fruit. Peaches, plums, or nectarine! Either way it's delicious. Ingredients: Organic Milk, Organic Cream, Organic Egg Yolks, Organic Sugar, Organic Dried Lavender Flowers	12	oz	9.29	0.77	oz	Dairy	Ice Cream	http://goodeggs1.imgix.net/product_photos/0l5k9zuRmOriXSrNBx59_vEi0-oypiMlziBi7se4K9KDgvlY0bBV5pLkeWMVfMdk.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
538	Organic White Pepper Chocolate Chip Ice Cream	This was one of Tara’s first flavors. Inspired by Asian cooking with White Pepper and the love of dark chocolate.  This ice cream has many layers to the flavor. It starts with sweet cream, then turns into the pepper spice, & it is rounded out with the dark chocolate bits.Be sure to try this one! It's a party in your mouth. Ingredients: Organic Milk, Organic Cream, Organic Egg Yolk, Organic Sugar, Organic White Pepper, Organic Dark Chocolate Chip	12	oz	9.29	0.77	oz	Dairy	Ice Cream	http://goodeggs2.imgix.net/product_photos/e5fUuWgSqGuJof2MfI7P_FK1A7971.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
539	Organic Basil Ice Cream	Made from fresh local Organic Basil this flavor is refreshing, savory, and bright. It makes a great a la mode on chocolate anything, fruit pie, crisp, or cobbler. Think of it as the new mint. Ingredients: Organic Milk, Organic Cream, Organic Egg Yolks, Organic Sugar, Organic Basil	12	oz	9.29	0.77	oz	Dairy	Ice Cream	http://goodeggs1.imgix.net/product_photos/xTT2kypKSFisMOQkXLmD_FK1A7832.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
540	Organic Orange Cashew Ice Cream	This ice cream is like a creamsicle with salty cashew bits. It is Organic Orange ice cream with roasted salted cashew. It’s crunchy, exciting, and refreshing all in one.Ingredients: Organic Milk, Organic Cream, Organic Egg Yolks, Organic Sugar, Organic Roasted Salted Cashew, Organic Orange Flavor	12	oz	9.29	0.77	oz	Dairy	Ice Cream	http://goodeggs1.imgix.net/product_photos/UEJugScvTV6Eoq17uMrJ_FK1A7780.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
541	Boozy Sauce Duo	Fernet Fudge and Bourbon Caramel are even better together. Break these out at dessert and you'll be the star of your Thanksgiving dinner!Ingredients: Bourbon caramel: sugar, water, bourbon, tapioca syrup, salt. Fernet chocolate sauce: water, sugar, tapioca syrup, cocoa powder, salt, 72% chocolate, Fernet.	2	count	19.99	1.11	oz	Dairy	Ice Cream	http://goodeggs1.imgix.net/product_photos/pfjyhRocRm6Sibn7STkE_20161103-HumphreySlocombe_SauceDuo_MG_6159.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
542	Bourbon Caramel Sauce	A Humphry Slocombe classic: Bourbon Caramel. What more could you want? (Go ahead, put some in your coffee. We won't tell.)Ingredients: sugar, water, bourbon, tapioca syrup, salt.	9	oz	10.99	1.22	oz	Dairy	Ice Cream	http://goodeggs2.imgix.net/product_photos/hEap1ZjQZsiGTXaX0fPg_20161103-HumphreySlocombe_BourbonCarmel_MG_6148.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
543	Extra-Bitter Chocolate Sauce	Our Extra-Bitter Chocolate Sauce is made with Michael's smoky custom \nblend of 64% dark chocolate, creating an extra thick consistency, and is\n finished with vanilla to enhance the roasted cacao profile of this \nchocolaty sauce! Warm to serve.INGREDIENTS: Dark chocolate ( cocoa beans, sugar, cocoa butter, soya lecithin\n(emulsifier), natural vanilla extract),\nsugar, cream, natural vanilla extract, cocoa\npowder. Contains\nMilk. Made in a facility that processes peanuts and tree nuts.	9	oz	10.99	1.22	oz	Dairy	Ice Cream	http://goodeggs2.imgix.net/product_photos/Aq7ZMbyMTMyoRb5XdNdd_FK1A8372.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
544	Burnt Caramel Sauce	Our signature Burnt Caramel Sauce has an intense, smoky flavor with a \nlingering, buttery finish. Serve over fresh fruit, poached fruit or pie \nand ice cream.INGREDIENTS: Sugar, cream, butter. Contains Milk. Made in a facility that processes peanuts and tree nuts.	9	oz	10.99	1.22	oz	Dairy	Ice Cream	http://goodeggs1.imgix.net/product_photos/yOyWOtMSzySkVrxAvotZ_FK1A8368.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
545	Fernet Fudge Sauce	Dark chocolate is even better when paired with SF's favorite Fernet. The result: minty, herbal, indulgent deliciousness. This intensely chocolatey sauce is thick at room temperature, so we recommend warming it gently in a small saucepan or in a bowl in the microwave.Ingredients: water, sugar, tapioca syrup, cocoa powder, salt, 72% chocolate, Fernet.	9	oz	10.99	1.22	oz	Dairy	Ice Cream	http://goodeggs1.imgix.net/product_photos/ar9gcghNS1uSKYNtQXvU_20161103-HumphreySlocombe_FernetFudge_MG_6150.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
546	Sauce Duo	Turn plain old ice cream into heaven on a spoon. Mix and match with \nBurnt Caramel Sauce and Extra-Bitter Chocolate Sauce from our gourmet \ndessert Sauce Duo. (Two 9 oz jars).	2	count	21.99	1.22	oz	Dairy	Ice Cream	http://goodeggs1.imgix.net/product_photos/Z4Q6BlmtSpy9RhEeE4bb_FK1A8973.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
547	Organic Sea Salted Caramel Ice Cream	Salted caramel is the new neutral and for good reason. Sweet and salty, it lends even more richness to this already creamy blend of milk, sugar, and eggs. Three Twin's signature heavy does of Madagascar vanilla really takes this one over the top!Ingredients: Organic Milk, Organic\n  Cream, Organic Evaporated Cane Juice, Caramel (Organic Sugar, Organic Cream,\n  Organic Non Fat Milk, Organic Tapioca Syrup, Organic Caramelized Sugar, Sea\n  Salt), Organic Egg Yolks, Organic Non Fat Milk, Organic Vanilla Extract.	1	quart	7.49	0.23	oz	Dairy	Ice Cream	http://goodeggs1.imgix.net/product_photos/W94ih7jRxuuQcPPb9lCm_FK1A0473.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
548	Organic Sea Salted Caramel Ice Cream	Salted caramel is the new neutral and for good reason. Sweet and salty, it lends even more richness to this already creamy blend of milk, sugar, and eggs. Three Twin's signature heavy does of Madagascar vanilla really takes this one over the top!Ingredients: Organic Milk, Organic Cream, Organic Evaporated Cane Juice, Caramel (Organic Sugar, Organic Cream, Organic Non Fat Milk, Organic Tapioca Syrup, Organic Caramelized Sugar, Sea Salt), Organic Egg Yolks, Organic Non Fat Milk, Organic Vanilla Extract.	1	pint	4.99	0.31	oz	Dairy	Ice Cream	http://goodeggs1.imgix.net/product_photos/W94ih7jRxuuQcPPb9lCm_FK1A0473.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
549	Salted Caramel Ice Cream	Our number one seller, famous for the deep rich flavor of sweet caramel balanced with just the right amount of salt.Cream*, Sugar*, Milk*, Egg Yolks*, Salt  (*= organic)Proudly made with Straus Family Creamery organic dairy located in Marshall, in West Marin, only 35 miles away.	1	pint	8.99	0.56	oz	Dairy	Ice Cream	http://goodeggs1.imgix.net/product_photos/ZnSlBR1rT4OQIXMnL6GM_FK1A6809.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
550	Vanilla Bean Paleo Gelato	Organic Bourbon vanilla beans have been cold extracted to capture their delicate intensity providing this non-dairy frozen dessert with a beautiful vanilla flavor throughout. Hand-packed and made in a dedicated Gluten and Nut-Free facility in the Dogpatch, San Francisco, all of Jöne’s Gelato delicious flavors are paleo, vegan, diabetic friendly, and free of the top 8 allergens.\nIngredients: Organic Coconut Milk (Organic Coconut, Water), Birch Tree Xylitol, Organic Vanilla Extract, Organic Vanilla Bean, Sea Salt, Agar Agar	12	oz	9.29	0.77	oz	Dairy	Ice Cream	http://goodeggs1.imgix.net/product_photos/z7xATYjnT2Qrbievq2C6_20160421-JonesGelato_VanillaBean_MG_7777.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
551	POG Tropical Fruit Sorbet	A true tropical vacation in a scoop, enjoy layers of flavor from passion fruit, orange and guava in this non-dairy dessert. Where the guava lends a pear-like mouth feel, it's the passionfruit that really stands out contributing a caramel complexity that helps cut back against the sweetness. Inspired by the seasons and their imaginations, Humphry Slocombe has been crafting inventive flavors with only the best ingredients since 2008—grab a spoon, this pint is calling!\nIngredients: Water, Sugar, Guava Paste (Guava Pulp, Sugar, Citric Acid, Pectin), Passionfruit Puree, Orange Juice, Tapioca Syrup, Lime Juice, Apple Cider Vinegar, Salt, Guar Gum. Manufactured on equipment that also processes peanuts and tree nuts.	1	pint	9.99	0.62	oz	Dairy	Ice Cream	http://goodeggs1.imgix.net/product_photos/Uek40FpTQKREZraO6zdo_20160617-HumphrySlocombe_PogSorbet_MG_2952.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
552	Strawberry Paleo Gelato	Summer has arrived! Enjoy the bright and luscious flavor of peak-season local organic strawberries in Jöne's latest non-dairy frozen dessert offering. No added colors—just real strawberry goodness with a touch of vanilla to balance it all out. Hand-packed and made in a dedicated Gluten and Nut-Free facility in the Dogpatch district of San Francisco, all of Jöne’s Gelato delicious flavors are paleo, vegan, diabetic friendly, and free of the top 8 allergens.\nIngredients: Coconut Milk* (Coconut*, Water), Strawberries*, Birch Tree Xylitol, Vanilla Extract*, Sea Salt, Agar Agar. Contains: Coconut 	12	oz	9.29	0.77	oz	Dairy	Ice Cream	http://goodeggs1.imgix.net/product_photos/2tNApaOS86SBzyq7LnJw_20160617-JonesGelato_Strawberry_MG_2990.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
553	Chocolate Peanut Butter Non-Dairy Gelato	We blend our organic cashew base with organic cacao powder and organic creamy peanut butter for a nutty and decadent treat!No air is introduced during our production process, so that our 12 oz container often weighs more than a pint of traditional ice cream.Ingredients:  Water, Organic Cashews, Organic Cane Sugar, Organic Peanut Butter, Organic Cacao Powder, Organic Guar Gum, Organic Gum Acacia.Contain: Peanuts and Tree Nuts (Cashews)	12	oz	9.99	0.83	oz	Dairy	Ice Cream	http://goodeggs1.imgix.net/product_photos/hbmwCHxqQYihbFSZHLMV_chocolatepeanutbuttah.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
554	Organic Mango Agave Sorbet	Mangos are cultivated all over the world.  In tropical and subtropical climates. India is where it originated and it is considered sacred. There are so many varieties of mango trees and cuisines that utilize this delectable fruit. The creamy, pulpy, meat of the mango makes a rich and smooth sorbet. Sometimes the fruit is more tart and sometimes sweet, but always delicious and full flavor.Ingredients: Organic Mango, Organic Light Agave, Organic Lemon Juice, Water	12	oz	9.29	0.77	oz	Dairy	Ice Cream	http://goodeggs1.imgix.net/product_photos/saJvTmiQY6ajpj5dT5q3_FK1A7849.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
555	Dark Chocolate Paleo Gelato	Made with PASCHA’s 100% Cacao Chocolate Chips (certified vegan) this non-dairy frozen dessert has a rich and full-bodied flavor with a smooth mouth feel. Hand-packed and made in a dedicated Gluten and Nut-Free facility in the Dogpatch, San Francisco, all of Jöne’s Gelato delicious flavors are paleo, vegan, diabetic friendly, and free of the top 8 allergens. Ingredients: Organic Coconut Milk (Organic Coconut, Water), Organic Cacao Mass, Birch Tree Xylitol, Organic Raw Cacao, Sea Salt, Agar Agar	12	oz	9.29	0.77	oz	Dairy	Ice Cream	http://goodeggs2.imgix.net/product_photos/tf7T6jBETOq0PMTXYm8D_20160421-JonesGelato_DarkChocolate_MG_7716.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
556	Masala Chai Paleo Gelato	Steeped with Samovar’s organic masala chai, this non-dairy frozen dessert has the deep spice and subtle sweetness of chai with a smooth and creamy mouth feel. Hand-packed and made in a dedicated Gluten and Nut-Free facility in the Dogpatch, San Francisco, all of Jöne’s Gelato delicious flavors are vegan, diabetic friendly, and free of the top 8 allergens. Ingredients: Organic Coconut Milk (Organic Coconut, Water), Birch Tree Xylitol, Organic Masala Chai (Organic black tea, organic cinnamon, organic cardamom, organic ginger, organic black pepper, organic clove), Sea Salt, Agar Agar. Contains: Coconut	12	oz	9.29	0.77	oz	Dairy	Ice Cream	http://goodeggs1.imgix.net/product_photos/UsuZwgvuTUCxtfDrCYzQ_20160421-JonesGelato_MasalaChai_MG_7748.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
557	Roasted Banana Paleo Gelato	Crafted with roasted organic bananas at their ripest, this non-dairy frozen dessert has a satisfying sweetness with notes of caramel and a smooth mouth feel. Hand-packed and made in a dedicated Gluten and Nut-Free facility in the Dogpatch, San Francisco, all of Jöne’s Gelato delicious flavors are vegan, diabetic friendly, and free of the top 8 allergens. \nIngredients: Organic Coconut Milk (Organic Coconut, Water), Organic Bananas, Birch Tree Xylitol, Organic Vanilla Extract, Sea Salt, Agar Agar	12	oz	9.29	0.77	oz	Dairy	Ice Cream	http://goodeggs2.imgix.net/product_photos/miNClqIRQLOunHFsGAJT_20160421-JonesGelato_RoastedBanana_MG_7788.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
558	Simply Pistachio Dairy-Free Gelato	You haven't had pistachio gelato until you've tried this one. Our best seller from the start!  As the name states, it is simply a blend of our creamy pistachio base with just a touch of sea salt.  Absolutely the best!!No air is introduced during our production process, so that our 12 oz container often weighs more than a pint of traditional ice cream.Ingredients: Water, Pistachios, Organic Cane Sugar, Organic Cashews, Roasted Pistachio Oil, Sea Salt, Organic Guar Gum, Organic Gum AcaciaContain: Tree Nuts (Pistachios and Cashews)	12	oz	9.99	0.83	oz	Dairy	Ice Cream	http://goodeggs2.imgix.net/product_photos/lYKfyAILR82Y6x8QQhUJ_pistachio.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
559	Strawberry Rose Water Dairy-Free Gelato	Starting with our organic cashew base, we add strawberries and a dash of Bulgarian rose water.  The resulting rich creamy gelato is bursting with strawberry flavor with a hint of rose water.  Our newest flavor, it has quickly become one of our best sellers.No air is introduced during our production process, so that our 12 oz container often weighs more than a traditional pint of ice cream.Ingredients:  Water, Organic Cashews, Organic Cane Sugar, Strawberry Puree, Bulgarian Rose Water, Organic Guar Gum, Organic Gum AcaciaContains: Tree Nuts (Cashews)	12	oz	9.99	0.83	oz	Dairy	Ice Cream	http://goodeggs1.imgix.net/product_photos/cZYzONf9SrOaCysiZRxM_strawberryrose.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
560	Chocolate Hazelnut Dairy-Free Gelato	A luscious rich blend of hazelnuts and organic Peruvian chocolate.   Chocolate Hazelnut is one of the most popular gelato flavors in Italy.  And the Italians really know their gelato!!No air is introduced during our production process, so that our 12 oz container often weighs more than a pint of traditional ice cream.Ingredients:  Water, Roasted Hazelnuts, Organic Cane Sugar, Organic Cashews, Organic Cacao Powder, Organic Guar Gum, Organic Gum AcaciaContain: Tree Nuts (Cashews and Hazelnuts)	12	oz	9.99	0.83	oz	Dairy	Ice Cream	http://goodeggs2.imgix.net/product_photos/S50odoFwTT6JNWVaEQkN_chocolatehazelnut.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
561	Salted Date Caramel Non-Dairy Gelato	A creamy blend of our date caramel nut emulsion with organic roasted cacao nibs. A rich and creamy treat with a distinctive crunch!No air is introduced during our production process, so that our 12 oz container often weighs more than a pint of traditional ice cream.Ingredients:  Water, Organic Cashews, Organic Cane Sugar, Organic Dates, Organic Cacao Nibs, Natural Flavors, Organic Guar Gum, Organic Gum Acacia. Contains: Tree Nuts (Cashews)	12	oz	9.99	0.83	oz	Dairy	Ice Cream	http://goodeggs2.imgix.net/product_photos/CHLc9CwYQfqHc5CZs1tq_salteddate.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
562	Madagascar Vanilla Dairy-Free Gelato	Not your Mother's vanilla!!  We blend our organic cashew base with organic Madagascar vanilla to produce the liveliest flavor ever.No air is introduced during our production process, so that our 12 oz container often weighs more than a pint of traditional ice cream.Ingredients:  Water, Organic Cashews, Organic Cane Sugar, Organic Madagascar Vanilla Extract, Organic Guar Gum, Organic Gum AcaciaContains: Tree Nuts (Cashews)	12	oz	9.99	0.83	oz	Dairy	Ice Cream	http://goodeggs2.imgix.net/product_photos/Iu6G2IqbRbSx6ZQ7mSyE_vanilla.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
563	Simply Dark Chocolate Dairy-Free Gelato	A dark chocolate lover's delight!  We blend our creamy organic cashew base with organic Peruvian cacao for a flavor sure to satisfy your chocolate cravings.No air is introduced during our production process, so that our 12 oz container often weighs more than a pint of traditional ice cream.Ingredients:  Water, Organic Cashews, Organic Cane Sugar, Organic Cacao Powder, Organic Vanilla Extract, Organic Guar Gum, Organic Gum AcaciaContains: Tree Nuts (Cashews)	12	oz	9.99	0.83	oz	Dairy	Ice Cream	http://goodeggs2.imgix.net/product_photos/zoeJkhguTaYnAWlSI43o_simplydark.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
564	Chocolate Raspberry Dairy-Free Gelato	We blend our organic cashew base with organic cacao powder and organic raspberry for a rich and bright treat!No air is introduced during our production process, so that our 12 oz container often weighs more than a pint of traditional ice cream.Ingredients:  Water, Organic Cashews, Organic Cane Sugar, Organic Cacao Powder, Organic Raspberry Extract, Organic Guar Gum, Organic Gum Acacia. Contains: Tree Nuts (Cashews)	12	oz	9.99	0.83	oz	Dairy	Ice Cream	http://goodeggs1.imgix.net/product_photos/uKRvnq17TcmzKH28SxrP_chocraspberry.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
565	Organic Farmhouse Cream Cheese	Made with only milk & cream and sea salt (no gums or fillers), this Best of Show award-winning cheese is vat-cultured, drained in muslin bags, and hand-rotated to produce a unique flavor & texture that you’ll find delightfully addictive!Sierra Nevada Cheese Company strives to bring you the best products free from artificial ingredients or hormones. Our organic dairy partners achieve American Humane Association animal welfare standards.Ingredients: Organic Pasteurized Cultured Milk and Cream, Sea Salt	7	oz	4.29	9.81	lb	Dairy	Cheese	http://goodeggs1.imgix.net/product_photos/gC7IHWHuSQO7IBkMTBpz_FK1A8543.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
566	Organic Jersey Cow's Milk Cream Cheese	"Tomales Farmstead now has Organic Jersey cow's milk cream cheese that is decadent and delicious. I suggest making a spinach and artichoke dip with it or just spread it on a bagel. Either way it's the perfect cream cheese" - Erin, Grocery BuyerThe first and only Bay Area organic, cream cheese. The jersey milk comes from a farmer friend in the town of Tomales. No added gums or fillers. Several of us were sitting around kevetching about the lack of a great local cream cheese and our love for our Sunday lox and bagels so we decided to just make it happen.Luscious and velvety with the sweetness of Jersey milk from the gorgeous pastures of West Marin to your bagel! Enjoy!Ingredients: Organic pasteurized jersey cow's milk, cream cheese cultures, rennet, salt. Contains dairy	8	oz	7.99	15.98	lb	Dairy	Cheese	http://goodeggs1.imgix.net/product_photos/AurSigbSUCFsIRQmCinr_20160429-TomalesFarmstead_CreamCheese_MG_8494.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
567	Vegetable Cream Cheese	House-made cream cheese together with local farm fresh vegetables. Ingredients: Green, Red bell peppers, Carrot, Cucumber, Red onion, and cream cheese.	8	oz	6.99	13.98	lb	Dairy	Cheese	http://goodeggs2.imgix.net/product_photos/R9lLe8MrTRSUvIzwwPdS_FK1A4593.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
569	Organic Lactose Free Cream Cheese	Green Valley Organics® lactose-free cream cheese has a superb cheesy flavor, is lower in salt, and has a thick, creamy texture. Enjoy this minimally-processed, real dairy cream cheese on a bagel, in baking, as a spread, in dips, and in creamy sauces and soups.Green Valley Organics' lactose-free dairy is made by Redwood Hill Farm & Creamery in Sebastopol CA. Ingredients: organic cream, sea salt, lactase enzyme and live, active cultures	8	oz	3.39	6.78	lb	Dairy	Cheese	http://goodeggs1.imgix.net/product_photos/1sq8vPbBSiOiU8TaKUrY_greenvalley_creamcheese.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
570	Plain Cream Cheese	House-made cream cheese. Ingredients: cream, milk.	8	oz	5.99	11.98	lb	Dairy	Cheese	http://goodeggs1.imgix.net/product_photos/9VQYbSAuRieFIE2z8CHy_FK1A4607.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
571	Scallion Cream Cheese	Sliced chives mixed with cream cheese.Ingredients: Chives, Cream, Milk.	8	oz	6.99	13.98	lb	Dairy	Cheese	http://goodeggs2.imgix.net/product_photos/hn1OTeDvTlaxOaONqQlD_vmri3CGjcxmXqO8FyN8melFetvugRaIM24A32LwGUdU.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
572	Lox Cream Cheese	House-made cream cheese blended together with house-cured salmon. Ingredients: cream cheese, lox. Lox ingredients:  Fresh salmon, kosher salt, brown and white sugar, pint peppercorn, lemon and fresh herbs.	8	oz	7.99	15.98	lb	Dairy	Cheese	http://goodeggs2.imgix.net/product_photos/qPGk0BZMRA26wNE9QS2c_FK1A4616.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
573	Ciliegine Mozzarella	Excellent for quick appetizers and salads with cherry size tomatoes. Fun for kids!	8	oz	4.99	9.98	lb	Dairy	Cheese	http://goodeggs2.imgix.net/product_photos/nGN5SJASRKaJkc7puJKJ_FK1A1803.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
574	Fior di Latte Fresh Mozzarella	Belfiore Cheese Company is one of the few remaining small, family-owned cheese making operations in the Bay Area. All Belfiore products are made 100% naturally without any additives or preservatives. The operation was established in 1987 as one of first pioneers producing hand crafted Italian-style Mozzarella, Fior di Latte (or Fresh Mozzarella in water) here inAmericaIn 1989, new owners, pursuing the same dreams of perfection in cheese making, took over the small operation and continued the same traditional cheese making techniques with a passion to preserve the genuine quality and homemade style that has become the signature of the Belfiore Cheese brand.Ingredients: Pasteurized cow's milk , vinegar, sea salt, cultures, vegetarian rennet.Contains dairy	8	oz	5.99	11.98	lb	Dairy	Cheese	http://goodeggs2.imgix.net/product_photos/2xq0yI5PQs2PQ8UxoubF_FK1A1757.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
575	Burrata	Burrata is a small bag of mozzarella, filled with cream and more mozzarella. Belfiore's flavor is milky-creamy-gooey goodness, much like the flavor of fresh milk. Adding olive oil and a pinch of salt is a straight trip to an Italian trattoria.Ingredients: Pasturized cow's milk, cream, vinegar, sea salt, cultures, vegetarian rennet. 	8	oz	5.99	11.98	lb	Dairy	Cheese	http://goodeggs1.imgix.net/product_photos/bqrFSvAOQdazhLvnGuUD_FK1A7351.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
576	Pt. Reyes Farmstead Fresh Mozzarella	Fresh Mozzarella Cheese - Pt Reyes Farmstead Cheese CompanyThe best fresh mozzarella we've tried, ready to be melted on a pizza or sliced for a caprese salad.  Light & pillowy soft, the ball comes packed with water in a recyclable plastic container.Pasteurized Cow's MilkVegetarian RennetCertified Kosher & Gluten Free	8	oz	7.99	15.98	lb	Dairy	Cheese	http://goodeggs2.imgix.net/product_photos/zQL12PA8QEeZPiT1n5U8_FK1A1935.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
577	Ricotta Salata	"I always keep this in my fridge. Perfect for crumbling on any dish. Cheese kitchen staple for sure!" Erin, Good Eggs BuyerRicotta Salata is an Italian cheese made from the whey part of sheep milk, which is pressed, salted and aged for at least 90 days. It is milky white in colour with firm texture and salty taste. The cheese is often used in salads and ideal for slicing, crumbling and grating.	5.34	oz	4.99	14.95	lb	Dairy	Cheese	http://goodeggs1.imgix.net/product_photos/f4FafCmhTba0CpVtKzzU_FK1A0105.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
578	Ricotta	Made with fresh whole cow's milk. Creamy and delicious, perfect for lasagna and other pasta dishes.Belfiore Cheese Company is one of the few remaining small, family-owned cheese making operations in the Bay Area. All Belfiore products are made 100% naturally without any additives or preservatives. The operation was established in 1987 as one of first pioneers producing hand crafted Italian-style Mozzarella, Fior di Latte (or Fresh Mozzarella in water) here inAmericaIn 1989, new owners, pursuing the same dreams of perfection in cheese making, took over the small operation and continued the same traditional cheese making techniques with a passion to preserve the genuine quality and homemade style that has become the signature of the Belfiore Cheese brand.Ingredients: Whole milk and wheyContains Dairy	16	oz	4.99	4.99	lb	Dairy	Cheese	http://goodeggs1.imgix.net/product_photos/GdrNlD1hSDufzeOv2nZx_FK1A1839.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
579	Organic Mozzarella	The classic Italian mozzarella is made fresh with our best organic ingredients. Resembling Monterey Jack in color and texture, this stirred curd organic Mozzarella is available in a whole milk version.Mozzarella is a favorite ingredient in Italian dishes such as pizza, lasagna, and caprese salad. This cheese is Certified Organic, Kosher, American Humane Certified and Non-GMO Verified.Rumiano Cheese Company is California's oldest family-owned cheese company, dedicated to the manufacture and distribution of the highest quality cheese. Their main focus is providing their customers with the utmost service and quality. Their success is measured by their loyalty to their employees and vendors and to the success of their customers.Ingredients: Natural Cheese made from pasteurized cultured organic milk, sea salt, enzymes.	8	oz	5.49	10.98	lb	Dairy	Cheese	http://goodeggs1.imgix.net/product_photos/4KYtO87fTTV37vRpDlUg_FK1A0997.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
580	Jersey Cow's Milk Ricotta	Traditionally in Italy ricotta is made only using the finest milk. Unlike other American ricotta that uses whey, Bellwether honors Italian cheesemaking by only using fresh Jersey Cow's milk. The rich and decadent texture is due to the high fat content in the milk. Want to spruce up a lackluster recipe? Add this ricotta! Alternatively, take advantage of the ice cream like texture and add honey, fruit, nuts, or chocolate. It's the perfect cure to any after dinner sweet tooth!Ingredients: Cultured Grade A Pasteurized Jersey Cow’s Milk, Salt Contains: Dairy	12	oz	6.99	9.32	lb	Dairy	Cheese	http://goodeggs2.imgix.net/product_photos/oNih4E13Qv2j08ogUjAF_FK1A1883.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
590	Sliced Medium Cheddar	Aged naturally for at least 60 days, Tillamook's Sliced Medium Cheddar is made using the same recipe they've used for over 100 years. A great balanced flavor from a classic cheese for sandwiches, melting or easy shredding for use in other recipes. Contains no animal rennet (vegetarian)Ingredients: Cultured Milk, Salt, Enzymes, Annatto (color).Allergens: Milk	8	oz	4.99	9.98	lb	Dairy	Cheese	http://goodeggs1.imgix.net/product_photos/qID6jHJDTE6y61T4GVmH_20161012-Tillamook_MediumCheddarSlices_MG_3592.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
581	Sheep's Milk Ricotta	This fluffy, decadent ricotta is reminiscent of homemade marshmallows or a meringue. In order to ensure that there is no waste at Bellwether, they mix the drained off whey from the production of their harder cheeses and fresh sheep's milk. It is soft and light. Because of it's rich texture we suggest using it as a perfect substitute for cream cheese, creme fraiche, or fromage blanc! Or just open up the package, add some honey, grab a spoon, and dig in!Ingredients: Cultured Pasteurized Sheep Whey, Pasteurized Sheep Milk, SaltContains: Dairy	12	oz	10.99	14.65	lb	Dairy	Cheese	http://goodeggs1.imgix.net/product_photos/y3wbFUDoTASwA1O2DhiY_FK1A0969.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
582	Mascarpone	Italian-style Cream Cheese Mascarpone is the magic ingredient in the Italian dessert Tiramisu. Not long ago, the word mascarpone would draw quizzical looks. Nowadays, the distinctly Italian-sounding name is the only thing obscure about this velvety, rich cream cheese.It was only a matter of time before Allison Hooper and Bob Reese, co-founders of Vermont Creamery, were asked by chefs to create mascarpone locally. The fresh, high quality Vermont cream from the local St. Albans Cooperative is cooked at a high temperature until it is thick, smooth, and sweet. For desserts, whip, sweeten, and serve with fresh berries, or poached pears. Swirl it into soups or fold it into risotto and polenta, mix it with Parmesan cheese and fill raviolis or layer it in lasagna.Ingredients: cream, milk solids, glucono delta lactone (natural acidulant).Ingredients: cream, milk solids, glucono delta lactone (natural acidulant).contains dairy	8	oz	4.99	9.98	lb	Dairy	Cheese	http://goodeggs1.imgix.net/product_photos/M1QDKdVaTHirI90hagpx_FK1A5831.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
583	Organic Sliced Sharp Cheddar	Perfect for cheeseburgers on Memorial Day!Our sharp organic cheddar has a full flavor with a balanced sharpness that's perfect for cheese lovers! Cheddar Cheese is a hard pale yellow to orange smooth textured cheese originally made in the English village of Cheddar, in Somerset. Cheddar flavors vary depending on length of aging and its origin. Sharp cheddar is aged for one to two years. This cheese is Certified Organic, Kosher, American Humane Certified and Non-GMO Verified.Rumiano Cheese Company is California's oldest family-owned cheese company, dedicated to the manufacture and distribution of the highest quality cheese. Their main focus is providing their customers with the utmost service and quality. Their success is measured by their loyalty to their employees and vendors and to the success of their customers.Ingredients: Natural Cheese made from pasteurized cultured organic milk, sea salt, enzymes.	6	oz	3.79	10.11	lb	Dairy	Cheese	http://goodeggs1.imgix.net/product_photos/P1MZ1IsLS3OHWxcCeNwp_FK1A9351.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
584	Shredded Mexican 2 Cheese	Tillamook Medium Cheddar and Pepper Jack Cheese team up to pack twice the flavor into this shredded blend. And neither is short on flavor alone. Our Medium Cheddar is aged naturally for 60 days, just like its century-old recipe calls for. And our Pepper Jack is laced with real bits of peppers. Uno, open the bag. Dos, use it to top tacos, enchiladas, and nachos. Olé!Ingredients:  Pepper Jack Cheese (cultured pasteurized milk, jalapeno peppers, salt, enzymes), Medium Cheddar Cheese (cultured milk, salt, enzymes, annatto [color]), Potato Starch and Cellulose Powder (added to prevent caking), Natamycin (natural mold inhibitor).Allergens: Contains Milk	8	oz	4.29	8.58	lb	Dairy	Cheese	http://goodeggs2.imgix.net/product_photos/OxM8R9d3RimRiqif0Rq3_FK1A2832.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
585	Organic Sliced Havarti	Havarti is a deliciously mild, very creamy, natural, semi-soft cheese.Rumiano Cheese Company is California's oldest family-owned cheese company, dedicated to the manufacture and distribution of the highest quality cheese. Their main focus is providing their customers with the utmost service and quality. Their success is measured by their loyalty to their employees and vendors and to the success of their customers.Ingredients: Natural Cheese made from pasteurized cultured organic milk, sea salt, enzymes.	6	oz	3.79	10.11	lb	Dairy	Cheese	http://goodeggs2.imgix.net/product_photos/6ZRksyHNTw6IvPJyX9SI_FK1A9338.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
586	Organic Sliced Mild Cheddar	This semi-soft organic mild cheddar has a mild cheddar flavor and is a favorite on its own, as well as in many cooking recipes. Cheddar Cheese is a hard pale yellow to orange smooth textured cheese originally made in the English village of Cheddar, in Somerset. Cheddar flavors vary depending on length of aging and its origin. Mild is typically aged for less than 6 months. This cheese is Certified Organic, Kosher, American Humane Certified and Non-GMO Verified.Rumiano Cheese Company is California's oldest family-owned cheese company, dedicated to the manufacture and distribution of the highest quality cheese. Their main focus is providing their customers with the utmost service and quality. Their success is measured by their loyalty to their employees and vendors and to the success of their customers.Ingredients: Natural Cheese made from pasteurized cultured organic milk, sea salt, enzymes.	6	oz	3.79	10.11	lb	Dairy	Cheese	http://goodeggs2.imgix.net/product_photos/55BveA13QhWNvPYF0zNi_FK1A9333.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
587	Shredded Sharp Cheddar	For nine long months, we wait. That’s what it takes to produce the full-bodied, naturally-aged sharpness of Tillamook Sharp Cheddar. For our farmer-owners, patience isn’t just a virtue, it’s a value, and it guides the cheesemaking process. Maybe that’s why the United States Championship Cheese Contest® voted it ‘America’s Best’. We think you’ll agree when you use it to zing up your appetizers, main dishes, and sandwiches.Contains no animal rennet (vegetarian)Ingredients: Cultured Milk, Salt, Enzymes, Annatto (color), Potato Starch and Cellulose Powder (added to prevent caking), Natamycin (natural mold inhibitor).Allergens: Contains milk	8	oz	4.29	8.58	lb	Dairy	Cheese	http://goodeggs1.imgix.net/product_photos/u2giT5MnRmikAqhmLs0h_FK1A6744.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
588	Sliced Swiss Cheese	A bit nutty and a bit sweet, this 75-day aged Tillamook Swiss Cheese is as holey as anyone could ask for. Neatly sliced for perfect sandwiches, cheeseburgers or just eating out of hand.Contains no animal rennet (vegetarian).Ingredients: Cultured Part-Skim Milk, Salt, Enzymes.Allergens: Milk	8	oz	4.99	9.98	lb	Dairy	Cheese	http://goodeggs1.imgix.net/product_photos/9110XCrQR3W131HoR8iP_20161012-Tillamook_SwissSlices_MG_3602.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
589	Shredded Medium Cheddar	A century in the eating, Tillamook Medium Cheddar is still made from the same recipe we’ve used for over 100 years. While our equipment might look a little different these days, we use only four simple ingredients and age every batch naturally for at least 60 days. No wonder it was voted 'America's Best' at the 2015 International Cheese Awards.Contains no animal rennet.Ingredients: Cultured Milk, Salt, Enzymes, Annatto (color), Potato Starch and Cellulose Powder (added to prevent caking), Natamycin (natural mold inhibitor).Allergens: Milk	8	oz	4.29	8.58	lb	Dairy	Cheese	http://goodeggs1.imgix.net/product_photos/W5nQmaWORQWQEDCso2He_FK1A2833.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
591	Sliced Sharp Cheddar	Tillamook's Sliced Sharp Cheddar is aged for nine months, resulting in a full-bodied and naturally aged sharpness. From next-level grilled cheese sandwiches to a perfectly balanced omelette, you'll find a hundred and one perfect ways to use this flavorful cheese.Contains no animal rennet (vegetarian)Ingredients: Cultured Milk, Salt, Enzymes, Annatto (color).Allergens: Milk	8	oz	4.99	9.98	lb	Dairy	Cheese	http://goodeggs1.imgix.net/product_photos/M33raeiBQNC2hasSpgN6_20161012-Tillamook_SharpCheddarSlices_MG_3587.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
592	Shredded Mozzarella Cheese	Creamy and mild, Tillamook Mozzarella was made to do exactly what you want it to: melt atop scrumptious dishes. That’s because we make it with the highest-quality, farm-fresh milk. Our facilities even use larger pipes than most to transport our milk so that we’re extra gentle to it. Use our Mozzarella to crown pizzas, fold it between layers of lasagna, or melt it atop pasta. It goes from shreds to gooey meltedness before you can even say cheese.Contains no animal rennet (vegetarian)Ingredients: Cultured Pasteurized Part-Skim Milk, Salt, Enzymes, Potato Starch and Cellulose Powder (added to prevent caking), Natamycin (natural mold inhibitor).Allergens: Contains Milk	8	oz	4.29	8.58	lb	Dairy	Cheese	http://goodeggs1.imgix.net/product_photos/cM90U9iMSm27C231joOp_FK1A2824.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
593	Shredded Italian 3 Cheese	Tillamook Italian Blend Shredded Cheese combines Mozzarella and Parmesan—the rich and creamy building blocks of any great Italian dish. Every shred is made with pure and natural milk from cows not treated with artificial growth hormones.* Plus, it comes in an easy-to-use, re-sealable bag. Now that’s Tillamook quality and convenience. Perfetto!Contains no animal rennet (vegetarian)Ingredients: Mozzarella Cheese (cultured pasteurized part-skim milk, salt, enzymes), Parmesan Cheese (cultured pasteurized part-skim milk, salt, enzymes), Potato Starch and Cellulose Powder (added to prevent caking), Natamycin (natural mold inhibitor).Allergens: Contains milk	8	oz	4.29	8.58	lb	Dairy	Cheese	http://goodeggs1.imgix.net/product_photos/jMj5pbSNRrOrz4GJMA16_FK1A2872.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
594	Organic Sliced Mozzarella	The classic Italian mozzarella is made fresh with our best organic ingredients. Resembling Monterey Jack in color and texture, this stirred curd organic Mozzarella is available in a whole milk version. Mozzarella is a favorite ingredient in Italian dishes such as pizza, lasagna, and caprese salad. This cheese is Certified Organic, Kosher, American Humane Certified and Non-GMO Verified.Rumiano Cheese Company is California's oldest family-owned cheese company, dedicated to the manufacture and distribution of the highest quality cheese. Their main focus is providing their customers with the utmost service and quality. Their success is measured by their loyalty to their employees and vendors and to the success of their customers.Ingredients: Natural Cheese made from pasteurized cultured organic milk, sea salt, enzymes.	6	oz	3.79	10.11	lb	Dairy	Cheese	http://goodeggs2.imgix.net/product_photos/HDY15RavRRKiUlmyvbBX_FK1A9345.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
595	Sliced Colby Jack	A long-time favorite, Tillamook's Colby Jack is a two-time winner of the US Championship Cheese Contest. We're happy to bring it to you in this sliced version, a perfect mellow blend of flavors. We think it'll win you over, too.Contains no animal rennet (vegetarian)Ingredients: Cultured Pasteurized Milk, Salt, Enzymes, Annatto (color).Allergens: Milk	8	oz	4.99	9.98	lb	Dairy	Cheese	http://goodeggs1.imgix.net/product_photos/eWwtsXSZSqkM2354ISZD_20161012-Tillamook_ColbyJAckSlices_MG_3600.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
596	Organic Sliced Pepper Jack	Perfect for cheeseburgers on Memorial Day!This spicy organic variation of our classic Monterey Jack includes hot peppers for added flavor. Rumiano Cheese Company is known for popularizing the term of the use "pepper jack" for this spicy style of Monterey Jack cheese. Organic Pepper Jack cheese is made using only the finest organic green and red jalapeno peppers. These ingredients combined with the creamy organic Monterey Jack create a zesty flavor that is sure to have any fan of spice coming back for more. This cheese is Certified Organic, Kosher, American Humane Certified and Non-GMO Verified.Rumiano Cheese Company is California's oldest family-owned cheese company, dedicated to the manufacture and distribution of the highest quality cheese. Their main focus is providing their customers with the utmost service and quality. Their success is measured by their loyalty to their employees and vendors and to the success of their customers.Ingredients: Natural Cheese made from pasteurized cultured organic milk, organic jalapeno peppers, sea salt, enzymes.	6	oz	3.79	10.11	lb	Dairy	Cheese	http://goodeggs1.imgix.net/product_photos/5L9C1OmVS1CoyRiomrYh_FK1A9308.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
597	Organic Sliced Monterey Jack	A California original, Monterey Jack was originally made by Franciscan monks of Monterey, California during the 1800’s and later marketed by businessman David Jacks, hence the name Monterey Jack. This organic version is a pale yellow semi-hard cheese, with a creamy texture and a mild flavor. Rumiano’s organic Monterey Jack color is a direct result from the high butterfat organic Jersey cow’s milk that it is made from. Rich Jersey cow’s milk also gives it a creamy buttery texture and mild flavor. Organic Monterey Jack is a versatile cheese eaten as a snack with bread or crackers or used in cooked foods. This cheese is Certified Organic, Kosher, American Humane Certified and Non-GMO Verified.Rumiano Cheese Company is California's oldest family-owned cheese company, dedicated to the manufacture and distribution of the highest quality cheese. Their main focus is providing their customers with the utmost service and quality. Their success is measured by their loyalty to their employees and vendors and to the success of their customers.Ingredients: Natural Cheese made from pasteurized cultured organic milk, sea salt, enzymes.	6	oz	3.79	10.11	lb	Dairy	Cheese	http://goodeggs1.imgix.net/product_photos/UK3gIlJIQpem3ecW9vNV_FK1A9318.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
598	Sharp White Cheddar Tillamoos	For nine whole months, Sharp White Cheddar waits. It waits and it waits because that’s how we make cheese—without rushing it out the door. Once its full, sharp flavor has just enough bite to pair magically with crackers, meats, smoked fish, nuts, and wine—we’re satisfied. And if that sounds like a feast, it’s because nine months of preparation deserves a celebration.Ingredients: Cultured Milk, Salt, Enzymes.Contains milk 	7.5	oz	4.99	10.65	lb	Dairy	Cheese	http://goodeggs1.imgix.net/product_photos/nLlttVRcT6qm9XAjPpHv_tilamoos_whitecheddar.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
599	Extra-Sharp Cheddar	Tillamook's Extra-Sharp Cheddar is aged for eighteen months, creating a rich and complex flavor that's more than perfect as wedges for a cheese platter, baked into a casserole, or sliced into a sandwich that'll be the envy of your office-mates.Contains no animal rennet (vegetarian)Ingredients: Cultured Milk, Salt, Enzymes.Allergens: Milk	8	oz	5.49	10.98	lb	Dairy	Cheese	http://goodeggs2.imgix.net/product_photos/zY0m9cKTQytF1kmTUwRA_20161012-Tillamook_ExtraSharpWhite_MG_3577.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
600	Tillamoos Medium Cheddar	A century in the eating, Tillamook Medium Cheddar is still made from the same recipe we’ve used for over 100 years. While our equipment might look a little different these days, we use only four simple ingredients and age every batch naturally for at least 60 days. No wonder it was voted 'America's Best' at the 2015 International Cheese Awards.Ingredients: Cultured Milk, Salt, Enzymes, Annatto (color).	7.5	oz	4.99	10.65	lb	Dairy	Cheese	http://goodeggs1.imgix.net/product_photos/EstegN8sRyKzfPGIYhat_tillamoos_2.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
601	Oaxacan String Cheese	This string cheese comes from Cesar's Cheese company out of Columbus, WI. Cesar and his family moved to Wisconsin from Oaxaca and started making the cheeses that Cesar's learned how to make as a young boy. In 2008, after Cesar earned his cheesemaking license, his company opened. Oaxaca cheese is traditionally pulled by hand and Cesar and his wife Heydi continue this tradition by pulling all the string cheese by hand. This string cheese has a beautiful chewy texture and the perfect amount of salt. Pack in your lunch, eat on the run, or have an afternoon snack. This Oaxacan string cheese knows no age limits so adults and kids enjoy!Ingredients: Pasteurized cow's milk, enzymes, cultures, salt ( and love!).Contains dairy	8	oz	7.99	15.98	lb	Dairy	Cheese	http://goodeggs2.imgix.net/product_photos/aID1SChzR8WDz5imI8Fg_20160825-Cesar_StringCheese_MG_8754.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
602	Gruyere	While Switzerland is the country most people associate with Gruyere's origin, its history actually encompasses several European countries. About a thousand years ago, the Holy Roman Empire extended its wily grip around all of what we now know as France, Switzerland, and some of Germany, and the forests of this area were called "gruyeres." Charlemagne's men sold wood to the cheesemakers of the area to power their curd cooking kettles, and the cheesemakers paid for the wood with their cheeses. These are the cheeses that we now know, eat and love as Comte and Gruyere. Gruyere is smooth in texture and has rich, beefy flavors that are tempered by hints of apples and pears. Famously used in fondue recipes, this cheese melts fabulously and is amazing in grilled cheese sandwiches, gratins, sauces or just for snacking.	6	oz	8.49	22.64	lb	Dairy	Cheese	http://goodeggs1.imgix.net/product_photos/S9BqwRgGR8KFc6txpHRM_FK1A2398.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
603	Sharp Cheddar	This sharp cheddar is aged for nine long months. That’s what it takes to produce the full-bodied, naturally-aged sharpness of Tillamook Sharp Cheddar. For their farmer-owners, patience isn’t just a virtue, it’s a value, and it guides the cheesemaking process. Maybe that’s why the United States Championship Cheese Contest® voted it ‘America’s Best’. You can use it to zing up your appetizers, main dishes, and sandwiches.Ingredients: Cultured Milk, Salt, Enzymes, Annatto (color)	2	lb	13.99	7.0	lb	Dairy	Cheese	http://goodeggs2.imgix.net/product_photos/wH6GMuIeSme5DBygIgRg_FK1A0920.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
604	Medium Cheddar	Perfect for cheeseburgers on Memorial Day!A century in the eating, Tillamook Medium Cheddar is still made from the same recipe they’ve used for over 100 years. While their equipment might look a little different these days, they use only four simple ingredients and age every batch naturally for at least 60 days. No wonder it was voted 'America's Best' at the 2015 International Cheese Awards.Ingredients: Cultured Milk, Salt, Enzymes, Annatto (color).	2	lb	13.99	7.0	lb	Dairy	Cheese	http://goodeggs2.imgix.net/product_photos/eWz2jxXGTAi62P0fd3d4_FK1A0916.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
605	Medium Cheddar	Aged at least 60 days, this Medium Cheddar cheese from Tillamook has a delicious and easy-to-love balance of mellow nuttiness and sharp flavor.Contains no animal rennet (vegetarian)Ingredients: Cultured Milk, Salt, Enzymes, Annatto (color).Allergens: Milk	8	oz	4.49	8.98	lb	Dairy	Cheese	http://goodeggs1.imgix.net/product_photos/nOgnytk9S9mGiSdHNjuU_20161012-Tillamook_MediumCheddar_MG_3580.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
606	Sharp Cheddar	Tillamook's Sharp Cheddar is aged for at least nine months in order to bring you this intensely savory, sharp flavor. Easy to slice for sandwiches or shred for quesadillas and omelettes!Contains no animal rennet (vegetarian)Ingredients: Cultured Milk, Salt, Enzymes, Annatto (color).Allergens: Milk	8	oz	4.49	8.98	lb	Dairy	Cheese	http://goodeggs2.imgix.net/product_photos/kiuo1srITniXfTujEmA7_20161012-Tillamook_SharpCheddar_MG_3579.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
607	Graziers Raw Milk White Sharp Cheddar	This sharp cheddar cheese will be a fridge staple!Graziers Raw Milk Sharp Cheddar Cheese is made from milk from Certified Graziers at Alderson and Belo Dairies. Enjoy the benefits of grass-fed and raw milk! 	8	oz	4.99	9.98	lb	Dairy	Cheese	http://goodeggs1.imgix.net/product_photos/8ZXdGk1QniY5dq2qqKSX_File0219.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
608	Graziers Raw Milk White Medium Cheddar	A milder, cheddar cheese flavor the kids will love! Graziers Raw Medium Cheddar Cheese is made from milk from Certified Graziers at Alderson and Belo Dairies. Enjoy the benefits of grass-fed and raw milk! 	8	oz	4.99	9.98	lb	Dairy	Cheese	http://goodeggs2.imgix.net/product_photos/Ki988hkTQDE9dwnHv0BJ_File0205.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
609	Organic Sharp White Cheddar	Creamy in texture and aged to medium sharpness, this is a cheese to always have on hand. The secret is the milk of Jersey cows, which contains a high butterfat content, creating an incomparably rich and creamy cheese. We use only milk, salt and natural enzymes to create our cheeses; never any growth hormones, additives or preservatives. Ingredients: USDA organic culture pasteurized grade A Jersey milk, salt, enzymes.	8	oz	6.99	13.98	lb	Dairy	Cheese	http://goodeggs2.imgix.net/product_photos/yA9Y37SHOBQmSZqCtZYQ_FK1A7567.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
610	Organic Truly Raw Milk Cheddar Cheese	Our raw cheddar cheese is North America's first truly raw pasture fed cheddar cheese. Unlike most other raw cheeses, Truly Raw is never heated above 105 degrees (Fahrenheit) during the cheese making procedure.Why Say “Truly Raw”?Many so called raw cheeses are actually heated to temperatures "just under" legal pasteurized temperatures of 161 degrees, denaturing enzymes and killing beneficial bacteria. It is done primarily to offset the poor quality of milk used to make raw cheese in the conventional market and to increase the activity of the cultures that are added. The cheddar cheese is aged a minimum of 60 days.USDA organic standards require that cows be pasture grazed just four months out of the year. OPDC goes far beyond this standard and grazes our cows on green pastures every day. In addition to green pastures, our cows are fed: a specially formulated organic mineral supplement, free choice salt and trace mineral blocks, high test organic alfalfa, and some sweet organic corn to keep them healthy and strong. Ingredients: Organic Whole Raw Milk, Vegetable Rennet, Cultures, Salt	8	oz	8.49	16.98	lb	Dairy	Cheese	http://goodeggs2.imgix.net/product_photos/puIfo2YjTluse2qpYf03_FK1A5474.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
611	Bright Meadow Extra Sharp Organic Cheddar	Steckler Grassfed 'Bright Meadow' Organic Cheddar Cheese is produced from 100% grass-fed, raw, organic milk, fresh from our own Dutch Belted dairy herd. Each batch of cheddar is made by hand on our farm in our new creamery, which has been inspected and approved by the Indiana State Board of Animal Health.Our farmstead artisan cheese is aged for a minimum of 60 days to develop its delicious, nutty flavor and smooth texture. Fresh raw milk from grass-fed cows produces cheese that has a uniquely complex flavor profile. Steckler Grassfed Cheddar is packed with nutrition that comes naturally from grass-fed raw milk. Our cheddar includes a balanced blend of omega 3 and omega 6 fats, as well as digestible vitamins and minerals.Ingredients: Organic Raw Whole Milk, salt, cultures, enzymes.Contains dairy	8	oz	11.99	23.98	lb	Dairy	Cheese	http://goodeggs2.imgix.net/product_photos/S01DUdGkQ6OSZR4pW0NS_20160512-Strecklers_BrightMeddow_MG_9498.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
612	Cambria Clothbound Cheddar	A medium format natural-rind bandaged cow's milk cheddar with a crumbly but creamy texture. The flavor is savory more than sweet, and has a distinct sharpness on the mouth-watering finish. As this cheese matures beyond four months, it develops distinct tyrosine crystals. Our cheddar pairs well with Cabernet, hoppy beers, and cider.Ingredients: Pasteurized cows milk, salt, calcium chloride, cultures, and rennet.	8	oz	12.99	25.98	lb	Dairy	Cheese	http://goodeggs2.imgix.net/product_photos/x3bafYRKWovM60a4mCAk_20160705-StepLadder_CambriaClothbound_MG_4287.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
613	Jasper Hill's Cabot Clothbound Cheddar	IN 2003, Cabot Creamery asked the Cellars of Jasper HIll to age a special batch of cheddar, sparking a revolutionary collaboration. Clothbound's milk is sourced exclusively from George Kempton's farm in Peacham, Vermont. After it comes to the Jasper Hill where they coat the young cheese in lard and add an additional layer of cloth. The cheeses age for 10-15 months in their Cellars, where they are constantly brushed, turned, and monitored for quality.SENSORY NOTES  - Clothbound is an approachable but complex natural-rind, bandaged cheddar with a crumbly texture and nutty aroma. The flavor is deeply savory and slightly tangy with caramel sweetness to the finish.PAIRING AND SERVICE  - Clothbound has a signature tang and caramel nuttiness with a rustic crystalline texture that becomes creamy on the palate. This savory-sweet balance of flavor makes a perfect match for charcuterie, apple jelly, or a rich chestnut honey. Pair with an off-dry sparkling apple cider, hoppy ale, or an oaked Cabernet Sauvignon. Clothbound is an award winning cheese, including American Cheese Society's 2006 Best in Show.	5.34	oz	9.99	29.93	lb	Dairy	Cheese	http://goodeggs1.imgix.net/product_photos/GYpkJawKS6sgfgEbYGQW_FK1A0891.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
614	Graziers Raw Milk Monterey Jack	Monterey Jack is a very mild, buttery tasting cheese perfect for melting on everything from sandwiches to omelets!Graziers Raw Milk Sharp Cheddar Cheese is made from milk from Certified Graziers at Alderson and Belo Dairies. Enjoy the benefits of grass-fed and raw milk! 	8	oz	4.99	9.98	lb	Dairy	Cheese	http://goodeggs1.imgix.net/product_photos/KvUaZdASQi6hA5QYLsm8_File0201.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
615	Tillamoos Colby Jack	A century in the eating, Tillamook Medium Cheddar is still made from the same recipe we’ve used for over 100 years. While our equipment might look a little different these days, we use only four simple ingredients and age every batch naturally for at least 60 days. No wonder it was voted 'America's Best' at the 2015 International Cheese Awards.Ingredients: Cultured Pasteurized Milk, Salt, Enzymes, Annatto (color).Contains milk Contains no animal rennet (vegetarian)	7.5	oz	4.99	10.65	lb	Dairy	Cheese	http://goodeggs2.imgix.net/product_photos/8xBd53SFQYSzwzUkC5cy_FK1A7752.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
616	Organic Monterey Jack	This is our classic organic Monterey Jack, a semihard cheese with a fresh, mild flavor. A California original, Monterey Jack was originally made by Franciscan monks of Monterey, California during the 1800’s and later marketed by businessman David Jacks, hence the name Monterey Jack. This organic version is a pale yellow semi-hard cheese, with a creamy texture and a mild flavor. Rumiano’s organic Monterey Jack color is a direct result from the high butterfat organic Jersey cow’s milk that it is made from. Rich Jersey cow’s milk also gives it a creamy buttery texture and mild flavor. Organic Monterey Jack is a versatile cheese eaten as a snack with bread or crackers or used in cooked foods.Rumiano Cheese Company is California's oldest family-owned cheese company, dedicated to the manufacture and distribution of the highest quality cheese. Their main focus is providing their customers with the utmost service and quality. Their success is measured by their loyalty to their employees and vendors and to the success of their customers.Ingredients: Natural Cheese made from pasteurized cultured organic milk, sea salt, enzymes.	8	oz	5.49	10.98	lb	Dairy	Cheese	http://goodeggs2.imgix.net/product_photos/moKJ4kcFTNehbzeIeXYG_FK1A9291.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
617	Organic Meadow Gold Monterey Jack Cheese	Steckler Grassfed 'Meadow Gold' is an  Organic Jack Cheese is produced from 100% grass-fed, raw, organic milk, fresh from our own Dutch Belted dairy herd. Each batch of jack is made by hand on our farm in our new creamery, which has been inspected and approved by the Indiana State Board of Animal Health.Our farmstead artisan cheese is aged for a minimum of 60 days to develop its delicious, nutty flavor and creamy texture. Fresh raw milk from grass-fed cows produces cheese that has a uniquely complex flavor profile. Steckler Grassfed Jack is packed with nutrition that comes naturally from grass-fed raw milk. Our cheddar includes a balanced blend of omega 3 and omega 6 fats, as well as digestible vitamins and minerals.Ingredients: Organic Raw Whole Milk, salt, cultures, enzymes.Contains dairy	8	oz	11.99	23.98	lb	Dairy	Cheese	http://goodeggs2.imgix.net/product_photos/KLu1SPwkT7WZXjAothEH_20160809-StrecklersGrassfed_monterayJack_MG_7583.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
618	Swiss Cheese	Tillamook's Swiss Cheese is a European-style recipe, aged for 75 days to create a full-bodied, delicious flavor. This holey cheese is perfect for snacking, slicing into sandwiches, or melting.Contains no animal rennet (vegetarian)Ingredients: Cultured Part-Skim Milk, Salt, Enzymes.Allergens: Milk	16	oz	7.99	7.99	lb	Dairy	Cheese	http://goodeggs2.imgix.net/product_photos/HHSoUjZhQUWQ1JMZrCqS_20161012-Tillamook_Swiss_MG_3572.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
629	Petite Breakfast Cheese	Marin French Breakfast Cheese is a California original – a fresh unripened Brie made in our Marin creamery since the late 1800’s. Petite Breakfast has been selected a Winner in the 2015 Good Food Awards. Look for it with the vintage-style label ‘1865’ during our 150th Anniversary year, 2015. Pairs with California Sauvignon Blanc, Wheat Beer or Hard Cider.Ingredients: pasteurized cultured cow’s milk,\nsalt, and microbial enzymes. Contains dairy	4	oz	5.99	23.96	lb	Dairy	Cheese	http://goodeggs1.imgix.net/product_photos/6ZKKdfTwqim5IoRubIAQ_FK1A6707.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
619	Organic Truly Raw Shredded Cheddar	Our TRULY RAW cheddar cheese is made with 100% organic, Grade A, raw whole milk from cows that pasture-graze, daily. This creamy cheddar has a delicious milk aroma, with a delightful flavor that offers a rich cheese tasting experience. Our raw cheddar is handcrafted; artisan made using traditional cheese making techniques, and only seasoned with kosher sea salt. We believe in keeping our products TRULY raw, which is why we never warm our raw milk above 102 degrees F. Many so-called “raw cheeses” are actually heated to temperatures just under legal pasteurized temperatures of 161 F, denaturing proteins, enzymes, and killing beneficial bacteria. While doing new product research, our team strongly agreed that if there was a way to never add cellulose and natamycin to the shredded cheese product, then we would strongly prefer keeping it OUT of our products. WE ARE PROUD to announce that we have NO cellulose and natamycin in our delicious, healthy, and probiotic Truly Raw Cheddar Cheese Shredded Bags!	8	oz	7.99	15.98	lb	Dairy	Cheese	http://goodeggs2.imgix.net/product_photos/yKwHexqGRc2jbTIpDhlo_FK1A4715.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
620	Smoked Goat Cheddar	A goat cheese for tailgate parties has arrived! Our twist on an American classic, Smoked Goat Cheddar, has a smoky flavor strong enough to hold its own with salty chips, zesty salsas and hoppy beers. Like our Aged Goat Milk Cheddar this smoked version possesses an even, smooth texture and milky flavor with a rich smoky taste. Aged five to six months, this cheddar possesses a complex flavor, with a firm, smooth texture.Serving & Storage SuggestionsPerfect as a table cheese with pears, apples or just as is, Goat Milk Cheddar cheese is also versatile, a wonderful melting cheese, ideal for quesadillas, baked into enchiladas, mixed into polenta or melting onto vegetables like cauliflower. Good on its own, Smoked Goat Cheddar also lends itself well to two other American classics, the hamburger and grilled cheese.Goat Cheddar cheese can last up to a year unopened in your refrigerator where they continue to age gaining sharpness and flavor complexity. Re-wrap after opening in plastic or cheese wrap and keep refrigerated.Ingredients: Smoked Goat Cheddar Pasteurized cultured goat milk, sea salt and vegetable enzyme, natural smoke flavor.	6	oz	7.99	21.31	lb	Dairy	Cheese	http://goodeggs2.imgix.net/product_photos/0U3GSoBTyy3Fla0c2zkS_FK1A3658.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
621	Goat Cheddar	Our goat milk cheddar pairs a smooth texture with a sweet, mild flavor. Free of the pungent aromas and flavors associated with most rind-ripened goat cheeses, this cheddar is a great introduction into the world ofgoat cheese. Perfect as a table cheese with pears, apples or just as is, Goat Milk Cheddar cheese is also versatile, a wonderful melting cheese, ideal for quesadillas, baked into enchiladas, mixed into polenta or melting onto vegetables like cauliflower. Good on its own, Smoked Goat Cheddar also lends itself well to two other American classics, the hamburger and grilled cheese.Goat Cheddar cheese can last up to a year unopened in your refrigerator where they continue to age gaining sharpness and flavor complexity. Re-wrap after opening in plastic or cheese wrap and keep refrigerated.Ingredients: Aged Goat Cheddar Pasteurized cultured goat milk, sea salt and vegetable enzyme.	6	oz	7.99	21.31	lb	Dairy	Cheese	http://goodeggs2.imgix.net/product_photos/8Zy0i69AS9OKwoMZyWYD_FK1A3629.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
622	Graziers Raw Milk Jalapeno Jack	Jalapeño Jack is made with locally sourced red and green Jalapeños. This cheese packs a punch! Great for stacking on sandwiches and melty quesadillas!Graziers Raw Milk Jalapeño Jack is made from milk from Certified Graziers at Alderson and Belo Dairies. Enjoy the benefits of grass-fed and raw milk!	8	oz	4.99	9.98	lb	Dairy	Cheese	http://goodeggs1.imgix.net/product_photos/68kHaGfTRKHJhwzpOCdb_File0191.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
623	Organic Garlic Fresh Curds	This is Cheddar before it’s been pressed and aged. Because it is freshly made, the enzymes in it are still very active and will help your digestive system. This healthy snack tastes amazing! Its “squeaky” texture makes it great to eat as is, and will also go well in salads and melts, similar to Mozzarella.Ingredients: USDA Organic Culture Pasteurized Grade A Jersey Brand Milk, Salt, Enzymes.	8	oz	6.29	12.58	lb	Dairy	Cheese	http://goodeggs2.imgix.net/product_photos/t1vdrhnKQG6rdRMK1l2W_FK1A5892.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
624	Organic Plain Fresh Curds	This is Cheddar before it’s been pressed and aged. Because it is freshly made, the enzymes in it are still very active and will help your digestive system. This healthy snack tastes amazing! Its “squeaky” texture makes it great to eat as is, and will also go well in salads and melts, similar to Mozzarella.Ingredients: USDA Organic Culture Pasteurized Grade A Jersey Brand Milk, Salt, Enzymes.	8	oz	6.29	12.58	lb	Dairy	Cheese	http://goodeggs2.imgix.net/product_photos/SQDmC0Y3TxiwneyOWkwg_FK1A5882.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
625	Cabrillo	Cabrillo is a Spanish style cheese created from a blend of goat's and cow's milk named for the iconic HW1 that runs along the rugged California coastline minutes from our farmstead. It has a rich, nutty character and golden color and pairs great with Pinot, almonds, and figs. Cabrillo is a cheese we make predominantly in the fall as our goats' production wanes and their milk takes on a stronger characterIngredients: Pasteurized goat & cows milk, salt, calcium chloride, cultures, and rennet.	8	oz	15.99	31.98	lb	Dairy	Cheese	http://goodeggs1.imgix.net/product_photos/JKWnqBqdTLiYRqEwWJyC_20160914-Stepladder_Cabrillo_MG_1019.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
626	Mt. Tam	Mt Tam, Cowgirl Creamery's signature cheese, is a smooth, creamy, elegant, 8 oz triple-cream. It is made with organic milk from the Straus Family Dairy. Mt Tam is firm, yet buttery with a mellow, earthy flavor reminiscent of white mushrooms.2nd Place - Original Recipe / Open Category Made From Cow's Milk - 2010 ACS competitionIngredients: Organic pasteurized milk, organic pasteurized cream, salt, cultures, and enzymes.Contains Dairy	8	oz	13.99	27.98	lb	Dairy	Cheese	http://goodeggs1.imgix.net/product_photos/lTncgIUcRAaG0mQTomkV_unspecified.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
627	Petite Crème	Petite Crème rich and smooth Brie-style cheese. It spreads beautifully across crusty bread or crisp crackers, and pairs well with dry sparkling wines,  Petite Syrah or IPA.Ingredients: pasteurized cultured cow’s milk, pasteurized cream,\nsalt and microbial enzymes.contains dairy	4	oz	4.99	19.96	lb	Dairy	Cheese	http://goodeggs2.imgix.net/product_photos/aIWr7kKtRZWbV0Du9uax_FK1A6717.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
628	Red Hawk	Cowgirl Creamery captures the essence of West Marin with its Red Hawk, a triple-cream, washed-rind, fully-flavored cheese made from organic cow's milk. Aged four weeks and washed with a brine solution that tints the rind a sunset red-orange, Red Hawk won Best-In-Show at the American Cheese Society's Annual Conference in 2003 and a Gold Ribbon and 2nd Best-in-Show in 2009.Ingredients: Organic pasteurized milk, organic pasteurized cream, salt, cultures, and enzymes.Contains dairy	8	oz	13.99	27.98	lb	Dairy	Cheese	http://goodeggs2.imgix.net/product_photos/ceiRTfprR4GuXgnHcfX8_FK1A0601.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
630	Buttermilk Blue Cheese Crumbles	Made in small batches from the freshest milk, our rich, creamy blue is beautifully balanced, sultry and seductive, with piquant and earthy flavors. Delicately laced and veined. Higher butterfat for the creamiest texture. Tangy with a touch of mellow. Bold with a bit of restraint. Finishes clean and sweet. Roth Buttermilk Blue lets you experience and explore the deliciously creamy, tangy tastes that can only come from our little corner of the world. Perfect form mixing into salads, crumbling over steaks and burgers, and making the best blue cheese dip or dressing. Pairs perfectly with raw veggies, figs, pears, dark chocolate, and Riesling.Ingredients: Raw cultured cow's milk, salt, enzymes, penicillium roqueforti.Contains milk	4	oz	3.69	14.76	lb	Dairy	Cheese	http://goodeggs2.imgix.net/product_photos/p10JhQldQoSx0WBentrO_20160513-Roth_ButtermilkBlue_MG_9521.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
631	Organic Weybridge	Patty and Roger Scholten manage a herd of Dutch Belt cows in the rolling landscape of Weybridge, VT. Organic, high quality milk production has helped the Scholtens survive a competitive milk market. Farmstead cheese is now a way to diversify the business and include the next generation - their daughter’s family has come on board to help run the farm and creamery.Weybridge is an organic, lactic-set cheese with a delicate bloomy rind. The lightly aged style is meant to showcase the Scholtens’ rich and complex Dutch Belt milk. The thin rind surrounds a delicate cream-line, showing a toasty, mushroomy flavor in contrast to the bright acidity of the dense, milky core.The small medallion format appeals to any occasion – a snack for two or a garnish for a larger spread. Weybridge’s rich, milky flavor makes it an ideal breakfast cheese alongside berry preserves and freshly-baked bread. Classic beverage pairings include dry, bubbly white wine, sparkling apple cider or a crisp German pilsner.Ingredients: Pasteurized cows milk, rennet, cultures, salt, 	4	oz	6.99	27.96	lb	Dairy	Cheese	http://goodeggs1.imgix.net/product_photos/GvC4x8mFQ5iOWj9VYyc7_20160921-JasperHill_Waybridge_MG_1502.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
632	Willoughby	Willoughby is an original creation of Marisa Mauro’s Ploughgate Creamery, a Cellars collaborator that ceased production of the cheese after a creamery fire in 2011. With Marisa’s blessing we resurrect this pudgy little washed-rind and have continued to develop the recipe at Jasper Hill Creamery. This succulent and buttery washed-rind cheese has aromas of peat, roasted beef and onions – a strong and complex front for the subtle milky, herbal, ripe-peach flavors within. Willoughby has a thin, tender, rosy-orange rind, which adds earthy dimension to the texture and flavors of the gooey interior.Willoughby’s small format is ideal for selling whole on the retail counter, or quickly rotating through a professional kitchen. The pudding-like texture may become softer with age, but should remain sliceable for portioning until 9 weeks after its production date. Pair with juicy rose, funky saison beer or raw floral honey.Ingredients: Pasteurized cows milk, rennet, cultures, salt, 	8	oz	12.99	25.98	lb	Dairy	Cheese	http://goodeggs1.imgix.net/product_photos/dzzDUsy9R9yAS8H7aon7_20160921-JasperHill_Willoughby_MG_1523.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
633	Original Blue Wedge	Made from raw milk and aged for six months, Original Blue is creamy and tangy with a medium punch of blue flavor, and a perfect balance of salt. The cheese’s rich, unique flavors are attributed to the high quality of the farm’s pastures and their proximity to the ocean. Original Blue is wonderful on a cheese plate, crumbled into a salad, or served alongside a grilled steak.The Giacomini family traces its roots to the mountainous terrain of northern Italy. In the early 20th century, Tobias Giacomini left Europe to settle in Northern California. A half-century later, his grandson, Bob, and Bob's new wife, Dean, bought a farm near Tomales Bay and began raising Holstein cows and selling milk to a local creamery. Their herd grew from 150 to 500 by the mid-1990s, and the farm’s lush pastures are now certified organic. Bob and Dean had four daughters and, in 2000, the family launched the Point Reyes Farmstead Cheese Company, using its own milk to make its first cheese, Point Reyes Original Blue.	6	oz	8.99	23.97	lb	Dairy	Cheese	http://goodeggs1.imgix.net/product_photos/0lA8Iu7R8yyOkLBThAVi_FK1A0481.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
634	Point Reyes' Bay Blue	Savory & Sweet. Try the newest addition to our product line. Inspired by the sheer natural beauty of our coastal climate and locale, Bay Blue is a rustic-style blue cheese reminiscent of Stilton. It is known for its mellow flavor and sweet, salted-caramel finish.Fudgy Texture with a gorgeous natural rind. All natural and made with pasteurized milk, Bay Blue is gluten-free and aged 90 days. Tasting Note: Mild and mellow blue-mold flavor with earthy notes and a salted-caramel finish.Uses: A great Cheese Course blue, paired with toasted hazelnuts. In recipes it complements mushrooms beautifully -- especially melted in pasta or risotto.Ingredients: Cultured, Pasteurized Cows Milk (MILK), Salt, Enzymes and Penicillium Roqueforti.	5.34	oz	9.29	27.84	lb	Dairy	Cheese	http://goodeggs2.imgix.net/product_photos/E1FnnTMFSduhT8admIZN_FK1A0053.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
635	Triple Crème Brie	With a rich and smooth texture, slightly sweet flavor and blooming with fluffy white rind, Marin French Triple Crème Brie expresses the high quality milk from neighboring Marin County dairies. Crowned World Cheese Awards Champion in 2005 – the first time an American cheese topped the French in an International competition for Brie cheese. This remarkable 1st place honor was repeated in 2010.Ingredients: pasteurized cultured cow’s milk, salt and microbial enzymes.	8	oz	9.99	19.98	lb	Dairy	Cheese	http://goodeggs2.imgix.net/product_photos/7446rHWnTfWO5qMmkdW0_FK1A4352.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
636	Jalapeño Baking Brie	Who can resist the melty, buttery, richness of warm baked Brie with a spicy kick? Marin French Cheese Jalapeño Baking Brie is a ready-to-bake Brie in its microwave-safe, oven-safe elegant wooden cup. Jalapeño Baking Brie is perfect for snacking or as an appetizer, and ready in only 12 minutes in the traditional oven or 1 minute 30 seconds in the microwave oven. 	8	oz	10.99	21.98	lb	Dairy	Cheese	http://goodeggs2.imgix.net/product_photos/y1B9jRSOTi6km1gmhDj1_FK1A0118.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
637	Petite Truffle	Petit Truffle is specked with Urbani Italian Black Truffles for the irresistibly earthy aroma of mushrooms balanced with sweet milk. Pair with California sparkling wine or Champagne.Ingredients: Pasteurized cultured cow’s milk, pasteurized cream,\nBlack Truffle (3%), salt and microbial enzymes.	4	oz	6.99	27.96	lb	Dairy	Cheese	http://goodeggs1.imgix.net/product_photos/MA8i4qbiTSciNXMWKHF9_FK1A6735.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
684	Fresh VeganMozz  Vegan Cheese	Just like traditional mozzarella di bufalo, our cashew-based vegan version is the perfect answer for everything from pizzas, to caprese salad, to paninis. Creamy, smooth, and with just the perfect amount of springiness. Melts and Browns. Delicious Hot or Cold. Ingredients: Water, Organic Coconut Oil, Organic Cashews, Organic Tapioca Starch, Agar, Sea Salt, Cultures.	8	oz	8.79	17.58	lb	Dairy	Cheese	http://goodeggs1.imgix.net/product_photos/5Aboc9FcRW2Y2kmYXBmU_20160421-Miyokos_veganMozz_MG_7624.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
638	Schloss	Fashioned after an Austrian style washed rind cheese named “castle” we’ve been making Marin French Schloss since the early 1900s for a loyal (and growing) following of cheese lovers who crave its pungent aroma, robust flavor and rich smooth texture.Pair with hearty California red wines, aromatic whites , cider, or a sour beer. Ingredients: Cultured Pasteurized Milk, Pasteurized Cream, Salt and\nMicrobial Enzymes. Marin French cheeses are made with fresh local\nmilk that is guaranteed rBST free. All of our milk is pasteurized, and\nwe use only vegetarian approved rennet (no animal rennet). Contains Dairy	8	oz	9.99	19.98	lb	Dairy	Cheese	http://goodeggs1.imgix.net/product_photos/na3XkH34T7eQsSyOqUj2_FK1A7396-2.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
639	Foggy Morning	Foggy Morning from Nicasio Valley Cheese Company is a hand ladled cheese made using 100% organic farmstead cow's milk. This soft, delicate cheese with a subtle tang has sour-cream flavour. It can be spread on bagels, toast or pizza or eat with any sweet or savory dish.Ingredients: Organic cow's milk, animal rennet, salt.	6.5	oz	8.99	22.13	lb	Dairy	Cheese	http://goodeggs2.imgix.net/product_photos/dKTkRO0VT3CpnN8dwIDc_FK1A1559.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
640	Crescenza	Rich and buttery with stiff notes of tart yeast to balance it, Crescenza is modeled after the centuries-old Italian cheese, Stracchino di Crescenza. Bellwether's Crescenza is a soft-ripened cow's milk cheese without a rind to hold back the luscious ooze. Spread it over crackers, bread, fruit—anything you want imbued with creamy intensity.Cindy Callahan, a nurse by training, was in her 50s when she first began raising sheep as a way to keep pasture grasses under control. She soon began milking her flock, and before long, her son Liam joined her as a cheesemaker. Today, Bellwether Farms makes an array of fresh and aged Italian-style sheep and cow's milk cheeses.	6	oz	5.99	15.97	lb	Dairy	Cheese	http://goodeggs1.imgix.net/product_photos/pEwiyS3cQWULiXvbVRG5_IIwtlzATsvLJ5ANKwB6Ot5y9X1RhlmvspDzpls0rZr0.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
641	"American Favorites" Cheese Plate	From meltingly soft Kenne to sharp, grassy Everton, our Good Eggs cheese specialist Erin carefully selected each one to bring you a deliciously balanced cheese board. Whether your favorite is hard cheese or soft, nutty or sharp, you can't go wrong with this all-star tour of American cheeses and crackers. Perfect for wowing your friends at a holiday party, and for pairing with your favorite wine or beer!Weybridge from Jasper Hill Cellars, 8 ozEverton from Jacob's and Brichford, 8 oz Kenne from Tomales Farmstead Creamery, 8 ozSea Salt & Olive Oil Crackers from Rustic Bakery, 5 ozActual products may vary from those featured in photograph, but products listed here will always be accurate.Contains: Milk, wheat.	1	count	38.99	\N	\N	Dairy	Cheese	http://goodeggs2.imgix.net/product_photos/7PMpzkFjQjOvoRdDehiZ_20161028-CheesePlates_AmericanFavorites_MG_5700.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
642	Organic Small Curd Cottage Cheese	Clover Organic Farms Cottage Cheeses are produced by introducing non-animal rennet , a natural enzyme, to fresh, organic milk from our local family farms. The rennet causes the milk to separate into curds and whey. The curds are then drained to separate them from the whey, and then a small amount of whey is added back in for texture and flavor.  We invite you to enjoy Clover Organic Farms Cottage Cheese in good conscience and good health. Great for salads, with fruit and in all your favorite family recipes!Ingredients: Cultured pasteurized grade A organic nonfat milk, pasteurized grade A organic milk, pasteurized organic cream, salt, stabilizer (organic guar gum, xanthan gum, carageenan, organic locust bean gum), carbon dioxide (to maintain freshness)	16	oz	5.29	0.33	oz	Dairy	Cheese	http://goodeggs2.imgix.net/product_photos/6sECVFnTj6NSBMTXWGaQ_FK1A9938.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
643	Organic Sour Cream	Our Organic Sour Cream is rich and delicious with the perfect balance of sweet and tangy.Made with only three ingredients, our Organic Sour Cream is slowly cultured, using a traditional 16-hour process. This creates a naturally thick texture and pure, rich flavor. Use it as a base for dips and dressings or as the perfect spoonful of luxury on a baked potato. No fillers, additives or stabilizers, ever.Straus Family Creamery’s certified Organic Sour Cream is Non-GMO Project Verified,certified kosher and gluten-free.Ingredients: Cultured Pasteurized Grade A Nonfat Milk and Cream, Enzymes.	1	pint	4.29	0.27	oz	Dairy	Cheese	http://goodeggs2.imgix.net/product_photos/xpuVDxrtQmWICjaGuoWP_FK1A5763.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
644	Organic Low Fat Cottage Cheese	Clover Organic Farms Cottage Cheeses are produced by introducing non-animal rennet , a natural enzyme, to fresh, organic milk from our local family farms. The rennet causes the milk to separate into curds and whey. The curds are then drained to separate them from the whey, and then a small amount of whey is added back in for texture and flavor.  We invite you to enjoy Clover Organic Farms Cottage Cheese in good conscience and good health. Great for salads, with fruit and in all your favorite family recipes!Ingredients: cultured pasteurized grade A organic nonfat milk, pasteurized organic grade A milk, salt, stabilizer (organic guar gum, xanthan gum, carrageennan, organic locust bean gum), vitamin A palmitate, carbon dioxide (to maintain freshness).	16	oz	5.29	0.33	oz	Dairy	Cheese	http://goodeggs1.imgix.net/product_photos/QosxonuUQCutuju6qNRN_goaI8UjWTEOejqaPZPfr_A4LaMCWUQyCdDtKabd6QDA9WuG94YDMrNmH8uoeI-9c.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
645	Organic Fromage Blanc	Used like cream cheese, fromage blanc is a staple of the French diet. Because Cowgirl Creamery Fromage Blanc is made with whole milk instead of cream, it contains 30% less fat than cream cheese and about 80% more flavor, making it a favorite with Bay Area restaurant chefs.Flavor notes: Smooth and silky, a spoonful to be savored.Ingredients: Organic pasteurized whole milk, organic cream, salt, cultures, and enzymes.	8	oz	3.99	7.98	lb	Dairy	Cheese	http://goodeggs2.imgix.net/product_photos/IKMdqqtxRTmLWDPgh06y_FK1A3888.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
646	Crème Fraîche	This classic, French-style cultured cream has a rich, nutty flavor with an appealing tart edge. A basic pantry item in French kitchens, it is an ingredient used by fine cooks in many cuisines. Pour over fruit, whip into soups, stir into sauces. Créme Fraîche never curdles while cooking.	7.5	oz	5.49	11.71	lb	Dairy	Cheese	http://goodeggs2.imgix.net/product_photos/dWlrD0blRWaDlwMBpuJf_FK1A9023.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
647	Feta	Delightful table cheese. Delicate salt and pungent flavor balance for any recipe or pizza topping	12	oz	5.49	7.32	lb	Dairy	Cheese	http://goodeggs1.imgix.net/product_photos/dDoYqkFZQCEA0Q2Mhq8x_FK1A3140.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
826	Grass-fed Tri-Tip	100% Grass-fed and Finished Beef Tri-Tip RoastPRATHER RANCH MEAT CO is proud to introduce Lost Coast Grass-Fed Beef into its repertoire of high quality, sustainably and humanely raised meat offerings.Lost Coast Grassfed beeves are raised on the lush grass pastures of Humbolt County they are 100% grassfed and finished, and are never treated with hormones or antibiotics.	2	lb	29.99	15.0	lb	Meat	Beef	http://goodeggs1.imgix.net/product_photos/KZNh4FPETG7M7l58IBKf_FK1A4738.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
648	Organic Fat Free Cottage Cheese	Clover Organic Farms Cottage Cheeses are produced by introducing non-animal rennet , a natural enzyme, to fresh, organic milk from our local family farms. The rennet causes the milk to separate into curds and whey. The curds are then drained to separate them from the whey, and then a small amount of whey is added back in for texture and flavor.  We invite you to enjoy Clover Organic Farms Cottage Cheese in good conscience and good health. Great for salads, with fruit and in all your favorite family recipes!Ingredients: Cultured pasteurized organic nonfat milk, salt, organic locust bean gum, carbon dioxide (to maintain freshness), carrageenan, citric acid, vitamin A palitate and microbial enzymes, live and active L. acidophilus and B. bifidus cultures	16	oz	5.29	0.33	oz	Dairy	Cheese	http://goodeggs1.imgix.net/product_photos/u1YHYS9dQJeDoTJkKvfp_FK1A6695.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
649	Queso Fresco	This traditional fresh Mexican cheese has a creamy texture, but because we press the curds, the cheese can be easily crumbled and softens well when heated.Queso Fresco can be used in many Mexican dishes, such as enchiladas and empanadas, or crumbled over soups and salads.	8	oz	5.99	11.98	lb	Dairy	Cheese	http://goodeggs2.imgix.net/product_photos/8sRTrCrzQ1mDbs0V76XG_QuesoFresco.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
650	Feta	Made with fresh cow's and goat's milk, our feta has a lighter flavor than goat or sheep milk feta.It is lightly salted to bring out the flavor of the cheese, without being as strong as a Mediterranean style feta. 	8	oz	5.99	11.98	lb	Dairy	Cheese	http://goodeggs2.imgix.net/product_photos/SeIwLb9T1qoXrxfScmBi_FK1A2989.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
651	Sheep's Milk Feta	"This new feta from Haverton made it's debut about 1 month ago. It's bright and salty flavor is most comparable to Bulgarian feta. Crumble on top of a salad or mix with your favor warm pasta to make a rich creamy sauce." Erin, Good Eggs BuyerHaverton Hill Creamery sheep milk feta is produced from our fresh sheep milk and produced on site at our farm in Petaluma. Handcrafted in small batches, each batch is delicately crafted by hand to create a classic + traditional feta. Made to order using only 100% sheep milk creates a creamery soft texture with a classic salty finish. There's an appealingly “barnyard” tang versus the more mild, grassy taste and crumbly texture of cow milk feta. Enjoy.Ingredients: Pasteurized sheep's milk, sea salt, cultures, enzymes.	8	oz	10.99	21.98	lb	Dairy	Cheese	http://goodeggs2.imgix.net/product_photos/kOnKzq0RCmZqK81Vnijs_20160810-HavertonHill_SheepFeta_MG_7598.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
652	Goat Milk Feta	With a long history throughout the Balkan Peninsula, especially in Greece, Feta is traditionally made from a combination of sheep and goat milk. Redwood Hill Farm’s award winning feta, is made with pure goat milk. We gently cut the curd and form it into blocks by hand. Then it is brined in a natural, salt water brine before aging.  Try it sliced or cubed, sprinkled with fresh cracked pepper and drizzled with olive oil, or on top of a salad. Serve with assorted olivesStorage & Serving SuggestionsLeft in its packaging it will last refrigerated for 6 months or more. After opening, re-wrap your cheese in fresh plastic or cheese wrap and keep it refrigerated. Redwood Hill Farm Feta is fabulous sliced or cubed, sprinkled with fresh cracked pepper and organic oregano and then drizzled with your best olive oil. Serve with assorted olives.Ingredients: Cultured goat milk, sea salt and vegetable enzyme.	6	oz	8.79	23.44	lb	Dairy	Cheese	http://goodeggs1.imgix.net/product_photos/DknwNWeSge1VfbWGcv3Z_goat%20feta%20photo.jpeg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
653	Cosmos	"Cosmos is one of my favorite feta-style cheeses! It's the perfect summer cheese! Make a melon or stonefruit salad, mix in some prosciutto, and top with some Cosmos! It's goes with all the summer seasonal fruits and veggies!" - Erin, Grocery BuyerCosmos is a raw sheep milk Feta-style cheese, brined aged for 2 months. Rich and tangy, with a creaminess that stands up to the salty brine. Use it on salads, pasta, roasted vegetables, pizza--anything that needs a little something!Ingredients: Raw Sheep milk, salt, rennet, cultures.	4	oz	7.49	29.96	lb	Dairy	Cheese	http://goodeggs1.imgix.net/product_photos/8V9FBHTTQO6CGy0nrr58_File0405.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
654	Smoked Sea Salt & Rosemary Chevre	Our most versatile flavor. A delicate chèvre hand-blended with smoked sea salt and cracked pepper, marinated in a rosemary-infused extra virgin olive oil blend. An accessible and fresh flavor reminiscent of the Pacific coast.Ingredients: Goat Cheese (Pasteurized Goat Milk, Smoked Sea Salt, Salt, Cracked Pepper, Cultures, Enzymes), Oil Infusion (Non-GMO Canola Oil, Extra Virgin Olive Oil, Rosemary), Pink PeppercornsContains dairy	7.1	oz	8.99	20.26	lb	Dairy	Cheese	http://goodeggs1.imgix.net/product_photos/YDcam4DRCi9Zar6tpLkQ_20160825-ChevooSaltRosemary_MG_8777.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
655	California Dill Pollen & Garlic Chevre	"Good Eggs and Chevoo are stoked about our new partnership! Chevoo has been a favorite of mine since it launched and I am so excited to sell (and be able to buy!) on Good Eggs! To celebrate this partnership  we are offering $2 off each jar for a limited time!"- Erin, Grocery BuyerA taste of Northern California. Fresh chèvre hand-blended with locally harvested dill pollen, marinated in a light garlic-infused extra virgin olive oil blend. Subtle highlights that quietly echo the rolling hills of Wine Country.Ingredients: Goat Cheese (Pasteurized Goat Milk, Salt, Dill Pollen, Dill Weed, Cultures, Enzymes), Oil Infusion (Non-GMO Canola Oil, Extra Virgin Olive Oil, Garlic),Pink PeppercornsContains dairy	7.1	oz	8.99	20.26	lb	Dairy	Cheese	http://goodeggs1.imgix.net/product_photos/gIFmwMpoQIqzIJsfpcjB_20160825-Chevoo_DillGarlic_MG_8764.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
656	Aleppo-Urfa Chili & Lemon Chevre	"Good Eggs and Chevoo are stoked about our new partnership! Chevoo has been a favorite of mine since it launched and I am so excited to sell (and be able to buy!) on Good Eggs! To celebrate this partnership  we are offering $2 off each jar for a limited time!"- Erin, Grocery BuyerVelvety chèvre hand-blended with Aleppo and Urfa chili peppers, marinated in a delicate lemon-infused extra virgin olive oil blend. A sophisticated mix of heat and citrus, with a hint of old world charm.Ingredients: Goat Cheese (Pasteurized Goat Milk, Salt, Aleppo Chili, Urfa Chili, Cultures,Enzymes), Oil Infusion (Non-GMO Canola Oil, Extra Virgin Olive Oil, Lemon),Pink PeppercornsContains dairy	7.1	oz	8.99	20.26	lb	Dairy	Cheese	http://goodeggs1.imgix.net/product_photos/wJjkOYqRReME0peSjTAO_20160825-Chevoo_ChiliLemon_MG_8769.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
685	Vegan Ricotta	Our ricotta has sweet, and cultured overtones, and a buttery, smooth finish. It is moist and incredibly versatile. Its silky texture makes for a great mascarpone substitute and is ideal for desserts.You can use our ricotta in any recipe that calls for dairy-based ricotta. It is particularly good in pasta fillings and cheesecakes.Ingredients: Almond milk (water, almonds), salt, enzymes, cultures.Contains Tree Nuts (Almonds)	8	oz	7.99	15.98	lb	Dairy	Cheese	http://goodeggs2.imgix.net/product_photos/9IZttb2TLO0JICzE5GrH_20160601-KiteHillRicotta_MG_0943.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
657	Organic Lactose Free Sour Cream	Delicious and rich, with the cultured, slightly sweet and nutty flavor that characterizes the best crème fraîche, Green Valley Organics Lactose Free Sour Cream will quickly become a staple in your kitchen. This is real dairy with all the flavor and versatility but none of the lactose. Add to sauces and soups, blend into bread or cakes for a delectable, tender crumb. Or simply whip gently, add sweetener or flavor of your choice, and top seasonal fresh fruit … the possibilities are endless. Enjoy!Green Valley Organics' lactose-free dairy is made by Redwood Hill Farm & Creamery in Sebastopol CA. Ingredients: Organic Pasteurized Cream, Lactase Enzyme, Live Active Cultures.	12	oz	3.69	0.31	oz	Dairy	Cheese	http://goodeggs2.imgix.net/product_photos/NoI3xzY6SSqnggJpIKv2_greenvalley_sourcream.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
658	Ricottage	This cheese is an Orland Farmstead creation. It is a blend between a ricotta and a cottage cheese. Ricottage can be used as a snack like cottage cheese or to take the place of ricotta in dishes such as lasagna.  	8	oz	5.99	11.98	lb	Dairy	Cheese	http://goodeggs1.imgix.net/product_photos/SexNegvKSyyG0EH7y0a3_FK1A2977.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
659	Ricottage with Garlic and Dill	This cheese is an Orland Farmstead creation. It is a mild cheese like Cottage, with a dryer texture like Ricotta.  Ricottage with garlic and dill is great as a dip or spread.  Ricottage can be used as a snack like cottage cheese or to take the place of ricotta in dishes such as lasagna or Manicotti  The garlic dill Ricottage is great with Pita chips.	8	oz	6.29	12.58	lb	Dairy	Cheese	http://goodeggs1.imgix.net/product_photos/mWTcocYJTkaK00iW4rWV_FK1A2984.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
660	Quark	German for “fresh curd,” quark is a fresh and slightly drained cows’ milk cheese that is similar to old-fashioned cream cheese. Inspired by its versatility and at the request of European chefs, co-founders Allison Hooper and Bob Reese crafted their first batch in 1985.At the creamery, Quark is made from fresh local milk that is coagulated overnight into fresh curd, then drained in cheesecloth and whipped with a trace of crème fraîche. Its low butterfat content and smooth texture make it a great base for fluffy cheesecakes and mousse. Top with granola for breakfast or mix with anything from mashed potatoes to boysenberries, and it earns its keep with flair. Ingredients: Pasteurized cows' milk, salt, cultures, enzymes. contains dairy	8	oz	4.69	9.38	lb	Dairy	Cheese	http://goodeggs1.imgix.net/product_photos/E2H0b7QFTnKK9NjS3aVn_FK1A4545.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
661	Fromage Blanc	Our Fromage Blanc won the 2014-2015 World Cheese Gold Award!A creamy, spreadable cheese that can be used in place of cream cheese. It has a tangy, lemon flavor that can be used in sweets, such as cheese cakes or brownies, or in savory dishes such as lasagna, ravioli or any pasta. It makes a great spread on crackers or broiled on top of french or sourdough bread.Stock up and Save, Fromage Blanc freezes great!	8	oz	5.29	10.58	lb	Dairy	Cheese	http://goodeggs2.imgix.net/product_photos/6AMRMuJtTMmjOrwX4jso_FK1A2963.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
662	Fromage Blanc Tomato Pesto Torta	Our traditional creamy and spreadable fromage blanc layered with sun dried tomatoes and freshly made pesto. Delicious on broiled bread, used as a sauce for pasta, or even just on crackers for a snack.Ingredients: Pasteurized milk, salt, enzymes, basil, olive oil, parmesan cheese, garlic, lemon juice, crushed tomatoes, sun dried tomatoes, canola oil, walnuts, pine nuts, herbs, spices, salt. Contains dairy and nuts	8	oz	8.99	17.98	lb	Dairy	Cheese	http://goodeggs2.imgix.net/product_photos/YlL00FPMT4SgjihQxoed_FromageBlanc.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
663	Parmigiano Reggiano	Parmigiano Reggiano is a hard Italian Cheese made from partly skimmed, unpasteurized milk. It is only allowed to be produced in the provinces of Parma, Reggio-Emilia and Modena, as well as parts of Emilia-Romagna. Its nuttiness and intense savory flavors  are guaranteed to impress on any cheese board, spice up any broth, and compliment pasta and risotto. Ingredients: Part-skim milk, salt, rennet.	6	oz	7.49	19.97	lb	Dairy	Cheese	http://goodeggs1.imgix.net/product_photos/SBzWN6VKSaX7MFdSAwhk_FK1A7890.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
664	Pt. Reyes Farmstead Toma	Point Reyes Farmstead Cheese Company - Marin CountyToma is a creamy semi-firm cheese with a pleasant tangy finish. It's easily the highlight of any cheeseboard & pairs well with hoppy beers, pinot noir, or chardonnays. It melts perfectly in an omelette & is a favorite for grilled cheese sandwiches. Hand cut & wrapped in compostable cheese paper.Pasteurized Cow's MilkVegetarian RennetCertified Kosher & Gluten Free	6	oz	7.49	19.97	lb	Dairy	Cheese	http://goodeggs1.imgix.net/product_photos/X8i01xcXSS2ffoVMPkZq_toma.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
665	Manchego	Perhaps Spain’s most famous cheese, Manchego is a D.O. (Denominacion de Origen) protected cheese, meaning the traditional recipe must use 100% Manchega sheep milk. The breed has proven sturdy enough over the centuries to traverse the rocky, arid central plateau region of La Mancha – where cows just can’t hang. Made using fresh, pasteurized sheep’s milk, this Manchego develops a rich nuttiness and pleasant gaminess (think toasted almonds and broiled lamb chops) after over a year of aging. The patterned rind is a nod to the grass baskets previously used to form the cheese. Firm enough to grate for any culinary application, highlight its sharp, caramelly flavor anywhere you would use Parmigiano.	6	oz	8.79	23.44	lb	Dairy	Cheese	http://goodeggs1.imgix.net/product_photos/fWeHFFYoSKi785exSgWZ_FK1A7436.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
666	Pecorino Romano	A hearty, full flavored, unpasteurized sheep's milk cheese. The milk is rich and fat and in protein. It has a bold, salty flavor that is perfect for grating over any dish and eaten with some honey.	6	oz	6.79	18.11	lb	Dairy	Cheese	http://goodeggs2.imgix.net/product_photos/2sLSO5QSScaGZpsFPnLd_FK1A2388.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
667	Beemster X.O	Aged 26 monthBeemster Extra Aged is revered by cheese connoisseurs for its complex and deep notes of butterscotch, whiskey and pecan. The flavor develops through natural aging of no less than 26 months in our historic warehouses. Due to the unique milk and craftsmanship used in each wheel, Beemster Extra Aged stays creamy, producing a delectable flavor and texture that is more enjoyable than other extra-aged Dutch cheeses. • Extra Aged, Hard & Robust. With a deep, long-lasting taste.• Pairs well with elegant wines, olives, and nuts. Ingredients: Pasteurized cow’s milk, salt, cheese culture, rennet, annatto. Contains: milk	5.34	oz	8.99	26.94	lb	Dairy	Cheese	http://goodeggs2.imgix.net/product_photos/5BgJsm8RpG9fAvurRv6W_FK1A9985.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
696	Cabecou	Our California original Cabecou is a goat cheese button, aged slightly to give it a nutty flavor and dense texture. Then we marinate the discs in a mixture of savory herbs, organic canola oil and California extra virgin olive oil.Ingredients: Cultured Pasteurized Goat Milk, Salt, Enzymes, Herbs, Canola Oil, Extra Virgin Olive Oil.	6.2	oz	8.29	21.39	lb	Dairy	Cheese	http://goodeggs2.imgix.net/product_photos/yyaOgVQZ6r0TLHPqTxiA_FK1A7349.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
668	Fontina Val d'Aosta	This is the real deal Fontina, made from the raw milk of cows grazing in 6,500 foot high Alpine pastures. Today, milk for production comes from the Valdaostana cows that graze on the Alpine pastures (which are dotted with wildflowers and native herbs) at the foot of Mont Blanc. This semi-firm is washed weekly helps develop its signature funk. The uniquely rich and nutty flavor is reminiscent of truffles, with a subtle fruity, grassy aroma and supple texture. Flavors of Fontina are subtle but complex, and while it makes an excellent and versatile cheese for cooking, it is also delicious for straightforward eating. There are savory notes of fruit, grass, earth and cellar, balanced by a gentle sweetness.	5.34	oz	7.29	21.84	lb	Dairy	Cheese	http://goodeggs1.imgix.net/product_photos/jsdtjg3xSW6I5hwjMN7G_FK1A0006.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
669	Gruyere	Aged for a minimum of 12 months, Kaltbach Le Gruyère AOP is recognized instantly by the color of its rind – an unmistakable rustic brown patina – and its flavor, which is just as distinctive. Compared with traditional Le Gruyère, the extended aging in its unique environment makes for complex, slightly more assertive flavors. The notes of dried stone fruit, spice, black tea and hazelnuts with an earthy depth will captivate your taste buds.Ingredients:  Raw cultured cow's milk and\nnonfat milk, salt, enzymes\nContains milk\n 	6	oz	6.49	17.31	lb	Dairy	Cheese	http://goodeggs2.imgix.net/product_photos/qql6TF6Tgq22n6dF2V8C_20160512-Emmi_GruyereWedge_MG_9470.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
670	Carmody	Our Carmody was also inspired by a trip to Italy. We had an opportunity to watch\nGorgonzola being made near Milan. Many Gorgonzola makers are secretive and limit\naccess to their cheese making but our contact was able to get us inside for a short\ntour. After watching the cheese make we went into a ripening room they had at the\nfacility to see some of the early stages of Gorgonzola aging. In one of the rooms there\nwere some small wheels of cheese on an out of the way shelf. We were able to try\na wheel and found it to be a very mild but creamy cheese that still had a great deal\nof fresh milk flavor. We never saw the cheese made but began to notice similar table\ncheeses wherever we bought cheese. They were marketed under a variety of names\nbut meant for local consumption. It occurred to us that a cheese of this type might\nappeal to our customers in the US as an alternative to the young Cheddars or Jack\ncheeses that dominated the market. Once we returned from the trip I began working\non the cheese by using our pecorino recipe as a starting point and making changes\nin response to the flavors and texture of the cheese. Eventually we found a combination\nwe liked. Carmody is meant to highlight the buttery flavors or Jersey milk. At that\npoint we gave it a name with local meaning—Carmody is the road that runs adjacent\nto the farm.\nIngredients:\nPasteurized Jersey Cows Milk, Vegetable Rennet, Cultures and Salt\nTexture: Semi-Firm\nAged: Minimum of 6 weeks\nRind: Natural	7	oz	8.59	19.63	lb	Dairy	Cheese	http://goodeggs1.imgix.net/product_photos/6lGfmlFfTVG4vzKXCyAP_FK1A2882.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
671	Ossau Iraty	Ossau-Iraty is probably the least known 'Appelation d'Origine Controlee' (A.O.C) cheese. The Ossau-Iraty unites two regions of France in the Western Pyrénées: Ossau in the valley of the Bearn, and Iraty in the beech forests of the Pays Basque. The Ossau-Iraty is full of a delicious, nutty, robust taste if it is produced during the period from June to September when the herds move up to the high mountain meadows. Covered by a thick orange to grey rind, the pâte is white, supple and ceamy. It becomes more firm as the maturing period is longer. An artisan pate may have small holes and should not stick to the palate.Made by the Onetik dairy cooperative with the raw milk of Manech and Basco-Bearnaise sheep and aged for 90 days, Ossau Iraty is unctuous, nutty, sweet, and slightly gamey. And if you’re so inclined, it melts like a dream.	5.34	oz	8.99	26.94	lb	Dairy	Cheese	http://goodeggs1.imgix.net/product_photos/c6ZCHvLKRc1JiVb7hEuQ_FK1A0029.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
672	Comté	Comté is a French cheese produced in the Jura Massif region of Eastern France. The unpasteurised cow's milk used is mainly from Montbeliarde Cattle or French simmental (or cross breeds of the two). This hard mountain cheese is matured to perfection in the silence and darkness of special caves where the cheese gets its unique taste, texture and color. There are several maturing cellars in the region where Comté is ripened for a minimum of 4 months to 18 or 24 months. Comté was one of the first few cheeses to receive an AOC (Appellation d'origine controlee) status in 1958. It is one of the most popular AOC cheeses in France with around 40,000 tones of annual production.Considered one of the finest cheeses in the world, a wedge of Comte reveals a pale yellow interior and a texture that can vary from silky, flabby to crystalline.There are practically 83 flavours, which can be savored while tasting Comté. But the main aromatic flavours that delicately linger on the palate are a balance of brown-butter and roasted-nut aromas and a sweet finish.Its ability to melt easily means Comté goes well with many recipes right from fondues to Croque Monsieur. The cheese pairs well with Rhone reds, a Palo Cortado or off-dry Amontillado sherry from Spain.	5.34	oz	9.99	29.93	lb	Dairy	Cheese	http://goodeggs1.imgix.net/product_photos/uYJB6dAhRWaUQgpWjPiF_FK1A0070.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
673	Moonflower	Moonflower is a raw sheep milk cheese aged 2 to 4 months. It is creamy and firm, with a rich nutty flavor. Moonflower melts nicely and makes a great omelet. It is also lovely with fresh cherries and berries.Ingredients: Raw Sheep milk, salt, rennet, cultures.	4	oz	7.99	31.96	lb	Dairy	Cheese	http://goodeggs1.imgix.net/product_photos/HvSxbWtQkC4JDP6EHl9q_FK1A1699.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
674	Black Eyed Susan	Black Eyed Susan is a raw sheep milk cheese aged 2 to 4 months. It is dry and sharp with a rich buttery flavor. It is perfect for grating over pasta or risotto or just nibbled on with some salami and beer.	4	oz	8.49	33.96	lb	Dairy	Cheese	http://goodeggs2.imgix.net/product_photos/dqHO1O1mQ3G89cNoztNB_FK1A1719.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
675	Young Gouda	Oakdale's Young Gouda is a throwback to a classic dutch gouda. Soft, mild, creamy, and buttery. Perfect for snacking and for melting! Pack it in a picnic basket, add some apples, or even a hard cider, and enjoy!Four days a week we start the 11 week process of making Gouda.  The cheesemaker's work begins the night before when he makes sure that the fresh milk we receive from a local dairy is properly transferred and chilled.  Before the sun rises the next morning, he starts the pasteurization process and adds cheese cultures to the milk.  Within a few hours, curds start to form and the whey is separated from the batch.  Shortly after, the curds are pressed into a large block and cut into 10 pound pieces which are placed in their molds, fitted with a lid and pressed into wheels.  The next day, the wheels are transferred to a brine solution to cure.  Two days later, the cheese is transferred to wooden drying racks, coated with wax, and begins the aging process where it matures to perfection.Ingredients: Pasteurized whole milk, salt, annatto coloring, and enzymes. Contains dairy	8	oz	9.49	18.98	lb	Dairy	Cheese	http://goodeggs1.imgix.net/product_photos/RNC40OMQOG6T3H5kjW7Z_20160513-Oakdale_YoungGouda_MG_9612.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
676	Aged Gouda	Oakdale's Aged Gouda is aged to perfection for 7 months. It's nutty flavor is balanced with a sweet finish. Serve alone, with fruit, or nuts. Pair with a hard, dry cider or a sour beer to bring out the caramel notes on the finish. Four days a week we start the 11 week process of making Gouda.  The cheesemaker's work begins the night before when he makes sure that the fresh milk we receive from a local dairy is properly transferred and chilled.  Before the sun rises the next morning, he starts the pasteurization process and adds cheese cultures to the milk.  Within a few hours, curds start to form and the whey is separated from the batch.  Shortly after, the curds are pressed into a large block and cut into 10 pound pieces which are placed in their molds, fitted with a lid and pressed into wheels.  The next day, the wheels are transferred to a brine solution to cure.  Two days later, the cheese is transferred to wooden drying racks, coated with wax, and begins the aging process where it matures to perfection.Ingredients: Pasteurized whole milk, salt, annatto coloring, and enzymes. Contains dairy	8	oz	12.49	24.98	lb	Dairy	Cheese	http://goodeggs2.imgix.net/product_photos/RKptd8etQTa6wDC4gj2L_20160513-Oakdale_AgedGouda_MG_9601.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
677	Emmentaler	"This classic Swiss cheese is my go to for turkey sandwiches, grilled cheeses, or snacking with apples and almonds." Erin, Good Eggs BuyerThis is the original Swiss cheese, world famous for its distinctive holes\n􏰀􏰁􏰂􏰃􏰄􏰁􏰅􏰆􏰄􏰇􏰆􏰀􏰆􏰈􏰉􏰁􏰂􏰃􏰊􏰀and one-of-a kind flavor.  First produced􏰋􏰀􏰁􏰂􏰃􏰄􏰁􏰅􏰆􏰄􏰇􏰆􏰀􏰆􏰈􏰉􏰁􏰂􏰃􏰊􏰀􏰋􏰄􏰌􏰍􏰃􏰎􏰉􏰌􏰏􏰐􏰃􏰑􏰌􏰄􏰂􏰒􏰓􏰅􏰂􏰃\nmore than eight centuries ago in the\ncanton of Bern in the valley of the\nEmme River, Emmentaler AOP is still made in giant 200-pound wheels.Emmentaler is always made from fresh, raw milk produced by grass-fed cows in sustainable meadows on family farms. Expert cheesemakers age it for a minimum of 120 days in the microclimate of the Emmi cellars. 􏰡􏰚􏰉􏰏􏰃􏰅􏰁􏰂􏰔􏰅􏰏􏰏􏰔􏰟􏰃􏰑􏰄􏰑􏰒􏰔􏰀􏰌􏰃􏰓􏰚􏰅􏰅􏰏􏰅􏰃􏰑􏰔􏰀􏰟􏰏􏰃This endlessly popular cheese plays an essential role in Swiss communities,\ncommerce and culture—and in American\n􏰓􏰒􏰉􏰏􏰉􏰁􏰅􏰃􏰄􏰇􏰃􏰕􏰀􏰁􏰟􏰃􏰈􏰉􏰁􏰂􏰏􏰍 cuisine of many kinds.Ingredients:  Raw cultured cow's milk and\nnonfat milk, salt, enzymes\nContains milk\n 	6	oz	5.49	14.64	lb	Dairy	Cheese	http://goodeggs1.imgix.net/product_photos/oMn3X8H1QTCEGghXQDAv_20160512-Emmi_EmmenthalerWedge_MG_9469.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
678	Grand Cru Wedge	By combining the finest Wisconsin milk and crafting in authentic copper vats, we’ve created an original alpine-style cheese unmatched in America. Careful crafting brings out light floral notes, nutty undertones, a hint of fruitiness and a mellow finish. Perhaps that’s why Grand Cru has been awarded year after year by the American Cheese Society and in the World Champion Cheese Contest. It's perfect for fondue, french onion soup, croque monsieur, and as  a topping to any kind of potato. Pairs perfectly with apples, pears, grapes, and apple cider. Ingredients: Pasteurized Cow's milk, salt, enzymes.Contains milk	6	oz	5.49	14.64	lb	Dairy	Cheese	http://goodeggs2.imgix.net/product_photos/gBzWgCoyRnm8jUwHrQyy_20160512-Emmi_GrandCru_MG_9472.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
679	Rioly Run	Rioly Run is a washed-rind cow’s milk cheese that expresses all of the fruit and funk of the beer it is washed in. Libertine Brewing is located in San Luis Obispo, near our farm and provides us with its Saison beer to bathe our cheese. This cheese has a slightly musty but sweet aroma and orange-brown mottled rind. The paste is pale yellow, and has a balanced springy and creamery texture. This cheese stands alone well on a cheese plate, but is also very well suited to a raclette-style treatment of melting + scraping.Ingredients: Pasteurized cows milk, beer, salt, calcium chloride, cultures, and rennet.	8	oz	12.99	25.98	lb	Dairy	Cheese	http://goodeggs1.imgix.net/product_photos/QYvm6c6QZ2tK7Xcs3rrg_20160705-SteppLadder_RiolyRun_MG_4284.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
680	Briana	Briana is a semi-firm, smear-ripened cheese, dense and easily melted.  It is carefully aged for a minimum of 90 days to develop a wonderfully complex flavor.Because we use the freshest milk from our own grass-fed cows, our specialty cheeses have a delicious flavor unique to our farm.  Our cheeses are hand crafted with care using our own specially-developed artisan recipes and the freshest grass-fed ingredients.   We know you will taste the difference.Ingredients: Raw cow's milk, cultures, salt.Contains dairy	8	oz	12.99	25.98	lb	Dairy	Cheese	http://goodeggs1.imgix.net/product_photos/HUF2tn3sRASLjFY7LBjA_20161004-JacobsBrichford_Briana_MG_2642.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
681	Everton	Everton is aged 8-12 months, styled after Alpine style cheeses, with a firm, creamy texture and a savory, sweet flavor that gets sharper with age. Good Food Awards Winner 2014.Because we use the freshest milk from our own grass-fed cows, our specialty cheeses have a delicious flavor unique to our farm.  Our cheeses are hand crafted with care using our own specially-developed artisan recipes and the freshest grass-fed ingredients.   We know you will taste the difference.Ingredients: Raw cow's milk, cultures, salt.Contains dairy	8	oz	12.99	25.98	lb	Dairy	Cheese	http://goodeggs2.imgix.net/product_photos/A7oHHiFTRSRhmCcb8PVe_20161004-JacobsBrichford_Everton_MG_2640.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
682	Briana	Briana is a semi-firm, smear-ripened cheese, dense and easily melted.  It is carefully aged for a minimum of 90 days to develop a wonderfully complex flavor.Because we use the freshest milk from our own grass-fed cows, our specialty cheeses have a delicious flavor unique to our farm.  Our cheeses are hand crafted with care using our own specially-developed artisan recipes and the freshest grass-fed ingredients.   We know you will taste the difference.Ingredients: Raw cow's milk, cultures, salt.Contains dairy	6	oz	9.79	26.11	lb	Dairy	Cheese	http://goodeggs1.imgix.net/product_photos/HUF2tn3sRASLjFY7LBjA_20161004-JacobsBrichford_Briana_MG_2642.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
683	Plain Cream Cheese Style Spread	Our cream cheese style spreads are made with all natural ingredients to create a complex flavor and a velvety smooth texture. Each batch is cultured to add depth, sweetness, and a subtle tang. Our spread is great smeared on a bagel, or served alongside fresh fruit or grilled vegetablesOur plain cream cheese style spread also works as a sour cream substitute, and can be used in any recipe that calls for dairy-based cream cheese.Ingredients: Almond milk (water, almonds), salt, enzyme, vinegar, xanthan gum, locust bean gum, guar gum, cultures.Contains Tree Nuts (Almonds)	8	oz	5.99	11.98	lb	Dairy	Cheese	http://goodeggs1.imgix.net/product_photos/6JSM64YISPi6YhSpf161_20160601-KiteHill_CreamCheese_MG_0940.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
686	Chive Cream Cheese Style Spread	Our cream cheeses style spreads are made with all natural ingredients to create a spread with complex flavor and velvety smooth texture. Each batch is cultured to add depth, sweetness, and a subtle tang. Chives and white pepper add a pop of freshness and spice. It is great smeared on a bagel, or served alongside fresh fruit or grilled vegetables.Try our chive cream cheese style spread mixed into mashed potatoes or served as an appetizer spread with crackers.Ingredients: Almond milk (water, almonds), salt, enzyme, chives, vinegar, xanthan gum, locust bean gum, guar gum, white pepper, cultures.Contains Tree Nuts (Almonds)	8	oz	5.99	11.98	lb	Dairy	Cheese	http://goodeggs2.imgix.net/product_photos/1saPDxqToaZZIoY5ISUW_20160621-KiteHill_ChiveCreamCheese_MG_3208.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
687	Double Cream Sundried Tomato Garlic Vegan Cheese	A creamy, robust, and pungent wheel filled with deep Mediterranean flavors. Serve as is with crackers, or toss with pasta for an instant creamy sauce. Free of cholesterol, lactose, egg, gluten and soy. Non-GMO.Ingredients: Organic Cashews, Filtered Water, Organic Coconut Oil, Organic Dried Tomatoes, Organic Chickpea Miso (Organic Chickpeas, Organic Rice Koji, Sea Salt, Water, Koji Spores), Sea Salt, Nutritional Yeast, Organic Garlic Powder, Cultures	6.5	oz	9.99	24.59	lb	Dairy	Cheese	http://goodeggs1.imgix.net/product_photos/wbxklJadRoC54ohgnVmE_FK1A0445.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
688	Classic Double Cream Chive Vegan Cheese	This versatile round packs a buttery, savory, mild herbal garlic flavor. The creamy delight is a crowd pleaser enjoyed by everyone from kids to sophisticated foodies. Serve on crackers or use as a delicious sandwich spread. Free of cholesterol, lactose, egg, gluten and soy. Non-GMO product.Ingredients: Organic Cashews, Filtered water, Organic Coconut Oil, Organic Chives, Organic Chickpea Miso (Organic Chickpeas, Organic Rice Koji, Sea Salt, Water, Koji Spores), Sea Salt, Nutritional Yeast, Cultures.	6.5	oz	9.99	24.59	lb	Dairy	Cheese	http://goodeggs1.imgix.net/product_photos/mJGCAXwqTsOfTQe9SGUJ_FK1A0467.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
689	Double Cream Garlic Herb Vegan Cheese	Buttery and savory, a classic combination of garlic and herbs in a creamy base makes for delightful eating on crackers, melted on a baked potato, or as a schmear for bagels. Free of cholesterol, lactose, egg, gluten and soy. Non-GMO product.Ingredients: Organic Cashews, Filtered Water, Organic Coconut Oil, Organic Parsley, Organic Chickpea Miso (Organic Chickpeas, Organic Rice Koji, Sea Salt, Water, Koji Spores), Sea Salt, Organic Garlic, Nutritional Yeast, Organic Herbs, Cultures	6.5	oz	9.99	24.59	lb	Dairy	Cheese	http://goodeggs1.imgix.net/product_photos/R312hF9kSMqQAxyqCh9t_FK1A0457.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
690	Aged English Smoked Farmhouse	A semi-hard wheel with rich, smoky and sharp tones that linger on your tongue. Best served at room temperature with crackers, warm in sandwiches, or added to sauces.Free of cholesterol, lactose, egg, gluten and soy. Non-GMOIngredients: Organic Cashews, Filtered Water, Organic Chickpea Miso (Organic Chickpeas, Organic Rice Koji, Sea Salt, Water, Koji Spores), Nutritional Yeast, Sea Salt, Cultures	6.5	oz	10.99	27.05	lb	Dairy	Cheese	http://goodeggs2.imgix.net/product_photos/E15nILg3Qw6VApm7WEuM_FK1A0412.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
691	Goat Cheese Log	Our deliciously fresh goat cheese logs are mild flavored with a soft, spreadable texture made in the traditional French elongated shape. Laura Chenel’s Log is the original cheese, when sliced into rounds, breaded and baked, that adorned the iconic Mixed Greens and Goat Cheese Salad made famous at Chez Panisse restaurant in Berkeley, California.Slice the log into rounds, coat with fine homemade bread crumbs, chopped toasted walnuts or pecans, and bake until browned. Serve atop dressed salad greens – and dream that you are at Chez Panisse sitting in those perfect seats at the front with light streaming in through the windows.Ingredients: Cultured Pasteurized Goat Milk, Salt, Enzymes.	8	oz	6.49	12.98	lb	Dairy	Cheese	http://goodeggs2.imgix.net/product_photos/MLRZJ3wT0mlk5n4dck6y_FK1A7444.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
692	Chef Chevre	The name ‘Chef’s Chèvre’ is one indication of the 20-year popularity this cheese has had with chefs, caterers and quality foodservice operations. Chef’s Chèvre is our highest moisture, very freshest cheese. It is clean-tasting, smooth, light, tangy and spreadable. The texture of Chef’s Chèvre is very similar to cream cheese and the cooking applications are as diverse, with the benefit of being lower in calories and cholesterol and higher in protein than cream cheese.For professionals or “home chefs,” Chef’s Chèvre melts perfectly into sauces for pasta and poultry dishes. It mixes well with herbs for topping crostini or filling ravioli and tortellini. Chef’s Chèvre is the preferred cheese in fluffy goat cheesecakes.Ingredients: Cultured Pasteurized Goat Milk, Salt, Enzymes.	8	oz	6.99	13.98	lb	Dairy	Cheese	http://goodeggs1.imgix.net/product_photos/cMs7PIhiRauRxvpnmEfy_FK1A7522.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
693	Garlic and Chive Chèvre	Chèvre is a fresh, light-textured, rindless goat cheese that is similar to cream cheese but softer and fluffier with only 1/3 of the fat and calories. Made in the French style, Redwood Hill's Garlic and Chive chevre is light and fluffy with hints of minced garlic and chopper chives.Storage & Serving SuggestionsMild and fresh with a complex flavor, Fresh Chèvre  is versatile and can be used in both savory and sweet dishes. Try in a roasted beet salad, over pasta, in a cheesecake or simply spread on a bagel.Try this delicious goat cheese spread, one of our favorite recipes!Opened cheese will last 7-10 days stored at 38-42 degrees in your refrigerator.Ingredients: Garlic Chive Chèvre Pasteurized cultured Grade A goat milk, chives, organic garlic, sea salt and vegetable enzyme.	4	oz	5.99	23.96	lb	Dairy	Cheese	http://goodeggs1.imgix.net/product_photos/BwkvVdrSyOiieuBvYFmz_FK1A4415.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
694	Black Truffle Goat Log	The coveted Italian black summer truffle is sure to enhance any recipe. The truffle’s earthy perfume is balanced with bright fresh goat cheese for creamy, rich-textured appetizers or gratins.AWARDS: CalExpo State Fair 2013 & 2014, SilverIngredients: Made with Cultured, Pasteurized Goat Milk, Black Truffles, Salt, Enzymes.	5.4	oz	5.79	17.16	lb	Dairy	Cheese	http://goodeggs2.imgix.net/product_photos/kF4snnrvQTq8SsKdVrma_FK1A7907.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
695	Liwa Goat Cheese	Liwa is a fresh, 3 day goat cheese from West Marin, modeled after a European style farmer's cheese. This cheese is amazing paired with just about anything. Customers love it on their morning toast, in salads, on fruit or in a steak sandwich. Very versatile! http://www.tolumafarms.com/ 	12	oz	13.99	18.65	lb	Dairy	Cheese	http://goodeggs2.imgix.net/product_photos/kcMWrQqbQneY4p5Im5Ry_20160602-TamalesFarmstead_Liwa_MG_1037.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
697	Humboldt Fog Mini	The subtle, tangy flavor and distinctive layer of edible vegetable ash are a prized combination in this iconic American original. You'll enjoy buttermilk and fresh cream, complemented with floral notes, herbal overtones and a clean citrus finish. As Humboldt Fog matures, the layer of proteolysis just under the rind will increase developing a more intense flavor.Serving Suggestions:Drizzle with honey and serve with prosciutto, tart apple and marcona almonds.Crumble atop mixed baby greens and roasted beets and serve with a simple vinaigrette.Pairing Suggestions:Wheat Beer, IPA, Pale Ale, and StoutsSauvignon Blanc, bubbly, Rose, and Pinot NoirIngredients: Pasteurized cultured goat milk, salt, enzymes, and vegetable ash.Contains dairy	16	oz	21.99	21.99	lb	Dairy	Cheese	http://goodeggs2.imgix.net/product_photos/lkKQhNTMTLafKq7X5ueV_20160825-CypressGrove_GoatHumboltFog_MG_8750.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
698	Goat Brie	This is a new product from Laura Chenel made in a Brie-style using goat's milk. After again between 9-14 days the cheese develops a bloomy rind with a delicious, buttery inside.Ingredients: Cultured pasteurized Goat milk, salt and microbial enzymes.	5	oz	7.99	25.57	lb	Dairy	Cheese	http://goodeggs1.imgix.net/product_photos/ubSR7LaJQmK30m5m1wRy_FK1A7451.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
699	Teleeka Goat, Sheep & Cow's Cheese	Teleeka, named for the Miwok word for "three," blends farmstead goat, sheep and a neighbor's cow milk into a bloomy-rinded soft-ripened cheese. The flavor profile of this award winning cheese is buttery, creamy and rich with deep afternotes. Pairs well with figs, fruit, prosecco/champagne, beer and cider. Leave at room temperature before serving/eating, gets nice and gooey!	8	oz	12.99	25.98	lb	Dairy	Cheese	http://goodeggs1.imgix.net/product_photos/bzbzQPReTqK0ppqKFs7X_FK1A0278.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
700	Kenne Goat Cheese	"This is one of my favorite cheeses to put on a summer time cheese plate! It's an all goat soft-ripen cheese reminiscent of a robiola. I like to pair this with some local honey, bubbly, or a nice, light refreshing kolsch"- Erin, Grocery BuyerKenne (pronounced “kennay”) is a farmstead cheese made entirely from goat’s milk – the word “kenne” is the term the area’s early inhabitants, the Miwoks, used for “one.” It has a dense, creamy texture and a delicate wrinkly rind, which are meant to conjure the Italian soft-ripened cheeses. The high quality of the milk is perfectly showcased in the paste’s mild, slightly earthy flavors. kenne pairs well with beer, champagne, fruit and nuts.We are thrilled to see this cheese in so many of our favorite Bay Area restaurants.http://www.tolumafarms.com/ 	8	oz	12.99	25.98	lb	Dairy	Cheese	http://goodeggs2.imgix.net/product_photos/AyxYSOTxS9C8tQkGWWeH_20160602-TamalesFarmstead_Kenne_MG_1031.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
701	Purple Haze	Purple Haze is Cypress Grove's lush and fluffy chevre, sprinkled with tender purple buds of lavender and fennel pollen. The lavender and fennel pollen add an ethereal quality to the already rich goat cheese; floral and piquant, Purple Haze tastes like spring air after a long rain.Recipe Suggestions:Stuff into pitted Medjool dates and wrap with prosciutto.Crumble on fresh mixed baby greens; add sliced strawberries, toasted pecans and balsamic reduction.Purple Haze® CheesecakeFromage Blanc FrostingIngredients: Pasteurized goat milk, salt, fennel pollen, lavender, cultures and enzymes.Awards:2nd Place, American Cheese Society, 2013Best of Show, California State Fair Cheese Competition, 2009Best of Class, U.S. Cheese Championship 2011Third Place, World Championship Cheese Contest 2014	4	oz	6.79	27.16	lb	Dairy	Cheese	http://goodeggs1.imgix.net/product_photos/x05v8TEqRkOd0nTs7GyI_0WwMrbuIFw969E82sSg9TCQD_Qyf1YKjM-jmzDJij0c.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
702	Atika Goat & Sheep Cheese	Atika is a blend of sheep and goat milk in roughly equal parts, this 3- to 4-pound tomme smells like warm melted butter and crème fraiche. The rind is hard, dry and deeply marked by the draining basket. The firm, dry paste has numerous small openings, and the flavor is buttery and tart. - review by Janet Fletcher.  Atika is aged between 3 and 6 months.  This a farmstead cheese, the goats and sheep are raised and milked on the same farm that the cheese is made thus the milk is as fresh as it can possibly be. Pairs well with local, crisp apples.  Atika was a 2014 Good Food Award winner.  This award means a great deal to us since it is judging on both taste and the overall sustainability of our farm and creamery.  This is to say how we treat the land, animals, people and food!  This cheese also won a 2nd place ribbon in its class in 2014 at the American Cheese Society conference.  	5	oz	10.29	32.93	lb	Dairy	Cheese	http://goodeggs1.imgix.net/product_photos/1DNJOEs0SQO39V554YJJ_FK1A0847.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
703	Bijou	"Vermont Creamery's Bijou is my go-to goat cheese for snacking. Grab some apples or other fruit and this two pack and you have your 3pm snack for all week." Erin, BuyerAn American line of French-style ripened goat cheeses wouldn’t be complete without a small Bijou-like Crottin. Bijou is French for “jewel” and epitomizes all that is special about goats’ milk and the making and caring for a small cheese. This geotrichum-rinded cheese has a unique sweet and yeasty flavor.Made with fresh pasteurized goats’ milk from family farms, Bijou curd coagulates overnight, drains in cheese cloth and is then shaped into little buttons. Dried, and ripened for one week, Bijou evolves with time, gaining a sharpness and complexity after thirty days. Serve toasted on baguette with a salad for a traditional French Bistro Chevre Chaud or on a cheeseboard.Ingredients: Pasteurized goats' milk, salt, cultures, enzymes.contains dairy	4	oz	10.99	43.96	lb	Dairy	Cheese	http://goodeggs2.imgix.net/product_photos/d8YDvdAQSWgY9YjndJ3w_FK1A4643.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
704	Honey Goat Log	" Tiny white flowers bloom on California’s orange trees each spring imparting a fragrant fresh citrus scent to local honey. We blend just the right balance of orange blossom honey and fresh chèvre for natural sweetness. Like cream cheese, Honey Log is spreadable- ready for breakfast, lunch or dessert any time.AWARDS: CalExpo State Fair 2014, Gold; CalExpo State Fair 2013, Silver Ingredients: Made with Cultured, Pasteurized Goat Milk, Honey, Salt, Enzymes.	5.4	oz	5.49	16.27	lb	Dairy	Cheese	http://goodeggs2.imgix.net/product_photos/0ByjV4VCSSGzD7AUQJzb_FK1A7420.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
705	Plain Chèvre	Chèvre is a fresh, light-textured, rindless goat cheese that is similar to cream cheese but softer and fluffier with only 1/3 of the fat and calories. Made in the French style, Redwood Hill's chevre is light, fluffy and sumptuously spreadable. It offers notes of citrus, balanced by a mild earthiness that makes it delicious in both savory and sweet dishes.Ingredients: Pasteurized cultured Grade A goat milk, sea salt and vegetable enzyme.	4	oz	5.69	22.76	lb	Dairy	Cheese	http://goodeggs2.imgix.net/product_photos/Fi3jTmWCRCyK8WD4TIaO_FK1A0873.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
706	Organic Firm Tofu	"This tofu is a great consistency. I like to marinate in sesame oil, ponzu, minced garlic and rice vinegar, then fry lightly in peanut oil to use in noodle or cabbage salads!" - Darren, Grocery BuyerOur Organic Firm Tofu is made with our rich soymilk that is\nsweet and creamy. We brew our soymilk with just the right amount of water and\nsoybeans. Then we bring it to a specific temperature in order to produce the\nperfect consistency of texture and flavor.  Precision and accuracy is how we make our tofu\nin order to provide the best quality from our family to yours. \nWe are the largest and oldest family (three generations)\nowned and operated manufacturer in Northern California. \nWe take great pride in our tofu that is made with our family\nrecipe for over 90 years.  Our tofu and\nsprouts are produced with only the highest quality ingredients and care.   We use a high quality organic soybean that\nare grown in the USA and is USDA approved non-GMO. Wo Chong Company, Inc.  has\ndeveloped, maintains and administers a HACCP-based Good Manufacturing Practices\n(GMPs) Food Safety Program.For firm tofu, we recommend marinating the tofu with your favorite sauces or leave it as it is, then grill, bake, or stir fry it to add to your salad, sandwich or rice. \nIngredients: Water, Organic Soybeans, Calcium Sulphate	14	oz	1.99	0.14	oz	Dairy	Ready to Eat	http://goodeggs1.imgix.net/product_photos/0GqGYVJURg6bnnl2g4q2_FK1A5646.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
707	Classic Tempeh	Fresh, unpasteurized, handcrafted organic tempeh!  Perfectly tender for sandwiches, stir fries, soups, salads and more. GMO-free, wheat-free and fermented with love. Try our tasty tempeh recipes at http://www.aliveandhealing.com/recipes.  Ingredients: Organic GMO Free Soybeans, Organic Rice Vinegar, Organic Tempeh Culture, Organic Tapioca StarchCONTAINS: SOY	8	oz	3.99	7.98	lb	Dairy	Ready to Eat	http://goodeggs1.imgix.net/product_photos/528AhCL5Qq55OY5C5IzG_FK1A0266.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
708	Organic Hodo Braised Tofu	At\nHodo, we use time-honored, artisan methods to make a creamy, higher protein\nsoymilk that is the foundation of all our hand-crafted tofu. The result is more\ncomplexity and depth of flavor to our firm tofu. \n To make Hodo Braised Tofu, we braise our signature Hodo Firm Tofu in a light Chinese Five-Spice blend and caramel sauce that imparts a lovely fragrance and rich flavor. A fully cooked product, you can enjoy Hodo Braised Tofu straight, in a salad or as a filling for sandwiches and omelets. We love to add it to stir-frys, congee, and noodle soups. All organic and gluten-free, there’s a freshness you can actually taste. Ingredients: Organic Firm Tofu* (Water, Organic,  Soybeans, Calcium Sulfate), Water, Sea Salt,\nFive-Spice* (Star Anise*, Cinnamon*, Fennel*, Cloves*, Black Pepper*), Brown\nSugar**OrganicRecipes: http://goo.gl/SQN42W	8	oz	4.19	0.52	oz	Dairy	Ready to Eat	http://goodeggs2.imgix.net/product_photos/bwjAWf3SSHyQpJRoqTRG_853404002220.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
709	Organic Hodo Thai Curry Tofu Nuggets	Hodo Thai Curry Tofu Nuggets are flavorful and fragrant\nmorsels of tofu cubes that we fry then braise in an aromatic curry of lemongrass and warm, exotic spices that impart\na slightly spicy and wonderful flavor explosion in your mouth. Hodo Thai Curry Nuggets\nare juicy, slightly spicy and tasty, and have a chewy texture.  Hodo Thai Curry Nuggets are\ncertified organic and gluten-free. Try\nthem cold or hot, straight out of the package or as the star in a salad, pasta\nor a sauté. We particularly love the\nnuggets in a sandwich with sliced apples. Toss some into your lunch box as a\nhealthy snack!.This product was formerly named Hodo Curry NuggetsIngredients:Hodo Organic Tofu Puffs (Hodo Organic Tofu [Water, Organic\nSoybeans, Calcium Sulfate], Soybean Oil*), Water, Evaporated Cane Juice*, Sea\nSalt, Curry Powder* (Coriander*, Cumin*, Turmeric*, Mustard*, Black Pepper*,\nFenugreek*, Cayenne*), Garlic Powder*, Sesame Oil*, Chilies*, Cayenne*,\nLemongrass**OrganicRecipes: http://goo.gl/I0Azi5	8	oz	5.49	0.69	oz	Dairy	Ready to Eat	http://goodeggs2.imgix.net/product_photos/sZfqxLqwQY6IYErmRnLA_853404002695.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
710	Organic Hodo Five-Spice Tofu Nuggets	Hodo Five-Spice Tofu Nuggets are flavorful and fragrant\nmorsels of tofu cubes that we fry then braise in an organic apple cider with an\nAsian five-spice blend, which infuses the tofu with aromatic spices.  Hodo Five-Spice Nuggets\nare juicy and tasty, and have a chewy texture. The\nnuggets are savory with a hint of smoky sweetness.Hodo Five-Spice Nuggets are\ncertified organic and gluten-free.  They are great eaten cold or hot, and makes for a delicious treat\nEnjoy the Nuggets straight, on a salad, as a sandwich filling or as a\nstir-fry or noodle-dish ingredient. We\nparticularly love the Nuggets grilled.  Ingredients: Hodo Organic Tofu Puffs (Hodo Organic Tofu [Water, Organic\nSoybeans, Calcium Sulfate], Soybean Oil*), Water, Apple Juice*, Gluten-Free\nTamari* (Water, Soybeans*, Salt, Alcohol*), Brown Sugar*, Asian Five-Spice* (Star\nAnise*, Cinnamon*, Fennel*, Cloves*, Black Pepper*)*OrganicRecipes: http://goo.gl/ZkNYzv	8	oz	5.49	0.69	oz	Dairy	Ready to Eat	http://goodeggs2.imgix.net/product_photos/Y8bS6euQRIm9QAQWzzPK_853404002688.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
711	Organic Hodo Sichuan Mapo Tofu	Hailed as one of the most popular Chinese\ndishes ever, the legendary Mapo tofu is a spicy stir fry of our signature tofu,\nwith the heady, floral fragrance and tongue-tingling bite of Sichuan peppercorn.  We added miso and mushrooms for a richer\nflavor.  Hodo Sichuan Mapo Tofu is a quick, easy\nand  delicious entrée. ll organic, non-GMO, and ready-to-serve.  The entrée is all vegan and made with\ngluten-free ingredients.  \nHodo\nSichuan Mapo Tofu is ready-to-eat!  Just\nsimply reheat the entrée and serve over rice or noodles.  For a traditional option, brown and cook\nground meat in a skillet, then add Hodo Sichuan Mapo Tofu and stir to combine.   Ingredients: Hodo Organic Firm Tofu (Water Organic Soybeans,\nCalcium Sulfate), Water, Soybean Oil*, Miso*, (Cultured White Rice*, Soybeans*,\nWater, Sea Salt), Garlic*, Ginger*, Rice Vinegar* (Water, Rice*), Dried\nMushrooms*, Paprika*, Sichuan Peppercorn*, Sea Salt, Chilies*, White Pepper*Contains soy* Organic	10	oz	5.49	0.55	oz	Dairy	Ready to Eat	http://goodeggs1.imgix.net/product_photos/wjDvE67XRfWYyS1CZkUr_20160504-HodoSoy_SichuanTofu_MG_8616.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
712	Mushroom Risotto Veggie Burger	This veggie burger contains a mix of mushrooms, arborio rice, peas, parsley & truffle oil. It's dense texture and earthy flavor will satisfy any craving. Ingredients: Cooked\narborio rice (arborio rice, water), cooked\nbrown rice (brown rice, water), roasted button\nmushrooms, button mushrooms,\nexpeller pressed canola oil, potato flakes,peas, carrots, onions, cooked\nwild rice (wild rice, water), kale,\nroasted portobello mushrooms, celery, roasted garlic, arrowroot powder, sea salt, parsley, brown rice\nflour, truffle oil (olive oil,\nnatural truffle extract, natural flavoring,\nwhite truffles), black pepper\n\n	10	oz	3.99	0.4	oz	Dairy	Ready to Eat	http://goodeggs2.imgix.net/product_photos/3NSQPhXRSnqmLctZmcIZ_20160708-DrPraeger_MushroomVeggie_MG_5012.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
713	California Veggie Burger	The California Veggie burger is the OG veggie burger from Dr. Praeger's. It's packed full of carrots, peas, broccoli and spinach. Bake it, toast it, or pan-fry this patty. It doesn't matter how you choose to cook it, the full flavor will help you understand why this is Dr. Praeger's most popular veggie burger. Ingredients:\nCarrots, onions, string beans, oat bran, soybeans, zucchini,\nexpeller pressed canola oil, peas, broccoli, corn, soy flour, spinach, red\npeppers, arrowroot powder, corn starch, garlic, corn meal, sea salt, parsley,\nblack pepper.Contains soy	10	oz	3.99	0.4	oz	Dairy	Ready to Eat	http://goodeggs1.imgix.net/product_photos/JiauWVZFT2qBpWpi8cai_20160708-DrPraeger_CaliforniaBurger_MG_5020.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
714	Super Green Veggie Burger	If you need to up your daily green intake this veggie burger is perfect for you! It's full of 6 different greens and a hint of ginger and cayenne to add a little kick of spice. Ingredients: Collard\ngreens, cooked quinoa (quinoa, water), kale, swiss chard, turnip greens,\nmustard greens, spinach, expeller pressed canola oil, potato flakes, onions,\napples, arrowroot powder, cooked teff (teff, water), parsley, roasted garlic,\nginger, sea salt, hemp protein, black pepper, cayenne pepper, coriander\n	10	oz	3.99	0.4	oz	Dairy	Ready to Eat	http://goodeggs2.imgix.net/product_photos/z3oMjoXNTl2p6qQgLvji_20160708-DrPraeger_SuperGreens_MG_5018.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
715	Organic Hodo Tofu Veggie Burger	Hodo Tofu Veggie Burgers are flavorful, juicy and ‘meaty’ tofu patties studded with a mirepoix of carrots, onions and cabbage. Unlike most other veggie burgers, ours is free of soy protein isolates and fillers - we simply use our whole bean, organic, non-GMO tofu as a base. We grind our signature firm tofu, fold in fresh cut vegetables, and season it with umami-rich, ground shiitake mushroom. Wholesome, and awesome, these fully-cooked hearty vegan burgers will tempt even the most serious of carnivores. And here’s the beef on our vegan burger -- each serving of the Tofu Veggie Burger is a whopping 40% of your daily protein needs and rivals any traditional quarter pounders in the protein department. All vegan, organic and nopn-GMO, and gluten-free.Each pack contains two 4oz patties. Buns and trimmings are not included.Ingredients: Hodo Organic Firm Tofu*, Carrots*, Cabbage*, Onions*, Seasalt,\nShiitake Mushroom*, Garlic Powder*, White Pepper*, Soy Oil"* OrganicRecipes: http://goo.gl/u7Wwua	8	oz	5.49	0.69	oz	Dairy	Ready to Eat	http://goodeggs1.imgix.net/product_photos/ATCJgg41TVeR5nfzNtl9_853404002268.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
716	Brown Rice Spring Roll Wrappers	Also known as "rice paper," these healthy and gluten-free Brown Rice Spring Roll Wrappers just need to be moistened briefly with warm water to create a tasty and flexible wrap for any combo of veggies, herbs, meat, tofu, and noodles. Serve up a fun DIY spring roll dinner where everyone can pick their favorite ingredients (we like a combo of lettuce, thinly sliced carrots and cucumbers, fresh herbs like shiso, mint, or basil, and grilled meat) or pack them pre-made for nutritious school snacks and work lunches. For a healthy and kid-friendly dessert, wrap a quartered banana in rice paper and fry it lightly in coconut oil or butter until golden and crispy. Versatile and super speedy, this is one pantry staple we'll never be without.Package contains 12 spring roll wrappers.Ingredients: brown rice, cassava, water, organic green tea, salt.	8	oz	3.99	0.5	oz	Dairy	Ready to Eat	http://goodeggs2.imgix.net/product_photos/ZGeKbdFPSR2FMz1SqfrQ_FK1A5237.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
717	Traditional Seitan	Seitan (pronounced “say-tan”) is a traditional Japanese food created by using water to wash the starch away from wheat flour and retaining the wheat protein. With an impressively meat-like texture and robust flavor, Upton’s Naturals Seitan is both high in protein and oil-free. This highly versatile variety of Seitan comes in minimally seasoned larger chunks just waiting for you to exercise your culinary creativity. Goes well on sandwiches, in a marinade, over a salad or in a wrap.Keep refrigerated or frozen. Heat and serve. Enjoy within 5 days of opening. Can be baked into your favorite recipes or for best results pan fry with a small amount of oil.Ingredients: Water, vital wheat gluten, soy sauce (water, wheat, soybeans, salt), whole wheat flour, garlic, sea salt, onion.Allergens: Wheat, soy	8	oz	4.49	0.56	oz	Dairy	Ready to Eat	http://goodeggs2.imgix.net/product_photos/9TT2zgFMSdWqHg5QA8VH_20160712-Uptons_TraditionalSeitan_MG_5124.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
718	Chorizo Seitan	Seitan (pronounced “say-tan”) is a traditional Japanese food created by using water to wash the starch away from wheat flour and retaining the wheat protein. With an impressively meat-like texture and robust flavor, Upton’s Naturals Seitan is both high in protein and oil-free. This mildly spicy Seitan is an oil-free version of a traditional ground sausage. Enjoy it on tacos, nachos, over rice, or in a breakfast scramble.Keep refrigerated or frozen. Heat and serve. Enjoy within 5 days of opening. Can be baked into your favorite recipes or for best results pan fry with a small amount of oil.Ingredients: Water, vital wheat gluten, soy sauce (water, wheat, soybeans, salt), apple cider vinegar, garlic, guajillo, sea salt, onion, cumin, black pepper.Allergens: Wheat, soy	8	oz	4.49	0.56	oz	Dairy	Ready to Eat	http://goodeggs1.imgix.net/product_photos/H6lVvt6HRTetdUDC04yo_20160712-Uptons_ChorizoSeitan_MG_5121.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
719	Bacon Seitan	Seitan (pronounced “say-tan”) is a traditional Japanese food created by using water to wash the starch away from wheat flour and retaining the wheat protein. With an impressively meat-like texture and robust flavor, Upton’s Naturals Seitan is both high in protein and oil-free. Cook this seitan bacon a little or cook it a lot (for you extra crispy vegan Bacon lovers). This smoky seitan makes a great BLT, salad or pizza topping, or enjoy it as a side. A portion of all proceeds from Bacon Seitan retail packages go to keeping happy pigs, happy at Farm Sanctuary!Keep refrigerated or frozen. Heat and serve. Enjoy within 5 days of opening. Can be baked into your favorite recipes or for best results pan fry with a small amount of oil.Ingredients: Water, vital wheat gluten, soy sauce (water, wheat, soybeans, salt), whole wheat flour, natural hickory smoke concentrate, paprika, sea salt, onion. Allergens: Wheat, soy	5	oz	4.49	0.9	oz	Dairy	Ready to Eat	http://goodeggs1.imgix.net/product_photos/WGgj2nNzT4esvoy5dqPt_20160712-Uptons_BaconSeitan_MG_5140.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
765	Heritage Turkey (8-10 lb)	BN Ranch's Heritage Turkey flock is hatched and raised enjoying the sunshine and fresh air of Ballico, CA. The birds are fed Non-GMO Project Verified vegetarian feed and raised using the highest environmental and humane standards. With an even balance of dark and white meat, the Heritage Turkey is the most flavorful and delicious Thanksgiving dinner you'll ever enjoy.	8	lb	74.99	9.37	lb	Meat	Poultry	http://goodeggs2.imgix.net/product_photos/RLGuRANuTyyTWnDPCbWP_20161021-Heritage_Turkey_MG_4653.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
720	Organic Hodo Sesame Yuba Noodles	Hodo Sesame Yuba Noodles are a delectable meal of hand-cut\nyuba strips.  Yuba is the\nthin veil that forms on the surface as the cream rises in heated soymilk. To\nmake our delicious Hodo Sesame Yuba Noodles, we first marinate our yuba, and then sear to bring out\nits amazing natural flavors. We then hand\ncut the yuba into ribbons and glaze them with a savory, creamy and luscious tahini dressing, which\nis delightfully rich with fruity and nutty undertones.  \nHodo Sesame Yuba Noodles are certified organic, gluten-free and are protein-rich with zero cholesterol. The noodles are great\neaten cold or hot. Enjoy the strips\nstraight, on a salad, or as the star in a wrap or\npasta. Simply serve as a side dish for a quick and delicious meal.This product was formerly called as Hodo Sesame Yuba Strips.Ingredients: Hodo Organic Yuba (Water, Organic Soybeans), Water,\nTahini* (Sesame Paste*), Gluten-Free Tamari* (Water, Soybeans*, Salt,\nAlcohol*), Rice Vinegar* (Water, Rice*), Evaporated Cane Juice*, Sesame Oil*, Brown\nSugar*, Cornstarch*, Soybean Oil*, Garlic*, Ginger** OrganicRecipes: http://goo.gl/vvl1fp	8	oz	6.99	0.87	oz	Dairy	Ready to Eat	http://goodeggs2.imgix.net/product_photos/XT60uOy4RLm0jrVPN8oN_853404002718.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
721	Organic Hodo Spicy Yuba Noodles	Hodo Spicy Yuba Noodles are a delectable meal of hand-cut\nyuba strips. Yuba is the\nthin veil that forms on the surface as the cream rises in heated soymilk. To\nmake our delicious Hodo Spicy Yuba Noodles, we first marinate our yuba, and then sear to bring out\nits amazing natural flavors. We then hand\ncut the yuba into ribbons and glaze them with a spicy teriyaki sauce, which packs\na kick and lots of umami.\nHodo Spicy Yuba Noodles are certified organic, gluten-free and are protein-rich with zero cholesterol. The strips are great\neaten cold or hot.  Enjoy the noodles straight, on a salad, as a sandwich filling or as a stir-fry or pasta\ningredient.  This product was formerly called Spicy Yuba Strips. Ingredients: Hodo Organic Yuba (Water, Organic Soybeans), Soybean\nOil*, Water, Rice Vinegar* (Water, Rice*), Gluten-Free Tamari* (Water,\nSoybeans*, Salt, Alcohol*), Evaporated Cane Juice*, Sesame Oil*, Chilies*,\nCornstarch*, Brown Sugar*, Cayenne*,  Garlic*,\nGinger*, Orange Peel*, Licorice*.Recipes: http://goo.gl/vvl1fp	8	oz	6.99	0.87	oz	Dairy	Ready to Eat	http://goodeggs2.imgix.net/product_photos/C2WLKZb8RRaaTHTi35Yl_853404002701.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
722	Organic Hodo Fresh Handmade Yuba	Yuba is a delicacy. Also known as “bean curd sheet,” yuba is the\nthin veil that forms on the surface as the cream rises in heated soymilk. At Hodo, we hand harvest the yuba, one sheet\nat a time. Hodo Yuba has a creamy, nutty and subtly complex flavor,\nwith a firm bite. Hodo Yuba is\ngluten-free, protein-rich and has zero cholesterol. All Hodo Yuba is made from organic, non-GMO, US-grown whole soybeans.Hodo Yuba comes in thin sheets that can be cut\ninto noodles and makes for a great all-organic, gluten-free pasta dish. Hodo Yuba is perfect for wraps and spring\nrolls or as a wonderful addition into stews, soups and sautés.Ingredients: Water, Organic Non-GMO Soybeans.Recipes: http://goo.gl/ExABmN	5	oz	6.99	1.4	oz	Dairy	Ready to Eat	http://goodeggs2.imgix.net/product_photos/gNveqFRSJOuVdRiXDlGg_853404002237.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
723	Bar-B-Que Jackfruit	Jackfruit is native to Asia. It is recognizable for its spiky exterior and notable for its many stages of maturity, each of which yields a different texture and flavor. Our young, green Jackfruit has a texure similar to that of shredded meat and is available pre-seasoned and ready-to-eat. We season with a tangy Bar-B-Que sauce, this Jackfruit makes a great sandwich topped with a cabbage slaw, in a salad or wrap, or over rice. For a sweeter sauce, add brown sugar, agave or maple syrup.Pan Fry: Remove product from pouch, place in pan over medium heat with a small amount of oil (optional) and cook for 5-7 minutes or until thoroughly heated, stirring occasionally. For finer shreds, break up in pan.Ingredients: Jackfruit, tomato paste, vinegar, molasses, filtered water, onion, evaporated cane juice, sea salt, (Produced on dedicated allergen-free equipment in a facility that also processes peanuts and sesame). Refrigeration required after opening. Enjoy within 5 days of opening. For best results, mix product first.	10.6	oz	5.49	0.52	oz	Dairy	Ready to Eat	http://goodeggs2.imgix.net/product_photos/HRxl5Y1QPa85GUuFAMen_20160712-Uptons_BBQJackfruit_MG_5143.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
724	Chili Lime Carnitas Jackfruit	Jackfruit is native to Asia. It is recognizable for its spiky exterior and notable for its many stages of maturity, each of which yields a different texture and flavor. Our young, green Jackfruit has a texure similar to that of shredded meat and is available pre-seasoned and ready-to-eat. This seasoned Jackfruit has a little bit of chili and a hefty dose of lime. Enjoy it in tacos, fajitas, salads, nachos or over rice.Pan Fry: Remove product from pouch, place in pan over medium heat with a small amount of oil (optional) and cook for 5-7 minutes or until thoroughly heated, stirring occasionally. For finer shreds, break up in pan.Ingredients: Jackfruit, onion, chili, vinegar, lime, evaporated cane juice, sea salt, garlic, black pepper, cumin, coriander.(Produced on dedicated allergen-free equipment in a facility that also processes peanuts and sesame). Refrigeration required after opening. Enjoy within 5 days of opening. For best results, mix product first.	10.6	oz	5.49	0.52	oz	Dairy	Ready to Eat	http://goodeggs2.imgix.net/product_photos/q0tqxr5Tg6GkSxP9K3bg_20160712-Uptons_ChiliLimeJackFruit_MG_5152.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
725	Organic Hodo Firm Tofu	Taste the difference in Hodo\nFirm Tofu. At Hodo, we use time-honored, artisan methods to make\na creamy, higher protein soymilk that is the foundation of all our hand-crafted\ntofu. The result is our tofu has more complexity and depth of flavor. Hodo Firm Tofu has a subtle nutty aroma and\nbuttery smooth texture.  Compared to\naverage market brands, Hodo Firm Tofu has 50% higher protein per serving. Our hand-crafted tofu is made from organic, non-GMO, US-grown, whole\n\nsoybeans.\nHodo Firm Tofu is a favorite staple in\nstir-frys, stews and curries.  A fully cooked\nproduct, you can add Hodo Firm Tofu directly to your favorite\nsalad or crumble it into scrambles and chilis. \n\nTo\nfully savor Hodo Firm Tofu’s fresh flavor and superior texture, slice thinly\nand dip with a good olive oil and sea salt. We love to\nmarinate the tofu and grill or broil it.  Ingredients: Water, Organic, Non-GMO Soybeans, Calcium Sulfate.Recipes: http://goo.gl/u7Wwua	12	oz	4.19	0.35	oz	Dairy	Ready to Eat	http://goodeggs2.imgix.net/product_photos/FYuO75k2QDGriDQYTcqN_853404002213.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
726	Heritage Bacon	Dry Cured Bacon- from Fatted Calf Charcuterie, Napa/SFWe are so excited to have Fatted Calf back in the Good Eggs Marketplace!Heritage pork belly dry-rubbed with brown sugar, sea salt, curing salt and organic spices and smoked over fruit wood.Ingredients: Pork Cured with Brown Sugar, Salt, Spices and Sodium Nitrite.	0.75	lb	12.99	17.32	lb	Meat	Turkeys & More	http://goodeggs2.imgix.net/product_photos/QftbMDO8QLGZrq53SGKf_FK1A7965.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
727	Uncured Bacon Lardons (Frozen)	Bacon lardons are the perfect addition to a soup or weekend frittata. They also go great crumpled over a salad or baked potato. Ingredients: Llano Seco pork, sea salt, brown sugar, cherry powder, celery powder, turbinado sugar and natural flavorings.Our pigs are a cross of Duroc and Yorkshire breeds. Our hogs are fed GMO-free, vegetarian grains and legumes, 80% of which are grown on the Rancho. Pigs are raised in deep-bedded hoop barns with continual access to large open air pastures with plenty of sunshine and a great view of the California Buttes. All animals are confinement-free for 100% of their lives, humanely treated with best practices certified by Global Animal Partnership. Our pigs are never fed antibiotics or growth hormones. Llano Seco Pork is the culmination of our mission to provide a variety of products while caring for the people, the animals and the land. We pride ourselves in our holistic approach to ranching.	1	lb	7.79	7.79	lb	Meat	Turkeys & More	http://goodeggs2.imgix.net/product_photos/aLVVDOPvQf6h6wNcBtmB_20160513-CasaRosa_CottageBacon_MG_9511.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
728	Pasture Raised Whole Chicken (Frozen)	Pasture Raised Whole Chicken- from A4 Farms in Santa Rosa, through Sonoma County Meat Co.Whole chickens, perfect for roasting in the oven, spatchcocking and throwing on the grill, or cutting up and using in a soup or stew (or maybe even buttermilk fried chicken? I know, sounds good, right?) These chickens are the conventional "Cornish Cross" breed, so they'll have the proportions most folks are used to these days with all the benefits of being raised on pasture! A4 Farms has deep roots in Santa Rosa; with a longtime family farming history that has included hops, prunes, hay, cattle, and now pasture-raised farm fresh chickens. Jessica and Brian are committed to raising chickens outside and free with no antibiotics, and no hormones. They forage on grasses, and bugs, with access to high quality feed containing essential vitamins and minerals to keep the chickens healthy and vigorous.	2.5	lb	24.99	10.0	lb	Meat	Turkeys & More	http://goodeggs1.imgix.net/product_photos/O3MofGzCR4aGt2998CIw_chicken_spring.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
729	Organic Whole Chicken	Mary's Free-Range Chickens are produced by Pitman Farms, a family owned business that has been raising poultry for three generations. Mary's Free Range Chickens grow naturally with plenty of open space on a ranch in sunny California. These chickens are raised in a humane manner by allowing them to roam in a stress-free environment that is four times the size of the average commercial ranch. Because of cleaner living quarters, a healthier and happier chicken is produced having a better taste.All chickens have access to outdoors. Outdoor areas include ample water and shade Natural behaviors are enriched with:bales of straw (used for pecking)eucalyptus tree branches (used for playing and hiding).Mary's Free-Range Organic Air Chilled Chickens are an additional step up the ladder in humane farming practices; with freedom to move about and a premium diet void of any chemical stimulators.Certified Organic feeds must be Certified by the USDA and everything that goes in them must be certified as well. Mary's Organic Chicken feed does not contain any of the following:NO Animal By ProductsNO Genetically Modified Organisms (GMOs)NO Antibiotics NO Pesticide Treated GrainsNO Grains Grown with Chemical Fertilizers NO Synthetic Amino Acids	3.5	lb	13.99	4.0	lb	Meat	What We Love	http://goodeggs2.imgix.net/product_photos/wF0xk1L8TLS4zwnuPBrU_FK1A3556.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
730	Cross Rib Roast	Oakridge Angus- Grass-fed, Grain Finished Beef - from Sonoma County Meat Co. Perfect for roast beef- rub with salt and herbs, leave overnight, and roast to perfect medium rare and slice thin."Oak Ridge Angus raises premium grass-fed grain-finished beef raised in Knights Valley, just outside Calistoga. Started as a dairy by Massimino LaFranchi 1912, the family sold their award winning Aryshires in 1974 and bought the first generation of the Angus herd they raise now. Pature raised on the rolling hills of northern California, and finished with only spent beer grain, 100% barley from the Bear Republic in Cloverdale; no corn, no antibiotics, no hormones of any kind.This is truly a local, sustainable protein."	2	lb	19.99	9.99	lb	Meat	What We Love	http://goodeggs2.imgix.net/product_photos/4MpYTtaeQ4GccDpe3Vk7_FK1A4691.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
731	Ready to Eat Sous Vide Chicken	Fully Cooked Sous Vide Half Chicken- from Roli Roti in Oakland, Mary's Free-Range ChickenThis chicken comes to you fully cooked and ready to eat—you can add it to a salad or pasta dish as a no-prep protein option and have a complete meal in minutes! Or, for that Roli Roti rotisserie chicken experience in your own kitchen, we recommend you reheat in the oven and in under 20 minutes have a gorgeous, crispy skinned, golden brown roast chicken dinner ready to serve! Ingredients: Mary's Free Range Chicken (antibiotic free, non-GMO diet), SaltReheating Instructions:1. Preheat oven to 400°F.2. Remove chicken from the sous vide packaging and place in an oven safe dish.3. Pat skin dry with a paper towel. If desired, season with olive oil, cracked black pepper or herbs.4. Place in oven for approximately 15-20 minutes until skin is dark golden brown.Note: Because of the sous vide cooking technique, portions of the chicken may appear pink even though it is fully cooked and ready to eat. Best if used within 5 days of delivery.	1.5	lb	9.99	6.66	lb	Meat	Poultry	http://goodeggs2.imgix.net/product_photos/uqvI9dhPQYGgf44QA7Mx_20160726-RoliRoti_SousVideHalfChicken_MG_5808.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
732	Organic Whole Chicken	Mary's Free-Range Chickens are produced by Pitman Farms, a family owned business that has been raising poultry for three generations. Mary's Free Range Chickens grow naturally with plenty of open space on a ranch in sunny California. These chickens are raised in a humane manner by allowing them to roam in a stress-free environment that is four times the size of the average commercial ranch. Because of cleaner living quarters, a healthier and happier chicken is produced having a better taste.All chickens have access to outdoors. Outdoor areas include ample water and shade Natural behaviors are enriched with:bales of straw (used for pecking)eucalyptus tree branches (used for playing and hiding).Mary's Free-Range Organic Air Chilled Chickens are an additional step up the ladder in humane farming practices; with freedom to move about and a premium diet void of any chemical stimulators.Certified Organic feeds must be Certified by the USDA and everything that goes in them must be certified as well. Mary's Organic Chicken feed does not contain any of the following:NO Animal By ProductsNO Genetically Modified Organisms (GMOs)NO Antibiotics NO Pesticide Treated GrainsNO Grains Grown with Chemical Fertilizers NO Synthetic Amino Acids	3	lb	11.99	4.0	lb	Meat	Poultry	http://goodeggs2.imgix.net/product_photos/2JiMoxPHQkeBQsDsclbX_FK1A3564.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
766	Broad-Breasted Turkey (10-12 lb)	Mary's Free-Range Turkeys are raised on healthful grains and allowed to roam in areas four times the size of spaces provided by the average commercial turkey ranch. Their high-protein vegetarian diet provides great nutrition, allowing the turkeys to grow more slowly and resulting in fantastic flavor.	10	lb	32.49	3.25	lb	Meat	Poultry	http://goodeggs2.imgix.net/product_photos/NoTyW8s4Qei5e7quCFK0_20161021-Broadbreasted_TurkeyV2_MG_4677.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
733	Pasture Raised Whole Chicken (Frozen)	Pasture Raised Whole Chicken- from A4 Farms in Santa Rosa, through Sonoma County Meat Co.Whole chickens, perfect for roasting in the oven, spatchcocking and throwing on the grill, or cutting up and using in a soup or stew (or maybe even buttermilk fried chicken? I know, sounds good, right?) These chickens are the conventional "Cornish Cross" breed, so they'll have the proportions most folks are used to these days with all the benefits of being raised on pasture! A4 Farms has deep roots in Santa Rosa; with a longtime family farming history that has included hops, prunes, hay, cattle, and now pasture-raised farm fresh chickens. Jessica and Brian are committed to raising chickens outside and free with no antibiotics, and no hormones. They forage on grasses, and bugs, with access to high quality feed containing essential vitamins and minerals to keep the chickens healthy and vigorous.	2.25	lb	22.49	10.0	lb	Meat	Poultry	http://goodeggs1.imgix.net/product_photos/O3MofGzCR4aGt2998CIw_chicken_spring.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
734	Pasture Raised Whole Chicken (Frozen)	Pasture Raised Whole Chicken- from A4 Farms in Santa Rosa, through Sonoma County Meat Co.Whole chickens, perfect for roasting in the oven, spatchcocking and throwing on the grill, or cutting up and using in a soup or stew (or maybe even buttermilk fried chicken? I know, sounds good, right?) These chickens are the conventional "Cornish Cross" breed, so they'll have the proportions most folks are used to these days with all the benefits of being raised on pasture! A4 Farms has deep roots in Santa Rosa; with a longtime family farming history that has included hops, prunes, hay, cattle, and now pasture-raised farm fresh chickens. Jessica and Brian are committed to raising chickens outside and free with no antibiotics, and no hormones. They forage on grasses, and bugs, with access to high quality feed containing essential vitamins and minerals to keep the chickens healthy and vigorous.	2.75	lb	27.49	10.0	lb	Meat	Poultry	http://goodeggs1.imgix.net/product_photos/O3MofGzCR4aGt2998CIw_chicken_spring.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
735	Organic Boneless Skinless Chicken Breasts (Frozen)	Mary's Free-Range Chickens are produced by Pitman Farms, a family owned business that has been raising poultry for three generations. Mary's Free Range Chickens grow naturally with plenty of open space on a ranch in sunny California. These chickens are raised in a humane manner by allowing them to roam in a stress-free environment that is four times the size of the average commercial ranch. Because of cleaner living quarters, a healthier and happier chicken is produced having a better taste.All chickens have access to outdoors. Outdoor areas include ample water and shade Natural behaviors are enriched with:bales of straw (used for pecking)eucalyptus tree branches (used for playing and hiding).Mary's Free-Range Organic Air Chilled Chickens are an additional step up the ladder in humane farming practices; with freedom to move about and a premium diet void of any chemical stimulators.Certified Organic feeds must be Certified by the USDA and everything that goes in them must be certified as well. Mary's Organic Chicken feed does not contain any of the following:NO Animal By ProductsNO Genetically Modified Organisms (GMOs)NO Antibiotics NO Pesticide Treated GrainsNO Grains Grown with Chemical Fertilizers NO Synthetic Amino Acids	2	lb	17.99	8.99	lb	Meat	Poultry	http://goodeggs2.imgix.net/product_photos/DYyR3ZrwTpSvxJTvXsUv_FK1A6571.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
736	Organic Chicken Breast Tenders (Frozen)	Mary's Free-Range Chickens are produced by Pitman Farms, a family owned business that has been raising poultry for three generations. Mary's Free Range Chickens grow naturally with plenty of open space on a ranch in sunny California. These chickens are raised in a humane manner by allowing them to roam in a stress-free environment that is four times the size of the average commercial ranch. Because of cleaner living quarters, a healthier and happier chicken is produced having a better taste.All chickens have access to outdoors. Outdoor areas include ample water and shade Natural behaviors are enriched with:bales of straw (used for pecking)eucalyptus tree branches (used for playing and hiding).Mary's Free-Range Organic Air Chilled Chickens are an additional step up the ladder in humane farming practices; with freedom to move about and a premium diet void of any chemical stimulators.Certified Organic feeds must be Certified by the USDA and everything that goes in them must be certified as well. Mary's Organic Chicken feed does not contain any of the following:NO Animal By ProductsNO Genetically Modified Organisms (GMOs)NO Antibiotics NO Pesticide Treated GrainsNO Grains Grown with Chemical Fertilizers NO Synthetic Amino Acids	2	lb	17.99	8.99	lb	Meat	Poultry	http://goodeggs1.imgix.net/product_photos/ecWdJsMjReyKo0trRQZs_Good%20Eggs_111515-16.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
737	Organic Boneless Skinless Chicken Breasts	Mary's Free-Range Chickens are produced by Pitman Farms, a family owned business that has been raising poultry for three generations. Mary's Free Range Chickens grow naturally with plenty of open space on a ranch in sunny California. These chickens are raised in a humane manner by allowing them to roam in a stress-free environment that is four times the size of the average commercial ranch. Because of cleaner living quarters, a healthier and happier chicken is produced having a better taste.All chickens have access to outdoors. Outdoor areas include ample water and shade Natural behaviors are enriched with:bales of straw (used for pecking)eucalyptus tree branches (used for playing and hiding).Mary's Free-Range Organic Air Chilled Chickens are an additional step up the ladder in humane farming practices; with freedom to move about and a premium diet void of any chemical stimulators.Certified Organic feeds must be Certified by the USDA and everything that goes in them must be certified as well. Mary's Organic Chicken feed does not contain any of the following:NO Animal By ProductsNO Genetically Modified Organisms (GMOs)NO Antibiotics NO Pesticide Treated GrainsNO Grains Grown with Chemical Fertilizers NO Synthetic Amino Acids	1.5	lb	14.19	9.46	lb	Meat	Poultry	http://goodeggs2.imgix.net/product_photos/m1PPbhmR2uDnY2pDDbY1_FK1A3473.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
738	Organic Ground Chicken (Frozen)	Free-Range Organic Ground Chicken, 95% Lean- from Mary'sGround chicken from Mary's! 95% lean ground chicken, no added fat or skin and as you would expect from Mary's: no antibiotics ever, no preservatives, gluten free, non-GMO Project Verified, and certified USDA Organic.	1	lb	9.49	9.49	lb	Meat	Poultry	http://goodeggs2.imgix.net/product_photos/pspKw6X9QqMMxxyH6TKJ_FK1A5379.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
767	Broad-Breasted Turkey (18-20 lb)	Mary's Free-Range Turkeys are raised on healthful grains and allowed to roam in areas four times the size of spaces provided by the average commercial turkey ranch. Their high-protein vegetarian diet provides great nutrition, allowing the turkeys to grow more slowly and resulting in fantastic flavor.	18	lb	55.99	3.11	lb	Meat	Poultry	http://goodeggs2.imgix.net/product_photos/NoTyW8s4Qei5e7quCFK0_20161021-Broadbreasted_TurkeyV2_MG_4677.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
739	Organic Bone-In Skin-On Chicken Breasts	Mary's Free-Range Chickens are produced by Pitman Farms, a family owned business that has been raising poultry for three generations. Mary's Free Range Chickens grow naturally with plenty of open space on a ranch in sunny California. These chickens are raised in a humane manner by allowing them to roam in a stress-free environment that is four times the size of the average commercial ranch. Because of cleaner living quarters, a healthier and happier chicken is produced having a better taste.All chickens have access to outdoors. Outdoor areas include ample water and shade Natural behaviors are enriched with:bales of straw (used for pecking)eucalyptus tree branches (used for playing and hiding).Mary's Free-Range Organic Air Chilled Chickens are an additional step up the ladder in humane farming practices; with freedom to move about and a premium diet void of any chemical stimulators.Certified Organic feeds must be Certified by the USDA and everything that goes in them must be certified as well. Mary's Organic Chicken feed does not contain any of the following:NO Animal By ProductsNO Genetically Modified Organisms (GMOs)NO Antibiotics NO Pesticide Treated GrainsNO Grains Grown with Chemical Fertilizers NO Synthetic Amino Acids	1.75	lb	13.99	7.99	lb	Meat	Poultry	http://goodeggs1.imgix.net/product_photos/pPLivv1ITjq68SdMeurq_FK1A3719.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
740	Organic Bone-In Skin-On Chicken Breasts	Mary's Free-Range Chickens are produced by Pitman Farms, a family owned business that has been raising poultry for three generations. Mary's Free Range Chickens grow naturally with plenty of open space on a ranch in sunny California. These chickens are raised in a humane manner by allowing them to roam in a stress-free environment that is four times the size of the average commercial ranch. Because of cleaner living quarters, a healthier and happier chicken is produced having a better taste.All chickens have access to outdoors. Outdoor areas include ample water and shade Natural behaviors are enriched with:bales of straw (used for pecking)eucalyptus tree branches (used for playing and hiding).Mary's Free-Range Organic Air Chilled Chickens are an additional step up the ladder in humane farming practices; with freedom to move about and a premium diet void of any chemical stimulators.Certified Organic feeds must be Certified by the USDA and everything that goes in them must be certified as well. Mary's Organic Chicken feed does not contain any of the following:NO Animal By ProductsNO Genetically Modified Organisms (GMOs)NO Antibiotics NO Pesticide Treated GrainsNO Grains Grown with Chemical Fertilizers NO Synthetic Amino Acids	0.9	lb	7.19	7.99	lb	Meat	Poultry	http://goodeggs1.imgix.net/product_photos/pPLivv1ITjq68SdMeurq_FK1A3719.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
741	Organic Boneless Skinless Chicken Breasts	Mary's Free-Range Chickens are produced by Pitman Farms, a family owned business that has been raising poultry for three generations. Mary's Free Range Chickens grow naturally with plenty of open space on a ranch in sunny California. These chickens are raised in a humane manner by allowing them to roam in a stress-free environment that is four times the size of the average commercial ranch. Because of cleaner living quarters, a healthier and happier chicken is produced having a better taste.All chickens have access to outdoors. Outdoor areas include ample water and shade Natural behaviors are enriched with:bales of straw (used for pecking)eucalyptus tree branches (used for playing and hiding).Mary's Free-Range Organic Air Chilled Chickens are an additional step up the ladder in humane farming practices; with freedom to move about and a premium diet void of any chemical stimulators.Certified Organic feeds must be Certified by the USDA and everything that goes in them must be certified as well. Mary's Organic Chicken feed does not contain any of the following:NO Animal By ProductsNO Genetically Modified Organisms (GMOs)NO Antibiotics NO Pesticide Treated GrainsNO Grains Grown with Chemical Fertilizers NO Synthetic Amino Acids	0.75	lb	7.09	9.45	lb	Meat	Poultry	http://goodeggs1.imgix.net/product_photos/lKAJdhWHTCwUgmM5sxAN_FK1A3473.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
742	Organic Whole Chicken Thighs	Mary's Free-Range Chickens are produced by Pitman Farms, a family owned business that has been raising poultry for three generations. Mary's Free Range Chickens grow naturally with plenty of open space on a ranch in sunny California. These chickens are raised in a humane manner by allowing them to roam in a stress-free environment that is four times the size of the average commercial ranch. Because of cleaner living quarters, a healthier and happier chicken is produced having a better taste.All chickens have access to outdoors. Outdoor areas include ample water and shade Natural behaviors are enriched with:bales of straw (used for pecking)eucalyptus tree branches (used for playing and hiding).Mary's Free-Range Organic Air Chilled Chickens are an additional step up the ladder in humane farming practices; with freedom to move about and a premium diet void of any chemical stimulators.Certified Organic feeds must be Certified by the USDA and everything that goes in them must be certified as well. Mary's Organic Chicken feed does not contain any of the following:NO Animal By ProductsNO Genetically Modified Organisms (GMOs)NO Antibiotics NO Pesticide Treated GrainsNO Grains Grown with Chemical Fertilizers NO Synthetic Amino Acids	1.25	lb	7.49	5.99	lb	Meat	Poultry	http://goodeggs1.imgix.net/product_photos/d7Ru4o1IRLaursDlxqGp_FK1A4030.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
743	Organic Whole Chicken Thighs	Mary's Free-Range Chickens are produced by Pitman Farms, a family owned business that has been raising poultry for three generations. Mary's Free Range Chickens grow naturally with plenty of open space on a ranch in sunny California. These chickens are raised in a humane manner by allowing them to roam in a stress-free environment that is four times the size of the average commercial ranch. Because of cleaner living quarters, a healthier and happier chicken is produced having a better taste.All chickens have access to outdoors. Outdoor areas include ample water and shade Natural behaviors are enriched with:bales of straw (used for pecking)eucalyptus tree branches (used for playing and hiding).Mary's Free-Range Organic Air Chilled Chickens are an additional step up the ladder in humane farming practices; with freedom to move about and a premium diet void of any chemical stimulators.Certified Organic feeds must be Certified by the USDA and everything that goes in them must be certified as well. Mary's Organic Chicken feed does not contain any of the following:NO Animal By ProductsNO Genetically Modified Organisms (GMOs)NO Antibiotics NO Pesticide Treated GrainsNO Grains Grown with Chemical Fertilizers NO Synthetic Amino Acids	1.5	lb	8.99	5.99	lb	Meat	Poultry	http://goodeggs1.imgix.net/product_photos/ow7lddMASXOPpD5IoX55_FK1A4030.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
768	Uncured Rustic Bacon (Frozen)	This is the same famous, sugar-free, uncured Rustic\nBacon found at our farmers’ markets: brined with sea salt and hickory smoked\nwithout added nitrites. This is pure, savory bacon at its finest. Sliced and\nready for breakfast, a BLT or pasta. Ingredients: Pork, Water, Sea Salt, Cultured Celery Juice	0.75	lb	10.69	14.25	lb	Meat	Bacon	http://goodeggs2.imgix.net/product_photos/TqqFaON9QmOFSkNDULLx_FK1A5774.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
744	Organic Boneless Skinless Chicken Thighs	Mary's Free-Range Chickens are produced by Pitman Farms, a family owned business that has been raising poultry for three generations. Mary's Free Range Chickens grow naturally with plenty of open space on a ranch in sunny California. These chickens are raised in a humane manner by allowing them to roam in a stress-free environment that is four times the size of the average commercial ranch. Because of cleaner living quarters, a healthier and happier chicken is produced having a better taste.All chickens have access to outdoors. Outdoor areas include ample water and shade Natural behaviors are enriched with:bales of straw (used for pecking)eucalyptus tree branches (used for playing and hiding).Mary's Free-Range Organic Air Chilled Chickens are an additional step up the ladder in humane farming practices; with freedom to move about and a premium diet void of any chemical stimulators.Certified Organic feeds must be Certified by the USDA and everything that goes in them must be certified as well. Mary's Organic Chicken feed does not contain any of the following:NO Animal By ProductsNO Genetically Modified Organisms (GMOs)NO Antibiotics NO Pesticide Treated GrainsNO Grains Grown with Chemical Fertilizers NO Synthetic Amino Acids	0.75	lb	5.99	7.99	lb	Meat	Poultry	http://goodeggs2.imgix.net/product_photos/m1PPbhmR2uDnY2pDDbY1_FK1A3473.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
745	Organic Chicken Drumsticks (Frozen)	Individually Quick Frozen DrumsticksMary's Free-Range Chickens are produced by Pitman Farms, a family owned business that has been raising poultry for three generations. Mary's Free Range Chickens grow naturally with plenty of open space on a ranch in sunny California. These chickens are raised in a humane manner by allowing them to roam in a stress-free environment that is four times the size of the average commercial ranch. Because of cleaner living quarters, a healthier and happier chicken is produced having a better taste.All chickens have access to outdoors. Outdoor areas include ample water and shade Natural behaviors are enriched with:bales of straw (used for pecking)eucalyptus tree branches (used for playing and hiding).Mary's Free-Range Organic Air Chilled Chickens are an additional step up the ladder in humane farming practices; with freedom to move about and a premium diet void of any chemical stimulators.Certified Organic feeds must be Certified by the USDA and everything that goes in them must be certified as well. Mary's Organic Chicken feed does not contain any of the following:NO Animal By ProductsNO Genetically Modified Organisms (GMOs)NO Antibiotics NO Pesticide Treated GrainsNO Grains Grown with Chemical Fertilizers NO Synthetic Amino Acids	2	lb	9.99	5.0	lb	Meat	Poultry	http://goodeggs2.imgix.net/product_photos/KU98MEoATmwGWenNlQus_20160701-Marys_IQFDrumsticks_MG_4269-2.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
746	Pasture Raised Chicken Legs (Frozen)	Whole chicken legs (leg/thigh quarter), bone-in, skin-on.Prather Ranch Meat Company has built a relationship with Big Bluff Ranch in the Shasta Cascades to bring you pasture-raised chicken with tremendous flavor. A sustainable family farm that goes back two generations, Big Bluff Ranch has been raising poultry with a holistic approach to both animals and the environment for over a decade. Allowed to roam free and forage after 3-6 weeks of brooding, Big Bluff chickens are never treated with hormones or antibiotics.	1	lb	7.99	7.99	lb	Meat	Poultry	http://goodeggs2.imgix.net/product_photos/MNaDXTL0RzWV7MZQmymv_FK1A5282.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
747	Organic Boneless Skinless Chicken Thighs	Mary's Free-Range Chickens are produced by Pitman Farms, a family owned business that has been raising poultry for three generations. Mary's Free Range Chickens grow naturally with plenty of open space on a ranch in sunny California. These chickens are raised in a humane manner by allowing them to roam in a stress-free environment that is four times the size of the average commercial ranch. Because of cleaner living quarters, a healthier and happier chicken is produced having a better taste.All chickens have access to outdoors. Outdoor areas include ample water and shade Natural behaviors are enriched with:bales of straw (used for pecking)eucalyptus tree branches (used for playing and hiding).Mary's Free-Range Organic Air Chilled Chickens are an additional step up the ladder in humane farming practices; with freedom to move about and a premium diet void of any chemical stimulators.Certified Organic feeds must be Certified by the USDA and everything that goes in them must be certified as well. Mary's Organic Chicken feed does not contain any of the following:NO Animal By ProductsNO Genetically Modified Organisms (GMOs)NO Antibiotics NO Pesticide Treated GrainsNO Grains Grown with Chemical Fertilizers NO Synthetic Amino Acids	1.25	lb	9.99	7.99	lb	Meat	Poultry	http://goodeggs1.imgix.net/product_photos/lKAJdhWHTCwUgmM5sxAN_FK1A3473.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
748	Organic Whole Chicken Legs (Fresh)	"This Memorial Day I'm looking forward to grilling these chicken thighs and covering them in Prather Ranch's BBQ Sauce!" Darren, Good Eggs Sourcing ManagerOrganic Free Range Chicken LegsMary's Free-Range Chickens are produced by Pitman Farms, a family owned business that has been raising poultry for three generations. Mary's Free Range Chickens grow naturally with plenty of open space on a ranch in sunny California. These chickens are raised in a humane manner by allowing them to roam in a stress-free environment that is four times the size of the average commercial ranch. Because of cleaner living quarters, a healthier and happier chicken is produced having a better taste.All chickens have access to outdoors. Outdoor areas include ample water and shade Natural behaviors are enriched with:bales of straw (used for pecking)eucalyptus tree branches (used for playing and hiding).Mary's Free-Range Organic Air Chilled Chickens are an additional step up the ladder in humane farming practices; with freedom to move about and a premium diet void of any chemical stimulators.Certified Organic feeds must be Certified by the USDA and everything that goes in them must be certified as well. Mary's Organic Chicken feed does not contain any of the following:NO Animal By ProductsNO Genetically Modified Organisms (GMOs)NO Antibiotics NO Pesticide Treated GrainsNO Grains Grown with Chemical Fertilizers NO Synthetic Amino Acids	1.25	lb	6.29	5.03	lb	Meat	Poultry	http://goodeggs1.imgix.net/product_photos/TazKHmZETwmGUpEuOc2j_FK1A3464.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
769	Uncured Smoked Maple Bacon (Frozen)	This is the same popular, delicious, uncured sliced Maple\nBacon found at our farmers’ markets: brined with sea\nsalt and real, organic maple syrup, then hickory smoked with no added\nnitrites. This maple bacon has a classic flavor and aroma that is delicious\npaired with breakfast or savory dishes.  Ingredients: Pork, Water, Organic Evaporated Cane Syrup, Sea Salt, Organic Maple Syrup, Cultured Celery Juice	0.75	lb	11.29	15.05	lb	Meat	Bacon	http://goodeggs1.imgix.net/product_photos/ynxIEhpRQewbezCWg1gL_FK1A5745.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
749	Organic Whole Chicken Legs	Organic Free Range Chicken LegsMary's Free-Range Chickens are produced by Pitman Farms, a family owned business that has been raising poultry for three generations. Mary's Free Range Chickens grow naturally with plenty of open space on a ranch in sunny California. These chickens are raised in a humane manner by allowing them to roam in a stress-free environment that is four times the size of the average commercial ranch. Because of cleaner living quarters, a healthier and happier chicken is produced having a better taste.All chickens have access to outdoors. Outdoor areas include ample water and shade Natural behaviors are enriched with:bales of straw (used for pecking)eucalyptus tree branches (used for playing and hiding).Mary's Free-Range Organic Air Chilled Chickens are an additional step up the ladder in humane farming practices; with freedom to move about and a premium diet void of any chemical stimulators.Certified Organic feeds must be Certified by the USDA and everything that goes in them must be certified as well. Mary's Organic Chicken feed does not contain any of the following:NO Animal By ProductsNO Genetically Modified Organisms (GMOs)NO Antibiotics NO Pesticide Treated GrainsNO Grains Grown with Chemical Fertilizers NO Synthetic Amino Acids	1.5	lb	7.49	4.99	lb	Meat	Poultry	http://goodeggs1.imgix.net/product_photos/TazKHmZETwmGUpEuOc2j_FK1A3464.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
750	Organic Party Wings (Frozen)	Mary's Free-Range Chickens are produced by Pitman Farms, a family owned business that has been raising poultry for three generations. Mary's Free Range Chickens grow naturally with plenty of open space on a ranch in sunny California. These chickens are raised in a humane manner by allowing them to roam in a stress-free environment that is four times the size of the average commercial ranch. Because of cleaner living quarters, a healthier and happier chicken is produced having a better taste.All chickens have access to outdoors. Outdoor areas include ample water and shade Natural behaviors are enriched with:bales of straw (used for pecking)eucalyptus tree branches (used for playing and hiding).Mary's Free-Range Organic Air Chilled Chickens are an additional step up the ladder in humane farming practices; with freedom to move about and a premium diet void of any chemical stimulators.Certified Organic feeds must be Certified by the USDA and everything that goes in them must be certified as well. Mary's Organic Chicken feed does not contain any of the following:NO Animal By ProductsNO Genetically Modified Organisms (GMOs)NO Antibiotics NO Pesticide Treated GrainsNO Grains Grown with Chemical Fertilizers NO Synthetic Amino Acids	2	lb	9.59	4.8	lb	Meat	Poultry	http://goodeggs1.imgix.net/product_photos/Uvwrtf84SkyVVho6Wlxw_Good%20Eggs_111515-17.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
751	Organic Whole Duck Legs (Frozen)	Mary’s Free-Range Ducks are beautiful animals to raise. The Pekin Duck are raised naturally in the beautiful weather in California. They live year round with access to outdoors. We watch them everyday to make sure they are comfortable and happy. We make every effort to treat our ducks as humanely as possible throughout the production process. No Antibiotics EverRaised Without Added Hormones*No Preservatives or Additives*Federal Regulations Prohibit The Use Of Hormones In DuckFed a Vegetarian Diet (65% Corn, 25% Soybean Meal, 5% Vitamins and Nutrients, 5% Wheat)	0.8	lb	8.69	10.86	lb	Meat	Poultry	http://goodeggs2.imgix.net/product_photos/g9U4TxZgSVeLKWHlp8oA_FK1A6310.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
752	Pasture Raised Duck (Frozen)	Whole Pasture-Raised Duck, free of GMOs, corn, soy, and antibiotics.  Healthy, happy ducks raised on the beautiful coast just a short drive South of San Francisco.Each duck is cryo-vac'd and flash-frozen to preserve the highest quality and freshness.Early Bird ducks are a truly gourmet treat.  Their life on our fertile pastures gives their rich and tender meat deep flavors, making these ducks a perfect example of the exceptional food that the beautiful coastal pastures south of San Francisco can produce.  This is a seasonal product, once it's gone, it's gone!  Early Bird ducks live outside in mobile pasture shelters that are moved every day onto fresh grasses that haven't been grazed by poultry for at least a full year. They have constant access to water, and enjoy splashing and bathing several times a day.To help them grow, we supplement their diet with a high-quality feed free of GMOs, corn, soy, and antibiotics. Their healthy outdoor lifestyle and balanced and diverse diet produces a tender, juicy, and flavorful bird that will be the highlight of any meal!	4	lb	35.69	8.92	lb	Meat	Poultry	http://goodeggs1.imgix.net/product_photos/u15znALOShKHoo5ULngz_FK1A4104.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
753	Organic Duck Breast (Frozen)	Mary’s Free-Range Ducks are beautiful animals to raise. The Pekin Duck are raised naturally in the beautiful weather in California. They live year round with access to outdoors. We watch them everyday to make sure they are comfortable and happy. We make every effort to treat our ducks as humanely as possible throughout the production process. No Antibiotics EverRaised Without Added Hormones*No Preservatives or Additives*Federal Regulations Prohibit The Use Of Hormones In DuckFed a Vegetarian Diet (65% Corn, 25% Soybean Meal, 5% Vitamins and Nutrients, 5% Wheat)	1	lb	19.99	19.99	lb	Meat	Poultry	http://goodeggs1.imgix.net/product_photos/edH5YHnGQ3WJgm2bGRMj_FK1A6307.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
754	Organic Whole Duck (Frozen)	Mary’s Free-Range Ducks are beautiful animals to raise. The Pekin Duck are raised naturally in the beautiful weather in California. They live year round with access to outdoors. We watch them everyday to make sure they are comfortable and happy. We make every effort to treat our ducks as humanely as possible throughout the production process. No Antibiotics EverRaised Without Added Hormones*No Preservatives or Additives*Federal Regulations Prohibit The Use Of Hormones In DuckFed a Vegetarian Diet (65% Corn, 25% Soybean Meal, 5% Vitamins and Nutrients, 5% Wheat)	4	lb	35.69	8.92	lb	Meat	Poultry	http://goodeggs2.imgix.net/product_photos/0F5NUIOTSXGAVj1HDqek_FK1A6364.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
755	Pasture Raised Duck (Frozen)	Whole Pasture-Raised Duck, free of GMOs, corn, soy, and antibiotics.  Healthy, happy ducks raised on the beautiful coast just a short drive South of San Francisco.Each duck is cryo-vac'd and flash-frozen to preserve the highest quality and freshness.Early Bird ducks are a truly gourmet treat.  Their life on our fertile pastures gives their rich and tender meat deep flavors, making these ducks a perfect example of the exceptional food that the beautiful coastal pastures south of San Francisco can produce.  This is a seasonal product, once it's gone, it's gone!  Early Bird ducks live outside in mobile pasture shelters that are moved every day onto fresh grasses that haven't been grazed by poultry for at least a full year. They have constant access to water, and enjoy splashing and bathing several times a day.To help them grow, we supplement their diet with a high-quality feed free of GMOs, corn, soy, and antibiotics. Their healthy outdoor lifestyle and balanced and diverse diet produces a tender, juicy, and flavorful bird that will be the highlight of any meal!	3.5	lb	31.49	9.0	lb	Meat	Poultry	http://goodeggs1.imgix.net/product_photos/u15znALOShKHoo5ULngz_FK1A4104.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
756	Pasture Raised Pekin Duck (Frozen)	Pasture Raised Pekin DuckOur ducks have been raised in our orchard, in batches of 50 per “duck schooner” with lots of green grass and a wading pool. Their diet is a certified GMO free grain mix that includes organic corn, peas, wheat, barley, distillers grains and the minerals and vitamins they need to grow, along with wheat sprouts and the planted forages in the orchard including wheat, rye, and peas. They are harvested at 7 1/2 weeks, and frozen immediately for optimum freshness. Young duck is the most decadent poultry you will ever eat. The meat is moist, tender and will flake off the bone. The skin is crispy. The fat is melt in your mouth delicious. The broth made from the bones is better than chicken broth. Don’t forget to reserve the fat in your baking dish to fry up some potatoes. We fried up some delicious baby German potatoes from our garden to eat with our roast duck, along with a spring pasta salad we made with rocket arugula, easter egg radishes, marinated in our apricot vinegar and olive oil. Try a duck today, you’ll be glad you did! (Don’t be intimidated by all those fancy recipes on the internet. I roasted ours just like a chicken.) - says Rachel, Casa Rosa Farms	2.5	lb	22.49	9.0	lb	Meat	Poultry	http://goodeggs2.imgix.net/product_photos/lMYXnoLQQAWxrFbFVtEC_20160701-CasaRosa-Duck_MG_4234.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
757	Pasture Raised Pekin Duck (Frozen)	Pasture Raised Pekin DuckOur ducks have been raised in our orchard, in batches of 50 per “duck schooner” with lots of green grass and a wading pool. Their diet is a certified GMO free grain mix that includes organic corn, peas, wheat, barley, distillers grains and the minerals and vitamins they need to grow, along with wheat sprouts and the planted forages in the orchard including wheat, rye, and peas. They are harvested at 7 1/2 weeks, and frozen immediately for optimum freshness. Young duck is the most decadent poultry you will ever eat. The meat is moist, tender and will flake off the bone. The skin is crispy. The fat is melt in your mouth delicious. The broth made from the bones is better than chicken broth. Don’t forget to reserve the fat in your baking dish to fry up some potatoes. We fried up some delicious baby German potatoes from our garden to eat with our roast duck, along with a spring pasta salad we made with rocket arugula, easter egg radishes, marinated in our apricot vinegar and olive oil. Try a duck today, you’ll be glad you did! (Don’t be intimidated by all those fancy recipes on the internet. I roasted ours just like a chicken.) - says Rachel, Casa Rosa Farms	2.75	lb	21.99	8.0	lb	Meat	Poultry	http://goodeggs2.imgix.net/product_photos/lMYXnoLQQAWxrFbFVtEC_20160701-CasaRosa-Duck_MG_4234.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
758	Ground Dark Meat Turkey (Frozen)	100% dark meat ground turkey for optimal flavor- sub for beef or pork in all your favorite recipes!BN Ranch White Broad Breasted Turkeys possess the classic mild flavor of turkey, but with all the benefits of BN Ranch's humane, environmental, and quality standards. Our broad breasted turkeys are fed a Non-GMO Project Verified diet of vegetarian feed formulated for a slower, more natural growth pattern. The turkeys are raised in a free-range environment with plenty of room to roam outdoors from the time they are six weeks old. Raised to the highest standards of humane care and environmental consideration, BN Ranch Broad Breasted turkeys redefine this Thanksgiving staple.	1	lb	9.49	9.49	lb	Meat	Poultry	http://goodeggs2.imgix.net/product_photos/HKDmWd7aQAmqjT9FJBto_FK1A3435.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
759	Smoked Turkey Breast (Frozen)	Smoking Goose Smoked Turkey Breast is all natural, free range birds. Brined in organic herbs and spices and smoked over fruit woods. This subtly smoked turkey has texture and body yet remains juicy. It tastes like you are thinly carving turkey right off the bone! Perfect for that "Thanksgiving-style" sandwich!All Smoking Goose recipes begin on the farm. They carefully curate farm sources based on research, site visits, flavor, and personal relationships with farmers. The base requirements for all Smoking Goose farm sources: Small Family Owned Farm, No factory Farms, No Gestation Pens,  Antibiotic Free, 100% Vegetarian Feed, No Growth Promotants, Humanely Slaughtered. Source codes printed in the bottom right corner of each smoking goose package. To find out more about the farm please visit their Raw Resource Sheet.Ingredients: Whole breast of turkey, thyme, cloves, orange peel.	6.43	lb	142.99	22.24	lb	Meat	Poultry	http://goodeggs2.imgix.net/product_photos/XGeJDRltQFOvx9ofAOMv_20160914-SmokingGoose_WholeTurkey_MG_1004.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
760	Broad-Breasted Turkey (16-18 lb)	Mary's Free-Range Turkeys are raised on healthful grains and allowed to roam in areas four times the size of spaces provided by the average commercial turkey ranch. Their high-protein vegetarian diet provides great nutrition, allowing the turkeys to grow more slowly and resulting in fantastic flavor.	16	lb	49.99	3.12	lb	Meat	Poultry	http://goodeggs2.imgix.net/product_photos/NoTyW8s4Qei5e7quCFK0_20161021-Broadbreasted_TurkeyV2_MG_4677.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
761	Broad Breasted Turkey (14-16 lb)	BN Ranch's Broad-Breasted Turkeys are raised free-range, with plenty of room to roam outdoors and enjoy the sunshine in Ballico, CA. Their healthy environment and Non-GMO Project Verified vegetarian feed helps these birds grow slowly and naturally.	14	lb	69.99	5.0	lb	Meat	Poultry	http://goodeggs2.imgix.net/product_photos/PesZxQCLQC9MJiCCgVSJ_20161021-Broadbreasted_Turkey_MG_4667.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
762	Broad Breasted Turkey (12-14 lb)	BN Ranch's Broad-Breasted Turkeys are raised free-range, with plenty of room to roam outdoors and enjoy the sunshine in Ballico, CA. Their healthy environment and Non-GMO Project Verified vegetarian feed helps these birds grow slowly and naturally.	12	lb	64.99	5.42	lb	Meat	Poultry	http://goodeggs2.imgix.net/product_photos/PesZxQCLQC9MJiCCgVSJ_20161021-Broadbreasted_Turkey_MG_4667.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
763	Broad-Breasted Turkey (12-14 lb)	Mary's Free-Range Turkeys are raised on healthful grains and allowed to roam in areas four times the size of spaces provided by the average commercial turkey ranch. Their high-protein vegetarian diet provides great nutrition, allowing the turkeys to grow more slowly and resulting in fantastic flavor.	12	lb	38.99	3.25	lb	Meat	Poultry	http://goodeggs2.imgix.net/product_photos/NoTyW8s4Qei5e7quCFK0_20161021-Broadbreasted_TurkeyV2_MG_4677.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
764	Broad-Breasted Turkey (14-16 lb)	Mary's Free-Range Turkeys are raised on healthful grains and allowed to roam in areas four times the size of spaces provided by the average commercial turkey ranch. Their high-protein vegetarian diet provides great nutrition, allowing the turkeys to grow more slowly and resulting in fantastic flavor.	14	lb	43.99	3.14	lb	Meat	Poultry	http://goodeggs2.imgix.net/product_photos/NoTyW8s4Qei5e7quCFK0_20161021-Broadbreasted_TurkeyV2_MG_4677.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
770	Pasture Raised Honey Lavender Bacon (Frozen)	Handcrafted with lavender in small batches, Sonoma County Meat Co. brings you your new favorite bacon. Slightly sweet with just the tiniest hint of lavender, this bacon has got to be tasted!Prepare yourself for the wonder of our locally hand-made bacon now using 100% Duroc pork, also known as "red pig." This heritage breed originated in the U.S. in the 1800s. It is a cornerstone for charcuterie in niche markets from California to Spain. Our bacon is made with pork that is farmed humanely with outdoor access and vegetarian diets; no gestation crates, no antibiotics, no hormones, no growth promotants, and no animal byproduct feeds.Ingredients: Pasture Raised Pork, Sugar, Salt, Granulated Honey, Lavender Powder, Spices, Sodium Nitrite"Heritage breed pigs prance to create this bounty, free-ranging outdoors, raised by farmers who respect this land profoundly. Dry cured, hickory smoked, by the valiant team in Sonoma County. Fill your plate, clap your hands, for this bacon we share proudly."	0.75	lb	11.49	15.32	lb	Meat	Bacon	http://goodeggs1.imgix.net/product_photos/ePo7iwRoCusyDsu0Gxwh_FK1A5370.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
771	Uncured Sugar-Free Bacon (Frozen)	Truly uncured, Paleo-friendly bacon. Made from pasture raised Walnut Keep pork belly, no sugar, nitrites or nitrates added, no celery juice powder, no nothing. Just pure smoked porky goodness.Ingredients: Pork, Salt, Spices, "Sliced bacon, artisanally made in Sonoma County.""Here's the story of a lovely lady, and a very handsome butcher man.Established in 2014, with a valiant team, they make the best meats in the land.Wood smoked in the most amazing smokehouse, fill your plate, clap your hands."	0.75	lb	11.99	15.99	lb	Meat	Bacon	http://goodeggs2.imgix.net/product_photos/Je193VuQTyGHlSYo7sUn_Pork_Bacon1.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
772	Smoked Pepper Bacon (Frozen)	This is the bacon that changed everything.  With it's cult-like following at the Farmer's Markets, we are proud to offer you our Smoked Pepper Bacon.  Thick cut, lots of fat (which of course you keep to cook your veggies in) and quite possibly the best bacon ever.  Our sows are Yorkshires crossed on either a Duroc or Berkshire boar. The\n sows are pastured along with their piglets until the piglets are \nweaned. The weaned piglets are then finished with whole milk, whole \ngrain breads, brewers grain, and tortillas, producing what we believe to\n be a superior product.Ingredients: Pork, Salt, Cane & Maple Sugars, Pepper, Celery PowderNatural Bacon, No Nitrates	0.75	lb	11.49	15.32	lb	Meat	Bacon	http://goodeggs1.imgix.net/product_photos/TU7YLRzcRJiXfjbpqRPA_NHrp9OyCq2Fm75VdkEtleov4rmg3ojXg_p9JqKB0FeM.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
773	Smoked Maple Bacon (Frozen)	If you're looking for that classic bacon flavor, sweet and savory that just hits that bacon spot, congratulations, you've found your new best friend.  DG-Langley Farms is proud to offer our Maple Sugar bacon.  This is what real bacon tastes likes folks.Our sows are Yorkshires crossed on either a Duroc or Berkshire boar. The\n sows are pastured along with their piglets until the piglets are \nweaned. The weaned piglets are then finished with whole milk, whole \ngrain breads, brewers grain, and tortillas, producing what we believe to\n be a superior product.Ingredients: Pork, Salt, Cane & Maple Sugars, Celery PowderNatural Bacon, No Nitrates	0.75	lb	12.79	17.05	lb	Meat	Bacon	http://goodeggs2.imgix.net/product_photos/d4BYkvqYQlSREIJCH2jF_gSQBG6aK_Dq3hTMBCsiTGBm16p8SsZOE4N3zY9sZhAc.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
774	Uncured Bacon (Frozen)	Our hickory and maple smoked bacon is just slightly sweet and slightly smokey, nothing too overpowering and just the right amount of flavor for your morning pork fix. Ingredients: Llano Seco pork, water, sea salt, brown sugar, cherry powder, celery powder, turbinado sugar, and natural flavorings.Our pigs are a cross of Duroc and Yorkshire breeds. Our hogs are fed GMO-free, vegetarian grains and legumes, 80% of which are grown on the Rancho. Pigs are raised in deep-bedded hoop barns with continual access to large open air pastures with plenty of sunshine and a great view of the California Buttes. All animals are confinement-free for 100% of their lives, humanely treated with best practices certified by Global Animal Partnership. Our pigs are never fed antibiotics or growth hormones. Llano Seco Pork is the culmination of our mission to provide a variety of products while caring for the people, the animals and the land. We pride ourselves in our holistic approach to ranching.	0.75	lb	8.99	11.99	lb	Meat	Bacon	http://goodeggs2.imgix.net/product_photos/rhsiBzAVRZqMrynX6O6V_FK1A7697.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
775	Grass Fed Beef Bacon (Frozen)	Our grassfed beef brisket makes wonderful beef bacon. Smoked with alder \nwood from the North Coast, and cured with a traditional sea salt and \nmaple sugar rub, this bacon is full flavored and smoky. Try our beef \nbacon instead of pork bacon for a less fatty breakfast treat, and get \nall the benefits of grass-fed beef with the flavor of bacon.Ingredients: sea salt, maple and non-GMO cane sugars, sodium nitrite (naturally occurring in celery salt). Smoked, fully cooked.	0.4	lb	11.19	27.98	lb	Meat	Bacon	http://goodeggs1.imgix.net/product_photos/eUGszMpySqCw7XUkr0VS_FK1A9615.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
776	Guanciale (Frozen)	Jowl bacon- the king of all bacons, the classic ingredient to many an Italian dish (Carbonara anyone? all'Amatriciana?), guanciale adds that silky smooth feel and beautiful porky flavor to your pasta sauce. Or just fry some for breakfast, that's cool too.Ingredients: Pork, Sea Salt, Cane & Maple Sugars, Celery Powder.	0.3	lb	8.99	29.97	lb	Meat	Bacon	http://goodeggs1.imgix.net/product_photos/0gbApB3cQDK6CVZWhwHB_unspecified.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
777	Uncured Bacon Ends and Pieces (Frozen)	Our bacon ends and pieces are the perfect addition to a soup or weekend frittata. They also go great crumpled over a salad or baked potato.Ingredients: Llano Seco pork, sea salt, brown sugar, cherry powder, celery powder, turbinado sugar and natural flavorings.Our pigs are a cross of Duroc and Yorkshire breeds. Our hogs are fed GMO-free, vegetarian grains and legumes, 80% of which are grown on the Rancho. Pigs are raised in deep-bedded hoop barns with continual access to large open air pastures with plenty of sunshine and a great view of the California Buttes. All animals are confinement-free for 100% of their lives, humanely treated with best practices certified by Global Animal Partnership. Our pigs are never fed antibiotics or growth hormones. Llano Seco Pork is the culmination of our mission to provide a variety of products while caring for the people, the animals and the land. We pride ourselves in our holistic approach to ranching.	0.75	lb	5.49	7.32	lb	Meat	Bacon	http://goodeggs2.imgix.net/product_photos/2mhUOKZJSXyT9g161LNQ_FK1A0368.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
788	Grass-fed Filet Mignon	100% Grass-fed and Finished Filet MignonPRATHER RANCH MEAT CO is proud to introduce Lost Coast Grass-Fed Beef into its repertoire of high quality, sustainably and humanely raised meat offerings.Lost Coast Grassfed beeves are raised on the lush grass pastures of Humbolt County they are 100% grassfed and finished, and are never treated with hormones or antibiotics.	0.5	lb	15.99	31.98	lb	Meat	Beef	http://goodeggs1.imgix.net/product_photos/86i1G5ptSoiU7aiDhQgr_FK1A2168%20%281%29.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
778	Uncured Bacon Ends and Pieces (Frozen)	Our bacon ends and pieces are the perfect addition to a soup or weekend frittata. They also go great crumpled over a salad or baked potato.Ingredients: Llano Seco pork, sea salt, brown sugar, cherry powder, celery powder, turbinado sugar and natural flavorings.Our pigs are a cross of Duroc and Yorkshire breeds. Our hogs are fed GMO-free, vegetarian grains and legumes, 80% of which are grown on the Rancho. Pigs are raised in deep-bedded hoop barns with continual access to large open air pastures with plenty of sunshine and a great view of the California Buttes. All animals are confinement-free for 100% of their lives, humanely treated with best practices certified by Global Animal Partnership. Our pigs are never fed antibiotics or growth hormones. Llano Seco Pork is the culmination of our mission to provide a variety of products while caring for the people, the animals and the land. We pride ourselves in our holistic approach to ranching.	1	lb	7.79	7.79	lb	Meat	Bacon	http://goodeggs2.imgix.net/product_photos/2mhUOKZJSXyT9g161LNQ_FK1A0368.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
779	Grass-fed Ground Beef (Frozen)	Our son, Jack, orders a hamburger if it's on the menu, no matter where he is. Raised on a cattle ranch and eating good meat his whole life, this kid knows his ground beef. Although some have come close, Jack claims he has yet to find one that beats a Morris Grassfed burger (and as anyone with teenagers knows, he's got a mind of his own, and would not be afraid to offend us!) Grilled outdoors on your barbecue, or made into delicious sauces, chili, meat loafs or casseroles, you just can't beat locally-raised 100% Morris Grassfed Beef. Raised & finished on pastures of the Central Coast of California and dry aged for 14-21 days. We aim for a fat content of 10-15%.	1	lb	9.99	9.99	lb	Meat	Beef	http://goodeggs2.imgix.net/product_photos/JAGD7J64SbyGBQNGxiI7_NlrWW_i2w_z_Owya9Vw__7CMctrSLnsaWlxMlYtj584.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
780	Ground Beef	Oakridge Angus- Grass-fed, Grain Finished Beef - from Sonoma County Meat Co. "Oak Ridge Angus raises premium grass-fed grain-finished beef raised in Knights Valley, just outside Calistoga. Started as a dairy by Massimino LaFranchi 1912, the family sold their award winning Aryshires in 1974 and bought the first generation of the Angus herd they raise now. Pature raised on the rolling hills of northern California, and finished with only spent beer grain, 100% barley from the Bear Republic in Cloverdale; no corn, no antibiotics, no hormones of any kind.This is truly a local, sustainable protein."Best if used or frozen within 11 days of the "packed on" date printed on the package.	1	lb	7.99	7.99	lb	Meat	Beef	http://goodeggs2.imgix.net/product_photos/akGxv23jQeKoLTmASkfY_Beef_Ground_05.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
781	Ground Beef (Frozen)	Prather Ranch Meat Company is proud to offer our legendary Prather Ranch\nground beef at Good Eggs. Prather Ranch ground beef is known far and wide for\nits exceptional flavor (even our ground beef is dry-aged!), quality, and single\nanimal traceability. The grind is 85/15 lean to fat. Once you try it you’ll be hooked! Prather beef is grass fed and \nbarley/alfalfa hay finished, then dry-aged for 16-21 days. Certified Humane Raised and Handled, GMO free, and Food Alliance Certified.	1	lb	8.99	8.99	lb	Meat	Beef	http://goodeggs2.imgix.net/product_photos/Y3EMJRBmQbOvlMt568aQ_FK1A4975.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
782	Beef Stew Meat	Oakridge Angus- Grass-fed, Grain Finished Beef - from Sonoma County Meat Co. "Oak Ridge Angus raises premium grass-fed grain-finished beef raised in Knights Valley, just outside Calistoga. Started as a dairy by Massimino LaFranchi 1912, the family sold their award winning Aryshires in 1974 and bought the first generation of the Angus herd they raise now. Pature raised on the rolling hills of northern California, and finished with only spent beer grain, 100% barley from the Bear Republic in Cloverdale; no corn, no antibiotics, no hormones of any kind.This is truly a local, sustainable protein."	1	lb	9.99	9.99	lb	Meat	Beef	http://goodeggs1.imgix.net/product_photos/43GRBRc4SUued8xhx1bp_FK1A4454.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
783	Grass Fed Beef Burger Patties (Frozen)	Our delicious 1/4 lb burger patties are now available just in time for sunny weather. Roll out that bbq, grab a beer and get grilling!(4) 1/4 lb burgers in a pack. We raise our Limousin steers on certified organic rotational pasture and native grasslands within 2 hours of the Bay Area in the beautiful Capay Valley. We take the time to alfalfa finish all our animals. We truly believe that in order for consistency in a grass fed, grass-finished product, each producer must choose the best method for their farm and its local ecology. We grow our own pesticide free, non-GM alfalfa on our family's fields to produce high quality beef. You will find our farm's beef to be a very lean red meat with light marbling, yet extra tender. Our beef is dry-aged for a minimum of 16 days, flash frozen, and vacuum sealed. We are a certified USDA Grass Fed Producer and our farm and pastures are certified organic by CCOF. Follow us on our new Instagram feed @casa_rosa_farm and see how our animals really live.	1	lb	12.99	12.99	lb	Meat	Beef	http://goodeggs2.imgix.net/product_photos/zHhKdpqTU2ZW5aVw8KmA_Beam1U1OTXO8H3qLy8Dg_EiyGkbFGV9EDK6gV8Z4hfCqi-O30OOClDhYyBagPtA0.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
784	Grassfed Beef Stew Meat (Frozen)	100% Grass-fed and Finished Longhorn Stew Beef- from Twisted Horn Ranch, Bloomfield, CANote: Grass fed Longhorn beef is VERY lean and cooks 30 -40% faster. Please adjust recipe times accordingly and use a little olive oil on the meat when cooking	1	lb	13.99	13.99	lb	Meat	Beef	http://goodeggs2.imgix.net/product_photos/CaszwSxET3CaVTvEwD3V_FK1A1335.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
785	Grass-fed Stir Fry Beef (Frozen)	100% Grass-fed and Finished Beef Stir Fry/Fajita MeatPRATHER RANCH MEAT CO is proud to introduce Lost Coast Grass-Fed Beef into its repertoire of high quality, sustainably and humanely raised meat offerings.Lost Coast Grassfed beeves are raised on the lush grass pastures of Humbolt County they are 100% grassfed and finished, and are never treated with hormones or antibiotics.	0.7	lb	8.99	12.84	lb	Meat	Beef	http://goodeggs1.imgix.net/product_photos/MoPpygf0QFC5a3a68P1r_20160824-Lost%20Coast_StirFryMeat_MG_8641.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
786	Grass-fed Flat Iron Steak (Frozen)	Grass-fed Flat Iron Steak- from Morris Grassfed, San Juan Bautista, CAThe flat iron is a thin steak cut from the chuck/shoulder area and cooks in a similar way to a flank or skirt steak. 	1	lb	16.99	16.99	lb	Meat	Beef	http://goodeggs1.imgix.net/product_photos/pYsVHR7nRYC8ok2cclRD_FK1A4624.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
787	Filet Mignon (Frozen)	Looking for\nthe most tender, lean, delicious steak available? Prather Ranch Filet Mignon is the\nticket. Filet lovers all over the Bay Area come to our farmers markets to pick\nup our filets - the perfect combination of dry-aged tenderness, flavor and low\nfat. Prather beef is grass fed and \nbarley/alfalfa hay finished, then dry-aged for 16-21 days. Certified Humane Raised and Handled, GMO free, and Food Alliance Certified.	0.5	lb	14.49	28.98	lb	Meat	Beef	http://goodeggs1.imgix.net/product_photos/LsCsq2RMRMylLRE6eJt9_FK1A4861.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
790	Grass-fed Sirloin Tip Steak (Frozen)	100% Grass-fed and Finished Sirloin Tip SteakPRATHER RANCH MEAT CO is proud to introduce Lost Coast Grass-Fed Beef into its repertoire of high quality, sustainably and humanely raised meat offerings.Lost Coast Grassfed beeves are raised on the lush grass pastures of Humbolt County they are 100% grassfed and finished, and are never treated with hormones or antibiotics.	0.5	lb	4.99	9.98	lb	Meat	Beef	http://goodeggs1.imgix.net/product_photos/3FDcLYuXTlqx7W3KRBHf_i7vCGNT27bUdfATKMOQc_FK1A4793.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
791	Ribeye Steak	Oakridge Angus- Grass-fed, Grain Finished Beef - from Sonoma County Meat Co. The perfect steak for the grill, or sear in hot pan and finish off in the oven to a perfect medium rare."Oak Ridge Angus raises premium grass-fed grain-finished beef raised in Knights Valley, just outside Calistoga. Started as a dairy by Massimino LaFranchi 1912, the family sold their award winning Aryshires in 1974 and bought the first generation of the Angus herd they raise now. Pature raised on the rolling hills of northern California, and finished with only spent beer grain, 100% barley from the Bear Republic in Cloverdale; no corn, no antibiotics, no hormones of any kind.This is truly a local, sustainable protein."	1	lb	22.99	22.99	lb	Meat	Beef	http://goodeggs2.imgix.net/product_photos/wZbqS4IkSnK91Knsi0pP_FK1A4653.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
792	Ribeye Steak	Oakridge Angus- Grass-fed, Grain Finished Beef - from Sonoma County Meat Co. The perfect steak for the grill, or sear in hot pan and finish off in the oven to a perfect medium rare."Oak Ridge Angus raises premium grass-fed grain-finished beef in Knights Valley, just outside Calistoga. Started as a dairy by Massimino LaFranchi in 1912, the family sold their award winning Aryshires in 1974 and bought the first generation of the Angus herd they raise now. Pasture raised on the rolling hills of northern California, and finished with only spent beer grain, 100% barley from the Bear Republic in Cloverdale; no corn, no antibiotics, no hormones of any kind.This is truly a local, sustainable protein."	0.75	lb	17.19	22.92	lb	Meat	Beef	http://goodeggs2.imgix.net/product_photos/wZbqS4IkSnK91Knsi0pP_FK1A4653.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
793	Grass-fed Ribeye Steak	100% Grass-fed and Finished Ribeye SteakPRATHER RANCH MEAT CO is proud to introduce Lost Coast Grass-Fed Beef into its repertoire of high quality, sustainably and humanely raised meat offerings.Lost Coast Grassfed beeves are raised on the lush grass pastures of Humbolt County they are 100% grassfed and finished, and are never treated with hormones or antibiotics.	0.8	lb	21.99	27.49	lb	Meat	Beef	http://goodeggs2.imgix.net/product_photos/qRKPUDTvQNmNKHrlm1W7_FK1A5338%20%281%29.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
794	Flank Steak	Oakridge Angus- Grass-fed, Grain Finished Beef - from Sonoma County Meat Co. Dry rub the night before (or hit it with some salt and fresh pepper right before), throw on a blazing grill or pan sear and finish in a hot oven to medium rare (125 F) and let rest for a full 10 minutes. Slice across the grain and serve! Perfect for tacos, fajitas, or just on it's own, flank steak has great flavor and texture."Oak Ridge Angus raises premium grass-fed grain-finished beef raised in Knights Valley, just outside Calistoga. Started as a dairy by Massimino LaFranchi 1912, the family sold their award winning Aryshires in 1974 and bought the first generation of the Angus herd they raise now. Pature raised on the rolling hills of northern California, and finished with only spent beer grain, 100% barley from the Bear Republic in Cloverdale; no corn, no antibiotics, no hormones of any kind.This is truly a local, sustainable protein."	1.75	lb	27.69	15.82	lb	Meat	Beef	http://goodeggs2.imgix.net/product_photos/PkJavVfIRFehtGOAThMd_FK1A6086.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
795	Fajita Meat (Frozen)	One of our go-to favorites, this stir fry meat is great and easy to sautée. It works well with a favorite marinade or simply garnished with a little salt and pepper. Certified Humane Raised and Handled and GMO-free.	0.7	lb	10.49	14.99	lb	Meat	Beef	http://goodeggs1.imgix.net/product_photos/iEpnjysRHSoaK0r4UaGC_FK1A2681.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
796	Carne Asada	Oakridge Angus- Grass-fed, Grain Finished Beef - from Sonoma County Meat Co. \nSliced by\nhand for ease of cooking and to maximize the surface area for your favorite\nspice mix! Cut into strips, douse in spices and use in tacos, fajitas, and\nburritos. \n\n"Oak Ridge Angus raises premium grass-fed grain-finished beef raised in Knights Valley, just outside Calistoga. Started as a dairy by Massimino LaFranchi 1912, the family sold their award winning Aryshires in 1974 and bought the first generation of the Angus herd they raise now. Pature raised on the rolling hills of northern California, and finished with only spent beer grain, 100% barley from the Bear Republic in Cloverdale; no corn, no antibiotics, no hormones of any kind.This is truly a local, sustainable protein."	0.9	lb	10.79	11.99	lb	Meat	Beef	http://goodeggs2.imgix.net/product_photos/d1YOp4UbQaORRyVRmpkz_FK1A4381.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
797	Fajita Beef	Fajita/Stir Fry Beef- Oakridge Angus Grass-fed, Grain Finished Beef - from Sonoma County Meat Co. Thin cut strips of top round cook up quickly for an easy meal- fajitas, stir fry, or steak tacos, great with a quick marinade or sprinkling of your favorite rub or herb mixture, this a great candidate for a nice hot cast iron pan or wok."Oak Ridge Angus raises premium grass-fed grain-finished beef raised in Knights Valley, just outside Calistoga. Started as a dairy by Massimino LaFranchi 1912, the family sold their award winning Aryshires in 1974 and bought the first generation of the Angus herd they raise now. Pature raised on the rolling hills of northern California, and finished with only spent beer grain, 100% barley from the Bear Republic in Cloverdale; no corn, no antibiotics, no hormones of any kind.This is truly a local, sustainable protein."	1	lb	11.99	11.99	lb	Meat	Beef	http://goodeggs1.imgix.net/product_photos/hZvIc29HS1OmAqQNpKay_iEpnjysRHSoaK0r4UaGC_FK1A2681.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
798	Carne Asada	Oakridge Angus- Grass-fed, Grain Finished Beef - from Sonoma County Meat Co. \nSliced by\nhand for ease of cooking and to maximize the surface area for your favorite\nspice mix! Cut into strips, douse in spices and use in tacos, fajitas, and\nburritos. \n\n"Oak Ridge Angus raises premium grass-fed grain-finished beef raised in Knights Valley, just outside Calistoga. Started as a dairy by Massimino LaFranchi 1912, the family sold their award winning Aryshires in 1974 and bought the first generation of the Angus herd they raise now. Pature raised on the rolling hills of northern California, and finished with only spent beer grain, 100% barley from the Bear Republic in Cloverdale; no corn, no antibiotics, no hormones of any kind.This is truly a local, sustainable protein."	1.25	lb	14.99	11.99	lb	Meat	Beef	http://goodeggs2.imgix.net/product_photos/d1YOp4UbQaORRyVRmpkz_FK1A4381.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
799	Filet Mignon Steak (Frozen)	Oakridge Angus- Grass-fed, Grain Finished Beef - from Sonoma County Meat Co. "Oak Ridge Angus raises premium grass-fed grain-finished beef raised in Knights Valley, just outside Calistoga. Started as a dairy by Massimino LaFranchi 1912, the family sold their award winning Aryshires in 1974 and bought the first generation of the Angus herd they raise now. Pature raised on the rolling hills of northern California, and finished with only spent beer grain, 100% barley from the Bear Republic in Cloverdale; no corn, no antibiotics, no hormones of any kind.This is truly a local, sustainable protein."	0.7	lb	19.49	27.84	lb	Meat	Beef	http://goodeggs1.imgix.net/product_photos/5TwObZpMQ5u8dnoX8MQX_FK1A4517.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
800	Filet Mignon Steak	Oakridge Angus- Grass-fed, Grain Finished Beef - from Sonoma County Meat Co. "Oak Ridge Angus raises premium grass-fed grain-finished beef raised in Knights Valley, just outside Calistoga. Started as a dairy by Massimino LaFranchi 1912, the family sold their award winning Aryshires in 1974 and bought the first generation of the Angus herd they raise now. Pature raised on the rolling hills of northern California, and finished with only spent beer grain, 100% barley from the Bear Republic in Cloverdale; no corn, no antibiotics, no hormones of any kind.This is truly a local, sustainable protein."	0.7	lb	19.59	27.99	lb	Meat	Beef	http://goodeggs1.imgix.net/product_photos/5TwObZpMQ5u8dnoX8MQX_FK1A4517.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
801	New York Steak	Oakridge Angus- Grass-fed, Grain Finished Beef - from Sonoma County Meat Co. The NY Steak- deliciously flavorful, even cooking, impressive yet simple. Salt and pepper, a few minutes per side on a hot grill or pan, let it rest and you're all set!"Oak Ridge Angus raises premium grass-fed grain-finished beef raised in Knights Valley, just outside Calistoga. Started as a dairy by Massimino LaFranchi 1912, the family sold their award winning Aryshires in 1974 and bought the first generation of the Angus herd they raise now. Pature raised on the rolling hills of northern California, and finished with only spent beer grain, 100% barley from the Bear Republic in Cloverdale; no corn, no antibiotics, no hormones of any kind.This is truly a local, sustainable protein."Best if used or frozen within 11 days of the "packed on" date printed on the package.	0.7	lb	13.99	19.99	lb	Meat	Beef	http://goodeggs2.imgix.net/product_photos/UbQ7pgEwStWlRS2Qc12e_FK1A4438.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
802	Grass-fed New York Steak	100% Grass-fed and Finished New York SteakPRATHER RANCH MEAT CO is proud to introduce Lost Coast Grass-Fed Beef into its repertoire of high quality, sustainably and humanely raised meat offerings.Lost Coast Grassfed beeves are raised on the lush grass pastures of Humbolt County they are 100% grassfed and finished, and are never treated with hormones or antibiotics.	0.7	lb	18.99	27.13	lb	Meat	Beef	http://goodeggs1.imgix.net/product_photos/lCCInnHVSfmtfGyugZzE_FK1A5393%20%281%29.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
803	New York Steak (Frozen)	Tender and richly marbled, the New York steak is a classic\ncut. Simply season and grill to perfection.	0.75	lb	18.79	25.05	lb	Meat	Beef	http://goodeggs2.imgix.net/product_photos/Xnyn88ukRWCDBfTkLS5G_Prather%20New%20York%20Steak.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
804	New York Steak	Oakridge Angus- Grass-fed, Grain Finished Beef - from Sonoma County Meat Co. The NY Steak- deliciously flavorful, even cooking, impressive yet simple. Salt and pepper, a few minutes per side on a hot grill or pan, let it rest and you're all set!"Oak Ridge Angus raises premium grass-fed grain-finished beef raised in Knights Valley, just outside Calistoga. Started as a dairy by Massimino LaFranchi 1912, the family sold their award winning Aryshires in 1974 and bought the first generation of the Angus herd they raise now. Pature raised on the rolling hills of northern California, and finished with only spent beer grain, 100% barley from the Bear Republic in Cloverdale; no corn, no antibiotics, no hormones of any kind.This is truly a local, sustainable protein."Best if used or frozen within 11 days of the "packed on" date printed on the package.	0.8	lb	15.99	19.99	lb	Meat	Beef	http://goodeggs2.imgix.net/product_photos/UbQ7pgEwStWlRS2Qc12e_FK1A4438.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
805	Grass-fed New York Steak	100% Grass-fed and Finished New York SteakPRATHER RANCH MEAT CO is proud to introduce Lost Coast Grass-Fed Beef into its repertoire of high quality, sustainably and humanely raised meat offerings.Lost Coast Grassfed beeves are raised on the lush grass pastures of Humbolt County they are 100% grassfed and finished, and are never treated with hormones or antibiotics.	0.8	lb	21.49	26.86	lb	Meat	Beef	http://goodeggs1.imgix.net/product_photos/lCCInnHVSfmtfGyugZzE_FK1A5393%20%281%29.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
806	Flat Iron Steak	Oakridge Angus- Grass-fed, Grain Finished Beef - from Sonoma County Meat Co. \nFor those nights\nwhen you just need a no-nonsense steak; pan sear in a screaming hot cast iron\npan or do a casual weekday grill, either way this steak will satisfy the\ncraving without the time commitment.\n\n"Oak Ridge Angus raises premium grass-fed grain-finished beef raised in Knights Valley, just outside Calistoga. Started as a dairy by Massimino LaFranchi 1912, the family sold their award winning Aryshires in 1974 and bought the first generation of the Angus herd they raise now. Pature raised on the rolling hills of northern California, and finished with only spent beer grain, 100% barley from the Bear Republic in Cloverdale; no corn, no antibiotics, no hormones of any kind.This is truly a local, sustainable protein."	0.25	lb	3.19	12.76	lb	Meat	Beef	http://goodeggs2.imgix.net/product_photos/Hh0HtdCRqWYbn39SoYAz_FK1A4624.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
807	Top Sirloin Steak	Oakridge Angus- Grass-fed, Grain Finished Beef - from Sonoma County Meat Co. \nA perfect,\nlow maintenance steak for the beginning grill master! All you need is some\nsalt, fresh ground pepper, and a fire to create a meal to remember.\n\n"Oak Ridge Angus raises premium grass-fed grain-finished beef raised in Knights Valley, just outside Calistoga. Started as a dairy by Massimino LaFranchi 1912, the family sold their award winning Aryshires in 1974 and bought the first generation of the Angus herd they raise now. Pature raised on the rolling hills of northern California, and finished with only spent beer grain, 100% barley from the Bear Republic in Cloverdale; no corn, no antibiotics, no hormones of any kind.This is truly a local, sustainable protein."Best if used or frozen within 11 days of the "packed on" date printed on the package.	0.4	lb	5.19	12.98	lb	Meat	Beef	http://goodeggs1.imgix.net/product_photos/nkwpfeMIQCmdSeriRkZg_FK1A4398.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
827	Grass-fed Back Ribs (Frozen)	100% Grass-fed and Finished Beef Back RibsPRATHER RANCH MEAT CO is proud to introduce Lost Coast Grass-Fed Beef into its repertoire of high quality, sustainably and humanely raised meat offerings.Lost Coast Grassfed beeves are raised on the lush grass pastures of Humbolt County they are 100% grassfed and finished, and are never treated with hormones or antibiotics.	1.75	lb	12.29	7.02	lb	Meat	Beef	http://goodeggs2.imgix.net/product_photos/bUp7wEBsR0G2QqhvulsA_20160825-LostCoast_BackRibs_MG_8674.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
808	Flat Iron Steak	Oakridge Angus- Grass-fed, Grain Finished Beef - from Sonoma County Meat Co. \nFor those nights\nwhen you just need a no-nonsense steak; pan sear in a screaming hot cast iron\npan or do a casual weekday grill, either way this steak will satisfy the\ncraving without the time commitment.\n\n"Oak Ridge Angus raises premium grass-fed grain-finished beef raised in Knights Valley, just outside Calistoga. Started as a dairy by Massimino LaFranchi 1912, the family sold their award winning Aryshires in 1974 and bought the first generation of the Angus herd they raise now. Pature raised on the rolling hills of northern California, and finished with only spent beer grain, 100% barley from the Bear Republic in Cloverdale; no corn, no antibiotics, no hormones of any kind.This is truly a local, sustainable protein."	0.5	lb	6.49	12.98	lb	Meat	Beef	http://goodeggs2.imgix.net/product_photos/Hh0HtdCRqWYbn39SoYAz_FK1A4624.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
809	Sirloin Tip (Frozen)	Quick and easy to cook, the sirloin tip is a lean cut off the top sirloin. Great to pan fry and versatile in application. Feeling fancy? Slice them up for a stir fry or kabobs!	0.6	lb	6.59	10.98	lb	Meat	Beef	http://goodeggs1.imgix.net/product_photos/i7vCGNT27bUdfATKMOQc_FK1A4793.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
810	Top Sirloin Steak	Oakridge Angus- Grass-fed, Grain Finished Beef - from Sonoma County Meat Co. \nA perfect,\nlow maintenance steak for the beginning grill master! All you need is some\nsalt, fresh ground pepper, and a fire to create a meal to remember.\n\n"Oak Ridge Angus raises premium grass-fed grain-finished beef raised in Knights Valley, just outside Calistoga. Started as a dairy by Massimino LaFranchi 1912, the family sold their award winning Aryshires in 1974 and bought the first generation of the Angus herd they raise now. Pature raised on the rolling hills of northern California, and finished with only spent beer grain, 100% barley from the Bear Republic in Cloverdale; no corn, no antibiotics, no hormones of any kind.This is truly a local, sustainable protein."Best if used or frozen within 11 days of the "packed on" date printed on the package.	0.6	lb	7.79	12.98	lb	Meat	Beef	http://goodeggs1.imgix.net/product_photos/nkwpfeMIQCmdSeriRkZg_FK1A4398.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
811	Flap Steak	Oakridge Angus- Grass-fed, Grain Finished Beef - from Sonoma County Meat Co. \nFor those nights\nwhen you just need a no-nonsense steak; pan sear in a screaming hot cast iron\npan or do a casual weekday grill, either way this steak will satisfy the\ncraving without the time commitment.\n\n"Oak Ridge Angus raises premium grass-fed grain-finished beef raised in Knights Valley, just outside Calistoga. Started as a dairy by Massimino LaFranchi 1912, the family sold their award winning Aryshires in 1974 and bought the first generation of the Angus herd they raise now. Pature raised on the rolling hills of northern California, and finished with only spent beer grain, 100% barley from the Bear Republic in Cloverdale; no corn, no antibiotics, no hormones of any kind.This is truly a local, sustainable protein."	0.75	lb	9.79	13.05	lb	Meat	Beef	http://goodeggs2.imgix.net/product_photos/Im7AS1cgR3yPDYSaccKm_FK1A4607.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
812	Flat Iron Steak	Oakridge Angus- Grass-fed, Grain Finished Beef - from Sonoma County Meat Co. \nFor those nights\nwhen you just need a no-nonsense steak; pan sear in a screaming hot cast iron\npan or do a casual weekday grill, either way this steak will satisfy the\ncraving without the time commitment.\n\n"Oak Ridge Angus raises premium grass-fed grain-finished beef raised in Knights Valley, just outside Calistoga. Started as a dairy by Massimino LaFranchi 1912, the family sold their award winning Aryshires in 1974 and bought the first generation of the Angus herd they raise now. Pature raised on the rolling hills of northern California, and finished with only spent beer grain, 100% barley from the Bear Republic in Cloverdale; no corn, no antibiotics, no hormones of any kind.This is truly a local, sustainable protein."	0.75	lb	9.79	13.05	lb	Meat	Beef	http://goodeggs2.imgix.net/product_photos/Hh0HtdCRqWYbn39SoYAz_FK1A4624.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
813	Grass-fed Top Sirloin Steak (Frozen)	100% Grass-fed and Finished Top Sirloin SteakPRATHER RANCH MEAT CO is proud to introduce Lost Coast Grass-Fed Beef into its repertoire of high quality, sustainably and humanely raised meat offerings.Lost Coast Grassfed beeves are raised on the lush grass pastures of Humbolt County they are 100% grassfed and finished, and are never treated with hormones or antibiotics.	0.75	lb	11.99	15.99	lb	Meat	Beef	http://goodeggs1.imgix.net/product_photos/fPSCiierTjGQof3f7rJc_FK1A4398.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
814	Flap Steak	Oakridge Angus- Grass-fed, Grain Finished Beef - from Sonoma County Meat Co. \nFor those nights\nwhen you just need a no-nonsense steak; pan sear in a screaming hot cast iron\npan or do a casual weekday grill, either way this steak will satisfy the\ncraving without the time commitment.\n\n"Oak Ridge Angus raises premium grass-fed grain-finished beef raised in Knights Valley, just outside Calistoga. Started as a dairy by Massimino LaFranchi 1912, the family sold their award winning Aryshires in 1974 and bought the first generation of the Angus herd they raise now. Pature raised on the rolling hills of northern California, and finished with only spent beer grain, 100% barley from the Bear Republic in Cloverdale; no corn, no antibiotics, no hormones of any kind.This is truly a local, sustainable protein."	1	lb	12.99	12.99	lb	Meat	Beef	http://goodeggs2.imgix.net/product_photos/Im7AS1cgR3yPDYSaccKm_FK1A4607.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
815	Grass-fed Chuck Eye Steak (Frozen)	100% Grass-fed and Finished Chuck Eye SteakPRATHER RANCH MEAT CO is proud to introduce Lost Coast Grass-Fed Beef into its repertoire of high quality, sustainably and humanely raised meat offerings.Lost Coast Grassfed beeves are raised on the lush grass pastures of Humbolt County they are 100% grassfed and finished, and are never treated with hormones or antibiotics.	0.6	lb	5.99	9.98	lb	Meat	Beef	http://goodeggs1.imgix.net/product_photos/lqQ4W9FvRgmOxDT0rpK5_20160824-LostCoast_ChuckEye_MG_8634.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
816	Grass-fed Chuck Steak (Frozen)	100% Grass-fed and Finished Chuck Eye SteakPRATHER RANCH MEAT CO is proud to introduce Lost Coast Grass-Fed Beef into its repertoire of high quality, sustainably and humanely raised meat offerings.Lost Coast Grassfed beeves are raised on the lush grass pastures of Humbolt County they are 100% grassfed and finished, and are never treated with hormones or antibiotics.	0.7	lb	6.99	9.99	lb	Meat	Beef	http://goodeggs1.imgix.net/product_photos/y8M6X99Q6ShGT01sX0VU_FK1A7974.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
828	Grass-fed Short Ribs (Frozen)	100% Grass-fed and Finished Beef Short RibsPRATHER RANCH MEAT CO is proud to introduce Lost Coast Grass-Fed Beef into its repertoire of high quality, sustainably and humanely raised meat offerings.Lost Coast Grassfed beeves are raised on the lush grass pastures of Humbolt County they are 100% grassfed and finished, and are never treated with hormones or antibiotics.	2.5	lb	19.99	8.0	lb	Meat	Beef	http://goodeggs2.imgix.net/product_photos/MNipQnFSGejoQvnQT8yO_FK1A0850.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
817	Chuck Steak (Frozen)	Oakridge Angus- Grass-fed, Grain Finished Beef - from Sonoma County Meat Co. \nBone-In Chuck Steak- A high flavor, low price steak, perfect for the grill or broiler, about 1/2" thick. \n\n"Oak Ridge Angus raises premium grass-fed grain-finished beef raised in Knights Valley, just outside Calistoga. Started as a dairy by Massimino LaFranchi 1912, the family sold their award winning Aryshires in 1974 and bought the first generation of the Angus herd they raise now. Pature raised on the rolling hills of northern California, and finished with only spent beer grain, 100% barley from the Bear Republic in Cloverdale; no corn, no antibiotics, no hormones of any kind.This is truly a local, sustainable protein."Best if used or frozen within 11 days of the "packed on" date printed on the package.	0.75	lb	7.49	9.99	lb	Meat	Beef	http://goodeggs2.imgix.net/product_photos/KPOaarGGSJC08JmgKEIG_20160526-SonomaMeatCo_ChuckSteak_MG_0294.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
818	Hanger Steak	Oakridge Angus- Grass-fed, Grain Finished Beef - from Sonoma County Meat Co. "Oak Ridge Angus raises premium grass-fed grain-finished beef raised in Knights Valley, just outside Calistoga. Started as a dairy by Massimino LaFranchi 1912, the family sold their award winning Aryshires in 1974 and bought the first generation of the Angus herd they raise now. Pature raised on the rolling hills of northern California, and finished with only spent beer grain, 100% barley from the Bear Republic in Cloverdale; no corn, no antibiotics, no hormones of any kind.This is truly a local, sustainable protein."	0.5	lb	8.39	16.78	lb	Meat	Beef	http://goodeggs1.imgix.net/product_photos/9LJAW159TcmYhCmLnWXH_BxDB8NPCTa29fTUmG1s0_0oJVe1RRyopZagaFpAnHyfVen-q50SW4bHmMNm24WxY.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
819	Grass-fed Hanger Steak (Frozen)	100% Grass-fed and finished Hanger Steak- from Morris GrassfedHanger steaks are one of those cuts good butchers keep for themselves: full of flavor and easy to prepare. It is a thick strip steak from the underside of the beef cow, between the rib and the loin. We like to grill them for fajitas or season with a little dry rub and serve with an arugula salad: delicious!	1.25	lb	19.99	15.99	lb	Meat	Beef	http://goodeggs2.imgix.net/product_photos/BxDB8NPCTa29fTUmG1s0_0oJVe1RRyopZagaFpAnHyfVen-q50SW4bHmMNm24WxY.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
820	Skirt Steak	Oakridge Angus- Grass-fed, Grain Finished Beef - from Sonoma County Meat Co. "Oak Ridge Angus raises premium grass-fed grain-finished beef raised in Knights Valley, just outside Calistoga. Started as a dairy by Massimino LaFranchi 1912, the family sold their award winning Aryshires in 1974 and bought the first generation of the Angus herd they raise now. Pature raised on the rolling hills of northern California, and finished with only spent beer grain, 100% barley from the Bear Republic in Cloverdale; no corn, no antibiotics, no hormones of any kind.This is truly a local, sustainable protein."	1.25	lb	19.99	15.99	lb	Meat	Beef	http://goodeggs1.imgix.net/product_photos/m62RI0yUTqihu9UykYlC_FK1A4758.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
821	T-Bone Steak	Oakridge Angus- Grass-fed, Grain Finished Beef - from Sonoma County Meat Co. Second only to the Porterhouse-perfect for the grill, or sear in hot pan and finish off in the oven to a perfect medium rare. The perfect steak to share with a few friends with a bottle or two of good red wine."Oak Ridge Angus raises premium grass-fed grain-finished beef raised in Knights Valley, just outside Calistoga. Started as a dairy by Massimino LaFranchi 1912, the family sold their award winning Aryshires in 1974 and bought the first generation of the Angus herd they raise now. Pature raised on the rolling hills of northern California, and finished with only spent beer grain, 100% barley from the Bear Republic in Cloverdale; no corn, no antibiotics, no hormones of any kind.This is truly a local, sustainable protein."	2.5	lb	37.99	15.2	lb	Meat	Beef	http://goodeggs2.imgix.net/product_photos/VInXG3pQd8bIe2Q1yJpA_FK1A0626.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
822	Marinated Maui Ribs (Frozen)	Prather Ranch Dry-Aged\ncross-cut short ribs are marinated in soy sauce, toasted sesame oil, ginger and\nred chili paste.  Grill them quickly over high heat to a\nperfect medium-rare. Great for parties, this item is a summer classic.\nIngredients: Prather Ranch\nDry-Aged Cross-Cut Short Ribs, Soy Sauce, Toasted Sesame Oil, Ginger, Sugar,\nChili Paste, Scallions.	2	lb	21.99	11.0	lb	Meat	Beef	http://goodeggs1.imgix.net/product_photos/acEYOC3RIiQV79OG19dh_FK1A6953.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
823	Grass-fed Chuck Roast (Frozen)	100% Grass-fed and Finished Chuck RoastPRATHER RANCH MEAT CO is proud to introduce Lost Coast Grass-Fed Beef into its repertoire of high quality, sustainably and humanely raised meat offerings.Lost Coast Grassfed beeves are raised on the lush grass pastures of Humbolt County they are 100% grassfed and finished, and are never treated with hormones or antibiotics.	2.25	lb	22.49	10.0	lb	Meat	Beef	http://goodeggs1.imgix.net/product_photos/LHGLxOnLSVegx5mJpz7E_FK1A8239.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
824	Short Ribs	Oakridge Angus- Grass-fed, Grain Finished Beef - from Sonoma County Meat Co. English cut, bone in short ribs. A comforting, cozy winter meal- braise in beer/wine/stock with some veggies and serve over polenta or with some mashed potatoes."Oak Ridge Angus raises premium grass-fed grain-finished beef raised in Knights Valley, just outside Calistoga. Started as a dairy by Massimino LaFranchi 1912, the family sold their award winning Aryshires in 1974 and bought the first generation of the Angus herd they raise now. Pature raised on the rolling hills of northern California, and finished with only spent beer grain, 100% barley from the Bear Republic in Cloverdale; no corn, no antibiotics, no hormones of any kind.This is truly a local, sustainable protein."	2.25	lb	24.79	11.02	lb	Meat	Beef	http://goodeggs1.imgix.net/product_photos/Voz09WwsSHqmsWnfjuFI_FK1A6164.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
825	Beef Brisket	Oakridge Angus- Grass-fed, Grain Finished Beef - from Sonoma County Meat Co. An awesome way to feed a crowd on the weekend, brisket is a classic BBQ cut and makes amazing sandwiches. Smoke it, roast it, brine it, braise it, or throw it in the slow cooker. For more ideas for brisket (homemade pastrami anyone?) and general bbq knowledge check out http://amazingribs.com/, my favorite online outdoor cooking resource."Oak Ridge Angus raises premium grass-fed grain-finished beef in Knights Valley, just outside Calistoga. Started as a dairy by Massimino LaFranchi 1912, the family sold their award winning Aryshires in 1974 and bought the first generation of the Angus herd they raise now. Pasture raised on the rolling hills of northern California, and finished with only spent beer grain, 100% barley from the Bear Republic in Cloverdale; no corn, no antibiotics, no hormones of any kind.This is truly a local, sustainable protein."	2.25	lb	25.99	11.55	lb	Meat	Beef	http://goodeggs1.imgix.net/product_photos/YqKB2R2iPnnZgei3xjQd_FK1A6141.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
829	Beef Brisket	Oakridge Angus- Grass-fed, Grain Finished Beef - from Sonoma County Meat Co. Smoke\nit, roast it, brine it; this classic cut is perfect for trying out that new\nsmoker, or impressing your in-laws on St. Patrick’s Day. "Oak Ridge Angus raises premium grass-fed grain-finished beef raised in Knights Valley, just outside Calistoga. Started as a dairy by Massimino LaFranchi 1912, the family sold their award winning Aryshires in 1974 and bought the first generation of the Angus herd they raise now. Pature raised on the rolling hills of northern California, and finished with only spent beer grain, 100% barley from the Bear Republic in Cloverdale; no corn, no antibiotics, no hormones of any kind.This is truly a local, sustainable protein."	3.25	lb	38.99	12.0	lb	Meat	Beef	http://goodeggs1.imgix.net/product_photos/YqKB2R2iPnnZgei3xjQd_FK1A6141.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
830	Chateaubriand (Frozen)	A great cut to share with a few friends, pan sear and finish in a hot oven to medium rare. Often served with a rich sauce, a great meal for a small dinner party.Certified Humane Raised and Handled, GMO-free, and Food Alliance Certified.	2	lb	31.89	15.95	lb	Meat	Beef	http://goodeggs1.imgix.net/product_photos/LIVuTB82TV2svdpvzZmL_FK1A0207.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
831	Chuck Roast	Oakridge Angus- Grass-fed, Grain Finished Beef - from Sonoma County Meat Co. Pot roast anyone? A great low-and-slow roast for these short winter days."Oak Ridge Angus raises premium grass-fed grain-finished beef raised in Knights Valley, just outside Calistoga. Started as a dairy by Massimino LaFranchi 1912, the family sold their award winning Aryshires in 1974 and bought the first generation of the Angus herd they raise now. Pature raised on the rolling hills of northern California, and finished with only spent beer grain, 100% barley from the Bear Republic in Cloverdale; no corn, no antibiotics, no hormones of any kind.This is truly a local, sustainable protein."	2.25	lb	22.49	10.0	lb	Meat	Beef	http://goodeggs2.imgix.net/product_photos/4e0Em9fCSpayL629mSrl_FK1A4409.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
832	Beef Shanks (Frozen)	Oakridge Angus- Grass-fed, Grain Finished Beef - from Sonoma County Meat Co. \nThe\nquintessential braising dish! With a beautiful round of femur in the center\npacked full of succulent marrow, this cut packs two flavor punches in one\npackage!\n\n"Oak Ridge Angus raises premium grass-fed grain-finished beef raised in Knights Valley, just outside Calistoga. Started as a dairy by Massimino LaFranchi 1912, the family sold their award winning Aryshires in 1974 and bought the first generation of the Angus herd they raise now. Pature raised on the rolling hills of northern California, and finished with only spent beer grain, 100% barley from the Bear Republic in Cloverdale; no corn, no antibiotics, no hormones of any kind.This is truly a local, sustainable protein."	0.9	lb	9.49	10.54	lb	Meat	Beef	http://goodeggs1.imgix.net/product_photos/lMuB7fDTGmQZoZfknpiF_FK1A4468.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
833	Crosscut Beef Shanks (Frozen)	Braise away!  Take your time, fill your home with beautiful aromas and enjoy mouth-watering 100% locally-grown Morris Grassfed beef and gravy during the winter.  The perfect comfort food. The chuck roast is the perfect pot roast, and the short ribs and shanks are bone-in, which adds additional depth to the taste and nutritional value to your meal.Morris Grassfed provides 100% grassfed & finished (no antibiotics or added hormones) beef to customers throughout California. Our beef is dry-aged for 21 days, processed in USDA inspected facilities, cut & wrapped by small-scale, artisan butchers and delivered directly to you via Good Eggs.We are an independent, family-owned company. We practice holistic management on the rangelands we manage, taking into account the land, animals, and people affected by our decisions. We invite you to take a tour of our operations here and to learn about the social, ecological and health benefits of 100% grass finished beef.	2	lb	18.99	9.49	lb	Meat	Beef	http://goodeggs2.imgix.net/product_photos/3TE831reRUyGm0cdiBGs_beef_shank.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
834	Grass-fed Beef Shank (Frozen)	100% Grass-fed and Finished Cross Cut (Osso Buco) Beef Shank PRATHER RANCH MEAT CO is proud to introduce Lost Coast Grass-Fed Beef into its repertoire of high quality, sustainably and humanely raised meat offerings.Lost Coast Grassfed beeves are raised on the lush grass pastures of Humbolt County they are 100% grassfed and finished, and are never treated with hormones or antibiotics.	2	lb	19.99	9.99	lb	Meat	Beef	http://goodeggs1.imgix.net/product_photos/hd4NvVEST4WoNTtmfdPx_FK1A4468.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
835	Pasture Raised Ground Pork	Walnut Keep Farms Pork- from Sonoma County Meat CompanyHeritage breed pigs are pasture-raised in Suisun Valley and finished on walnuts, giving the fat a rich, creamy texture. Never given antibiotics or growth hormones, and never confined. Ground pork- perfect for meatballs, meatloaf, potstickers, wontons, pasta sauce, and on and on...	1	lb	5.99	5.99	lb	Meat	Pork	http://goodeggs2.imgix.net/product_photos/gVayrCaQfynKa8txTvqe_FK1A7934.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
836	Ground Pork (Frozen)	Ground pork is a staple in most households.  Our ground pork is a 80/20 meat to fat ratio.  Our sows are Yorkshires crossed on either a Duroc or Berkshire boar. The\n sows are pastured along with their piglets until the piglets are \nweaned. The weaned piglets are then finished with whole milk, whole \ngrain breads, brewers grain, and tortillas, producing what we believe to\n be a superior product.	1	lb	5.99	5.99	lb	Meat	Pork	http://goodeggs2.imgix.net/product_photos/Ww7BZxTnCG5iIEGrs3lQ_-j7UmdqpVqoH0ddCHjnzNGQDrmwFf8Iwc2ZkWQhMHa4.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
837	Pork Stew Meat (Frozen)	Cubes of pork stew meat, all cut up and ready to go in your chili, carnitas, chile verde, pork goulash, etc. A great ingredient to have on hand when you get the hankering for a slow cooker meal!Our pigs are a cross of Duroc and Yorkshire breeds. Our hogs are fed GMO-free, vegetarian grains and legumes, 80% of which are grown on the Rancho. Pigs are raised in deep-bedded hoop barns with continual access to large open air pastures with plenty of sunshine and a great view of the California Buttes. All animals are confinement-free for 100% of their lives, humanely treated with best practices certified by Global Animal Partnership. Our pigs are never fed antibiotics or growth hormones. Llano Seco Pork is the culmination of our mission to provide a variety of products while caring for the people, the animals and the land. We pride ourselves in our holistic approach to ranching.	1	lb	9.29	9.29	lb	Meat	Pork	http://goodeggs2.imgix.net/product_photos/OuyBMwFqSrWZNK4JC61p_20160513-LlanoSeco_PorkStew_MG_9507.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
856	Pasture Raised Pork Sirloin Chop	Walnut Keep Farms Pork- from Sonoma County Meat Company\nGrill,\npan-sear or broil until that golden brown crust comes forth and blows away all\nmemories of pork chops so dry you could shingle a house. Paired with apple\nsauce, collard greens, or mashed potatoes, this chop is above and beyond the\nusual. \n\nHeritage breed pigs are pasture-raised in Suisun Valley and finished on walnuts, giving the fat a rich, creamy texture. Never given antibiotics or growth hormones, and never confined.	1	lb	8.99	8.99	lb	Meat	Pork	http://goodeggs2.imgix.net/product_photos/ZiHVVaPDTxmHuaFFptCp_FK1A7814.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
838	Avocado Fed Ground Pork (Frozen)	Our goal at Stepladder Avocado Fed Pork is to create Hog Heaven. Our heritage Gloucester Old Spots roam 200 acres of forest with incredibly low density, and no fences. They are chaperoned by our livestock guardian dog, Gus, and free to forage, root, and just be happy pigs. They return to a small paddock in a gulch where they find water, a small amount of non-GMO, vegetarian grain ration, and all of the avocados we find on the ground of our orchards.  Heritage pigs have slightly smaller cuts than modern breeds, but the marbling and fat content makes up for it ten-fold.	1	lb	12.99	12.99	lb	Meat	Pork	http://goodeggs2.imgix.net/product_photos/6fse32HRSQCQyBHl5hat_F1PS6rffS0y8PvkI2GB8_FK1A8581.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
839	Pasture Raised Ground Pork	Walnut Keep Farms Pork- from Sonoma County Meat CompanyHeritage breed pigs are pasture-raised in Suisun Valley and finished on walnuts, giving the fat a rich, creamy texture. Never given antibiotics or growth hormones, and never confined. Ground pork- perfect for meatballs, meatloaf, potstickers, wontons, pasta sauce, and on and on...	0.8	lb	4.79	5.99	lb	Meat	Pork	http://goodeggs2.imgix.net/product_photos/gVayrCaQfynKa8txTvqe_FK1A7934.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
840	Ground Pork (Frozen)	Our Ground Pork is the perfect ration of fat to lean meat, blended from the most flavorful cuts of the animal. It can be transformed into many dishes: spiced breakfast patties, tacos, ragù, or your very own homemade sausages. Our pigs are a cross of Duroc and Yorkshire breeds. Our hogs are fed GMO-free, vegetarian grains and legumes, 80% of which are grown on the Rancho. Pigs are raised in deep-bedded hoop barns with continual access to large open air pastures with plenty of sunshine and a great view of the California Buttes. All animals are confinement-free for 100% of their lives, humanely treated with best practices certified by Global Animal Partnership. Our pigs are never fed antibiotics or growth hormones. Llano Seco Pork is the culmination of our mission to provide a variety of products while caring for the people, the animals and the land. We pride ourselves in our holistic approach to ranching.	1	lb	8.99	8.99	lb	Meat	Pork	http://goodeggs2.imgix.net/product_photos/rNhbGJibRhq8MX99SRVw_FK1A2932.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
841	Ground Pork	Ground Pork- Pure Country Pork (Ephrata, WA), from Prather Ranch Meat CompanyThese Verified Non-GMO and Food Alliance Certified black hogs are fed a Non-GMO verified diet consisting of barley, wheat, triticale, field peas, and flax. They are never treated with antibiotics. The pork quality is distinctive with it’s European small grain finish giving it a great taste.	1	lb	7.49	7.49	lb	Meat	Pork	http://goodeggs2.imgix.net/product_photos/NYMUAB7dQJGfavknJjqT_FK1A0952.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
842	Pasture Raised Ground Pork (Frozen)	Ground Pork from pasture raised pigs!Pasture raised Berkshire cross hogs from the Capay Valley.	1	lb	9.99	9.99	lb	Meat	Pork	http://goodeggs1.imgix.net/product_photos/m3bqQ2QiSgmxiB419XL6_Pork_Ground_01.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
843	Pasture Raised Ham Steaks	Ham Steak- pastured raised, GMO free pork from Casa Rosa in the Capay ValleyThe perfect breakfast side dish! About 1/4" thick, this full slice of ham cooks up quickly to accompany your morning eggs and coffee.Ingredients: Pork Legs, Salt, Cane and Maple Sugar, and Celery Powder	1.25	lb	17.49	13.99	lb	Meat	Pork	http://goodeggs1.imgix.net/product_photos/y4ZnzzRQSnj2oH3dz8yw_20160804-CasaRosa_HamSteak_MG_7453.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
844	Boneless Half Ham (Frozen)	Made by PRMC’s own Mark Keller, these\ndelicious, ready to eat half hams are maple-salt brined and naturally long-smoked over hickory. All ingredients are organic or organic compliant - naturally cured with celery and salt only. Nitrite-free, Non-GMO.	3	lb	38.99	13.0	lb	Meat	Pork	http://goodeggs1.imgix.net/product_photos/nnirnWd0SSWSj1YSqVa0_FK1A5161%20%281%29.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
845	City Ham	This version of Smoking Goose's City Ham is made exclusively for Good Eggs! This city ham comes from Gunthorp Farms, which is in the 407 tier of Smoking Goose's sourcing. The most popular variety of this versatile meat. Smoking Goose's City Hams are wet-cured with a brine made of salt, sugar, clover, juniper, bay, and garlic. This brine lends the meat a mild, juicy flavor. Then the ham is hickory smoked for more depth. All Smoking Goose recipes begin on the farm. They carefully curate farm sources based on research, site visits, flavor, and personal relationships with farmers. The base requirements for all Smoking Goose farm sources: Small Family Owned Farm, No factory Farms, No Gestation Pens,  Antibiotic Free, 100% Vegetarian Feed, No Growth Promotants, Humanely Slaughtered. Source codes printed in the bottom right corner of each smoking goose package. To find out more about the farm please visit their Raw Resource Sheet. Ingredients: pork, clove, juniper, bay, garlic, hickory smoked	12	oz	16.99	22.65	lb	Meat	Pork	http://goodeggs1.imgix.net/product_photos/9aQoXik0Ss5ktHnFAN8A_20160415-SmokingGoose_CityHam_MG_6971.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
846	Mini Ham (Frozen)	Llano Seco Meats transforms our pork and beef into artisanal salted and smoked products. Harkening back to a time when butchery was a craft and home food preservation was the norm, Llano Seco Products honor the traditions of the historic European and American kitchens of our ancestors. Our line of handcrafted value-added products compliment our primal and sub-primal pork and beef cuts, and alchemizes the deep flavor of our meat into ready-to-eat products. Smoked, salted, spiced, and uncured, meaning no nitrates or nitrates added, just pure meaty goodness.Ingredients: Llano Seco pork, sea salt, sugar, celery powder, cherry powder, sodium carbonate, and flavorings.	1.25	lb	12.49	9.99	lb	Meat	Pork	http://goodeggs1.imgix.net/product_photos/yDFhxOuRJW4JArExag8b_FK1A7587.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
847	Guanciale	Heavily spiced with bay leaves, garlic, juniper berries, sea salt, brown sugar and black peppercorns, these cured hog jowls bring a rich flavor and more dense texture than their belly-cut cousin, pancetta.All Smoking Goose recipes begin on the farm. They carefully curate farm sources based on research, site visits, flavor, and personal relationships with farmers. THe base requirements for all Smoking Goose farm sources: Small Family Owned Farm, No factory Farms, No Gestation Pens,  Antibiotic Free, 100% Vegetarian Feed, No Growth Promotants, Humanely Slaughtered. Source codes printed in the bottom right corner of each smoking goose package. To find out more about the farm please visit their Raw Resource Sheet. Ingredients: pork jowl, bay leaves, juniper berries, garlic, black peppercorns	8	oz	14.29	28.58	lb	Meat	Pork	http://goodeggs2.imgix.net/product_photos/bOkPeOOQOKMGYeLz3oip_20160415-SmokingGoose_Tasso_MG_6978.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
866	Pasture Raised St. Louis Ribs	Walnut Keep Farms Pork- from Sonoma County Meat CompanyHeritage breed pigs are pasture-raised in Suisun Valley and finished on walnuts, giving the fat a rich, creamy texture. Never given antibiotics or growth hormones, and never confined. The perfect cut for smoking on the grill, but great in the oven or slow cooker too!	2.5	lb	22.49	9.0	lb	Meat	Pork	http://goodeggs2.imgix.net/product_photos/LjNojFIT7xWimZCASUxg_FK1A2380.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
848	Smoked Tasso Ham	By following the Cajun tradition this "ham" is cut from the pork shoulder rather than the hind legs. The rich dense meat is heavily spiced with white pepper, allspice, chilies, and marjoram before hanging in the smokehouse for a thick lick of smoke from the smoldering pecan wood. Traditionally used in cajun cooking adding depth to gumbo, jambalaya and dirty rice but can be used in other styles of cooking too. Add a bit of chopped tasso to creamy dips and fondues for rich, peppery bite and pleasing texture. Or add to eggs, greens, soups, or use it as the perfect accompaniment to briny shellfish.All Smoking Goose recipes begin on the farm. They carefully curate farm sources based on research, site visits, flavor, and personal relationships with farmers. THe base requirements for all Smoking Goose farm sources: Small Family Owned Farm, No factory Farms, No Gestation Pens,  Antibiotic Free, 100% Vegetarian Feed, No Growth Promotants, Humanely Slaughtered. Source codes printed in the bottom right corner of each smoking goose package. To find out more about the farm please visit their Raw Resource Sheet. This item is stored frozen. Please use within 30 days of defrosting.Ingredients: smoked pork flat iron, cayenne, marjoram	4	oz	5.29	21.16	lb	Meat	Pork	http://goodeggs2.imgix.net/product_photos/vabu0EFrQ1SdWXzs1xqS_20160415-SmokingGooseGuanciale_MG_6987.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
849	Smoked Tasso Ham	By following the Cajun tradition this "ham" is cut from the pork shoulder rather than the hind legs. The rich dense meat is heavily spiced with white pepper, allspice, chilies, and marjoram before hanging in the smokehouse for a thick lick of smoke from the smoldering pecan wood. Traditionally used in cajun cooking adding depth to gumbo, jambalaya and dirty rice but can be used in other styles of cooking too. Add a bit of chopped tasso to creamy dips and fondues for a peppery bite and rich texture. Or add to eggs, greens, soups, or use it as the perfect accompaniment to briny shellfish.All Smoking Goose recipes begin on the farm. They carefully curate farm sources based on research, site visits, flavor, and personal relationships with farmers. The base requirements for all Smoking Goose farm sources: Small Family Owned Farm, No factory Farms, No Gestation Pens,  Antibiotic Free, 100% Vegetarian Feed, No Growth Promotants, Humanely Slaughtered. Source codes printed in the bottom right corner of each smoking goose package. To find out more about the farm please visit their Raw Resource Sheet. This item is stored frozen. Please use within 30 days of defrosting.Ingredients: smoked pork flat iron, cayenne, marjoram	8	oz	10.19	20.38	lb	Meat	Pork	http://goodeggs2.imgix.net/product_photos/vabu0EFrQ1SdWXzs1xqS_20160415-SmokingGooseGuanciale_MG_6987.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
850	Smoked Tasso Ham	By following the Cajun tradition this "ham" is cut from the pork shoulder rather than the hind legs. The rich dense meat is heavily spiced with white pepper, allspice, chilies, and marjoram before hanging in the smokehouse for a thick lick of smoke from the smoldering pecan wood. Traditionally used in cajun cooking adding depth to gumbo, jambalaya and dirty rice but can be used in other styles of cooking too. Add a bit of chopped tasso to creamy dips and fondues for rich, peppery bite and pleasing texture. Or add to eggs, greens, soups, or use it as the perfect accompaniment to briny shellfish.All Smoking Goose recipes begin on the farm. They carefully curate farm sources based on research, site visits, flavor, and personal relationships with farmers. THe base requirements for all Smoking Goose farm sources: Small Family Owned Farm, No factory Farms, No Gestation Pens,  Antibiotic Free, 100% Vegetarian Feed, No Growth Promotants, Humanely Slaughtered. Source codes printed in the bottom right corner of each smoking goose package. To find out more about the farm please visit their Raw Resource Sheet. This item is stored frozen. Please use within 30 days of defrosting.Ingredients: smoked pork flat iron, cayenne, marjoram	12	oz	15.49	20.65	lb	Meat	Pork	http://goodeggs2.imgix.net/product_photos/vabu0EFrQ1SdWXzs1xqS_20160415-SmokingGooseGuanciale_MG_6987.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
851	Pasture Raised Pork Chop	Walnut Keep Farms Pork- from Sonoma County Meat Company\nGrill,\npan-sear or broil until that golden brown crust comes forth and blows away all\nmemories of pork chops so dry you could shingle a house. Paired with apple\nsauce, collard greens, or mashed potatoes, this chop is above and beyond the\nusual. \n\nHeritage breed pigs are pasture-raised in Suisun Valley and finished on walnuts, giving the fat a rich, creamy texture. Never given antibiotics or growth hormones, and never confined.	0.8	lb	7.19	8.99	lb	Meat	Pork	http://goodeggs1.imgix.net/product_photos/iFQsNyeSKiH5h4pscsQy_FK1A7776.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
852	Bone-in Pork Chop (Frozen)	These beautiful pork chops are bone-in and cut 1 1/4" thick.Our sows are Yorkshires crossed on either a Duroc or Berkshire boar. The\n sows are pastured along with their piglets until the piglets are \nweaned. The weaned piglets are then finished with whole milk, whole \ngrain breads, brewers grain, and tortillas, producing what we believe to\n be a superior product.  Great for grilling anytime of the year.  We suggest medium high heat, 4-5 minutes per side and another 4-5 minutes tilted up on the bone.	1	lb	10.49	10.49	lb	Meat	Pork	http://goodeggs1.imgix.net/product_photos/pRdcDnvSfecXnzLzEjef_Z1JZxpvES8QNR37h0Mmi9-E9Wcy2Xi70IASWLRnNfR4.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
853	Pasture Raised Pork Chop	Walnut Keep Farms Pork- from Sonoma County Meat Company\nGrill,\npan-sear or broil until that golden brown crust comes forth and blows away all\nmemories of pork chops so dry you could shingle a house. Paired with apple\nsauce, collard greens, or mashed potatoes, this chop is above and beyond the\nusual. \n\nHeritage breed pigs are pasture-raised in Suisun Valley and finished on walnuts, giving the fat a rich, creamy texture. Never given antibiotics or growth hormones, and never confined.	0.6	lb	5.39	8.98	lb	Meat	Pork	http://goodeggs1.imgix.net/product_photos/iFQsNyeSKiH5h4pscsQy_FK1A7776.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
854	Pasture Raised Pork Loin Chop	Walnut Keep Farms Pork- from Sonoma County Meat Company\nGrill,\npan-sear or broil until that golden brown crust comes forth and blows away all\nmemories of pork chops so dry you could shingle a house. Paired with apple\nsauce, collard greens, or mashed potatoes, this chop is above and beyond the\nusual. \n\nHeritage breed pigs are pasture-raised in Suisun Valley and finished on walnuts, giving the fat a rich, creamy texture. Never given antibiotics or growth hormones, and never confined.	0.6	lb	5.99	9.98	lb	Meat	Pork	http://goodeggs1.imgix.net/product_photos/kCrhemySRPOh4T944ZaF_FK1A7951.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
855	Pasture Raised Pork Loin Chop	Walnut Keep Farms Pork- from Sonoma County Meat Company\nGrill,\npan-sear or broil until that golden brown crust comes forth and blows away all\nmemories of pork chops so dry you could shingle a house. Paired with apple\nsauce, collard greens, or mashed potatoes, this chop is above and beyond the\nusual. \n\nHeritage breed pigs are pasture-raised in Suisun Valley and finished on walnuts, giving the fat a rich, creamy texture. Never given antibiotics or growth hormones, and never confined.	1.25	lb	12.49	9.99	lb	Meat	Pork	http://goodeggs1.imgix.net/product_photos/kCrhemySRPOh4T944ZaF_FK1A7951.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
857	Pasture Raised Pork Sirloin Chop	Walnut Keep Farms Pork- from Sonoma County Meat Company\nGrill,\npan-sear or broil until that golden brown crust comes forth and blows away all\nmemories of pork chops so dry you could shingle a house. Paired with apple\nsauce, collard greens, or mashed potatoes, this chop is above and beyond the\nusual. \n\nHeritage breed pigs are pasture-raised in Suisun Valley and finished on walnuts, giving the fat a rich, creamy texture. Never given antibiotics or growth hormones, and never confined.	0.75	lb	6.79	9.05	lb	Meat	Pork	http://goodeggs2.imgix.net/product_photos/ZiHVVaPDTxmHuaFFptCp_FK1A7814.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
858	Pasture Raised Pork Chop	Walnut Keep Farms Pork- from Sonoma County Meat Company\nGrill,\npan-sear or broil until that golden brown crust comes forth and blows away all\nmemories of pork chops so dry you could shingle a house. Paired with apple\nsauce, collard greens, or mashed potatoes, this chop is above and beyond the\nusual. \n\nHeritage breed pigs are pasture-raised in Suisun Valley and finished on walnuts, giving the fat a rich, creamy texture. Never given antibiotics or growth hormones, and never confined.	1.25	lb	11.19	8.95	lb	Meat	Pork	http://goodeggs1.imgix.net/product_photos/iFQsNyeSKiH5h4pscsQy_FK1A7776.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
859	Bone-In Pork Chops (Frozen)	This pork chop is tender and flavorful, the "other red meat" as we like to say. Whether its put on the grill, the skillet, or in the oven, you're in for a treat. Our pork's fat is supple and full of just as much, if not more, flavor than the meat...be sure not to cut it off before cooking! Our pigs are a cross of Duroc and Yorkshire breeds. Our hogs are fed GMO-free, vegetarian grains and legumes, 80% of which are grown on the Rancho. Pigs are raised in deep-bedded hoop barns with continual access to large open air pastures with plenty of sunshine and a great view of the California Buttes. All animals are confinement-free for 100% of their lives, humanely treated with best practices certified by Global Animal Partnership. Our pigs are never fed antibiotics or growth hormones. Llano Seco Pork is the culmination of our mission to provide a variety of products while caring for the people, the animals and the land. We pride ourselves in our holistic approach to ranching.	1.25	lb	15.99	12.79	lb	Meat	Pork	http://goodeggs2.imgix.net/product_photos/SGrrcmmQki7JIfXxDByX_chop.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
860	Boston Butt (Frozen)	From Non-GMO Project verified heritage pigs,\nthis super juicy Boston Butt shoulder roast is perfect for the slow-cooker or smoker.\nBoston Butt is a great choice for carnitas, stews, pulled pork or any other\nlow-and-slow pork shoulder recipe. \nNon-GMO Project Verified and\nFood Alliance Certified	2	lb	17.99	8.99	lb	Meat	Pork	http://goodeggs1.imgix.net/product_photos/AkQ8pVaXRXwxyNE4oXIA_FK1A7651.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
861	Pasture Raised Pork Belly	Walnut Keep Farms Pork- from Sonoma County Meat CompanyYour\nfavorite ramen would not be the same without those succulent slices of pork\nbelly; fresh and ready for anything you can imagine, this cut is for the cook\nwho wants that extra edge. Flavor is first with this pork, so if you are\nlooking for a good base to your new bacon recipe, or if you are just dipping\nyour toes into the DIY bacon universe, this is the product for you!\n\nHeritage breed pigs are pasture-raised in Suisun Valley and finished on \nwalnuts, giving the fat a rich, creamy texture. Never given antibiotics \nor growth hormones, and never confined.	2	lb	15.99	8.0	lb	Meat	Pork	http://goodeggs2.imgix.net/product_photos/tiLV5bjXRdOzxeb3CRl0_FK1A7922.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
862	Bone-In Shoulder Roast (Frozen)	Bone-In Pork Shoulder (Butt) Roast- from Rancho Llano Seco, Chico CA Our pigs are a cross of Duroc and Yorkshire \nbreeds. Our hogs are fed GMO-free, vegetarian grains and legumes, 80% of\n which are grown on the Rancho. Pigs are raised in deep-bedded hoop \nbarns with continual access to large open air pastures with plenty of \nsunshine and a great view of the California Buttes. All animals are \nconfinement-free for 100% of their lives, humanely treated with best \npractices certified by Global Animal Partnership. Our pigs are never fed\n antibiotics or growth hormones. Llano Seco Pork is the culmination of \nour mission to provide a variety of products while caring for the \npeople, the animals and the land. We pride ourselves in our holistic \napproach to ranching.	3	lb	28.49	9.5	lb	Meat	Pork	http://goodeggs1.imgix.net/product_photos/4drumGrITUOSOmQJbkIm_FK1A2923.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
863	Boneless Pork Shoulder Roast (Frozen)	These were for made low and slow.  Carnitas anyone?  Pulled Pork Sandwich?  You've found what you've been looking for.Our sows are Yorkshires crossed on either a Duroc or Berkshire boar. The\n sows are pastured along with their piglets until the piglets are \nweaned. The weaned piglets are then finished with whole milk, whole \ngrain breads, brewers grain, and tortillas, producing what we believe to\n be a superior product.	2.75	lb	21.99	8.0	lb	Meat	Pork	http://goodeggs2.imgix.net/product_photos/WU2E3TK4TbiiZ7CWKvIg_oiIrpkwVEmQU8F85rrBKWt170Y_C2gxCqRD2dI-RARM.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
864	Pasture Raised Pork Loin Roast (Frozen)	Loin roast- brine, sear, finish in the oven for a simple showstopper of a meal.Pasture raised Berkshire-cross hogs from the Capay Valley.At Simas Swine and Wine we raise pork the old fashion way.  They enjoy an open air environment with 10 acres to roam around on; some pasture, some open lot.  They have shelter to get out of the rain and cold, or sun in the summer.  In the heat of summer we employ a mister system as well as mud wallows to keep them cool.  Piglets are allowed to stay with their mom for at least 5 weeks compared to 3 in a typical system.  They eat a commercially prepared ration with added luxuries in the summer and fall of culled peaches, melons and winter squash.	2.25	lb	33.69	14.97	lb	Meat	Pork	http://goodeggs2.imgix.net/product_photos/2yI2RHCSaKt2HA1nkVfZ_FK1A3194.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
865	Pork Tenderloin (Frozen)	Roast this baby in your oven slow and low and surround with your favorite vegetables to caramelize. Make a salsa verde of fresh parsley, mint, arugula and the like, with garlic, lemon juice and olive oil to garnish your lovely loin roast. Slice thin and wow your drooling dinner guests. Our pigs are a cross of Duroc and Yorkshire breeds. Our hogs are fed GMO-free, vegetarian grains and legumes, 80% of which are grown on the Rancho. Pigs are raised in deep-bedded hoop barns with continual access to large open air pastures with plenty of sunshine and a great view of the California Buttes. All animals are confinement-free for 100% of their lives, humanely treated with best practices certified by Global Animal Partnership. Our pigs are never fed antibiotics or growth hormones. Llano Seco Pork is the culmination of our mission to provide a variety of products while caring for the people, the animals and the land. We pride ourselves in our holistic approach to ranching.	1	lb	19.99	19.99	lb	Meat	Pork	http://goodeggs2.imgix.net/product_photos/ShbXuh60RPe4ZHJfP8Ly_uJ4TVbCJQuKZ5SDxAYSY_8gmO20za25aZWwqKLqxGYn-3RkvR3F7860NKJL8NABk.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
867	Pasture Raised St. Louis Style Pork Ribs	Walnut Keep Farms Pork- from Sonoma County Meat CompanyHeritage breed pigs are pasture-raised in Suisun Valley and finished on walnuts, giving the fat a rich, creamy texture. Never given antibiotics or growth hormones, and never confined. The perfect cut for smoking on the grill, but great in the oven or slow cooker too!	2.75	lb	24.79	9.01	lb	Meat	Pork	http://goodeggs2.imgix.net/product_photos/LjNojFIT7xWimZCASUxg_FK1A2380.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
868	Spare Ribs (Frozen)	Anytime of the year these will be a hit.  Our spare ribs are tender and juicy with so many ways to prepare them: we like to dry rub with a mix of salt, cayenne, sugar and fennel, or leave overnight with oil, citrus and fresh herbs.  Our pigs are a cross of Duroc and Yorkshire breeds. Our hogs are fed GMO-free, vegetarian grains and legumes, 80% of which are grown on the Rancho. Pigs are raised in deep-bedded hoop barns with continual access to large open air pastures with plenty of sunshine and a great view of the California Buttes. All animals are confinement-free for 100% of their lives, humanely treated with best practices certified by Global Animal Partnership. Our pigs are never fed antibiotics or growth hormones. Llano Seco Pork is the culmination of our mission to provide a variety of products while caring for the people, the animals and the land. We pride ourselves in our holistic approach to ranching.	3	lb	17.99	6.0	lb	Meat	Pork	http://goodeggs1.imgix.net/product_photos/dIDSDbWHR4SLJfEExrp9_spare%20rib.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
869	Spare Ribs (Frozen)	Anytime of the year these will be a hit.  Our spare ribs are tender and juicy with so many ways to prepare them: we like to dry rub with a mix of salt, cayenne, sugar and fennel, or leave overnight with oil, citrus and fresh herbs.  Our pigs are a cross of Duroc and Yorkshire breeds. Our hogs are fed GMO-free, vegetarian grains and legumes, 80% of which are grown on the Rancho. Pigs are raised in deep-bedded hoop barns with continual access to large open air pastures with plenty of sunshine and a great view of the California Buttes. All animals are confinement-free for 100% of their lives, humanely treated with best practices certified by Global Animal Partnership. Our pigs are never fed antibiotics or growth hormones. Llano Seco Pork is the culmination of our mission to provide a variety of products while caring for the people, the animals and the land. We pride ourselves in our holistic approach to ranching.	3.5	lb	20.99	6.0	lb	Meat	Pork	http://goodeggs1.imgix.net/product_photos/dIDSDbWHR4SLJfEExrp9_spare%20rib.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
870	Pasture Raised Pork Shank (Frozen)	Walnut Keep Farms Pasture Raised PorkPork Shank Roast\n\nHeritage breed pigs are pasture-raised in Suisun Valley and finished on walnuts, giving the fat a rich, creamy texture. Never given antibiotics or growth hormones, and never confined.	2.25	lb	19.99	8.88	lb	Meat	Pork	http://goodeggs2.imgix.net/product_photos/6mSOWZVQJaCqjIMBWiXy_20160505-SonomaMeatCo_PorkShank_MG_8952.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
871	Pasture Raised Pork Shank (Frozen)	Walnut Keep Farms Pasture Raised PorkPork Shank Roast\n\nHeritage breed pigs are pasture-raised in Suisun Valley and finished on walnuts, giving the fat a rich, creamy texture. Never given antibiotics or growth hormones, and never confined.	2.5	lb	22.49	9.0	lb	Meat	Pork	http://goodeggs2.imgix.net/product_photos/6mSOWZVQJaCqjIMBWiXy_20160505-SonomaMeatCo_PorkShank_MG_8952.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
872	Bone-In Shoulder Roast (Frozen)	Bone-In Pork Shoulder (Butt) Roast- from Rancho Llano Seco, Chico CA Our pigs are a cross of Duroc and Yorkshire \nbreeds. Our hogs are fed GMO-free, vegetarian grains and legumes, 80% of\n which are grown on the Rancho. Pigs are raised in deep-bedded hoop \nbarns with continual access to large open air pastures with plenty of \nsunshine and a great view of the California Buttes. All animals are \nconfinement-free for 100% of their lives, humanely treated with best \npractices certified by Global Animal Partnership. Our pigs are never fed\n antibiotics or growth hormones. Llano Seco Pork is the culmination of \nour mission to provide a variety of products while caring for the \npeople, the animals and the land. We pride ourselves in our holistic \napproach to ranching.	2.5	lb	23.49	9.4	lb	Meat	Pork	http://goodeggs1.imgix.net/product_photos/4drumGrITUOSOmQJbkIm_FK1A2923.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
873	Bone-In Shoulder Roast (Frozen)	Bone-In Pork Shoulder (Butt) Roast- from Rancho Llano Seco, Chico CA Our pigs are a cross of Duroc and Yorkshire \nbreeds. Our hogs are fed GMO-free, vegetarian grains and legumes, 80% of\n which are grown on the Rancho. Pigs are raised in deep-bedded hoop \nbarns with continual access to large open air pastures with plenty of \nsunshine and a great view of the California Buttes. All animals are \nconfinement-free for 100% of their lives, humanely treated with best \npractices certified by Global Animal Partnership. Our pigs are never fed\n antibiotics or growth hormones. Llano Seco Pork is the culmination of \nour mission to provide a variety of products while caring for the \npeople, the animals and the land. We pride ourselves in our holistic \napproach to ranching.	2.75	lb	25.99	9.45	lb	Meat	Pork	http://goodeggs1.imgix.net/product_photos/4drumGrITUOSOmQJbkIm_FK1A2923.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
874	Pasture Raised Pork Tenderloin (Frozen)	A beautiful little weeknight roast- sear in hot pan and finish in the oven with some veggies and you've got dinner in under half an hour!Pasture raised Berkshire cross hogs from the Capay Valley.	1	lb	19.99	19.99	lb	Meat	Pork	http://goodeggs2.imgix.net/product_photos/772oX6BASDC4ZMzJrW6S_FK1A8625.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
875	Pasture Raised Pork Tenderloin	Walnut Keep Farms Pork- from Sonoma County Meat CompanyHeritage breed pigs are pasture-raised in Suisun Valley and finished on walnuts, giving the fat a rich, creamy texture. Never given antibiotics or growth hormones, and never confined. The coveted tenderloin- only two per pig, so not always available, perfect brined and roasted in the oven. Don't overcook this one, an instant-read thermometer is key here!	1.2	lb	17.99	14.99	lb	Meat	Pork	http://goodeggs1.imgix.net/product_photos/1p1xb5sMT82aL6jLrJpX_FK1A8625.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
876	Grassfed Ground Lamb (Frozen)	Anderson Ranches raises their grass fed lamb for longer periods of time, providing higher quality meat. The lamb is never given antibiotics or hormones. The ranch maintains a low carbon footprint by having the lamb processed at their own facility- which also provides minimal stress for the animals. Humane Certified Raised and Handled.	1	lb	12.99	12.99	lb	Meat	Lamb	http://goodeggs1.imgix.net/product_photos/kKRhIP3PRjBWrxX2Mtg4_9d3nU8dfQpiRydBRlMbA_cnSSrTQVq0OXkPWrKSkQ_J7KkwAKgSTqcDwlrtwjq_FK1A7449.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
984	Soppressatta	Said to be the "salami of the people", every Latin speaking country claims to have invented Soppressata. Ours is crafted with a little heat, fresh garlic, and the slightest note of clove. Natural, edible hog casings and authentic molds. Ingredients: Pork, pork fat, salt. Contains 2% or less of dextrose, garlic, sodium nitrite, sodium nitrate, lactic acid starter culture, water.	4.2	oz	9.99	38.06	lb	Meat	Charcuterie	http://goodeggs1.imgix.net/product_photos/Pz7xLDtsQIiwwWw3Cw6F_FK1A1220.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
877	Lamb Loin Chops	Williams Ranches Lamb- from Sonoma County Meat CompanyRaised by the Williams family in the coastal hills of Sonoma County, sheep graze among the abundant wildlife protected by five Great Pyrenees livestock guardian dogs. The Pyrenees guard the sheep from natural predators allowing both to live in harmony with the land.Williams Ranches grows the highest quality lamb, fed on grass, clover and alfalfa with no hormones or antibiotic supplements. The Williams hand select each lamb, determining processing time by the amount of fat cover. This ensures a quality, consistent product that is available year round and lambs that are processed between 5 and 8 months old. This process means you will get a leaner, milder lamb that simply melts in your mouth.Tender, mild, California lamb- melt in your mouth loin chops cook up quick for an easy, elegant meal.	0.4	lb	8.79	21.98	lb	Meat	Lamb	http://goodeggs2.imgix.net/product_photos/PoYagfEsSQiRvdqKB0gn_FK1A3898.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
878	Lamb Stew	Williams Ranches Lamb- from Sonoma County Meat CompanyRaised by the Williams family in the coastal hills of Sonoma County, sheep graze among the abundant wildlife protected by five Great Pyrenees livestock guardian dogs. The Pyrenees guard the sheep from natural predators allowing both to live in harmony with the land.Williams Ranches grows the highest quality lamb, fed on grass, clover and alfalfa with no hormones or antibiotic supplements. The Williams hand select each lamb, determining processing time by the amount of fat cover. This ensures a quality, consistent product that is available year round and lambs that are processed between 5 and 8 months old. This process means you will get a leaner, milder lamb that simply melts in your mouth.Tender, mild, California lamb- stew meat ready for the slow cooker or tagine, or a ragu, or chili, or whatever else you fancy.	1	lb	13.99	13.99	lb	Meat	Lamb	http://goodeggs2.imgix.net/product_photos/SQyr1yw5RpScWpWAKzA9_FK1A3949.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
879	Ground Lamb	Williams Ranches Lamb- from Sonoma County Meat CompanyRaised by the Williams family in the coastal hills of Sonoma County, sheep graze among the abundant wildlife protected by five Great Pyrenees livestock guardian dogs. The Pyrenees guard the sheep from natural predators allowing both to live in harmony with the land.Williams Ranches grows the highest quality lamb, fed on grass, clover and alfalfa with no hormones or antibiotic supplements. The Williams hand select each lamb, determining processing time by the amount of fat cover. This ensures a quality, consistent product that is available year round and lambs that are processed between 5 and 8 months old. This process means you will get a leaner, milder lamb that simply melts in your mouth.Tender, mild, California lamb- lamb-burgers anyone?	1	lb	13.99	13.99	lb	Meat	Lamb	http://goodeggs1.imgix.net/product_photos/oUh6GNHjRG2rerj4EQ9H_FK1A4047.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
880	Lamb Neck Roast (Frozen)	Williams Ranches Lamb- from Sonoma County Meat CompanyWhole Lamb Neck Roast- maybe the greatest braising cut of meat, ever. Low and slow is the way go with this gem!Raised by the Williams family in the coastal hills of Sonoma County, sheep graze among the abundant wildlife protected by five Great Pyrenees livestock guardian dogs. The Pyrenees guard the sheep from natural predators allowing both to live in harmony with the land.Williams Ranches grows the highest quality lamb, fed on grass, clover and alfalfa with no hormones or antibiotic supplements. The Williams hand select each lamb, determining processing time by the amount of fat cover. This ensures a quality, consistent product that is available year round and lambs that are processed between 5 and 8 months old. This process means you will get a leaner, milder lamb that simply melts in your mouth.	1.75	lb	22.99	13.14	lb	Meat	Lamb	http://goodeggs2.imgix.net/product_photos/gou0SKxS3SbouyFzzuxj_20160526-SonomaMeatCo_LambNeck_MG_0303.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
881	Lamb Rib Chops (Frozen)	Williams Ranches Lamb- from Sonoma County Meat CompanyRaised by the Williams family in the coastal hills of Sonoma County, sheep graze among the abundant wildlife protected by five Great Pyrenees livestock guardian dogs. The Pyrenees guard the sheep from natural predators allowing both to live in harmony with the land.Williams Ranches grows the highest quality lamb, fed on grass, clover and alfalfa with no hormones or antibiotic supplements. The Williams hand select each lamb, determining processing time by the amount of fat cover. This ensures a quality, consistent product that is available year round and lambs that are processed between 5 and 8 months old. This process means you will get a leaner, milder lamb that simply melts in your mouth.Tender, mild, California lamb- elegant little rib chops with long bones attached make an awesome presentation for a special meal.	0.4	lb	7.19	17.98	lb	Meat	Lamb	http://goodeggs1.imgix.net/product_photos/q7qTUWoITij51dWm1kih_FK1A4008.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
882	Lamb Neck Roast	Williams Ranches Lamb- from Sonoma County Meat CompanyWhole Lamb Neck Roast- maybe the greatest braising cut of meat, ever. Low and slow is the way go with this gem!Raised by the Williams family in the coastal hills of Sonoma County, sheep graze among the abundant wildlife protected by five Great Pyrenees livestock guardian dogs. The Pyrenees guard the sheep from natural predators allowing both to live in harmony with the land.Williams Ranches grows the highest quality lamb, fed on grass, clover and alfalfa with no hormones or antibiotic supplements. The Williams hand select each lamb, determining processing time by the amount of fat cover. This ensures a quality, consistent product that is available year round and lambs that are processed between 5 and 8 months old. This process means you will get a leaner, milder lamb that simply melts in your mouth.	2	lb	25.99	13.0	lb	Meat	Lamb	http://goodeggs2.imgix.net/product_photos/gou0SKxS3SbouyFzzuxj_20160526-SonomaMeatCo_LambNeck_MG_0303.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
883	Lamb Loin Chops	Williams Ranches Lamb- from Sonoma County Meat CompanyRaised by the Williams family in the coastal hills of Sonoma County, sheep graze among the abundant wildlife protected by five Great Pyrenees livestock guardian dogs. The Pyrenees guard the sheep from natural predators allowing both to live in harmony with the land.Williams Ranches grows the highest quality lamb, fed on grass, clover and alfalfa with no hormones or antibiotic supplements. The Williams hand select each lamb, determining processing time by the amount of fat cover. This ensures a quality, consistent product that is available year round and lambs that are processed between 5 and 8 months old. This process means you will get a leaner, milder lamb that simply melts in your mouth.Tender, mild, California lamb- melt in your mouth loin chops cook up quick for an easy, elegant meal.	0.5	lb	10.99	21.98	lb	Meat	Lamb	http://goodeggs2.imgix.net/product_photos/PoYagfEsSQiRvdqKB0gn_FK1A3898.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
1029	Pasture Raised Pork Heart (Frozen)	Walnut Keep Farms Pork- from Sonoma County Meat Company\n\n\nHeritage breed pigs are pasture-raised in Suisun Valley and finished on walnuts, giving the fat a rich, creamy texture. Never given antibiotics or growth hormones, and never confined.	0.75	lb	5.99	7.99	lb	Meat	Bones & Offal	http://goodeggs2.imgix.net/product_photos/lQtBOp8PQXO4IG10G3W8_X7CgAVQGTTS7uOdXe30n_UZmwRPmMuD5c-7qLCo3QaufvyozruojkVaGSYhu38mo.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
884	Lamb Rib Chops	Williams Ranches Lamb- from Sonoma County Meat CompanyRaised by the Williams family in the coastal hills of Sonoma County, sheep graze among the abundant wildlife protected by five Great Pyrenees livestock guardian dogs. The Pyrenees guard the sheep from natural predators allowing both to live in harmony with the land.Williams Ranches grows the highest quality lamb, fed on grass, clover and alfalfa with no hormones or antibiotic supplements. The Williams hand select each lamb, determining processing time by the amount of fat cover. This ensures a quality, consistent product that is available year round and lambs that are processed between 5 and 8 months old. This process means you will get a leaner, milder lamb that simply melts in your mouth.Tender, mild, California lamb- elegant little rib chops with long bones attached make an awesome presentation for a special meal.	0.6	lb	10.79	17.98	lb	Meat	Lamb	http://goodeggs1.imgix.net/product_photos/q7qTUWoITij51dWm1kih_FK1A4008.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
885	Lamb Rib Chops	Williams Ranches Lamb- from Sonoma County Meat CompanyRaised by the Williams family in the coastal hills of Sonoma County, sheep graze among the abundant wildlife protected by five Great Pyrenees livestock guardian dogs. The Pyrenees guard the sheep from natural predators allowing both to live in harmony with the land.Williams Ranches grows the highest quality lamb, fed on grass, clover and alfalfa with no hormones or antibiotic supplements. The Williams hand select each lamb, determining processing time by the amount of fat cover. This ensures a quality, consistent product that is available year round and lambs that are processed between 5 and 8 months old. This process means you will get a leaner, milder lamb that simply melts in your mouth.Tender, mild, California lamb- elegant little rib chops with long bones attached make an awesome presentation for a special meal.	0.8	lb	14.39	17.99	lb	Meat	Lamb	http://goodeggs1.imgix.net/product_photos/q7qTUWoITij51dWm1kih_FK1A4008.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
886	Lamb Leg Steak	Williams Ranches Lamb- from Sonoma County Meat CompanyLamb leg steaks are super versatile, great grilled to medium rare, equally good baked,braised or in a curry!Raised by the Williams family in the coastal hills of Sonoma County, sheep graze among the abundant wildlife protected by five Great Pyrenees livestock guardian dogs. The Pyrenees guard the sheep from natural predators allowing both to live in harmony with the land.Williams Ranches grows the highest quality lamb, fed on grass, clover and alfalfa with no hormones or antibiotic supplements. The Williams hand select each lamb, determining processing time by the amount of fat cover. This ensures a quality, consistent product that is available year round and lambs that are processed between 5 and 8 months old. This process means you will get a leaner, milder lamb that simply melts in your mouth.Tender, mild, California lamb- melt in your mouth loin chops cook up quick for an easy, elegant meal.	0.7	lb	9.79	13.99	lb	Meat	Lamb	http://goodeggs2.imgix.net/product_photos/xHEMjCpJQvuZgKRGouFJ_FK1A6390.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
887	Lamb Leg Steak	Williams Ranches Lamb- from Sonoma County Meat CompanyLamb leg steaks are super versatile: great grilled to medium rare, baked, braised, or in a curry!Raised by the Williams family in the coastal hills of Sonoma County, sheep graze among the abundant wildlife protected by five Great Pyrenees livestock guardian dogs. The Pyrenees guard the sheep from natural predators allowing both to live in harmony with the land.Williams Ranches grows the highest quality lamb, fed on grass, clover and alfalfa with no hormones or antibiotic supplements. The Williams hand select each lamb, determining processing time by the amount of fat cover. This ensures a quality, consistent product that is available year round and lambs that are processed between 5 and 8 months old. This process means you will get a leaner, milder lamb that simply melts in your mouth.	0.8	lb	11.19	13.99	lb	Meat	Lamb	http://goodeggs2.imgix.net/product_photos/xHEMjCpJQvuZgKRGouFJ_FK1A6390.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
888	Boneless Lamb Leg Roast	Williams Ranches Lamb- from Sonoma County Meat CompanyRaised by the Williams family in the coastal hills of Sonoma County, sheep graze among the abundant wildlife protected by five Great Pyrenees livestock guardian dogs. The Pyrenees guard the sheep from natural predators allowing both to live in harmony with the land.Williams Ranches grows the highest quality lamb, fed on grass, clover and alfalfa with no hormones or antibiotic supplements. The Williams hand select each lamb, determining processing time by the amount of fat cover. This ensures a quality, consistent product that is available year round and lambs that are processed between 5 and 8 months old. This process means you will get a leaner, milder lamb that simply melts in your mouth.Tender, mild, California lamb- this roast is all ready to go! Salt overnight, hit it with some garlic and herbs and roast to medium-rare. Maybe sprinkle some potatoes around the roasting pan, or some parsnips, or carrots...	3.75	lb	48.69	12.98	lb	Meat	Lamb	http://goodeggs2.imgix.net/product_photos/43dZXoITkahbjyrOU0Q5_FK1A3867.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
889	Boneless Lamb Leg Roast (Frozen)	Williams Ranches Lamb- from Sonoma County Meat CompanyRaised by the Williams family in the coastal hills of Sonoma County, sheep graze among the abundant wildlife protected by five Great Pyrenees livestock guardian dogs. The Pyrenees guard the sheep from natural predators allowing both to live in harmony with the land.Williams Ranches grows the highest quality lamb, fed on grass, clover and alfalfa with no hormones or antibiotic supplements. The Williams hand select each lamb, determining processing time by the amount of fat cover. This ensures a quality, consistent product that is available year round and lambs that are processed between 5 and 8 months old. This process means you will get a leaner, milder lamb that simply melts in your mouth.Tender, mild, California lamb- this roast is all ready to go! Salt overnight, hit it with some garlic and herbs and roast to medium-rare. Maybe sprinkle some potatoes around the roasting pan, or some parsnips, or carrots...	4	lb	52.99	13.25	lb	Meat	Lamb	http://goodeggs2.imgix.net/product_photos/43dZXoITkahbjyrOU0Q5_FK1A3867.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
890	Rack of Lamb	Williams Ranches Lamb- from Sonoma County Meat CompanyRack of lamb, an elegant focal point for a spring meal- sear both sides in a hot pan and finish in a 400 degrRaised by the Williams family in the coastal hills of Sonoma County, sheep graze among the abundant wildlife protected by five Great Pyrenees livestock guardian dogs. The Pyrenees guard the sheep from natural predators allowing both to live in harmony with the land.Williams Ranches grows the highest quality lamb, fed on grass, clover and alfalfa with no hormones or antibiotic supplements. The Williams hand select each lamb, determining processing time by the amount of fat cover. This ensures a quality, consistent product that is available year round and lambs that are processed between 5 and 8 months old. This process means you will get a leaner, milder lamb that simply melts in your mouth.	2.5	lb	49.99	20.0	lb	Meat	Lamb	http://goodeggs1.imgix.net/product_photos/Y40WBuMQ9K2G3qCJgq0A_9aqv0i3WS36mENKfz1LI_9VpqeVI8QKA69UhTMAyS_uAZN0fUjRJKs4ZbgJmY1_FK1A5376-1.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
891	Pasture Raised Goat Loin Chop (Frozen)	Sonoma Hills Ranch Goat Loin Chop- from Sonoma County Meat CompanyThese chops are perfect for a quick sear on the grill or in a pan- goat is awesome with Thai and Indian spices and stands up to spicy/sweet/sour marinades incredibly well.From Sonoma Hills Ranch: Our goats eat a combination of what nature provides on our hillsides supplemented with alfalfa and orchard grass. During the fall they get an abundance of acorns and leaves, and during the spring our hillside meadows produce grasses for them. Other than providing some mineral supplements via goat blocks we don’t add a thing. No antibiotics, no grain, no pellets. Just happy goats eating primarily what nature provides. We raise primarily purebred Boer goats. They originate from South Africa and are considered the premier meat goat due to their stocky structure, weight gain and beautiful meat/fat blend. Goat fat doesn’t marble, unlike beef, but our goats always produce an extremely delicate layer of fat that makes the local chefs super happy.	0.3	lb	7.19	23.97	lb	Meat	Other Meats	http://goodeggs2.imgix.net/product_photos/qPaVsWrkSz61kR8wJR96_20160426-SonomaCountyMeat_GoatLoinChops_MG_7908.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
892	Pasture Raised Goat Shoulder Chop (Frozen)	Sonoma Hills Ranch Ground Goat- from Sonoma County Meat CompanyEqually suited to a hot grill or a low oven braise, goat shoulder chops can be treated the same way you would a lamb shoulder chop with the exception that goat is a bit leaner, so be careful not to over do it if using high heat.From Sonoma Hills Ranch: Our goats eat a combination of what nature provides on our hillsides supplemented with alfalfa and orchard grass. During the fall they get an abundance of acorns and leaves, and during the spring our hillside meadows produce grasses for them. Other than providing some mineral supplements via goat blocks we don’t add a thing. No antibiotics, no grain, no pellets. Just happy goats eating primarily what nature provides. We raise primarily purebred Boer goats. They originate from South Africa and are considered the premier meat goat due to their stocky structure, weight gain and beautiful meat/fat blend. Goat fat doesn’t marble, unlike beef, but our goats always produce an extremely delicate layer of fat that makes the local chefs super happy.	1.25	lb	18.49	14.79	lb	Meat	Other Meats	http://goodeggs1.imgix.net/product_photos/6134pWXsSMmakUfMnRPo_20160426-SonomaCountyMeat_GoatShoulder_MG_7933.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
893	Pasture Raised Goat Rib Chop (Frozen)	Sonoma Hills Ranch Goat Rib Chop- from Sonoma County Meat CompanyThese chops are perfect for a quick sear on the grill or in a pan- goat is awesome with Thai and Indian spices and stands up to spicy/sweet/sour marinades incredibly well.From Sonoma Hills Ranch: Our goats eat a combination of what nature provides on our hillsides supplemented with alfalfa and orchard grass. During the fall they get an abundance of acorns and leaves, and during the spring our hillside meadows produce grasses for them. Other than providing some mineral supplements via goat blocks we don’t add a thing. No antibiotics, no grain, no pellets. Just happy goats eating primarily what nature provides. We raise primarily purebred Boer goats. They originate from South Africa and are considered the premier meat goat due to their stocky structure, weight gain and beautiful meat/fat blend. Goat fat doesn’t marble, unlike beef, but our goats always produce an extremely delicate layer of fat that makes the local chefs super happy.	0.6	lb	11.99	19.98	lb	Meat	Other Meats	http://goodeggs1.imgix.net/product_photos/LendiFwqRkaI4CEQi3ny_20160426-SonomaCountyMeat_GoatRibChops_MG_7929.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
894	Pasture Raised Boneless Goat Leg Roast (Frozen)	Sonoma Hills Ranch Ground Goat- from Sonoma County Meat CompanyRoast or grill to medium rare, slice thin and serve on bed of arugula- or, this recipe from Mario Batali is a favorite of mine- BBQ'd Goat with Lemon Salad and Almond PestoFrom Sonoma Hills Ranch: Our goats eat a combination of what nature provides on our hillsides supplemented with alfalfa and orchard grass. During the fall they get an abundance of acorns and leaves, and during the spring our hillside meadows produce grasses for them. Other than providing some mineral supplements via goat blocks we don’t add a thing. No antibiotics, no grain, no pellets. Just happy goats eating primarily what nature provides. We raise primarily purebred Boer goats. They originate from South Africa and are considered the premier meat goat due to their stocky structure, weight gain and beautiful meat/fat blend. Goat fat doesn’t marble, unlike beef, but our goats always produce an extremely delicate layer of fat that makes the local chefs super happy.	2	lb	29.99	15.0	lb	Meat	Other Meats	http://goodeggs1.imgix.net/product_photos/1ItauvR8SVqXHwuCVpJd_20160426-SonomaCountyMeat_GoatLoin_MG_7921.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
895	Pasture Raised Goat Loin Chop (Frozen)	Sonoma Hills Ranch Goat Loin Chop- from Sonoma County Meat CompanyThese chops are perfect for a quick sear on the grill or in a pan- goat is awesome with Thai and Indian spices and stands up to spicy/sweet/sour marinades incredibly well.From Sonoma Hills Ranch: Our goats eat a combination of what nature provides on our hillsides supplemented with alfalfa and orchard grass. During the fall they get an abundance of acorns and leaves, and during the spring our hillside meadows produce grasses for them. Other than providing some mineral supplements via goat blocks we don’t add a thing. No antibiotics, no grain, no pellets. Just happy goats eating primarily what nature provides. We raise primarily purebred Boer goats. They originate from South Africa and are considered the premier meat goat due to their stocky structure, weight gain and beautiful meat/fat blend. Goat fat doesn’t marble, unlike beef, but our goats always produce an extremely delicate layer of fat that makes the local chefs super happy.	0.6	lb	14.39	23.98	lb	Meat	Other Meats	http://goodeggs2.imgix.net/product_photos/qPaVsWrkSz61kR8wJR96_20160426-SonomaCountyMeat_GoatLoinChops_MG_7908.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
896	Pasture Raised Goat Loin Chop (Frozen)	Sonoma Hills Ranch Goat Loin Chop- from Sonoma County Meat CompanyThese chops are perfect for a quick sear on the grill or in a pan- goat is awesome with Thai and Indian spices and stands up to spicy/sweet/sour marinades incredibly well.From Sonoma Hills Ranch: Our goats eat a combination of what nature provides on our hillsides supplemented with alfalfa and orchard grass. During the fall they get an abundance of acorns and leaves, and during the spring our hillside meadows produce grasses for them. Other than providing some mineral supplements via goat blocks we don’t add a thing. No antibiotics, no grain, no pellets. Just happy goats eating primarily what nature provides. We raise primarily purebred Boer goats. They originate from South Africa and are considered the premier meat goat due to their stocky structure, weight gain and beautiful meat/fat blend. Goat fat doesn’t marble, unlike beef, but our goats always produce an extremely delicate layer of fat that makes the local chefs super happy.	0.7	lb	16.79	23.99	lb	Meat	Other Meats	http://goodeggs2.imgix.net/product_photos/qPaVsWrkSz61kR8wJR96_20160426-SonomaCountyMeat_GoatLoinChops_MG_7908.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
897	Pasture Raised Goat Rib Chop (Frozen)	Sonoma Hills Ranch Goat Rib Chop- from Sonoma County Meat CompanyThese chops are perfect for a quick sear on the grill or in a pan- goat is awesome with Thai and Indian spices and stands up to spicy/sweet/sour marinades incredibly well.From Sonoma Hills Ranch: Our goats eat a combination of what nature provides on our hillsides supplemented with alfalfa and orchard grass. During the fall they get an abundance of acorns and leaves, and during the spring our hillside meadows produce grasses for them. Other than providing some mineral supplements via goat blocks we don’t add a thing. No antibiotics, no grain, no pellets. Just happy goats eating primarily what nature provides. We raise primarily purebred Boer goats. They originate from South Africa and are considered the premier meat goat due to their stocky structure, weight gain and beautiful meat/fat blend. Goat fat doesn’t marble, unlike beef, but our goats always produce an extremely delicate layer of fat that makes the local chefs super happy.	0.2	lb	3.99	19.95	lb	Meat	Other Meats	http://goodeggs1.imgix.net/product_photos/LendiFwqRkaI4CEQi3ny_20160426-SonomaCountyMeat_GoatRibChops_MG_7929.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
898	Pasture Raised Goat Shoulder Chop (Frozen)	Sonoma Hills Ranch Ground Goat- from Sonoma County Meat CompanyEqually suited to a hot grill or a low oven braise, goat shoulder chops can be treated the same way you would a lamb shoulder chop with the exception that goat is a bit leaner, so be careful not to over do it if using high heat.From Sonoma Hills Ranch: Our goats eat a combination of what nature provides on our hillsides supplemented with alfalfa and orchard grass. During the fall they get an abundance of acorns and leaves, and during the spring our hillside meadows produce grasses for them. Other than providing some mineral supplements via goat blocks we don’t add a thing. No antibiotics, no grain, no pellets. Just happy goats eating primarily what nature provides. We raise primarily purebred Boer goats. They originate from South Africa and are considered the premier meat goat due to their stocky structure, weight gain and beautiful meat/fat blend. Goat fat doesn’t marble, unlike beef, but our goats always produce an extremely delicate layer of fat that makes the local chefs super happy.	0.3	lb	4.49	14.97	lb	Meat	Other Meats	http://goodeggs1.imgix.net/product_photos/6134pWXsSMmakUfMnRPo_20160426-SonomaCountyMeat_GoatShoulder_MG_7933.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
899	Pasture Raised Goat Rib Chop (Frozen)	Sonoma Hills Ranch Goat Rib Chop- from Sonoma County Meat CompanyThese chops are perfect for a quick sear on the grill or in a pan- goat is awesome with Thai and Indian spices and stands up to spicy/sweet/sour marinades incredibly well.From Sonoma Hills Ranch: Our goats eat a combination of what nature provides on our hillsides supplemented with alfalfa and orchard grass. During the fall they get an abundance of acorns and leaves, and during the spring our hillside meadows produce grasses for them. Other than providing some mineral supplements via goat blocks we don’t add a thing. No antibiotics, no grain, no pellets. Just happy goats eating primarily what nature provides. We raise primarily purebred Boer goats. They originate from South Africa and are considered the premier meat goat due to their stocky structure, weight gain and beautiful meat/fat blend. Goat fat doesn’t marble, unlike beef, but our goats always produce an extremely delicate layer of fat that makes the local chefs super happy.	0.3	lb	5.99	19.97	lb	Meat	Other Meats	http://goodeggs1.imgix.net/product_photos/LendiFwqRkaI4CEQi3ny_20160426-SonomaCountyMeat_GoatRibChops_MG_7929.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
900	Pasture Raised Goat Shoulder Chop (Frozen)	Sonoma Hills Ranch Ground Goat- from Sonoma County Meat CompanyEqually suited to a hot grill or a low oven braise, goat shoulder chops can be treated the same way you would a lamb shoulder chop with the exception that goat is a bit leaner, so be careful not to over do it if using high heat.From Sonoma Hills Ranch: Our goats eat a combination of what nature provides on our hillsides supplemented with alfalfa and orchard grass. During the fall they get an abundance of acorns and leaves, and during the spring our hillside meadows produce grasses for them. Other than providing some mineral supplements via goat blocks we don’t add a thing. No antibiotics, no grain, no pellets. Just happy goats eating primarily what nature provides. We raise primarily purebred Boer goats. They originate from South Africa and are considered the premier meat goat due to their stocky structure, weight gain and beautiful meat/fat blend. Goat fat doesn’t marble, unlike beef, but our goats always produce an extremely delicate layer of fat that makes the local chefs super happy.	0.4	lb	5.99	14.98	lb	Meat	Other Meats	http://goodeggs1.imgix.net/product_photos/6134pWXsSMmakUfMnRPo_20160426-SonomaCountyMeat_GoatShoulder_MG_7933.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
901	Pasture Raised Goat Rib Chop (Frozen)	Sonoma Hills Ranch Goat Rib Chop- from Sonoma County Meat CompanyThese chops are perfect for a quick sear on the grill or in a pan- goat is awesome with Thai and Indian spices and stands up to spicy/sweet/sour marinades incredibly well.From Sonoma Hills Ranch: Our goats eat a combination of what nature provides on our hillsides supplemented with alfalfa and orchard grass. During the fall they get an abundance of acorns and leaves, and during the spring our hillside meadows produce grasses for them. Other than providing some mineral supplements via goat blocks we don’t add a thing. No antibiotics, no grain, no pellets. Just happy goats eating primarily what nature provides. We raise primarily purebred Boer goats. They originate from South Africa and are considered the premier meat goat due to their stocky structure, weight gain and beautiful meat/fat blend. Goat fat doesn’t marble, unlike beef, but our goats always produce an extremely delicate layer of fat that makes the local chefs super happy.	0.4	lb	7.99	19.97	lb	Meat	Other Meats	http://goodeggs1.imgix.net/product_photos/LendiFwqRkaI4CEQi3ny_20160426-SonomaCountyMeat_GoatRibChops_MG_7929.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
902	Pasture Raised Goat Shoulder Chop (Frozen)	Sonoma Hills Ranch Ground Goat- from Sonoma County Meat CompanyEqually suited to a hot grill or a low oven braise, goat shoulder chops can be treated the same way you would a lamb shoulder chop with the exception that goat is a bit leaner, so be careful not to over do it if using high heat.From Sonoma Hills Ranch: Our goats eat a combination of what nature provides on our hillsides supplemented with alfalfa and orchard grass. During the fall they get an abundance of acorns and leaves, and during the spring our hillside meadows produce grasses for them. Other than providing some mineral supplements via goat blocks we don’t add a thing. No antibiotics, no grain, no pellets. Just happy goats eating primarily what nature provides. We raise primarily purebred Boer goats. They originate from South Africa and are considered the premier meat goat due to their stocky structure, weight gain and beautiful meat/fat blend. Goat fat doesn’t marble, unlike beef, but our goats always produce an extremely delicate layer of fat that makes the local chefs super happy.	0.5	lb	7.49	14.98	lb	Meat	Other Meats	http://goodeggs1.imgix.net/product_photos/6134pWXsSMmakUfMnRPo_20160426-SonomaCountyMeat_GoatShoulder_MG_7933.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
903	Pasture Raised Goat Rib Chop (Frozen)	Sonoma Hills Ranch Goat Rib Chop- from Sonoma County Meat CompanyThese chops are perfect for a quick sear on the grill or in a pan- goat is awesome with Thai and Indian spices and stands up to spicy/sweet/sour marinades incredibly well.From Sonoma Hills Ranch: Our goats eat a combination of what nature provides on our hillsides supplemented with alfalfa and orchard grass. During the fall they get an abundance of acorns and leaves, and during the spring our hillside meadows produce grasses for them. Other than providing some mineral supplements via goat blocks we don’t add a thing. No antibiotics, no grain, no pellets. Just happy goats eating primarily what nature provides. We raise primarily purebred Boer goats. They originate from South Africa and are considered the premier meat goat due to their stocky structure, weight gain and beautiful meat/fat blend. Goat fat doesn’t marble, unlike beef, but our goats always produce an extremely delicate layer of fat that makes the local chefs super happy.	0.5	lb	9.99	19.98	lb	Meat	Other Meats	http://goodeggs1.imgix.net/product_photos/LendiFwqRkaI4CEQi3ny_20160426-SonomaCountyMeat_GoatRibChops_MG_7929.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
904	Pasture Raised Goat Shank (Frozen)	Sonoma Hills Ranch Ground Goat- from Sonoma County Meat CompanyA slow and low braise in the oven or on the stove top is the way to go with this flavorful cut. Cover your braise directly with a sheet of parchment paper to keep the top layer from drying out ( a tip gleaned from observing the Good Eggs chefs prepping lunch).From Sonoma Hills Ranch: Our goats eat a combination of what nature provides on our hillsides supplemented with alfalfa and orchard grass. During the fall they get an abundance of acorns and leaves, and during the spring our hillside meadows produce grasses for them. Other than providing some mineral supplements via goat blocks we don’t add a thing. No antibiotics, no grain, no pellets. Just happy goats eating primarily what nature provides. We raise primarily purebred Boer goats. They originate from South Africa and are considered the premier meat goat due to their stocky structure, weight gain and beautiful meat/fat blend. Goat fat doesn’t marble, unlike beef, but our goats always produce an extremely delicate layer of fat that makes the local chefs super happy.	0.6	lb	8.99	14.98	lb	Meat	Other Meats	http://goodeggs2.imgix.net/product_photos/uQnpQLuLQYqDYeYn56tp_20160426-SonomaCountyMeat_GoatShank_MG_7952.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
905	Pasture Raised Goat Shank (Frozen)	Sonoma Hills Ranch Ground Goat- from Sonoma County Meat CompanyA slow and low braise in the oven or on the stove top is the way to go with this flavorful cut. Cover your braise directly with a sheet of parchment paper to keep the top layer from drying out ( a tip gleaned from observing the Good Eggs chefs prepping lunch).From Sonoma Hills Ranch: Our goats eat a combination of what nature provides on our hillsides supplemented with alfalfa and orchard grass. During the fall they get an abundance of acorns and leaves, and during the spring our hillside meadows produce grasses for them. Other than providing some mineral supplements via goat blocks we don’t add a thing. No antibiotics, no grain, no pellets. Just happy goats eating primarily what nature provides. We raise primarily purebred Boer goats. They originate from South Africa and are considered the premier meat goat due to their stocky structure, weight gain and beautiful meat/fat blend. Goat fat doesn’t marble, unlike beef, but our goats always produce an extremely delicate layer of fat that makes the local chefs super happy.	0.7	lb	10.49	14.99	lb	Meat	Other Meats	http://goodeggs2.imgix.net/product_photos/uQnpQLuLQYqDYeYn56tp_20160426-SonomaCountyMeat_GoatShank_MG_7952.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
906	Pasture Raised Goat Rib Chop (Frozen)	Sonoma Hills Ranch Goat Rib Chop- from Sonoma County Meat CompanyThese chops are perfect for a quick sear on the grill or in a pan- goat is awesome with Thai and Indian spices and stands up to spicy/sweet/sour marinades incredibly well.From Sonoma Hills Ranch: Our goats eat a combination of what nature provides on our hillsides supplemented with alfalfa and orchard grass. During the fall they get an abundance of acorns and leaves, and during the spring our hillside meadows produce grasses for them. Other than providing some mineral supplements via goat blocks we don’t add a thing. No antibiotics, no grain, no pellets. Just happy goats eating primarily what nature provides. We raise primarily purebred Boer goats. They originate from South Africa and are considered the premier meat goat due to their stocky structure, weight gain and beautiful meat/fat blend. Goat fat doesn’t marble, unlike beef, but our goats always produce an extremely delicate layer of fat that makes the local chefs super happy.	0.7	lb	13.99	19.99	lb	Meat	Other Meats	http://goodeggs1.imgix.net/product_photos/LendiFwqRkaI4CEQi3ny_20160426-SonomaCountyMeat_GoatRibChops_MG_7929.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
907	Pasture Raised Goat Shank (Frozen)	Sonoma Hills Ranch Ground Goat- from Sonoma County Meat CompanyA slow and low braise in the oven or on the stove top is the way to go with this flavorful cut. Cover your braise directly with a sheet of parchment paper to keep the top layer from drying out ( a tip gleaned from observing the Good Eggs chefs prepping lunch).From Sonoma Hills Ranch: Our goats eat a combination of what nature provides on our hillsides supplemented with alfalfa and orchard grass. During the fall they get an abundance of acorns and leaves, and during the spring our hillside meadows produce grasses for them. Other than providing some mineral supplements via goat blocks we don’t add a thing. No antibiotics, no grain, no pellets. Just happy goats eating primarily what nature provides. We raise primarily purebred Boer goats. They originate from South Africa and are considered the premier meat goat due to their stocky structure, weight gain and beautiful meat/fat blend. Goat fat doesn’t marble, unlike beef, but our goats always produce an extremely delicate layer of fat that makes the local chefs super happy.	0.8	lb	11.99	14.99	lb	Meat	Other Meats	http://goodeggs2.imgix.net/product_photos/uQnpQLuLQYqDYeYn56tp_20160426-SonomaCountyMeat_GoatShank_MG_7952.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
908	Pasture Raised Goat Shoulder Chop (Frozen)	Sonoma Hills Ranch Ground Goat- from Sonoma County Meat CompanyEqually suited to a hot grill or a low oven braise, goat shoulder chops can be treated the same way you would a lamb shoulder chop with the exception that goat is a bit leaner, so be careful not to over do it if using high heat.From Sonoma Hills Ranch: Our goats eat a combination of what nature provides on our hillsides supplemented with alfalfa and orchard grass. During the fall they get an abundance of acorns and leaves, and during the spring our hillside meadows produce grasses for them. Other than providing some mineral supplements via goat blocks we don’t add a thing. No antibiotics, no grain, no pellets. Just happy goats eating primarily what nature provides. We raise primarily purebred Boer goats. They originate from South Africa and are considered the premier meat goat due to their stocky structure, weight gain and beautiful meat/fat blend. Goat fat doesn’t marble, unlike beef, but our goats always produce an extremely delicate layer of fat that makes the local chefs super happy.	1	lb	14.99	14.99	lb	Meat	Other Meats	http://goodeggs1.imgix.net/product_photos/6134pWXsSMmakUfMnRPo_20160426-SonomaCountyMeat_GoatShoulder_MG_7933.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
909	Pasture Raised Boneless Goat Leg Roast (Frozen)	Sonoma Hills Ranch Ground Goat- from Sonoma County Meat CompanyRoast or grill to medium rare, slice thin and serve on bed of arugula- or, this recipe from Mario Batali is a favorite of mine- BBQ'd Goat with Lemon Salad and Almond PestoFrom Sonoma Hills Ranch: Our goats eat a combination of what nature provides on our hillsides supplemented with alfalfa and orchard grass. During the fall they get an abundance of acorns and leaves, and during the spring our hillside meadows produce grasses for them. Other than providing some mineral supplements via goat blocks we don’t add a thing. No antibiotics, no grain, no pellets. Just happy goats eating primarily what nature provides. We raise primarily purebred Boer goats. They originate from South Africa and are considered the premier meat goat due to their stocky structure, weight gain and beautiful meat/fat blend. Goat fat doesn’t marble, unlike beef, but our goats always produce an extremely delicate layer of fat that makes the local chefs super happy.	2.25	lb	33.49	14.88	lb	Meat	Other Meats	http://goodeggs1.imgix.net/product_photos/1ItauvR8SVqXHwuCVpJd_20160426-SonomaCountyMeat_GoatLoin_MG_7921.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
910	Uncured Beef Hot Dogs (Frozen)	Naturally cured with celery and salt, we worked hard and long to make a\ngreat tasting hot dog using only the highest quality meat, organic spices and\nno nitrites. THESE DOGS ARE REAL FOOD! Found at our farmers market, retail shop\nand local restaurants, we have upped our dog production to offer this popular\nitem at Good Eggs. We hope you love them as much as we do. Ingredients: Beef, Sea Salt, Organic Evaporated Cane Juice, Organic Paprika, Organic Spices, Organic Garlic, Cultured Celery Juice	1	lb	8.49	8.49	lb	Meat	Sausage	http://goodeggs1.imgix.net/product_photos/YfmKJ3arRzyBy1gRdCoK_FK1A4753.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
911	Bacon Hot Dogs (Frozen)	Ingredients: Pork, Water, Bacon (Pork, water, sea salt, brown sugar, cherry powder, Turbinado sugar, natural flavoring) sea salt, spices, celery powder, turbindado sugar, sodium carbonate, natural flavoring, in a sheep casing.Our pigs are a cross of Duroc and Yorkshire breeds. Our hogs are fed GMO-free, vegetarian grains and legumes, 80% of which are grown on the Rancho. Pigs are raised in deep-bedded hoop barns with continual access to large open air pastures with plenty of sunshine and a great view of the California Buttes. All animals are confinement-free for 100% of their lives, humanely treated with best practices certified by Global Animal Partnership. Our pigs are never fed antibiotics or growth hormones. Llano Seco Pork is the culmination of our mission to provide a variety of products while caring for the people, the animals and the land. We pride ourselves in our holistic approach to ranching.	0.75	lb	7.49	9.99	lb	Meat	Sausage	http://goodeggs1.imgix.net/product_photos/tSMJY38JSo2vmNQhXXAb_FK1A8101.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
912	Chicken Apple Sausage (Frozen)	Ingredients: Hormone free boneless skinless chicken thighs, applesauce, maple syrup, oats, cinnamon and spices (no nitrates or preservatives).  Lamb casing ,Kid favorite, mild. Suggested cooking instructions: Add  approx.1/4 inch of water to a skillet or shallow sauce pan, place sausages in covered pan and bring to a boil. Steam for approximately 5 minutes, pour off excess water. Add small amount of oil or butter, lower heat and cook until skins are brown. Enjoy!	1	lb	10.99	10.99	lb	Meat	Sausage	http://goodeggs1.imgix.net/product_photos/30BhA8hzTW6QwVTgmq1l_4o4j-dkPSCOPMN1VXz8UmKV3oLXH6rDCC04ogtUzap0.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
913	Spinach Mozzarella Chicken Sausage	Ingredients: Hormone free boneless skinless chicken thighs, spinach, mozzarella cheese, spice blend (no nitrates, or preservatives) Pork casing. Mild and Kid approved!Suggested cooking instructions: Add  approx.1/4 inch of water to a skillet or shallow sauce pan, place sausages in covered pan and bring to a boil. Steam for approximately 5 minutes, pour off excess water. Add small amount of oil or butter, lower heat and cook until skins are brown. Enjoy!Excellent grilled as well!	1	lb	10.99	10.99	lb	Meat	Sausage	http://goodeggs2.imgix.net/product_photos/Hgi4oBxqRJuvgClzXMTV_poht3A1EMQekYZpz0IQbMllHXkqZtevA7nhY_e_WDN0.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
914	Organic Chicken Apple & Wildflower Honey Sausage	Slightly sweet with chunks of tender apple and whispers of wildflower honey, our organic chicken sausages are always the perfect pick.\n\nThese organic chickens are raised on family\nfarms, like Merlyn Bender’s in Humbolt, Nebraska.  He grew up on a farm,\nas had his parents, and appreciated the family values the livelihood provided.\nWhen it comes to animal welfare, Merlyn focuses on food, lighting, air, and\nwater. He provides his chickens with high-quality organic feed; allows the\nbirds to get at least eight hours of dark nighttime rest; provides proper\nventilation in barns to keep the air clean; and ensures a consistent clean\nwater supply. When weather permits, the chickens range outdoors, which he finds\nenhances health and well-being. Merlyn feels good about farming organically and\nthe opportunity it provides to produce good pure foods.\nIngredients: Organic Chicken, Water, Organic Dried Apples, Organic Honey, Organic Apple Juice Concentrate, 2% or Less of: Sea Salt, Organic Evaporated Cane Syrup, Organic Spices, Organic Onion Powder, Celery Powder, Sodium Lactate.	0.625	lb	4.39	7.02	lb	Meat	Sausage	http://goodeggs2.imgix.net/product_photos/H0OZBFbzTaKTjkAnPOnY_20160409-TrueStory_AppleWildflowerSausage_MG_6029.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
915	Turkey Chorizo	Turkey Chorizo: Our Diestel Turkey Chorizo is delicious in a breakfast burrito, casserole, or even just grilled up with veggies! We’ve developed a special seasoning blend that gives our chorizo a nice kick without it being too spicy. It’s versatile, and we know you’ll love it for breakfast, lunch, or dinner!Ingredients: Turkey, water, spices, vinegar, sea salt, granulated garlic and onion powder.Real Turkey AttributesGluten FreeNo artificial ingredients or preservativesNo hormones, antibiotics, or growth stimulantsPure ground turkeyThoughtfully and humanely raised on GAP rated farmsGreat texture and flavor-the way turkey should taste!	16	oz	6.49	6.49	lb	Meat	Sausage	http://goodeggs2.imgix.net/product_photos/u8thBuORR3ebzXKJdGty_FK1A9373.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
916	Spicy Fennel Chicken Sausage (Frozen)	Ingredients: hormone free boneless skinless chicken thighs, fennel seed, aniseed, cayenne peppers, chilis, parsley. (No nitrates or preservatives). Pork casing, spicy!Suggested cooking instructions: Add  approx.1/4 inch of water to a skillet or shallow sauce pan, place sausages in covered pan and bring to a boil. Steam for approximately 5 minutes, pour off excess water. Add small amount of oil or butter, lower heat and cook until skins are brown. Enjoy!Excellent grilled as well !	1	lb	10.99	10.99	lb	Meat	Sausage	http://goodeggs1.imgix.net/product_photos/ryfhiV7lRNmtWus0OnYH_6R0NwO4KKqyTiWUtvNzjHDEeHWs5gy67e_eWQc7paIE.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
917	Tomato Basil Chicken Sausage (Frozen)	Ingredients: Hormone free boneless skinless chicken thighs, sun dried tomatoes, fresh basil, spice blend (no nitrates or preservatives). Pork casing. Mild.Suggested cooking instructions: Add  approx.1/4 inch of water to a skillet or shallow sauce pan, place sausages in covered pan and bring to a boil. Steam for approximately 5 minutes, pour off excess water. Add small amount of oil or butter, lower heat and cook until skins are brown. Enjoy!Excellent grilled as well !	1	lb	10.99	10.99	lb	Meat	Sausage	http://goodeggs2.imgix.net/product_photos/570qCZpRfmEHVALyqw8Q_upN07XSwsZBOlQ-AsYDM21xDNO-zPFYoKm0eeK9Uam0.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
918	Artichoke & Mushroom Chicken Sausage (Frozen)	Ingredients: Hormone-free boneless skinless chicken thighs, porcini mushrooms, artichoke hearts, garlic, onion, spice blend. Pork casing (No preservatives or nitrates.)Suggested cooking instructions: Add  approx.1/4 inch of water to a skillet or shallow sauce pan, place sausages in covered pan and bring to a boil. Steam for approximately 5 minutes, pour off excess water. Add small amount of oil or butter, lower heat and cook until skins are brown. Enjoy!Excellent for grilling as well !	1	lb	10.99	10.99	lb	Meat	Sausage	http://goodeggs2.imgix.net/product_photos/JPajTl2IRSmDNB1sh2aq_xQ88UrQ5vet0xMr7Ek695lXAt95DBR1xxgLrt-L-qsA.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
919	Southwestern Chicken Sausage (Frozen)	Ingredients: Hormone free boneless skinless chicken thighs, green chilies, cilantro, garlic, spice blend (no nitrates or preservatives). Pork casing, spicy! Suggested cooking instructions: Add  approx.1/4 inch of water to a skillet or shallow sauce pan, place sausages in covered pan and bring to a boil. Steam for approximately 5 minutes, pour off excess water. Add small amount of oil or butter, lower heat and cook until skins are brown. Enjoy!Excellent grilled as well!	1	lb	10.99	10.99	lb	Meat	Sausage	http://goodeggs1.imgix.net/product_photos/9rijQrChQkSNdV1uNtlz_wMaxkB4s40VWe2XXtRq0wPuXIUluix1RBNd7e91Es3E.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
920	Breakfast Sausage, Bulk (Frozen)	The morning has never been so enjoyable. A slight sweetness is paired with our unctuous porky flavor to make the perfect accompaniment to your eggs, pancakes, oatmeal...Ingredients: Llano Seco Pork, Sea Salt, Paprika, and Spices.Our pigs are a cross of Duroc and Yorkshire breeds. Our hogs are fed GMO-free, vegetarian grains and legumes, 80% of which are grown on the Rancho. Pigs are raised in deep-bedded hoop barns with continual access to large open air pastures with plenty of sunshine and a great view of the California Buttes. All animals are confinement-free for 100% of their lives, humanely treated with best practices certified by Global Animal Partnership. Our pigs are never fed antibiotics or growth hormones. Llano Seco Pork is the culmination of our mission to provide a variety of products while caring for the people, the animals and the land. We pride ourselves in our holistic approach to ranching.	0.75	lb	5.79	7.72	lb	Meat	Sausage	http://goodeggs1.imgix.net/product_photos/yrUIKjHtRaWsx0b0XG85_llanoseco_breakfastsausage.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
921	Apple Bacon Sausage (Frozen)	This is PRMC’s famous breakfast sausage. Made with our own\nmaple bacon, apples and organic spices these links are the perfect combination\nof sweet and smoky for your family’s breakfast table. These links arrive fully\ncooked, so just defrost and heat! Be careful though—they’re truly addicting!Ingredients: Pork (Food Alliance Certified), Water, Uncured\nMaple Bacon (Pork, Water, Organic Evaporated Cane Syrup, Sea Salt, Organic\nMaple Syrup, Cultured Celery Juice) Unsulfured Evaporated Apples, Apple Juice\nConcentrate, Sea Salt, Organic Spices, in Natural Pork Casing	0.75	lb	7.49	9.99	lb	Meat	Sausage	http://goodeggs1.imgix.net/product_photos/F2ltLZdJRwumdL7iKzzf_FK1A0924.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
922	Pork Breakfast Sausage	Our Breakfast Sausage contains 100% pork seasoned with fresh sage and real Grade B (which is best) maple syrup.There are six, 2oz sausages per package.Product is fully cooked. INGREDIENTS: Pork shoulder, pork fatback, salt, milk powder, white and black pepper, ginger, mustard powder, nutmeg, sage, maple syrup.	0.75	lb	5.99	7.99	lb	Meat	Sausage	http://goodeggs2.imgix.net/product_photos/Ecf2tqhaQVixiswfUazB_FK1A6843.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
923	Pasture Raised Pork Breakfast Sausage (Frozen)	Walnut Keep Farms Pork- from Sonoma County Meat CompanyHeritage breed pigs are pasture-raised in Suisun Valley and finished on walnuts, giving the fat a rich, creamy texture. Never given antibiotics or growth hormones, and never confined. Ingredients: Walnut Keep Pork, Salt, Sugar, Sage, Sweet Smoked Paprika, Black PepperA savory breakfast sausage with well balanced spices where the pork flavor shines through and the sage is the predominant spice- would be great in an omelette, breakfast scramble, burrito, or frittata.	0.7	lb	8.49	12.13	lb	Meat	Sausage	http://goodeggs2.imgix.net/product_photos/gZH0dvHQRfavKEy4F3AG_FK1A9440.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
924	Whiskey Maple Sage Sausage (Frozen)	These fully cooked sausages are made with real whiskey and a\ntouch of maple, but aren't too sweet. Combined with sage and other organic spices\nthese delicious links are versatile and great for breakfast, lunch or dinner. One\nof our most popular market picks. \nIngredients: Pork, Whiskey, Brown Sugar, Sea Salt, Maple\nSyrup, Black Pepper, Sage, Nutmeg, Cayenne Pepper, in Natural Pork Casing	0.75	lb	7.49	9.99	lb	Meat	Sausage	http://goodeggs2.imgix.net/product_photos/DQGpSGdTScP8dpSkklsU_FK1A0892.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
925	Turkey Breakfast Sausage (Frozen)	Start your morning off right with Diestel Sausage. Our savory blend of herbs is delicious, and our sausage packs a lean protein punch to power you through the day. Diestel Breakfast Sausage is delicious with eggs or in a breakfast burrito. You can also make breakfast patties with it. For a brunch specialty, try our Diestel Turkey Breakfast Sausage Strata.Ingredients: Turkey, water, sea salt, spices, and turbinado (unrefined sugar)Real Turkey AttributesGluten FreeNo artificial ingredients or preservativesNo hormones, antibiotics, or growth stimulantsPure ground turkeyThoughtfully and humanely raised on GAP rated farmsGreat texture and flavor-the way turkey should taste!	16	oz	7.29	7.29	lb	Meat	Sausage	http://goodeggs1.imgix.net/product_photos/Xl6AmV4eQnO6dJUdrVXd_FK1A9378.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
926	Pasture Raised Apple Fennel Pork Sausage (Frozen)	Walnut Keep Farms Pork- from Sonoma County Meat CompanyHeritage breed pigs are pasture-raised in Suisun Valley and finished on walnuts, giving the fat a rich, creamy texture. Never given antibiotics or growth hormones, and never confined. A nicely balanced sausage, equally great for breakfast or for stuffing an acorn squash!Ingredients: pork, apple, salt, fennel, sugar, onion powder, sage, apple cider vinegar powder	0.7	lb	6.99	9.99	lb	Meat	Sausage	http://goodeggs2.imgix.net/product_photos/dbgQhkw2SpaYEv9mhoVS_FK1A0653.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
927	Pasture Raised Pork Sausage, Bulk (Frozen)	Pasture Raised Pork Sauasage, No Casing- from Simas Swine and Wine in the Capay ValleyGrab some winter squash and start stuffing!A mild sausage with an awesomely rich pork flavor, equally great for both breakfast patties and pasta sauce, probably the most versatile sausage in our lineup!Ingredients: Pork, Water, Salt, Black Pepper, Spices and Crushed Red Pepper.Pasture raised Berkshire cross hogs from the Capay Valley.	1	lb	11.99	11.99	lb	Meat	Sausage	http://goodeggs1.imgix.net/product_photos/mQ6pA8HSVi8cMnhGFiis_FK1A8581.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
928	Sweet Italian Sausage (Frozen)	Made using a very traditional European recipe including\nanise, fennel, minced garlic and touch of pepper, our Sweet Italian Sausage is\na true “do it all sausage”. Its great served in a roll, in your favorite pizza\nor pasta recipe, or all by itself. Fully cooked for simple prep. \nIngredients: Pork (Food Alliance Certified), Water, Organic\nSpices, Sea Salt, Organic Evaporated Cane Syrup, Organic Garlic, Organic\nPaprika, in Natural Pork Casing	0.75	lb	7.49	9.99	lb	Meat	Sausage	http://goodeggs2.imgix.net/product_photos/Y7GVXjmuSLvGYhK8dLTM_FK1A0899.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
929	Bockwurst (Frozen)	PRMC’s Bockwurst is a traditional Munich-style Weisswurst\n(white sausage), made with milk, eggs and fresh spices including Italian\nparsley and cinnamon. The fine mousse is a perfect pair with your favorite\nhigh-quality mustard, a crusty roll, and of course, a stein of Bavarian\nbeer.  Kids love this one too – It is a\ntrue staff favorite. Arrives fully cooked for easy prep. \n \nIngredients: Pork\n(Food Alliance Certified), Milk, Water, Eggs, Sea Salt, Organic Evaporated Cane\n	0.75	lb	7.49	9.99	lb	Meat	Sausage	http://goodeggs1.imgix.net/product_photos/A5icPzRORva7zZB400mg_FK1A0954.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
930	Pasture Raised Garlic Ginger Pork Sausage (Frozen)	Walnut Keep Farms Pork- from Sonoma County Meat CompanyHeritage breed pigs are pasture-raised in Suisun Valley and finished on walnuts, giving the fat a rich, creamy texture. Never given antibiotics or growth hormones, and never confined. Garlic and Ginger sausage- delicious in all the ways that sausage normally is, with the added bonus of making a perfect pot sticker or egg roll filling, or an awesome little meatball for a Pho style soup!Ingredients: pork, salt, garlic powder, dry honey, ginger powder, spices.	0.7	lb	8.39	11.99	lb	Meat	Sausage	http://goodeggs2.imgix.net/product_photos/OmJWhPm0TamIYu7ABUsi_FK1A3966.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
931	Pasture Raised Thai Coconut Pork Sausage (Frozen)	Walnut Keep Farms Pork- from Sonoma County Meat CompanyHeritage breed pigs are pasture-raised in Suisun Valley and finished on walnuts, giving the fat a rich, creamy texture. Never given antibiotics or growth hormones, and never confined. Thai style pork sausage with coconut- excellent flavor, not too much spice, great grilled with a side of crunchy vegetables, or try it in a curry or stir fry. Or just eat it on a bun, that's good too.Ingredients: Pork, Pork Fat, Shredded Coconut, Salt, Spices, Garlic Powder, Cilantro Powder, Ginger Powder, Lime Peel PowderContains: Coconut, Wheat	0.7	lb	8.39	11.99	lb	Meat	Sausage	http://goodeggs2.imgix.net/product_photos/dbgQhkw2SpaYEv9mhoVS_FK1A0653.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
932	Pork Linguica (Frozen)	A traditional Portuguese sausage, Linguica is traditionally made with pork, marinated in red table wine, seasoned with garlic, paprika, oregano, basil, and smoked with hickory wood. Mildly spicy, smoky and full of flavor.Ingredients: pork, water, red wine, salt, paprika, vinegar powder, spices, celery powder.1/2 lb package, 2 links per package. Smoked, fully cooked. No added nitrates except for those naturally occurring in celery powder.	0.5	lb	8.99	17.98	lb	Meat	Sausage	http://goodeggs1.imgix.net/product_photos/dENkUcHhRGqWoxMD6Zne_tR2plAkjST2P4PVt58gm_wr8LIVMSvUP-isvxANMDSjfJFAY4zdoFXJWGdLCzFCw.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
933	Smoked Pork Kielbasa	Our smoked kielbasa contains 100% pork seasoned with mustard seed, garlic, and spices. We smoke these over applewood for hours, so they have a nice smokey flavor. Product is fully cooked. We like to slice it up and put it in a pan with our greens, so the fat and flavors season up the greens.  Serve that up with some mustardy potato salad, Oh Baby!INGREDIENTS: Pork, pork fat back, salt, dextrose, nitrite, milk powder, white and black pepper, mustard powder and seeds, garlic.	0.75	lb	6.79	9.05	lb	Meat	Sausage	http://goodeggs1.imgix.net/product_photos/gSHwGhyyThWQKPIfm4qd_FK1A6872.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
934	Pasture Raised Maple Pecan Pork Sausage (Frozen)	Walnut Keep Farms Pork- from Sonoma County Meat CompanyHeritage breed pigs are pasture-raised in Suisun Valley and finished on walnuts, giving the fat a rich, creamy texture. Never given antibiotics or growth hormones, and never confined. Ingredients: pork, maple sugar, pecans, salt, onion powder, spices, garlic powder, vinegar powder, ginger powder.	0.8	lb	10.39	12.99	lb	Meat	Sausage	http://goodeggs2.imgix.net/product_photos/dbgQhkw2SpaYEv9mhoVS_FK1A0653.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
935	Pork Bratwurst	Our Gourmet Bratwurst contains 100% pork seasoned with white pepper, ginger, and nutmeg.  Super traditional and super amazing!! Authentically made by salumist Elias Cairo. INGREDIENTS: Pork shoulder, pork fatback, salt, milk powder, white and black pepper, ginger, mustard powder, nutmeg.CONTAINS DAIRY	0.75	lb	6.79	9.05	lb	Meat	Sausage	http://goodeggs1.imgix.net/product_photos/FpAWMsa6RRSyhmQjuptN_FK1A6845.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
936	Pork Ksekrainer	Käsekrainer are the delicacy of sausage stands dotting the towns and cities of Austria. A traditional street food, these plump pork sausages are studded with Emmenthaler cheese and smoked over apple wood. Once warmed through and lightly crisped each slice yields a gooey cheese interior. These are the most decadent cheese dogs you'll ever taste.Package includes three 4 ounce sausages (12 ounce).Ingredients: Pork, pork fat, water, swiss cheese (pasteurized cow's milk, cheese cultures, salt, enzymes), dry milk powder, less that 2% of: salt, dried vinegar, cultured dextrose, fresh garlic, black pepper, dextrose, swiss chard powder, natural flavors, lactic acid cultures. Stuffed in hog casing.Contains: Milk	0.75	lb	6.79	9.05	lb	Meat	Sausage	http://goodeggs2.imgix.net/product_photos/eOqJRsYAQS6AEU6TOZig_FK1A6831.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
937	Rustic Sausage (Frozen)	PRMC’s sugar –free sausage has finally arrived! A very\ntraditional flavored, juicy pork sausage made with PRMC heritage pork and\norganic spices this is a great every day sausage served in a bun, on its own or\nin your favorite sausage based recipe. And NO SUGAR!\nIngredients: Pork, Water, Sea Salt, Spices, Onion, Garlic,\nPaprika, Cayenne, Cultured Celery Extract, In Natural Pork Casing	0.75	lb	7.49	9.99	lb	Meat	Sausage	http://goodeggs2.imgix.net/product_photos/KH6oEzcyQpm7GcLBpMc1_FK1A4997.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
938	Pasture Raised Pork Chorizo Sausage (Frozen)	Walnut Keep Farms Pork- from Sonoma County Meat CompanyHeritage breed pigs are pasture-raised in Suisun Valley and finished on walnuts, giving the fat a rich, creamy texture. Never given antibiotics or growth hormones, and never confined. A super flavorful, not too spicy sausage that adds impressive pork flavor to whatever you pair it with- great with eggs, in soups and stews, on the grill or smoker, or in rice or potato dishes.Ingredients: pork, salt, paprika, garlic, spices.	0.7	lb	6.99	9.99	lb	Meat	Sausage	http://goodeggs1.imgix.net/product_photos/zVo5O6SBRU6oEuScb8Ht_FK1A8126.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
939	Smoked Pork Chorizo	Our Basque-inspired, smoked chorizo is made with the finest pork cuts, pimenton, and fresh garlic, then applewood smoked.  Perfect for your Paella, there are three, 4 oz sausages per package.INGREDIENTS: Lean pork shoulder, pork fatback, salt, paprika, milk powder, cayenne, pepper, pimenton, oregano, garlic. 	0.75	lb	6.79	9.05	lb	Meat	Sausage	http://goodeggs1.imgix.net/product_photos/0TpKitJ6RhCl8gQ99RFI_FK1A6849.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
940	Grassfed Lamb Merguez (Frozen)	Lamb Merguez-Williams Ranches Lamb,  from Sonoma County Meat CompanySuper-flavorful, well spiced but not too hot, this 100% lamb merguez cooks up quickly and is an awesome complement to vegetable or grain dishes- especially good with lentils for a one pot no fuss meal!Ingredients: Lamb, Spics, Salt, Garlic Powder, in a Lamb Casing.Williams Ranches grows the highest quality lamb, fed on grass, clover and alfalfa with no hormones or antibiotic supplements. The Williams hand select each lamb, determining processing time by the amount of fat cover. This ensures a quality, consistent product that is available year round and lambs that are processed between 5 and 8 months old. This process means you will get a leaner, milder lamb that simply melts in your mouth.Ingredients: Lamb, Spics, Salt, Garlic Powder, in a Lamb Casing.	0.75	lb	10.49	13.99	lb	Meat	Sausage	http://goodeggs2.imgix.net/product_photos/zt9hwO7R0W0EnKVIsRHz_20161007-SonomaMeatCo_LambMerguez_MG_3204%20%281%29.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
941	Grass-fed Beef Summer Sausage, Sliced (Frozen)	Going on a picnic this weekend? We've got you covered. Take along a pack of our already sliced summer sausage, some cheese, a baguette and some fruit and you'll be set. We also love our sliced summer sausage on pizza as a healthier alternative to pepperoni.Ingredients: beef, sodium lactate, salt, sugar, brown sugar, granulated garlic, black pepper, mustard seed, sodium nitriteLike all our grass fed meat specialty items, our lean beef summer sausage is made only with meat from cows that we raise ourselves, there are no fillers or other meats.approximately 25 slices in a package, 3/4 lb package.Smoked (fully cooked)Keep refrigerated or frozen until ready to eat. Shelf stable at normal temps for 48 hours.Fun fact: summer sausage is made using a lactic acid fermentation process. In the days before refrigeration, preserving meat was an art form. This sausage was called summer sausage because it was one of the few sausages that would last during the hot months.	0.5	lb	12.99	25.98	lb	Meat	Sausage	http://goodeggs1.imgix.net/product_photos/k1uhMukbRj6KGQEelDLf_FK1A5007.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
942	Lamb Sausage (Frozen)	One of our customer favorites, the lamb sausage comes ready to cook and is delicious on a bed of rice. The lamb is sourced from Anderson Ranch in Southern Oregon and is 100% grassfed and Certified Humane.Ingredients: Lamb, Water, Sea Salt, Spices, Onion, Garlic, In Natural Pork Casing.	0.75	lb	11.29	15.05	lb	Meat	Sausage	http://goodeggs2.imgix.net/product_photos/8ieUXFz6RzO8epwxxkIp_FK1A8495.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
943	Sweet Italian Beef Sausage (Frozen)	Oakridge Angus- Grass-fed, Grain Finished Beef - from Sonoma County Meat Co.A classic sausage flavor made with delicious Oakridge Angus beef!Ingredients: Beef, Wine, Salt, Spices, Sugar, Garlic. Pork casing.	0.7	lb	9.99	14.27	lb	Meat	Sausage	http://goodeggs2.imgix.net/product_photos/OmJWhPm0TamIYu7ABUsi_FK1A3966.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
944	Jalapeno Mint Lamb Sausage	Classic flavor pairings all rolled up into one delicious sausage! Grill it, slice it, and put it on banh mi for a killer sandwich experience!Ingredients: Grass-fed Lamb, Jalapeno, Garlic, Salt, Mint, GingerNatural Pork Casing	0.8	lb	15.99	19.99	lb	Meat	Sausage	http://goodeggs2.imgix.net/product_photos/xcW4i7jFQ6GlJDmCgkJc_20160701-CasaRosa_MintJalepenoLambSausage_MG_4254.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
945	Grassfed Lamb Merguez (Frozen)	Lamb Merguez-Williams Ranches Lamb,  from Sonoma County Meat CompanySuper-flavorful, well spiced but not too hot, this 100% lamb merguez cooks up quickly and is an awesome complement to vegetable or grain dishes- especially good with lentils for a one pot no fuss meal!Ingredients: Lamb, Spics, Salt, Garlic Powder, in a Lamb Casing.Williams Ranches grows the highest quality lamb, fed on grass, clover and alfalfa with no hormones or antibiotic supplements. The Williams hand select each lamb, determining processing time by the amount of fat cover. This ensures a quality, consistent product that is available year round and lambs that are processed between 5 and 8 months old. This process means you will get a leaner, milder lamb that simply melts in your mouth.Ingredients: Lamb, Spics, Salt, Garlic Powder, in a Lamb Casing.	0.65	lb	9.29	14.29	lb	Meat	Sausage	http://goodeggs2.imgix.net/product_photos/zt9hwO7R0W0EnKVIsRHz_20161007-SonomaMeatCo_LambMerguez_MG_3204%20%281%29.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
946	Jalapeno Mint Lamb Sausage	Classic flavor pairings all rolled up into one delicious sausage! Grill it, slice it, and put it on banh mi for a killer sandwich experience!Ingredients: Grass-fed Lamb, Jalapeno, Garlic, Salt, Mint, GingerNatural Pork Casing	0.7	lb	13.99	19.99	lb	Meat	Sausage	http://goodeggs2.imgix.net/product_photos/xcW4i7jFQ6GlJDmCgkJc_20160701-CasaRosa_MintJalepenoLambSausage_MG_4254.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
947	Beef and Pork Bratwurst (Frozen)	Oakridge Angus- Grass-fed, Grain Finished Beef - from Sonoma County Meat Co.Great beef flavor and juicy pork fat come together to make an exceptional sausage, perfect on a bun!Ingredients: Beef, Pork Fat, Cream, Eggs, Salt, Spices, Sugar.Contains Pork, Dairy, Eggs.	0.7	lb	10.49	14.99	lb	Meat	Sausage	http://goodeggs2.imgix.net/product_photos/EAXrjnDSJOUOEr6wa5w8_FK1A8120.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
948	Grass-fed Beef Summer Sausage (Frozen)	A beautiful little section of summer sausage you can custom slice to your preference, great for a hike or a picnic!Ingredients: beef, sodium lactate, salt, sugar, brown sugar, granulated garlic, black pepper, mustard seed, sodium nitriteLike all our grass fed meat specialty items, our lean beef summer sausage is made only with meat from cows that we raise ourselves, there are no fillers or other meats.Smoked (fully cooked)Keep refrigerated or frozen until ready to eat. Shelf stable at normal temps for 48 hours.Fun fact: summer sausage is made using a lactic acid fermentation process. In the days before refrigeration, preserving meat was an art form. This sausage was called summer sausage because it was one of the few sausages that would last during the hot months.	0.7	lb	17.49	24.99	lb	Meat	Sausage	http://goodeggs1.imgix.net/product_photos/lSN7EO0QhuwOJWzihhRg_FK1A6185.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
949	Grass-fed Beef Garlic Sausage (Frozen)	Delicious beef sausage seasoned with garlic and red wine. If you're looking for a change from pork sausage, give our beef sausage a try. It's also excellent for seasoning rice dishes or as an addition to a stew like jambalaya. Like all our grass fed meat specialty items, our beef sausage is made only with meat from cattle that we raise ourselves, there are no fillers or other meats.2 links in a package, approximately .5 (1/2) lb each package. Smoked (fully cooked), keep refrigerated or frozen until ready to eat. Heat and serve.Ingredients: beef, wine, water, garlic, salt, celery powder.	0.5	lb	8.99	17.98	lb	Meat	Sausage	http://goodeggs1.imgix.net/product_photos/tfgp1s8CSjWH4LQ14iZ7_tMEEXovKSGuxvn6TRvtS_GzbZjtZ9wXbFT5jthjfS1Zl9DjU8mgSm3WC2kXroMIc.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
950	Beef Chorizo (Frozen)	Oakridge Angus- Grass-fed, Grain Finished Beef - from Sonoma County Meat Co.Beef chorizo, perfect for all the things chorizo is perfect for- with eggs, in tacos and burritos, in bean and lentil dishes, or just grilled with or without a bun!Ingredients: Beef, Salt, Paprika, Spices, Garlic. Pork casing.	0.7	lb	9.99	14.27	lb	Meat	Sausage	http://goodeggs1.imgix.net/product_photos/zVo5O6SBRU6oEuScb8Ht_FK1A8126.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
951	Wildflower Honey Ham	Our sustainably farmed natural ham is brushed with a scrumptious glaze of wildflower honey, maple syrup, and brown sugar, and then slow roasted to perfection.These heirloom-breed\nhogs are raised by family farmers in the Midwest, like fifth-generation\nfarmer Russ Kremer. The hogs are raised without antibiotics, added hormones or\ngrowth enhancers in open spaces where they’re free to root, nest and\nexplore. When Russ graduated from the University of Missouri in the early\n1980s, he adopted modern hog production practices like everyone else he knew.\nAll that changed when one day a boar gored him and he nearly lost his\nleg. That near tragedy changed Russ’s way of farming forever. In 2001, he\nhelped found a cooperative made up of farmers who share his commitment to\nsustainable practices. Their antibiotic-free hogs are raised humanely and are\nprized by chefs for their tender, flavorful meat.\nIngredients: Pork, Water, Honey. Contains 2% or Less of: Maple Syrup, Brown Sugar, Sea Salt, Celery Juice, Natural Flavors.	0.437	lb	5.29	12.11	lb	Meat	Deli Meat	http://goodeggs2.imgix.net/product_photos/TBCHqFpaRlZH0ldRbY5a_20160409-TrueStory_HoneyMapleHam_MG_6013.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
952	Black Forest Ham	Rubbed with brown sugar for a lick of sweetness and then slow-smoked over Applewood, our all natural uncured ham serves up heaps of deliciousness.These heirloom-breed\nhogs are raised by family farmers in the Midwest, like fifth-generation\nfarmer Russ Kremer. The hogs are raised without antibiotics, added hormones or\ngrowth enhancers in open spaces where they’re free to root, nest and\nexplore. When Russ graduated from the University of Missouri in the early\n1980s, he adopted modern hog production practices like everyone else he knew.\nAll that changed when one day a boar gored him and he nearly lost his\nleg. That near tragedy changed Russ’s way of farming forever. In 2001, he\nhelped found a cooperative made up of farmers who share his commitment to\nsustainable practices. Their antibiotic-free hogs are raised humanely and are\nprized by chefs for their tender, flavorful meat.Ingredients: Pork, Water, Contains 2% or Less of: Salt, Brown Sugar, Celery Juice, Natural Flavors.	0.437	lb	5.29	12.11	lb	Meat	Deli Meat	http://goodeggs2.imgix.net/product_photos/fyP40MhQTr6BIFUryziN_20160409-TrueStory_BlackForestHam_MG_6016.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
953	Speck Americano	Speck, a lesser-known variation of prosciutto, is a sweet meat, deep, rich and earthy in texture with a distinct but light applewood-smoked flavor and aroma. Slice it thin to eat alone or with your favorite cheese. Ingredients: Pork, Sea Salt. Smoked over real applewood.	3	oz	6.99	37.28	lb	Meat	Deli Meat	http://goodeggs1.imgix.net/product_photos/AVjP3aynSHKMR1dn8dfS_FK1A7221.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
954	Prosciutto Americano	Prosciutto Americana was our first creation and remains our most popular.\n Humanely raised,  antibiotic free\npork from Heritage Acres\nand Niman\nRanch is dry cured with\nsea salt\nand aged for 9-12\nmonths.  Ingredients: pork, sea salt. The meat has a sweet, clean flavor\nand a floral minerality.    We started La Quercia to create premium quality American prosciutto, then applied what we learned to other cuts of pork. Our appreciation for cured meats grew out of the three and a half years we lived in Parma, Italy, prosciutto's area of origin, where we saw how the careful treatment of fine materials resulted in an accessible, sublime and entirely regional cuisine. Our ambition to create our own prosciutto came from our desire to take the bounty that surrounds us in Iowa to its highest expression. We seek to contribute to the growth of premium artisan-made American foods by offering unique dry cured meats of the finest quality.It has been hard for us to navigate the highly eroded language of meat labelling. Third party standards can develop, evolve, improve, and worsen. To enforce these standards, we clearly communicate them to our suppliers and do occasional grower visits.We decided to establish our own standards and hold our meat suppliers to them:  no pork from confinement facilities or from animals fed non-therapeutic antibiotics. We require that growers provide the pigs space to socially congregate, a place to bed in deep bedding, and access to the out of doors. We use organic spices whenever possible. Our supplier, Oregon Spice Company, has rigorous safety controls to ensure the purity and integrity of their spices. We use pure sea salt from the United States. We have no known allergens in any of our ingredients, including no gluten. Everything we make is dry-cured and raw, and may be eaten cooked or uncooked.	3	oz	8.49	45.28	lb	Meat	Deli Meat	http://goodeggs1.imgix.net/product_photos/l0dH7Pa9SE2VwxdPM7jq_FK1A0404.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
955	Salami Americano	We created this salami with the kitchen in mind. Wonderful in a sandwich with all the fixings or layered on a pizza. We sell it with the casing already removed so no peeling needed!Ingredients: pork, sea salt, dextrose, spices, celery extract, culture.	3	oz	6.99	37.28	lb	Meat	Deli Meat	http://goodeggs2.imgix.net/product_photos/nliHZYmRe2zgGRCqzP8C_FK1A7242.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
956	Grass-fed Beef Summer Sausage (Frozen)	A beautiful little section of summer sausage you can custom slice to your preference, great for a hike or a picnic!Ingredients: beef, sodium lactate, salt, sugar, brown sugar, granulated garlic, black pepper, mustard seed, sodium nitriteLike all our grass fed meat specialty items, our lean beef summer sausage is made only with meat from cows that we raise ourselves, there are no fillers or other meats.Smoked (fully cooked)Keep refrigerated or frozen until ready to eat. Shelf stable at normal temps for 48 hours.Fun fact: summer sausage is made using a lactic acid fermentation process. In the days before refrigeration, preserving meat was an art form. This sausage was called summer sausage because it was one of the few sausages that would last during the hot months.	0.9	lb	22.49	24.99	lb	Meat	Deli Meat	http://goodeggs1.imgix.net/product_photos/lSN7EO0QhuwOJWzihhRg_FK1A6185.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
957	Grass-fed Beef Summer Sausage (Frozen)	A beautiful little section of summer sausage you can custom slice to your preference, great for a hike or a picnic!Ingredients: beef, sodium lactate, salt, sugar, brown sugar, granulated garlic, black pepper, mustard seed, sodium nitriteLike all our grass fed meat specialty items, our lean beef summer sausage is made only with meat from cows that we raise ourselves, there are no fillers or other meats.Smoked (fully cooked)Keep refrigerated or frozen until ready to eat. Shelf stable at normal temps for 48 hours.Fun fact: summer sausage is made using a lactic acid fermentation process. In the days before refrigeration, preserving meat was an art form. This sausage was called summer sausage because it was one of the few sausages that would last during the hot months.	0.8	lb	19.99	24.99	lb	Meat	Deli Meat	http://goodeggs1.imgix.net/product_photos/lSN7EO0QhuwOJWzihhRg_FK1A6185.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
958	Organic Oven Roasted Turkey	Slowly Roasted with a pinch of sea salt to bring out that old-fashioned flavor. Our pre-sliced turkey is fantastic in sandwiches, appetizers, or just as a grab-and-go snack!No added nitrates or nitritesNo antibiotics, growth stimulants, or hormonesTurkeys are fed a 100% Vegetarian DietOnly whole muscle meat used. No fillers!NON-GMO Project VerifiedAll animals are humanely raised on GAP-rated sustainable family farms and ranches.Ingredients: Organic turkey breast, sea salt, sodium carbonate, and natural flavoring.	6	oz	6.49	17.31	lb	Meat	Deli Meat	http://goodeggs1.imgix.net/product_photos/fvkG8E6CQwqM3X9dEwAP_FK1A2042.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
959	Organic Oven Roasted Turkey Breast	Our sustainably farmed organic turkey breast is rubbed with sea salt, fresh cracked pepper, and a touch of mild seasonings, then slow roasted to juicy scrumptiousness.These turkeys are raised by True Story partners like on Pitman Family Farms, a family-owned business that has been raising poultry for three generations in Sanger, California. Don Pitman began raising free-range turkey and chickens in 1954 and was soon joined by his son Rick. Today, Rick’s sons, David and Ben, carry on the family tradition. From the beginning, the Pitman family has been focused on animal husbandry and welfare. Their organic turkeys have access to the outdoors with ample water and shade. Additionally, they have environmental enrichments, such as straw bales for pecking and eucalyptus tree branches for playing. The organic turkeys are fed a certified organic vegetarian diet, free of genetically modified organisms and synthetic amino acids.Ingredients: Organic Turkey Breast, Water, 2% or Less of the Following: Sea Salt, Organic Evaporated Cane Syrup, Sodium Carbonate, Natural Flavors.	0.375	lb	6.49	17.31	lb	Meat	Deli Meat	http://goodeggs2.imgix.net/product_photos/sKeDFwzVS3SMGDytYtUi_20160409-TrueStory_OvenRaostedTurkey_MG_6018.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
960	Smoked Turkey	Slowly smoked and seasoned with spices and a hint of brown sugar and sea salt. Our pre-sliced turkey is fantastic in sandwiches, appetizers, or just as a grab-and-go snack!How Our Deli Meats Stack UpNo gluten, casein, carrageenan, phosphates, MSG, artificial ingredients, or preservativesNo added nitrates or nitritesNo antibiotics, growth stimulants, or hormonesTurkeys are fed a 100% Vegetarian DietOnly whole muscle meat used. No fillers!NON-GMO Project VerifiedAll animals are humanely raised on GAP-rated sustainable family farms and ranches.Ingredients: Organic turkey breast, water, sea salt, organic brown sugar, sodium bicarbonate, organic spices, organic garlic powder, and natural flavorings.	6	oz	5.99	15.97	lb	Meat	Deli Meat	http://goodeggs2.imgix.net/product_photos/51zvWX9OSWCTcK63Oidu_FK1A7373.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
961	Sliced Smoked Turkey Breast	Smoking Goose Smoked Turkey Breast is all natural, free range birds. Brined in organic herbs and spices and smoked over fruit woods. This subtly smoked turkey has texture and body yet remains juicy. It tastes like you are thinly carving turkey right off the bone! Perfect for that "Thanksgiving-style" sandwich!All Smoking Goose recipes begin on the farm. They carefully curate farm sources based on research, site visits, flavor, and personal relationships with farmers. The base requirements for all Smoking Goose farm sources: Small Family Owned Farm, No factory Farms, No Gestation Pens,  Antibiotic Free, 100% Vegetarian Feed, No Growth Promotants, Humanely Slaughtered. Source codes printed in the bottom right corner of each smoking goose package. To find out more about the farm please visit their Raw Resource Sheet.Ingredients: Whole breast of turkey, thyme, cloves, orange peel.	12	oz	16.99	22.65	lb	Meat	Deli Meat	http://goodeggs2.imgix.net/product_photos/k87azxPYQv21HzBTfPTu_20160617-SmokingGoose_TurkeyBreast_MG_3020.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
962	Organic Honey Roasted Turkey	Organic Pre-Sliced Honey Turkey: Our oven-roasted turkey with a drizzle of honey. (We use locally sourced honey whenever possible.) Our pre-sliced turkey is fantastic in sandwiches, appetizers, or just as a grab-and-go snack!How Our Deli Meats Stack UpLow SodiumNo gluten, casein, carrageenan, phosphates, MSG, artificial ingredients, or preservativesNo added nitrates or nitritesNo antibiotics, growth stimulants, or hormonesTurkeys are fed a 100% Vegetarian DietOnly whole muscle meat used. No fillers!NON-GMO Project VerifiedAll animals are humanely raised on GAP-rated sustainable family farms and ranches.Ingredients: Organic turkey breast, water,  organic honey, sea salt, sodium carbonate, and natural flavorings.	6	oz	6.49	17.31	lb	Meat	Deli Meat	http://goodeggs2.imgix.net/product_photos/XRvvBc4aR7ScFSItdKzw_FK1A9549.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
963	Pastrami Seasoned Turkey	Ingredients: Turkey breast, water, sea salt, organic garlic, sodium carbonate, molasses, organic brown sugar, citric acid, lemon oil and natural flavorings.How Our Deli Meats Stack UpNo gluten, casein, carrageenan, phosphates, MSG, artificial ingredients, or preservativesNo added nitrates or nitritesNo antibiotics, growth stimulants, or hormonesTurkeys are fed a 100% Vegetarian DietOnly whole muscle meat used. No fillers!NON-GMO Project VerifiedAll animals are humanely raised on GAP-rated sustainable family farms and ranches.Ingredients: Turkey breast, water, sea salt, organic garlic, sodium carbonate, molasses, organic brown sugar, citric acid, lemon oil, and natural flavorings.	6	oz	5.99	15.97	lb	Meat	Deli Meat	http://goodeggs1.imgix.net/product_photos/EACaZW8dTvmueZdUrxfU_FK1A9558.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
964	Peppered Roast Turkey	Oven roasted breast sprinkled with freshly cracked coarse pepper. How Our Deli Meats Stack UpNo gluten, casein, carrageenan, phosphates, MSG, artificial ingredients, or preservativesNo added nitrates or nitritesNo antibiotics, growth stimulants, or hormonesTurkeys are fed a 100% Vegetarian DietOnly whole muscle meat used. No fillers!NON-GMO Project VerifiedAll animals are humanely raised on GAP-rated sustainable family farms and ranches.Ingredients: Turkey breast, water, sea salt, sodium carbonate, natural flavorings, spices.	6	oz	5.99	15.97	lb	Meat	Deli Meat	http://goodeggs1.imgix.net/product_photos/Cf8kMBvHRJWraR5o5F5m_Good%20Eggs_111515-2.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
965	Herb Roasted Turkey	A savory blend of herbs and spices give our roasted breast a delicate flavor.How Our Deli Meats Stack UpNo gluten, casein, carrageenan, phosphates, MSG, artificial ingredients, or preservativesNo added nitrates or nitritesNo antibiotics, growth stimulants, or hormonesTurkeys are fed a 100% Vegetarian DietOnly whole muscle meat used. No fillers!NON-GMO Project VerifiedAll animals are humanely raised on GAP-rated sustainable family farms and ranches.Ingredients: Turkey breast, water, sea salt, sodium carbonate, and natural flavorings.	6	oz	5.99	15.97	lb	Meat	Deli Meat	http://goodeggs1.imgix.net/product_photos/N0zsNWr9SS2Us2oLIFYq_FK1A9573.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
966	Organic Fresh Roasted Turkey	Organic Pre-Sliced Fresh Roasted Turkey:Our oven roasted organic turkey breast, pure and simple: nothing added! If you want freshly roasted turkey breast this will be your favorite. Goes great in a sandwich with cranberry sauce and mustard, or, roll up for a delicious appetizer!No gluten, casein, carrageenan, phosphates, MSG, artificial ingredients, or preservativesNo added nitrates or nitritesNo antibiotics, growth stimulants, or hormonesTurkeys are fed a 100% Vegetarian DietOnly whole muscle meat used. No fillers!NON-GMO Project VerifiedAll animals are humanely raised on GAP-rated sustainable family farms and ranches.Ingredients: Organic turkey breast	6	oz	6.49	17.31	lb	Meat	Deli Meat	http://goodeggs1.imgix.net/product_photos/rgxgckuYSWCe8JKBiyap_FK1A0808-2.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
967	Cracked Pepper Turkey Jerky	Our cracked pepper turkey jerky's got a marinade of black pepper, brown sugar and apple—a slightly spicy-sweet combo that's addictively tasty.No preservatives, no added MSG*, no nitrites, no corn syrup.*Except naturally occurring in soy sauce.Ingredients: turkey, gluten-free reduced sodium soy sauce, (water, soybeans, salt, alcohol), apple juice, brown sugar, apple juice, pineapple juice, water, rice wine, natural hickory liquid smoke, black pepper, granulated garlic, apple cider vinegar, ginger, white pepper.Allergens: contains soy.	2.2	oz	5.99	2.72	oz	Meat	Savory Snacks	http://goodeggs2.imgix.net/product_photos/ns2ygtqmTMKbBfm2CFtQ_20140924_GoodEggs_021_Jerky-Pepper.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
968	Roasted Sesame Beef Jerky	Toasted sesame seeds, brown sugar and soy make for a super savory, nutty and delicious beef jerky that leaves you wanting more. No preservatives, no added MSG*, no nitrites, no corn syrup.*Except naturally occurring in soy sauce.Ingredients: top round beef, pineapple juice, gluten-free reduced sodium soy sauce, (water, soybeans, salt, alcohol), organic blue agave nectar, brown sugar, water, rice wine, natural liquid smoke flavor, sesame seeds, garlic powder, ginger, sesame seed oil, granulated onion, black pepper.Allergens: contains soy.	2.2	oz	5.99	2.72	oz	Meat	Savory Snacks	http://goodeggs1.imgix.net/product_photos/lC1RkWReQWa2TjNRUbjw_20140924_GoodEggs_017_Jerky-Sesame.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
969	Original Beef Candy	PRMC Beef Candy is a delicious jerky-style product made with\nour high-quality lean beef. It is brined in brown sugar, salt and other spices,\nand then slow-cooked to perfection. The brining process makes the meat tender,\nsweet and juicy—it really is Beef Candy! Makes a great mid-day-snack. \nProduct is shelf-stable just like traditional dried and\nsmoked jerky.\nIngredients: Beef, Brown Sugar, Sea Salt, Spices, Cultured Celery Juice, Garlic, Onion	3	oz	8.49	2.83	oz	Meat	Savory Snacks	http://goodeggs1.imgix.net/product_photos/bInFHyEBTIyPxUqOi4Mu_FK1A1043.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
970	Teriyaki Beef Jerky	It's hard not to love this one. The flavor is a marriage of ginger soy sauce, Asian garlic and onion. Top round beef coupled with brown sugar, honey and a pineapple marinade make for an unforgettable taste that will leave you fighting off friends and family!No preservatives, no added MSG*, no nitrites, no corn syrup.*Except naturally occurring in soy sauce.Ingredients: top round beef, gluten-free reduced sodium soy sauce, (water, soybeans, salt, alcohol), apple juice, brown sugar, pineapple juice, water, natural hickory liquid smoke, rice wine, black pepper, granulated garlic, red wine vinegar, ginger, white pepper, granulated onion.Allergens: contains soy.	2.2	oz	5.99	2.72	oz	Meat	Savory Snacks	http://goodeggs2.imgix.net/product_photos/Ja9aNK2vQeyupLRTZmS1_20140528_GoodEggs_175_TeriyakiBeefJerky.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
971	Original Beef Jerky	A trusted standby that is perfect for any occasion. Our Original flavor is what we are all about—bringing together a culmination of hickory smoke with a black pepper and brown sugar marinade. We think it's a pretty perfect flavor combination.No preservatives, no added MSG*, no nitrites, no corn syrup.*Except naturally occurring in soy sauce.Ingredients: top round beef, gluten-free reduced sodium soy sauce, (water, soybeans, salt, alcohol), apple juice, brown sugar, pineapple juice, water, natural hickory liquid smoke, rice wine, black pepper, granulated garlic, red wine vinegar, ginger, white pepper, granulated onion.Allergens: contains soy.	2.2	oz	5.99	2.72	oz	Meat	Savory Snacks	http://goodeggs1.imgix.net/product_photos/69GWCynwQtyc7uDST3t8_20140528_GoodEggs_182_OriginalBeefJerky.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
972	Honey Spice Beef Jerky	This jerky will definitely get your tastebuds rocking! Its honey sweet start is in perfect harmony with the cayenne pepper finish. Our lean mean cuts marinate for hours in a smoky, yet spicy, cayenne pepper and garlic honey marinade.No preservatives, no added MSG*, no nitrites, no corn syrup.*Except naturally occurring in soy sauce.Ingredients: top round beef, brown sugar, gluten-free reduced sodium soy sauce, (water, soybeans, salt, alcohol), pineapple juice, honey, water, apple juice, rice wine, natural liquid smoke flavor, granulated garlic, ginger, Frank's RedHot (aged cayenne red peppers, vinegar, water, salt, garlic powder), cayenne pepper, granulated onion, black pepper, white pepper.Allergens: contains soy.	2.2	oz	5.99	2.72	oz	Meat	Savory Snacks	http://goodeggs2.imgix.net/product_photos/ewmmThoJS7e3jlF1Qmem_20140528_GoodEggs_189_HoneySpice.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
973	Hot Beef Candy	PRMC Beef Candy is a delicious jerky-style product made with\nour high-quality lean beef. It is brined in brown sugar, salt and other spices,\nand then slow-cooked to perfection. The brining process makes the meat tender,\nsweet and juicy—it really is Beef Candy! Our “Hot” Beef Candy has red chili\nflakes for an additional kick in the pants. Not so hot you’ll run for water,\nbut you will notice it. \nProduct is shelf-stable just like traditional dried and\nsmoked jerky.\nIngredients: Beef, Brown Sugar, Sea Salt, Jalapeno Pepper, Cayenne Pepper, Spices, Cultured Celery Juice, Garlic, Onion	3	oz	8.49	2.83	oz	Meat	Savory Snacks	http://goodeggs2.imgix.net/product_photos/dKrT3QyaSvmP6sQDeJdw_FK1A1095.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
974	Grass-Fed Sriracha Beef Jerky	A match made in heaven- grass fed beef and sriracha come together for some truly tasty, not too spicy jerky.Ingredients: Beef, Soy Sauce (Water, Wheat, Soy Beans, Salt, Sodium Benzoate: less than 1/10 of 1% as preservative), Sugar, Spices, Sriracha Powder (Citric Acid, Garlic, Salt, Vinegar, Cane Sugar, Red Bell Pepper, Chili Powder) Garlic, Ginger Powder, Garlic Powder, Onion PowderContains: Soy, WheatKeep refrigerated, refrigerate after opening.	4	oz	13.99	3.5	oz	Meat	Savory Snacks	http://goodeggs1.imgix.net/product_photos/BPu7Kb1QBSp6mrngF70E_20160526-SonomaMeatCo_SirachaBeefJerkey_MG_0314%20%281%29.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
975	Cowboy Style Beef Jerky	\nProduct is shelf-stable just like traditional dried and\nsmoked jerky.\nIngredients: Beef, Pineapple Juice, Sea Salt, Yeast, Paprika, Jalapeno Peppers, Black Pepper, Spices, Garlic, Onion, Celery Juice Powder, Lactic Acid Starter Culture	3	oz	10.99	3.66	oz	Meat	Savory Snacks	http://goodeggs2.imgix.net/product_photos/NANuQHPSOGnreK617SSF_FK1A9605.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
976	Whiskey Maple Beef Jerky	\nProduct is shelf-stable just like traditional dried and\nsmoked jerky.\nIngredients: Beef, Sea Salt, Pineapple Juice, Whiskey, Wine Vinegar,   Paprika, Maple Syrup Powder, Black Pepper, Garlic, Onion, Yeast, Celery Juice Powder, Lactic Acid Starter Culture	3	oz	10.99	3.66	oz	Meat	Savory Snacks	http://goodeggs2.imgix.net/product_photos/eQqGb5x9TVGK64k2XMlt_FK1A9586.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
977	Petite Pierre Pepperettes	Pork Stick?  Yes Please. We've been smoking pork sticks (with really good pork, in natural casings, over hickory and apple woods) since the beginning.  If you've been to our restaurants, you've probably had one of the long, thin, delicious sticks elegantly gracing the top of the deli case.  This pepperette is a French inspired pork stick flavored with juniper and sea salt in a natural sheep's casing. Last fall, we started making these little shorties and wrapped them up all cute in a pocket-sized box.  Perfect for snacks, travel, pocket meat, and little gifts to say, "I love you... and you love meat."  Olympia Provisions' Petite Pierre Pepperettes are shorty pepperoni sticks made with pork in natural casings, and smoked over hickory and apple woods. Petite Pierre variety is flavored with juniper, white pepper and red wine.Ingredients: Pork, pork fat, salt. Contains 2% or less of dextrose, red wine (contains sulfites), spices, garlic, sodium nitrite, potassium sorbate, lamb casing. 	1.7	oz	3.99	37.55	lb	Meat	Charcuterie	http://goodeggs1.imgix.net/product_photos/Chf8ImJMSSCReanlMWfV_FK1A6826.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
978	Flaco Paco Pepperette	Pork Stick?  Yes Please. We've been smoking pork sticks (with really good pork, in natural casings, over hickory and apple woods) since the beginning.  If you've been to our restaurants, you've probably had one of the long, thin, delicious sticks elegantly gracing the top of the deli case.  This pepperette is a Spanish inspired pork stick flavored with paprika and garlic in a natural sheep's casing. Last fall, we started making these little shorties and wrapped them up all cute in a pocket-sized box.  Perfect for snacks, travel, pocket meat, and little gifts to say, "I love you... and you love meat." Olympia Provisions, Flaco Paco Pepperettes are shorty pepperoni sticks made with pork in natural casings, and smoked over hickory and apple woods. Flaco Paco variety is made with paprika, oregano and garlic.Ingredients: Pork, pork fat, paprika, salt. Contains 2% or less of spices, garlic, sodium nitrite, potassium sorbate, lamb casing. 	1.7	oz	3.99	37.55	lb	Meat	Charcuterie	http://goodeggs2.imgix.net/product_photos/lvDgxgFLQLCacb9W0qDt_FK1A6816.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
979	Kleine Schweine Pepperette	Pork Stick?  Yes Please. We've been smoking pork sticks (with really good pork, in natural casings, over hickory and apple woods) since the beginning.  If you've been to our restaurants, you've probably had one of the long, thin, delicious sticks elegantly gracing the top of the deli case.  This pepperette is a German inspired pork stick flavored with caraway and coriander in a natural sheep's casing. Last fall, we started making these little shorties and wrapped them up all cute in a pocket-sized box.  Perfect for snacks, travel, pocket meat, and little gifts to say, "I love you... and you love meat." Olympia Provisions' Kleine Schweine Pepperettes are shorty pepperoni sticks made with pork in natural casings, and smoked over hickory and apple woods. Kleine Schweine variety is made with caraway, coriander and chili flake. Ingredients: Pork, pork fat, salt. Contains 2% or less of dextrose, spices, garlic, sodium nitrite, potassium sorbate, lamb casing. 	1.7	oz	3.99	37.55	lb	Meat	Charcuterie	http://goodeggs1.imgix.net/product_photos/KayWN3ODRgeMwmIFQWsj_FK1A6820.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
980	Grassfed Beef Pastrami	Create the ultimate Reuben! Our grass fed beef top round is cured in a sea salt brine for 2 weeks, rubbed with cracked black pepper and hot smoked with almond and fruit wood to perfection. Sliced. Ingredients: Beef Round, Water, Salt, Sugar, Sodium Lactate, Sodium Nitrite, Black Pepper, Dehydrated Garlic, SpicesWe raise our Limousin steers on certified organic rotational pasture and native grasslands within 2 hours of the Bay Area in the beautiful Capay Valley. We take the time to alfalfa finish all our animals. We truly believe that in order for consistency in a grass fed, grass-finished product, each producer must choose the best method for their farm and its local ecology. We grow our own pesticide free, non-GM alfalfa on our family's fields to produce high quality beef. You will find our farm's beef to be a very lean red meat with light marbling, yet extra tender. Our beef is dry-aged for a minimum of 16 days, flash frozen, and vacuum sealed. We are a certified USDA Grass Fed Producer and our farm and pastures are certified organic by CCOF. Follow us on our new Instagram feed @casa_rosa_farm and see how our animals really live.	0.6	lb	16.29	27.15	lb	Meat	Deli Meat	http://goodeggs1.imgix.net/product_photos/g53A9aGbRPyqeRYZEhXf_FK1A9639.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
981	Grassfed Beef Pastrami	Create the ultimate Reuben! Our grass fed beef top round is cured in a sea salt brine for 2 weeks, rubbed with cracked black pepper and hot smoked with almond and fruit wood to perfection. Sliced. Ingredients: Beef Round, Water, Salt, Sugar, Sodium Lactate, Sodium Nitrite, Black Pepper, Dehydrated Garlic, SpicesWe raise our Limousin steers on certified organic rotational pasture and native grasslands within 2 hours of the Bay Area in the beautiful Capay Valley. We take the time to alfalfa finish all our animals. We truly believe that in order for consistency in a grass fed, grass-finished product, each producer must choose the best method for their farm and its local ecology. We grow our own pesticide free, non-GM alfalfa on our family's fields to produce high quality beef. You will find our farm's beef to be a very lean red meat with light marbling, yet extra tender. Our beef is dry-aged for a minimum of 16 days, flash frozen, and vacuum sealed. We are a certified USDA Grass Fed Producer and our farm and pastures are certified organic by CCOF. Follow us on our new Instagram feed @casa_rosa_farm and see how our animals really live.	0.7	lb	18.99	27.13	lb	Meat	Deli Meat	http://goodeggs1.imgix.net/product_photos/g53A9aGbRPyqeRYZEhXf_FK1A9639.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
982	Chicken Liver Pate	Mission Heirloom's chicken liver pate is rich and creamy, lightened up with smoked applesauce and bright herbs like shiso. Spread it onto toast or crackers, add it to a cheese platter, or use it to liven up a peppery arugula salad. Refrigerate after opening and consume within 5 days.Ingredients: chicken liver, house birch-smoked applesauce, beef fat, thyme, shiso, epazote, salt.	8.1	oz	8.99	1.11	oz	Meat	Charcuterie	http://goodeggs2.imgix.net/product_photos/rAdrmBdFT3WnbRbDcY5z_chix%20liver%20pate.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
983	Grass Fed Beef Sausage Sticks	For a high energy yet healthy snack, try our smoked beef sticks. The spices are black pepper, basil, oregano and garlic.No preservatives, by-products, soy, fillers or conditioners, just 100% grass fed ground beef from our Limousin cross cattle. Carefully smoked with hickory wood in a small facility on the North Coast, the beef sticks are prepared with no added nitrates. Ingredients: beef, salt, sugar, spices, celery powder.Shelf life: If kept refrigerated and unopened, sticks will last a month. If not refrigerated, then 2 weeks. (Not like you're going to be able to keep from eating them right away anyway)	2	oz	3.99	2.0	oz	Meat	Charcuterie	http://goodeggs1.imgix.net/product_photos/ETLhCi9QROOUlVMA5DCg_ow77QAwDTbu98ATRIU0h_FK1A3187.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
985	Pancetta	Round bellies are the best, especially when they’re made of bacon. Actually, it’s the bacon that’s made from the pig’s round belly, and then rolled into a log and cured to make pancetta. A traditional Italian staple, pancetta is often used in pasta dishes and on pizzas—fried up like bacon, it looks like a crispy little pinwheel. La Quercia uses vegetarian-fed, antibiotic-free pork from Heritage Acres Foods and cures it with sea salt, juniper berries, and bay leaves, giving the sweet meat an herbal kick. Ingredients: Pork, Sea Salt, Black and White Pepper, Rosemary, Bay Leaf	3	oz	8.99	47.95	lb	Meat	Charcuterie	http://goodeggs1.imgix.net/product_photos/NCys5WZtT5W4Ox8KQ7zM_FK1A7260.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
986	Finocchiona	Traditional Italian salami with fresh garlic, cracked black pepper and fennel seed. Natural, edible hog casings and authentic molds. Ingredients: Pork, pork fat, salt. Contains 2% or less of dextrose, garlic, sodium nitrite, sodium nitrate, lactic acid starter culture, water.	4.2	oz	9.99	38.06	lb	Meat	Charcuterie	http://goodeggs1.imgix.net/product_photos/R5skjPCTYihqZAgQGfhQ_FK1A1202.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
987	Pork Liver Mousse	Rich and creamy mousse of pork liver, slightly sweetened with Port Wine and capped with rendered pig fat.  SUGGESTIONS TO ENJOY: Enjoy with your favorite baguette, olive oil and fleur de sel.INGREDIENTS: Liver, lard, cream, egg, Port Wine, salt, nitrite, pepper, coriander, chili flake.	8	oz	9.99	1.25	oz	Meat	Charcuterie	http://goodeggs1.imgix.net/product_photos/e8vkjQw3QQCTkHS0OpnQ_FK1A5531-2.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
988	Pork Pistachio Pâtè	This country style pork pate is made with fresh herbs and pistachios, then capped with rendered pig fat. SUGGESTIONS TO ENJOY: Enjoy with your favorite baguette and a stone ground mustard.INGREDIENTS: Pork, liver, salt, nitrite, pepper, sugar, garlic, onion, parsley, thyme, shallot, port wine, cloves, nutmeg, ginger, bread, milk, spices. 	8	oz	9.99	1.25	oz	Meat	Charcuterie	http://goodeggs1.imgix.net/product_photos/ZhKZsHU1THq8JzBtPL99_FK1A5516-2.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
989	Pancetta	Fra’ Mani Pancetta is a salted and dried skinless pork belly, made according to the traditional Italian production method of “pancetta arrotolata” (rolled pancetta). Hand trimmed, hand salted and slowly aged, our Pancetta is characterized by a balanced proportion of lean and fat and the aromas of garlic, clove, bay leaf, and black pepper.Marcella Hazan calls this Pancetta the "best in the country."Ingredients: Pork, Sea Salt, and contains 2% or less of Celery Juice, Garlic, Spices, Dextrose, Starter Culture.	16	oz	14.99	14.99	lb	Meat	Charcuterie	http://goodeggs1.imgix.net/product_photos/yc5Li6DSQmu3usdyLM0B_FK1A0839.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
990	Football Summer Sausage	This iconic treat is a "go-anywhere", "pair with everything", "everybody’s favorite" kinda sausage. A classic American favorite Ours has fresh garlic, whole mustard seeds and a bright kick from chili flake. Shelf stable, cased in a custom football casingIngredients: Pork, pork fat, water, salt, spices, dextrose, garlic, vinegar, marjoram, chard powder, natural flavors, lactic acid starter culture	1	lb	14.49	14.49	lb	Meat	Charcuterie	http://goodeggs1.imgix.net/product_photos/zHpUqhVrS8iHz9Yifmws_20160913-OlympicProvisions_FootballSummerSausage__MG_0887.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
991	Pork Summer Sausage	This iconic treat is a "go-anywhere", "pair with everything", "everybody’s favorite" kinda sausage. Our take on the classic American summer sausage is tangy and mildly spiced with mustard and garlic, wax dipped, and completely delicious.Ingredients: Pork, pork fat, water, salt, spices, dextrose, garlic, vinegar, marjoram, swiss chard powder, natural flavors, lactic acid starter culture, potassium sorbate. 	0.75	lb	10.99	14.65	lb	Meat	Charcuterie	http://goodeggs1.imgix.net/product_photos/0QhDxbcGTXeI9ol3pHmS_FK1A7723.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
992	Sauccison D'Arles	Our most elemental and simple salami: just pork and sea salt. Natural, edible hog casings and authentic molds.Ingredients: Pork, pork fat, salt. Contains 2% or less of dextrose, sodium nitrite, sodium nitrate, lactic acid starter culture, water.	4.5	oz	9.99	35.52	lb	Meat	Charcuterie	http://goodeggs2.imgix.net/product_photos/QIATqtU5RCOPHCfJdLgF_FK1A1188.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
993	Saucisson aux Noisette	French for salami with hazelnuts and here in Oregon we grow 99% of North America's crop. Enjoy this simple saucisson seasoned only with sea salt and studded with whole roasted Oregon hazelnuts. Natural, edible hog casings, authentic molds. Ingredients: Pork, pork fat, salt, hazelnuts. Contains 2% or less of dextrose, sodium nitrite, sodium nitrate, lactic acid starter culture, water.	4.2	oz	9.99	38.06	lb	Meat	Charcuterie	http://goodeggs1.imgix.net/product_photos/XEAwqIcQZmJpdQCxkAqR_FK1A1166.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
994	Saucisson Sec	Classic French style salami seasoned with fresh garlic and cracked black pepper. Natural, edible hog casings, authentic molds. Ingredients: Pork, pork fat, salt. Contains 2% or less of dextrose, garlic, sodium nitrite, sodium nitrate, lactic acid starter culture, water.	4.2	oz	9.99	38.06	lb	Meat	Charcuterie	http://goodeggs2.imgix.net/product_photos/eXmKjgDRJmjCWhyGeuEz_FK1A1153.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
995	Chorizo Rioja	Our most traditional Spanish style chorizo, flavored with bright smoked and sweet Pimentón de la Vera, earthy garlic and oregano. Natural, edible hog casings and authentic molds. Ingredients: Pork, pork fat, salt. Contains 2% or less of dextrose, garlic, sodium nitrite, sodium nitrate, spices, lactic acid starter culture, water.	4.2	oz	9.99	38.06	lb	Meat	Charcuterie	http://goodeggs2.imgix.net/product_photos/xOg3DaLS4yaUE7N4CtRr_FK1A1224.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
996	Loukanika	Greek style salami with vivid flavors of cumin and hints of orange zest based on the family recipe of Salumist Elias Cairo. Natural, edible hog casings and authentic molds.Ingredients: Pork, pork fat, salt. Contains 2% or less of dextrose, orange zest, garlic, sodium nitrite, sodium nitrate, spices, lactic acid starter culture, water.	4.2	oz	9.99	38.06	lb	Meat	Charcuterie	http://goodeggs1.imgix.net/product_photos/dUtE8DpS0aSHje3PLtPQ_FK1A1174.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
997	Chorizo Navarre	A Northern Spanish style chorizo punctuated with Pimentón de la Vera, fresh garlic, and just the right amount of cayenne to imbue a warm heat. Natural, edible hog casings and authentic molds.  Ingredients: Pork, pork fat, salt. Contains 2% or less of dextrose, garlic, sodium nitrite, sodium nitrate, spices, lactic acid starter culture, water.	4.2	oz	9.99	38.06	lb	Meat	Charcuterie	http://goodeggs1.imgix.net/product_photos/rNO3oXhnToBpWWSwm7eA_FK1A1235.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
998	Capicola	This dry-cured, premium Italian-style salami is sourced from heritage-breed pigs humanely raised on pasture at local family farms. Savor these luxuriously thin slices on an Italian sub, mixed in with some arugula and stone fruit, or paired perfectly with a hard cheese. The delicately seasoned, slightly spicy flavor will have you asking for more!All Smoking Goose recipes begin on the farm. They carefully curate farm sources based on research, site visits, flavor, and personal relationships with farmers. The base requirements for all Smoking Goose farm sources: Small Family Owned Farm, No factory Farms, No Gestation Pens,  Antibiotic Free, 100% Vegetarian Feed, No Growth Promotants, Humanely Slaughtered. Source codes printed in the bottom right corner of each smoking goose package. To find out more about the farm please visit their Raw Resource Sheet. Ingredients: Uncured pork collar salame, paprika, white wine	12	oz	14.49	19.32	lb	Meat	Charcuterie	http://goodeggs1.imgix.net/product_photos/FbL0Yj5IR6CKYnNVlzOU_20160617-SmokingGoose_Capocollo_MG_3012.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
999	'Nduja	'Njuda is a specialty of Calabria. Traditionally considered a peasant food, the Italian version is made from "poor cuts" of pork preserved with Calabrian pepper. La Quercia's 'Njuda Americana is made with prosciutto and speck-- quite the opposite of poor cuts! A delicious spreadable blend of La Quercia cured meat spiced with American red pepper, it marries rich umami to abundant heat.Extremely versatile! Spice up a pasta sauce, grilled cheese, burger, pizza, crostini, or taco. Wonderful just slathered on warm bread or a cracker.Ingredients: Fully cured prosciutto and speck, sea salt, red chili pepper.	5	oz	7.99	25.57	lb	Meat	Charcuterie	http://goodeggs1.imgix.net/product_photos/ADxTG5Y5QPSyrAPRj3WZ_FK1A6824.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
1000	'Nduja	With the original 'Nduja as our inspiration, we're making our own all-local Indiana version. Like the traditional Italian salame, we started by grinding and blending pork shoulder, belly and jowl. We spiked the rich, soft mixture with dried Calabrianpeppers then stuffed natural casings that are about 3 or 4 inches wide, like the Italians use. Here's where we made it our own: our 'Nduja saw the inside of our gravity-fed cold smoker for 10 days before dry curing for 8 weeks. That layer of sweet smoke rounds out the delicious bite of hot, floral, and earthy Calabrian peppers for a slice that's a little more firm than the original 'Nduja but layered with even more intense and complex flavors. The soft center of the salame is spreadable on warm bread for a simple first course, but since our 'Nduja is firm enough to slice paper thin, we'll take it to top a pizza, dress a salad or soup, or stir into sauce for cut pasta or lasagna.All Smoking Goose recipes begin on the farm. They carefully curate farm sources based on research, site visits, flavor, and personal relationships with farmers. THe base requirements for all Smoking Goose farm sources: Small Family Owned Farm, No factory Farms, No Gestation Pens,  Antibiotic Free, 100% Vegetarian Feed, No Growth Promotants, Humanely Slaughtered. Source codes printed in the bottom right corner of each smoking goose package. To find out more about the farm please visit their Raw Resource Sheet. This item is stored frozen. Please use within 30 days of defrosting.Ingredients: pork, calabrian peppers, paprika, cold-smoked	8	oz	13.99	27.98	lb	Meat	Charcuterie	http://goodeggs1.imgix.net/product_photos/ONF4WVVDQgSbIf98WTwi_20160914-SmokingGoose_Njuda_MG_1012.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
1001	Smoked Delaware Fireball Crepinette	One of the OG salumis created at Goose the Market, Smoking Goose’s butcher shop on Delaware Street in Indianapolis, this crepinette salame is spicy! Coarse ground pork is blended with crushed red pepper, black pepper, espellette, and cayenne, then hand wrapped in caul fat before getting cold smoked over hickory and aged. Easy to slice and ideal for snacking, try paired with blue cheese to temper the heat on your next charcuterie board!Ingredients: uncured pork salame, red chilies, espelette, caul fat, cold-smoked.	5	oz	13.99	44.77	lb	Meat	Charcuterie	http://goodeggs1.imgix.net/product_photos/DTxvFPVtQbmkONbtvLuS_20160820-SmokingGoose_DelawareFireball_MG_8512.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
1002	Original Korean BBQ Marinade	"This is an all NEW product from Genuine Grub! As someone who loves Korean BBQ (or K-BBQ as we say in my house) it's awesome to know that I no longer have to wait in line at the K-BBQ spots around the Bay and that I can enjoy the flavors right from my own house" -Erin, Grocery Buyersure, we could tell you that our marinade has tons of great reviews. but most of them are from people we had to pay. like family and friends. but if you’re looking for something new and exciting in life (sorry, we’re referring to food only), we think you’ll love this. besides, it’s made with organic ingredients and stuff. so, c’mon, what've you got to lose? a few dollars, sure, but that's a risk we're willing to take! MADE IN MARIN.ingredients: soy sauce (water,soybean, wheat, salt),* sugar,* sesame oil,* water, apple cider vinegar,* apple cider,* arrowroot,* granulated garlic,* sesame seed,* minced garlic,* green onion,* black pepper.*     * organic 	16	oz	7.99	0.5	oz	Meat	Rubs & Marinades	http://goodeggs1.imgix.net/product_photos/PxwlOyk7SfmyRkCvfN0g_20160824-GenuineGrub_KoreanBBQ_MG_8620.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
1003	Poultry Seasoning	With rubbed sage, white pepper and notes of ginger, green onion and thyme, this poultry seasoning is a classic hit. Rub a few teaspoons on and in a whole turkey or chicken or parts, add sea salt and roast. Great in stuffing, too.	1.1	oz	6.99	6.35	oz	Meat	Rubs & Marinades	http://goodeggs1.imgix.net/product_photos/OiaYcw9mSt2ZtqjVC3Up_FK1A9474.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
1004	Spiced Molasses BBQ Sauce	A complement to our popular bbq sauce, this new sauce (introduced in July, 2014) is based around molasses, dark cane sugar, a good amount of vinegar for tang and the addition of bourbon, espresso and a variety of spices and peppers that makes it so delicious you can eat it straight out of the jar all by itself. The San Francisco Chronicle wrote: "This latest offering from the San Francisco preserves company offers deep notes of molasses and bourbon in what tastes like the culinary love child of a traditional bbq sauce and a spiced gingerbread cookie (in a good way, of course)."  http://www.sfgate.com/food/article/Barbecue-sauces-for-ribs-wings-chops-or-skewers-5631764.phpIngredients: Vinegar, organic tomatoes, molasses, cane sugar, organic apple cider, bourbon, spices, salt, espresso.	16	fl oz	6.79	0.42	fl oz	Meat	Rubs & Marinades	http://goodeggs2.imgix.net/product_photos/EPMjcWkqQ9KZBo9O5eRP_FK1A6477.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
1005	BBQ Sauce	We've been making this highly addictive sauce/dip for ourselves and tinkering with the recipe since 1999. Not just for bbqs, this can be used instead of ketchup and as a general sauce/dip for any kind of meat or vegetables. We use it in sandwiches, as a dip for fries and roasted potatoes, on burgers and hot dogs. You can even make meat loaf with it. One dish we love to make is pulled bbq chicken or turkey sandwichs with coleslaw as they do in North Carolina - search online lots of recipes! If you are vegetarian, it is perfect seasoning for a wide variety of dishes. Just be creative! It is delicious all year round.Not too spicy, but not too mild. It is a perfect combination of spices, heat, sweetness and tang. The complex, addictive flavor is due to our use of more than seven types of chilies and peppers, and many, many spices. Just measuring out all the ingredients takes an hour! Read the rave review by Food & Wine magazine about it.Our bbq sauce is gluten free and contains organic California grown GMO-free tomatoes, processed by Neil Jones in Hollister, California.Ingredients: organic tomatoes, brown cane sugar, organic vinegar, mustard, organic wheat-free soy sauce, spices, garlic, salt.	16	fl oz	6.99	0.44	fl oz	Meat	Rubs & Marinades	http://goodeggs1.imgix.net/product_photos/YlD5s4PcT8q5ojK7E2rQ_FK1A6460.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
1006	Akka's Curry Paste - South Indian Style	Craving for a fresh tasting curry with authentic flavors without the hassle of shopping for ingredients and making them? Akka's Curry Paste is the simple solution! Made with 16 ingredients including fresh tomato, onion, coconut, ginger, garlic, curry leaf, turmeric, coriander, and spices is easy to use. This is inspired by my mother who used to make a curry paste before we went on our annual pilgrimage to a distant village when I as growing up in India. We bring this product to not so distant Silicon Village San Francisco, for everyone's enjoyment.All you do is brown 2 lbs of chicken breast or thigh meat. Transfer the full jar of curry paste to the pot. Add two cups of liquid - chicken broth, coconut milk, or water, and 1 lb of chopped vegetable like potato, carrots. Bring to boil and simmer for 15 minutes until chicken is cooked. Serve with rice, nan, paratha, or bread with a spoon full of Akka's Mango Chutney in the side.To make vegetarian curry: chop and boil three cups of vegetables like potatoes, carrots, green beans, cauliflower in water. Add three to four tablespoons of curry paste to the vegetable and simmer for few minutes. Serve with rice, chapathi, paratha, or bread with a spoon full of Akka's Meyer Lemon Relish in the side.Ingredients: tomato, onion, coconut, ginger, garlic, coriander powder, chili powder, safflower oil, curry leaf, spices, salt	6.7	oz	10.49	1.57	oz	Meat	Rubs & Marinades	http://goodeggs2.imgix.net/product_photos/Hkgn1St3SjS22fZfSAM1_FK1A2641.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
1007	Spicy Korean BBQ Marinade	"This is an all NEW product from Genuine Grub! As someone who loves Korean BBQ (or K-BBQ as we say in my house) I am stoked that I can now enjoy flavors from my own couch. This is the spicier version for anyone who wants to walk on the wild side. " -Erin, Grocery Buyerlooking for a spicy marinade that will set your taste buds on fire? well, this ain’t it – but it will add a nice kick to whatever you add it to. and, like our original korean bbq marinade, it’s made with only organic ingredients and stuff. so, c’mon, think of how jealous your family and friends will be of you since it’s a FACT that people who eat spicy foods live spicier lives*…..………(* umm, not a fact whatsoever.) MADE IN MARIN.ingredients: soy sauce (water,soybean, wheat, salt),* sugar, *sesame oil,* water, apple cider vinegar,* apple cider,* cayenne powder,* arrowroot,* granulated garlic,* sesame seed,* minced garlic,* green onion,* black pepper*.     * organic	16	oz	7.99	0.5	oz	Meat	Rubs & Marinades	http://goodeggs2.imgix.net/product_photos/712fcqThQAaY9BmMiPqt_20160824-GenuineGrub_KoreanSpiceyBBQ_MG_8617.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
1008	Montreal Steak and Chop Spice Blend	Whether you’re grilling or pan frying your steak or chop, this blend gives every bite a good dose of pepper and garlic. Use liberally on your meat.Hand-mixed from: Flake Salt, Garlic, Black Pepper, Coriander, Dill Seed, White Pepper, Onion, Caraway Seed, Thyme, Green Onion, and Oregano.	2	oz	5.79	2.9	oz	Meat	Rubs & Marinades	http://goodeggs1.imgix.net/product_photos/FKsEPt8kQtujTjbFrg1V_montreal.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
1009	Prather Ranch BBQ Sauce	Ingredients: Organic tomatoes, organic ketchup, molasses, brown sugar, apple cider vinegar, onions, garlic, jalapenos, salt, distilled white vinegar, smoked paprika, natural liquid smoke, black pepper.Prather Ranch Meat Company's signature BBQ sauce is a perfect compliment for ribs, brisket, wings and pulled pork. Made in house with natural ingredients, it has a perfect smoky, tangy, spicy, sweet balance.	16	fl oz	9.99	0.62	fl oz	Meat	Rubs & Marinades	http://goodeggs1.imgix.net/product_photos/LfRFhs7LStiRmcUNACdF_FK1A9966.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
1010	Akka's Tandoori Marinade	Make an authentic tandoori chicken with no artificial coloring using Akka's Tandoori Marinade! Just add plain yogurt to the marinade and marinate chicken for two hours or longer. Bake, barbeque, or grill to make a flavorful tandoori chicken. Marinade contains fresh lemon juice, ginger, garlic, oil, salt, turmeric, spices.  No artificial coloring or preservatives.Make vegetarian fare like tandoori sweet potato, potato, or cauliflower. Dice or break the vegetable into a small pieces. Coat with Akka's Tandoori Marinade and bake at 400F for about 15 to 20 minutes. Makes an excellent snack or a side dish.Ingredients: lemon juice, ginger, garlic, safflower oil, spices, salt	6.7	oz	10.49	1.57	oz	Meat	Rubs & Marinades	http://goodeggs2.imgix.net/product_photos/qM3nTx3SRZ6RusTVErzw_FK1A2649.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
1011	Shio Koji, All-Purpose Japanese Marinade	Shio koji is a live food that adds rich savory flavor to your cooking. Use in place of salt in any dish or sauce, giving you a umami-rich way to lower the sodium content.For more ideas on how to use Shio koji, check out this article from SF Gate!Ingredients   Organic rice koji, spring water, sea salt	8	oz	9.99	1.25	oz	Meat	Rubs & Marinades	http://goodeggs2.imgix.net/product_photos/E5c796noReydv5rs8ALM_FK1A6778.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
1012	Chimichurri Sauce	Ingredients: Extra Virgin Olive Oil, White Distilled Vinegar, Water, Sea Salt, Oregano, Sage, Red Chili Pepper, Thyme, PeppercornThe perfect accompaniment to a grilled Prather steak, chimichurri is a classic Argentinian sauce to go with grilled meats- but it's also awesome on potatoes, scrambled eggs, steamed veggies, chicken, or over Provoleta (grilled provolone cheese, look it up, you'll thank us...)	9	oz	9.99	1.11	oz	Meat	Rubs & Marinades	http://goodeggs2.imgix.net/product_photos/ObztJtUoTOaMYYtVsLXA_FK1A5450.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
1013	Akka's Indian Spice Rub	A South India style fresh tasting curry spice rub with authentic flavor is tailored from my family recipe. It pairs well with roasting both meat and vegetable.  Rub meat with generous amount of spice rub, olive oil, and lemon juice. Marinate in refrigerator for 30mins. Roast, grill, or barbeque until the meat is cooked. Serve with rice, bread, or paratha and Akka's mango chutney on the side. Coat chopped vegetables like potato, sweet potato, carrots, shallots, celery stick with the spice rub and olive oil mixture. Roast until cooked. Separately, make or heat tomato sauce on a skillet along with some spice rub. Transfer vegetable to the skillet and mix well. Serve with rice, chapathi, or paratha and Akka's Meyer lemon relish on the side. Mixing with tomato sauce is optional.Ingredients: coriander, ginger, garlic, safflower oil, coconut, turmeric, red chili, spices, salt, curry leaf	3.2	oz	9.99	3.12	oz	Meat	Rubs & Marinades	http://goodeggs1.imgix.net/product_photos/qwG0wPQaRqG1nw1rHyuq_20160809-Akkas_IndianSpiceRubMG_7517.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
1014	Beef Bones (Frozen)	Oakridge Angus- Grass-fed, Grain Finished Beef - from Sonoma County Meat Co. Perfect for bone broth, Pho, really lucky dogs..."Oak Ridge Angus raises premium grass-fed grain-finished beef raised in Knights Valley, just outside Calistoga. Started as a dairy by Massimino LaFranchi 1912, the family sold their award winning Aryshires in 1974 and bought the first generation of the Angus herd they raise now. Pature raised on the rolling hills of northern California, and finished with only spent beer grain, 100% barley from the Bear Republic in Cloverdale; no corn, no antibiotics, no hormones of any kind.This is truly a local, sustainable protein."	2.8	lb	15.39	5.5	lb	Meat	Bones & Offal	http://goodeggs1.imgix.net/product_photos/Z4uOUaFRwijQVAsbdMOE_FK1A6546.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
1015	Grass-fed Oxtail (Frozen)	100% Grass-fed and Finished Oxtail- from Morris Grassfed, San Juan BautistaBraise away!  Take your time, fill your home with beautiful aromas and enjoy mouth-watering 100% locally-grown Morris Grass-fed beef and gravy during the fall and winter.  The perfect comfort food, oxtail is possibly the ultimate braising cut.Morris Grassfed provides 100% grass-fed & finished (no antibiotics or added hormones) beef to customers throughout California. Our beef is dry-aged for 21 days, processed in USDA inspected facilities, cut & wrapped by small-scale, artisan butchers and delivered directly to you via Good Eggs.We are an independent, family-owned company. We practice holistic management on the rangelands we manage, taking into account the land, animals, and people affected by our decisions. We invite you to take a tour of our operations here and to learn about the social, ecological and health benefits of 100% grass finished beef.	2	lb	25.99	13.0	lb	Meat	Bones & Offal	http://goodeggs1.imgix.net/product_photos/HhKS70yhSOcXi5xgSTBk_20160611-SonomaMeatCo_Oxtail_MG_1976%20%281%29.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
1016	Pasture Raised Pork Bones (Frozen)	Walnut Keep Farms Pork- from Sonoma County Meat CompanyHeritage breed pigs are pasture-raised in Suisun Valley and finished on walnuts, giving the fat a rich, creamy texture. Never given antibiotics or growth hormones, and never confined. Mixed pork bones, great for broth, stew, or dog treats!	2.8	lb	16.19	5.78	lb	Meat	Bones & Offal	http://goodeggs1.imgix.net/product_photos/1LMynNe2QkqaE5PKP1Fj_FK1A0276.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
1017	Natural Smoked Ham Hocks (Frozen)	This smoked ham hock will be a great addition to your pot of beans or soups. They are meaty and have a wonderful, but not too overpowering, smoke on them. Did we mention we sell beans as well? And we've got a killer recipe for Cuban Black Beans and Ham Hocks if you ask us...Ingredients: Llano Seco pork, sea salt, sugar, celery powder, cherry powder, sodium carbonate, and flavorings.Our pigs are a cross of Duroc and Yorkshire breeds. Our hogs are fed GMO-free, vegetarian grains and legumes, 80% of which are grown on the Rancho. Pigs are raised in deep-bedded hoop barns with continual access to large open air pastures with plenty of sunshine and a great view of the California Buttes. All animals are confinement-free for 100% of their lives, humanely treated with best practices certified by Global Animal Partnership. Our pigs are never fed antibiotics or growth hormones. Llano Seco Pork is the culmination of our mission to provide a variety of products while caring for the people, the animals and the land. We pride ourselves in our holistic approach to ranching.	1.5	lb	10.49	6.99	lb	Meat	Bones & Offal	http://goodeggs1.imgix.net/product_photos/tjRnOEYzRF2NKRNRUGP4_FK1A7550.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
1018	Lamb Bones (Frozen)	Williams Ranches Lamb- from Sonoma County Meat CompanyRaised by the Williams family in the coastal hills of Sonoma County, sheep graze among the abundant wildlife protected by five Great Pyrenees livestock guardian dogs. The Pyrenees guard the sheep from natural predators allowing both to live in harmony with the land.Williams Ranches grows the highest quality lamb, fed on grass, clover and alfalfa with no hormones or antibiotic supplements. The Williams hand select each lamb, determining processing time by the amount of fat cover. This ensures a quality, consistent product that is available year round and lambs that are processed between 5 and 8 months old. This process means you will get a leaner, milder lamb that simply melts in your mouth.	2	lb	15.99	8.0	lb	Meat	Bones & Offal	http://goodeggs1.imgix.net/product_photos/n0Lj0A7BSuA0NpE9kVwS_FK1A6672.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
1019	Lamb Bones (Frozen)	Williams Ranches Lamb- from Sonoma County Meat CompanyRaised by the Williams family in the coastal hills of Sonoma County, sheep graze among the abundant wildlife protected by five Great Pyrenees livestock guardian dogs. The Pyrenees guard the sheep from natural predators allowing both to live in harmony with the land.Williams Ranches grows the highest quality lamb, fed on grass, clover and alfalfa with no hormones or antibiotic supplements. The Williams hand select each lamb, determining processing time by the amount of fat cover. This ensures a quality, consistent product that is available year round and lambs that are processed between 5 and 8 months old. This process means you will get a leaner, milder lamb that simply melts in your mouth.	2.25	lb	17.99	8.0	lb	Meat	Bones & Offal	http://goodeggs1.imgix.net/product_photos/n0Lj0A7BSuA0NpE9kVwS_FK1A6672.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
1030	Duck Fat	Rendered Duck FatFried potatoes anyone? How about making your own duck confit? Everything's delicious with duck fat!Arrives frozen, keep frozen or refrigerated.Mary’s Free-Range Ducks are beautiful animals to raise. The Pekin Duck are raised naturally in the beautiful weather in California. They live year round with access to outdoors. We watch them everyday to make sure they are comfortable and happy. We make every effort to treat our ducks as humanely as possible throughout the production process. No Antibiotics EverRaised Without Added Hormones*No Preservatives or Additives*Federal Regulations Prohibit The Use Of Hormones In DuckFed a Vegetarian Diet (65% Corn, 25% Soybean Meal, 5% Vitamins and Nutrients, 5% Wheat)	12	oz	11.89	0.99	oz	Meat	Bones & Offal	http://goodeggs2.imgix.net/product_photos/nynEyNm3RuG8AP4PfyDB_20160429-Marys_DuckFat_MG_8482.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
1020	Grass-fed Oxtail (Frozen)	100% Grass-fed and Finished Oxtail- from Morris Grassfed, San Juan BautistaBraise away!  Take your time, fill your home with beautiful aromas and enjoy mouth-watering 100% locally-grown Morris Grass-fed beef and gravy during the fall and winter.  The perfect comfort food, oxtail is possibly the ultimate braising cut.Morris Grassfed provides 100% grass-fed & finished (no antibiotics or added hormones) beef to customers throughout California. Our beef is dry-aged for 21 days, processed in USDA inspected facilities, cut & wrapped by small-scale, artisan butchers and delivered directly to you via Good Eggs.We are an independent, family-owned company. We practice holistic management on the rangelands we manage, taking into account the land, animals, and people affected by our decisions. We invite you to take a tour of our operations here and to learn about the social, ecological and health benefits of 100% grass finished beef.	2.25	lb	29.99	13.33	lb	Meat	Bones & Offal	http://goodeggs1.imgix.net/product_photos/HhKS70yhSOcXi5xgSTBk_20160611-SonomaMeatCo_Oxtail_MG_1976%20%281%29.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
1021	Pasture Raised Goat Bones (Frozen)	Sonoma Hills Ranch Goat Rib Chop- from Sonoma County Meat CompanyFrom Sonoma Hills Ranch: Our goats eat a combination of what nature provides on our hillsides supplemented with alfalfa and orchard grass. During the fall they get an abundance of acorns and leaves, and during the spring our hillside meadows produce grasses for them. Other than providing some mineral supplements via goat blocks we don’t add a thing. No antibiotics, no grain, no pellets. Just happy goats eating primarily what nature provides. We raise primarily purebred Boer goats. They originate from South Africa and are considered the premier meat goat due to their stocky structure, weight gain and beautiful meat/fat blend. Goat fat doesn’t marble, unlike beef, but our goats always produce an extremely delicate layer of fat that makes the local chefs super happy.	1.75	lb	8.79	5.02	lb	Meat	Bones & Offal	http://goodeggs1.imgix.net/product_photos/5Ctv2OyySXa1uXcHK2Pp_20160426-SonomaCountyMeat_GoatBones_MG_7955.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
1022	Pasture Raised Goat Bones (Frozen)	Sonoma Hills Ranch Goat Rib Chop- from Sonoma County Meat CompanyFrom Sonoma Hills Ranch: Our goats eat a combination of what nature provides on our hillsides supplemented with alfalfa and orchard grass. During the fall they get an abundance of acorns and leaves, and during the spring our hillside meadows produce grasses for them. Other than providing some mineral supplements via goat blocks we don’t add a thing. No antibiotics, no grain, no pellets. Just happy goats eating primarily what nature provides. We raise primarily purebred Boer goats. They originate from South Africa and are considered the premier meat goat due to their stocky structure, weight gain and beautiful meat/fat blend. Goat fat doesn’t marble, unlike beef, but our goats always produce an extremely delicate layer of fat that makes the local chefs super happy.	2	lb	9.99	5.0	lb	Meat	Bones & Offal	http://goodeggs1.imgix.net/product_photos/5Ctv2OyySXa1uXcHK2Pp_20160426-SonomaCountyMeat_GoatBones_MG_7955.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
1023	Pasture Raised Goat Bones (Frozen)	Sonoma Hills Ranch Goat Rib Chop- from Sonoma County Meat CompanyFrom Sonoma Hills Ranch: Our goats eat a combination of what nature provides on our hillsides supplemented with alfalfa and orchard grass. During the fall they get an abundance of acorns and leaves, and during the spring our hillside meadows produce grasses for them. Other than providing some mineral supplements via goat blocks we don’t add a thing. No antibiotics, no grain, no pellets. Just happy goats eating primarily what nature provides. We raise primarily purebred Boer goats. They originate from South Africa and are considered the premier meat goat due to their stocky structure, weight gain and beautiful meat/fat blend. Goat fat doesn’t marble, unlike beef, but our goats always produce an extremely delicate layer of fat that makes the local chefs super happy.	2.25	lb	11.29	5.02	lb	Meat	Bones & Offal	http://goodeggs1.imgix.net/product_photos/5Ctv2OyySXa1uXcHK2Pp_20160426-SonomaCountyMeat_GoatBones_MG_7955.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
1024	Pasture Raised Pork Trotters (Frozen)	Walnut Keep Farms Pork- from Sonoma County Meat CompanyHeritage breed pigs are pasture-raised in Suisun Valley and finished on walnuts, giving the fat a rich, creamy texture. Never given antibiotics or growth hormones, and never confined. Step up your pork broth game- Tonkotsu Ramen, anyone?	0.5	lb	2.89	5.78	lb	Meat	Bones & Offal	http://goodeggs2.imgix.net/product_photos/PJcAMxaQT0qjQIr8aDAq_FK1A0643.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
1025	Pasture Raised Pork Trotters (Frozen)	Walnut Keep Farms Pork- from Sonoma County Meat CompanyHeritage breed pigs are pasture-raised in Suisun Valley and finished on walnuts, giving the fat a rich, creamy texture. Never given antibiotics or growth hormones, and never confined. Step up your pork broth game- Tonkotsu Ramen, anyone?	1	lb	5.79	5.79	lb	Meat	Bones & Offal	http://goodeggs2.imgix.net/product_photos/PJcAMxaQT0qjQIr8aDAq_FK1A0643.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
1026	Pasture Raised Pork Trotters (Frozen)	Walnut Keep Farms Pork- from Sonoma County Meat CompanyHeritage breed pigs are pasture-raised in Suisun Valley and finished on walnuts, giving the fat a rich, creamy texture. Never given antibiotics or growth hormones, and never confined. Step up your pork broth game- Tonkotsu Ramen, anyone?	1.5	lb	8.69	5.79	lb	Meat	Bones & Offal	http://goodeggs2.imgix.net/product_photos/PJcAMxaQT0qjQIr8aDAq_FK1A0643.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
1027	Beef Liver (Frozen)	Oakridge Angus- Grass-fed, Grain Finished Beef - from Sonoma County Meat Co. Nutrient dense, iron rich, and delicious with onions."Oak Ridge Angus raises premium grass-fed grain-finished beef raised in Knights Valley, just outside Calistoga. Started as a dairy by Massimino LaFranchi 1912, the family sold their award winning Aryshires in 1974 and bought the first generation of the Angus herd they raise now. Pature raised on the rolling hills of northern California, and finished with only spent beer grain, 100% barley from the Bear Republic in Cloverdale; no corn, no antibiotics, no hormones of any kind.This is truly a local, sustainable protein."	0.75	lb	3.99	5.32	lb	Meat	Bones & Offal	http://goodeggs1.imgix.net/product_photos/5phRhiWwTh7r9YevjuYB_FK1A0121%20%281%29.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
1028	Beef Liver (Frozen)	Oakridge Angus- Grass-fed, Grain Finished Beef - from Sonoma County Meat Co. Nutrient dense, iron rich, and delicious with onions."Oak Ridge Angus raises premium grass-fed grain-finished beef raised in Knights Valley, just outside Calistoga. Started as a dairy by Massimino LaFranchi 1912, the family sold their award winning Aryshires in 1974 and bought the first generation of the Angus herd they raise now. Pature raised on the rolling hills of northern California, and finished with only spent beer grain, 100% barley from the Bear Republic in Cloverdale; no corn, no antibiotics, no hormones of any kind.This is truly a local, sustainable protein."	1	lb	4.99	4.99	lb	Meat	Bones & Offal	http://goodeggs1.imgix.net/product_photos/5phRhiWwTh7r9YevjuYB_FK1A0121%20%281%29.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
1031	Grass-fed Beef Heart (Frozen)	100% Grass-fed and Finished Beef Heart- from Morris Grassfed, San Juan BautistaMorris Grassfed provides 100% grassfed & finished (no antibiotics or added hormones) beef to customers throughout California. Our beef is dry-aged for 21 days, processed in USDA inspected facilities, cut & wrapped by small-scale, artisan butchers and delivered directly to you via Good Eggs.We are an independent, family-owned company. We practice holistic management on the rangelands we manage, taking into account the land, animals, and people affected by our decisions. We invite you to take a tour of our operations here and to learn about the social, ecological and health benefits of 100% grass finished beef.	2.75	lb	21.99	8.0	lb	Meat	Bones & Offal	http://goodeggs1.imgix.net/product_photos/iQG9ToVRDqfmqL4HZAlC_ZXZUei9qR5iP9qOlpnsH_beef-heart-good-eggs0752.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
1032	Pasture Raised Pork Head	Walnut Keep Farms Pork- from Sonoma County Meat Company\nIf you're looking at this product we imagine you have some ideas of what you might want to do with it, but here's a few anyway- cabeza tacos, headcheese, guanciale, scrapple...\n\nHeritage breed pigs are pasture-raised in Suisun Valley and finished on walnuts, giving the fat a rich, creamy texture. Never given antibiotics or growth hormones, and never confined.	18	lb	49.99	2.78	lb	Meat	Bones & Offal	http://goodeggs1.imgix.net/product_photos/KEBlju0dRHyAKjmujQFj_20160527-PigHead_MG_0480%20%281%29.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
1033	Pasture Raised Pork Heart (Frozen)	Walnut Keep Farms Pork- from Sonoma County Meat Company\n\n\nHeritage breed pigs are pasture-raised in Suisun Valley and finished on walnuts, giving the fat a rich, creamy texture. Never given antibiotics or growth hormones, and never confined.	1.25	lb	9.99	7.99	lb	Meat	Bones & Offal	http://goodeggs2.imgix.net/product_photos/lQtBOp8PQXO4IG10G3W8_X7CgAVQGTTS7uOdXe30n_UZmwRPmMuD5c-7qLCo3QaufvyozruojkVaGSYhu38mo.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
1034	Pasture Raised Pork Skin (Frozen)	Walnut Keep Farms Pork- from Sonoma County Meat Company\nChicharrones!\nSay hello to golden fried pork skin that will satisfy that urge for crunch.\nLeave in sheets for chip-like chunks, OR slice thin and serve on top of pasta,\nsalad, fried eggs, and rice. The sky is the limit with this delectable, local\nproduct. \n\nHeritage breed pigs are pasture-raised in Suisun Valley and finished on walnuts, giving the fat a rich, creamy texture. Never given antibiotics or growth hormones, and never confined.	1.8	lb	8.99	4.99	lb	Meat	Bones & Offal	http://goodeggs2.imgix.net/product_photos/OPgkxsVRk2P5kfhB8KSA_FK1A9373.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
1035	Pasture Raised Pork Fat (Frozen)	Walnut Keep Farms Pork- from Sonoma County Meat Company\nThis fat is\nfor the home cook who wants to add flavor, not just grease. Perfect for\nsausage-making, rendering, or greasing pans and grills. \n\nHeritage breed pigs are pasture-raised in Suisun Valley and finished on walnuts, giving the fat a rich, creamy texture. Never given antibiotics or growth hormones, and never confined.	2.8	lb	11.19	4.0	lb	Meat	Bones & Offal	http://goodeggs2.imgix.net/product_photos/ut3ev4mRSCBfjgIuQHiJ_FK1A9356.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
1036	Beef Heart (Frozen)	Oakridge Angus- Grass-fed, Grain Finished Beef - from Sonoma County Meat Co. A great beginner organ meat, heart is just lean muscle- great pronounced beef flavor, without any of the mineral flavors associated with other organs. Marinate, slice thin and cook to medium rare in a hot pan or on the grill for tacos, or braise low and slow."Oak Ridge Angus raises premium grass-fed grain-finished beef raised in Knights Valley, just outside Calistoga. Started as a dairy by Massimino LaFranchi 1912, the family sold their award winning Aryshires in 1974 and bought the first generation of the Angus herd they raise now. Pature raised on the rolling hills of northern California, and finished with only spent beer grain, 100% barley from the Bear Republic in Cloverdale; no corn, no antibiotics, no hormones of any kind.This is truly a local, sustainable protein."	2	lb	15.99	8.0	lb	Meat	Bones & Offal	http://goodeggs2.imgix.net/product_photos/M3BSgWGREWQaFWRnUZxA_9yS6a6bGQQWsl4Ff0UNS_ZXZUei9qR5iP9qOlpnsH_beef-heart-good-eggs0752.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
1037	Beef Tongue (Frozen)	Oakridge Angus- Grass-fed, Grain Finished Beef - from Sonoma County Meat Co. A great beginner organ meat, heart is just lean muscle- great pronounced beef flavor, without any of the mineral flavors associated with other organs. Marinate, slice thin and cook to medium rare in a hot pan or on the grill for tacos, or braise low and slow."Oak Ridge Angus raises premium grass-fed grain-finished beef raised in Knights Valley, just outside Calistoga. Started as a dairy by Massimino LaFranchi 1912, the family sold their award winning Aryshires in 1974 and bought the first generation of the Angus herd they raise now. Pature raised on the rolling hills of northern California, and finished with only spent beer grain, 100% barley from the Bear Republic in Cloverdale; no corn, no antibiotics, no hormones of any kind.This is truly a local, sustainable protein."	2.25	lb	11.49	5.11	lb	Meat	Bones & Offal	http://goodeggs2.imgix.net/product_photos/NTOUYgpQri62g5NvE9tQ_aFDOzvu2SaKuu6NefOQH_IBO4yNKTiGb4eTWpoAMq_beef-tongue-good-eggs0706.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
1038	Grass-fed Beef Heart (Frozen)	100% Grass-fed and Finished Beef Heart- from Morris Grassfed, San Juan BautistaMorris Grassfed provides 100% grassfed & finished (no antibiotics or added hormones) beef to customers throughout California. Our beef is dry-aged for 21 days, processed in USDA inspected facilities, cut & wrapped by small-scale, artisan butchers and delivered directly to you via Good Eggs.We are an independent, family-owned company. We practice holistic management on the rangelands we manage, taking into account the land, animals, and people affected by our decisions. We invite you to take a tour of our operations here and to learn about the social, ecological and health benefits of 100% grass finished beef.	3	lb	23.99	8.0	lb	Meat	Bones & Offal	http://goodeggs1.imgix.net/product_photos/iQG9ToVRDqfmqL4HZAlC_ZXZUei9qR5iP9qOlpnsH_beef-heart-good-eggs0752.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
1039	Fresh Steelhead Trout	Harvested in Washington's Columbia River, Steelhead Trout is the salmon lovers' alternative fish. Steelhead is so much like salmon in color, taste, and texture that it's sometimes very difficult to tell the difference.Information on Source:PORTLAND, Ore. – April 29, 2013 – The Pacific Seafood Group, a family owned seafood company based in Portland, Ore., is pleased to announce that their Pacific Aquaculture Steelhead Farm on the Columbia River in Washington State has received Best Aquaculture Practices (BAP) certification. This is the first and only Salmon/Steelhead farm to be BAP certified in the U.S.The Best Aquaculture Practices (BAP) standards address environmental and social responsibility, animal welfare, food safety and traceability in a voluntary certification program for aquaculture facilities. BAP certification defines the most important elements of responsible aquaculture and provides quantitative guidelines by which to evaluate adherence to those practices.	1	lb	21.99	21.99	lb	Fish	What We Love	http://goodeggs1.imgix.net/product_photos/E03KRaalQKuRHyuvSzvV_FK1A9391.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
1040	Frozen Wild Petrale Sole Fillets	Sometimes the freshest seafood comes from the freezer.As soon as fish leaves the water it begins losing freshness. Your average fillet is several days old by the time it reaches your plate, and the taste and texture have already suffered. We use freezing to stop time and preserve the freshness of our fish. We seal our fish in vacuum bags that protect the fillets from freezer burn. We freeze our individually vacuum packaged fillets quickly and at a low temperature, which preserves the texture of the fish. Most importantly, we freeze our fish immediately after it’s caught. Our fish doesn’t travel the world, it’s landed twenty miles from where it’s filleted and frozen. Thaw exactly the amount you need right before you need it, and our fish will always taste like it was reeled in yesterday.Our Petrale sole are caught off the coast of Northern California. We rush to make sure that the fish are filleted and frozen immediately, so that our sole tastes like it was caught yesterday. This fish makes great fish and chips, fish stew, fish tacos, and sole meuniere. You can hold these fillets in your freezer for up to one year.Thawing Instructions: It is best to thaw our Frozen Wild Petrale Sole Fillets slowly under refrigeration. Thawing slowly keeps the fillets firm. Nobody likes mushy fish. Thaw just what you plan on eating. Remove fillets from bags and place in a bowl inside your refrigerator. Allow the fillets to thaw for 8 to 12 hours. Cook fillets within 24 hours of thawing.	0.5	lb	10.99	21.98	lb	Fish	What We Love	http://goodeggs2.imgix.net/product_photos/pk7137xARR6v1Q4q9bTR_FK1A9278.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
1041	Anchovy Fillets	Sourced from Italy in partnership with Market Hall FoodsAn Italian pantry would be incomplete without anchovies. One can see immediately the higher quality of this product: small plump, pink Sicilian anchovy fillets which have been cured for over 12 days in salt and marinated in high quality extra virgin olive oil.Use to top a perfectly made pizza, in panini, on crostini and when making any pasta sauce. Ideal to use on salads or any other preparation where the anchovy fillet will be a "star".Ingredients: anchovies, extra virgin olive oil, salt	3	oz	7.99	2.66	oz	Fish	What We Love	http://goodeggs2.imgix.net/product_photos/zDHRJjs9RuaHoO3Qz7Vo_FK1A2503.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
1042	Wild Gulf Coast Shrimp (Peeled)	Wild Gulf Coast Shrimp, 16/20ct  One of few wild shrimp still available.  These Texas Shrimp are harvested under a sustainable management plan & follow environmentally safe guidelines.The shrimp are firm, with a mild, sweet flavor.Wild shrimp and farmed shrimp will have their own distinctive flavor profile simply because their diet is different.  Wild shrimp have a more varied diet — they feed on marine organisms, different types of plankton, organic matter.  The fish meal pellets that farmed shrimp are fed contain a lot of grains.  The wild diet naturally gives wild shrimp a more robust flavor profile than a farmed shrimp raised on a bland, unvaried diet.The shrimp are peeled (shell-off) & deveined, Individually Quick Frozen (IQF), 16-20 per pound, in 1lb packages that can be kept in the freezer for months.For more information on the processor in Galveston, Texas visit www.galvestonshrimpcompany.com	1	lb	26.99	26.99	lb	Fish	What We Love	http://goodeggs1.imgix.net/product_photos/vZBqfrkMQBeXFEdGZUBr_image.jpeg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
1043	Wild Alaskan Smoked Sockeye Salmon Bellies	\nSmoked Wild Alaskan Sockeye Salmon Bellies- Kenai Red Fish CompanyIngredients: Wild Alaskan Salmon, Brown Sugar, Salt, Natural Alder SmokePremium sockeye salmon caught sustainably in the\nwaters of Cook Inlet, AK. Mostly the famous “Kenai Reds”, our salmon gets to dock\nin Homer, AK within hours of being caught. 	6.4	oz	11.29	1.76	oz	Fish	What We Love	http://goodeggs1.imgix.net/product_photos/N3rn0lG4SXicDQjFtAeM_20160802-Kenai_SmokedSalmonBellies_MG_7040.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
1044	Half Pound Fresh Dungeness Crabmeat	Fresh Dungeness Crabmeat is packed with a combination of claw, leg, & body meat. All fully cooked & ready to eat.West Coast Dungeness Crabs are rated as a Good Alternative from Monterey Bay Aquariums Seafood Watch program. Dungeness Crabs have healthy populations & traps used have low by-catch.Sourcing info:HALLMARK FISHERIES, located in Charleston, Oregon, is one of the largest seafood production facilities on the Southern Oregon Coast.The Hallmark label, known for quality throughout its market area, can be found on such Pacific favorites as Dungeness crab, Fancy cocktail shrimp, Wild Troll salmon and various frozen products.	0.5	lb	26.99	53.98	lb	Fish	What We Love	http://goodeggs2.imgix.net/product_photos/nPauFsbShWmgaDsUOMfK_FK1A0287.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
1045	Half Pound Fresh Steelhead Trout	Harvested in Washington's Columbia River, Steelhead Trout is the salmon lovers' alternative fish. Steelhead is so much like salmon in color, taste, and texture that it's sometimes very difficult to tell the difference.Information on Source:PORTLAND, Ore. – April 29, 2013 – The Pacific Seafood Group, a family owned seafood company based in Portland, Ore., is pleased to announce that their Pacific Aquaculture Steelhead Farm on the Columbia River in Washington State has received Best Aquaculture Practices (BAP) certification. This is the first and only Salmon/Steelhead farm to be BAP certified in the U.S.The Best Aquaculture Practices (BAP) standards address environmental and social responsibility, animal welfare, food safety and traceability in a voluntary certification program for aquaculture facilities. BAP certification defines the most important elements of responsible aquaculture and provides quantitative guidelines by which to evaluate adherence to those practices.	0.5	lb	10.99	21.98	lb	Fish	Fish	http://goodeggs2.imgix.net/product_photos/5v92S2UmRjWTLRjxD8wC_FK1A2389.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
1046	Wild Alaskan Sockeye Salmon Fillet (Frozen)	\nWild Alaskan Sockey Salmon Fillet- from Kenai Red Fish Co., Cook Inlet, AK/Portland, OR.Premium sockeye salmon caught sustainably in the\nwaters of Cook Inlet, AK. Mostly the famous “Kenai Reds”, our salmon gets to dock\nin Homer, AK within hours of being caught and are filleted, vacuum packed and\nflash frozen (-30 degrees). All by local folks and by hand. 	0.5	lb	8.99	17.98	lb	Fish	Fish	http://goodeggs1.imgix.net/product_photos/BuaxE2r9Szqyhms0jxKa_FK1A8868.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
1047	Wild Alaskan Sockeye Salmon Fillet (Frozen)	\nWild Alaskan Sockey Salmon Fillet- from Kenai Red Fish Co., Cook Inlet, AK/Portland, OR.Premium sockeye salmon caught sustainably in the\nwaters of Cook Inlet, AK. Mostly the famous “Kenai Reds”, our salmon gets to dock\nin Homer, AK within hours of being caught and are filleted, vacuum packed and\nflash frozen (-30 degrees). All by local folks and by hand. 	0.4	lb	7.29	18.22	lb	Fish	Fish	http://goodeggs1.imgix.net/product_photos/BuaxE2r9Szqyhms0jxKa_FK1A8868.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
1048	Wild Alaskan Sockeye Salmon Fillet (Frozen)	\nWild Alaskan Sockey Salmon Fillet- from Kenai Red Fish Co., Cook Inlet, AK/Portland, OR.Premium sockeye salmon caught sustainably in the\nwaters of Cook Inlet, AK. Mostly the famous “Kenai Reds”, our salmon gets to dock\nin Homer, AK within hours of being caught and are filleted, vacuum packed and\nflash frozen (-30 degrees). All by local folks and by hand. 	0.6	lb	10.99	18.32	lb	Fish	Fish	http://goodeggs1.imgix.net/product_photos/BuaxE2r9Szqyhms0jxKa_FK1A8868.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
1049	Frozen Wild Salmon Burger Blend	Wild Salmon Burger Blend- Wild Alaskan Coho and Sockeye salmon from Siren Fish Co., ground and blended.A delicious 50/50 blend of wild Coho and Sockeye salmon, lightly ground and perfect for burgers, meatballs, and stir-fry. This quick thawing blend is the perfect foundation for simple, wholesome meals. Add an egg, a few breadcrumbs and handful of fresh herbs for quick and tasty salmon burgers!Thawing Instructions: It is best to thaw our Wild Salmon Burger Blend slowly under refrigeration. Thaw just what you plan on eating. Cut the corner of the bag and place in a bowl inside your refrigerator. Allow the salmon to thaw for 2 to 6 hours. Cook within 24 hours of thawing.	1	lb	10.99	10.99	lb	Fish	Fish	http://goodeggs1.imgix.net/product_photos/iiFWEggTRMeun3YlpJxX_20160630-SirenFish_SalmonBurger_MG_4027.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
1050	Fresh Wild Petrale Sole	Fresh Wild Petrale Sole is a kid-friendly, easy to prepare, delicious fish. Local Petrale Sole is caught near the Farallon Islands in San Francisco, in Fort Bragg, and North along the Pacific Coast into Southern Oregon. Petrale Sole is a thin, flaky, delicate, very mild tasting fish. Best sauteed, just add lemon or breadcrumbs.	1	lb	23.99	23.99	lb	Fish	Fish	http://goodeggs2.imgix.net/product_photos/JihXPT3ySouwX2NIodrc_FK1A3977.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
1051	Half Pound Fresh Wild Alaskan Halibut	Alaskan Halibut is a very mild, sweet-tasting, tender, whitefish. Uncooked, the meat should be almost translucent.  When cooked, it turns snow-white.Halibut is an extremely versatile fish, and the thick, meaty flesh holds up well to a number of cooking methods and sauces. It’s also ideal for skewering as kebabs.  Simply add a lemon, garlic &/or butter sauce.  Salt to taste.Halibut is low in saturated fat and sodium and is a very good source of protein, niacin, phosphorus, and selenium.Commercial fishermen predominantly use longlines to harvest halibut.  Only hook-and-line gear is allowed to target halibut.  The impact on the environment is negligible.  The fisheries are managed by The International Pacific Halibut Commission, who sets the catch limits at a level that will ensure the long-term welfare of the halibut stock.	0.5	lb	14.99	29.98	lb	Fish	Fish	http://goodeggs1.imgix.net/product_photos/UlBd1xt4To2FeaCxlcv7_FK1A6959.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
1052	Fresh Fish Sampler for Two	New & Improved Fresh Fish Sampler includes 2 servings (0.66+ lbs) of 1 or 2 varieties of fish.  Possible varieties include:King Salmon (May-October)Steelhead TroutArctic Char California HalibutCalifornia White SeabassPetrale SoleBlack CodLing CodRock CodTrue CodSand DabsAlbacore TunaSea Scallops The concept of the Fresh Fish Sampler is based on another system that connects farms to the people called a CSA (Community Supported Agriculture).  But, In this case, fish.  You (the community) support the local fishermen, & me (the fishmonger).  Select either one-time, weekly (best choice!) or monthly.  You benefit by getting more than your moneys worth & a chance to try new fish.	0.66	lb	12.99	19.68	lb	Fish	Fish	http://goodeggs2.imgix.net/product_photos/vrEjQdldSYCsJuBvvUxz_FK1A9573.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
1053	Pacific Albacore Tuna (Frozen)	Sushi Grade Pacific Albacore Tuna (Thunnus Alalunga)  - from Sea to Table, troll caught and landed in Bellingham, WA.Albacore is best known as America's highest grade, "white meat" canned tuna. In fact, it's the only tuna meat allowed to be labeled as "white meat." However, it has also developed a reputation out of the can in fresh and frozen markets- Albacore has a mild, rich taste and a firm, steaky texture, with large, moist flakes.	0.5	lb	9.49	18.98	lb	Fish	Fish	http://goodeggs2.imgix.net/product_photos/07CXwyGbQwiOj6F5J337_20160816-SeatoTable_Albacore_MG_8137.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
1054	Fresh Wild Rock Cod	Fresh Wild Rock Cod (Rockfish/Snapper) is a versatile delicious fish.  Local Rock Cod is caught near the Farallon Islands off the San Francisco Coast & North along the Pacific Coast into British Columbia.  Rock Cod is best on the grill, sauteed, baked, or broiled.  It has a mildly sweet flavor with large flakes that are great for ceviche, fish tacos, fish n' chips. Just add lemon.	1	lb	15.99	15.99	lb	Fish	Fish	http://goodeggs1.imgix.net/product_photos/zMeZiVzSn2rnwjaOWlhE_FK1A6842.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
1055	Half Pound Fresh Wild Black Cod Fillet	Fresh Wild Black Cod is a very oily, buttery, delicious fish.  Its real name is Sablefish, though some may call it butterfish.  Prepared in Japanese restaurants with miso, mirin, & sake marinade, it is also great marinated in teriyaki or soy sauce.  Best sautéed, baked, or broiled.Black Cod comes from a small number of fishermen in Half Moon Bay, Fort Bragg & occasionally Pier 45 in San Francisco.	0.5	lb	13.99	27.98	lb	Fish	Fish	http://goodeggs2.imgix.net/product_photos/WefAINjQW6NwPoda6khZ_FK1A9296.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
1056	Rockfish Fillet (Frozen)	Pacific Rockfish (Sebastes Spp.)- from Sea to Table, landed in Astoria, ORMarketed widely as Pacific snapper, these fish have fillets that are mild and slightly sweet tasting. The medium texture means means it fits nicely between firm fish (like swordfish) and delicate fish (like sole).Rockfish is not fishy tasting or oily, like sardines or mackerel. Instead, it's clean taste takes on the flavor of the spices you cook with. Rockfish is an easy substitute for almost any other white fish, including tilapia and bass.	0.5	lb	4.99	9.98	lb	Fish	Fish	http://goodeggs1.imgix.net/product_photos/uC1LLUT66FgkFISLMVgD_20160817-SeatoTable_Rockfish_MG_8147.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
1057	Frozen Wild Sablefish Fillet	Sometimes the freshest seafood comes from\nthe freezer. \nAs soon as fish leaves the water it\nbegins losing freshness. Your average fillet is several days old by the time it\nreaches your plate, and the taste and texture have already suffered. We use\nfreezing to stop time and preserve the freshness of our fish. We seal our fish\nin vacuum bags that protect the fillets from freezer burn. We freeze our\nindividually vacuum packaged fillets quickly and at a low temperature, which\npreserves the texture of the fish. Most importantly, we freeze our fish immediately\nafter it’s caught. Our fish doesn’t travel the world, it’s landed twenty miles\nfrom where it’s filleted and frozen. Thaw exactly the amount you need right\nbefore you need it, and our fish will always taste like it was reeled in\nyesterday. \n\n\n\n\n\n\n\n\n\n\n\n\n\n\nOur\nsablefish are caught off the coast of Northern California by small-scale fishing\nboats using traps. We rush to make sure that the fish are filleted and frozen immediately,\nso that our sablefish tastes like it was caught yesterday. These rich, buttery\nfish are commonly called Black cod, though they are not technically a part of the\ncod family. You can hold these fillets in your freezer for up to one year.\nThawing Instructions: It is\nbest to thaw our Frozen Wild Sablefish Fillets slowly under refrigeration. Thawing\nslowly keeps the fillets firm. Nobody likes mushy fish. Thaw just what you\nplan on eating. Remove fillets from bags and place in a bowl inside your\nrefrigerator. Allow the fillets to thaw for 8 to 12 hours. Cook fillets within\n24 hours of thawing.\n   	0.5	lb	14.99	29.98	lb	Fish	Fish	http://goodeggs2.imgix.net/product_photos/kMzA60HwTXW9RryV9C8b_FK1A0461.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
1059	Half Pound Fresh Wild Alaskan True Cod	Fresh Alaskan True Cod Our True Cod comes from a MSC certified fishery from Kodiak Alaska. It is a sustainable fishery.  The catch method is a combination of Longline and Trap caught.The U.S. Pacific cod fishery is now often hailed as one of the best managed fisheries in the world. A wealth of true cod are caught during the winter and spring months in the gulf of AK. Pacific True Cod are abundant and the fishery is considered by all means sustainable. These True cod are a Monterey Bay Aquarium Seafood Watch “Best Choice” as they are hook-and-line caught.True cod is the original ‘fish ‘n chip’ fish. True cod have a mild and clean flavor with a perfect flake & large white-meat which allows for a variety of preparations. Though often found in fish and chips, cod is at its healthiest baked or broiled. Other cooking methods that work well with this fish include a nice sauté, fry, stew, or chowder. 	0.5	lb	9.99	19.98	lb	Fish	Fish	http://goodeggs1.imgix.net/product_photos/VquLTdUdSlaCGP4T54E0_FK1A6774.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
1060	New England Squid	Catch Method: Purse SeineLocation: Point Judith, RIIndividually quick frozen tubes and tentacles.Squid meat has a firm, chewy texture and mild, somewhat sweet flavor. Chefs love it because it's a near-blank canvas for flavor. Squid easily takes on flavors of any marinade or spices added. It can be grilled for healthy preparations or fried for indulgence.Squid will toughen rapidly if it is overcooked, so take caution when preparing. A high cooking temperature and a short cooking time are recommended to keep the calamari tender.	2.5	lb	27.49	11.0	lb	Fish	Fish	http://goodeggs1.imgix.net/product_photos/98mg7GHXTHOXjtUCZ1Yn_twoxsea_squid3%20%281%29.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
1061	Half Pound Wild Gulf Shrimp (Peeled)	Wild Gulf Coast Shrimp are one of few wild shrimp still available.  These Texas Shrimp are harvested under a sustainable management plan & follow environmentally safe guidelines.The shrimp are firm, with a mild, sweet flavor.Wild shrimp and farmed shrimp will have their own distinctive flavor profile simply because their diet is different.  Wild shrimp have a more varied diet — they feed on marine organisms, different types of plankton, organic matter.  The fish meal pellets that farmed shrimp are fed contain a lot of grains.  The wild diet naturally gives wild shrimp a more robust flavor profile than a farmed shrimp raised on a bland, unvaried diet.The shrimp are peeled (shell-off) & deveined, Individually Quick Frozen (IQF), 16-20 per pound, in 1/2 lb packages that can be kept in the freezer for months.For more information on the processor in Galveston, Texas visit www.galvestonshrimpcompany.com	0.5	lb	13.99	27.98	lb	Fish	Shellfish	http://goodeggs1.imgix.net/product_photos/vZBqfrkMQBeXFEdGZUBr_image.jpeg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
1062	Wild Giant Gulf Shrimp, Head-On	Wild Gulf Coast Shrimp are one of few wild shrimp still available.  These Texas Shrimp are harvested under a sustainable management plan & follow environmentally safe guidelines. The shrimp are firm, with a mild, sweet flavor.Wild shrimp and farmed shrimp will have their own distinctive flavor profile simply because their diet is different.  Wild shrimp have a more varied diet — they feed on marine organisms, different types of plankton, organic matter.  The fish meal pellets that farmed shrimp are fed contain a lot of grains.  The wild diet naturally gives wild shrimp a more robust flavor profile than a farmed shrimp raised on a bland, unvaried diet.The shrimp have shell and head intact, Individually Quick Frozen (IQF), 8-10 per pound, in 1lb packages that can be kept in the freezer for months.For more information on the processor in Galveston, Texas visit www.galvestonshrimpcompany.com	1	lb	23.99	23.99	lb	Fish	Shellfish	http://goodeggs2.imgix.net/product_photos/LRlfRShHROOQPwhdMUlE_20160526-OneOcean_HeadonShrimp_MG_0286%20%281%29.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
1063	Half Pound Fresh Wild Sea Scallops	Fresh Wild Sea Scallops that I declare "Best in the World"...delicious, easy to quickly prepare & sear.Half-order (1/2 lb) includes 6-9 Sea Scallops.  Fresh out of the shell, dry-packed (no preservative liquid).Preparation & Cooking:4 minutes in a pan medium high with some kind of combination of garlic, butter, oil, salt & pepper.These Scallops are sourced from M&B Sea Products a leader in SUSTAINABLE FISHING PRACTICES.Here is information from their website www.freshseascallops.com:M&B Sea Products has deep ties to the seas of the North Atlantic. Each coming from generations of fishermen, John F Murray and Herman Bruce, came together in 1993 to found the company.With years of knowledge and experience in the scallop industry, we established our business in historic New Bedford, Massachusetts, home to the largest scallop fleet in the world, and set out to provide the freshest scallops available. We operate our own fleet, allowing us to bring you some of the best sea scallops and seafood available!It is our mission to ensure that you receive the finest scallops available, M&B Sea Products make quality and freshness our priority—because we operate our own fishing vessels, we can control our quality and set the same standards for our partner vessels. While observing sustainable fishing practices, we strive to deliver you the most high-quality sea scallops at competitive prices.We go above and beyond to adhere to our strict standards. This attention to detail and expertise, coupled with our supreme customer service, ensures we provide the highest quality, environmentally sustainable scallops on the market.M&B Sea Products is dedicated to ensuring sustainable fishing practices. In addition to strictly adhering to all rules and regulations of the fishing industry, we also have specially designed our gear to catch only scallops and minimal amounts of bycatch (the accidental capture of untargeted species). Both our owners are members of the board for Fisheries Survival Fund and we offer our fleet to be used in scientific discovery trips. We have great interest in protecting the New England fishery, which is not only our most valuable fishery, but also the most valued wild scallop fishery in the world.The Atlantic sea scallop program is one of the most successful of its kind. Sustainably harvested scallops can self-replenish on a yearly basis. The Atlantic sea scallop population is near record highs as the fishery continues to operate at sustainable levels. The collaborative efforts of scallop fishermen, scientists, fishery managers, and environmentalists are responsible for keeping this fishery sustainable for today and the future.To learn more about sustainable fishing practices, visit SMAST Fisheries and NOAA Fish Watch	0.5	lb	14.99	29.98	lb	Fish	Shellfish	http://goodeggs2.imgix.net/product_photos/BNQ8nPMhRk2BVWlUwE2u_FK1A9438.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
1064	Hot Smoked Wild King Salmon	Wild local King salmon brined for 24 hours and smoked for two days. Angelo's Meats and Sausage in Petaluma makes this smoked salmon for us using salt and smoke. Angelo is a smokehouse master and has agreed to make small weekly batches for us so that our salmon is always fresh from the smokehouse. It's immediately flash frozen to maintain that freshness and is defrosted the night before delivery to you!This is a hot smoked fillet, so it will not be sliceable but will flake beautifully. Gobble it up as-is or enjoy on top of a bagel with cream cheese or sprinkled on top of a salad.	8	oz	21.99	2.75	oz	Fish	Smoked	http://goodeggs1.imgix.net/product_photos/HTtg4EDqQMm69vH1HD49_FK1A5438.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
1065	Hot Smoked Sablefish	Wild local sablefish (black cod) brined for 24 hours and smoked for two days. Angelo's Meats and Sausage in Petaluma makes this rich smoked sablefish for us using salt and smoke. Angelo is a smokehouse master and has agreed to make small weekly batches for us so that our salmon is always fresh from the smokehouse. It's immediately flash frozen to maintain that freshness and is defrosted the night before delivery to you!This is a hot smoked fillet, so it will not be sliceable but will flake beautifully. This smoked fish is delicious and very rich. 8 oz. is enough smoked fish to make a main course salad for two to three people. You won't find a better addition to your bagel or salad.	8	oz	21.99	2.75	oz	Fish	Smoked	http://goodeggs1.imgix.net/product_photos/rOxAIaQsS82VCygvoqvr_FK1A5512.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
1066	Smoked McFarland Springs Trout Fillet	McFarland Springs Trout is delicious and nutritious. And it's more than unique – it is the world’s first deliberate collaboration to responsibly farm sustainable fish. This product is smoked fillets prepackaged with the skin on. Great for use as lox for bagels and cream cheese, on a salad, or just by itself. About our trout:McFarland Springs is an environmental dream. The water supply comes from the headwaters of a natural spring, extremely cold and free of the pesticides and contaminates found in other water sources. The spring not only provides for the trout, but also generates all of the electricity for the farm though hydroelectric. It is raised locally, lowering carbon footprint and further promoting regional cuisine. The fish is hand harvested and processed, instead of machine processed as is customary.Typically, farmed fish are fed fishmeal which is made up of small fish that are being taken from the ocean at alarming rates. These fish are then ground, dried, and fed to many types of farmed fish in order to increase their growth rates. This practice is an environmental catastrophe and not sustainable. With higher levels of healthy Omega-3s than wild salmon, and zero trace of mercury or contaminants, McFarland Springs trout provides exceptional nutrition benefits. Lastly, the flavor and texture is that of wild trout with a sweet flavor and lighter, firm flesh. The extreme cold created by the natural spring creates slow growth rates, but far better texture.Thanks for your support!-Team TwoXSea 	1.25	lb	44.99	2.25	oz	Fish	Smoked	http://goodeggs2.imgix.net/product_photos/vOfMSmTTSuiqBP1VjOYP_FK1A8418.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
1067	Spicy Hot Smoked Wild King Salmon	Wild local King salmon brined for 24 hours and smoked for two days. Angelo's Meats and Sausage in Petaluma makes this SPICY smoked salmon for us using salt, smoke, and red pepper flakes. Angelo is a smokehouse master and has agreed to make small weekly batches for us so that our salmon is always fresh from the smokehouse. This is a hot smoked fillet, so it will not be sliceable but will flake beautifully. As you can tell by looking at that coating of red pepper flakes on top of the fillet, this stuff is spicy. Gobble it up as-is or enjoy on top of a bagel with cream cheese or sprinkled over scrambled eggs.	8	oz	21.99	2.75	oz	Fish	Smoked	http://goodeggs2.imgix.net/product_photos/GeU7AEqcRECzrZhNZNmi_FK1A5384.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
1068	Sweet Hot Smoked Wild King Salmon	Wild local King salmon brined for 24 hours and smoked for two days. Angelo's Meats and Sausage in Petaluma makes this slightly sweet smoked salmon for us using salt, smoke, and brown sugar. Angelo is a smokehouse master and has agreed to make small weekly batches for us so that our salmon is always fresh from the smokehouse. It's immediately flash frozen to maintain that freshness and is defrosted the night before delivery to you!This is a hot smoked fillet, so it will not be sliceable but will flake beautifully. The sweetness of the brown sugar compliments the salmon and makes this a delicious addition to any cheese plate. Gobble it up as-is or enjoy on top of a bagel with cream cheese or sprinkled on top of a salad.	8	oz	21.99	2.75	oz	Fish	Smoked	http://goodeggs2.imgix.net/product_photos/94M4hPTRtKebjBixei0F_FK1A5406.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
1069	Wild Pacific Sardines in Extra Virgin Olive Oil	Caught in the Pacific Ocean and rated as the Best Choice for Sustainability by the Monterey Bay Aquarium Seafood Watch® Program, these meaty, firm and flavorful whole sardines are loaded with essential nutrients: Omega 3, protein, calcium, phosphorus, potassium and iron. Each tasty little fish is cleaned, scale free and delectable on a sandwich, as a salad topper, or as an ingredient in our Mediterranean Seafood Antipasto Platter or Sardine Power Lunch. Ingredients: Sardines (Sardinops sagax or Sardinops melanostictus), extra virgin olive oil, water, sea salt, aqueous natural smoke	4.375	oz	2.99	0.68	oz	Fish	Canned & Jarred	http://goodeggs1.imgix.net/product_photos/Gp41DsrPRMqCZHNWQMBd_20160621-WildPlanet_SardinesinEVOO_MG_3180.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
1070	Bonito Del Norte Tuna	One of their most famous product their Bonito Del Norte Tuna, or Albacore Tuna as it is more commonly know as in the states, is line-caught, hand cleaned, and then packaged in fine olive oil. This olive oil perfectly balances out the tuna adding to the flavor and texture. This tuna can be eaten over salads like a Salade Niçoise, atop a crostini garnished with oil, salt, and pepper, on a sandwich, or simply out of the can. Ingredients: White tuna, olive oil, salt.	2.89	oz	6.99	2.42	oz	Fish	Canned & Jarred	http://goodeggs1.imgix.net/product_photos/Kx5Du1nGS1yDr2STW1a7_FK1A7841.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
1071	Solid Albacore Tuna	Delicious premium albacore tuna, sustainably caught using pole & troll fishing methods. It is hand cut and hand packed tuna is firm, meaty and full of flavor. Perfect for tuna salad, tuna pasta sauce or your family's favorite tuna casserole.Ingredients: Albacore tuna, water and sea salt.	4.1	oz	3.79	0.92	oz	Fish	Canned & Jarred	http://goodeggs2.imgix.net/product_photos/5M0LGXDOQtucTgn8OEpw_20160520-SustainableSeas_Albacore_MG_0231.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
1072	No-Salt Added Solid Albacore Tuna	Delicious premium albacore tuna, sustainably caught using pole & troll fishing methods. It is hand cut and hand packed tuna is firm, meaty and full of flavor. Perfect for tuna salad, tuna pasta sauce or your family's favorite tuna casserole.Ingredients: Albacore tuna and water.	4.1	oz	3.79	0.92	oz	Fish	Canned & Jarred	http://goodeggs2.imgix.net/product_photos/RMEGXjnSk6tIPbpYyCey_20160520-SustainableSeas_AlbacoreNoSalt_MG_0238.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
1073	Wild Caught Premium Albacore	Our albacore are individually caught using a sustainable hook and line method. Each fish is handled with special care to ensure the finest quality product for you. The fish are carefully loined, hand packed, and pressure cooked, ensuring the nutritional quality is maintained. This premium Albacore Tuna is rich in Omega-3s.All of our fish on our boat, Capriccio, are caught by hook and line and then a portion are canned in a small custom cannery in Charleston, Oregon for sale.  At the cannery, the fish are cleaned, put into the can raw, and the can is sealed. Then, the cans are placed in a pressure cooker where the fish is cooked. This single cooking of the fish retains all the natural juices of the albacore in the can!There is nothing else but albacore in our cans of regular albacore….. SO DO NOT DRAIN the liquid, that’s the healthy rich Omega-3 oil! Mix it back into the fish and use for sandwiches, salads, or whatever else your heart desires!Ingredients: Albacore	7.75	oz	7.29	0.94	oz	Fish	Canned & Jarred	http://goodeggs2.imgix.net/product_photos/UgWlUWcxToOZlijlpR1j_FK1A1072.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
1074	Wild Pacific Sardines in Water	Caught in the Pacific Ocean and rated as the Best Choice for Sustainability by the Monterey Bay Aquarium Seafood Watch® Program, these meaty, firm and flavorful whole sardines are loaded with essential nutrients: Omega 3, protein, calcium, phosphorus, potassium and iron. Each tasty little fish is cleaned, scale free and delectable on a sandwich, as a salad topper, or as an ingredient in our Mediterranean Seafood Antipasto Platter or Sardine Power Lunch. Ingredients: Sardines (Sardinops sagax or Sardinops melanostictus), water, sea salt.	4.375	oz	2.99	0.68	oz	Fish	Canned & Jarred	http://goodeggs1.imgix.net/product_photos/f6du0IfRFCW9VCAP5sYg_20160621-WildPlanet_SardinesinWater_MG_3193.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
1075	Pole Caught Albacore Tuna No Salt Added	We don't add any extra salt to these sushi-grade albacore tuna loins so that you can customize them to your heart's content. Try a white bean and tuna salad with sliced fennel, a drizzle of good olive oil, fresh lemon juice and chunky sea salt. American Tuna has 100% traceability for every single albacore harvested, meaning we can trace our final product back to the vessel that caught it! All tuna are caught using the MSC Certified Sustainable Pole & Line Harvest Method in the U.S. Pacific Northwest. Our premium albacore loin steaks are then hand filleted and hand packed, sealed and pressure-cooked, a packing method that retains 100% of the omega-3 fatty acids in the fish. We don't add any oil, water, soy, or other fish—just premium albacore in its own natural fish oil! Our cans are BPA-free and manufactured in America. Pole and line caught albacore tuna are on average 12-20 lbs, making them naturally low in mercury, and we test yearly for mercury concentrations with Columbia Food Labs. Ingredients: albacore tuna.	6	oz	5.99	1.0	oz	Fish	Canned & Jarred	http://goodeggs2.imgix.net/product_photos/XzRFo5YeRU6iNeG1ACsd_nosalt.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
1076	Pole Caught Albacore Tuna with Sea Salt	Briny sea salt brings out this sashimi-grade albacore tuna's meatiness while also adding balance. You won't get any sad, mushy tuna salad with this stuff! Combine with chopped celery and shallots, a scoop of sweet relish, mayo and lots of fresh lemon juice.American Tuna has 100% traceability for every single albacore harvested, meaning we can trace our final product back to the vessel that caught it! All tuna are caught using the MSC Certified Sustainable Pole & Line Harvest Method in the U.S. Pacific Northwest. Our premium albacore loin steaks are then hand filleted and hand packed, sealed and pressure-cooked, a packing method that retains 100% of the omega-3 fatty acids in the fish. We don't add any oil, water, soy, or other fish—just premium albacore in its own natural fish oil! Our cans are BPA-free and manufactured in America. Pole and line caught albacore tuna are on average 12-20 lbs, making them naturally low in mercury, and we test yearly for mercury concentrations with Columbia Food Labs. Ingredients: albacore tuna, sea salt.	6	oz	5.99	1.0	oz	Fish	Canned & Jarred	http://goodeggs2.imgix.net/product_photos/OCZb90T7Ska4Vhyt110M_salt.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
1077	Smoked Albacore Tuna with Olive Oil	Smoky and silky, this smoked tuna in olive oil will make all of your Mediterranean salad dreams come true! Just throw a fillet or two on a bed of your favorite greens with some crumbled feta, marinated artichoke hearts, chopped cucumbers, cherry tomatoes and olives.American Tuna has 100% traceability for every single albacore harvested, meaning we can trace our final product back to the vessel that caught it! All tuna are caught using the MSC Certified Sustainable Pole & Line Harvest Method in the U.S. Pacific Northwest. Our premium albacore loin steaks are then hand filleted and hand packed, sealed and pressure-cooked, a packing method that retains 100% of the omega-3 fatty acids in the fish. We don't add any oil, water, soy, or other fish—just premium albacore in its own natural fish oil! Our cans are BPA-free and manufactured in America. Pole and line caught albacore tuna are on average 12-20 lbs, making them naturally low in mercury, and we test yearly for mercury concentrations with Columbia Food Labs. Ingredients: albacore tuna, olive oil.	6	oz	6.79	1.13	oz	Fish	Canned & Jarred	http://goodeggs1.imgix.net/product_photos/wmQ331BmR9mJFoWNNgcT_smoked.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
1078	Wild Caught Smoked Albacore	Our albacore are individually caught using a sustainable hook and line method. Each fish is handled with special care to ensure the finest quality product for you. The fish are carefully loined, hand packed, and pressure cooked, ensuring the nutritional quality is maintained. This premium Albacore Tuna is rich in Omega-3s.In our smoked albacore, spices are added before smoking and then we have a small amount of olive oil added in each can to replace the small amount of oil lost in the smoking process. This healthy olive oil can then be mixed back into the fish. Ingredients: Albacore, salt, sugar, olive oil, spices	6.5	oz	7.99	1.23	oz	Fish	Canned & Jarred	http://goodeggs1.imgix.net/product_photos/TmkGy6muRVSc2a5jDA7Q_FK1A1065.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
1079	Wild Alaska Pink Salmon	Wild Alaska Pink Salmon is sustainably caught in the cold, clear Alaskan waters by local fishing families. Our skinless and boneless fillets are hand packed and cooked just once to retain their nutritional potency and natural juices, containing an average of 340mg EPA and DHA Omega 3 per 2oz serving. Our salmon are canned fresh upon catch, not from previously frozen fish. This provides superior rich flavor and soft texture. Wild Planet Pink Salmon is a perfect choice for sandwiches, a flavorful salmon spread and more.Ingredients: Wild pink salmon (Oncorhynchus gorbuscha) and salt.	6	oz	4.69	0.78	oz	Fish	Canned & Jarred	http://goodeggs2.imgix.net/product_photos/NcJLNHGfRQuOOD5IhMME_20160701-WildPlan%20et_CannedSalmon_MG_4214.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
1080	No-Salt Added Wild Pink Salmon	The latest addition to our salmon line, new Wild Alaska Pink Salmon with No Salt Added is sustainably caught in the cold, clear Alaskan waters by local fishing families. Our skinless and boneless fillets are hand packed and cooked just once to retain their nutritional potency and natural juices, containing an average of 340mg EPA and DHA Omega 3 per 2oz serving. Our salmon are canned fresh upon catch, not from previously frozen fish. This provides superior rich flavor and soft texture. Wild Planet Pink Salmon is a perfect choice for sandwiches, a flavorful salmon spread and more.Ingredients: Wild pink salmon (Oncorhynchus gorbuscha).	6	oz	4.69	0.78	oz	Fish	Canned & Jarred	http://goodeggs1.imgix.net/product_photos/yiB7yd9xS3qTLxfDxFU2_20160701-WildPlan%20et_CannedSalmonNoSalt_MG_4207.jpg?w=380&h=238&fm=jpg&q=41&fit=crop	\N	\N	\N	\N
\.


--
-- Name: products_product_id_seq; Type: SEQUENCE SET; Schema: public; Owner: vagrant
--

SELECT pg_catalog.setval('products_product_id_seq', 1080, true);


--
-- Data for Name: recipes; Type: TABLE DATA; Schema: public; Owner: vagrant
--

COPY recipes (recipe_id, url, name, ingredients, img) FROM stdin;
1	http://www.bonappetit.com/recipes/2004/06/chicken_walnut_and_grape_salad_with_curry_dressing	Chicken, Walnut, and Red Grape Salad with Curry Dressing	["2 teaspoons curry powder (preferably madras-style)", "1/4 cup light mayonnaise", "1/4 cup plain nonfat yogurt", "2 teaspoons mango chutney", "1 teaspoon minced peeled fresh ginger", "1/2 teaspoon grated orange peel", "3 cups 1/2 inch pieces cooked skinless boneless chicken breast", "1 cup halved seedless red grapes", "1/2 cup thinly sliced green onions", "1/3 cup walnuts, toasted, coarsely chopped", "4 large curly lettuce leaves", "4 small clusters seedless red grapes"]	https://www.edamam.com/web-img/74f/74fba5177d2fbb5f04073038c5191b4e.jpg
\.


--
-- Name: recipes_recipe_id_seq; Type: SEQUENCE SET; Schema: public; Owner: vagrant
--

SELECT pg_catalog.setval('recipes_recipe_id_seq', 1, true);


--
-- Data for Name: tags; Type: TABLE DATA; Schema: public; Owner: vagrant
--

COPY tags (tag_id, name) FROM stdin;
1	Certified Organic
2	Locally Grown
3	Synthetic Pesticide & Fertilizer Free
4	Wild
5	Heirloom
6	Organic Ingredients
7	Locally Sourced Ingredients
8	Office Box
9	Aquaponic
10	Non-GMO
11	Eco-Certified
12	Arrives Frozen
13	Dairy Free
14	Raw
15	Vegan
16	Wheat Free
17	Vegetarian
18	Kosher Certified
19	Paleo
20	Gluten-Free
21	Raised with Non-GMO Feed
22	Pastured
23	Animals Raised without rBGH
24	Grass Fed
25	Unpasteurized
26	Pasture Raised
27	Soy Free
28	Arrives Fresh
29	Tree Nut Free
30	Made with Vegetarian Rennet
31	Grain Finished
32	Heritage Breed
33	Nitrate/Nitrite Free
34	Line Caught
\.


--
-- Name: tags_tag_id_seq; Type: SEQUENCE SET; Schema: public; Owner: vagrant
--

SELECT pg_catalog.setval('tags_tag_id_seq', 34, true);


--
-- Name: customer_recipes_pkey; Type: CONSTRAINT; Schema: public; Owner: vagrant
--

ALTER TABLE ONLY customer_recipes
    ADD CONSTRAINT customer_recipes_pkey PRIMARY KEY (cust_rec_id);


--
-- Name: customer_restrictions_pkey; Type: CONSTRAINT; Schema: public; Owner: vagrant
--

ALTER TABLE ONLY customer_restrictions
    ADD CONSTRAINT customer_restrictions_pkey PRIMARY KEY (cust_restr_id);


--
-- Name: customers_email_key; Type: CONSTRAINT; Schema: public; Owner: vagrant
--

ALTER TABLE ONLY customers
    ADD CONSTRAINT customers_email_key UNIQUE (email);


--
-- Name: customers_pkey; Type: CONSTRAINT; Schema: public; Owner: vagrant
--

ALTER TABLE ONLY customers
    ADD CONSTRAINT customers_pkey PRIMARY KEY (user_id);


--
-- Name: deliveries_pkey; Type: CONSTRAINT; Schema: public; Owner: vagrant
--

ALTER TABLE ONLY deliveries
    ADD CONSTRAINT deliveries_pkey PRIMARY KEY (delivery_id);


--
-- Name: delivery_quantities_pkey; Type: CONSTRAINT; Schema: public; Owner: vagrant
--

ALTER TABLE ONLY delivery_quantities
    ADD CONSTRAINT delivery_quantities_pkey PRIMARY KEY (deliv_qty_id);


--
-- Name: dietary_restrictions_name_key; Type: CONSTRAINT; Schema: public; Owner: vagrant
--

ALTER TABLE ONLY dietary_restrictions
    ADD CONSTRAINT dietary_restrictions_name_key UNIQUE (name);


--
-- Name: dietary_restrictions_pkey; Type: CONSTRAINT; Schema: public; Owner: vagrant
--

ALTER TABLE ONLY dietary_restrictions
    ADD CONSTRAINT dietary_restrictions_pkey PRIMARY KEY (diet_id);


--
-- Name: icons_pkey; Type: CONSTRAINT; Schema: public; Owner: vagrant
--

ALTER TABLE ONLY icons
    ADD CONSTRAINT icons_pkey PRIMARY KEY (icon_id);


--
-- Name: order_quantities_pkey; Type: CONSTRAINT; Schema: public; Owner: vagrant
--

ALTER TABLE ONLY order_quantities
    ADD CONSTRAINT order_quantities_pkey PRIMARY KEY (order_qty_id);


--
-- Name: orders_pkey; Type: CONSTRAINT; Schema: public; Owner: vagrant
--

ALTER TABLE ONLY orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (order_id);


--
-- Name: pickups_pkey; Type: CONSTRAINT; Schema: public; Owner: vagrant
--

ALTER TABLE ONLY pickups
    ADD CONSTRAINT pickups_pkey PRIMARY KEY (pickup_id);


--
-- Name: product_tags_pkey; Type: CONSTRAINT; Schema: public; Owner: vagrant
--

ALTER TABLE ONLY product_tags
    ADD CONSTRAINT product_tags_pkey PRIMARY KEY (prod_tag_id);


--
-- Name: products_pkey; Type: CONSTRAINT; Schema: public; Owner: vagrant
--

ALTER TABLE ONLY products
    ADD CONSTRAINT products_pkey PRIMARY KEY (product_id);


--
-- Name: recipes_pkey; Type: CONSTRAINT; Schema: public; Owner: vagrant
--

ALTER TABLE ONLY recipes
    ADD CONSTRAINT recipes_pkey PRIMARY KEY (recipe_id);


--
-- Name: tags_name_key; Type: CONSTRAINT; Schema: public; Owner: vagrant
--

ALTER TABLE ONLY tags
    ADD CONSTRAINT tags_name_key UNIQUE (name);


--
-- Name: tags_pkey; Type: CONSTRAINT; Schema: public; Owner: vagrant
--

ALTER TABLE ONLY tags
    ADD CONSTRAINT tags_pkey PRIMARY KEY (tag_id);


--
-- Name: customer_recipes_customer_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: vagrant
--

ALTER TABLE ONLY customer_recipes
    ADD CONSTRAINT customer_recipes_customer_id_fkey FOREIGN KEY (customer_id) REFERENCES customers(user_id);


--
-- Name: customer_recipes_recipe_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: vagrant
--

ALTER TABLE ONLY customer_recipes
    ADD CONSTRAINT customer_recipes_recipe_id_fkey FOREIGN KEY (recipe_id) REFERENCES recipes(recipe_id);


--
-- Name: customer_restrictions_customer_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: vagrant
--

ALTER TABLE ONLY customer_restrictions
    ADD CONSTRAINT customer_restrictions_customer_id_fkey FOREIGN KEY (customer_id) REFERENCES customers(user_id);


--
-- Name: customer_restrictions_diet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: vagrant
--

ALTER TABLE ONLY customer_restrictions
    ADD CONSTRAINT customer_restrictions_diet_id_fkey FOREIGN KEY (diet_id) REFERENCES dietary_restrictions(diet_id);


--
-- Name: delivery_quantities_delivery_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: vagrant
--

ALTER TABLE ONLY delivery_quantities
    ADD CONSTRAINT delivery_quantities_delivery_id_fkey FOREIGN KEY (delivery_id) REFERENCES deliveries(delivery_id);


--
-- Name: delivery_quantities_product_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: vagrant
--

ALTER TABLE ONLY delivery_quantities
    ADD CONSTRAINT delivery_quantities_product_id_fkey FOREIGN KEY (product_id) REFERENCES products(product_id);


--
-- Name: order_quantities_order_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: vagrant
--

ALTER TABLE ONLY order_quantities
    ADD CONSTRAINT order_quantities_order_id_fkey FOREIGN KEY (order_id) REFERENCES orders(order_id);


--
-- Name: order_quantities_product_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: vagrant
--

ALTER TABLE ONLY order_quantities
    ADD CONSTRAINT order_quantities_product_id_fkey FOREIGN KEY (product_id) REFERENCES products(product_id);


--
-- Name: orders_customer_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: vagrant
--

ALTER TABLE ONLY orders
    ADD CONSTRAINT orders_customer_id_fkey FOREIGN KEY (customer_id) REFERENCES customers(user_id);


--
-- Name: orders_pickup_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: vagrant
--

ALTER TABLE ONLY orders
    ADD CONSTRAINT orders_pickup_id_fkey FOREIGN KEY (pickup_id) REFERENCES pickups(pickup_id);


--
-- Name: product_tags_product_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: vagrant
--

ALTER TABLE ONLY product_tags
    ADD CONSTRAINT product_tags_product_id_fkey FOREIGN KEY (product_id) REFERENCES products(product_id);


--
-- Name: product_tags_tag_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: vagrant
--

ALTER TABLE ONLY product_tags
    ADD CONSTRAINT product_tags_tag_id_fkey FOREIGN KEY (tag_id) REFERENCES tags(tag_id);


--
-- Name: products_icon_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: vagrant
--

ALTER TABLE ONLY products
    ADD CONSTRAINT products_icon_id_fkey FOREIGN KEY (icon_id) REFERENCES icons(icon_id);


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

