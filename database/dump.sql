toc.dat                                                                                             0000600 0004000 0002000 00000003401 14562275723 0014452 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        PGDMP   3                     |            app-nodejs-codechallenge     14.10 (Debian 14.10-1.pgdg120+1)    16.0 	    )           0    0    ENCODING    ENCODING     #   SET client_encoding = 'SQL_ASCII';
                      false         *           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false         +           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false         ,           1262    16420    app-nodejs-codechallenge    DATABASE     �   CREATE DATABASE "app-nodejs-codechallenge" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.utf8';
 *   DROP DATABASE "app-nodejs-codechallenge";
                postgres    false         "          0    16422    transaction 
   TABLE DATA                 public          postgres    false    210       3362.dat #          0    16427    transaction_status 
   TABLE DATA                 public          postgres    false    211       3363.dat $          0    16430    transaction_type 
   TABLE DATA                 public          postgres    false    212       3364.dat 1           0    0    transactionstatus_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.transactionstatus_id_seq', 3, true);
          public          postgres    false    213         2           0    0    transactiontype_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.transactiontype_id_seq', 3, true);
          public          postgres    false    214                                                                                                                                                                                                                                                                       3362.dat                                                                                            0000600 0004000 0002000 00000022256 14562275723 0014273 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        INSERT INTO public.transaction VALUES ('2d6ef37e-dc94-4813-baaf-6b38e65ad657', 'a6e54810-8e4a-4a92-9d4b-8b299c4e93c1', 'f4d9ef39-730e-4790-b73a-7e66f1d0f70c', 2, 150.25, 2, '2024-02-11 20:11:07.238105');
INSERT INTO public.transaction VALUES ('3b8c27b3-4428-4c91-a588-38df1b99b6c4', 'f4d9ef39-730e-4790-b73a-7e66f1d0f70c', 'a6e54810-8e4a-4a92-9d4b-8b299c4e93c1', 1, 75.75, 1, '2024-02-11 20:11:09.376892');
INSERT INTO public.transaction VALUES ('d2bd2099-99ef-463c-a16d-5faa135216a6', 'a201f44d-144b-42a2-8b98-2f4364d17a07', 'b4c12209-b2bd-43a9-bbc7-5d79a5baf257', 1, 0.01, 1, '2024-02-11 20:45:31.733676');
INSERT INTO public.transaction VALUES ('ae4a7ee9-36a6-469e-b478-e1850a52cd41', 'dfbd291c-f56e-48cf-81fa-2cc6210731a7', '6829c319-4a3b-4faa-b26f-b4484e016471', 1, 100.00, 1, '2024-02-11 21:38:20.9422');
INSERT INTO public.transaction VALUES ('e2c308e4-d438-4fa2-8968-2b380be57cd3', 'dfbd291c-f56e-48cf-81fa-2cc6210731a7', '6829c319-4a3b-4faa-b26f-b4484e016471', 1, 100.00, 1, '2024-02-11 21:39:31.177553');
INSERT INTO public.transaction VALUES ('26150d30-5185-448e-9348-6b0f582f0dd2', 'dfbd291c-f56e-48cf-81fa-2cc6210731a7', '6829c319-4a3b-4faa-b26f-b4484e016471', 1, 100.00, 1, '2024-02-11 22:19:51.740769');
INSERT INTO public.transaction VALUES ('75da3b5f-9a50-48f8-954f-44b79e1d33e5', 'dfbd291c-f56e-48cf-81fa-2cc6210731a7', '6829c319-4a3b-4faa-b26f-b4484e016471', 1, 100.00, 1, '2024-02-11 22:21:22.949441');
INSERT INTO public.transaction VALUES ('8ab53e42-ece1-44e5-9767-c41e0d3d3897', 'dfbd291c-f56e-48cf-81fa-2cc6210731a7', '6829c319-4a3b-4faa-b26f-b4484e016471', 1, 100.00, 1, '2024-02-11 22:26:22.909103');
INSERT INTO public.transaction VALUES ('667a02f2-79ac-4c18-a46c-96986e600cbe', 'dfbd291c-f56e-48cf-81fa-2cc6210731a7', '6829c319-4a3b-4faa-b26f-b4484e016471', 1, 100.00, 1, '2024-02-11 22:35:23.24237');
INSERT INTO public.transaction VALUES ('b6859bd2-62fe-4dcf-85f5-b374085c048c', 'dfbd291c-f56e-48cf-81fa-2cc6210731a7', '6829c319-4a3b-4faa-b26f-b4484e016471', 1, 100.00, 1, '2024-02-11 22:37:22.265262');
INSERT INTO public.transaction VALUES ('c4033714-39fa-4c96-8254-3e4f8112a28d', 'dfbd291c-f56e-48cf-81fa-2cc6210731a7', '6829c319-4a3b-4faa-b26f-b4484e016471', 1, 100.00, 1, '2024-02-11 22:38:42.905317');
INSERT INTO public.transaction VALUES ('ac27d368-e8eb-49fc-a6b2-a745fdd94afd', 'dfbd291c-f56e-48cf-81fa-2cc6210731a7', '6829c319-4a3b-4faa-b26f-b4484e016471', 1, 100.00, 1, '2024-02-11 22:43:15.715363');
INSERT INTO public.transaction VALUES ('dda982da-f9b2-4d7f-b556-245eb47a89f5', 'dfbd291c-f56e-48cf-81fa-2cc6210731a7', '6829c319-4a3b-4faa-b26f-b4484e016471', 1, 100.00, 1, '2024-02-11 22:43:53.321362');
INSERT INTO public.transaction VALUES ('ff8dab1d-c07b-43f9-b8f6-f25b38033d1f', 'dfbd291c-f56e-48cf-81fa-2cc6210731a7', '6829c319-4a3b-4faa-b26f-b4484e016471', 1, 100.00, 1, '2024-02-11 22:49:34.631002');
INSERT INTO public.transaction VALUES ('2f2fb14d-e21a-440e-bf81-593f59144afc', 'dfbd291c-f56e-48cf-81fa-2cc6210731a7', '6829c319-4a3b-4faa-b26f-b4484e016471', 1, 100.00, 1, '2024-02-11 22:52:40.748174');
INSERT INTO public.transaction VALUES ('8b21f88e-69da-4a88-8c66-c42d9aaa0582', 'dfbd291c-f56e-48cf-81fa-2cc6210731a7', '6829c319-4a3b-4faa-b26f-b4484e016471', 1, 100.00, 1, '2024-02-11 22:53:30.872911');
INSERT INTO public.transaction VALUES ('7a7597c5-58e2-4838-b1d3-d0aeee5619de', 'dfbd291c-f56e-48cf-81fa-2cc6210731a7', '6829c319-4a3b-4faa-b26f-b4484e016471', 1, 100.00, 1, '2024-02-11 22:53:36.151024');
INSERT INTO public.transaction VALUES ('e46029e8-d11b-472e-b36a-126c5d7807a7', 'dfbd291c-f56e-48cf-81fa-2cc6210731a7', '6829c319-4a3b-4faa-b26f-b4484e016471', 1, 100.00, 1, '2024-02-11 22:56:57.602066');
INSERT INTO public.transaction VALUES ('eeac55a5-1d7f-4bde-a2f3-041c63d30eb5', 'dfbd291c-f56e-48cf-81fa-2cc6210731a7', '6829c319-4a3b-4faa-b26f-b4484e016471', 1, 100.00, 1, '2024-02-11 23:01:55.576464');
INSERT INTO public.transaction VALUES ('3edbc9be-575f-457a-b622-0544158cdef6', 'dfbd291c-f56e-48cf-81fa-2cc6210731a7', '6829c319-4a3b-4faa-b26f-b4484e016471', 1, 100.00, 1, '2024-02-11 23:02:07.379758');
INSERT INTO public.transaction VALUES ('0b0ca283-9fb4-4d89-9b1b-8917b31b125c', 'dfbd291c-f56e-48cf-81fa-2cc6210731a7', '6829c319-4a3b-4faa-b26f-b4484e016471', 1, 100.00, 1, '2024-02-11 23:03:25.713172');
INSERT INTO public.transaction VALUES ('a9781e53-4a80-441d-9137-a8f44200cdff', 'dfbd291c-f56e-48cf-81fa-2cc6210731a7', '6829c319-4a3b-4faa-b26f-b4484e016471', 1, 100.00, 1, '2024-02-11 23:05:25.903278');
INSERT INTO public.transaction VALUES ('73be96b1-4f2d-4eb8-bf72-fa93ae681998', 'dfbd291c-f56e-48cf-81fa-2cc6210731a7', '6829c319-4a3b-4faa-b26f-b4484e016471', 1, 100.00, 1, '2024-02-11 23:06:02.940794');
INSERT INTO public.transaction VALUES ('f5c5f5d4-b2f8-47f8-88be-5bf74dd5520f', 'dfbd291c-f56e-48cf-81fa-2cc6210731a7', '6829c319-4a3b-4faa-b26f-b4484e016471', 1, 100.00, 1, '2024-02-11 23:07:26.117874');
INSERT INTO public.transaction VALUES ('a8ce459c-3ed8-4f14-9bf4-64d23017cfdf', 'dfbd291c-f56e-48cf-81fa-2cc6210731a7', '6829c319-4a3b-4faa-b26f-b4484e016471', 1, 100.00, 1, '2024-02-11 23:08:59.707739');
INSERT INTO public.transaction VALUES ('47b41c40-e42c-4524-aa43-e24f85d88791', 'dfbd291c-f56e-48cf-81fa-2cc6210731a7', '6829c319-4a3b-4faa-b26f-b4484e016471', 1, 100.00, 1, '2024-02-11 23:09:58.051903');
INSERT INTO public.transaction VALUES ('94eb587e-0ed6-45a7-ac91-f015cf7160c5', 'dfbd291c-f56e-48cf-81fa-2cc6210731a7', '6829c319-4a3b-4faa-b26f-b4484e016471', 1, 100.00, 1, '2024-02-11 23:13:46.251218');
INSERT INTO public.transaction VALUES ('6d4d9c38-b80a-487d-9bd2-53cf5d528d94', 'dfbd291c-f56e-48cf-81fa-2cc6210731a7', '6829c319-4a3b-4faa-b26f-b4484e016471', 1, 100.00, 1, '2024-02-11 23:18:24.597774');
INSERT INTO public.transaction VALUES ('f9c1ce04-d7be-491d-9e98-f4fd2532eb12', 'dfbd291c-f56e-48cf-81fa-2cc6210731a7', '6829c319-4a3b-4faa-b26f-b4484e016471', 1, 100.00, 1, '2024-02-11 23:20:34.816905');
INSERT INTO public.transaction VALUES ('cce1e816-2392-4724-b78e-42c66097f064', 'dfbd291c-f56e-48cf-81fa-2cc6210731a7', '6829c319-4a3b-4faa-b26f-b4484e016471', 1, 1000.00, 1, '2024-02-11 23:26:50.866395');
INSERT INTO public.transaction VALUES ('e5c7b050-b1db-487d-bb98-9db048483d21', 'dfbd291c-f56e-48cf-81fa-2cc6210731a7', '6829c319-4a3b-4faa-b26f-b4484e016471', 1, 1000.00, 1, '2024-02-11 23:27:20.599743');
INSERT INTO public.transaction VALUES ('98da3022-81bd-4428-af05-64777e6d1718', 'dfbd291c-f56e-48cf-81fa-2cc6210731a7', '6829c319-4a3b-4faa-b26f-b4484e016471', 1, 1000.00, 1, '2024-02-11 23:28:18.412885');
INSERT INTO public.transaction VALUES ('e5364b28-a459-4a7b-ba75-5558eb551085', 'dfbd291c-f56e-48cf-81fa-2cc6210731a7', '6829c319-4a3b-4faa-b26f-b4484e016471', 1, 2000.00, 1, '2024-02-11 23:28:40.361412');
INSERT INTO public.transaction VALUES ('b7a98e92-a69e-40eb-a6a9-8495d27800ca', 'dfbd291c-f56e-48cf-81fa-2cc6210731a7', '6829c319-4a3b-4faa-b26f-b4484e016471', 1, 2000.00, 1, '2024-02-11 23:30:54.211619');
INSERT INTO public.transaction VALUES ('24fd56cf-c300-4c0f-8e97-0ae3b956d10a', 'dfbd291c-f56e-48cf-81fa-2cc6210731a7', '6829c319-4a3b-4faa-b26f-b4484e016471', 1, 1500.00, 1, '2024-02-11 23:33:48.930617');
INSERT INTO public.transaction VALUES ('f87c9aae-7982-4aa7-85b1-ba00f18d8d0a', 'dfbd291c-f56e-48cf-81fa-2cc6210731a7', '6829c319-4a3b-4faa-b26f-b4484e016471', 1, 1500.00, 1, '2024-02-11 23:38:03.651621');
INSERT INTO public.transaction VALUES ('b76ebe41-cbfe-4230-abfd-215bb222edce', 'dfbd291c-f56e-48cf-81fa-2cc6210731a7', '6829c319-4a3b-4faa-b26f-b4484e016471', 1, 1500.00, 1, '2024-02-11 23:38:51.897397');
INSERT INTO public.transaction VALUES ('54235ec0-101e-4e74-bbf6-d6536ba8592c', 'dfbd291c-f56e-48cf-81fa-2cc6210731a7', '6829c319-4a3b-4faa-b26f-b4484e016471', 1, 100.00, 1, '2024-02-12 01:34:05.595612');
INSERT INTO public.transaction VALUES ('1e1bc37d-3659-46f7-b1fd-bfad7af723f5', 'dfbd291c-f56e-48cf-81fa-2cc6210731a7', '6829c319-4a3b-4faa-b26f-b4484e016471', 1, 100.00, 1, '2024-02-12 01:34:56.651085');
INSERT INTO public.transaction VALUES ('0c3c38e3-4fac-4a47-9355-8f96bd173f2f', 'dfbd291c-f56e-48cf-81fa-2cc6210731a7', '6829c319-4a3b-4faa-b26f-b4484e016471', 1, 100.00, 1, '2024-02-12 01:37:03.015195');
INSERT INTO public.transaction VALUES ('609a2cee-4f3e-4c77-b6a4-00352c79ee54', 'dfbd291c-f56e-48cf-81fa-2cc6210731a7', '6829c319-4a3b-4faa-b26f-b4484e016471', 1, 100.00, 1, '2024-02-12 01:39:19.588836');
INSERT INTO public.transaction VALUES ('5857026c-6836-4b71-9aba-bd69239e3d64', 'dfbd291c-f56e-48cf-81fa-2cc6210731a7', '6829c319-4a3b-4faa-b26f-b4484e016471', 1, 100.00, 2, '2024-02-12 01:40:16.025663');
INSERT INTO public.transaction VALUES ('ccf6445d-33aa-4c07-9124-f3bcd5d32b35', 'dfbd291c-f56e-48cf-81fa-2cc6210731a7', '6829c319-4a3b-4faa-b26f-b4484e016471', 1, 200.00, 2, '2024-02-12 01:41:45.112094');
INSERT INTO public.transaction VALUES ('686d6207-2f70-4c4e-8da5-0e174a20a9d4', 'dfbd291c-f56e-48cf-81fa-2cc6210731a7', '6829c319-4a3b-4faa-b26f-b4484e016471', 1, 3000.00, 3, '2024-02-12 01:42:48.045832');
INSERT INTO public.transaction VALUES ('d7fbd3aa-49b1-4dfe-85c5-3542a8758791', 'dfbd291c-f56e-48cf-81fa-2cc6210731a7', '6829c319-4a3b-4faa-b26f-b4484e016471', 1, 3000.00, 1, '2024-02-12 01:50:13.116059');
INSERT INTO public.transaction VALUES ('1f4ab17b-8548-4b76-a7fd-c94fc0b95b77', 'a6e54810-8e4a-4a92-9d4b-8b299c4e93c1', 'f4d9ef39-730e-4790-b73a-7e66f1d0f70c', 1, 100.50, 2, '2024-02-11 20:11:04.631272');


                                                                                                                                                                                                                                                                                                                                                  3363.dat                                                                                            0000600 0004000 0002000 00000000273 14562275723 0014267 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        INSERT INTO public.transaction_status VALUES (1, 'pending');
INSERT INTO public.transaction_status VALUES (2, 'approved');
INSERT INTO public.transaction_status VALUES (3, 'rejected');


                                                                                                                                                                                                                                                                                                                                     3364.dat                                                                                            0000600 0004000 0002000 00000000324 14562275723 0014265 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        INSERT INTO public.transaction_type VALUES (1, 'transaction_type_1');
INSERT INTO public.transaction_type VALUES (2, 'transaction_type_2');
INSERT INTO public.transaction_type VALUES (3, 'transaction_type_3');


                                                                                                                                                                                                                                                                                                            restore.sql                                                                                         0000600 0004000 0002000 00000004044 14562275723 0015403 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        --
-- NOTE:
--
-- File paths need to be edited. Search for $$PATH$$ and
-- replace it with the path to the directory containing
-- the extracted data files.
--
--
-- PostgreSQL database dump
--

-- Dumped from database version 14.10 (Debian 14.10-1.pgdg120+1)
-- Dumped by pg_dump version 16.0

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'SQL_ASCII';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE "app-nodejs-codechallenge";
--
-- Name: app-nodejs-codechallenge; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE "app-nodejs-codechallenge" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.utf8';


ALTER DATABASE "app-nodejs-codechallenge" OWNER TO postgres;

\connect -reuse-previous=on "dbname='app-nodejs-codechallenge'"

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'SQL_ASCII';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: transaction; Type: TABLE DATA; Schema: public; Owner: postgres
--

\i $$PATH$$/3362.dat

--
-- Data for Name: transaction_status; Type: TABLE DATA; Schema: public; Owner: postgres
--

\i $$PATH$$/3363.dat

--
-- Data for Name: transaction_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

\i $$PATH$$/3364.dat

--
-- Name: transactionstatus_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.transactionstatus_id_seq', 3, true);


--
-- Name: transactiontype_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.transactiontype_id_seq', 3, true);


--
-- PostgreSQL database dump complete
--

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            