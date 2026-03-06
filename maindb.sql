--
-- PostgreSQL database dump
--

\restrict dh9Tajht5uCIKu6WYHHD5GwE1sTnlqXkVxgCXS1tPJ6mOCueqesY5C5YiLcHwvd

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
    subgroups text DEFAULT ''::text,
    class text DEFAULT ''::text,
    count integer DEFAULT 1,
    timestamps jsonb DEFAULT '[]'::jsonb,
    iswished text DEFAULT 'false'::text,
    image_url text DEFAULT ''::text,
    categories text DEFAULT ''::text,
    categories_short text DEFAULT ''::text,
    tags text DEFAULT ''::text
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
-- Name: tagging_to_name; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tagging_to_name (
    tags text NOT NULL,
    inferred_name text
);


ALTER TABLE public.tagging_to_name OWNER TO postgres;

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

COPY public.item_list (id, ean, item_name, subgroups, class, count, timestamps, iswished, image_url, categories, categories_short, tags) FROM stdin;
24	-1	Knoblauch Olivenöl		Knoblauch Olivenöl	6	["2026-01-05", "2026-01-05", "2026-01-05", "2026-01-08", "2026-01-08", "2026-01-08"]	false	/none_available.png			
28	-1	Bianco Essig		Bianco Essig	4	["2026-01-05", "2026-01-05", "2026-01-05", "2026-01-05"]	false	/none_available.png			
31	-1	Kürbiskernöl		Kürbiskernöl	2	["2026-01-05", "2026-01-05"]	false	/none_available.png			
55	-1	Schnelle Nummer Provence		Schnelle Nummer Provence	1	["2026-01-05"]	false	/none_available.png			
62	-1	Jamaican Habanero Sauce		Habanero Sauce	1	["2026-01-05"]	false	/none_available.png			
30	29020829	Aceto Balsamico		Aceto Balsamico	1	["2026-01-05"]	false	https://images.openfoodfacts.net/images/products/000/002/902/0829/front_en.3.400.jpg	['en:condiments', 'en:vinegars', 'en:balsamic-vinegars', 'en:balsamic-vinegars-of-modena']		unknown
35	20259211	Dýňový olej		Dýňový olej	1	["2026-01-05"]	false	https://images.openfoodfacts.net/images/products/000/002/025/9211/front_de.55.400.jpg	['en:plant-based-foods-and-beverages', 'en:plant-based-foods', 'en:fats', 'en:vegetable-fats', 'en:vegetable-oils']		unknown
2	3481291018337	Truffe fantaisie nature	none	Truffe fantaisie nature	1	["2026-01-09"]	false	https://images.openfoodfacts.net/images/products/348/129/101/8337/front_fr.3.400.jpg	[]		unknown
11	8013108699313	Crème Noisette	none	Crème Noisette	1	["2026-01-09"]	false	https://images.openfoodfacts.net/images/products/801/310/869/9313/front_de.37.400.jpg	['en:breakfasts', 'en:spreads', 'en:sweet-spreads', 'fr:pates-a-tartiner', 'en:hazelnut-spreads', 'en:chocolate-spreads', 'en:cocoa-and-hazelnuts-spreads']		unknown
37	4260335832530	Aloe vera saft		Aloe vera saft	1	["2026-01-05"]	false	https://images.openfoodfacts.net/images/products/426/033/583/2530/front_de.3.400.jpg	['en:plant-based-foods-and-beverages', 'en:beverages', 'en:plant-based-beverages', 'en:fruit-based-beverages', 'en:juices-and-nectars', 'en:aloe-vera-drinks', 'en:fruit-and-vegetable-juices']		unknown
29	4388840103997	Heller Weinbranntwein Essig		Heller Essig	1	["2026-01-05"]	false	https://images.openfoodfacts.net/images/products/438/884/010/3997/front_de.19.400.jpg	['en:condiments', 'en:vinegars']		unknown
4	7311312002365	DIP salsa	none	DIP salsa	2	["2026-01-09", "2026-01-09"]	false	https://images.openfoodfacts.net/images/products/731/131/200/2365/front_es.28.400.jpg	['en:condiments', 'en:sauces', 'en:dips', 'en:groceries']		unknown
12	4047247066570	Pflaumenmus	none	Pflaumenmus	2	["2026-01-09", "2026-01-09"]	false	https://images.openfoodfacts.net/images/products/404/724/706/6570/front_de.3.400.jpg	[]		unknown
33	8002461910036	Balsamico-Creme		Balsamico	2	["2026-01-05", "2026-01-05"]	false	https://images.openfoodfacts.net/images/products/800/246/191/0036/front_en.3.400.jpg	[]		unknown
38	8076809512268	Spirelli		Spirelli	3	["2026-01-05", "2026-01-05", "2026-01-05"]	false	https://images.openfoodfacts.net/images/products/807/680/951/2268/front_de.268.400.jpg	['en:plant-based-foods-and-beverages', 'en:plant-based-foods', 'en:cereals-and-potatoes', 'en:cereals-and-their-products', 'en:pastas', 'en:cereal-pastas', 'en:noodles', 'en:dry-pastas', 'en:durum-wheat-pasta', 'en:dry-durum-wheat-pasta']		unknown
13	8001505007466	Nocciolata	none	Nocciolata	1	["2026-01-09"]	false	https://images.openfoodfacts.net/images/products/800/150/500/7466/front_de.22.400.jpg	['en:breakfasts', 'en:spreads', 'en:sweet-spreads', 'fr:pates-a-tartiner', 'en:hazelnut-spreads', 'en:chocolate-spreads', 'en:cocoa-and-hazelnuts-spreads']		unknown
3	4001242108222	Chip dip	none	Chip dip	1	["2026-01-09"]	false	https://images.openfoodfacts.net/images/products/400/124/210/8222/front_en.24.400.jpg	['en:condiments', 'en:sauces', 'en:dips']		unknown
27	4056489989035	Bio Apfel Essig		Apfel Essig	3	["2026-01-05", "2026-01-05", "2026-01-05"]	false	https://images.openfoodfacts.net/images/products/405/648/998/9035/front_en.3.400.jpg	['en:condiments', 'en:vinegars', 'en:cider-vinegars']		unknown
18	4260431678858	Kräuter Stullen Spice	none	Kräuter Stullen Spice	1	["2026-01-09"]	false	https://images.openfoodfacts.net/images/products/426/043/167/8858/front_de.3.400.jpg	['en:plant-based-foods-and-beverages', 'en:plant-based-foods', 'en:gewurze', 'en:gewurzmittel', 'en:pflanzliche-lebensmittel-und-getranke']		unknown
23	20228460	Vinaigre Balsamique De Pomme	none	Vinaigre Balsamique De Pomme	1	["2026-01-09"]	false	https://images.openfoodfacts.net/images/products/000/002/022/8460/front_fr.14.400.jpg	['fr:vinaigre-balsamiques-de-pomme']		unknown
20	8715035130302	Sauce soja teneur réduite en sel		Sauce soja	2	["2026-01-05", "2026-01-09"]	false	https://images.openfoodfacts.net/images/products/871/503/513/0302/front_de.90.400.jpg	['en:condiments', 'en:sauces', 'en:soy-sauces', 'fr:sauces-au-soja-salees']		unknown
32	8006705005069	Traubenkernöl		Traubenkernöl	1	["2026-01-05"]	false	/none_available.png	[]		unknown
17	4260431678094	Tomaten Mozarella Gewürz	none	Tomaten Mozarella Gewürz	1	["2026-01-09"]	false	https://images.openfoodfacts.net/images/products/426/043/167/8094/front_de.10.400.jpg	[]		unknown
22	20814847	Natives Olivenöl		Olivenöl	2	["2026-01-05", "2026-01-09"]	false	https://images.openfoodfacts.net/images/products/000/002/081/4847/front_de.5.400.jpg	['en:plant-based-foods-and-beverages', 'en:plant-based-foods', 'en:fats', 'en:vegetable-fats', 'en:olive-tree-products', 'en:vegetable-oils', 'en:olive-oils', 'en:extra-virgin-olive-oils', 'en:virgin-olive-oils']		unknown
21	4056489379737	Crema con Acetato Balsamico	none	Acetato Balsamico	2	["2026-01-09", "2026-01-09"]	false	https://images.openfoodfacts.net/images/products/405/648/937/9737/front_en.44.400.jpg	['en:condiments', 'en:vinegars', 'en:balsamic-vinegars', 'en:glazes-with-vinegar', 'en:glazes-with-balsamic-vinegar', 'pt:vinagre-balsamico']		unknown
16	4104420024564	Agavendicksaft	none	Agavendicksaft	1	["2026-01-09"]	false	https://images.openfoodfacts.net/images/products/410/442/002/4564/front_en.94.400.jpg	['en:sweeteners', 'en:syrups', 'en:simple-syrups', 'en:sugars', 'en:agave-syrups']		unknown
57	4001686329870	Saure Pommes		Saure Pommes	1	["2026-01-05"]	false	https://images.openfoodfacts.net/images/products/400/168/632/9870/front_de.4.400.jpg	['en:snacks', 'en:sweet-snacks', 'en:confectioneries', 'en:candies', 'en:gummi-candies', 'en:acid-gummy-candies']		unknown
45	4000400138576	Pecorino Tomatensauce		Pecorino Tomatensauce	1	["2026-01-05"]	false	https://images.openfoodfacts.net/images/products/400/040/013/8576/front_en.16.400.jpg	['en:condiments', 'en:sauces', 'en:pestos', 'en:red-pestos']		unknown
34	4311501799017	Apfelessig		Apfelessig	3	["2026-01-05", "2026-01-05", "2026-01-05"]	false	https://images.openfoodfacts.net/images/products/431/150/179/9017/front_de.4.400.jpg	['en:condiments', 'en:vinegars']		unknown
39	4311596442034	Gut&Günstig Delikatess Bock Würstchen		Gut&Günstig Würstchen	1	["2026-01-05"]	false	https://images.openfoodfacts.net/images/products/431/159/644/2034/front_fr.10.400.jpg	['en:meats-and-their-products', 'en:meats', 'en:prepared-meats', 'en:cured-sausages', 'en:sausages', 'en:german-sausages', 'en:frankfurter-sausages']		unknown
6	4011800800314	Extra Aprikose	none	Aprikose	3	["2026-01-09", "2026-01-09", "2026-01-09"]	false	https://images.openfoodfacts.net/images/products/401/180/080/0314/front_de.38.400.jpg	['en:plant-based-foods-and-beverages', 'en:plant-based-foods', 'en:fruits-and-vegetables-based-foods', 'en:breakfasts', 'en:spreads', 'en:fruits-based-foods', 'en:plant-based-spreads', 'en:sweet-spreads', 'en:fruit-and-vegetable-preserves', 'en:jams', 'en:apricot-jams']		unknown
63	8714100683989	Moroccan Harissa Sauce		Moroccan Harissa Sauce	1	["2026-01-05"]	false	/none_available.png	[]		unknown
60	4056489538684	Mandeln, blanchiert und gehobelt		Mandeln	1	["2026-01-05"]	false	https://images.openfoodfacts.net/images/products/405/648/953/8684/front_de.24.400.jpg	['en:plant-based-foods-and-beverages', 'en:plant-based-foods', 'en:nuts-and-their-products', 'en:nuts', 'en:almonds', 'en:shelled-nuts', 'en:shelled-almonds', 'en:blanched-almonds', 'en:almond-flakes']		unknown
46	8076809513746	Pesto alla Genovese		Pesto alla Genovese	3	["2026-01-05", "2026-01-05", "2026-01-05"]	false	https://images.openfoodfacts.net/images/products/807/680/951/3746/front_en.170.400.jpg	['en:condiments', 'en:sauces', 'en:pestos', 'en:green-pestos']		unknown
54	4054600079412	Himbeer-Fruchtaufstrich mit 30% weniger Zucker		Himbeer Fruchtaufstrich	1	["2026-01-05"]	false	https://images.openfoodfacts.net/images/products/405/460/007/9412/front_de.7.400.jpg	['en:plant-based-foods-and-beverages', 'en:plant-based-foods', 'en:breakfasts', 'en:spreads', 'en:plant-based-spreads', 'en:sweet-spreads', 'en:fruit-and-vegetable-preserves', 'en:jams', 'en:berry-jams', 'en:citrus-jams', 'en:marmalades', 'en:konfituren']		unknown
47	40594286	Meerrettich, mild		Meerrettich	2	["2026-01-05", "2026-01-05"]	false	https://images.openfoodfacts.net/images/products/000/004/059/4286/front_de.24.400.jpg	['en:plant-based-foods-and-beverages', 'en:plant-based-foods', 'en:condiments', 'en:culinary-plants', 'en:grated-horseradish', 'en:groceries']		unknown
52	4023900561309	Curry-Paste rot		Curry-Paste rot	1	["2026-01-05"]	false	https://images.openfoodfacts.net/images/products/402/390/056/1309/front_de.4.400.jpg	['en:condiments', 'en:sauces', 'en:meal-sauces', 'en:curry-pastes', 'en:red-curry-pastes', 'en:groceries']		unknown
59	4001686014851	Goldbarren die Sauren		Goldbarren	1	["2026-01-05"]	false	/none_available.png	['en:susswaren']		unknown
50	4005009101303	Tomaten Ketchup		Tomaten Ketchup	1	["2026-01-05"]	false	https://images.openfoodfacts.net/images/products/400/500/910/1303/front_de.17.400.jpg	['en:condiments', 'en:sauces', 'en:tomato-sauces', 'en:ketchup', 'en:groceries']		unknown
51	4030800065813	Scharfe Paprikasoße mit Chili-Chutney		Paprikasoße	1	["2026-01-05"]	false	https://images.openfoodfacts.net/images/products/403/080/006/5813/front_de.9.400.jpg	[]		unknown
41	4061458022774	Geriebener Hartkäse		Geriebener Hartkäse	1	["2026-01-05"]	false	https://images.openfoodfacts.net/images/products/406/145/802/2774/front_de.24.400.jpg	['en:dairies', 'en:fermented-foods', 'en:fermented-milk-products', 'en:cheeses', 'en:grated-cheese']		unknown
49	4013300031250	Schaschliksauce		Schaschliksauce	1	["2026-01-05"]	false	https://images.openfoodfacts.net/images/products/401/330/003/1250/front_de.34.400.jpg	['en:condiments', 'en:sauces', 'en:hot-sauces']		unknown
61	4056489540168	Mandeln gestiftet		Mandeln gestiftet	1	["2026-01-05"]	false	https://images.openfoodfacts.net/images/products/405/648/954/0168/front_en.8.400.jpg	['en:plant-based-foods-and-beverages', 'en:plant-based-foods', 'en:nuts-and-their-products', 'en:nuts', 'en:almonds']		unknown
36	4005009106995	EDEKA Bio-Zentrale Bio Apfelessig trüb 750ml 2,99€ 1l 3,98€		EDEKA Bio-Zentrale Apfelessig	1	["2026-01-05"]	false	https://images.openfoodfacts.net/images/products/400/500/910/6995/front_de.31.400.jpg	['en:condiments', 'en:vinegars', 'en:cider-vinegars']		unknown
56	4260335837511	Braunes Mandelmus		Braunes Mandelmus	1	["2026-01-05"]	false	https://images.openfoodfacts.net/images/products/426/033/583/7511/front_de.41.400.jpg	['en:plant-based-foods-and-beverages', 'en:plant-based-foods', 'en:spreads', 'en:nuts-and-their-products', 'en:plant-based-spreads', 'en:oilseed-purees', 'en:nut-butters', 'en:almond-butters', 'en:white-almond-butters', 'en:whole-almond-purees']		unknown
48	8710522890943	Paprikasauce Ungarische Art		Paprikasauce Ungarische Art	2	["2026-01-05", "2026-01-05"]	false	https://images.openfoodfacts.net/images/products/871/052/289/0943/front_de.43.400.jpg	['en:condiments', 'en:sauces', 'en:hot-sauces', 'de:paprikasaucen']		unknown
42	4311596465231	Kidney Bohnen		Kidney Bohnen	1	["2026-01-05"]	false	https://images.openfoodfacts.net/images/products/431/159/646/5231/front_en.64.400.jpg	['en:plant-based-foods-and-beverages', 'en:plant-based-foods', 'en:legumes-and-their-products', 'en:canned-foods', 'en:legumes', 'en:seeds', 'en:canned-plant-based-foods', 'en:legume-seeds', 'en:pulses', 'en:common-beans', 'en:canned-legumes', 'en:red-beans', 'en:canned-common-beans']		unknown
15	4011800087319	Hofladen Aprikose	none	Hofladen Aprikose	1	["2026-01-09"]	false	https://images.openfoodfacts.net/images/products/401/180/008/7319/front_de.17.400.jpg	['en:plant-based-foods-and-beverages', 'en:plant-based-foods', 'en:breakfasts', 'en:spreads', 'en:plant-based-spreads', 'en:sweet-spreads', 'en:fruit-and-vegetable-preserves', 'en:jams', 'en:apricot-jams', 'en:aprikosen-konfituren', 'en:fruhstucke', 'en:konfituren', 'en:konfituren-und-marmeladen', 'en:pflanzliche-lebensmittel-und-getranke', 'en:susse-brotaufstriche']		unknown
44	8715700131139	Baked Beans		Baked Beans	1	["2026-01-05"]	false	https://images.openfoodfacts.net/images/products/871/570/013/1139/front_en.103.400.jpg	['en:plant-based-foods-and-beverages', 'en:plant-based-foods', 'en:fruits-and-vegetables-based-foods', 'en:legumes-and-their-products', 'en:canned-foods', 'en:legumes', 'en:seeds', 'en:vegetables-based-foods', 'en:canned-plant-based-foods', 'en:legume-seeds', 'en:meals', 'en:canned-vegetables', 'en:pulses', 'en:common-beans', 'en:prepared-vegetables', 'en:baked-beans-in-tomato-sauce', 'en:canned-legumes', 'en:white-beans', 'en:canned-common-beans']		unknown
8	8013108699320	Crème noire	none	Crème noire	1	["2026-01-09"]	false	https://images.openfoodfacts.net/images/products/801/310/869/9320/front_de.38.400.jpg	['en:breakfasts', 'en:spreads', 'en:sweet-spreads', 'fr:pates-a-tartiner', 'en:hazelnut-spreads', 'en:chocolate-spreads']		unknown
14	3045320092073	Himbeer-Konfitüre	none	Himbeer Marmelade	1	["2026-02-20T15:30:39.950177"]	false	https://images.openfoodfacts.net/images/products/304/532/009/2073/front_de.30.400.jpg	['en:plant-based-foods-and-beverages', 'en:plant-based-foods', 'en:fruits-and-vegetables-based-foods', 'en:breakfasts', 'en:spreads', 'en:fruits-based-foods', 'en:plant-based-spreads', 'en:sweet-spreads', 'en:fruit-and-vegetable-preserves', 'en:jams', 'en:berry-jams', 'en:raspberry-jams']		unknown
53	4023900544722	Gelbe Curry-Paste		Gelbe Curry-Paste	1	["2026-01-05"]	false	https://images.openfoodfacts.net/images/products/402/390/054/4722/front_de.22.400.jpg	['en:condiments', 'en:sauces', 'en:meal-sauces', 'en:curry-pastes', 'en:yellow-curry-pastes', 'en:groceries']		unknown
19	4311501391808	Apfelmark		Apfelmark	2	["2026-01-05", "2026-01-09"]	false	https://images.openfoodfacts.net/images/products/431/150/139/1808/front_de.34.400.jpg	['en:plant-based-foods-and-beverages', 'en:plant-based-foods', 'en:fruits-and-vegetables-based-foods', 'en:desserts', 'en:fruits-based-foods', 'en:compotes', 'en:apple-compotes', 'en:applesauces']		unknown
7	4311596475155	Wild-Preiselbeeren	none	Wild-Preiselbeeren	2	["2026-01-09", "2026-01-09"]	false	https://images.openfoodfacts.net/images/products/431/159/647/5155/front_en.20.400.jpg	['en:beeren', 'en:brotaufstriche', 'en:frucht-und-gemusebasierte-lebensmittel', 'en:fruchtbasierte-lebensmittel', 'en:fruchte', 'en:fruhstucke', 'en:konfituren', 'en:konfituren-und-marmeladen', 'en:marmeladen-aus-roten-fruchten', 'en:pflanzliche-brotaufstriche', 'en:pflanzliche-lebensmittel', 'en:pflanzliche-lebensmittel-und-getranke', 'en:preiselbeeren-konfituren', 'en:susse-brotaufstriche']		unknown
40	4311501675250	Thunfischfilets im eigenen Saft & Aufguss		Thunfischfilets	2	["2026-01-05", "2026-01-05"]	false	https://images.openfoodfacts.net/images/products/431/150/167/5250/front_en.88.400.jpg	['en:seafood', 'en:fishes-and-their-products', 'en:canned-foods', 'en:fishes', 'en:fatty-fishes', 'en:canned-fishes', 'en:tunas', 'en:canned-tunas', 'en:fish-fillets', 'en:tuna-fillets', 'en:tunas-in-brine']		unknown
25	4003586101310	Chipsfrisch Ungarisch	none	Chipsfrisch	1	["2026-01-08"]	false	https://images.openfoodfacts.net/images/products/400/358/610/1310/front_de.38.400.jpg	['en:plant-based-foods-and-beverages', 'en:plant-based-foods', 'en:snacks', 'en:cereals-and-potatoes', 'en:salty-snacks', 'en:appetizers', 'en:chips-and-fries', 'en:crisps', 'en:potato-crisps', 'en:flavoured-potato-crisps']		unknown
10	4002575475128	Konfitüre Brombeeren	none	Brombeeren Konfitüre	2	["2026-01-09", "2026-01-09"]	false	https://images.openfoodfacts.net/images/products/400/257/547/5128/front_de.15.400.jpg	['en:plant-based-foods-and-beverages', 'en:plant-based-foods', 'en:breakfasts', 'en:spreads', 'en:plant-based-spreads', 'en:sweet-spreads', 'en:fruit-and-vegetable-preserves', 'en:jams']		unknown
58	9002975378925	Happy-Cola Sauer		Happy-Cola	1	["2026-01-05"]	false	https://images.openfoodfacts.net/images/products/900/297/537/8925/front_de.27.400.jpg	['en:snacks', 'en:sweet-snacks', 'en:confectioneries', 'en:candies', 'en:gummi-candies', 'en:gummy-bears']		unknown
43	4056489254683	Fisch Thunfisch Filets in eigenem Saft		Thunfisch Filets	1	["2026-01-05"]	false	https://images.openfoodfacts.net/images/products/405/648/925/4683/front_de.110.400.jpg	['en:seafood', 'en:fishes-and-their-products', 'en:canned-foods', 'en:fishes', 'en:fatty-fishes', 'en:canned-fishes', 'en:tunas', 'en:canned-tunas', 'en:fish-fillets', 'en:tuna-fillets', 'en:tunas-in-brine']		unknown
5	3608580069126	Aprikose	none	Aprikose	2	["2026-01-09", "2026-01-09"]	false	https://images.openfoodfacts.net/images/products/360/858/006/9126/front_en.12.400.jpg	['en:plant-based-foods-and-beverages', 'en:plant-based-foods', 'en:breakfasts', 'en:spreads', 'en:plant-based-spreads', 'en:sweet-spreads', 'en:fruit-and-vegetable-preserves', 'en:jams', 'en:apricot-jams']		unknown
26	29097890	Griechisches Natives Olivenöl Extra		Olivenöl	4	["2026-01-05", "2026-01-05", "2026-01-05", "2026-01-05"]	false	https://images.openfoodfacts.net/images/products/000/002/909/7890/front_de.10.400.jpg	['en:plant-based-foods-and-beverages', 'en:plant-based-foods', 'en:fats', 'en:vegetable-fats', 'en:olive-tree-products', 'en:vegetable-oils', 'en:olive-oils', 'en:greek-oils-and-fats', 'en:olive-oils-from-greece']		unknown
1	4001242003015	Dip - Mild Salsa		Dip Mild Salsa	9	["2026-01-09", "2026-01-09", "2026-01-09", "2026-01-10", "2026-02-20T15:30:28.250443", "2026-02-20T15:30:30.747981", "2026-02-20T15:30:31.378476", "2026-02-21T18:25:24.238944", "2026-02-27T11:11:34.903163"]	false	https://images.openfoodfacts.net/images/products/400/124/200/3015/front_de.70.400.jpg	['en:condiments', 'en:sauces', 'en:dips', 'en:groceries', 'fr:sauce-pour-tortillas']		unknown
9	9001432037474	Holler Zwetschken Konfitüre	none	Zwetschken Marmelade	1	["2026-02-23T16:53:59.060432"]	false	https://images.openfoodfacts.net/images/products/900/143/203/7474/front_de.14.400.jpg	['en:plant-based-foods-and-beverages', 'en:plant-based-foods', 'en:fruits-and-vegetables-based-foods', 'en:breakfasts', 'en:spreads', 'en:fruits-based-foods', 'en:plant-based-spreads', 'en:sweet-spreads', 'en:fruit-and-vegetable-preserves', 'en:jams', 'en:berry-jams']		unknown
64	0	milk	none	milk	1	["2026-03-02T15:09:13.143797"]	true				
\.


--
-- Data for Name: tagging_to_name; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tagging_to_name (tags, inferred_name) FROM stdin;
unknown	unbekannt
\.


--
-- Name: item_list_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.item_list_id_seq', 64, true);


--
-- Name: item_list item_list_ean_name_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.item_list
    ADD CONSTRAINT item_list_ean_name_unique UNIQUE (ean, item_name);


--
-- Name: item_list item_list_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.item_list
    ADD CONSTRAINT item_list_pkey PRIMARY KEY (id);


--
-- Name: tagging_to_name tagging_to_name_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tagging_to_name
    ADD CONSTRAINT tagging_to_name_pkey PRIMARY KEY (tags);


--
-- Name: idx_food_code; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_food_code ON public.food USING btree (code);


--
-- Name: idx_food_product_name; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_food_product_name ON public.food USING btree (product_name);


--
-- Name: idx_inferred_name; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_inferred_name ON public.tagging_to_name USING btree (inferred_name);


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
-- Name: idx_item_list_tags; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_item_list_tags ON public.item_list USING btree (tags);


--
-- Name: idx_tags; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_tags ON public.tagging_to_name USING btree (tags);


--
-- PostgreSQL database dump complete
--

\unrestrict dh9Tajht5uCIKu6WYHHD5GwE1sTnlqXkVxgCXS1tPJ6mOCueqesY5C5YiLcHwvd

