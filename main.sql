--
-- PostgreSQL database dump
--

\restrict SkWebTUddOjxTS69ls1Wg0inUWMdivgDSBaAgZBwEv74abckNboRnu9CbQAtejJ

-- Dumped from database version 17.7
-- Dumped by pg_dump version 17.7

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
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
-- Name: food; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.food (
    code text,
    product_name text,
    quantity text,
    packaging text,
    brands_en text,
    categories text,
    ingredients_text text,
    energy_kcal_100g text
);


ALTER TABLE public.food OWNER TO postgres;

--
-- Name: item_list; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.item_list (
    id integer NOT NULL,
    ean text,
    item_name text,
    subgroups text,
    class text,
    count integer DEFAULT 1,
    created_at timestamp without time zone[] DEFAULT ARRAY[now()],
    perished_state text,
    timestamps jsonb DEFAULT '[]'::jsonb,
    iswished text,
    image_url text DEFAULT ''::text
);


ALTER TABLE public.item_list OWNER TO postgres;

--
-- Name: item_list_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.item_list_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.item_list_id_seq OWNER TO postgres;

--
-- Name: item_list_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.item_list_id_seq OWNED BY public.item_list.id;


--
-- Name: item_list id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.item_list ALTER COLUMN id SET DEFAULT nextval('public.item_list_id_seq'::regclass);


--
-- Data for Name: food; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.food (code, product_name, quantity, packaging, brands_en, categories, ingredients_text, energy_kcal_100g) FROM stdin;
\.


--
-- Data for Name: item_list; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.item_list (id, ean, item_name, subgroups, class, count, created_at, perished_state, timestamps, iswished, image_url) FROM stdin;
84	8714100683989	Moroccan Harissa Sauce			1	{"2026-01-05 11:09:17.907216"}	\N	["2026-01-05T11:09:17.910059"]	false	
85	-1	Jamaican Habanero Sauce			1	{"2026-01-05 11:13:30.254909"}	\N	["2026-01-05T11:13:30.256215"]	false	
88	4001686014851	Goldbarren die Sauren			1	{"2026-01-05 11:14:27.439414"}	\N	["2026-01-05T11:14:27.441691"]	false	
92	-1	Schnelle Nummer Provence			1	{"2026-01-05 11:18:16.527595"}	\N	["2026-01-05T11:18:16.528503"]	false	
121	-1	Bianco Essig			4	{"2026-01-05 15:16:30.396261"}	\N	["2026-01-05T15:16:30.396873", "2026-01-05T15:24:56.560934", "2026-01-05T15:35:08.530752", "2026-01-05T15:35:09.164939"]	false	
125	8006705005069	Traubenkernöl			1	{"2026-01-05 15:29:22.675346"}	\N	["2026-01-05T15:29:22.678548"]	false	
126	-1	Kürbiskernöl			2	{"2026-01-05 15:30:18.540888"}	\N	["2026-01-05T15:30:18.542274", "2026-01-05T15:30:18.542274"]	false	
123	8002461910036	Balsamico-Creme			2	{"2026-01-05 15:26:49.662097"}	\N	["2026-01-05T15:26:49.664276", "2026-01-05T15:26:55.210386"]	false	https://images.openfoodfacts.net/images/products/800/246/191/0036/front_en.3.400.jpg
127	29020829	Aceto Balsamico			1	{"2026-01-05 15:30:57.621045"}	\N	["2026-01-05T15:30:57.622841"]	false	https://images.openfoodfacts.net/images/products/000/002/902/0829/front_en.3.400.jpg
90	4001686329870	Saure Pommes			1	{"2026-01-05 11:14:55.734872"}	\N	["2026-01-05T11:14:55.736867"]	false	https://images.openfoodfacts.net/images/products/400/168/632/9870/front_de.4.400.jpg
115	4311501799017	Apfelessig			3	{"2026-01-05 15:12:51.1633"}	\N	["2026-01-05T15:12:51.167542", "2026-01-05T15:13:30.876615", "2026-01-05T15:25:23.037114"]	false	https://images.openfoodfacts.net/images/products/431/150/179/9017/front_de.4.400.jpg
105	4000400138576	Pecorino Tomatensauce			1	{"2026-01-05 11:26:47.710198"}	\N	["2026-01-05T11:26:47.711756"]	false	https://images.openfoodfacts.net/images/products/400/040/013/8576/front_en.16.400.jpg
122	20259211	Dýňový olej			1	{"2026-01-05 15:16:50.57633"}	\N	["2026-01-05T15:16:50.579629"]	false	https://images.openfoodfacts.net/images/products/000/002/025/9211/front_de.55.400.jpg
107	8715700131139	Baked Beans			1	{"2026-01-05 11:47:50.220227"}	\N	["2026-01-05T11:47:50.220751"]	false	https://images.openfoodfacts.net/images/products/871/570/013/1139/front_en.103.400.jpg
111	4061458022774	Geriebener Hartkäse			1	{"2026-01-05 11:47:52.139386"}	\N	["2026-01-05T11:47:52.139961"]	false	https://images.openfoodfacts.net/images/products/406/145/802/2774/front_de.24.400.jpg
89	9002975378925	Happy-Cola Sauer			1	{"2026-01-05 11:14:42.286686"}	\N	["2026-01-05T11:14:42.290254"]	false	https://images.openfoodfacts.net/images/products/900/297/537/8925/front_de.27.400.jpg
97	4023900561309	Curry-Paste rot			1	{"2026-01-05 11:20:25.628516"}	\N	["2026-01-05T11:20:25.630748"]	false	https://images.openfoodfacts.net/images/products/402/390/056/1309/front_de.4.400.jpg
87	4056489538684	Mandeln, blanchiert und gehobelt			1	{"2026-01-05 11:14:13.94163"}	\N	["2026-01-05T11:14:13.943156"]	false	https://images.openfoodfacts.net/images/products/405/648/953/8684/front_de.24.400.jpg
117	4260335832530	Aloe vera saft			1	{"2026-01-05 15:14:33.221925"}	\N	["2026-01-05T15:14:33.223774"]	false	https://images.openfoodfacts.net/images/products/426/033/583/2530/front_de.3.400.jpg
98	4030800065813	Scharfe Paprikasoße mit Chili-Chutney			1	{"2026-01-05 11:21:21.694004"}	\N	["2026-01-05T11:21:21.696066"]	false	https://images.openfoodfacts.net/images/products/403/080/006/5813/front_de.9.400.jpg
99	4005009101303	Tomaten Ketchup			1	{"2026-01-05 11:22:45.938195"}	\N	["2026-01-05T11:22:45.940047"]	false	https://images.openfoodfacts.net/images/products/400/500/910/1303/front_de.17.400.jpg
110	4311596465231	Kidney Bohnen			1	{"2026-01-05 11:47:51.640303"}	\N	["2026-01-05T11:47:51.642283"]	false	https://images.openfoodfacts.net/images/products/431/159/646/5231/front_en.64.400.jpg
118	4005009106995	EDEKA Bio-Zentrale Bio Apfelessig trüb 750ml 2,99€ 1l 3,98€			1	{"2026-01-05 15:14:47.488095"}	\N	["2026-01-05T15:14:47.489591"]	false	https://images.openfoodfacts.net/images/products/400/500/910/6995/front_de.31.400.jpg
103	40594286	Meerrettich, mild			2	{"2026-01-05 11:25:13.171804"}	\N	["2026-01-05T11:25:13.174528", "2026-01-05T11:25:46.601373"]	false	https://images.openfoodfacts.net/images/products/000/004/059/4286/front_de.24.400.jpg
116	4056489989035	Bio Apfel Essig			3	{"2026-01-05 15:13:51.612574"}	\N	["2026-01-05T15:13:51.614353", "2026-01-05T15:14:14.939624", "2026-01-05T15:37:45.125322"]	false	https://images.openfoodfacts.net/images/products/405/648/998/9035/front_en.3.400.jpg
109	4056489254683	Fisch Thunfisch Filets in eigenem Saft			1	{"2026-01-05 11:47:51.148153"}	\N	["2026-01-05T11:47:51.149851"]	false	https://images.openfoodfacts.net/images/products/405/648/925/4683/front_de.110.400.jpg
101	8710522890943	Paprikasauce Ungarische Art			2	{"2026-01-05 11:23:42.879085"}	\N	["2026-01-05T11:23:42.884998", "2026-01-05T11:23:52.580387"]	false	https://images.openfoodfacts.net/images/products/871/052/289/0943/front_de.43.400.jpg
96	4023900544722	Gelbe Curry-Paste			1	{"2026-01-05 11:20:16.373243"}	\N	["2026-01-05T11:20:16.374885"]	false	https://images.openfoodfacts.net/images/products/402/390/054/4722/front_de.22.400.jpg
113	4311596442034	Gut&Günstig Delikatess Bock Würstchen			1	{"2026-01-05 11:52:16.235494"}	\N	["2026-01-05T11:52:16.239187"]	false	https://images.openfoodfacts.net/images/products/431/159/644/2034/front_fr.10.400.jpg
104	8076809513746	Pesto alla Genovese			3	{"2026-01-05 11:26:00.134931"}	\N	["2026-01-05T11:26:00.172329", "2026-01-05T11:26:00.172329", "2026-01-05T11:26:18.896231"]	false	https://images.openfoodfacts.net/images/products/807/680/951/3746/front_en.170.400.jpg
133	20814847	Natives Olivenöl			2	{"2026-01-05 15:40:10.090347"}	\N	["2026-01-05T15:40:10.095632", "2026-01-09T13:38:39.795078"]	false	https://images.openfoodfacts.net/images/products/000/002/081/4847/front_de.5.400.jpg
124	8715035130302	Sauce soja teneur réduite en sel			2	{"2026-01-05 15:27:34.475001"}	\N	["2026-01-05T15:27:34.477052", "2026-01-09T13:39:16.173952"]	false	https://images.openfoodfacts.net/images/products/871/503/513/0302/front_de.90.400.jpg
93	4311501391808	Apfelmark			2	{"2026-01-05 11:18:33.791189"}	\N	["2026-01-05T11:18:33.793154", "2026-01-09T13:39:55.403237"]	false	https://images.openfoodfacts.net/images/products/431/150/139/1808/front_de.34.400.jpg
94	4054600079412	Himbeer-Fruchtaufstrich mit 30% weniger Zucker			1	{"2026-01-05 11:18:47.66941"}	\N	["2026-01-05T11:18:47.671251"]	false	https://images.openfoodfacts.net/images/products/405/460/007/9412/front_de.7.400.jpg
114	8076809512268	Spirelli			3	{"2026-01-05 15:00:46.257628"}	\N	["2026-01-05T15:00:46.260641", "2026-01-05T15:02:06.132704", "2026-01-05T15:03:15.855420"]	false	https://images.openfoodfacts.net/images/products/807/680/951/2268/front_de.268.400.jpg
100	4013300031250	Schaschliksauce			1	{"2026-01-05 11:23:26.812734"}	\N	["2026-01-05T11:23:26.814939"]	false	https://images.openfoodfacts.net/images/products/401/330/003/1250/front_de.34.400.jpg
108	4311501675250	Thunfischfilets im eigenen Saft & Aufguss			2	{"2026-01-05 11:47:50.701679"}	\N	["2026-01-05T11:47:50.702333", "2026-01-05T11:47:52.604385"]	false	https://images.openfoodfacts.net/images/products/431/150/167/5250/front_en.88.400.jpg
86	4056489540168	Mandeln gestiftet			1	{"2026-01-05 11:13:59.757853"}	\N	["2026-01-05T11:13:59.760267"]	false	https://images.openfoodfacts.net/images/products/405/648/954/0168/front_en.8.400.jpg
131	4388840103997	Heller Weinbranntwein Essig			1	{"2026-01-05 15:34:30.605166"}	\N	["2026-01-05T15:34:30.607920"]	false	https://images.openfoodfacts.net/images/products/438/884/010/3997/front_de.19.400.jpg
91	4260335837511	Braunes Mandelmus			1	{"2026-01-05 11:15:56.028899"}	\N	["2026-01-05T11:15:56.031054"]	false	https://images.openfoodfacts.net/images/products/426/033/583/7511/front_de.41.400.jpg
128	29097890	Griechisches Natives Olivenöl Extra			4	{"2026-01-05 15:31:14.284464"}	\N	["2026-01-05T15:31:14.286465", "2026-01-05T15:31:40.323267", "2026-01-05T15:31:49.989151", "2026-01-05T15:39:53.727944"]	false	https://images.openfoodfacts.net/images/products/000/002/909/7890/front_de.10.400.jpg
136	4003586101310	Chipsfrisch Ungarisch	none		1	{"2026-01-08 20:31:17.645449"}	\N	["2026-01-08T20:31:17.919717"]	false	https://images.openfoodfacts.net/images/products/400/358/610/1310/front_de.38.400.jpg
151	8013108699313	Crème Noisette	none		1	{"2026-01-09 13:43:18.864793"}	\N	["2026-01-09T13:43:19.100402"]	false	https://images.openfoodfacts.net/images/products/801/310/869/9313/front_de.37.400.jpg
130	-1	Knoblauch Olivenöl			6	{"2026-01-05 15:33:32.641416"}	\N	["2026-01-05T15:33:32.642116", "2026-01-05T15:36:17.484361", "2026-01-05T15:36:18.227187", "2026-01-08T16:16:50.131330", "2026-01-08T16:16:50.718130", "2026-01-08T23:04:33.654994"]	false	
140	20228460	Vinaigre Balsamique De Pomme	none		1	{"2026-01-09 13:38:14.569952"}	\N	["2026-01-09T13:38:14.767788"]	false	https://images.openfoodfacts.net/images/products/000/002/022/8460/front_fr.14.400.jpg
141	4056489379737	Crema con Acetato Balsamico	none		2	{"2026-01-09 13:38:55.721047"}	\N	["2026-01-09T13:38:55.937009", "2026-01-09T13:39:01.333864"]	false	https://images.openfoodfacts.net/images/products/405/648/937/9737/front_en.44.400.jpg
142	4260431678858	Kräuter Stullen Spice	none		1	{"2026-01-09 13:41:23.322657"}	\N	["2026-01-09T13:41:23.582047"]	false	https://images.openfoodfacts.net/images/products/426/043/167/8858/front_de.3.400.jpg
143	4260431678094	Tomaten Mozarella Gewürz	none		1	{"2026-01-09 13:41:28.223294"}	\N	["2026-01-09T13:41:28.417870"]	false	https://images.openfoodfacts.net/images/products/426/043/167/8094/front_de.10.400.jpg
144	4104420024564	Agavendicksaft	none		1	{"2026-01-09 13:41:38.928186"}	\N	["2026-01-09T13:41:39.181976"]	false	https://images.openfoodfacts.net/images/products/410/442/002/4564/front_en.94.400.jpg
145	4011800087319	Hofladen Aprikose	none		1	{"2026-01-09 13:41:54.089497"}	\N	["2026-01-09T13:41:54.289633"]	false	https://images.openfoodfacts.net/images/products/401/180/008/7319/front_de.17.400.jpg
146	3045320092073	Himbeer-Konfitüre	none		1	{"2026-01-09 13:42:01.011415"}	\N	["2026-01-09T13:42:01.296369"]	false	https://images.openfoodfacts.net/images/products/304/532/009/2073/front_de.30.400.jpg
147	8001505007466	Nocciolata	none		1	{"2026-01-09 13:42:12.514745"}	\N	["2026-01-09T13:42:12.805853"]	false	https://images.openfoodfacts.net/images/products/800/150/500/7466/front_de.22.400.jpg
148	4047247066570	Pflaumenmus	none		2	{"2026-01-09 13:42:34.038499"}	\N	["2026-01-09T13:42:34.232542", "2026-01-09T13:42:48.664409"]	false	https://images.openfoodfacts.net/images/products/404/724/706/6570/front_de.3.400.jpg
149	4002575475128	Konfitüre Brombeeren	none		2	{"2026-01-09 13:42:40.104558"}	\N	["2026-01-09T13:42:40.334745", "2026-01-09T13:43:52.237314"]	false	https://images.openfoodfacts.net/images/products/400/257/547/5128/front_de.15.400.jpg
150	3608580069126	Aprikose	none		2	{"2026-01-09 13:43:06.305079"}	\N	["2026-01-09T13:43:06.547603", "2026-01-09T13:46:23.309205"]	false	https://images.openfoodfacts.net/images/products/360/858/006/9126/front_en.12.400.jpg
153	9001432037474	Holler Zwetschken Konfitüre	none		1	{"2026-01-09 13:44:11.763161"}	\N	["2026-01-09T13:44:12.147149"]	false	https://images.openfoodfacts.net/images/products/900/143/203/7474/front_de.14.400.jpg
154	8013108699320	Crème noire	none		1	{"2026-01-09 13:44:37.797808"}	\N	["2026-01-09T13:44:38.019581"]	false	https://images.openfoodfacts.net/images/products/801/310/869/9320/front_de.38.400.jpg
155	4311596475155	Wild-Preiselbeeren	none		2	{"2026-01-09 13:45:09.205996"}	\N	["2026-01-09T13:45:09.497209", "2026-01-09T13:45:11.698522"]	false	https://images.openfoodfacts.net/images/products/431/159/647/5155/front_en.20.400.jpg
152	4011800800314	Extra Aprikose	none		3	{"2026-01-09 13:43:43.415584"}	\N	["2026-01-09T13:43:43.620104", "2026-01-09T13:44:01.849773", "2026-01-09T13:45:29.513255"]	false	https://images.openfoodfacts.net/images/products/401/180/080/0314/front_de.38.400.jpg
139	7311312002365	DIP salsa	none		2	{"2026-01-09 13:37:51.213188"}	\N	["2026-01-09T13:37:51.479117", "2026-01-09T14:08:42.508407"]	false	https://images.openfoodfacts.net/images/products/731/131/200/2365/front_es.28.400.jpg
156	4001242108222	Chip dip	none		1	{"2026-01-09 14:09:15.416917"}	\N	["2026-01-09T14:09:15.665094"]	false	https://images.openfoodfacts.net/images/products/400/124/210/8222/front_en.24.400.jpg
157	3481291018337	Truffe fantaisie nature	none		1	{"2026-01-09 17:17:02.272726"}	\N	["2026-01-09T17:17:04.915881"]	false	https://images.openfoodfacts.net/images/products/348/129/101/8337/front_fr.3.400.jpg
95	4001242003015	Dip - Mild Salsa			9	{"2026-01-05 11:19:23.379492"}	\N	["2026-01-05T11:19:32.196446", "2026-01-05T11:19:39.272652", "2026-01-05T11:19:45.043440", "2026-01-09T13:37:15.837900", "2026-01-09T13:37:16.238862", "2026-01-09T13:37:16.737173", "2026-01-09T13:37:17.335704", "2026-01-09T14:09:54.979022", "2026-01-10T16:57:47.598857"]	false	https://images.openfoodfacts.net/images/products/400/124/200/3015/front_de.70.400.jpg
\.


--
-- Name: item_list_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.item_list_id_seq', 162, true);


--
-- Name: item_list item_list_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.item_list
    ADD CONSTRAINT item_list_pkey PRIMARY KEY (id);


--
-- Name: idx_food_code; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_food_code ON public.food USING btree (code);


--
-- Name: idx_food_product_name; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_food_product_name ON public.food USING btree (product_name);


--
-- Name: idx_item_list_class; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_item_list_class ON public.item_list USING btree (class);


--
-- Name: idx_item_list_ean; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_item_list_ean ON public.item_list USING btree (ean);


--
-- Name: idx_item_list_iswished; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_item_list_iswished ON public.item_list USING btree (iswished);


--
-- Name: idx_item_list_item_name; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_item_list_item_name ON public.item_list USING btree (item_name);


--
-- Name: idx_item_list_subgroups; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_item_list_subgroups ON public.item_list USING btree (subgroups);


--
-- Name: idx_item_list_subgroups_class; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_item_list_subgroups_class ON public.item_list USING btree (subgroups, class);


--
-- PostgreSQL database dump complete
--

\unrestrict SkWebTUddOjxTS69ls1Wg0inUWMdivgDSBaAgZBwEv74abckNboRnu9CbQAtejJ

