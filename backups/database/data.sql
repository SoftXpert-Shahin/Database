SET session_replication_role = replica;

--
-- PostgreSQL database dump
--

-- \restrict ayp4jdluco1p36FrFPdkveTt6vEDv9uOroxImjujucdgx6cDkKZfEf3Vy9h7GXy

-- Dumped from database version 17.6
-- Dumped by pg_dump version 17.6

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

--
-- Data for Name: audit_log_entries; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."audit_log_entries" ("instance_id", "id", "payload", "created_at", "ip_address") FROM stdin;
\.


--
-- Data for Name: custom_oauth_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."custom_oauth_providers" ("id", "provider_type", "identifier", "name", "client_id", "client_secret", "acceptable_client_ids", "scopes", "pkce_enabled", "attribute_mapping", "authorization_params", "enabled", "email_optional", "issuer", "discovery_url", "skip_nonce_check", "cached_discovery", "discovery_cached_at", "authorization_url", "token_url", "userinfo_url", "jwks_uri", "created_at", "updated_at", "custom_claims_allowlist") FROM stdin;
\.


--
-- Data for Name: flow_state; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."flow_state" ("id", "user_id", "auth_code", "code_challenge_method", "code_challenge", "provider_type", "provider_access_token", "provider_refresh_token", "created_at", "updated_at", "authentication_method", "auth_code_issued_at", "invite_token", "referrer", "oauth_client_state_id", "linking_target_id", "email_optional") FROM stdin;
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."users" ("instance_id", "id", "aud", "role", "email", "encrypted_password", "email_confirmed_at", "invited_at", "confirmation_token", "confirmation_sent_at", "recovery_token", "recovery_sent_at", "email_change_token_new", "email_change", "email_change_sent_at", "last_sign_in_at", "raw_app_meta_data", "raw_user_meta_data", "is_super_admin", "created_at", "updated_at", "phone", "phone_confirmed_at", "phone_change", "phone_change_token", "phone_change_sent_at", "email_change_token_current", "email_change_confirm_status", "banned_until", "reauthentication_token", "reauthentication_sent_at", "is_sso_user", "deleted_at", "is_anonymous") FROM stdin;
00000000-0000-0000-0000-000000000000	ea1e230b-cfd2-4ec8-9baa-4fa23a992dca	authenticated	authenticated	d1@gmail.com	$2a$10$NC9ahth2rYLY.gDocnsuWeQBl.cp2jNrqav.IN8dERoZ8ttH.wvGC	2026-07-01 16:25:08.899236+00	\N		\N		\N			\N	2026-07-23 22:05:35.524098+00	{"provider": "email", "providers": ["email"]}	{"sub": "ea1e230b-cfd2-4ec8-9baa-4fa23a992dca", "email": "d1@gmail.com", "email_verified": true, "phone_verified": false}	\N	2026-07-01 16:25:08.875478+00	2026-07-23 22:05:35.583771+00	\N	\N			\N		0	\N		\N	f	\N	f
00000000-0000-0000-0000-000000000000	1a3dd5cc-a943-45cd-a925-69df114aa14f	authenticated	authenticated	driver@gmail.com	$2a$10$31.Et0aR2LYFAfOVEYc3oOCpI0GINSL557b/TerSb7SNuPDyc/yaa	2026-07-01 12:27:40.914884+00	\N		\N		\N			\N	2026-08-02 04:47:55.014052+00	{"provider": "email", "providers": ["email"]}	{"sub": "1a3dd5cc-a943-45cd-a925-69df114aa14f", "email": "driver@gmail.com", "email_verified": true, "phone_verified": false}	\N	2026-07-01 12:27:40.875321+00	2026-08-02 04:47:55.024084+00	\N	\N			\N		0	\N		\N	f	\N	f
00000000-0000-0000-0000-000000000000	be0af516-46a2-4c9c-84c7-9b71e5de5359	authenticated	authenticated	githubshahin@gmail.com	$2a$10$3BvuS2ITk38mQfdlhlYRPOrf//TQMH5AtPvK4y7/7qC2P8yiIBSF6	2026-07-25 06:35:39.974506+00	\N		\N		\N			\N	2026-08-03 15:29:51.252471+00	{"provider": "email", "providers": ["email"]}	{"email_verified": true}	\N	2026-07-25 06:35:39.938066+00	2026-08-03 15:29:51.280553+00	\N	\N			\N		0	\N		\N	f	\N	f
00000000-0000-0000-0000-000000000000	a0e1b020-b22d-4317-bef9-94a69c1f2c15	authenticated	authenticated	c2@gmail.com	$2a$10$DYd6Bsduoqh6LUzJZe.YL.LeGP8a/sR.LoeMbP/ru8T0wDNlJZKJS	2026-07-01 12:51:32.30209+00	\N		\N		\N			\N	2026-08-03 00:45:46.99784+00	{"provider": "email", "providers": ["email"]}	{"sub": "a0e1b020-b22d-4317-bef9-94a69c1f2c15", "email": "c2@gmail.com", "email_verified": true, "phone_verified": false}	\N	2026-07-01 12:51:32.255094+00	2026-08-03 00:45:47.073757+00	\N	\N			\N		0	\N		\N	f	\N	f
00000000-0000-0000-0000-000000000000	79241b9e-03fe-4877-898e-433446dfa5cf	authenticated	authenticated	c3@gmail.com	$2a$10$G9lAO/WKZGwiXtHvg2gWwOEqXKmNDo03vtQ/yj9IxyS7tUZHH9bPa	2026-07-14 12:09:43.756611+00	\N		\N		\N			\N	2026-07-14 12:09:43.766252+00	{"provider": "email", "providers": ["email"]}	{"sub": "79241b9e-03fe-4877-898e-433446dfa5cf", "email": "c3@gmail.com", "email_verified": true, "phone_verified": false}	\N	2026-07-14 12:09:43.730694+00	2026-07-14 12:09:43.772602+00	\N	\N			\N		0	\N		\N	f	\N	f
00000000-0000-0000-0000-000000000000	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	authenticated	authenticated	customer@gmaill.com	$2a$10$2Miy2A0NzAkot7g7JX/8nejdcOtShQlZoSi8ULLelKCI9fK4/6.Aa	2026-06-29 15:06:34.847934+00	\N		\N		\N			\N	2026-08-04 06:24:20.253125+00	{"provider": "email", "providers": ["email"]}	{"sub": "2bdad9f6-3bc3-4ca2-b485-80f6421659d2", "email": "customer@gmaill.com", "email_verified": true, "phone_verified": false}	\N	2026-06-29 15:06:34.827878+00	2026-08-04 06:24:20.301466+00	\N	\N			\N		0	\N		\N	f	\N	f
00000000-0000-0000-0000-000000000000	97e8054c-1a52-47df-b50c-eade857c1867	authenticated	authenticated	c9@gmail.com	$2a$10$vs8d12.JMSoaftKJGK0BMeifYwbGE9M9ul/ISpnzGp0nw.vd6LEzC	2026-07-17 18:26:01.633468+00	\N		\N		\N			\N	2026-07-17 18:26:01.645935+00	{"provider": "email", "providers": ["email"]}	{"sub": "97e8054c-1a52-47df-b50c-eade857c1867", "email": "c9@gmail.com", "email_verified": true, "phone_verified": false}	\N	2026-07-17 18:26:01.591174+00	2026-07-17 18:26:01.651708+00	\N	\N			\N		0	\N		\N	f	\N	f
00000000-0000-0000-0000-000000000000	a9c43137-d6ed-40bb-9e2d-269169b8656e	authenticated	authenticated	shahinforcoc@youpmail.com	$2a$10$U8DczFOL2UUv6jPsdziWtOMrM3OEubPPjwvL2qHs6VzYnS/8dEri6	2026-06-28 16:59:04.366003+00	\N		\N		\N			\N	2026-06-29 07:15:38.282591+00	{"provider": "email", "providers": ["email"]}	{"sub": "a9c43137-d6ed-40bb-9e2d-269169b8656e", "email": "shahinforcoc@youpmail.com", "email_verified": true, "phone_verified": false}	\N	2026-06-28 16:59:04.345175+00	2026-06-29 15:42:57.875381+00	\N	\N			\N		0	\N		\N	f	\N	f
00000000-0000-0000-0000-000000000000	0c7540e4-69f1-4d46-98b3-3577b0e15162	authenticated	authenticated	techno@gmail.com	$2a$10$2uNwcCMOhneYIYBywMTupe.SHpbeQA8MxXKNQK7GADDslK9.Zb2pS	2026-06-29 06:08:43.627634+00	\N		\N		\N			\N	2026-07-20 10:39:40.832803+00	{"provider": "email", "providers": ["email"]}	{"sub": "0c7540e4-69f1-4d46-98b3-3577b0e15162", "email": "techno@gmail.com", "email_verified": true, "phone_verified": false}	\N	2026-06-29 06:08:43.602815+00	2026-07-20 10:39:40.869584+00	\N	\N			\N		0	\N		\N	f	\N	f
00000000-0000-0000-0000-000000000000	dd5b6be3-bf04-4cee-a971-911aa8dd9f9e	authenticated	authenticated	c11@gmail.com	$2a$10$.2wZl6I/JVCNpzf0dzJXjevN9tdh5oaxKutxs2.myQBXhsdKg8Elq	2026-08-01 07:19:29.41627+00	\N		\N		\N			\N	2026-08-01 09:21:05.530288+00	{"provider": "email", "providers": ["email"]}	{"sub": "dd5b6be3-bf04-4cee-a971-911aa8dd9f9e", "email": "c11@gmail.com", "email_verified": true, "phone_verified": false}	\N	2026-08-01 07:19:29.344556+00	2026-08-01 09:21:05.55914+00	\N	\N			\N		0	\N		\N	f	\N	f
00000000-0000-0000-0000-000000000000	d1eb281c-c2e1-441e-b40d-08a35776bdb4	authenticated	authenticated	musa@gmail.com	$2a$10$Pz0VRTR11IlWVQdHgdkcauDcW2mSKBRd0tJlceVQ0i2rJPMWc43XG	2026-06-29 16:15:15.655923+00	\N		\N		\N			\N	2026-06-29 16:15:15.663737+00	{"provider": "email", "providers": ["email"]}	{"sub": "d1eb281c-c2e1-441e-b40d-08a35776bdb4", "email": "musa@gmail.com", "email_verified": true, "phone_verified": false}	\N	2026-06-29 16:15:15.613139+00	2026-06-29 16:15:15.669411+00	\N	\N			\N		0	\N		\N	f	\N	f
00000000-0000-0000-0000-000000000000	8cca0a73-02bf-4262-9071-6ca4356c4566	authenticated	authenticated	javashahin@gmail.com	$2a$10$BNYHhPu0vLpoEHihQAdELuSEvWgUrp4AWqru7.7Jpx1EMEcVX8rxu	2026-06-28 16:46:55.278723+00	\N		\N		\N			\N	2026-06-28 16:46:55.286458+00	{"provider": "email", "providers": ["email"]}	{"sub": "8cca0a73-02bf-4262-9071-6ca4356c4566", "email": "javashahin@gmail.com", "email_verified": true, "phone_verified": false}	\N	2026-06-28 16:46:55.243026+00	2026-06-28 16:46:55.291598+00	\N	\N			\N		0	\N		\N	f	\N	f
00000000-0000-0000-0000-000000000000	fed16cd3-2673-4355-ac94-a3289224ab6d	authenticated	authenticated	d5@gmail.com	$2a$10$Do3y/RcymuD4ld3W1JZoYu1u2kYF8qvERxUy8s/XCfMRmXRQplDEy	2026-07-17 05:42:57.149035+00	\N		\N		\N			\N	2026-07-30 10:13:18.908435+00	{"provider": "email", "providers": ["email"]}	{"sub": "fed16cd3-2673-4355-ac94-a3289224ab6d", "email": "d5@gmail.com", "email_verified": true, "phone_verified": false}	\N	2026-07-17 05:42:57.131925+00	2026-07-30 10:13:18.976046+00	\N	\N			\N		0	\N		\N	f	\N	f
00000000-0000-0000-0000-000000000000	144d9b83-f3be-448f-b678-c711c76e513c	authenticated	authenticated	ru@gmail.com	$2a$10$zuVvZCuk.SO/UA459.Bcu.b47IYvGS51ASWCghX2nACUV3uPrF64O	2026-07-16 16:22:29.060091+00	\N		\N		\N			\N	2026-07-16 16:22:29.068952+00	{"provider": "email", "providers": ["email"]}	{"sub": "144d9b83-f3be-448f-b678-c711c76e513c", "email": "ru@gmail.com", "email_verified": true, "phone_verified": false}	\N	2026-07-16 16:22:29.027086+00	2026-07-16 16:22:29.080496+00	\N	\N			\N		0	\N		\N	f	\N	f
00000000-0000-0000-0000-000000000000	64e9dbfa-539b-4ec6-87c1-bb8dc93c40af	authenticated	authenticated	d@gmail.com	$2a$10$DwVYs6Jv2nMaqPE9Rm7zwu7g7hABj0h7i4M9W74hFgIqBTLNzfZD6	2026-07-17 05:41:20.772327+00	\N		\N		\N			\N	2026-07-17 05:41:20.781802+00	{"provider": "email", "providers": ["email"]}	{"sub": "64e9dbfa-539b-4ec6-87c1-bb8dc93c40af", "email": "d@gmail.com", "email_verified": true, "phone_verified": false}	\N	2026-07-17 05:41:20.714606+00	2026-07-17 05:41:20.819441+00	\N	\N			\N		0	\N		\N	f	\N	f
00000000-0000-0000-0000-000000000000	3a101d58-5bd6-4e53-844b-5c4672b8ae8e	authenticated	authenticated	test@gmail.com	$2a$10$AIpiJEhE9s2dIeCeTb6nWeY1XeRlmLf6w4G2cTJcYsIORvCfKe7jG	2026-07-25 13:56:50.522268+00	\N		\N		\N			\N	2026-07-25 13:56:50.533735+00	{"provider": "email", "providers": ["email"]}	{"sub": "3a101d58-5bd6-4e53-844b-5c4672b8ae8e", "email": "test@gmail.com", "email_verified": true, "phone_verified": false}	\N	2026-07-25 13:56:50.481137+00	2026-07-25 13:56:50.541506+00	\N	\N			\N		0	\N		\N	f	\N	f
00000000-0000-0000-0000-000000000000	b8040d5d-d4e6-4f7e-9993-79c75b64effd	authenticated	authenticated	d18@gmail.com	$2a$10$FhPsWBRlUs04rhr5onvpROb0sGuRlwbYzV6wD7lsyeqA4nFU5XWQe	2026-08-01 13:45:45.806518+00	\N		\N		\N			\N	2026-08-01 13:45:45.817418+00	{"provider": "email", "providers": ["email"]}	{"sub": "b8040d5d-d4e6-4f7e-9993-79c75b64effd", "email": "d18@gmail.com", "email_verified": true, "phone_verified": false}	\N	2026-08-01 13:45:45.730758+00	2026-08-01 13:45:45.863913+00	\N	\N			\N		0	\N		\N	f	\N	f
00000000-0000-0000-0000-000000000000	bc4d5c79-829d-4b7e-9aaf-936294358391	authenticated	authenticated	musa1@gmail.com	$2a$10$hEeTsdW5kv6yR0SVTbNSOuGlJhOx11xCgOVNfIw.zy9E90rEUPHAO	2026-07-27 17:54:08.47252+00	\N		\N		\N			\N	2026-07-27 18:02:20.879699+00	{"provider": "email", "providers": ["email"]}	{"sub": "bc4d5c79-829d-4b7e-9aaf-936294358391", "email": "musa1@gmail.com", "email_verified": true, "phone_verified": false}	\N	2026-07-27 17:54:08.405462+00	2026-07-27 18:02:20.89428+00	\N	\N			\N		0	\N		\N	f	\N	f
00000000-0000-0000-0000-000000000000	29165c98-def8-44ed-b27e-6a9d1681f643	authenticated	authenticated	d27@gmail.com	$2a$10$2WAfTqoI5hLpWkk5qEEJu.ekIttJOj9bCIxOcXudrUweSY50nnPm.	2026-08-01 14:33:31.735698+00	\N		\N		\N			\N	2026-08-01 14:33:31.740502+00	{"provider": "email", "providers": ["email"]}	{"sub": "29165c98-def8-44ed-b27e-6a9d1681f643", "email": "d27@gmail.com", "email_verified": true, "phone_verified": false}	\N	2026-08-01 14:33:31.70754+00	2026-08-01 14:33:31.750686+00	\N	\N			\N		0	\N		\N	f	\N	f
00000000-0000-0000-0000-000000000000	9a807262-a129-4053-8cd6-c0d92c387094	authenticated	authenticated	c34@gmail.com	$2a$10$OwDjAklYhcNMQfSivW4gE.awyNDk2vGaisM6/2m0CKltOJpf2IYM6	2026-08-01 14:56:54.711028+00	\N		\N		\N			\N	2026-08-01 14:56:54.713886+00	{"provider": "email", "providers": ["email"]}	{"sub": "9a807262-a129-4053-8cd6-c0d92c387094", "email": "c34@gmail.com", "email_verified": true, "phone_verified": false}	\N	2026-08-01 14:56:54.700769+00	2026-08-01 14:56:54.720091+00	\N	\N			\N		0	\N		\N	f	\N	f
00000000-0000-0000-0000-000000000000	aa4cd01d-7077-473c-b9bc-3510e1c98bde	authenticated	authenticated	testt@gmail.com	$2a$10$vqINLvf7L.KrXdvUBLZe5OrZ1q8XUjL4z8j53Y2VbZD6ZYPQ818Nq	2026-07-25 13:58:01.892854+00	\N		\N		\N			\N	2026-07-25 13:58:01.89687+00	{"provider": "email", "providers": ["email"]}	{"sub": "aa4cd01d-7077-473c-b9bc-3510e1c98bde", "email": "testt@gmail.com", "email_verified": true, "phone_verified": false}	\N	2026-07-25 13:58:01.871549+00	2026-07-25 13:58:01.905208+00	\N	\N			\N		0	\N		\N	f	\N	f
00000000-0000-0000-0000-000000000000	815d2073-a11d-46e6-b9df-7f4c5c76b2aa	authenticated	authenticated	31@customer.com	$2a$10$jQtS2L6KF5M9Vmnlr2EeQ.WUZFWHRJQBisq/8fxleGOtU.tugAEDW	2026-07-31 10:55:09.566967+00	\N		\N		\N			\N	2026-07-31 12:01:36.405163+00	{"provider": "email", "providers": ["email"]}	{"sub": "815d2073-a11d-46e6-b9df-7f4c5c76b2aa", "email": "31@customer.com", "email_verified": true, "phone_verified": false}	\N	2026-07-31 10:55:09.510147+00	2026-07-31 12:01:36.416489+00	\N	\N			\N		0	\N		\N	f	\N	f
00000000-0000-0000-0000-000000000000	82354dcd-3fe9-42d6-8e76-f344db116242	authenticated	authenticated	c42@gmail.com	$2a$10$BQViHZfg.2M7oCLsZ36KfO73BF94LH8aM433oHAo4F2XuO.0SI11G	2026-08-02 04:46:24.365883+00	\N		\N		\N			\N	2026-08-02 04:54:31.0168+00	{"provider": "email", "providers": ["email"]}	{"sub": "82354dcd-3fe9-42d6-8e76-f344db116242", "email": "c42@gmail.com", "email_verified": true, "phone_verified": false}	\N	2026-08-02 04:46:24.329018+00	2026-08-02 04:54:31.026418+00	\N	\N			\N		0	\N		\N	f	\N	f
00000000-0000-0000-0000-000000000000	876bad8f-4d46-488f-abb9-7779ccede40b	authenticated	authenticated	c10@gmailm.com	$2a$10$V2iD0u1gNrlOgV4mdQ5tA.JD0tSJR6QpbtQVCGiLWDWxa/y7RENSm	2026-07-31 17:18:30.014338+00	\N		\N		\N			\N	2026-07-31 17:18:30.022789+00	{"provider": "email", "providers": ["email"]}	{"sub": "876bad8f-4d46-488f-abb9-7779ccede40b", "email": "c10@gmailm.com", "email_verified": true, "phone_verified": false}	\N	2026-07-31 17:18:29.956869+00	2026-07-31 17:18:30.062813+00	\N	\N			\N		0	\N		\N	f	\N	f
00000000-0000-0000-0000-000000000000	31377f7c-5eff-4de0-bcec-dae997ff9ac6	authenticated	authenticated	d10@gmail.com	$2a$10$CkBRZgtCRoOYVARVmMTjt.EYH/Doem4EsvNVXe951K0G4sk.Yz/pa	2026-07-31 17:19:59.775937+00	\N		\N		\N			\N	2026-07-31 17:19:59.780216+00	{"provider": "email", "providers": ["email"]}	{"sub": "31377f7c-5eff-4de0-bcec-dae997ff9ac6", "email": "d10@gmail.com", "email_verified": true, "phone_verified": false}	\N	2026-07-31 17:19:59.762544+00	2026-07-31 17:19:59.784902+00	\N	\N			\N		0	\N		\N	f	\N	f
00000000-0000-0000-0000-000000000000	133f926c-a98c-4b27-9ff7-e6c0cf0bec18	authenticated	authenticated	31@driver.com	$2a$10$7RAgEuw43feI7dCdmcRH6e6oQ61C4ySer9SZPZE.8Ij8OjUN.HUN6	2026-07-31 10:57:30.505336+00	\N		\N		\N			\N	2026-08-01 03:58:14.051355+00	{"provider": "email", "providers": ["email"]}	{"sub": "133f926c-a98c-4b27-9ff7-e6c0cf0bec18", "email": "31@driver.com", "email_verified": true, "phone_verified": false}	\N	2026-07-31 10:57:30.481436+00	2026-08-01 03:58:14.10191+00	\N	\N			\N		0	\N		\N	f	\N	f
00000000-0000-0000-0000-000000000000	708c6c50-1770-4e04-a50c-d7b9f7c28255	authenticated	authenticated	d12@gmail.com	$2a$10$M7r9fM3P30WglLm0e88lFOvf2KrUpn/s5Jfc2i3kJzs3/aOxWUnAC	2026-08-01 09:18:28.630466+00	\N		\N		\N			\N	2026-08-01 09:19:30.16314+00	{"provider": "email", "providers": ["email"]}	{"sub": "708c6c50-1770-4e04-a50c-d7b9f7c28255", "email": "d12@gmail.com", "email_verified": true, "phone_verified": false}	\N	2026-08-01 09:18:28.606305+00	2026-08-01 09:19:30.181729+00	\N	\N			\N		0	\N		\N	f	\N	f
00000000-0000-0000-0000-000000000000	891825d4-0f9f-4db8-8c18-1ecb3a94f12f	authenticated	authenticated	c12@gmail.com	$2a$10$T5YOXrM82dlzD6GnCmmNDObaUZbLhfffp8sDU7weq.gRZVXHD2n.i	2026-08-01 09:16:26.405405+00	\N		\N		\N			\N	2026-08-01 09:16:26.41971+00	{"provider": "email", "providers": ["email"]}	{"sub": "891825d4-0f9f-4db8-8c18-1ecb3a94f12f", "email": "c12@gmail.com", "email_verified": true, "phone_verified": false}	\N	2026-08-01 09:16:26.328502+00	2026-08-01 09:16:26.467492+00	\N	\N			\N		0	\N		\N	f	\N	f
00000000-0000-0000-0000-000000000000	24701573-d709-4acc-8858-6c96e5e79533	authenticated	authenticated	d11@gmail.com	$2a$10$6aKnGC9Zdp5qkT0wWwjF7Oely5TS43pwnl.G1m0WMdD./OO.mZx4m	2026-08-01 07:21:03.019934+00	\N		\N		\N			\N	2026-08-01 09:20:46.415891+00	{"provider": "email", "providers": ["email"]}	{"sub": "24701573-d709-4acc-8858-6c96e5e79533", "email": "d11@gmail.com", "email_verified": true, "phone_verified": false}	\N	2026-08-01 07:21:03.005366+00	2026-08-01 09:20:46.430309+00	\N	\N			\N		0	\N		\N	f	\N	f
00000000-0000-0000-0000-000000000000	0d6d89c3-1444-49d9-a12e-9cea2a64bc34	authenticated	authenticated	d16@gmail.com	$2a$10$c6FDkdR33GC0to9x/O1kB.9BHfkbarDnjQ15fTPDhMEE8Mhx7i54e	2026-08-01 13:12:03.676589+00	\N		\N		\N			\N	2026-08-01 13:12:39.649762+00	{"provider": "email", "providers": ["email"]}	{"sub": "0d6d89c3-1444-49d9-a12e-9cea2a64bc34", "email": "d16@gmail.com", "email_verified": true, "phone_verified": false}	\N	2026-08-01 13:12:03.609415+00	2026-08-01 13:12:39.656435+00	\N	\N			\N		0	\N		\N	f	\N	f
00000000-0000-0000-0000-000000000000	5c4351bb-39c7-4ecc-80e7-731ea1b906d5	authenticated	authenticated	d13@gmail.com	$2a$10$XvMUIhfDFBjsUlf0pIwQBu6.XJyyj8qtjJwg3YBNBYntExY0DhDrW	2026-08-01 10:38:18.84101+00	\N		\N		\N			\N	2026-08-01 10:38:18.848506+00	{"provider": "email", "providers": ["email"]}	{"sub": "5c4351bb-39c7-4ecc-80e7-731ea1b906d5", "email": "d13@gmail.com", "email_verified": true, "phone_verified": false}	\N	2026-08-01 10:38:18.778164+00	2026-08-01 10:38:18.892809+00	\N	\N			\N		0	\N		\N	f	\N	f
00000000-0000-0000-0000-000000000000	f644e2bb-0ef0-4e69-94a5-6a1c59ced946	authenticated	authenticated	d14@gmail.com	$2a$10$LjC0N/ZmyFgGs/5GznOvz.jIdSe27Vubytvqnq1dglurzHd7oqsIa	2026-08-01 13:05:19.251971+00	\N		\N		\N			\N	2026-08-01 13:05:59.233901+00	{"provider": "email", "providers": ["email"]}	{"sub": "f644e2bb-0ef0-4e69-94a5-6a1c59ced946", "email": "d14@gmail.com", "email_verified": true, "phone_verified": false}	\N	2026-08-01 13:05:19.205275+00	2026-08-01 13:05:59.243633+00	\N	\N			\N		0	\N		\N	f	\N	f
00000000-0000-0000-0000-000000000000	b157280f-c991-4346-82b0-bc232487cdf2	authenticated	authenticated	d17@gmail.com	$2a$10$9AVuwmBWxkDRGj1VMzuYNO2b48a/OSLK7e8e/qnK.O2x37LqT87E.	2026-08-01 13:23:38.904861+00	\N		\N		\N			\N	2026-08-01 13:24:05.604953+00	{"provider": "email", "providers": ["email"]}	{"sub": "b157280f-c991-4346-82b0-bc232487cdf2", "role": "driver", "email": "d17@gmail.com", "email_verified": true, "phone_verified": false}	\N	2026-08-01 13:23:38.859467+00	2026-08-01 13:24:05.607825+00	\N	\N			\N		0	\N		\N	f	\N	f
00000000-0000-0000-0000-000000000000	aba25283-ef82-45e7-8942-6b851bff234d	authenticated	authenticated	d19@gmail.com	$2a$10$lyr6hAwh07loQADx4lX2CeBT92SNQjVEld/XNlp0ETDtwBj/mCgea	2026-08-01 13:49:14.683443+00	\N		\N		\N			\N	2026-08-01 13:49:14.691146+00	{"provider": "email", "providers": ["email"]}	{"sub": "aba25283-ef82-45e7-8942-6b851bff234d", "email": "d19@gmail.com", "email_verified": true, "phone_verified": false}	\N	2026-08-01 13:49:14.66511+00	2026-08-01 13:49:14.70303+00	\N	\N			\N		0	\N		\N	f	\N	f
00000000-0000-0000-0000-000000000000	b1eea694-233e-4f03-8e9d-0663d338a6f1	authenticated	authenticated	d37@gmail.com	$2a$10$xFbtlOWb/DPcq8qlonZ5sev/lYdZa94rlLCCDnG/zDfz6TELYTQKu	2026-08-01 15:00:09.032185+00	\N		\N		\N			\N	2026-08-01 15:00:09.038497+00	{"provider": "email", "providers": ["email"]}	{"sub": "b1eea694-233e-4f03-8e9d-0663d338a6f1", "email": "d37@gmail.com", "email_verified": true, "phone_verified": false}	\N	2026-08-01 15:00:09.011288+00	2026-08-01 15:00:09.050706+00	\N	\N			\N		0	\N		\N	f	\N	f
00000000-0000-0000-0000-000000000000	64d7d29c-3e63-4759-bf74-3b796ed70e5f	authenticated	authenticated	d28@gmail.com	$2a$10$YckizXIL5AQT9vq7wbMOs./HoBe458Jw0RQFX9fb/H2SwlarzLSeW	2026-08-01 14:35:16.564915+00	\N		\N		\N			\N	2026-08-01 14:37:34.574782+00	{"provider": "email", "providers": ["email"]}	{"sub": "64d7d29c-3e63-4759-bf74-3b796ed70e5f", "email": "d28@gmail.com", "email_verified": true, "phone_verified": false}	\N	2026-08-01 14:35:16.522975+00	2026-08-01 14:37:34.587753+00	\N	\N			\N		0	\N		\N	f	\N	f
00000000-0000-0000-0000-000000000000	ad9049ad-da91-4eef-9d1e-8359b35af82b	authenticated	authenticated	d42@gmail.com	$2a$10$Of3cSptr0dRXqksoxp7eKuARPgd3rQgNygnrnTUqqsTc2E6wYnaB6	2026-08-02 04:48:43.009629+00	\N		\N		\N			\N	2026-08-02 04:53:30.17721+00	{"provider": "email", "providers": ["email"]}	{"sub": "ad9049ad-da91-4eef-9d1e-8359b35af82b", "email": "d42@gmail.com", "email_verified": true, "phone_verified": false}	\N	2026-08-02 04:48:42.992824+00	2026-08-02 04:53:30.194925+00	\N	\N			\N		0	\N		\N	f	\N	f
00000000-0000-0000-0000-000000000000	5f9299c9-4bbc-466c-8725-9b97ff40df5d	authenticated	authenticated	d43@gmail.com	$2a$10$4aMXrtJs9Zju/heJGDNeEOP9kzf9oKDLDmlsSQlHkASDhKHN/aerm	2026-08-02 04:51:42.208581+00	\N		\N		\N			\N	2026-08-02 04:51:42.214184+00	{"provider": "email", "providers": ["email"]}	{"sub": "5f9299c9-4bbc-466c-8725-9b97ff40df5d", "email": "d43@gmail.com", "email_verified": true, "phone_verified": false}	\N	2026-08-02 04:51:42.166631+00	2026-08-02 04:51:42.222255+00	\N	\N			\N		0	\N		\N	f	\N	f
00000000-0000-0000-0000-000000000000	65446456-304e-4859-b4a7-a225c6f1e8f8	authenticated	authenticated	d29@gmail.com	$2a$10$9SLWiDerHnjqI8K/RKX50.LhxMtFwioeJfhLSCeTGKq80vPl4p1kG	2026-08-01 14:38:07.353431+00	\N		\N		\N			\N	2026-08-01 14:38:07.359459+00	{"provider": "email", "providers": ["email"]}	{"sub": "65446456-304e-4859-b4a7-a225c6f1e8f8", "email": "d29@gmail.com", "email_verified": true, "phone_verified": false}	\N	2026-08-01 14:38:07.331535+00	2026-08-01 14:38:07.363256+00	\N	\N			\N		0	\N		\N	f	\N	f
00000000-0000-0000-0000-000000000000	9a94e390-858c-428d-8a59-4567715827ca	authenticated	authenticated	c19@gmail.com	$2a$10$Rb4UkUVAH4bKaUYAbX7.yuCYmrIHcfsGx8W8FPXHhp/80NXTY/TBu	2026-08-01 13:50:10.545546+00	\N		\N		\N			\N	2026-08-01 14:39:08.090786+00	{"provider": "email", "providers": ["email"]}	{"sub": "9a94e390-858c-428d-8a59-4567715827ca", "email": "c19@gmail.com", "email_verified": true, "phone_verified": false}	\N	2026-08-01 13:50:10.516441+00	2026-08-01 14:39:08.093039+00	\N	\N			\N		0	\N		\N	f	\N	f
00000000-0000-0000-0000-000000000000	bf3cd985-2a5e-4816-9064-35e544bb988c	authenticated	authenticated	c29@gmail.com	$2a$10$G44WgTK355UTpt8pXeYuFegdS9fIKfVENhH0SHc8sG4WxtZUjjjAK	2026-08-01 14:38:45.367549+00	\N		\N		\N			\N	2026-08-01 14:39:21.562765+00	{"provider": "email", "providers": ["email"]}	{"sub": "bf3cd985-2a5e-4816-9064-35e544bb988c", "email": "c29@gmail.com", "email_verified": true, "phone_verified": false}	\N	2026-08-01 14:38:45.362707+00	2026-08-01 14:39:21.56505+00	\N	\N			\N		0	\N		\N	f	\N	f
00000000-0000-0000-0000-000000000000	523b3a83-d224-4bb8-b636-4b814eff34f1	authenticated	authenticated	d39@gmail.com	$2a$10$i6XtYCvV23UwGcgxW6j/P.Ea9LLhThpW9.EY1LsniYk35rAbPahca	2026-08-01 16:24:28.876594+00	\N		\N		\N			\N	2026-08-02 04:24:10.024667+00	{"provider": "email", "providers": ["email"]}	{"sub": "523b3a83-d224-4bb8-b636-4b814eff34f1", "email": "d39@gmail.com", "email_verified": true, "phone_verified": false}	\N	2026-08-01 16:24:28.820707+00	2026-08-02 04:24:10.056364+00	\N	\N			\N		0	\N		\N	f	\N	f
00000000-0000-0000-0000-000000000000	4077aebf-2c36-42ec-b99d-231991995d99	authenticated	authenticated	c39@gmail.com	$2a$10$j0esRLvgv4JRzkOFUnq2zeTzkRnIW.f6RLn8nZHK8fu3ZTP/Xd/J6	2026-08-01 16:25:21.647011+00	\N		\N		\N			\N	2026-08-02 04:24:40.071715+00	{"provider": "email", "providers": ["email"]}	{"sub": "4077aebf-2c36-42ec-b99d-231991995d99", "email": "c39@gmail.com", "email_verified": true, "phone_verified": false}	\N	2026-08-01 16:25:21.553939+00	2026-08-02 04:24:40.073846+00	\N	\N			\N		0	\N		\N	f	\N	f
00000000-0000-0000-0000-000000000000	a2a988ab-e13d-4e36-bdf0-bba5ea021e7b	authenticated	authenticated	c18@gmail.com	$2a$10$JMvJ3aeM.hM9MWHej6BWuu1A7nZ//YEc0VwFX5Td0eWOik7.iKrLq	2026-08-01 13:51:41.29769+00	\N		\N		\N			\N	2026-08-01 13:51:41.303794+00	{"provider": "email", "providers": ["email"]}	{"sub": "a2a988ab-e13d-4e36-bdf0-bba5ea021e7b", "email": "c18@gmail.com", "email_verified": true, "phone_verified": false}	\N	2026-08-01 13:51:41.258343+00	2026-08-01 13:51:41.31224+00	\N	\N			\N		0	\N		\N	f	\N	f
00000000-0000-0000-0000-000000000000	bc42af3f-3f33-455c-b42f-c59ee761541e	authenticated	authenticated	c40@gmail.com	$2a$10$iIg2FS/u1RgR5lpQZByUrOlD4tOntNfu6l8mBsR7LfvlXg4Dfb3Nq	2026-08-02 04:28:29.989959+00	\N		\N		\N			\N	2026-08-02 04:44:36.178176+00	{"provider": "email", "providers": ["email"]}	{"sub": "bc42af3f-3f33-455c-b42f-c59ee761541e", "email": "c40@gmail.com", "email_verified": true, "phone_verified": false}	\N	2026-08-02 04:28:29.952043+00	2026-08-02 04:44:36.196726+00	\N	\N			\N		0	\N		\N	f	\N	f
00000000-0000-0000-0000-000000000000	d2d6b100-0e63-4e80-b564-7fd87ae514e3	authenticated	authenticated	d30@gmail.com	$2a$10$wBCaM1xUEBz083J7GF6xWejXkNadzz.l/PDjgSLqb5gDgJBX.vxQG	2026-08-01 14:42:16.622364+00	\N		\N		\N			\N	2026-08-01 14:42:16.634938+00	{"provider": "email", "providers": ["email"]}	{"sub": "d2d6b100-0e63-4e80-b564-7fd87ae514e3", "email": "d30@gmail.com", "email_verified": true, "phone_verified": false}	\N	2026-08-01 14:42:16.565068+00	2026-08-01 14:42:16.671138+00	\N	\N			\N		0	\N		\N	f	\N	f
00000000-0000-0000-0000-000000000000	663b616a-58c8-4a0b-8ed1-bd9e1e4f18c0	authenticated	authenticated	d20@gmail.com	$2a$10$gdgqk26ZpWtaybdZzca2m.uV/rD.O4ZFMO5UEYVNo6RPSVLQikwxW	2026-08-01 13:52:53.447199+00	\N		\N		\N			\N	2026-08-01 13:53:10.923586+00	{"provider": "email", "providers": ["email"]}	{"sub": "663b616a-58c8-4a0b-8ed1-bd9e1e4f18c0", "email": "d20@gmail.com", "email_verified": true, "phone_verified": false}	\N	2026-08-01 13:52:53.433288+00	2026-08-01 13:53:10.935232+00	\N	\N			\N		0	\N		\N	f	\N	f
00000000-0000-0000-0000-000000000000	520cc6fd-0ad8-41d6-afc3-b208d43fb016	authenticated	authenticated	d41@gmail.com	$2a$10$t1DrUNo7JrC4KGATtQ2fkuH//oj4EQxo/3oR6J9gh87lbVGV2w9IW	2026-08-02 04:29:23.376055+00	\N		\N		\N			\N	2026-08-02 04:29:23.380479+00	{"provider": "email", "providers": ["email"]}	{"sub": "520cc6fd-0ad8-41d6-afc3-b208d43fb016", "email": "d41@gmail.com", "email_verified": true, "phone_verified": false}	\N	2026-08-02 04:29:23.361191+00	2026-08-02 04:29:23.384731+00	\N	\N			\N		0	\N		\N	f	\N	f
00000000-0000-0000-0000-000000000000	689df7e6-1768-4cec-bef3-3ec3009806f4	authenticated	authenticated	d44@gmail.com	$2a$10$XICqFusJ6VKuw1Bssk1.A.G8U7/eAuwrkMQ5y5AjLRjOwEUGxSyqi	2026-08-02 05:26:45.477668+00	\N		\N		\N			\N	2026-08-02 05:29:23.649113+00	{"provider": "email", "providers": ["email"]}	{"sub": "689df7e6-1768-4cec-bef3-3ec3009806f4", "email": "d44@gmail.com", "email_verified": true, "phone_verified": false}	\N	2026-08-02 05:26:45.456407+00	2026-08-02 05:29:23.651381+00	\N	\N			\N		0	\N		\N	f	\N	f
00000000-0000-0000-0000-000000000000	8b3f7c15-1a6f-455a-b79e-f82eec82de24	authenticated	authenticated	c44@gmail.com	$2a$10$lsEFNIHGwvdbF/HTBGHjOuGIUotakh8vxCKPh1tQYuu0Fe2X/tbQa	2026-08-02 05:25:20.240404+00	\N		\N		\N			\N	2026-08-02 05:30:20.745277+00	{"provider": "email", "providers": ["email"]}	{"sub": "8b3f7c15-1a6f-455a-b79e-f82eec82de24", "email": "c44@gmail.com", "email_verified": true, "phone_verified": false}	\N	2026-08-02 05:25:20.164976+00	2026-08-02 05:30:20.751625+00	\N	\N			\N		0	\N		\N	f	\N	f
00000000-0000-0000-0000-000000000000	69691c51-dd55-4f22-8476-bb667f6317dd	authenticated	authenticated	d21@gmail.com	$2a$10$lJxJLd.keh605yiH/pG/5e.kYfVJTdscUyYPxlaugEfd/188hv7ne	2026-08-01 14:04:33.207781+00	\N		\N		\N			\N	2026-08-01 14:04:51.985362+00	{"provider": "email", "providers": ["email"]}	{"sub": "69691c51-dd55-4f22-8476-bb667f6317dd", "email": "d21@gmail.com", "email_verified": true, "phone_verified": false}	\N	2026-08-01 14:04:33.149285+00	2026-08-01 14:04:51.988936+00	\N	\N			\N		0	\N		\N	f	\N	f
00000000-0000-0000-0000-000000000000	7a65ce1a-e8ed-4777-b6ac-a8b9151cd61a	authenticated	authenticated	d40@gmail.com	$2a$10$7JbQb3PRzxO6liGbV3qO7uIdILKNjkTr19q3trybQXOZUaHwrKCwW	2026-08-02 04:31:22.681133+00	\N		\N		\N			\N	2026-08-02 04:45:03.85805+00	{"provider": "email", "providers": ["email"]}	{"sub": "7a65ce1a-e8ed-4777-b6ac-a8b9151cd61a", "email": "d40@gmail.com", "email_verified": true, "phone_verified": false}	\N	2026-08-02 04:31:22.659593+00	2026-08-02 04:45:03.86108+00	\N	\N			\N		0	\N		\N	f	\N	f
00000000-0000-0000-0000-000000000000	7e8ff550-591f-49e4-92a8-57a014328ac7	authenticated	authenticated	d31@gmail.com	$2a$10$R6FXdcJgk2/b71oEi7.ZqudHEOgDpXyoZ1pbTP3bOOlAZJQgPLNmm	2026-08-01 14:45:55.998884+00	\N		\N		\N			\N	2026-08-01 14:45:56.005724+00	{"provider": "email", "providers": ["email"]}	{"sub": "7e8ff550-591f-49e4-92a8-57a014328ac7", "email": "d31@gmail.com", "email_verified": true, "phone_verified": false}	\N	2026-08-01 14:45:55.969666+00	2026-08-01 14:45:56.01345+00	\N	\N			\N		0	\N		\N	f	\N	f
00000000-0000-0000-0000-000000000000	c52ec75d-34d6-4172-b7cd-913609abbf0b	authenticated	authenticated	d22@gmail.com	$2a$10$zXdyZvFAQyaZW4AaXZFov.0Wszj32M9mIiOE6ixIjqwuPXoQUDTGW	2026-08-01 14:08:48.654754+00	\N		\N		\N			\N	2026-08-01 14:08:48.662314+00	{"provider": "email", "providers": ["email"]}	{"sub": "c52ec75d-34d6-4172-b7cd-913609abbf0b", "email": "d22@gmail.com", "email_verified": true, "phone_verified": false}	\N	2026-08-01 14:08:48.635621+00	2026-08-01 14:08:48.67161+00	\N	\N			\N		0	\N		\N	f	\N	f
00000000-0000-0000-0000-000000000000	35eb9f1f-2a4f-4bb7-8a19-340ee7a09522	authenticated	authenticated	c31@gmail.com	$2a$10$kSJlANxTkbQGeH0lnTjt9.MwjUBVSxHhouwXGhCP6j8huZkPRrs0q	2026-08-01 14:47:23.64416+00	\N		\N		\N			\N	2026-08-01 14:47:23.649388+00	{"provider": "email", "providers": ["email"]}	{"sub": "35eb9f1f-2a4f-4bb7-8a19-340ee7a09522", "email": "c31@gmail.com", "email_verified": true, "phone_verified": false}	\N	2026-08-01 14:47:23.623076+00	2026-08-01 14:47:23.653778+00	\N	\N			\N		0	\N		\N	f	\N	f
00000000-0000-0000-0000-000000000000	bf2a506d-e515-40d0-b2cd-5427f26b717b	authenticated	authenticated	d23@gmail.com	$2a$10$tC942i8jt8FDRQ/P9U6M8OxN5eXWVMEDNGrNp.pq/2Hcm8q9n/2wO	2026-08-01 14:09:22.023115+00	\N		\N		\N			\N	2026-08-01 14:09:22.025805+00	{"provider": "email", "providers": ["email"]}	{"sub": "bf2a506d-e515-40d0-b2cd-5427f26b717b", "email": "d23@gmail.com", "email_verified": true, "phone_verified": false}	\N	2026-08-01 14:09:22.01849+00	2026-08-01 14:09:22.028469+00	\N	\N			\N		0	\N		\N	f	\N	f
00000000-0000-0000-0000-000000000000	8a427a13-f3f7-415f-9139-29a47c3dc3a7	authenticated	authenticated	c32@gmail.com	$2a$10$/8ZddrAcjZJyxZsez5Mw2.bKBW4XVyfGs4oLt0DDNO2VIEdxuaSOK	2026-08-01 14:48:10.857662+00	\N		\N		\N			\N	2026-08-01 14:48:31.771366+00	{"provider": "email", "providers": ["email"]}	{"sub": "8a427a13-f3f7-415f-9139-29a47c3dc3a7", "email": "c32@gmail.com", "email_verified": true, "phone_verified": false}	\N	2026-08-01 14:48:10.840953+00	2026-08-01 14:48:31.775818+00	\N	\N			\N		0	\N		\N	f	\N	f
00000000-0000-0000-0000-000000000000	2351c2dd-edb3-47c0-8653-a7da824819f8	authenticated	authenticated	d35@gmail.com	$2a$10$CeOKzuZo8hwq9.jwIRb9P.MULGko3ascmiYi.VoChym9JOnM.XULO	2026-08-01 14:54:38.95764+00	\N		\N		\N			\N	2026-08-01 15:00:50.568186+00	{"provider": "email", "providers": ["email"]}	{"sub": "2351c2dd-edb3-47c0-8653-a7da824819f8", "email": "d35@gmail.com", "email_verified": true, "phone_verified": false}	\N	2026-08-01 14:54:38.917103+00	2026-08-01 15:00:50.570627+00	\N	\N			\N		0	\N		\N	f	\N	f
00000000-0000-0000-0000-000000000000	04c03fc4-f348-464b-b94d-7344ac2f0c1e	authenticated	authenticated	c21@gmail.com	$2a$10$4IAu20tBMBXQBGLkb3kRCObIc6DI0MTsanwsZzvYINHBjGTf1kCRK	2026-08-01 14:11:48.58191+00	\N		\N		\N			\N	2026-08-01 14:12:27.539506+00	{"provider": "email", "providers": ["email"]}	{"sub": "04c03fc4-f348-464b-b94d-7344ac2f0c1e", "email": "c21@gmail.com", "email_verified": true, "phone_verified": false}	\N	2026-08-01 14:11:48.542972+00	2026-08-01 14:12:27.558517+00	\N	\N			\N		0	\N		\N	f	\N	f
00000000-0000-0000-0000-000000000000	840dd57d-de4c-42df-920e-705ce76f4974	authenticated	authenticated	c22@gmail.com	$2a$10$iwx3rskZKX53oO2Vit1pmuUxJ7SlMK3IHIGPdGbcmOMvV9fKackte	2026-08-01 14:13:05.306607+00	\N		\N		\N			\N	2026-08-01 14:13:17.085496+00	{"provider": "email", "providers": ["email"]}	{"sub": "840dd57d-de4c-42df-920e-705ce76f4974", "email": "c22@gmail.com", "email_verified": true, "phone_verified": false}	\N	2026-08-01 14:13:05.289759+00	2026-08-01 14:13:17.088914+00	\N	\N			\N		0	\N		\N	f	\N	f
00000000-0000-0000-0000-000000000000	09f67131-017a-4ec2-b38b-3415d80abb1b	authenticated	authenticated	c35@gmail.com	$2a$10$7adwHR9piwfjFGfKwJTQpOmiWt9iAU9Erw7js61EYXci4wMQ7Hc.u	2026-08-01 14:56:02.413041+00	\N		\N		\N			\N	2026-08-01 14:56:02.417993+00	{"provider": "email", "providers": ["email"]}	{"sub": "09f67131-017a-4ec2-b38b-3415d80abb1b", "email": "c35@gmail.com", "email_verified": true, "phone_verified": false}	\N	2026-08-01 14:56:02.388275+00	2026-08-01 14:56:02.42262+00	\N	\N			\N		0	\N		\N	f	\N	f
00000000-0000-0000-0000-000000000000	435cfb2c-571a-4c0a-ba24-0420f8e22c97	authenticated	authenticated	d25@gmail.com	$2a$10$E71lbDporRQUrN0ivbxdQOzIYcH8IhQhFnszgkoyALxmIQj7ZIUaC	2026-08-01 14:28:08.112056+00	\N		\N		\N			\N	2026-08-01 14:28:08.12332+00	{"provider": "email", "providers": ["email"]}	{"sub": "435cfb2c-571a-4c0a-ba24-0420f8e22c97", "email": "d25@gmail.com", "email_verified": true, "phone_verified": false}	\N	2026-08-01 14:28:08.066995+00	2026-08-01 14:28:08.140547+00	\N	\N			\N		0	\N		\N	f	\N	f
00000000-0000-0000-0000-000000000000	c916b5c0-762b-4db4-8368-d229c09c4de9	authenticated	authenticated	d24@gmail.com	$2a$10$7F81b3DsjAhZkeDaH2X3b.gRJQ.fDtil.pp1vg3FGlTsCPkO9CVj2	2026-08-01 14:31:07.099738+00	\N		\N		\N			\N	2026-08-01 14:31:07.108978+00	{"provider": "email", "providers": ["email"]}	{"sub": "c916b5c0-762b-4db4-8368-d229c09c4de9", "email": "d24@gmail.com", "email_verified": true, "phone_verified": false}	\N	2026-08-01 14:31:07.071966+00	2026-08-01 14:31:07.119531+00	\N	\N			\N		0	\N		\N	f	\N	f
\.


--
-- Data for Name: identities; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."identities" ("provider_id", "user_id", "identity_data", "provider", "last_sign_in_at", "created_at", "updated_at", "id") FROM stdin;
0c7540e4-69f1-4d46-98b3-3577b0e15162	0c7540e4-69f1-4d46-98b3-3577b0e15162	{"sub": "0c7540e4-69f1-4d46-98b3-3577b0e15162", "email": "techno@gmail.com", "email_verified": false, "phone_verified": false}	email	2026-06-29 06:08:43.622967+00	2026-06-29 06:08:43.623017+00	2026-06-29 06:08:43.623017+00	425012f5-3e44-4582-ae6d-645f45fc41fc
8cca0a73-02bf-4262-9071-6ca4356c4566	8cca0a73-02bf-4262-9071-6ca4356c4566	{"sub": "8cca0a73-02bf-4262-9071-6ca4356c4566", "email": "javashahin@gmail.com", "email_verified": false, "phone_verified": false}	email	2026-06-28 16:46:55.270936+00	2026-06-28 16:46:55.271003+00	2026-06-28 16:46:55.271003+00	c204fbaa-28f5-468e-a234-637eac5b0139
a9c43137-d6ed-40bb-9e2d-269169b8656e	a9c43137-d6ed-40bb-9e2d-269169b8656e	{"sub": "a9c43137-d6ed-40bb-9e2d-269169b8656e", "email": "shahinforcoc@youpmail.com", "email_verified": false, "phone_verified": false}	email	2026-06-28 16:59:04.361596+00	2026-06-28 16:59:04.361645+00	2026-06-28 16:59:04.361645+00	0465962b-1000-48ba-8c45-ee2c94952c12
2bdad9f6-3bc3-4ca2-b485-80f6421659d2	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	{"sub": "2bdad9f6-3bc3-4ca2-b485-80f6421659d2", "email": "customer@gmaill.com", "email_verified": false, "phone_verified": false}	email	2026-06-29 15:06:34.843125+00	2026-06-29 15:06:34.843173+00	2026-06-29 15:06:34.843173+00	8bdc24c0-d20e-4e05-8d5f-ca11e9ab5dc4
d1eb281c-c2e1-441e-b40d-08a35776bdb4	d1eb281c-c2e1-441e-b40d-08a35776bdb4	{"sub": "d1eb281c-c2e1-441e-b40d-08a35776bdb4", "email": "musa@gmail.com", "email_verified": false, "phone_verified": false}	email	2026-06-29 16:15:15.650094+00	2026-06-29 16:15:15.650146+00	2026-06-29 16:15:15.650146+00	589e5c69-ce67-40ab-8083-26726777c388
1a3dd5cc-a943-45cd-a925-69df114aa14f	1a3dd5cc-a943-45cd-a925-69df114aa14f	{"sub": "1a3dd5cc-a943-45cd-a925-69df114aa14f", "email": "driver@gmail.com", "email_verified": false, "phone_verified": false}	email	2026-07-01 12:27:40.908947+00	2026-07-01 12:27:40.909059+00	2026-07-01 12:27:40.909059+00	3a26d915-1377-402e-88b9-a783e45b8bd6
a0e1b020-b22d-4317-bef9-94a69c1f2c15	a0e1b020-b22d-4317-bef9-94a69c1f2c15	{"sub": "a0e1b020-b22d-4317-bef9-94a69c1f2c15", "email": "c2@gmail.com", "email_verified": false, "phone_verified": false}	email	2026-07-01 12:51:32.29178+00	2026-07-01 12:51:32.291835+00	2026-07-01 12:51:32.291835+00	72cf34ae-30e0-4936-bebb-f25872b234d8
ea1e230b-cfd2-4ec8-9baa-4fa23a992dca	ea1e230b-cfd2-4ec8-9baa-4fa23a992dca	{"sub": "ea1e230b-cfd2-4ec8-9baa-4fa23a992dca", "email": "d1@gmail.com", "email_verified": false, "phone_verified": false}	email	2026-07-01 16:25:08.894569+00	2026-07-01 16:25:08.89462+00	2026-07-01 16:25:08.89462+00	14d216f0-6245-4444-b135-0a5e73d3ec14
79241b9e-03fe-4877-898e-433446dfa5cf	79241b9e-03fe-4877-898e-433446dfa5cf	{"sub": "79241b9e-03fe-4877-898e-433446dfa5cf", "email": "c3@gmail.com", "email_verified": false, "phone_verified": false}	email	2026-07-14 12:09:43.751363+00	2026-07-14 12:09:43.75142+00	2026-07-14 12:09:43.75142+00	c2d31558-8b0a-4933-985c-fbe98b7a4875
144d9b83-f3be-448f-b678-c711c76e513c	144d9b83-f3be-448f-b678-c711c76e513c	{"sub": "144d9b83-f3be-448f-b678-c711c76e513c", "email": "ru@gmail.com", "email_verified": false, "phone_verified": false}	email	2026-07-16 16:22:29.054475+00	2026-07-16 16:22:29.054527+00	2026-07-16 16:22:29.054527+00	ab2ac668-8a40-49bf-8530-8ef28f2213bc
64e9dbfa-539b-4ec6-87c1-bb8dc93c40af	64e9dbfa-539b-4ec6-87c1-bb8dc93c40af	{"sub": "64e9dbfa-539b-4ec6-87c1-bb8dc93c40af", "email": "d@gmail.com", "email_verified": false, "phone_verified": false}	email	2026-07-17 05:41:20.764113+00	2026-07-17 05:41:20.764162+00	2026-07-17 05:41:20.764162+00	d699667e-cf32-4761-b338-dab99015df7f
fed16cd3-2673-4355-ac94-a3289224ab6d	fed16cd3-2673-4355-ac94-a3289224ab6d	{"sub": "fed16cd3-2673-4355-ac94-a3289224ab6d", "email": "d5@gmail.com", "email_verified": false, "phone_verified": false}	email	2026-07-17 05:42:57.145892+00	2026-07-17 05:42:57.145937+00	2026-07-17 05:42:57.145937+00	79de5001-1612-456b-8511-3a1591f728d9
97e8054c-1a52-47df-b50c-eade857c1867	97e8054c-1a52-47df-b50c-eade857c1867	{"sub": "97e8054c-1a52-47df-b50c-eade857c1867", "email": "c9@gmail.com", "email_verified": false, "phone_verified": false}	email	2026-07-17 18:26:01.625612+00	2026-07-17 18:26:01.625678+00	2026-07-17 18:26:01.625678+00	a696e360-285e-4283-883e-b0dede111e95
be0af516-46a2-4c9c-84c7-9b71e5de5359	be0af516-46a2-4c9c-84c7-9b71e5de5359	{"sub": "be0af516-46a2-4c9c-84c7-9b71e5de5359", "email": "githubshahin@gmail.com", "email_verified": false, "phone_verified": false}	email	2026-07-25 06:35:39.968375+00	2026-07-25 06:35:39.968436+00	2026-07-25 06:35:39.968436+00	6ae55a27-5d5b-47ab-9527-b930d484a7ee
3a101d58-5bd6-4e53-844b-5c4672b8ae8e	3a101d58-5bd6-4e53-844b-5c4672b8ae8e	{"sub": "3a101d58-5bd6-4e53-844b-5c4672b8ae8e", "email": "test@gmail.com", "email_verified": false, "phone_verified": false}	email	2026-07-25 13:56:50.514525+00	2026-07-25 13:56:50.514625+00	2026-07-25 13:56:50.514625+00	a670fbfd-3a28-4df4-9d88-b7f6fd14bd74
aa4cd01d-7077-473c-b9bc-3510e1c98bde	aa4cd01d-7077-473c-b9bc-3510e1c98bde	{"sub": "aa4cd01d-7077-473c-b9bc-3510e1c98bde", "email": "testt@gmail.com", "email_verified": false, "phone_verified": false}	email	2026-07-25 13:58:01.890053+00	2026-07-25 13:58:01.890123+00	2026-07-25 13:58:01.890123+00	f1d630d0-7391-420c-9019-ec144183149d
bc4d5c79-829d-4b7e-9aaf-936294358391	bc4d5c79-829d-4b7e-9aaf-936294358391	{"sub": "bc4d5c79-829d-4b7e-9aaf-936294358391", "email": "musa1@gmail.com", "email_verified": false, "phone_verified": false}	email	2026-07-27 17:54:08.464378+00	2026-07-27 17:54:08.464434+00	2026-07-27 17:54:08.464434+00	c41ec3fe-cf61-4507-9cd2-5d4a3a46c417
815d2073-a11d-46e6-b9df-7f4c5c76b2aa	815d2073-a11d-46e6-b9df-7f4c5c76b2aa	{"sub": "815d2073-a11d-46e6-b9df-7f4c5c76b2aa", "email": "31@customer.com", "email_verified": false, "phone_verified": false}	email	2026-07-31 10:55:09.559735+00	2026-07-31 10:55:09.559783+00	2026-07-31 10:55:09.559783+00	5b8685ce-0716-4f61-a9ad-3eadc93cabec
133f926c-a98c-4b27-9ff7-e6c0cf0bec18	133f926c-a98c-4b27-9ff7-e6c0cf0bec18	{"sub": "133f926c-a98c-4b27-9ff7-e6c0cf0bec18", "email": "31@driver.com", "email_verified": false, "phone_verified": false}	email	2026-07-31 10:57:30.500363+00	2026-07-31 10:57:30.500417+00	2026-07-31 10:57:30.500417+00	6e91d4d9-3c87-4d87-b6ab-94b996215047
876bad8f-4d46-488f-abb9-7779ccede40b	876bad8f-4d46-488f-abb9-7779ccede40b	{"sub": "876bad8f-4d46-488f-abb9-7779ccede40b", "email": "c10@gmailm.com", "email_verified": false, "phone_verified": false}	email	2026-07-31 17:18:30.005625+00	2026-07-31 17:18:30.00569+00	2026-07-31 17:18:30.00569+00	e3ffd287-5147-4d22-833a-f40d47b589b6
31377f7c-5eff-4de0-bcec-dae997ff9ac6	31377f7c-5eff-4de0-bcec-dae997ff9ac6	{"sub": "31377f7c-5eff-4de0-bcec-dae997ff9ac6", "email": "d10@gmail.com", "email_verified": false, "phone_verified": false}	email	2026-07-31 17:19:59.773091+00	2026-07-31 17:19:59.773148+00	2026-07-31 17:19:59.773148+00	52f545fa-0144-47b7-8c9c-3149dd6a5117
dd5b6be3-bf04-4cee-a971-911aa8dd9f9e	dd5b6be3-bf04-4cee-a971-911aa8dd9f9e	{"sub": "dd5b6be3-bf04-4cee-a971-911aa8dd9f9e", "email": "c11@gmail.com", "email_verified": false, "phone_verified": false}	email	2026-08-01 07:19:29.405707+00	2026-08-01 07:19:29.405753+00	2026-08-01 07:19:29.405753+00	375c6f9f-12d5-449a-aaef-622f6a4adf6d
24701573-d709-4acc-8858-6c96e5e79533	24701573-d709-4acc-8858-6c96e5e79533	{"sub": "24701573-d709-4acc-8858-6c96e5e79533", "email": "d11@gmail.com", "email_verified": false, "phone_verified": false}	email	2026-08-01 07:21:03.01688+00	2026-08-01 07:21:03.016953+00	2026-08-01 07:21:03.016953+00	6d80298c-9c32-498f-b9af-7677acf6cd4c
891825d4-0f9f-4db8-8c18-1ecb3a94f12f	891825d4-0f9f-4db8-8c18-1ecb3a94f12f	{"sub": "891825d4-0f9f-4db8-8c18-1ecb3a94f12f", "email": "c12@gmail.com", "email_verified": false, "phone_verified": false}	email	2026-08-01 09:16:26.393416+00	2026-08-01 09:16:26.393464+00	2026-08-01 09:16:26.393464+00	881175dd-c1f9-42cc-aad3-3ce523190759
708c6c50-1770-4e04-a50c-d7b9f7c28255	708c6c50-1770-4e04-a50c-d7b9f7c28255	{"sub": "708c6c50-1770-4e04-a50c-d7b9f7c28255", "email": "d12@gmail.com", "email_verified": false, "phone_verified": false}	email	2026-08-01 09:18:28.624108+00	2026-08-01 09:18:28.624156+00	2026-08-01 09:18:28.624156+00	331027ee-d4bb-44e1-8b3f-28953b3c95e2
5c4351bb-39c7-4ecc-80e7-731ea1b906d5	5c4351bb-39c7-4ecc-80e7-731ea1b906d5	{"sub": "5c4351bb-39c7-4ecc-80e7-731ea1b906d5", "email": "d13@gmail.com", "email_verified": false, "phone_verified": false}	email	2026-08-01 10:38:18.834469+00	2026-08-01 10:38:18.83452+00	2026-08-01 10:38:18.83452+00	cbbdcd33-c90a-48a1-a8e4-c06083b200ea
f644e2bb-0ef0-4e69-94a5-6a1c59ced946	f644e2bb-0ef0-4e69-94a5-6a1c59ced946	{"sub": "f644e2bb-0ef0-4e69-94a5-6a1c59ced946", "email": "d14@gmail.com", "email_verified": false, "phone_verified": false}	email	2026-08-01 13:05:19.246346+00	2026-08-01 13:05:19.246395+00	2026-08-01 13:05:19.246395+00	2050172e-339e-4c7f-8337-835b04d74b66
0d6d89c3-1444-49d9-a12e-9cea2a64bc34	0d6d89c3-1444-49d9-a12e-9cea2a64bc34	{"sub": "0d6d89c3-1444-49d9-a12e-9cea2a64bc34", "email": "d16@gmail.com", "email_verified": false, "phone_verified": false}	email	2026-08-01 13:12:03.672531+00	2026-08-01 13:12:03.672584+00	2026-08-01 13:12:03.672584+00	86d525c8-ba0f-4997-96d0-6a1faba3dc91
b157280f-c991-4346-82b0-bc232487cdf2	b157280f-c991-4346-82b0-bc232487cdf2	{"sub": "b157280f-c991-4346-82b0-bc232487cdf2", "role": "driver", "email": "d17@gmail.com", "email_verified": false, "phone_verified": false}	email	2026-08-01 13:23:38.898769+00	2026-08-01 13:23:38.898828+00	2026-08-01 13:23:38.898828+00	110cfdaa-d9c8-489a-aaf4-e40f9904ad73
b8040d5d-d4e6-4f7e-9993-79c75b64effd	b8040d5d-d4e6-4f7e-9993-79c75b64effd	{"sub": "b8040d5d-d4e6-4f7e-9993-79c75b64effd", "email": "d18@gmail.com", "email_verified": false, "phone_verified": false}	email	2026-08-01 13:45:45.792522+00	2026-08-01 13:45:45.792568+00	2026-08-01 13:45:45.792568+00	aa412882-d98f-43e2-b96e-303f6f919a36
aba25283-ef82-45e7-8942-6b851bff234d	aba25283-ef82-45e7-8942-6b851bff234d	{"sub": "aba25283-ef82-45e7-8942-6b851bff234d", "email": "d19@gmail.com", "email_verified": false, "phone_verified": false}	email	2026-08-01 13:49:14.680075+00	2026-08-01 13:49:14.680126+00	2026-08-01 13:49:14.680126+00	1b20eee1-36d6-4808-a4c9-a81c35377f90
9a94e390-858c-428d-8a59-4567715827ca	9a94e390-858c-428d-8a59-4567715827ca	{"sub": "9a94e390-858c-428d-8a59-4567715827ca", "email": "c19@gmail.com", "email_verified": false, "phone_verified": false}	email	2026-08-01 13:50:10.53807+00	2026-08-01 13:50:10.538158+00	2026-08-01 13:50:10.538158+00	a83f843d-5753-48b1-9f40-1c7c94737c7e
a2a988ab-e13d-4e36-bdf0-bba5ea021e7b	a2a988ab-e13d-4e36-bdf0-bba5ea021e7b	{"sub": "a2a988ab-e13d-4e36-bdf0-bba5ea021e7b", "email": "c18@gmail.com", "email_verified": false, "phone_verified": false}	email	2026-08-01 13:51:41.294079+00	2026-08-01 13:51:41.294137+00	2026-08-01 13:51:41.294137+00	0cba3ed8-b290-466c-85c1-78395b67a408
663b616a-58c8-4a0b-8ed1-bd9e1e4f18c0	663b616a-58c8-4a0b-8ed1-bd9e1e4f18c0	{"sub": "663b616a-58c8-4a0b-8ed1-bd9e1e4f18c0", "email": "d20@gmail.com", "email_verified": false, "phone_verified": false}	email	2026-08-01 13:52:53.444747+00	2026-08-01 13:52:53.444804+00	2026-08-01 13:52:53.444804+00	3a749a30-e92d-4fc1-9ac2-988c2828bab0
69691c51-dd55-4f22-8476-bb667f6317dd	69691c51-dd55-4f22-8476-bb667f6317dd	{"sub": "69691c51-dd55-4f22-8476-bb667f6317dd", "email": "d21@gmail.com", "email_verified": false, "phone_verified": false}	email	2026-08-01 14:04:33.19835+00	2026-08-01 14:04:33.198416+00	2026-08-01 14:04:33.198416+00	795b8783-25a1-4c67-a1bc-331b1820d590
c52ec75d-34d6-4172-b7cd-913609abbf0b	c52ec75d-34d6-4172-b7cd-913609abbf0b	{"sub": "c52ec75d-34d6-4172-b7cd-913609abbf0b", "email": "d22@gmail.com", "email_verified": false, "phone_verified": false}	email	2026-08-01 14:08:48.650835+00	2026-08-01 14:08:48.650886+00	2026-08-01 14:08:48.650886+00	d519502c-7fd2-48ca-aafb-639a78590153
bf2a506d-e515-40d0-b2cd-5427f26b717b	bf2a506d-e515-40d0-b2cd-5427f26b717b	{"sub": "bf2a506d-e515-40d0-b2cd-5427f26b717b", "email": "d23@gmail.com", "email_verified": false, "phone_verified": false}	email	2026-08-01 14:09:22.021022+00	2026-08-01 14:09:22.021067+00	2026-08-01 14:09:22.021067+00	954d19ff-d142-4d87-9795-7d401640058a
04c03fc4-f348-464b-b94d-7344ac2f0c1e	04c03fc4-f348-464b-b94d-7344ac2f0c1e	{"sub": "04c03fc4-f348-464b-b94d-7344ac2f0c1e", "email": "c21@gmail.com", "email_verified": false, "phone_verified": false}	email	2026-08-01 14:11:48.575829+00	2026-08-01 14:11:48.575884+00	2026-08-01 14:11:48.575884+00	38eeb005-e9a9-42a4-b82e-2d91544d9c07
840dd57d-de4c-42df-920e-705ce76f4974	840dd57d-de4c-42df-920e-705ce76f4974	{"sub": "840dd57d-de4c-42df-920e-705ce76f4974", "email": "c22@gmail.com", "email_verified": false, "phone_verified": false}	email	2026-08-01 14:13:05.303095+00	2026-08-01 14:13:05.303151+00	2026-08-01 14:13:05.303151+00	22e2fc16-a152-455f-9976-4312fe22f252
435cfb2c-571a-4c0a-ba24-0420f8e22c97	435cfb2c-571a-4c0a-ba24-0420f8e22c97	{"sub": "435cfb2c-571a-4c0a-ba24-0420f8e22c97", "email": "d25@gmail.com", "email_verified": false, "phone_verified": false}	email	2026-08-01 14:28:08.102975+00	2026-08-01 14:28:08.103021+00	2026-08-01 14:28:08.103021+00	9c46a1cd-3d9d-49f7-8730-bd11e112d8e1
c916b5c0-762b-4db4-8368-d229c09c4de9	c916b5c0-762b-4db4-8368-d229c09c4de9	{"sub": "c916b5c0-762b-4db4-8368-d229c09c4de9", "email": "d24@gmail.com", "email_verified": false, "phone_verified": false}	email	2026-08-01 14:31:07.094725+00	2026-08-01 14:31:07.094775+00	2026-08-01 14:31:07.094775+00	16d4e336-30e2-4acc-848a-f4b7865e0412
29165c98-def8-44ed-b27e-6a9d1681f643	29165c98-def8-44ed-b27e-6a9d1681f643	{"sub": "29165c98-def8-44ed-b27e-6a9d1681f643", "email": "d27@gmail.com", "email_verified": false, "phone_verified": false}	email	2026-08-01 14:33:31.731515+00	2026-08-01 14:33:31.731569+00	2026-08-01 14:33:31.731569+00	890931f0-51ae-427a-9f53-7284a66af8af
64d7d29c-3e63-4759-bf74-3b796ed70e5f	64d7d29c-3e63-4759-bf74-3b796ed70e5f	{"sub": "64d7d29c-3e63-4759-bf74-3b796ed70e5f", "email": "d28@gmail.com", "email_verified": false, "phone_verified": false}	email	2026-08-01 14:35:16.560288+00	2026-08-01 14:35:16.560334+00	2026-08-01 14:35:16.560334+00	6cd61e03-839e-41e7-92e8-5b5fbb66c60a
65446456-304e-4859-b4a7-a225c6f1e8f8	65446456-304e-4859-b4a7-a225c6f1e8f8	{"sub": "65446456-304e-4859-b4a7-a225c6f1e8f8", "email": "d29@gmail.com", "email_verified": false, "phone_verified": false}	email	2026-08-01 14:38:07.349453+00	2026-08-01 14:38:07.349509+00	2026-08-01 14:38:07.349509+00	64a92f40-b7d6-4f08-a347-e56a8776e01c
bf3cd985-2a5e-4816-9064-35e544bb988c	bf3cd985-2a5e-4816-9064-35e544bb988c	{"sub": "bf3cd985-2a5e-4816-9064-35e544bb988c", "email": "c29@gmail.com", "email_verified": false, "phone_verified": false}	email	2026-08-01 14:38:45.365393+00	2026-08-01 14:38:45.365444+00	2026-08-01 14:38:45.365444+00	17cdd127-7746-4884-9bc8-42dffea37162
d2d6b100-0e63-4e80-b564-7fd87ae514e3	d2d6b100-0e63-4e80-b564-7fd87ae514e3	{"sub": "d2d6b100-0e63-4e80-b564-7fd87ae514e3", "email": "d30@gmail.com", "email_verified": false, "phone_verified": false}	email	2026-08-01 14:42:16.613825+00	2026-08-01 14:42:16.613876+00	2026-08-01 14:42:16.613876+00	c04527a7-30e7-498b-b0ef-b6f25a69d7b2
7e8ff550-591f-49e4-92a8-57a014328ac7	7e8ff550-591f-49e4-92a8-57a014328ac7	{"sub": "7e8ff550-591f-49e4-92a8-57a014328ac7", "email": "d31@gmail.com", "email_verified": false, "phone_verified": false}	email	2026-08-01 14:45:55.994161+00	2026-08-01 14:45:55.994209+00	2026-08-01 14:45:55.994209+00	faa29a1f-83d5-4359-b32d-fd26e061ea89
35eb9f1f-2a4f-4bb7-8a19-340ee7a09522	35eb9f1f-2a4f-4bb7-8a19-340ee7a09522	{"sub": "35eb9f1f-2a4f-4bb7-8a19-340ee7a09522", "email": "c31@gmail.com", "email_verified": false, "phone_verified": false}	email	2026-08-01 14:47:23.637504+00	2026-08-01 14:47:23.640935+00	2026-08-01 14:47:23.640935+00	17bab330-55e1-44b2-b8bd-a5889795cbb5
8a427a13-f3f7-415f-9139-29a47c3dc3a7	8a427a13-f3f7-415f-9139-29a47c3dc3a7	{"sub": "8a427a13-f3f7-415f-9139-29a47c3dc3a7", "email": "c32@gmail.com", "email_verified": false, "phone_verified": false}	email	2026-08-01 14:48:10.854113+00	2026-08-01 14:48:10.854183+00	2026-08-01 14:48:10.854183+00	db3a5c39-44e0-4bbe-b35c-a1fec6267e68
2351c2dd-edb3-47c0-8653-a7da824819f8	2351c2dd-edb3-47c0-8653-a7da824819f8	{"sub": "2351c2dd-edb3-47c0-8653-a7da824819f8", "email": "d35@gmail.com", "email_verified": false, "phone_verified": false}	email	2026-08-01 14:54:38.952306+00	2026-08-01 14:54:38.952353+00	2026-08-01 14:54:38.952353+00	14d48430-cd9c-4072-bb5f-794fbfee4563
09f67131-017a-4ec2-b38b-3415d80abb1b	09f67131-017a-4ec2-b38b-3415d80abb1b	{"sub": "09f67131-017a-4ec2-b38b-3415d80abb1b", "email": "c35@gmail.com", "email_verified": false, "phone_verified": false}	email	2026-08-01 14:56:02.410329+00	2026-08-01 14:56:02.410394+00	2026-08-01 14:56:02.410394+00	543adcb8-e0b2-41d6-a94f-d8a63cd8a6dc
9a807262-a129-4053-8cd6-c0d92c387094	9a807262-a129-4053-8cd6-c0d92c387094	{"sub": "9a807262-a129-4053-8cd6-c0d92c387094", "email": "c34@gmail.com", "email_verified": false, "phone_verified": false}	email	2026-08-01 14:56:54.708459+00	2026-08-01 14:56:54.708509+00	2026-08-01 14:56:54.708509+00	b4cd776d-fadf-4152-9986-bc4201d27f0c
b1eea694-233e-4f03-8e9d-0663d338a6f1	b1eea694-233e-4f03-8e9d-0663d338a6f1	{"sub": "b1eea694-233e-4f03-8e9d-0663d338a6f1", "email": "d37@gmail.com", "email_verified": false, "phone_verified": false}	email	2026-08-01 15:00:09.028745+00	2026-08-01 15:00:09.028794+00	2026-08-01 15:00:09.028794+00	a8f9feb6-c476-4f6d-9a6b-2b9146b13b3b
523b3a83-d224-4bb8-b636-4b814eff34f1	523b3a83-d224-4bb8-b636-4b814eff34f1	{"sub": "523b3a83-d224-4bb8-b636-4b814eff34f1", "email": "d39@gmail.com", "email_verified": false, "phone_verified": false}	email	2026-08-01 16:24:28.86535+00	2026-08-01 16:24:28.865397+00	2026-08-01 16:24:28.865397+00	ebde4a5e-6006-4ba2-9583-ced989797bbb
4077aebf-2c36-42ec-b99d-231991995d99	4077aebf-2c36-42ec-b99d-231991995d99	{"sub": "4077aebf-2c36-42ec-b99d-231991995d99", "email": "c39@gmail.com", "email_verified": false, "phone_verified": false}	email	2026-08-01 16:25:21.636885+00	2026-08-01 16:25:21.636951+00	2026-08-01 16:25:21.636951+00	44bf5b43-550e-4800-aa1e-fdaa68fc4a32
bc42af3f-3f33-455c-b42f-c59ee761541e	bc42af3f-3f33-455c-b42f-c59ee761541e	{"sub": "bc42af3f-3f33-455c-b42f-c59ee761541e", "email": "c40@gmail.com", "email_verified": false, "phone_verified": false}	email	2026-08-02 04:28:29.981462+00	2026-08-02 04:28:29.981517+00	2026-08-02 04:28:29.981517+00	f9b236fc-4525-41fe-8e25-f50cf889dd84
520cc6fd-0ad8-41d6-afc3-b208d43fb016	520cc6fd-0ad8-41d6-afc3-b208d43fb016	{"sub": "520cc6fd-0ad8-41d6-afc3-b208d43fb016", "email": "d41@gmail.com", "email_verified": false, "phone_verified": false}	email	2026-08-02 04:29:23.373028+00	2026-08-02 04:29:23.37309+00	2026-08-02 04:29:23.37309+00	4630eeae-5c00-4880-a6a1-1a6c698d6808
7a65ce1a-e8ed-4777-b6ac-a8b9151cd61a	7a65ce1a-e8ed-4777-b6ac-a8b9151cd61a	{"sub": "7a65ce1a-e8ed-4777-b6ac-a8b9151cd61a", "email": "d40@gmail.com", "email_verified": false, "phone_verified": false}	email	2026-08-02 04:31:22.67678+00	2026-08-02 04:31:22.676828+00	2026-08-02 04:31:22.676828+00	b2dc25b7-9fe9-44b0-9935-ee65955c22e2
82354dcd-3fe9-42d6-8e76-f344db116242	82354dcd-3fe9-42d6-8e76-f344db116242	{"sub": "82354dcd-3fe9-42d6-8e76-f344db116242", "email": "c42@gmail.com", "email_verified": false, "phone_verified": false}	email	2026-08-02 04:46:24.351926+00	2026-08-02 04:46:24.351989+00	2026-08-02 04:46:24.351989+00	e2d3db04-43ba-4939-b9d4-57b5a4d82852
ad9049ad-da91-4eef-9d1e-8359b35af82b	ad9049ad-da91-4eef-9d1e-8359b35af82b	{"sub": "ad9049ad-da91-4eef-9d1e-8359b35af82b", "email": "d42@gmail.com", "email_verified": false, "phone_verified": false}	email	2026-08-02 04:48:43.002894+00	2026-08-02 04:48:43.002943+00	2026-08-02 04:48:43.002943+00	8c7eb435-fef3-4dd3-b85d-bad9c27ff7c1
5f9299c9-4bbc-466c-8725-9b97ff40df5d	5f9299c9-4bbc-466c-8725-9b97ff40df5d	{"sub": "5f9299c9-4bbc-466c-8725-9b97ff40df5d", "email": "d43@gmail.com", "email_verified": false, "phone_verified": false}	email	2026-08-02 04:51:42.203971+00	2026-08-02 04:51:42.204021+00	2026-08-02 04:51:42.204021+00	94392c8d-98e1-45ea-a6b4-b6d94aad2eb7
8b3f7c15-1a6f-455a-b79e-f82eec82de24	8b3f7c15-1a6f-455a-b79e-f82eec82de24	{"sub": "8b3f7c15-1a6f-455a-b79e-f82eec82de24", "email": "c44@gmail.com", "email_verified": false, "phone_verified": false}	email	2026-08-02 05:25:20.228676+00	2026-08-02 05:25:20.228725+00	2026-08-02 05:25:20.228725+00	cf6ea4f8-e29f-4ef9-a044-69fd4690d2e8
689df7e6-1768-4cec-bef3-3ec3009806f4	689df7e6-1768-4cec-bef3-3ec3009806f4	{"sub": "689df7e6-1768-4cec-bef3-3ec3009806f4", "email": "d44@gmail.com", "email_verified": false, "phone_verified": false}	email	2026-08-02 05:26:45.473946+00	2026-08-02 05:26:45.473999+00	2026-08-02 05:26:45.473999+00	15fd7660-7bdb-419b-bd06-65b5602a9f6d
\.


--
-- Data for Name: instances; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."instances" ("id", "uuid", "raw_base_config", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: oauth_clients; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."oauth_clients" ("id", "client_secret_hash", "registration_type", "redirect_uris", "grant_types", "client_name", "client_uri", "logo_uri", "created_at", "updated_at", "deleted_at", "client_type", "token_endpoint_auth_method") FROM stdin;
\.


--
-- Data for Name: sessions; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."sessions" ("id", "user_id", "created_at", "updated_at", "factor_id", "aal", "not_after", "refreshed_at", "user_agent", "ip", "tag", "oauth_client_id", "refresh_token_hmac_key", "refresh_token_counter", "scopes") FROM stdin;
b94ac40c-c117-4dd2-a80f-f837cd0803ad	dd5b6be3-bf04-4cee-a971-911aa8dd9f9e	2026-08-01 07:58:27.633302+00	2026-08-01 07:58:27.633302+00	\N	aal1	\N	\N	okhttp/4.12.0	103.156.189.70	\N	\N	\N	\N	\N
141ca861-cc7b-4174-946a-f27e12b0f37f	f644e2bb-0ef0-4e69-94a5-6a1c59ced946	2026-08-01 13:05:59.234038+00	2026-08-01 13:05:59.234038+00	\N	aal1	\N	\N	okhttp/4.9.2	103.156.189.68	\N	\N	\N	\N	\N
3146ed1e-f007-415e-841a-e7c3e928026c	663b616a-58c8-4a0b-8ed1-bd9e1e4f18c0	2026-08-01 13:52:53.452712+00	2026-08-01 13:52:53.452712+00	\N	aal1	\N	\N	okhttp/4.12.0	103.156.189.70	\N	\N	\N	\N	\N
b61003a9-dc9a-4147-b0a6-6b7b34b779dc	663b616a-58c8-4a0b-8ed1-bd9e1e4f18c0	2026-08-01 13:53:10.923713+00	2026-08-01 13:53:10.923713+00	\N	aal1	\N	\N	okhttp/4.12.0	103.156.189.70	\N	\N	\N	\N	\N
6b41b0f5-b220-43ab-95df-36ef323f939f	c916b5c0-762b-4db4-8368-d229c09c4de9	2026-08-01 14:31:07.109083+00	2026-08-01 14:31:07.109083+00	\N	aal1	\N	\N	okhttp/4.12.0	103.156.189.70	\N	\N	\N	\N	\N
90e5285b-05ac-4951-9c9e-121287a227fd	be0af516-46a2-4c9c-84c7-9b71e5de5359	2026-08-03 02:05:35.268316+00	2026-08-03 15:11:38.692695+00	\N	aal1	\N	2026-08-03 15:11:38.692558	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36	103.199.109.233	\N	\N	\N	\N	\N
7a4c64d4-e623-4398-926e-b00105d4817f	8cca0a73-02bf-4262-9071-6ca4356c4566	2026-06-28 16:46:55.287596+00	2026-06-28 16:46:55.287596+00	\N	aal1	\N	\N	okhttp/4.12.0	103.156.189.68	\N	\N	\N	\N	\N
1deb5795-1e6f-4981-ba08-f0cee70f8815	a9c43137-d6ed-40bb-9e2d-269169b8656e	2026-06-28 16:59:04.371975+00	2026-06-28 16:59:04.371975+00	\N	aal1	\N	\N	okhttp/4.12.0	103.156.189.69	\N	\N	\N	\N	\N
20e1598b-bbc8-4e23-b731-bb2c86117bd7	a9c43137-d6ed-40bb-9e2d-269169b8656e	2026-06-28 17:00:05.642532+00	2026-06-28 17:00:05.642532+00	\N	aal1	\N	\N	okhttp/4.12.0	103.156.189.69	\N	\N	\N	\N	\N
962dc29c-06bf-49b1-a7a1-b3c991766bef	a9c43137-d6ed-40bb-9e2d-269169b8656e	2026-06-28 17:04:54.863983+00	2026-06-28 17:04:54.863983+00	\N	aal1	\N	\N	okhttp/4.12.0	103.156.189.68	\N	\N	\N	\N	\N
c116a8e8-953c-4825-8e82-4ef9ab62ef5e	a9c43137-d6ed-40bb-9e2d-269169b8656e	2026-06-28 17:33:22.791517+00	2026-06-28 17:33:22.791517+00	\N	aal1	\N	\N	okhttp/4.12.0	103.156.189.68	\N	\N	\N	\N	\N
aab6c713-244f-4e4c-a5c6-6db91128957e	a9c43137-d6ed-40bb-9e2d-269169b8656e	2026-06-28 17:34:48.193626+00	2026-06-28 17:34:48.193626+00	\N	aal1	\N	\N	okhttp/4.12.0	103.156.189.68	\N	\N	\N	\N	\N
8ac1fd6e-87a3-4bc1-96c4-a624fb0e3d64	a9c43137-d6ed-40bb-9e2d-269169b8656e	2026-06-28 17:42:00.402797+00	2026-06-28 17:42:00.402797+00	\N	aal1	\N	\N	okhttp/4.12.0	103.156.189.68	\N	\N	\N	\N	\N
edb011d8-e66c-414c-9b6a-bd73174892f2	a9c43137-d6ed-40bb-9e2d-269169b8656e	2026-06-28 17:45:12.405985+00	2026-06-28 17:45:12.405985+00	\N	aal1	\N	\N	okhttp/4.12.0	103.156.189.68	\N	\N	\N	\N	\N
c43f72a0-9088-4eb7-ad63-44c60b813131	a9c43137-d6ed-40bb-9e2d-269169b8656e	2026-06-28 17:46:36.528789+00	2026-06-28 17:46:36.528789+00	\N	aal1	\N	\N	okhttp/4.12.0	103.156.189.68	\N	\N	\N	\N	\N
837d10f4-cac4-4187-8c9f-ea8667809a13	a9c43137-d6ed-40bb-9e2d-269169b8656e	2026-06-28 17:50:17.502547+00	2026-06-28 17:50:17.502547+00	\N	aal1	\N	\N	okhttp/4.12.0	103.156.189.70	\N	\N	\N	\N	\N
9a622ba2-4525-4782-bf2e-4f4bcddd5202	a9c43137-d6ed-40bb-9e2d-269169b8656e	2026-06-28 17:58:11.793577+00	2026-06-28 17:58:11.793577+00	\N	aal1	\N	\N	okhttp/4.12.0	103.156.189.68	\N	\N	\N	\N	\N
9223f0c6-7de0-4946-a2d3-9491d3c52fa7	a9c43137-d6ed-40bb-9e2d-269169b8656e	2026-06-29 06:05:43.166603+00	2026-06-29 06:05:43.166603+00	\N	aal1	\N	\N	okhttp/4.12.0	103.156.189.68	\N	\N	\N	\N	\N
d97a8858-d504-4a5a-bcf3-4b5d6de9efdd	0c7540e4-69f1-4d46-98b3-3577b0e15162	2026-06-29 06:08:43.63837+00	2026-06-29 06:08:43.63837+00	\N	aal1	\N	\N	okhttp/4.12.0	103.156.189.68	\N	\N	\N	\N	\N
9d7a3d79-0db8-4ac1-8d7d-f1dbd207c8af	a9c43137-d6ed-40bb-9e2d-269169b8656e	2026-06-29 06:55:19.057469+00	2026-06-29 06:55:19.057469+00	\N	aal1	\N	\N	okhttp/4.12.0	103.156.189.68	\N	\N	\N	\N	\N
075e05dd-4562-420c-b6dc-d04eaa6c6f86	a9c43137-d6ed-40bb-9e2d-269169b8656e	2026-06-29 07:01:18.376213+00	2026-06-29 07:01:18.376213+00	\N	aal1	\N	\N	okhttp/4.12.0	103.156.189.69	\N	\N	\N	\N	\N
2b81ceed-696f-4485-a81d-048ea8ee9f98	a9c43137-d6ed-40bb-9e2d-269169b8656e	2026-06-29 07:08:28.101022+00	2026-06-29 07:08:28.101022+00	\N	aal1	\N	\N	okhttp/4.12.0	103.156.189.69	\N	\N	\N	\N	\N
1e5eb22d-df06-4607-83f1-0e710f428214	a9c43137-d6ed-40bb-9e2d-269169b8656e	2026-06-29 07:13:52.829751+00	2026-06-29 07:13:52.829751+00	\N	aal1	\N	\N	okhttp/4.12.0	103.156.189.68	\N	\N	\N	\N	\N
be57d40a-4a0f-491a-a21c-a8c017b0ec4a	a9c43137-d6ed-40bb-9e2d-269169b8656e	2026-06-29 07:15:38.283392+00	2026-06-29 07:15:38.283392+00	\N	aal1	\N	\N	okhttp/4.12.0	103.156.189.68	\N	\N	\N	\N	\N
12687016-4164-4dcf-a664-65eccc760443	0c7540e4-69f1-4d46-98b3-3577b0e15162	2026-06-29 07:17:04.033781+00	2026-06-29 07:17:04.033781+00	\N	aal1	\N	\N	okhttp/4.12.0	103.156.189.68	\N	\N	\N	\N	\N
f32d898a-eaf2-4da5-9fcb-c6157768c3a5	0c7540e4-69f1-4d46-98b3-3577b0e15162	2026-06-29 07:37:48.242688+00	2026-06-29 07:37:48.242688+00	\N	aal1	\N	\N	okhttp/4.12.0	103.156.189.69	\N	\N	\N	\N	\N
331f0227-7b77-4aab-821e-6ca5c76b7212	0c7540e4-69f1-4d46-98b3-3577b0e15162	2026-06-29 07:41:01.90076+00	2026-06-29 07:41:01.90076+00	\N	aal1	\N	\N	okhttp/4.12.0	103.156.189.69	\N	\N	\N	\N	\N
8f90a4ca-3bb5-4f8b-a475-ec92e12ec61b	0c7540e4-69f1-4d46-98b3-3577b0e15162	2026-06-29 07:42:10.314387+00	2026-06-29 07:42:10.314387+00	\N	aal1	\N	\N	okhttp/4.12.0	103.156.189.70	\N	\N	\N	\N	\N
7656f49e-7982-4bb8-b517-d69e832286d6	0c7540e4-69f1-4d46-98b3-3577b0e15162	2026-06-29 07:44:12.750542+00	2026-06-29 12:18:04.735789+00	\N	aal1	\N	2026-06-29 12:18:04.735635	okhttp/4.12.0	103.156.189.70	\N	\N	\N	\N	\N
c2c18a16-dca0-4f76-8c05-4d95c00c5105	0c7540e4-69f1-4d46-98b3-3577b0e15162	2026-06-29 12:18:34.37299+00	2026-06-29 12:18:34.37299+00	\N	aal1	\N	\N	okhttp/4.12.0	103.156.189.70	\N	\N	\N	\N	\N
0d899449-4c78-42a9-ae95-ff14887ac01a	0c7540e4-69f1-4d46-98b3-3577b0e15162	2026-06-29 12:32:10.639748+00	2026-06-29 12:32:10.639748+00	\N	aal1	\N	\N	okhttp/4.12.0	103.156.189.70	\N	\N	\N	\N	\N
c0ae8dc3-8cb6-4133-a1de-c80c26d9997c	0c7540e4-69f1-4d46-98b3-3577b0e15162	2026-06-29 12:34:39.587075+00	2026-06-29 12:34:39.587075+00	\N	aal1	\N	\N	okhttp/4.12.0	103.156.189.70	\N	\N	\N	\N	\N
9ef9cc13-7b2e-4935-b569-beb8275e290a	0c7540e4-69f1-4d46-98b3-3577b0e15162	2026-06-29 14:29:09.891572+00	2026-06-29 14:29:09.891572+00	\N	aal1	\N	\N	okhttp/4.12.0	103.156.189.70	\N	\N	\N	\N	\N
332cb499-4e7b-436b-a75e-ace806424e86	0c7540e4-69f1-4d46-98b3-3577b0e15162	2026-06-29 15:09:57.69405+00	2026-06-29 15:09:57.69405+00	\N	aal1	\N	\N	okhttp/4.12.0	103.156.189.70	\N	\N	\N	\N	\N
95198d1f-9f9b-455a-ba23-e5c2295a81b1	0c7540e4-69f1-4d46-98b3-3577b0e15162	2026-06-29 15:39:02.65356+00	2026-06-29 15:39:02.65356+00	\N	aal1	\N	\N	okhttp/4.12.0	103.156.189.70	\N	\N	\N	\N	\N
1ccc4648-238e-4124-a92f-c138bd975382	a9c43137-d6ed-40bb-9e2d-269169b8656e	2026-06-28 17:18:39.983315+00	2026-06-29 15:42:57.886786+00	\N	aal1	\N	2026-06-29 15:42:57.886679	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36	103.156.189.70	\N	\N	\N	\N	\N
2b6a0ab2-4c21-4167-b674-62d511e65252	0c7540e4-69f1-4d46-98b3-3577b0e15162	2026-06-29 15:44:43.00759+00	2026-06-29 15:44:43.00759+00	\N	aal1	\N	\N	okhttp/4.12.0	103.156.189.70	\N	\N	\N	\N	\N
322696f2-6c12-48ca-a0cf-f68a0bb618d9	0c7540e4-69f1-4d46-98b3-3577b0e15162	2026-06-29 15:46:46.188867+00	2026-06-29 15:46:46.188867+00	\N	aal1	\N	\N	okhttp/4.12.0	103.156.189.70	\N	\N	\N	\N	\N
0257d82f-d2f8-48ae-8529-6ae31355617e	0c7540e4-69f1-4d46-98b3-3577b0e15162	2026-06-29 16:02:46.469755+00	2026-06-29 16:02:46.469755+00	\N	aal1	\N	\N	okhttp/4.12.0	103.156.189.70	\N	\N	\N	\N	\N
316d3740-bc42-41f8-90e1-40eb7595c83d	0c7540e4-69f1-4d46-98b3-3577b0e15162	2026-06-29 16:12:05.190047+00	2026-06-29 16:12:05.190047+00	\N	aal1	\N	\N	okhttp/4.12.0	103.156.189.70	\N	\N	\N	\N	\N
80af05e4-7361-4da1-bddc-aa6ee5573ca1	d1eb281c-c2e1-441e-b40d-08a35776bdb4	2026-06-29 16:15:15.664958+00	2026-06-29 16:15:15.664958+00	\N	aal1	\N	\N	okhttp/4.12.0	103.156.189.70	\N	\N	\N	\N	\N
44b7999d-9b27-47c8-896a-5b00529c5478	0c7540e4-69f1-4d46-98b3-3577b0e15162	2026-06-29 16:16:37.371541+00	2026-06-29 16:16:37.371541+00	\N	aal1	\N	\N	okhttp/4.12.0	103.156.189.70	\N	\N	\N	\N	\N
16bb8a01-68bf-455c-9b0f-8de94e438bcb	0c7540e4-69f1-4d46-98b3-3577b0e15162	2026-06-30 15:31:16.090431+00	2026-06-30 15:31:16.090431+00	\N	aal1	\N	\N	okhttp/4.12.0	103.156.189.71	\N	\N	\N	\N	\N
8f2cb9e3-ec07-48a5-91ec-3492dd8e03a8	0c7540e4-69f1-4d46-98b3-3577b0e15162	2026-06-30 16:17:52.591106+00	2026-06-30 16:17:52.591106+00	\N	aal1	\N	\N	okhttp/4.12.0	103.156.189.70	\N	\N	\N	\N	\N
4ae39603-a2fa-49aa-b531-36042435f761	0c7540e4-69f1-4d46-98b3-3577b0e15162	2026-06-30 16:31:34.556694+00	2026-06-30 16:31:34.556694+00	\N	aal1	\N	\N	okhttp/4.12.0	103.156.189.70	\N	\N	\N	\N	\N
3269cd5c-6a09-4bd6-b618-ea336cecbf43	0c7540e4-69f1-4d46-98b3-3577b0e15162	2026-06-30 16:34:47.398085+00	2026-06-30 16:34:47.398085+00	\N	aal1	\N	\N	okhttp/4.12.0	103.156.189.68	\N	\N	\N	\N	\N
aa69b3e7-caac-4534-92b4-96f90fbf40c4	0c7540e4-69f1-4d46-98b3-3577b0e15162	2026-06-30 16:38:31.284825+00	2026-06-30 16:38:31.284825+00	\N	aal1	\N	\N	okhttp/4.12.0	103.156.189.70	\N	\N	\N	\N	\N
8bfe9cc2-8a69-47ea-a9bc-983290fe46c0	0c7540e4-69f1-4d46-98b3-3577b0e15162	2026-06-30 16:44:09.251857+00	2026-06-30 16:44:09.251857+00	\N	aal1	\N	\N	okhttp/4.12.0	103.156.189.70	\N	\N	\N	\N	\N
66128764-a02b-4066-9ace-e4efef78e6ab	0c7540e4-69f1-4d46-98b3-3577b0e15162	2026-06-30 16:45:12.129475+00	2026-06-30 16:45:12.129475+00	\N	aal1	\N	\N	okhttp/4.12.0	103.156.189.70	\N	\N	\N	\N	\N
4c9027fc-0841-4ca3-b435-405b8aaf12d1	0c7540e4-69f1-4d46-98b3-3577b0e15162	2026-06-30 17:05:07.911799+00	2026-06-30 17:05:07.911799+00	\N	aal1	\N	\N	okhttp/4.12.0	103.156.189.70	\N	\N	\N	\N	\N
d7ef97bf-f2af-48ef-80c1-04c6ba1c7aac	0c7540e4-69f1-4d46-98b3-3577b0e15162	2026-06-30 17:22:49.062774+00	2026-06-30 17:22:49.062774+00	\N	aal1	\N	\N	okhttp/4.12.0	103.156.189.70	\N	\N	\N	\N	\N
145c964a-70da-4e98-85ea-125576f69f0a	0c7540e4-69f1-4d46-98b3-3577b0e15162	2026-07-01 05:24:21.591021+00	2026-07-01 05:24:21.591021+00	\N	aal1	\N	\N	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36	103.156.189.70	\N	\N	\N	\N	\N
87716690-36ea-4cd8-b7bf-f6bbe0f20e5b	0c7540e4-69f1-4d46-98b3-3577b0e15162	2026-07-01 06:16:05.766318+00	2026-07-01 06:16:05.766318+00	\N	aal1	\N	\N	okhttp/4.12.0	103.156.189.70	\N	\N	\N	\N	\N
661204f1-1bd3-48d3-b39d-b7720e3b587e	0c7540e4-69f1-4d46-98b3-3577b0e15162	2026-07-01 06:51:05.279433+00	2026-07-01 06:51:05.279433+00	\N	aal1	\N	\N	okhttp/4.12.0	103.156.189.70	\N	\N	\N	\N	\N
504b2eab-3de6-4e9c-a9e3-8251dd800f49	0c7540e4-69f1-4d46-98b3-3577b0e15162	2026-07-01 07:03:06.961332+00	2026-07-01 07:03:06.961332+00	\N	aal1	\N	\N	okhttp/4.12.0	103.156.189.70	\N	\N	\N	\N	\N
4f7bb7dd-b1b3-40b6-9daa-4e59acb4edc5	0c7540e4-69f1-4d46-98b3-3577b0e15162	2026-07-01 07:05:47.592183+00	2026-07-01 07:05:47.592183+00	\N	aal1	\N	\N	okhttp/4.12.0	103.156.189.70	\N	\N	\N	\N	\N
1ba19463-914a-4012-9ffb-db21c9521f08	0c7540e4-69f1-4d46-98b3-3577b0e15162	2026-07-01 07:16:47.589634+00	2026-07-01 07:16:47.589634+00	\N	aal1	\N	\N	okhttp/4.12.0	103.156.189.70	\N	\N	\N	\N	\N
55999fb9-ed60-4db6-9dbd-e502817b856e	0c7540e4-69f1-4d46-98b3-3577b0e15162	2026-07-01 07:20:41.69037+00	2026-07-01 07:20:41.69037+00	\N	aal1	\N	\N	okhttp/4.12.0	103.156.189.70	\N	\N	\N	\N	\N
b1cc4cf7-a29f-4b02-bbad-4fb063532789	0c7540e4-69f1-4d46-98b3-3577b0e15162	2026-07-01 07:22:10.653459+00	2026-07-01 07:22:10.653459+00	\N	aal1	\N	\N	okhttp/4.12.0	103.156.189.70	\N	\N	\N	\N	\N
a2f5985b-29cf-44de-9fe6-bf32bc714712	0c7540e4-69f1-4d46-98b3-3577b0e15162	2026-07-20 10:39:40.83393+00	2026-07-20 10:39:40.83393+00	\N	aal1	\N	\N	okhttp/4.12.0	103.156.189.71	\N	\N	\N	\N	\N
ae33d863-5f6c-4dac-ab90-f177476b89e2	0c7540e4-69f1-4d46-98b3-3577b0e15162	2026-07-01 08:13:27.59292+00	2026-07-01 08:13:27.59292+00	\N	aal1	\N	\N	okhttp/4.12.0	103.156.189.70	\N	\N	\N	\N	\N
de993099-4d68-4a52-8144-86d8697896be	0c7540e4-69f1-4d46-98b3-3577b0e15162	2026-07-01 08:14:30.239905+00	2026-07-01 08:14:30.239905+00	\N	aal1	\N	\N	okhttp/4.12.0	103.156.189.70	\N	\N	\N	\N	\N
8acf8a14-954e-4df6-95bf-2702c8c9b1b3	0c7540e4-69f1-4d46-98b3-3577b0e15162	2026-07-01 08:26:42.655905+00	2026-07-01 08:26:42.655905+00	\N	aal1	\N	\N	okhttp/4.12.0	103.156.189.70	\N	\N	\N	\N	\N
9b88da25-8739-483f-81ef-08a38e32ba70	0c7540e4-69f1-4d46-98b3-3577b0e15162	2026-07-01 11:19:01.310856+00	2026-07-01 11:19:01.310856+00	\N	aal1	\N	\N	okhttp/4.12.0	103.156.189.70	\N	\N	\N	\N	\N
86204205-672c-47da-bd3f-61238855cc16	0c7540e4-69f1-4d46-98b3-3577b0e15162	2026-07-01 11:51:21.529462+00	2026-07-01 11:51:21.529462+00	\N	aal1	\N	\N	okhttp/4.12.0	103.156.189.70	\N	\N	\N	\N	\N
9995755d-494c-4d29-9942-fc5cc9d7564f	0c7540e4-69f1-4d46-98b3-3577b0e15162	2026-07-01 12:07:14.007762+00	2026-07-01 12:07:14.007762+00	\N	aal1	\N	\N	okhttp/4.12.0	103.156.189.70	\N	\N	\N	\N	\N
f653d7e3-b305-44d0-b773-fdfef74af16c	0c7540e4-69f1-4d46-98b3-3577b0e15162	2026-07-01 12:20:42.833436+00	2026-07-01 12:20:42.833436+00	\N	aal1	\N	\N	okhttp/4.12.0	103.156.189.70	\N	\N	\N	\N	\N
1efcce5f-27a0-4642-89f9-fc6d6ccd0bdd	0c7540e4-69f1-4d46-98b3-3577b0e15162	2026-07-01 12:24:19.478527+00	2026-07-01 12:24:19.478527+00	\N	aal1	\N	\N	okhttp/4.12.0	103.156.189.70	\N	\N	\N	\N	\N
0f750c3a-e6a1-48c2-85d3-6fba98325429	82354dcd-3fe9-42d6-8e76-f344db116242	2026-08-02 04:54:31.018733+00	2026-08-02 04:54:31.018733+00	\N	aal1	\N	\N	okhttp/4.12.0	103.156.189.71	\N	\N	\N	\N	\N
1fe271ee-2805-4955-829b-337c6e5373ee	0c7540e4-69f1-4d46-98b3-3577b0e15162	2026-07-01 12:28:16.355815+00	2026-07-01 12:28:16.355815+00	\N	aal1	\N	\N	okhttp/4.12.0	103.156.189.70	\N	\N	\N	\N	\N
a5cf3f01-4cb1-4971-b832-8daf69a4711d	be0af516-46a2-4c9c-84c7-9b71e5de5359	2026-08-03 15:27:24.000824+00	2026-08-03 15:27:24.000824+00	\N	aal1	\N	\N	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36	103.199.109.233	\N	\N	\N	\N	\N
2eb5b096-0759-4f61-b3f1-64d22902e86c	0c7540e4-69f1-4d46-98b3-3577b0e15162	2026-07-01 13:12:46.526109+00	2026-07-01 13:12:46.526109+00	\N	aal1	\N	\N	okhttp/4.12.0	103.156.189.70	\N	\N	\N	\N	\N
39169767-863e-4456-ae4b-769dde1ae3c9	0c7540e4-69f1-4d46-98b3-3577b0e15162	2026-07-01 13:13:21.520415+00	2026-07-01 13:13:21.520415+00	\N	aal1	\N	\N	okhttp/4.12.0	103.156.189.70	\N	\N	\N	\N	\N
a127585a-88ea-419a-a0dd-2419ff72f906	0c7540e4-69f1-4d46-98b3-3577b0e15162	2026-07-01 14:49:36.26664+00	2026-07-01 14:49:36.26664+00	\N	aal1	\N	\N	okhttp/4.12.0	103.156.189.70	\N	\N	\N	\N	\N
e71008d2-d2b5-42b7-ba9b-34513d193c67	0c7540e4-69f1-4d46-98b3-3577b0e15162	2026-07-01 15:56:38.111309+00	2026-07-01 15:56:38.111309+00	\N	aal1	\N	\N	okhttp/4.12.0	103.156.189.70	\N	\N	\N	\N	\N
158252af-80e8-4bdf-813d-1e765b98ec09	0c7540e4-69f1-4d46-98b3-3577b0e15162	2026-07-03 09:57:19.09034+00	2026-07-03 09:57:19.09034+00	\N	aal1	\N	\N	okhttp/4.12.0	103.156.189.71	\N	\N	\N	\N	\N
0a6c9cb6-cc0c-416c-a902-2373b7825c38	0c7540e4-69f1-4d46-98b3-3577b0e15162	2026-07-04 18:39:54.635949+00	2026-07-04 18:39:54.635949+00	\N	aal1	\N	\N	okhttp/4.12.0	103.156.189.71	\N	\N	\N	\N	\N
89a90de3-2dbe-4d1b-ab31-2c346a019eb6	0c7540e4-69f1-4d46-98b3-3577b0e15162	2026-07-04 21:08:46.575289+00	2026-07-04 21:08:46.575289+00	\N	aal1	\N	\N	okhttp/4.12.0	103.156.189.70	\N	\N	\N	\N	\N
1140b2a2-dc84-4d22-bca4-b3f81f47e859	0c7540e4-69f1-4d46-98b3-3577b0e15162	2026-07-08 11:04:58.544193+00	2026-07-08 11:04:58.544193+00	\N	aal1	\N	\N	okhttp/4.12.0	103.156.189.71	\N	\N	\N	\N	\N
aa703366-891a-463d-a326-c663a967857a	31377f7c-5eff-4de0-bcec-dae997ff9ac6	2026-07-31 17:19:59.780547+00	2026-07-31 17:19:59.780547+00	\N	aal1	\N	\N	okhttp/4.9.2	103.156.189.70	\N	\N	\N	\N	\N
362e79d8-ac48-4d6f-a5e4-6f1a915d34cd	bc4d5c79-829d-4b7e-9aaf-936294358391	2026-07-27 17:54:08.485893+00	2026-07-27 17:54:08.485893+00	\N	aal1	\N	\N	okhttp/4.9.2	103.156.189.70	\N	\N	\N	\N	\N
86b3bee3-442d-4b4e-8f59-36675713babb	b157280f-c991-4346-82b0-bc232487cdf2	2026-08-01 13:24:05.605044+00	2026-08-01 13:24:05.605044+00	\N	aal1	\N	\N	okhttp/4.12.0	103.156.189.70	\N	\N	\N	\N	\N
2edf7885-328b-47b6-b70d-f09f698c666b	bf2a506d-e515-40d0-b2cd-5427f26b717b	2026-08-01 14:09:22.025896+00	2026-08-01 14:09:22.025896+00	\N	aal1	\N	\N	okhttp/4.12.0	103.156.189.70	\N	\N	\N	\N	\N
b601ea86-7a25-4584-bfee-f4e89b6342f3	0c7540e4-69f1-4d46-98b3-3577b0e15162	2026-07-12 16:24:22.768374+00	2026-07-12 17:23:05.426706+00	\N	aal1	\N	2026-07-12 17:23:05.426575	okhttp/4.12.0	103.156.189.70	\N	\N	\N	\N	\N
0a8edb5a-3faa-4dd7-894c-caf2316269c6	0c7540e4-69f1-4d46-98b3-3577b0e15162	2026-07-01 05:24:22.3903+00	2026-07-13 01:35:27.128332+00	\N	aal1	\N	2026-07-13 01:35:27.128221	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36	103.156.189.71	\N	\N	\N	\N	\N
65e8e19c-813a-423d-a2a6-d9c96a144ac7	0c7540e4-69f1-4d46-98b3-3577b0e15162	2026-07-13 01:50:44.446001+00	2026-07-13 01:50:44.446001+00	\N	aal1	\N	\N	okhttp/4.12.0	103.156.189.70	\N	\N	\N	\N	\N
ec5d2bef-e946-4244-8056-808ac1ab6cae	0c7540e4-69f1-4d46-98b3-3577b0e15162	2026-07-13 01:59:33.669882+00	2026-07-13 01:59:33.669882+00	\N	aal1	\N	\N	okhttp/4.12.0	103.156.189.70	\N	\N	\N	\N	\N
d3aef04d-674b-4217-a3de-3dd5f8df8069	0c7540e4-69f1-4d46-98b3-3577b0e15162	2026-07-13 02:17:19.880421+00	2026-07-13 02:17:19.880421+00	\N	aal1	\N	\N	okhttp/4.12.0	103.156.189.71	\N	\N	\N	\N	\N
59907faf-52e5-4eb1-a674-f14dd86812d8	be0af516-46a2-4c9c-84c7-9b71e5de5359	2026-08-03 15:29:51.252582+00	2026-08-03 15:29:51.252582+00	\N	aal1	\N	\N	Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Mobile Safari/537.36	103.199.109.233	\N	\N	\N	\N	\N
d3711e17-ff7a-48e1-a4f6-586eec25b063	0c7540e4-69f1-4d46-98b3-3577b0e15162	2026-07-13 09:49:56.059551+00	2026-07-13 09:49:56.059551+00	\N	aal1	\N	\N	okhttp/4.12.0	103.156.189.71	\N	\N	\N	\N	\N
24f5771c-5b99-411d-b14a-2b533d102ede	0c7540e4-69f1-4d46-98b3-3577b0e15162	2026-07-14 07:19:47.51943+00	2026-07-14 07:19:47.51943+00	\N	aal1	\N	\N	okhttp/4.12.0	103.156.189.70	\N	\N	\N	\N	\N
93f9a5f0-b454-4365-89cd-b110174fd080	0c7540e4-69f1-4d46-98b3-3577b0e15162	2026-07-14 07:49:22.315288+00	2026-07-14 07:49:22.315288+00	\N	aal1	\N	\N	okhttp/4.12.0	103.156.189.70	\N	\N	\N	\N	\N
66263cb7-24d9-45f6-ac46-a3a9231dcf11	0c7540e4-69f1-4d46-98b3-3577b0e15162	2026-07-14 09:11:10.707341+00	2026-07-14 09:11:10.707341+00	\N	aal1	\N	\N	okhttp/4.12.0	103.156.189.70	\N	\N	\N	\N	\N
44ca4723-b45b-4009-9e27-88baabb2b77b	0c7540e4-69f1-4d46-98b3-3577b0e15162	2026-07-14 09:36:48.942787+00	2026-07-14 09:36:48.942787+00	\N	aal1	\N	\N	okhttp/4.12.0	103.156.189.70	\N	\N	\N	\N	\N
6d03aaa9-58cc-4544-8da2-1a7b8fe7f533	0c7540e4-69f1-4d46-98b3-3577b0e15162	2026-07-14 10:00:38.660173+00	2026-07-14 10:00:38.660173+00	\N	aal1	\N	\N	okhttp/4.12.0	103.156.189.70	\N	\N	\N	\N	\N
e0a0551e-0627-4c7c-89f7-cc607e1ba36e	0c7540e4-69f1-4d46-98b3-3577b0e15162	2026-07-14 10:42:12.089353+00	2026-07-14 10:42:12.089353+00	\N	aal1	\N	\N	okhttp/4.12.0	103.156.189.71	\N	\N	\N	\N	\N
07ca59db-468d-422b-9e88-da0a69fdd3ca	dd5b6be3-bf04-4cee-a971-911aa8dd9f9e	2026-08-01 09:21:05.531444+00	2026-08-01 09:21:05.531444+00	\N	aal1	\N	\N	okhttp/4.9.2	103.156.189.70	\N	\N	\N	\N	\N
471e5a2d-d670-4f73-b651-76d107a17d56	b8040d5d-d4e6-4f7e-9993-79c75b64effd	2026-08-01 13:45:45.817512+00	2026-08-01 13:45:45.817512+00	\N	aal1	\N	\N	okhttp/4.12.0	103.156.189.70	\N	\N	\N	\N	\N
877de0b1-7437-49b8-a5a9-24dc82b2bbcb	79241b9e-03fe-4877-898e-433446dfa5cf	2026-07-14 12:09:43.766344+00	2026-07-14 12:09:43.766344+00	\N	aal1	\N	\N	okhttp/4.12.0	103.156.189.71	\N	\N	\N	\N	\N
402b23a7-4d05-4447-b789-48dcd17be042	0c7540e4-69f1-4d46-98b3-3577b0e15162	2026-07-14 12:11:09.763841+00	2026-07-14 12:11:09.763841+00	\N	aal1	\N	\N	okhttp/4.12.0	103.156.189.71	\N	\N	\N	\N	\N
c645dd77-72dc-4ec7-80a2-eeb4f84595df	be0af516-46a2-4c9c-84c7-9b71e5de5359	2026-07-26 06:32:33.783432+00	2026-07-26 09:25:05.972172+00	\N	aal1	\N	2026-07-26 09:25:05.972077	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36	103.156.189.71	\N	\N	\N	\N	\N
c56a5463-e939-49fc-8a06-b4a32ff53457	0c7540e4-69f1-4d46-98b3-3577b0e15162	2026-07-14 12:28:57.45819+00	2026-07-14 12:28:57.45819+00	\N	aal1	\N	\N	okhttp/4.12.0	103.156.189.70	\N	\N	\N	\N	\N
0df76d2c-1bac-4c52-8def-826df1274baa	0c7540e4-69f1-4d46-98b3-3577b0e15162	2026-07-16 07:43:53.195571+00	2026-07-16 07:43:53.195571+00	\N	aal1	\N	\N	okhttp/4.12.0	103.156.189.69	\N	\N	\N	\N	\N
21da0fa1-210a-41df-b4f9-fe88484b4f04	0c7540e4-69f1-4d46-98b3-3577b0e15162	2026-07-13 01:37:22.710687+00	2026-07-16 07:44:04.846358+00	\N	aal1	\N	2026-07-16 07:44:04.846227	okhttp/4.12.0	103.156.189.69	\N	\N	\N	\N	\N
50ef41b7-4dfa-4561-b548-529f7e9460dd	8b3f7c15-1a6f-455a-b79e-f82eec82de24	2026-08-02 05:30:20.745398+00	2026-08-02 05:30:20.745398+00	\N	aal1	\N	\N	okhttp/4.9.2	103.156.189.69	\N	\N	\N	\N	\N
bf32420a-6b1f-4e35-bea2-80873372adf0	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	2026-08-04 06:24:20.25323+00	2026-08-04 06:24:20.25323+00	\N	aal1	\N	\N	okhttp/4.12.0	103.199.109.233	\N	\N	\N	\N	\N
943ce797-e326-413c-9def-e8b158a04f99	0c7540e4-69f1-4d46-98b3-3577b0e15162	2026-07-16 10:12:27.614889+00	2026-07-16 11:10:41.68826+00	\N	aal1	\N	2026-07-16 11:10:41.688159	okhttp/4.12.0	103.156.189.69	\N	\N	\N	\N	\N
10356208-19ed-455d-bc13-16c3b51dc5de	0c7540e4-69f1-4d46-98b3-3577b0e15162	2026-07-16 12:53:25.088758+00	2026-07-16 12:53:25.088758+00	\N	aal1	\N	\N	okhttp/4.12.0	103.156.189.69	\N	\N	\N	\N	\N
d9870771-e6e5-4909-9a24-67decd9392da	144d9b83-f3be-448f-b678-c711c76e513c	2026-07-16 16:22:29.070082+00	2026-07-16 16:22:29.070082+00	\N	aal1	\N	\N	okhttp/4.12.0	103.156.189.69	\N	\N	\N	\N	\N
4d40aac6-add2-4133-a4fa-12095f1a6be3	0c7540e4-69f1-4d46-98b3-3577b0e15162	2026-07-16 19:07:25.629131+00	2026-07-16 20:05:41.303605+00	\N	aal1	\N	2026-07-16 20:05:41.303508	okhttp/4.12.0	103.156.189.69	\N	\N	\N	\N	\N
c1ee1b8e-91d9-4498-8f1f-e2c71a081d6f	0c7540e4-69f1-4d46-98b3-3577b0e15162	2026-07-16 20:08:22.550551+00	2026-07-16 20:08:22.550551+00	\N	aal1	\N	\N	okhttp/4.12.0	103.156.189.71	\N	\N	\N	\N	\N
0cfba08a-2089-4fe1-afee-6941807b3a26	64e9dbfa-539b-4ec6-87c1-bb8dc93c40af	2026-07-17 05:41:20.783176+00	2026-07-17 05:41:20.783176+00	\N	aal1	\N	\N	okhttp/4.12.0	103.156.189.71	\N	\N	\N	\N	\N
fd33c8ed-1a34-463f-a113-96d2700956dd	0c7540e4-69f1-4d46-98b3-3577b0e15162	2026-07-17 06:21:04.766289+00	2026-07-17 06:21:04.766289+00	\N	aal1	\N	\N	okhttp/4.12.0	103.156.189.71	\N	\N	\N	\N	\N
6dca3228-f141-4b2c-999a-78adc94250fb	0c7540e4-69f1-4d46-98b3-3577b0e15162	2026-07-17 10:33:28.958131+00	2026-07-17 10:33:28.958131+00	\N	aal1	\N	\N	okhttp/4.12.0	103.156.189.69	\N	\N	\N	\N	\N
aef9e178-6934-4c76-ab89-817cf1987e55	0c7540e4-69f1-4d46-98b3-3577b0e15162	2026-07-17 11:03:21.866234+00	2026-07-17 11:03:21.866234+00	\N	aal1	\N	\N	okhttp/4.12.0	103.156.189.69	\N	\N	\N	\N	\N
9d243e5c-2a19-4000-be39-4f3b2250b8de	97e8054c-1a52-47df-b50c-eade857c1867	2026-07-17 18:26:01.647133+00	2026-07-17 18:26:01.647133+00	\N	aal1	\N	\N	okhttp/4.12.0	103.156.189.71	\N	\N	\N	\N	\N
737c133b-432c-4ad7-85bb-366ddaf27d6e	0c7540e4-69f1-4d46-98b3-3577b0e15162	2026-07-18 09:53:40.8087+00	2026-07-18 09:53:40.8087+00	\N	aal1	\N	\N	okhttp/4.12.0	103.156.189.71	\N	\N	\N	\N	\N
ca78bfb8-58ce-424f-9c54-de97b3336c28	0c7540e4-69f1-4d46-98b3-3577b0e15162	2026-07-18 10:15:44.102817+00	2026-07-18 10:15:44.102817+00	\N	aal1	\N	\N	okhttp/4.12.0	103.156.189.69	\N	\N	\N	\N	\N
4482536b-97e6-4ed9-b635-4c992973649e	0c7540e4-69f1-4d46-98b3-3577b0e15162	2026-07-18 10:35:24.92401+00	2026-07-18 10:35:24.92401+00	\N	aal1	\N	\N	okhttp/4.12.0	103.156.189.69	\N	\N	\N	\N	\N
5414ed5b-bb2c-4dd1-a131-7b6478026dfe	0c7540e4-69f1-4d46-98b3-3577b0e15162	2026-07-18 10:37:20.681816+00	2026-07-18 10:37:20.681816+00	\N	aal1	\N	\N	okhttp/4.12.0	103.156.189.71	\N	\N	\N	\N	\N
095a2c2f-c5ff-4a55-bea6-787b4b8e51d2	0c7540e4-69f1-4d46-98b3-3577b0e15162	2026-07-18 16:27:26.626705+00	2026-07-18 16:27:26.626705+00	\N	aal1	\N	\N	okhttp/4.12.0	103.156.189.69	\N	\N	\N	\N	\N
4828c3d8-527a-4114-b56e-fa6626f25342	0c7540e4-69f1-4d46-98b3-3577b0e15162	2026-07-18 17:20:40.111926+00	2026-07-18 17:20:40.111926+00	\N	aal1	\N	\N	okhttp/4.12.0	103.156.189.69	\N	\N	\N	\N	\N
393c864d-d044-4403-8200-b1bc36f99a3b	be0af516-46a2-4c9c-84c7-9b71e5de5359	2026-07-25 07:36:20.122067+00	2026-07-26 06:32:33.666675+00	\N	aal1	\N	2026-07-26 06:32:33.666552	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36	103.156.189.71	\N	\N	\N	\N	\N
218eaf72-d906-4e32-97d6-d91917b16964	0c7540e4-69f1-4d46-98b3-3577b0e15162	2026-07-18 17:25:45.813339+00	2026-07-18 17:25:45.813339+00	\N	aal1	\N	\N	okhttp/4.12.0	103.156.189.69	\N	\N	\N	\N	\N
6853b1e0-4bc2-4444-ab6b-23eca0894a40	520cc6fd-0ad8-41d6-afc3-b208d43fb016	2026-08-02 04:29:23.38056+00	2026-08-02 04:29:23.38056+00	\N	aal1	\N	\N	okhttp/4.12.0	103.156.189.71	\N	\N	\N	\N	\N
d01c9595-f86b-4884-9184-623ac9ae2d0c	435cfb2c-571a-4c0a-ba24-0420f8e22c97	2026-08-01 14:28:08.123432+00	2026-08-01 14:28:08.123432+00	\N	aal1	\N	\N	okhttp/4.12.0	103.156.189.70	\N	\N	\N	\N	\N
cdb0fc5d-8cc9-436d-bebb-bb515da139c8	be0af516-46a2-4c9c-84c7-9b71e5de5359	2026-07-26 09:25:05.94189+00	2026-08-02 05:11:32.816905+00	\N	aal1	\N	2026-08-02 05:11:32.816785	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36	103.156.189.71	\N	\N	\N	\N	\N
daaa2d90-12c4-4ab4-a3e4-69395844902f	d2d6b100-0e63-4e80-b564-7fd87ae514e3	2026-08-01 14:42:16.63506+00	2026-08-01 14:42:16.63506+00	\N	aal1	\N	\N	okhttp/4.12.0	103.156.189.70	\N	\N	\N	\N	\N
efb7aabe-baf9-4687-b77b-deb27edc1907	bc4d5c79-829d-4b7e-9aaf-936294358391	2026-07-27 18:02:20.881568+00	2026-07-27 18:02:20.881568+00	\N	aal1	\N	\N	okhttp/4.9.2	103.156.189.69	\N	\N	\N	\N	\N
10ff5ddd-f8b1-4585-a085-595c21ddd353	0c7540e4-69f1-4d46-98b3-3577b0e15162	2026-07-19 11:31:35.277769+00	2026-07-19 11:31:35.277769+00	\N	aal1	\N	\N	okhttp/4.12.0	103.156.189.71	\N	\N	\N	\N	\N
\.


--
-- Data for Name: mfa_amr_claims; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."mfa_amr_claims" ("session_id", "created_at", "updated_at", "authentication_method", "id") FROM stdin;
6853b1e0-4bc2-4444-ab6b-23eca0894a40	2026-08-02 04:29:23.385132+00	2026-08-02 04:29:23.385132+00	password	22f6c469-9d3c-45e7-afc8-b9d0f307cc33
a5cf3f01-4cb1-4971-b832-8daf69a4711d	2026-08-03 15:27:24.046102+00	2026-08-03 15:27:24.046102+00	password	61f63c06-bed7-4842-a607-34ec6e33744f
3146ed1e-f007-415e-841a-e7c3e928026c	2026-08-01 13:52:53.455214+00	2026-08-01 13:52:53.455214+00	password	ec131e7f-02a2-41f8-971e-161d5687cded
b61003a9-dc9a-4147-b0a6-6b7b34b779dc	2026-08-01 13:53:10.935858+00	2026-08-01 13:53:10.935858+00	password	01683de6-528c-4612-953a-0627c41fbec8
d01c9595-f86b-4884-9184-623ac9ae2d0c	2026-08-01 14:28:08.141127+00	2026-08-01 14:28:08.141127+00	password	65259e3f-e6d3-4b78-8651-9c18282a5476
c645dd77-72dc-4ec7-80a2-eeb4f84595df	2026-07-26 06:32:33.80876+00	2026-07-26 06:32:33.80876+00	password	121d3d92-9d14-48d7-b28d-3ee73f0bcd86
7a4c64d4-e623-4398-926e-b00105d4817f	2026-06-28 16:46:55.292137+00	2026-06-28 16:46:55.292137+00	password	a83bf8a6-3ba2-405d-9e4a-a28d54c53c57
1deb5795-1e6f-4981-ba08-f0cee70f8815	2026-06-28 16:59:04.376061+00	2026-06-28 16:59:04.376061+00	password	8b067b84-af53-4eb1-881e-f49df98d3873
20e1598b-bbc8-4e23-b731-bb2c86117bd7	2026-06-28 17:00:05.654995+00	2026-06-28 17:00:05.654995+00	password	276ad2f5-d91a-4b7b-9f41-df88c6ce60b7
962dc29c-06bf-49b1-a7a1-b3c991766bef	2026-06-28 17:04:54.871472+00	2026-06-28 17:04:54.871472+00	password	e3a04050-0978-45f7-b47c-6e47e43766ee
1ccc4648-238e-4124-a92f-c138bd975382	2026-06-28 17:18:40.001568+00	2026-06-28 17:18:40.001568+00	password	4e268a3c-33a3-43ad-aa10-61661bcfd0ac
c116a8e8-953c-4825-8e82-4ef9ab62ef5e	2026-06-28 17:33:22.813039+00	2026-06-28 17:33:22.813039+00	password	bd4ba152-9e0a-4099-a057-f2258747df3a
aab6c713-244f-4e4c-a5c6-6db91128957e	2026-06-28 17:34:48.218019+00	2026-06-28 17:34:48.218019+00	password	c78a7dfe-a563-4d48-9c00-70c047a9b137
8ac1fd6e-87a3-4bc1-96c4-a624fb0e3d64	2026-06-28 17:42:00.419187+00	2026-06-28 17:42:00.419187+00	password	1685c018-0bea-4229-b725-d93f4b07aad3
edb011d8-e66c-414c-9b6a-bd73174892f2	2026-06-28 17:45:12.42155+00	2026-06-28 17:45:12.42155+00	password	acc55458-d20c-4a89-af62-e14f385f2370
c43f72a0-9088-4eb7-ad63-44c60b813131	2026-06-28 17:46:36.533896+00	2026-06-28 17:46:36.533896+00	password	400e00d1-2932-4c6b-ad48-a7fa103eb3b2
837d10f4-cac4-4187-8c9f-ea8667809a13	2026-06-28 17:50:17.51107+00	2026-06-28 17:50:17.51107+00	password	971ac3a8-2549-49e6-8f83-c0b7f4a7406e
9a622ba2-4525-4782-bf2e-4f4bcddd5202	2026-06-28 17:58:11.808982+00	2026-06-28 17:58:11.808982+00	password	3f263d22-31fe-452f-9395-bf4e158d0ffc
9223f0c6-7de0-4946-a2d3-9491d3c52fa7	2026-06-29 06:05:43.206742+00	2026-06-29 06:05:43.206742+00	password	02c72da5-5334-4058-83ce-c4abff1a59dd
d97a8858-d504-4a5a-bcf3-4b5d6de9efdd	2026-06-29 06:08:43.642388+00	2026-06-29 06:08:43.642388+00	password	759f10ac-ee7d-4d48-b320-91613b7ae245
9d7a3d79-0db8-4ac1-8d7d-f1dbd207c8af	2026-06-29 06:55:19.081828+00	2026-06-29 06:55:19.081828+00	password	23b2e30e-9fa8-4e65-b5b3-f2d4ac6e97bd
075e05dd-4562-420c-b6dc-d04eaa6c6f86	2026-06-29 07:01:18.396868+00	2026-06-29 07:01:18.396868+00	password	9b1f70ce-e8ae-472d-ab5d-09036386ae1e
2b81ceed-696f-4485-a81d-048ea8ee9f98	2026-06-29 07:08:28.118079+00	2026-06-29 07:08:28.118079+00	password	7f529c63-4b7b-42d9-ac5b-bb93670c848c
1e5eb22d-df06-4607-83f1-0e710f428214	2026-06-29 07:13:52.85091+00	2026-06-29 07:13:52.85091+00	password	f9f73891-dbaf-4755-947a-862a6ccf9703
be57d40a-4a0f-491a-a21c-a8c017b0ec4a	2026-06-29 07:15:38.300002+00	2026-06-29 07:15:38.300002+00	password	01af8c8c-28db-4c91-80c7-12d12dae0c4b
12687016-4164-4dcf-a664-65eccc760443	2026-06-29 07:17:04.048284+00	2026-06-29 07:17:04.048284+00	password	caa6fa14-ec91-4bf5-8605-e90322e76393
f32d898a-eaf2-4da5-9fcb-c6157768c3a5	2026-06-29 07:37:48.260559+00	2026-06-29 07:37:48.260559+00	password	7ffa4cbe-4cdb-4fe8-9ee3-ef0e936db802
331f0227-7b77-4aab-821e-6ca5c76b7212	2026-06-29 07:41:01.917558+00	2026-06-29 07:41:01.917558+00	password	9beaa6fa-91d3-4d21-8842-6db370876516
8f90a4ca-3bb5-4f8b-a475-ec92e12ec61b	2026-06-29 07:42:10.318985+00	2026-06-29 07:42:10.318985+00	password	71a3f8d3-80f4-44d6-9a61-d0caf46b0b32
7656f49e-7982-4bb8-b517-d69e832286d6	2026-06-29 07:44:12.772674+00	2026-06-29 07:44:12.772674+00	password	8eb33613-3369-42c6-819c-7a3247f96ee7
c2c18a16-dca0-4f76-8c05-4d95c00c5105	2026-06-29 12:18:34.392348+00	2026-06-29 12:18:34.392348+00	password	4300a20e-2fea-4cfb-a8a3-285e50c00ff5
0d899449-4c78-42a9-ae95-ff14887ac01a	2026-06-29 12:32:10.654235+00	2026-06-29 12:32:10.654235+00	password	c0bd0954-edd2-4bd3-88ca-ba673fbb4f6c
c0ae8dc3-8cb6-4133-a1de-c80c26d9997c	2026-06-29 12:34:39.605451+00	2026-06-29 12:34:39.605451+00	password	460b82c4-9a2c-4675-bbad-49438a016c1c
9ef9cc13-7b2e-4935-b569-beb8275e290a	2026-06-29 14:29:09.926248+00	2026-06-29 14:29:09.926248+00	password	7bffe0ff-8f49-46cb-a75e-37e00d9bf72b
332cb499-4e7b-436b-a75e-ace806424e86	2026-06-29 15:09:57.705958+00	2026-06-29 15:09:57.705958+00	password	02ea6635-b050-4eac-9643-043f7f51f9d8
95198d1f-9f9b-455a-ba23-e5c2295a81b1	2026-06-29 15:39:02.669341+00	2026-06-29 15:39:02.669341+00	password	c18ad18c-ea89-4a83-98a1-a74fa17f5001
2b6a0ab2-4c21-4167-b674-62d511e65252	2026-06-29 15:44:43.019423+00	2026-06-29 15:44:43.019423+00	password	d8a16f3e-0adb-4348-827c-3ebe69d620fc
322696f2-6c12-48ca-a0cf-f68a0bb618d9	2026-06-29 15:46:46.203896+00	2026-06-29 15:46:46.203896+00	password	cfd14449-9c6f-4e42-aefd-5505f521a49e
0257d82f-d2f8-48ae-8529-6ae31355617e	2026-06-29 16:02:46.486276+00	2026-06-29 16:02:46.486276+00	password	62228d6c-723d-4a14-ae91-b48b8a353e0b
316d3740-bc42-41f8-90e1-40eb7595c83d	2026-06-29 16:12:05.212102+00	2026-06-29 16:12:05.212102+00	password	99a87506-e311-4a30-9715-de7d6075f573
80af05e4-7361-4da1-bddc-aa6ee5573ca1	2026-06-29 16:15:15.669962+00	2026-06-29 16:15:15.669962+00	password	a288fa3e-c832-474b-92ec-e3d66162780f
44b7999d-9b27-47c8-896a-5b00529c5478	2026-06-29 16:16:37.377502+00	2026-06-29 16:16:37.377502+00	password	4a11ffdc-ab47-4990-bd15-6eaf4edefae2
16bb8a01-68bf-455c-9b0f-8de94e438bcb	2026-06-30 15:31:16.140901+00	2026-06-30 15:31:16.140901+00	password	ba0e1027-3234-4caa-b266-b3aa5a70c75b
8f2cb9e3-ec07-48a5-91ec-3492dd8e03a8	2026-06-30 16:17:52.602411+00	2026-06-30 16:17:52.602411+00	password	a6a50b63-5669-40b4-8cfb-9f670a5c8b65
4ae39603-a2fa-49aa-b531-36042435f761	2026-06-30 16:31:34.574397+00	2026-06-30 16:31:34.574397+00	password	a8ab19d3-7d81-4043-9ee5-ee4109a0468e
3269cd5c-6a09-4bd6-b618-ea336cecbf43	2026-06-30 16:34:47.403852+00	2026-06-30 16:34:47.403852+00	password	b251a1bc-3bb1-4000-9dee-ea605c651956
aa69b3e7-caac-4534-92b4-96f90fbf40c4	2026-06-30 16:38:31.287517+00	2026-06-30 16:38:31.287517+00	password	487fd434-9d08-482f-a202-3d8bf3b8647a
8bfe9cc2-8a69-47ea-a9bc-983290fe46c0	2026-06-30 16:44:09.292645+00	2026-06-30 16:44:09.292645+00	password	bda68066-e967-4ec8-9e31-2ce8b47ae867
66128764-a02b-4066-9ace-e4efef78e6ab	2026-06-30 16:45:12.138569+00	2026-06-30 16:45:12.138569+00	password	505012f5-5a22-4cbb-b4d9-107ecfc61d53
4c9027fc-0841-4ca3-b435-405b8aaf12d1	2026-06-30 17:05:07.927906+00	2026-06-30 17:05:07.927906+00	password	90cc056a-628e-437e-8e06-a5691c3ef75c
d7ef97bf-f2af-48ef-80c1-04c6ba1c7aac	2026-06-30 17:22:49.093309+00	2026-06-30 17:22:49.093309+00	password	1c64111a-8f22-40c5-a4ab-e43e44e18331
145c964a-70da-4e98-85ea-125576f69f0a	2026-07-01 05:24:21.65256+00	2026-07-01 05:24:21.65256+00	password	930affec-638e-4568-bb56-3f3aa7fc5837
0a8edb5a-3faa-4dd7-894c-caf2316269c6	2026-07-01 05:24:22.392843+00	2026-07-01 05:24:22.392843+00	password	3c802e91-648e-4db1-b53d-6a71dcf90784
87716690-36ea-4cd8-b7bf-f6bbe0f20e5b	2026-07-01 06:16:05.771822+00	2026-07-01 06:16:05.771822+00	password	dc161b76-f91c-4e79-bf10-8ef5510dda34
661204f1-1bd3-48d3-b39d-b7720e3b587e	2026-07-01 06:51:05.322278+00	2026-07-01 06:51:05.322278+00	password	de141f2e-da2a-4cbe-8a4f-d289b75c1a52
504b2eab-3de6-4e9c-a9e3-8251dd800f49	2026-07-01 07:03:06.9817+00	2026-07-01 07:03:06.9817+00	password	be9c6cda-c3d1-4a83-9285-5b0e76f768c1
4f7bb7dd-b1b3-40b6-9daa-4e59acb4edc5	2026-07-01 07:05:47.612059+00	2026-07-01 07:05:47.612059+00	password	7c78d510-1920-4b80-92bb-14b021ba387d
1ba19463-914a-4012-9ffb-db21c9521f08	2026-07-01 07:16:47.592234+00	2026-07-01 07:16:47.592234+00	password	d86275c8-9ae5-4cfd-b2d6-52f3e6860662
55999fb9-ed60-4db6-9dbd-e502817b856e	2026-07-01 07:20:41.704688+00	2026-07-01 07:20:41.704688+00	password	ce6364bf-088d-4de8-b12a-2742857c0c02
b1cc4cf7-a29f-4b02-bbad-4fb063532789	2026-07-01 07:22:10.66805+00	2026-07-01 07:22:10.66805+00	password	8977304b-10de-4a1c-afca-50b347f4aadb
ae33d863-5f6c-4dac-ab90-f177476b89e2	2026-07-01 08:13:27.622616+00	2026-07-01 08:13:27.622616+00	password	ddc2561c-ae73-4c90-8c8e-6798b6ad5edb
de993099-4d68-4a52-8144-86d8697896be	2026-07-01 08:14:30.266694+00	2026-07-01 08:14:30.266694+00	password	0892a9c0-40b4-496b-bca1-e27abf020aed
8acf8a14-954e-4df6-95bf-2702c8c9b1b3	2026-07-01 08:26:42.689608+00	2026-07-01 08:26:42.689608+00	password	7340d4d9-f143-44fe-aca4-184b5b708e63
9b88da25-8739-483f-81ef-08a38e32ba70	2026-07-01 11:19:01.327408+00	2026-07-01 11:19:01.327408+00	password	0c53a7df-f068-46a0-b394-8b73500c6c09
86204205-672c-47da-bd3f-61238855cc16	2026-07-01 11:51:21.532777+00	2026-07-01 11:51:21.532777+00	password	b3c7fa2f-f9e9-4fc4-aa8e-7f621f5e4b62
9995755d-494c-4d29-9942-fc5cc9d7564f	2026-07-01 12:07:14.023548+00	2026-07-01 12:07:14.023548+00	password	42d9563b-23da-4b25-9568-0ef106fc6130
f653d7e3-b305-44d0-b773-fdfef74af16c	2026-07-01 12:20:42.836547+00	2026-07-01 12:20:42.836547+00	password	8aec5a82-4cca-423b-a969-38c449dc471e
1efcce5f-27a0-4642-89f9-fc6d6ccd0bdd	2026-07-01 12:24:19.501315+00	2026-07-01 12:24:19.501315+00	password	9ed58cad-618a-4da7-b1de-14da589dcabd
1fe271ee-2805-4955-829b-337c6e5373ee	2026-07-01 12:28:16.364811+00	2026-07-01 12:28:16.364811+00	password	4c09ccda-8848-4ebf-b88e-15c6c66cbdd3
393c864d-d044-4403-8200-b1bc36f99a3b	2026-07-25 07:36:20.165843+00	2026-07-25 07:36:20.165843+00	password	4b17943e-5b10-418c-b1df-724773fece81
07ca59db-468d-422b-9e88-da0a69fdd3ca	2026-08-01 09:21:05.56902+00	2026-08-01 09:21:05.56902+00	password	2df0a37f-cc13-4042-9f40-b4a002dbb0ba
2eb5b096-0759-4f61-b3f1-64d22902e86c	2026-07-01 13:12:46.539724+00	2026-07-01 13:12:46.539724+00	password	c016aa48-0f7f-435e-94ae-3afc876de0e5
39169767-863e-4456-ae4b-769dde1ae3c9	2026-07-01 13:13:21.525798+00	2026-07-01 13:13:21.525798+00	password	074e3ba5-2588-4d8c-82f2-136843e5d92a
86b3bee3-442d-4b4e-8f59-36675713babb	2026-08-01 13:24:05.608324+00	2026-08-01 13:24:05.608324+00	password	d7cea4f1-45f9-4d4f-bafd-154b767b890a
cdb0fc5d-8cc9-436d-bebb-bb515da139c8	2026-07-26 09:25:05.965117+00	2026-07-26 09:25:05.965117+00	password	f6ff72cb-055d-4ac6-948a-1842686e302c
362e79d8-ac48-4d6f-a5e4-6f1a915d34cd	2026-07-27 17:54:08.536048+00	2026-07-27 17:54:08.536048+00	password	f9fbcc4e-6fa6-4ca1-9a02-a7a6632393be
6b41b0f5-b220-43ab-95df-36ef323f939f	2026-08-01 14:31:07.12018+00	2026-08-01 14:31:07.12018+00	password	47e72c7a-dc08-4353-94ff-5d517128bb41
daaa2d90-12c4-4ab4-a3e4-69395844902f	2026-08-01 14:42:16.671749+00	2026-08-01 14:42:16.671749+00	password	50e0abd2-8899-4816-ab61-901632a6a53a
50ef41b7-4dfa-4561-b548-529f7e9460dd	2026-08-02 05:30:20.752136+00	2026-08-02 05:30:20.752136+00	password	5dbd838b-4e9b-442d-b980-e0859844fe0c
59907faf-52e5-4eb1-a674-f14dd86812d8	2026-08-03 15:29:51.287449+00	2026-08-03 15:29:51.287449+00	password	22f0c5f1-a88e-4075-9d7a-f23ffe1a2562
a127585a-88ea-419a-a0dd-2419ff72f906	2026-07-01 14:49:36.280964+00	2026-07-01 14:49:36.280964+00	password	e398fccd-c907-483c-a7db-d11730d50eb9
e71008d2-d2b5-42b7-ba9b-34513d193c67	2026-07-01 15:56:38.170098+00	2026-07-01 15:56:38.170098+00	password	e7c1db75-0ff0-4e58-9d39-3743606654f6
158252af-80e8-4bdf-813d-1e765b98ec09	2026-07-03 09:57:19.0947+00	2026-07-03 09:57:19.0947+00	password	be6dbf4c-8710-4a26-809a-36ce50ed55be
0a6c9cb6-cc0c-416c-a902-2373b7825c38	2026-07-04 18:39:54.698703+00	2026-07-04 18:39:54.698703+00	password	7467c975-5421-4f9f-aabd-b44bddac6e33
89a90de3-2dbe-4d1b-ab31-2c346a019eb6	2026-07-04 21:08:46.577773+00	2026-07-04 21:08:46.577773+00	password	4fdacb97-9a3a-48d0-b1ec-ff8d55f1b769
1140b2a2-dc84-4d22-bca4-b3f81f47e859	2026-07-08 11:04:58.631873+00	2026-07-08 11:04:58.631873+00	password	06329ad0-7bda-4dd8-ba52-fb3f8a19eab4
b601ea86-7a25-4584-bfee-f4e89b6342f3	2026-07-12 16:24:22.79756+00	2026-07-12 16:24:22.79756+00	password	a31a2315-198d-4670-851f-af1b4570252e
21da0fa1-210a-41df-b4f9-fe88484b4f04	2026-07-13 01:37:22.725196+00	2026-07-13 01:37:22.725196+00	password	bfad6149-0db1-4d7b-948b-bb56f410e546
65e8e19c-813a-423d-a2a6-d9c96a144ac7	2026-07-13 01:50:44.472709+00	2026-07-13 01:50:44.472709+00	password	7c24c2a4-d73a-414d-bbbd-ad095fd964f8
ec5d2bef-e946-4244-8056-808ac1ab6cae	2026-07-13 01:59:33.680377+00	2026-07-13 01:59:33.680377+00	password	d18f0060-0eb4-451b-abf5-616db6fec51f
d3aef04d-674b-4217-a3de-3dd5f8df8069	2026-07-13 02:17:19.919403+00	2026-07-13 02:17:19.919403+00	password	de125dff-20aa-47b4-8a0d-dfb59a039c44
d3711e17-ff7a-48e1-a4f6-586eec25b063	2026-07-13 09:49:56.073512+00	2026-07-13 09:49:56.073512+00	password	3c2bee73-6e87-403b-9796-65f2d101b70a
24f5771c-5b99-411d-b14a-2b533d102ede	2026-07-14 07:19:47.559768+00	2026-07-14 07:19:47.559768+00	password	6595a7db-6eb1-4b8f-b352-f5e0310d2893
b94ac40c-c117-4dd2-a80f-f837cd0803ad	2026-08-01 07:58:27.650492+00	2026-08-01 07:58:27.650492+00	password	2a707b9a-5614-4f56-8480-bc7d77236d2f
93f9a5f0-b454-4365-89cd-b110174fd080	2026-07-14 07:49:22.323373+00	2026-07-14 07:49:22.323373+00	password	60654ec7-05fa-47d5-8c45-c064db685179
471e5a2d-d670-4f73-b651-76d107a17d56	2026-08-01 13:45:45.864529+00	2026-08-01 13:45:45.864529+00	password	266574f2-9b71-4bde-9db8-c9e4ec9fbbff
66263cb7-24d9-45f6-ac46-a3a9231dcf11	2026-07-14 09:11:10.738562+00	2026-07-14 09:11:10.738562+00	password	02f2d866-a177-42ec-9adf-12d1d9657647
2edf7885-328b-47b6-b70d-f09f698c666b	2026-08-01 14:09:22.028833+00	2026-08-01 14:09:22.028833+00	password	40269a86-cc0e-4b0e-a5b9-94bfda6b5b92
44ca4723-b45b-4009-9e27-88baabb2b77b	2026-07-14 09:36:48.982807+00	2026-07-14 09:36:48.982807+00	password	090bdecb-d5f1-43d1-b60c-ba9b1a5cfad8
bf32420a-6b1f-4e35-bea2-80873372adf0	2026-08-04 06:24:20.310931+00	2026-08-04 06:24:20.310931+00	password	cbc540cc-c2a6-4ab1-91bd-f578702f4ac2
6d03aaa9-58cc-4544-8da2-1a7b8fe7f533	2026-07-14 10:00:38.689058+00	2026-07-14 10:00:38.689058+00	password	8036aad3-4b81-420f-b2a4-b06a091bc1d8
e0a0551e-0627-4c7c-89f7-cc607e1ba36e	2026-07-14 10:42:12.106946+00	2026-07-14 10:42:12.106946+00	password	4050d3f1-ec93-454c-92e4-9e4b0da5d31b
877de0b1-7437-49b8-a5a9-24dc82b2bbcb	2026-07-14 12:09:43.773195+00	2026-07-14 12:09:43.773195+00	password	9f4c7e1a-a958-43c1-b854-b8c9a519627a
402b23a7-4d05-4447-b789-48dcd17be042	2026-07-14 12:11:09.781533+00	2026-07-14 12:11:09.781533+00	password	a5fc8359-5988-4c6e-9f32-f557ef074bf5
c56a5463-e939-49fc-8a06-b4a32ff53457	2026-07-14 12:28:57.475618+00	2026-07-14 12:28:57.475618+00	password	7eee372f-ee96-43c9-94b2-5304eea56adb
0df76d2c-1bac-4c52-8def-826df1274baa	2026-07-16 07:43:53.248829+00	2026-07-16 07:43:53.248829+00	password	c2d91921-507a-4a2e-a5aa-7b57cd1dbb73
943ce797-e326-413c-9def-e8b158a04f99	2026-07-16 10:12:27.632069+00	2026-07-16 10:12:27.632069+00	password	d6adbbbf-21a3-486d-b4f0-18c7145497d2
10356208-19ed-455d-bc13-16c3b51dc5de	2026-07-16 12:53:25.135469+00	2026-07-16 12:53:25.135469+00	password	210f4cbb-caf8-46b1-afef-8f564054e2e2
d9870771-e6e5-4909-9a24-67decd9392da	2026-07-16 16:22:29.081183+00	2026-07-16 16:22:29.081183+00	password	5c708df5-b8e2-4802-9bd6-d983e575465d
4d40aac6-add2-4133-a4fa-12095f1a6be3	2026-07-16 19:07:25.637797+00	2026-07-16 19:07:25.637797+00	password	00677abc-d418-4883-a05e-d5f7dfa96a80
c1ee1b8e-91d9-4498-8f1f-e2c71a081d6f	2026-07-16 20:08:22.58757+00	2026-07-16 20:08:22.58757+00	password	b8777b69-ad60-415a-a619-779d712e4ed8
0cfba08a-2089-4fe1-afee-6941807b3a26	2026-07-17 05:41:20.820043+00	2026-07-17 05:41:20.820043+00	password	026e1868-b274-47bf-8606-b4a33bfddd47
fd33c8ed-1a34-463f-a113-96d2700956dd	2026-07-17 06:21:04.813136+00	2026-07-17 06:21:04.813136+00	password	ae4e3791-03f9-440b-9e81-073df8c4e760
6dca3228-f141-4b2c-999a-78adc94250fb	2026-07-17 10:33:29.025353+00	2026-07-17 10:33:29.025353+00	password	dec98db4-eea0-4a58-a918-40db76adcd44
aef9e178-6934-4c76-ab89-817cf1987e55	2026-07-17 11:03:21.910885+00	2026-07-17 11:03:21.910885+00	password	88940ff1-e34c-47d4-b986-2b970d255b12
141ca861-cc7b-4174-946a-f27e12b0f37f	2026-08-01 13:05:59.250712+00	2026-08-01 13:05:59.250712+00	password	fe668720-efcb-4c2d-91d2-a2735e4bbd6b
9d243e5c-2a19-4000-be39-4f3b2250b8de	2026-07-17 18:26:01.652268+00	2026-07-17 18:26:01.652268+00	password	fa3b40e7-31fa-4a3d-a2dd-b9b6e9eb34e1
737c133b-432c-4ad7-85bb-366ddaf27d6e	2026-07-18 09:53:40.872054+00	2026-07-18 09:53:40.872054+00	password	b0a00b43-fd58-42a2-8863-37aa051ae7d4
ca78bfb8-58ce-424f-9c54-de97b3336c28	2026-07-18 10:15:44.117627+00	2026-07-18 10:15:44.117627+00	password	04ca7117-c278-4d50-9475-bf0409a23fde
0f750c3a-e6a1-48c2-85d3-6fba98325429	2026-08-02 04:54:31.026853+00	2026-08-02 04:54:31.026853+00	password	bc82e150-2173-4fbe-bcd1-fbc60502f7ac
4482536b-97e6-4ed9-b635-4c992973649e	2026-07-18 10:35:24.955117+00	2026-07-18 10:35:24.955117+00	password	53469c34-5a6e-4e45-987d-dd2cd7ce6214
5414ed5b-bb2c-4dd1-a131-7b6478026dfe	2026-07-18 10:37:20.699628+00	2026-07-18 10:37:20.699628+00	password	588cdf10-f71c-4062-a394-d04f419bd0ce
90e5285b-05ac-4951-9c9e-121287a227fd	2026-08-03 02:05:35.336038+00	2026-08-03 02:05:35.336038+00	password	6746a34b-b61c-46fe-bad7-b62d0e6f3d5b
a2f5985b-29cf-44de-9fe6-bf32bc714712	2026-07-20 10:39:40.877497+00	2026-07-20 10:39:40.877497+00	password	71a2f33c-4424-496d-9e86-d0e397ce51fa
095a2c2f-c5ff-4a55-bea6-787b4b8e51d2	2026-07-18 16:27:26.686932+00	2026-07-18 16:27:26.686932+00	password	4cec95c3-10ef-4ca9-a8d8-85e203a849a9
efb7aabe-baf9-4687-b77b-deb27edc1907	2026-07-27 18:02:20.89496+00	2026-07-27 18:02:20.89496+00	password	66bcecc2-6ded-4f07-b553-b5137990648c
4828c3d8-527a-4114-b56e-fa6626f25342	2026-07-18 17:20:40.139915+00	2026-07-18 17:20:40.139915+00	password	6bb68cbf-3bca-44f0-b820-bb4ca6900b7c
aa703366-891a-463d-a326-c663a967857a	2026-07-31 17:19:59.78529+00	2026-07-31 17:19:59.78529+00	password	491fb40a-c7ad-4de5-b92e-9c79b6bbd5a8
218eaf72-d906-4e32-97d6-d91917b16964	2026-07-18 17:25:45.838546+00	2026-07-18 17:25:45.838546+00	password	dcf3a817-b5e1-471a-9ece-acbdb44ae0c7
10ff5ddd-f8b1-4585-a085-595c21ddd353	2026-07-19 11:31:35.350558+00	2026-07-19 11:31:35.350558+00	password	fe32628c-9fd1-4e92-9466-81ff9988d77d
\.


--
-- Data for Name: mfa_factors; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."mfa_factors" ("id", "user_id", "friendly_name", "factor_type", "status", "created_at", "updated_at", "secret", "phone", "last_challenged_at", "web_authn_credential", "web_authn_aaguid", "last_webauthn_challenge_data") FROM stdin;
\.


--
-- Data for Name: mfa_challenges; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."mfa_challenges" ("id", "factor_id", "created_at", "verified_at", "ip_address", "otp_code", "web_authn_session_data") FROM stdin;
\.


--
-- Data for Name: oauth_authorizations; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."oauth_authorizations" ("id", "authorization_id", "client_id", "user_id", "redirect_uri", "scope", "state", "resource", "code_challenge", "code_challenge_method", "response_type", "status", "authorization_code", "created_at", "expires_at", "approved_at", "nonce") FROM stdin;
\.


--
-- Data for Name: oauth_client_states; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."oauth_client_states" ("id", "provider_type", "code_verifier", "created_at") FROM stdin;
\.


--
-- Data for Name: oauth_consents; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."oauth_consents" ("id", "user_id", "client_id", "scopes", "granted_at", "revoked_at") FROM stdin;
\.


--
-- Data for Name: one_time_tokens; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."one_time_tokens" ("id", "user_id", "token_type", "token_hash", "relates_to", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: refresh_tokens; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."refresh_tokens" ("instance_id", "id", "token", "user_id", "revoked", "created_at", "updated_at", "parent", "session_id") FROM stdin;
00000000-0000-0000-0000-000000000000	50	ywlxw2ajwtyq	a9c43137-d6ed-40bb-9e2d-269169b8656e	f	2026-06-28 17:04:54.868431+00	2026-06-28 17:04:54.868431+00	\N	962dc29c-06bf-49b1-a7a1-b3c991766bef
00000000-0000-0000-0000-000000000000	52	4efxeff6b4k7	a9c43137-d6ed-40bb-9e2d-269169b8656e	f	2026-06-28 17:33:22.809517+00	2026-06-28 17:33:22.809517+00	\N	c116a8e8-953c-4825-8e82-4ef9ab62ef5e
00000000-0000-0000-0000-000000000000	53	vimhuzdaakbo	a9c43137-d6ed-40bb-9e2d-269169b8656e	f	2026-06-28 17:34:48.211854+00	2026-06-28 17:34:48.211854+00	\N	aab6c713-244f-4e4c-a5c6-6db91128957e
00000000-0000-0000-0000-000000000000	54	tl3dh3krhshm	a9c43137-d6ed-40bb-9e2d-269169b8656e	f	2026-06-28 17:42:00.412664+00	2026-06-28 17:42:00.412664+00	\N	8ac1fd6e-87a3-4bc1-96c4-a624fb0e3d64
00000000-0000-0000-0000-000000000000	55	clpfeqgsdb5z	a9c43137-d6ed-40bb-9e2d-269169b8656e	f	2026-06-28 17:45:12.417668+00	2026-06-28 17:45:12.417668+00	\N	edb011d8-e66c-414c-9b6a-bd73174892f2
00000000-0000-0000-0000-000000000000	56	deir2b26wjkp	a9c43137-d6ed-40bb-9e2d-269169b8656e	f	2026-06-28 17:46:36.531434+00	2026-06-28 17:46:36.531434+00	\N	c43f72a0-9088-4eb7-ad63-44c60b813131
00000000-0000-0000-0000-000000000000	57	4sd6y2bgpxpw	a9c43137-d6ed-40bb-9e2d-269169b8656e	f	2026-06-28 17:50:17.508691+00	2026-06-28 17:50:17.508691+00	\N	837d10f4-cac4-4187-8c9f-ea8667809a13
00000000-0000-0000-0000-000000000000	58	nxoq7rbdjvjo	a9c43137-d6ed-40bb-9e2d-269169b8656e	f	2026-06-28 17:58:11.806198+00	2026-06-28 17:58:11.806198+00	\N	9a622ba2-4525-4782-bf2e-4f4bcddd5202
00000000-0000-0000-0000-000000000000	59	sbh4o5xdqywk	a9c43137-d6ed-40bb-9e2d-269169b8656e	f	2026-06-29 06:05:43.191367+00	2026-06-29 06:05:43.191367+00	\N	9223f0c6-7de0-4946-a2d3-9491d3c52fa7
00000000-0000-0000-0000-000000000000	60	wfrc2v6gpyto	0c7540e4-69f1-4d46-98b3-3577b0e15162	f	2026-06-29 06:08:43.640144+00	2026-06-29 06:08:43.640144+00	\N	d97a8858-d504-4a5a-bcf3-4b5d6de9efdd
00000000-0000-0000-0000-000000000000	61	7k2gvrxvsp3l	a9c43137-d6ed-40bb-9e2d-269169b8656e	f	2026-06-29 06:55:19.068888+00	2026-06-29 06:55:19.068888+00	\N	9d7a3d79-0db8-4ac1-8d7d-f1dbd207c8af
00000000-0000-0000-0000-000000000000	62	e6jf3felz6ti	a9c43137-d6ed-40bb-9e2d-269169b8656e	f	2026-06-29 07:01:18.393831+00	2026-06-29 07:01:18.393831+00	\N	075e05dd-4562-420c-b6dc-d04eaa6c6f86
00000000-0000-0000-0000-000000000000	63	g2ledm4cegpi	a9c43137-d6ed-40bb-9e2d-269169b8656e	f	2026-06-29 07:08:28.114984+00	2026-06-29 07:08:28.114984+00	\N	2b81ceed-696f-4485-a81d-048ea8ee9f98
00000000-0000-0000-0000-000000000000	64	y6pdaevyynzb	a9c43137-d6ed-40bb-9e2d-269169b8656e	f	2026-06-29 07:13:52.847772+00	2026-06-29 07:13:52.847772+00	\N	1e5eb22d-df06-4607-83f1-0e710f428214
00000000-0000-0000-0000-000000000000	65	zkoc44kjus57	a9c43137-d6ed-40bb-9e2d-269169b8656e	f	2026-06-29 07:15:38.295724+00	2026-06-29 07:15:38.295724+00	\N	be57d40a-4a0f-491a-a21c-a8c017b0ec4a
00000000-0000-0000-0000-000000000000	66	wctzhra5zct5	0c7540e4-69f1-4d46-98b3-3577b0e15162	f	2026-06-29 07:17:04.045707+00	2026-06-29 07:17:04.045707+00	\N	12687016-4164-4dcf-a664-65eccc760443
00000000-0000-0000-0000-000000000000	67	6c3ihb4vhm2m	0c7540e4-69f1-4d46-98b3-3577b0e15162	f	2026-06-29 07:37:48.256372+00	2026-06-29 07:37:48.256372+00	\N	f32d898a-eaf2-4da5-9fcb-c6157768c3a5
00000000-0000-0000-0000-000000000000	68	twt5q2i4h7w4	0c7540e4-69f1-4d46-98b3-3577b0e15162	f	2026-06-29 07:41:01.914718+00	2026-06-29 07:41:01.914718+00	\N	331f0227-7b77-4aab-821e-6ca5c76b7212
00000000-0000-0000-0000-000000000000	69	pevdpz3vdmnl	0c7540e4-69f1-4d46-98b3-3577b0e15162	f	2026-06-29 07:42:10.317415+00	2026-06-29 07:42:10.317415+00	\N	8f90a4ca-3bb5-4f8b-a475-ec92e12ec61b
00000000-0000-0000-0000-000000000000	70	ow4qxlm6gfub	0c7540e4-69f1-4d46-98b3-3577b0e15162	t	2026-06-29 07:44:12.768516+00	2026-06-29 12:18:04.710147+00	\N	7656f49e-7982-4bb8-b517-d69e832286d6
00000000-0000-0000-0000-000000000000	71	swyn3qaj77w6	0c7540e4-69f1-4d46-98b3-3577b0e15162	f	2026-06-29 12:18:04.721232+00	2026-06-29 12:18:04.721232+00	ow4qxlm6gfub	7656f49e-7982-4bb8-b517-d69e832286d6
00000000-0000-0000-0000-000000000000	72	rx666msuzuuv	0c7540e4-69f1-4d46-98b3-3577b0e15162	f	2026-06-29 12:18:34.386247+00	2026-06-29 12:18:34.386247+00	\N	c2c18a16-dca0-4f76-8c05-4d95c00c5105
00000000-0000-0000-0000-000000000000	73	222w2g5zablf	0c7540e4-69f1-4d46-98b3-3577b0e15162	f	2026-06-29 12:32:10.650073+00	2026-06-29 12:32:10.650073+00	\N	0d899449-4c78-42a9-ae95-ff14887ac01a
00000000-0000-0000-0000-000000000000	74	imenl7mmbmmn	0c7540e4-69f1-4d46-98b3-3577b0e15162	f	2026-06-29 12:34:39.600777+00	2026-06-29 12:34:39.600777+00	\N	c0ae8dc3-8cb6-4133-a1de-c80c26d9997c
00000000-0000-0000-0000-000000000000	51	j2q4bit3s4kg	a9c43137-d6ed-40bb-9e2d-269169b8656e	t	2026-06-28 17:18:39.997429+00	2026-06-29 14:27:10.162526+00	\N	1ccc4648-238e-4124-a92f-c138bd975382
00000000-0000-0000-0000-000000000000	76	dvubxwrhxxzg	0c7540e4-69f1-4d46-98b3-3577b0e15162	f	2026-06-29 14:29:09.919147+00	2026-06-29 14:29:09.919147+00	\N	9ef9cc13-7b2e-4935-b569-beb8275e290a
00000000-0000-0000-0000-000000000000	78	alsf4zwfesgu	0c7540e4-69f1-4d46-98b3-3577b0e15162	f	2026-06-29 15:09:57.703438+00	2026-06-29 15:09:57.703438+00	\N	332cb499-4e7b-436b-a75e-ace806424e86
00000000-0000-0000-0000-000000000000	79	orzstu2i6pob	0c7540e4-69f1-4d46-98b3-3577b0e15162	f	2026-06-29 15:39:02.662664+00	2026-06-29 15:39:02.662664+00	\N	95198d1f-9f9b-455a-ba23-e5c2295a81b1
00000000-0000-0000-0000-000000000000	832	csi6dxhjzib6	520cc6fd-0ad8-41d6-afc3-b208d43fb016	f	2026-08-02 04:29:23.382847+00	2026-08-02 04:29:23.382847+00	\N	6853b1e0-4bc2-4444-ab6b-23eca0894a40
00000000-0000-0000-0000-000000000000	75	3pgxelxv4ffd	a9c43137-d6ed-40bb-9e2d-269169b8656e	t	2026-06-29 14:27:10.174262+00	2026-06-29 15:42:57.866203+00	j2q4bit3s4kg	1ccc4648-238e-4124-a92f-c138bd975382
00000000-0000-0000-0000-000000000000	81	g7t5oyrebifr	a9c43137-d6ed-40bb-9e2d-269169b8656e	f	2026-06-29 15:42:57.872628+00	2026-06-29 15:42:57.872628+00	3pgxelxv4ffd	1ccc4648-238e-4124-a92f-c138bd975382
00000000-0000-0000-0000-000000000000	82	a4cw4amx6cqf	0c7540e4-69f1-4d46-98b3-3577b0e15162	f	2026-06-29 15:44:43.015596+00	2026-06-29 15:44:43.015596+00	\N	2b6a0ab2-4c21-4167-b674-62d511e65252
00000000-0000-0000-0000-000000000000	83	retk6avhudb4	0c7540e4-69f1-4d46-98b3-3577b0e15162	f	2026-06-29 15:46:46.200763+00	2026-06-29 15:46:46.200763+00	\N	322696f2-6c12-48ca-a0cf-f68a0bb618d9
00000000-0000-0000-0000-000000000000	84	wnxmdcj5y4yk	0c7540e4-69f1-4d46-98b3-3577b0e15162	f	2026-06-29 16:02:46.480203+00	2026-06-29 16:02:46.480203+00	\N	0257d82f-d2f8-48ae-8529-6ae31355617e
00000000-0000-0000-0000-000000000000	86	blqhd7wsi2nr	0c7540e4-69f1-4d46-98b3-3577b0e15162	f	2026-06-29 16:12:05.203503+00	2026-06-29 16:12:05.203503+00	\N	316d3740-bc42-41f8-90e1-40eb7595c83d
00000000-0000-0000-0000-000000000000	88	4s7qzslxbvtx	d1eb281c-c2e1-441e-b40d-08a35776bdb4	f	2026-06-29 16:15:15.667849+00	2026-06-29 16:15:15.667849+00	\N	80af05e4-7361-4da1-bddc-aa6ee5573ca1
00000000-0000-0000-0000-000000000000	89	sijuq6zyspzf	0c7540e4-69f1-4d46-98b3-3577b0e15162	f	2026-06-29 16:16:37.375175+00	2026-06-29 16:16:37.375175+00	\N	44b7999d-9b27-47c8-896a-5b00529c5478
00000000-0000-0000-0000-000000000000	90	mbi4hom6ml3v	0c7540e4-69f1-4d46-98b3-3577b0e15162	f	2026-06-30 15:31:16.115604+00	2026-06-30 15:31:16.115604+00	\N	16bb8a01-68bf-455c-9b0f-8de94e438bcb
00000000-0000-0000-0000-000000000000	681	7xj7n76msm2n	be0af516-46a2-4c9c-84c7-9b71e5de5359	t	2026-07-30 07:04:47.397921+00	2026-07-30 08:03:51.925528+00	5gcyco4stdh2	cdb0fc5d-8cc9-436d-bebb-bb515da139c8
00000000-0000-0000-0000-000000000000	605	vwddi3ikybsb	be0af516-46a2-4c9c-84c7-9b71e5de5359	t	2026-07-26 12:37:15.308731+00	2026-07-26 16:56:58.01649+00	fyyypo32o7pg	cdb0fc5d-8cc9-436d-bebb-bb515da139c8
00000000-0000-0000-0000-000000000000	613	dixvf465betu	be0af516-46a2-4c9c-84c7-9b71e5de5359	t	2026-07-27 10:17:38.988009+00	2026-07-27 11:24:16.683672+00	frixmz2lwjcx	cdb0fc5d-8cc9-436d-bebb-bb515da139c8
00000000-0000-0000-0000-000000000000	850	qipz5gmjwghp	82354dcd-3fe9-42d6-8e76-f344db116242	f	2026-08-02 04:54:31.023865+00	2026-08-02 04:54:31.023865+00	\N	0f750c3a-e6a1-48c2-85d3-6fba98325429
00000000-0000-0000-0000-000000000000	860	l2ttjejt4fxk	be0af516-46a2-4c9c-84c7-9b71e5de5359	f	2026-08-03 15:27:24.025227+00	2026-08-03 15:27:24.025227+00	\N	a5cf3f01-4cb1-4971-b832-8daf69a4711d
00000000-0000-0000-0000-000000000000	700	knewbixuwwlr	be0af516-46a2-4c9c-84c7-9b71e5de5359	t	2026-07-30 10:22:50.719208+00	2026-07-30 11:23:28.901017+00	d5lujbi6mfud	cdb0fc5d-8cc9-436d-bebb-bb515da139c8
00000000-0000-0000-0000-000000000000	47	ysalpevunhd4	8cca0a73-02bf-4262-9071-6ca4356c4566	f	2026-06-28 16:46:55.289895+00	2026-06-28 16:46:55.289895+00	\N	7a4c64d4-e623-4398-926e-b00105d4817f
00000000-0000-0000-0000-000000000000	48	svjwyf3o437h	a9c43137-d6ed-40bb-9e2d-269169b8656e	f	2026-06-28 16:59:04.37374+00	2026-06-28 16:59:04.37374+00	\N	1deb5795-1e6f-4981-ba08-f0cee70f8815
00000000-0000-0000-0000-000000000000	49	bpepl5aprzp6	a9c43137-d6ed-40bb-9e2d-269169b8656e	f	2026-06-28 17:00:05.652593+00	2026-06-28 17:00:05.652593+00	\N	20e1598b-bbc8-4e23-b731-bb2c86117bd7
00000000-0000-0000-0000-000000000000	707	yxxeyvq54nwh	be0af516-46a2-4c9c-84c7-9b71e5de5359	t	2026-07-30 12:24:45.715724+00	2026-07-31 01:38:37.326806+00	detvwix7wipd	cdb0fc5d-8cc9-436d-bebb-bb515da139c8
00000000-0000-0000-0000-000000000000	98	n7bb5xp7gj3a	0c7540e4-69f1-4d46-98b3-3577b0e15162	f	2026-06-30 16:17:52.597474+00	2026-06-30 16:17:52.597474+00	\N	8f2cb9e3-ec07-48a5-91ec-3492dd8e03a8
00000000-0000-0000-0000-000000000000	100	whdgw6t4va2p	0c7540e4-69f1-4d46-98b3-3577b0e15162	f	2026-06-30 16:31:34.571058+00	2026-06-30 16:31:34.571058+00	\N	4ae39603-a2fa-49aa-b531-36042435f761
00000000-0000-0000-0000-000000000000	102	otjczadoejzw	0c7540e4-69f1-4d46-98b3-3577b0e15162	f	2026-06-30 16:34:47.399407+00	2026-06-30 16:34:47.399407+00	\N	3269cd5c-6a09-4bd6-b618-ea336cecbf43
00000000-0000-0000-0000-000000000000	564	frafyvhm36rr	be0af516-46a2-4c9c-84c7-9b71e5de5359	t	2026-07-25 07:36:20.143945+00	2026-07-25 13:36:05.776603+00	\N	393c864d-d044-4403-8200-b1bc36f99a3b
00000000-0000-0000-0000-000000000000	733	kcs6d6vx35k6	31377f7c-5eff-4de0-bcec-dae997ff9ac6	f	2026-07-31 17:19:59.782897+00	2026-07-31 17:19:59.782897+00	\N	aa703366-891a-463d-a326-c663a967857a
00000000-0000-0000-0000-000000000000	105	p7rbqakv6bzm	0c7540e4-69f1-4d46-98b3-3577b0e15162	f	2026-06-30 16:38:31.286128+00	2026-06-30 16:38:31.286128+00	\N	aa69b3e7-caac-4534-92b4-96f90fbf40c4
00000000-0000-0000-0000-000000000000	106	vkhiidqsusv4	0c7540e4-69f1-4d46-98b3-3577b0e15162	f	2026-06-30 16:44:09.278877+00	2026-06-30 16:44:09.278877+00	\N	8bfe9cc2-8a69-47ea-a9bc-983290fe46c0
00000000-0000-0000-0000-000000000000	107	pjqdwngyzpyz	0c7540e4-69f1-4d46-98b3-3577b0e15162	f	2026-06-30 16:45:12.134949+00	2026-06-30 16:45:12.134949+00	\N	66128764-a02b-4066-9ace-e4efef78e6ab
00000000-0000-0000-0000-000000000000	108	psong3nzb73s	0c7540e4-69f1-4d46-98b3-3577b0e15162	f	2026-06-30 17:05:07.923422+00	2026-06-30 17:05:07.923422+00	\N	4c9027fc-0841-4ca3-b435-405b8aaf12d1
00000000-0000-0000-0000-000000000000	109	ovl6hikx4abt	0c7540e4-69f1-4d46-98b3-3577b0e15162	f	2026-06-30 17:22:49.081099+00	2026-06-30 17:22:49.081099+00	\N	d7ef97bf-f2af-48ef-80c1-04c6ba1c7aac
00000000-0000-0000-0000-000000000000	111	yx7nsniuozbl	0c7540e4-69f1-4d46-98b3-3577b0e15162	f	2026-07-01 05:24:21.620846+00	2026-07-01 05:24:21.620846+00	\N	145c964a-70da-4e98-85ea-125576f69f0a
00000000-0000-0000-0000-000000000000	675	jnzkse66o6mk	be0af516-46a2-4c9c-84c7-9b71e5de5359	t	2026-07-29 03:18:02.138755+00	2026-07-29 04:17:39.996522+00	6pqlj2dpzyug	cdb0fc5d-8cc9-436d-bebb-bb515da139c8
00000000-0000-0000-0000-000000000000	115	sorr2yyxluqx	0c7540e4-69f1-4d46-98b3-3577b0e15162	f	2026-07-01 06:16:05.770341+00	2026-07-01 06:16:05.770341+00	\N	87716690-36ea-4cd8-b7bf-f6bbe0f20e5b
00000000-0000-0000-0000-000000000000	851	stnekyqf3vh4	be0af516-46a2-4c9c-84c7-9b71e5de5359	f	2026-08-02 05:11:32.79816+00	2026-08-02 05:11:32.79816+00	nm5o7v46ev53	cdb0fc5d-8cc9-436d-bebb-bb515da139c8
00000000-0000-0000-0000-000000000000	117	4hncifib5g2w	0c7540e4-69f1-4d46-98b3-3577b0e15162	f	2026-07-01 06:51:05.311048+00	2026-07-01 06:51:05.311048+00	\N	661204f1-1bd3-48d3-b39d-b7720e3b587e
00000000-0000-0000-0000-000000000000	118	spgaakh5lwdf	0c7540e4-69f1-4d46-98b3-3577b0e15162	f	2026-07-01 07:03:06.972324+00	2026-07-01 07:03:06.972324+00	\N	504b2eab-3de6-4e9c-a9e3-8251dd800f49
00000000-0000-0000-0000-000000000000	119	fw4d5txqrwzb	0c7540e4-69f1-4d46-98b3-3577b0e15162	f	2026-07-01 07:05:47.606626+00	2026-07-01 07:05:47.606626+00	\N	4f7bb7dd-b1b3-40b6-9daa-4e59acb4edc5
00000000-0000-0000-0000-000000000000	861	abuyjixf3uxp	be0af516-46a2-4c9c-84c7-9b71e5de5359	f	2026-08-03 15:29:51.274714+00	2026-08-03 15:29:51.274714+00	\N	59907faf-52e5-4eb1-a674-f14dd86812d8
00000000-0000-0000-0000-000000000000	121	cmsfmr7p5xi7	0c7540e4-69f1-4d46-98b3-3577b0e15162	f	2026-07-01 07:16:47.590766+00	2026-07-01 07:16:47.590766+00	\N	1ba19463-914a-4012-9ffb-db21c9521f08
00000000-0000-0000-0000-000000000000	122	5dcocnhnfvkb	0c7540e4-69f1-4d46-98b3-3577b0e15162	f	2026-07-01 07:20:41.701726+00	2026-07-01 07:20:41.701726+00	\N	55999fb9-ed60-4db6-9dbd-e502817b856e
00000000-0000-0000-0000-000000000000	123	jl55o77e4byp	0c7540e4-69f1-4d46-98b3-3577b0e15162	f	2026-07-01 07:22:10.665094+00	2026-07-01 07:22:10.665094+00	\N	b1cc4cf7-a29f-4b02-bbad-4fb063532789
00000000-0000-0000-0000-000000000000	758	crl6s6dcxn4x	f644e2bb-0ef0-4e69-94a5-6a1c59ced946	f	2026-08-01 13:05:59.23896+00	2026-08-01 13:05:59.23896+00	\N	141ca861-cc7b-4174-946a-f27e12b0f37f
00000000-0000-0000-0000-000000000000	125	j7ujer4d7gth	0c7540e4-69f1-4d46-98b3-3577b0e15162	f	2026-07-01 08:13:27.617624+00	2026-07-01 08:13:27.617624+00	\N	ae33d863-5f6c-4dac-ab90-f177476b89e2
00000000-0000-0000-0000-000000000000	126	fbemygphmfsv	0c7540e4-69f1-4d46-98b3-3577b0e15162	f	2026-07-01 08:14:30.261437+00	2026-07-01 08:14:30.261437+00	\N	de993099-4d68-4a52-8144-86d8697896be
00000000-0000-0000-0000-000000000000	127	xdcigx7odph4	0c7540e4-69f1-4d46-98b3-3577b0e15162	f	2026-07-01 08:26:42.673887+00	2026-07-01 08:26:42.673887+00	\N	8acf8a14-954e-4df6-95bf-2702c8c9b1b3
00000000-0000-0000-0000-000000000000	130	hzjt3v6ibpao	0c7540e4-69f1-4d46-98b3-3577b0e15162	f	2026-07-01 11:19:01.323919+00	2026-07-01 11:19:01.323919+00	\N	9b88da25-8739-483f-81ef-08a38e32ba70
00000000-0000-0000-0000-000000000000	614	sq4bn5bhbtnp	be0af516-46a2-4c9c-84c7-9b71e5de5359	t	2026-07-27 11:24:16.699637+00	2026-07-27 13:05:23.957222+00	dixvf465betu	cdb0fc5d-8cc9-436d-bebb-bb515da139c8
00000000-0000-0000-0000-000000000000	772	imqcpsfead2p	bf2a506d-e515-40d0-b2cd-5427f26b717b	f	2026-08-01 14:09:22.026783+00	2026-08-01 14:09:22.026783+00	\N	2edf7885-328b-47b6-b70d-f09f698c666b
00000000-0000-0000-0000-000000000000	786	4zot7zj2oaqw	d2d6b100-0e63-4e80-b564-7fd87ae514e3	f	2026-08-01 14:42:16.650041+00	2026-08-01 14:42:16.650041+00	\N	daaa2d90-12c4-4ab4-a3e4-69395844902f
00000000-0000-0000-0000-000000000000	134	sr4gw6ey2ouk	0c7540e4-69f1-4d46-98b3-3577b0e15162	f	2026-07-01 11:51:21.531263+00	2026-07-01 11:51:21.531263+00	\N	86204205-672c-47da-bd3f-61238855cc16
00000000-0000-0000-0000-000000000000	135	7wgpwcx4tobk	0c7540e4-69f1-4d46-98b3-3577b0e15162	f	2026-07-01 12:07:14.01925+00	2026-07-01 12:07:14.01925+00	\N	9995755d-494c-4d29-9942-fc5cc9d7564f
00000000-0000-0000-0000-000000000000	137	tafsilkyf62a	0c7540e4-69f1-4d46-98b3-3577b0e15162	f	2026-07-01 12:20:42.834906+00	2026-07-01 12:20:42.834906+00	\N	f653d7e3-b305-44d0-b773-fdfef74af16c
00000000-0000-0000-0000-000000000000	139	uf42dgtsxnar	0c7540e4-69f1-4d46-98b3-3577b0e15162	f	2026-07-01 12:24:19.495093+00	2026-07-01 12:24:19.495093+00	\N	1efcce5f-27a0-4642-89f9-fc6d6ccd0bdd
00000000-0000-0000-0000-000000000000	141	ploqesnifybw	0c7540e4-69f1-4d46-98b3-3577b0e15162	f	2026-07-01 12:28:16.362398+00	2026-07-01 12:28:16.362398+00	\N	1fe271ee-2805-4955-829b-337c6e5373ee
00000000-0000-0000-0000-000000000000	146	x7n437tdj4xb	0c7540e4-69f1-4d46-98b3-3577b0e15162	f	2026-07-01 13:12:46.534696+00	2026-07-01 13:12:46.534696+00	\N	2eb5b096-0759-4f61-b3f1-64d22902e86c
00000000-0000-0000-0000-000000000000	147	tyftvndbghzp	0c7540e4-69f1-4d46-98b3-3577b0e15162	f	2026-07-01 13:13:21.524365+00	2026-07-01 13:13:21.524365+00	\N	39169767-863e-4456-ae4b-769dde1ae3c9
00000000-0000-0000-0000-000000000000	565	hlpsfuigfvir	be0af516-46a2-4c9c-84c7-9b71e5de5359	t	2026-07-25 13:36:05.79666+00	2026-07-25 14:55:33.395977+00	frafyvhm36rr	393c864d-d044-4403-8200-b1bc36f99a3b
00000000-0000-0000-0000-000000000000	721	een5j2eke6gz	be0af516-46a2-4c9c-84c7-9b71e5de5359	t	2026-07-31 10:58:49.089488+00	2026-08-01 01:38:21.439481+00	fp5z234q2qea	cdb0fc5d-8cc9-436d-bebb-bb515da139c8
00000000-0000-0000-0000-000000000000	599	sqwn3bidvbac	be0af516-46a2-4c9c-84c7-9b71e5de5359	f	2026-07-26 06:32:33.638956+00	2026-07-26 06:32:33.638956+00	dwl3zcpkcf5l	393c864d-d044-4403-8200-b1bc36f99a3b
00000000-0000-0000-0000-000000000000	676	5gcyco4stdh2	be0af516-46a2-4c9c-84c7-9b71e5de5359	t	2026-07-29 04:17:40.006818+00	2026-07-30 07:04:47.389165+00	jnzkse66o6mk	cdb0fc5d-8cc9-436d-bebb-bb515da139c8
00000000-0000-0000-0000-000000000000	161	xsmx6pxpeeif	0c7540e4-69f1-4d46-98b3-3577b0e15162	f	2026-07-01 14:49:36.278396+00	2026-07-01 14:49:36.278396+00	\N	a127585a-88ea-419a-a0dd-2419ff72f906
00000000-0000-0000-0000-000000000000	162	64e7j4qmnd6s	0c7540e4-69f1-4d46-98b3-3577b0e15162	f	2026-07-01 15:56:38.141287+00	2026-07-01 15:56:38.141287+00	\N	e71008d2-d2b5-42b7-ba9b-34513d193c67
00000000-0000-0000-0000-000000000000	600	pt4eocswlpdc	be0af516-46a2-4c9c-84c7-9b71e5de5359	t	2026-07-26 06:32:33.80159+00	2026-07-26 07:41:56.071853+00	\N	c645dd77-72dc-4ec7-80a2-eeb4f84595df
00000000-0000-0000-0000-000000000000	735	nm5o7v46ev53	be0af516-46a2-4c9c-84c7-9b71e5de5359	t	2026-08-01 01:38:21.458545+00	2026-08-02 05:11:32.786578+00	een5j2eke6gz	cdb0fc5d-8cc9-436d-bebb-bb515da139c8
00000000-0000-0000-0000-000000000000	607	qwriyad44j54	be0af516-46a2-4c9c-84c7-9b71e5de5359	t	2026-07-26 16:56:58.024882+00	2026-07-26 17:55:26.479692+00	vwddi3ikybsb	cdb0fc5d-8cc9-436d-bebb-bb515da139c8
00000000-0000-0000-0000-000000000000	615	o7vikys6uen2	be0af516-46a2-4c9c-84c7-9b71e5de5359	t	2026-07-27 13:05:23.971609+00	2026-07-27 14:03:39.603465+00	sq4bn5bhbtnp	cdb0fc5d-8cc9-436d-bebb-bb515da139c8
00000000-0000-0000-0000-000000000000	862	bomeqllge23u	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	f	2026-08-04 06:24:20.274392+00	2026-08-04 06:24:20.274392+00	\N	bf32420a-6b1f-4e35-bea2-80873372adf0
00000000-0000-0000-0000-000000000000	623	zs32aj7dph5t	be0af516-46a2-4c9c-84c7-9b71e5de5359	t	2026-07-27 17:39:01.274021+00	2026-07-27 18:38:00.949889+00	ednfmry2jgcf	cdb0fc5d-8cc9-436d-bebb-bb515da139c8
00000000-0000-0000-0000-000000000000	174	y3bcleijuerb	0c7540e4-69f1-4d46-98b3-3577b0e15162	f	2026-07-03 09:57:19.092056+00	2026-07-03 09:57:19.092056+00	\N	158252af-80e8-4bdf-813d-1e765b98ec09
00000000-0000-0000-0000-000000000000	175	gkqpjyttyes6	0c7540e4-69f1-4d46-98b3-3577b0e15162	f	2026-07-04 18:39:54.659868+00	2026-07-04 18:39:54.659868+00	\N	0a6c9cb6-cc0c-416c-a902-2373b7825c38
00000000-0000-0000-0000-000000000000	183	qjltm772tgwg	0c7540e4-69f1-4d46-98b3-3577b0e15162	f	2026-07-04 21:08:46.576369+00	2026-07-04 21:08:46.576369+00	\N	89a90de3-2dbe-4d1b-ab31-2c346a019eb6
00000000-0000-0000-0000-000000000000	185	t7hhq66zmhax	0c7540e4-69f1-4d46-98b3-3577b0e15162	f	2026-07-08 11:04:58.593398+00	2026-07-08 11:04:58.593398+00	\N	1140b2a2-dc84-4d22-bca4-b3f81f47e859
00000000-0000-0000-0000-000000000000	112	su7sowlg64lq	0c7540e4-69f1-4d46-98b3-3577b0e15162	t	2026-07-01 05:24:22.391418+00	2026-07-08 11:11:49.539504+00	\N	0a8edb5a-3faa-4dd7-894c-caf2316269c6
00000000-0000-0000-0000-000000000000	200	logqmrlyw7or	0c7540e4-69f1-4d46-98b3-3577b0e15162	t	2026-07-12 16:24:22.783931+00	2026-07-12 17:23:05.405302+00	\N	b601ea86-7a25-4584-bfee-f4e89b6342f3
00000000-0000-0000-0000-000000000000	188	rvieojz4tv6j	0c7540e4-69f1-4d46-98b3-3577b0e15162	t	2026-07-08 11:11:49.544285+00	2026-07-13 01:35:27.096948+00	su7sowlg64lq	0a8edb5a-3faa-4dd7-894c-caf2316269c6
00000000-0000-0000-0000-000000000000	203	2qb2q4sh5v7z	0c7540e4-69f1-4d46-98b3-3577b0e15162	f	2026-07-12 17:23:05.411587+00	2026-07-12 17:23:05.411587+00	logqmrlyw7or	b601ea86-7a25-4584-bfee-f4e89b6342f3
00000000-0000-0000-0000-000000000000	646	kjtstumuxyxp	be0af516-46a2-4c9c-84c7-9b71e5de5359	t	2026-07-28 09:38:46.480131+00	2026-07-28 12:31:34.459099+00	dqtoimzaadzg	cdb0fc5d-8cc9-436d-bebb-bb515da139c8
00000000-0000-0000-0000-000000000000	206	prxw5newigd4	0c7540e4-69f1-4d46-98b3-3577b0e15162	f	2026-07-13 01:35:27.10885+00	2026-07-13 01:35:27.10885+00	rvieojz4tv6j	0a8edb5a-3faa-4dd7-894c-caf2316269c6
00000000-0000-0000-0000-000000000000	208	a7i37xbodndi	0c7540e4-69f1-4d46-98b3-3577b0e15162	f	2026-07-13 01:50:44.467665+00	2026-07-13 01:50:44.467665+00	\N	65e8e19c-813a-423d-a2a6-d9c96a144ac7
00000000-0000-0000-0000-000000000000	209	5y5thupudapn	0c7540e4-69f1-4d46-98b3-3577b0e15162	f	2026-07-13 01:59:33.675866+00	2026-07-13 01:59:33.675866+00	\N	ec5d2bef-e946-4244-8056-808ac1ab6cae
00000000-0000-0000-0000-000000000000	210	uqsblualjjbj	0c7540e4-69f1-4d46-98b3-3577b0e15162	f	2026-07-13 02:17:19.904788+00	2026-07-13 02:17:19.904788+00	\N	d3aef04d-674b-4217-a3de-3dd5f8df8069
00000000-0000-0000-0000-000000000000	750	huzrgcdzgxcj	dd5b6be3-bf04-4cee-a971-911aa8dd9f9e	f	2026-08-01 07:58:27.639434+00	2026-08-01 07:58:27.639434+00	\N	b94ac40c-c117-4dd2-a80f-f837cd0803ad
00000000-0000-0000-0000-000000000000	762	2jqx6rzv3q7d	b157280f-c991-4346-82b0-bc232487cdf2	f	2026-08-01 13:24:05.606084+00	2026-08-01 13:24:05.606084+00	\N	86b3bee3-442d-4b4e-8f59-36675713babb
00000000-0000-0000-0000-000000000000	601	3oemhh5ppazx	be0af516-46a2-4c9c-84c7-9b71e5de5359	t	2026-07-26 07:41:56.083719+00	2026-07-26 09:25:05.889908+00	pt4eocswlpdc	c645dd77-72dc-4ec7-80a2-eeb4f84595df
00000000-0000-0000-0000-000000000000	777	hfvwlwbnhyli	435cfb2c-571a-4c0a-ba24-0420f8e22c97	f	2026-08-01 14:28:08.131443+00	2026-08-01 14:28:08.131443+00	\N	d01c9595-f86b-4884-9184-623ac9ae2d0c
00000000-0000-0000-0000-000000000000	608	kubc7hzitxp6	be0af516-46a2-4c9c-84c7-9b71e5de5359	t	2026-07-26 17:55:26.492707+00	2026-07-27 05:15:18.718182+00	qwriyad44j54	cdb0fc5d-8cc9-436d-bebb-bb515da139c8
00000000-0000-0000-0000-000000000000	616	ytewa6ig3fbl	be0af516-46a2-4c9c-84c7-9b71e5de5359	t	2026-07-27 14:03:39.613742+00	2026-07-27 16:31:31.141317+00	o7vikys6uen2	cdb0fc5d-8cc9-436d-bebb-bb515da139c8
00000000-0000-0000-0000-000000000000	218	qhvtp6kedfwp	0c7540e4-69f1-4d46-98b3-3577b0e15162	f	2026-07-13 09:49:56.069448+00	2026-07-13 09:49:56.069448+00	\N	d3711e17-ff7a-48e1-a4f6-586eec25b063
00000000-0000-0000-0000-000000000000	624	kevvgj7nkhvl	bc4d5c79-829d-4b7e-9aaf-936294358391	f	2026-07-27 17:54:08.509742+00	2026-07-27 17:54:08.509742+00	\N	362e79d8-ac48-4d6f-a5e4-6f1a915d34cd
00000000-0000-0000-0000-000000000000	638	7myctb3pl7od	be0af516-46a2-4c9c-84c7-9b71e5de5359	t	2026-07-27 18:38:00.962586+00	2026-07-28 07:23:09.532325+00	zs32aj7dph5t	cdb0fc5d-8cc9-436d-bebb-bb515da139c8
00000000-0000-0000-0000-000000000000	856	3p325znwgdzr	8b3f7c15-1a6f-455a-b79e-f82eec82de24	f	2026-08-02 05:30:20.749503+00	2026-08-02 05:30:20.749503+00	\N	50ef41b7-4dfa-4561-b548-529f7e9460dd
00000000-0000-0000-0000-000000000000	235	r3qcee2a7kh4	0c7540e4-69f1-4d46-98b3-3577b0e15162	f	2026-07-14 07:19:47.541457+00	2026-07-14 07:19:47.541457+00	\N	24f5771c-5b99-411d-b14a-2b533d102ede
00000000-0000-0000-0000-000000000000	238	7cmb3qerikij	0c7540e4-69f1-4d46-98b3-3577b0e15162	f	2026-07-14 07:49:22.319685+00	2026-07-14 07:49:22.319685+00	\N	93f9a5f0-b454-4365-89cd-b110174fd080
00000000-0000-0000-0000-000000000000	241	coykfbnqcrgw	0c7540e4-69f1-4d46-98b3-3577b0e15162	f	2026-07-14 09:11:10.724044+00	2026-07-14 09:11:10.724044+00	\N	66263cb7-24d9-45f6-ac46-a3a9231dcf11
00000000-0000-0000-0000-000000000000	244	4hdlerawebuu	0c7540e4-69f1-4d46-98b3-3577b0e15162	f	2026-07-14 09:36:48.962222+00	2026-07-14 09:36:48.962222+00	\N	44ca4723-b45b-4009-9e27-88baabb2b77b
00000000-0000-0000-0000-000000000000	249	vevdxs7pqhlr	0c7540e4-69f1-4d46-98b3-3577b0e15162	f	2026-07-14 10:00:38.673101+00	2026-07-14 10:00:38.673101+00	\N	6d03aaa9-58cc-4544-8da2-1a7b8fe7f533
00000000-0000-0000-0000-000000000000	207	xozmvr7rl33r	0c7540e4-69f1-4d46-98b3-3577b0e15162	t	2026-07-13 01:37:22.720375+00	2026-07-16 07:44:04.841052+00	\N	21da0fa1-210a-41df-b4f9-fe88484b4f04
00000000-0000-0000-0000-000000000000	651	6dhwvhrlgwhd	be0af516-46a2-4c9c-84c7-9b71e5de5359	t	2026-07-28 12:31:34.477122+00	2026-07-28 14:22:32.357926+00	kjtstumuxyxp	cdb0fc5d-8cc9-436d-bebb-bb515da139c8
00000000-0000-0000-0000-000000000000	400	5n3424gww4kt	0c7540e4-69f1-4d46-98b3-3577b0e15162	f	2026-07-20 10:39:40.854276+00	2026-07-20 10:39:40.854276+00	\N	a2f5985b-29cf-44de-9fe6-bf32bc714712
00000000-0000-0000-0000-000000000000	763	r24zskgxr74w	b8040d5d-d4e6-4f7e-9993-79c75b64effd	f	2026-08-01 13:45:45.841739+00	2026-08-01 13:45:45.841739+00	\N	471e5a2d-d670-4f73-b651-76d107a17d56
00000000-0000-0000-0000-000000000000	778	zvt4xhydgmmi	c916b5c0-762b-4db4-8368-d229c09c4de9	f	2026-08-01 14:31:07.116582+00	2026-08-01 14:31:07.116582+00	\N	6b41b0f5-b220-43ab-95df-36ef323f939f
00000000-0000-0000-0000-000000000000	262	2pjcerzl3qhy	0c7540e4-69f1-4d46-98b3-3577b0e15162	f	2026-07-14 10:42:12.099994+00	2026-07-14 10:42:12.099994+00	\N	e0a0551e-0627-4c7c-89f7-cc607e1ba36e
00000000-0000-0000-0000-000000000000	602	mw7vqpk4yiou	be0af516-46a2-4c9c-84c7-9b71e5de5359	f	2026-07-26 09:25:05.910179+00	2026-07-26 09:25:05.910179+00	3oemhh5ppazx	c645dd77-72dc-4ec7-80a2-eeb4f84595df
00000000-0000-0000-0000-000000000000	617	ednfmry2jgcf	be0af516-46a2-4c9c-84c7-9b71e5de5359	t	2026-07-27 16:31:31.151016+00	2026-07-27 17:39:01.261884+00	ytewa6ig3fbl	cdb0fc5d-8cc9-436d-bebb-bb515da139c8
00000000-0000-0000-0000-000000000000	276	eljq4fljccu6	79241b9e-03fe-4877-898e-433446dfa5cf	f	2026-07-14 12:09:43.771154+00	2026-07-14 12:09:43.771154+00	\N	877de0b1-7437-49b8-a5a9-24dc82b2bbcb
00000000-0000-0000-0000-000000000000	277	gkyuxclytx6n	0c7540e4-69f1-4d46-98b3-3577b0e15162	f	2026-07-14 12:11:09.778416+00	2026-07-14 12:11:09.778416+00	\N	402b23a7-4d05-4447-b789-48dcd17be042
00000000-0000-0000-0000-000000000000	279	yhj5aogi7hr6	0c7540e4-69f1-4d46-98b3-3577b0e15162	f	2026-07-14 12:28:57.46844+00	2026-07-14 12:28:57.46844+00	\N	c56a5463-e939-49fc-8a06-b4a32ff53457
00000000-0000-0000-0000-000000000000	281	4gk442tkqp4m	0c7540e4-69f1-4d46-98b3-3577b0e15162	f	2026-07-16 07:43:53.21822+00	2026-07-16 07:43:53.21822+00	\N	0df76d2c-1bac-4c52-8def-826df1274baa
00000000-0000-0000-0000-000000000000	282	odjula4g6yz4	0c7540e4-69f1-4d46-98b3-3577b0e15162	f	2026-07-16 07:44:04.842909+00	2026-07-16 07:44:04.842909+00	xozmvr7rl33r	21da0fa1-210a-41df-b4f9-fe88484b4f04
00000000-0000-0000-0000-000000000000	286	byt65otnuycl	0c7540e4-69f1-4d46-98b3-3577b0e15162	t	2026-07-16 10:12:27.627949+00	2026-07-16 11:10:41.682096+00	\N	943ce797-e326-413c-9def-e8b158a04f99
00000000-0000-0000-0000-000000000000	291	eqtiaaxbhvqu	0c7540e4-69f1-4d46-98b3-3577b0e15162	f	2026-07-16 11:10:41.685284+00	2026-07-16 11:10:41.685284+00	byt65otnuycl	943ce797-e326-413c-9def-e8b158a04f99
00000000-0000-0000-0000-000000000000	296	f6jba74ei5mr	0c7540e4-69f1-4d46-98b3-3577b0e15162	f	2026-07-16 12:53:25.122371+00	2026-07-16 12:53:25.122371+00	\N	10356208-19ed-455d-bc13-16c3b51dc5de
00000000-0000-0000-0000-000000000000	306	esqjktytuwis	144d9b83-f3be-448f-b678-c711c76e513c	f	2026-07-16 16:22:29.076118+00	2026-07-16 16:22:29.076118+00	\N	d9870771-e6e5-4909-9a24-67decd9392da
00000000-0000-0000-0000-000000000000	653	emhan3ybxrss	be0af516-46a2-4c9c-84c7-9b71e5de5359	t	2026-07-28 14:22:32.377439+00	2026-07-29 01:26:57.924413+00	6dhwvhrlgwhd	cdb0fc5d-8cc9-436d-bebb-bb515da139c8
00000000-0000-0000-0000-000000000000	579	dwl3zcpkcf5l	be0af516-46a2-4c9c-84c7-9b71e5de5359	t	2026-07-25 17:16:38.973998+00	2026-07-26 06:32:33.626452+00	wjkr5cj5wv2h	393c864d-d044-4403-8200-b1bc36f99a3b
00000000-0000-0000-0000-000000000000	603	tiaeijje6brs	be0af516-46a2-4c9c-84c7-9b71e5de5359	t	2026-07-26 09:25:05.955225+00	2026-07-26 11:25:43.035312+00	\N	cdb0fc5d-8cc9-436d-bebb-bb515da139c8
00000000-0000-0000-0000-000000000000	313	ca72xppmi6cb	0c7540e4-69f1-4d46-98b3-3577b0e15162	t	2026-07-16 19:07:25.63305+00	2026-07-16 20:05:41.275116+00	\N	4d40aac6-add2-4133-a4fa-12095f1a6be3
00000000-0000-0000-0000-000000000000	315	sol7nnqg4coz	0c7540e4-69f1-4d46-98b3-3577b0e15162	f	2026-07-16 20:05:41.288892+00	2026-07-16 20:05:41.288892+00	ca72xppmi6cb	4d40aac6-add2-4133-a4fa-12095f1a6be3
00000000-0000-0000-0000-000000000000	316	ysei5yrnykj5	0c7540e4-69f1-4d46-98b3-3577b0e15162	f	2026-07-16 20:08:22.57498+00	2026-07-16 20:08:22.57498+00	\N	c1ee1b8e-91d9-4498-8f1f-e2c71a081d6f
00000000-0000-0000-0000-000000000000	318	xjdkdguktcyj	64e9dbfa-539b-4ec6-87c1-bb8dc93c40af	f	2026-07-17 05:41:20.800777+00	2026-07-17 05:41:20.800777+00	\N	0cfba08a-2089-4fe1-afee-6941807b3a26
00000000-0000-0000-0000-000000000000	627	3b54bkzkswg6	bc4d5c79-829d-4b7e-9aaf-936294358391	f	2026-07-27 18:02:20.891478+00	2026-07-27 18:02:20.891478+00	\N	efb7aabe-baf9-4687-b77b-deb27edc1907
00000000-0000-0000-0000-000000000000	321	uitbkrb6jc5x	0c7540e4-69f1-4d46-98b3-3577b0e15162	f	2026-07-17 06:21:04.782914+00	2026-07-17 06:21:04.782914+00	\N	fd33c8ed-1a34-463f-a113-96d2700956dd
00000000-0000-0000-0000-000000000000	322	htkf4nl2sf7u	0c7540e4-69f1-4d46-98b3-3577b0e15162	f	2026-07-17 10:33:28.990564+00	2026-07-17 10:33:28.990564+00	\N	6dca3228-f141-4b2c-999a-78adc94250fb
00000000-0000-0000-0000-000000000000	323	xh5k7yrtz4ba	0c7540e4-69f1-4d46-98b3-3577b0e15162	f	2026-07-17 11:03:21.880714+00	2026-07-17 11:03:21.880714+00	\N	aef9e178-6934-4c76-ab89-817cf1987e55
00000000-0000-0000-0000-000000000000	858	6xmzbnq32yqy	be0af516-46a2-4c9c-84c7-9b71e5de5359	t	2026-08-03 02:05:35.300886+00	2026-08-03 15:11:38.652131+00	\N	90e5285b-05ac-4951-9c9e-121287a227fd
00000000-0000-0000-0000-000000000000	705	detvwix7wipd	be0af516-46a2-4c9c-84c7-9b71e5de5359	t	2026-07-30 11:23:28.915987+00	2026-07-30 12:24:45.702469+00	knewbixuwwlr	cdb0fc5d-8cc9-436d-bebb-bb515da139c8
00000000-0000-0000-0000-000000000000	640	dqtoimzaadzg	be0af516-46a2-4c9c-84c7-9b71e5de5359	t	2026-07-28 07:23:09.547184+00	2026-07-28 09:38:46.458804+00	7myctb3pl7od	cdb0fc5d-8cc9-436d-bebb-bb515da139c8
00000000-0000-0000-0000-000000000000	714	rdqqmqgn376k	be0af516-46a2-4c9c-84c7-9b71e5de5359	t	2026-07-31 01:38:37.348276+00	2026-07-31 09:57:07.449041+00	yxxeyvq54nwh	cdb0fc5d-8cc9-436d-bebb-bb515da139c8
00000000-0000-0000-0000-000000000000	336	n4w7qqvoculm	97e8054c-1a52-47df-b50c-eade857c1867	f	2026-07-17 18:26:01.649082+00	2026-07-17 18:26:01.649082+00	\N	9d243e5c-2a19-4000-be39-4f3b2250b8de
00000000-0000-0000-0000-000000000000	339	ja4qmdvkgpxk	0c7540e4-69f1-4d46-98b3-3577b0e15162	f	2026-07-18 09:53:40.8412+00	2026-07-18 09:53:40.8412+00	\N	737c133b-432c-4ad7-85bb-366ddaf27d6e
00000000-0000-0000-0000-000000000000	341	cjsoy2ibxbx4	0c7540e4-69f1-4d46-98b3-3577b0e15162	f	2026-07-18 10:15:44.109588+00	2026-07-18 10:15:44.109588+00	\N	ca78bfb8-58ce-424f-9c54-de97b3336c28
00000000-0000-0000-0000-000000000000	343	uovbca37jx4x	0c7540e4-69f1-4d46-98b3-3577b0e15162	f	2026-07-18 10:35:24.94278+00	2026-07-18 10:35:24.94278+00	\N	4482536b-97e6-4ed9-b635-4c992973649e
00000000-0000-0000-0000-000000000000	344	zxibxfoawvtj	0c7540e4-69f1-4d46-98b3-3577b0e15162	f	2026-07-18 10:37:20.691061+00	2026-07-18 10:37:20.691061+00	\N	5414ed5b-bb2c-4dd1-a131-7b6478026dfe
00000000-0000-0000-0000-000000000000	350	ica3eijpgfax	0c7540e4-69f1-4d46-98b3-3577b0e15162	f	2026-07-18 16:27:26.65578+00	2026-07-18 16:27:26.65578+00	\N	095a2c2f-c5ff-4a55-bea6-787b4b8e51d2
00000000-0000-0000-0000-000000000000	355	ugbcndr7wunj	0c7540e4-69f1-4d46-98b3-3577b0e15162	f	2026-07-18 17:20:40.128275+00	2026-07-18 17:20:40.128275+00	\N	4828c3d8-527a-4114-b56e-fa6626f25342
00000000-0000-0000-0000-000000000000	357	2nqico4rjrym	0c7540e4-69f1-4d46-98b3-3577b0e15162	f	2026-07-18 17:25:45.824321+00	2026-07-18 17:25:45.824321+00	\N	218eaf72-d906-4e32-97d6-d91917b16964
00000000-0000-0000-0000-000000000000	715	fp5z234q2qea	be0af516-46a2-4c9c-84c7-9b71e5de5359	t	2026-07-31 09:57:07.461306+00	2026-07-31 10:58:49.084116+00	rdqqmqgn376k	cdb0fc5d-8cc9-436d-bebb-bb515da139c8
00000000-0000-0000-0000-000000000000	571	wjkr5cj5wv2h	be0af516-46a2-4c9c-84c7-9b71e5de5359	t	2026-07-25 14:55:33.414394+00	2026-07-25 17:16:38.967119+00	hlpsfuigfvir	393c864d-d044-4403-8200-b1bc36f99a3b
00000000-0000-0000-0000-000000000000	671	6pqlj2dpzyug	be0af516-46a2-4c9c-84c7-9b71e5de5359	t	2026-07-29 01:26:57.93549+00	2026-07-29 03:18:02.120487+00	emhan3ybxrss	cdb0fc5d-8cc9-436d-bebb-bb515da139c8
00000000-0000-0000-0000-000000000000	859	utkkcrmitfws	be0af516-46a2-4c9c-84c7-9b71e5de5359	f	2026-08-03 15:11:38.66758+00	2026-08-03 15:11:38.66758+00	6xmzbnq32yqy	90e5285b-05ac-4951-9c9e-121287a227fd
00000000-0000-0000-0000-000000000000	604	fyyypo32o7pg	be0af516-46a2-4c9c-84c7-9b71e5de5359	t	2026-07-26 11:25:43.047603+00	2026-07-26 12:37:15.299612+00	tiaeijje6brs	cdb0fc5d-8cc9-436d-bebb-bb515da139c8
00000000-0000-0000-0000-000000000000	755	rkfnlyfgafll	dd5b6be3-bf04-4cee-a971-911aa8dd9f9e	f	2026-08-01 09:21:05.552238+00	2026-08-01 09:21:05.552238+00	\N	07ca59db-468d-422b-9e88-da0a69fdd3ca
00000000-0000-0000-0000-000000000000	612	frixmz2lwjcx	be0af516-46a2-4c9c-84c7-9b71e5de5359	t	2026-07-27 05:15:18.727774+00	2026-07-27 10:17:38.979028+00	kubc7hzitxp6	cdb0fc5d-8cc9-436d-bebb-bb515da139c8
00000000-0000-0000-0000-000000000000	688	d5lujbi6mfud	be0af516-46a2-4c9c-84c7-9b71e5de5359	t	2026-07-30 08:03:51.931453+00	2026-07-30 10:22:50.708666+00	7xj7n76msm2n	cdb0fc5d-8cc9-436d-bebb-bb515da139c8
00000000-0000-0000-0000-000000000000	767	5y7l2cikkeqr	663b616a-58c8-4a0b-8ed1-bd9e1e4f18c0	f	2026-08-01 13:52:53.453858+00	2026-08-01 13:52:53.453858+00	\N	3146ed1e-f007-415e-841a-e7c3e928026c
00000000-0000-0000-0000-000000000000	768	ihajgj3zwskc	663b616a-58c8-4a0b-8ed1-bd9e1e4f18c0	f	2026-08-01 13:53:10.924917+00	2026-08-01 13:53:10.924917+00	\N	b61003a9-dc9a-4147-b0a6-6b7b34b779dc
00000000-0000-0000-0000-000000000000	379	tjz6wfuttd7m	0c7540e4-69f1-4d46-98b3-3577b0e15162	f	2026-07-19 11:31:35.310289+00	2026-07-19 11:31:35.310289+00	\N	10ff5ddd-f8b1-4585-a085-595c21ddd353
\.


--
-- Data for Name: sso_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."sso_providers" ("id", "resource_id", "created_at", "updated_at", "disabled") FROM stdin;
\.


--
-- Data for Name: saml_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."saml_providers" ("id", "sso_provider_id", "entity_id", "metadata_xml", "metadata_url", "attribute_mapping", "created_at", "updated_at", "name_id_format") FROM stdin;
\.


--
-- Data for Name: saml_relay_states; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."saml_relay_states" ("id", "sso_provider_id", "request_id", "for_email", "redirect_to", "created_at", "updated_at", "flow_state_id") FROM stdin;
\.


--
-- Data for Name: sso_domains; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."sso_domains" ("id", "sso_provider_id", "domain", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: webauthn_challenges; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."webauthn_challenges" ("id", "user_id", "challenge_type", "session_data", "created_at", "expires_at") FROM stdin;
\.


--
-- Data for Name: webauthn_credentials; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."webauthn_credentials" ("id", "user_id", "credential_id", "public_key", "attestation_type", "aaguid", "sign_count", "transports", "backup_eligible", "backed_up", "friendly_name", "created_at", "updated_at", "last_used_at") FROM stdin;
\.


--
-- Data for Name: admins; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."admins" ("id", "full_name", "email", "role", "is_active", "created_at") FROM stdin;
be0af516-46a2-4c9c-84c7-9b71e5de5359	SoftXpert Shahin	githubshahin@gmail.com	super_admin	t	2026-07-25 06:38:05.988784+00
\.


--
-- Data for Name: app_content; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."app_content" ("id", "slug", "title", "content", "updated_at", "app_name", "app_logo", "support_email", "support_phone", "company_address", "currency_symbol", "platform_fee", "vat_percentage", "service_charge", "cancellation_fee", "google_maps_api_key", "paystack_public_key", "paystack_secret_key", "auto_cancel_minutes", "primary_color", "secondary_color", "maintenance_mode", "app_version") FROM stdin;
c2ce0777-8ab6-4687-a913-56680b4ff0e2	privacy	Privacy Policy	We value your privacy. Your location data is used only to match you with ride requests.	2026-07-20 10:02:50.892159+00	\N	\N	\N	\N	\N	৳	0.00	0.00	0.00	0.00	\N	\N	\N	30	#2563EB	#111827	f	1.0.0
5de9d025-3ebc-45a9-aef4-a249c60a1924	terms	Terms & Conditions	By using FuelDrop, you agree to our safety guidelines and professional conduct policies.	2026-07-27 16:35:05.977+00	\N	\N	\N	\N	\N	৳	0.00	0.00	0.00	0.00	\N	\N	\N	30	#2563EB	#111827	f	1.0.0
702052e8-d51a-4bb4-b2f6-bb8e02aeb0db	about	About FuelFlow	An on-demand fuel delivery platform streamlines the process of ordering and dispatching fuel directly to a customer's location. The app ecosystem is structured around two primary user types—Customers and Drivers—managed by a central Admin	2026-07-29 04:51:41.569+00	\N	\N	\N	\N	\N	৳	0.00	0.00	0.00	0.00	\N	\N	\N	30	#2563EB	#111827	f	1.0.0
d2f1ef16-8066-4563-b0b5-20915f10bf9f	settings	Application Settings		2026-07-27 16:16:14.510093+00	FuelFlow	\N	githubshahin@gmail.com	01979965569	kakabo savar dhaka	$	12.00	0.00	0.00	0.00	\N	\N	\N	30	#2563EB	#111827	f	1.0.0
\.


--
-- Data for Name: profiles; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."profiles" ("id", "full_name", "email", "phone", "role", "created_at", "is_online", "latitude", "longitude", "heading", "last_location_update", "last_location_at", "avatar_url", "division", "city", "area", "address", "rating", "total_reviews") FROM stdin;
5f9299c9-4bbc-466c-8725-9b97ff40df5d	D44	d43@gmail.com	01546134813	driver	2026-08-02 04:51:42.166263+00	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5.00	0
8b3f7c15-1a6f-455a-b79e-f82eec82de24	C44	c44@gmail.com	01524265524	customer	2026-08-02 05:25:20.163363+00	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5.00	0
2bdad9f6-3bc3-4ca2-b485-80f6421659d2	Shahin sha	Customer@gmaill.com	01979965569	customer	2026-06-29 15:06:34.827546+00	f	\N	\N	\N	\N	\N	https://tjtimguhglwtdwhfdezo.supabase.co/storage/v1/object/public/avatars/2bdad9f6-3bc3-4ca2-b485-80f6421659d2-1784660116345.jpg	Dhaka 	Dhaka	Savar	Savar, Dhaka	5.00	0
0c7540e4-69f1-4d46-98b3-3577b0e15162	Shahin	Techno@Gmail.com	01979965569	driver	2026-06-29 06:08:43.601601+00	t	23.8652952	90.3243766	\N	2026-07-20 10:39:43.142+00	\N	\N	\N	\N	\N	\N	5.00	0
fed16cd3-2673-4355-ac94-a3289224ab6d	Jamal	d5@gmail.com	01531542751	driver	2026-07-17 05:42:57.131589+00	t	23.8653647	90.3246247	\N	2026-07-30 10:13:46.082+00	\N	https://tjtimguhglwtdwhfdezo.supabase.co/storage/v1/object/public/avatars/fed16cd3-2673-4355-ac94-a3289224ab6d-1785127873970.jpg					5.00	0
be0af516-46a2-4c9c-84c7-9b71e5de5359	\N	githubshahin@gmail.com	\N	admin	2026-07-25 06:35:39.936789+00	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5.00	0
bc4d5c79-829d-4b7e-9aaf-936294358391	musa	musa1@gmail.com	01591542751	driver	2026-07-27 17:54:08.405121+00	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5.00	0
815d2073-a11d-46e6-b9df-7f4c5c76b2aa	31test	31@customer.com	01979965569	customer	2026-07-31 10:55:09.509802+00	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5.00	0
79241b9e-03fe-4877-898e-433446dfa5cf	C3	c3@Gmail.com	01979965569	customer	2026-07-14 12:09:43.730314+00	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5.00	0
133f926c-a98c-4b27-9ff7-e6c0cf0bec18	31Driver	31@driver.com	01531542751	driver	2026-07-31 10:57:30.481094+00	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5.00	0
a9c43137-d6ed-40bb-9e2d-269169b8656e	Sha	shahinforcoc@youpmail.com	01979965569	customer	2026-06-28 16:59:04.343935+00	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5.00	0
ea1e230b-cfd2-4ec8-9baa-4fa23a992dca	D1	d1@gmail.com	01979965569	driver	2026-07-01 16:25:08.87514+00	t	23.8653265	90.3243225	\N	2026-07-23 22:06:08.179+00	\N	\N	\N	\N	\N	\N	5.00	0
d1eb281c-c2e1-441e-b40d-08a35776bdb4	Musa	musa@gmail.com	01979965569	customer	2026-06-29 16:15:15.611956+00	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5.00	0
876bad8f-4d46-488f-abb9-7779ccede40b	Ten	c10@gmailm.com	01531542577	customer	2026-07-31 17:18:29.956477+00	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5.00	0
144d9b83-f3be-448f-b678-c711c76e513c	Ruhi	ru@gmail.com	01531542751	driver	2026-07-16 16:22:29.025927+00	t	23.8653186	90.3243562	\N	2026-07-16 16:25:12.295+00	\N	\N	\N	\N	\N	\N	5.00	0
31377f7c-5eff-4de0-bcec-dae997ff9ac6	TenD	d10@gmail.com	019755523365	driver	2026-07-31 17:19:59.76158+00	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5.00	0
97e8054c-1a52-47df-b50c-eade857c1867	c9@gmail.com	c9@gmail.com	01531542751	customer	2026-07-17 18:26:01.590012+00	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5.00	0
dd5b6be3-bf04-4cee-a971-911aa8dd9f9e	C11	C11@gmail.com	01524153541	customer	2026-08-01 07:19:29.344211+00	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5.00	0
64e9dbfa-539b-4ec6-87c1-bb8dc93c40af	D	d@gmail.com	01531542751	driver	2026-07-17 05:41:20.713404+00	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5.00	0
b157280f-c991-4346-82b0-bc232487cdf2	D17	d17@gmail.com	015497555655	driver	2026-08-01 13:23:38.858396+00	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5.00	0
b8040d5d-d4e6-4f7e-9993-79c75b64effd	D18	d18@gmail.com	01531542751	driver	2026-08-01 13:45:45.730426+00	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5.00	0
3a101d58-5bd6-4e53-844b-5c4672b8ae8e	Sha	test@gmail.com	01979965569	customer	2026-07-25 13:56:50.480776+00	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5.00	0
a0e1b020-b22d-4317-bef9-94a69c1f2c15	Musa	c2@gmail.com	01979965569	customer	2026-07-01 12:51:32.253377+00	f	\N	\N	\N	\N	\N	https://tjtimguhglwtdwhfdezo.supabase.co/storage/v1/object/public/avatars/a0e1b020-b22d-4317-bef9-94a69c1f2c15-1784651289626.jpg	Dhaka	Dhaka	Ashulia saavar		5.00	0
aa4cd01d-7077-473c-b9bc-3510e1c98bde	Testt	testt@gmail.com	01531542751	driver	2026-07-25 13:58:01.870523+00	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5.00	0
891825d4-0f9f-4db8-8c18-1ecb3a94f12f	C12	c12@gmail.com	0154675487648	customer	2026-08-01 09:16:26.328162+00	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5.00	0
aba25283-ef82-45e7-8942-6b851bff234d	D19	d19@gmail.com	018764846884	driver	2026-08-01 13:49:14.663997+00	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5.00	0
708c6c50-1770-4e04-a50c-d7b9f7c28255	D12	d12@gmail.com	0154213542	driver	2026-08-01 09:18:28.605933+00	t	23.8653673	90.3243052	\N	2026-08-01 09:20:09.258+00	\N	\N	\N	\N	\N	\N	5.00	0
24701573-d709-4acc-8858-6c96e5e79533	D11	d11@gmail.com	0153245127	driver	2026-08-01 07:21:03.004965+00	t	23.8653686	90.3243664	\N	2026-08-01 09:20:51.889+00	\N	\N	\N	\N	\N	\N	5.00	0
5c4351bb-39c7-4ecc-80e7-731ea1b906d5	D13	d13@gmail.com	015423756154	driver	2026-08-01 10:38:18.777841+00	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5.00	0
f644e2bb-0ef0-4e69-94a5-6a1c59ced946	D14	D14@gmail.com	01979965569	driver	2026-08-01 13:05:19.20497+00	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5.00	0
0d6d89c3-1444-49d9-a12e-9cea2a64bc34	D16	d16@gmail.com	01645873784	driver	2026-08-01 13:12:03.609053+00	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5.00	0
9a94e390-858c-428d-8a59-4567715827ca	C19	c19@gmail.com	01531542751	customer	2026-08-01 13:50:10.515327+00	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5.00	0
a2a988ab-e13d-4e36-bdf0-bba5ea021e7b	C18	c18@gmail.com	0154687512	customer	2026-08-01 13:51:41.257102+00	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5.00	0
663b616a-58c8-4a0b-8ed1-bd9e1e4f18c0	D20	d20@gmail.com	01979965569	driver	2026-08-01 13:52:53.432298+00	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5.00	0
69691c51-dd55-4f22-8476-bb667f6317dd	D21	d21@gmail.com	0531548768	driver	2026-08-01 14:04:33.148943+00	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5.00	0
c52ec75d-34d6-4172-b7cd-913609abbf0b	D22	d22@gmail.com	01945764319	driver	2026-08-01 14:08:48.632968+00	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5.00	0
bf2a506d-e515-40d0-b2cd-5427f26b717b	D23	d23@gmail.com	01546784648	driver	2026-08-01 14:09:22.018176+00	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5.00	0
04c03fc4-f348-464b-b94d-7344ac2f0c1e	C21	c21@gmail.com	01532235562	driver	2026-08-01 14:11:48.541289+00	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5.00	0
840dd57d-de4c-42df-920e-705ce76f4974	C22	c22@gmail.com	01531542151	customer	2026-08-01 14:13:05.288118+00	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5.00	0
435cfb2c-571a-4c0a-ba24-0420f8e22c97	D25	d25@gmail.com	01531542751	driver	2026-08-01 14:28:08.066635+00	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5.00	0
c916b5c0-762b-4db4-8368-d229c09c4de9	D24	d24@gmail.com	01543321824	driver	2026-08-01 14:31:07.069647+00	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5.00	0
29165c98-def8-44ed-b27e-6a9d1681f643	D27	d27@gmail.com	0154322545645	driver	2026-08-01 14:33:31.706458+00	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5.00	0
64d7d29c-3e63-4759-bf74-3b796ed70e5f	D28	d28@gmail.com	01543754278	driver	2026-08-01 14:35:16.522001+00	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5.00	0
65446456-304e-4859-b4a7-a225c6f1e8f8	D29	d29@gmail.com	0154046484648	driver	2026-08-01 14:38:07.331188+00	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5.00	0
bf3cd985-2a5e-4816-9064-35e544bb988c	C29	c29@gmail.com	01531542751	customer	2026-08-01 14:38:45.362361+00	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5.00	0
d2d6b100-0e63-4e80-b564-7fd87ae514e3	D30	d30@gmail.com	01531542751	driver	2026-08-01 14:42:16.564064+00	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5.00	0
7e8ff550-591f-49e4-92a8-57a014328ac7	D31	d31@gmail.com	0153154278	driver	2026-08-01 14:45:55.969311+00	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5.00	0
35eb9f1f-2a4f-4bb7-8a19-340ee7a09522	C31	c31@gmail.com	01531542751	driver	2026-08-01 14:47:23.622748+00	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5.00	0
8a427a13-f3f7-415f-9139-29a47c3dc3a7	C32	c32@gmail.com	01531542451	customer	2026-08-01 14:48:10.840453+00	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5.00	0
2351c2dd-edb3-47c0-8653-a7da824819f8	D35	d35@gmail.com	01564315275	driver	2026-08-01 14:54:38.916261+00	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5.00	0
09f67131-017a-4ec2-b38b-3415d80abb1b	C35	c35@gmail.com	01531542786	driver	2026-08-01 14:56:02.387189+00	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5.00	0
9a807262-a129-4053-8cd6-c0d92c387094	C34	c34@gmail.com	01531542751	customer	2026-08-01 14:56:54.7004+00	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5.00	0
b1eea694-233e-4f03-8e9d-0663d338a6f1	D37	d37@gmail.com	01546754318	driver	2026-08-01 15:00:09.010948+00	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5.00	0
4077aebf-2c36-42ec-b99d-231991995d99	C39	c39@gmail.com	01548461845	customer	2026-08-01 16:25:21.55214+00	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5.00	0
523b3a83-d224-4bb8-b636-4b814eff34f1	D39	d39@gmail.com	0154215421	driver	2026-08-01 16:24:28.819719+00	t	23.8653789	90.3243331	\N	2026-08-02 04:24:13.466+00	\N	\N	\N	\N	\N	\N	5.00	0
bc42af3f-3f33-455c-b42f-c59ee761541e	C40	c40@gmail.com	01548754648	customer	2026-08-02 04:28:29.951678+00	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5.00	0
520cc6fd-0ad8-41d6-afc3-b208d43fb016	D40	d41@gmail.com	0137876484348	driver	2026-08-02 04:29:23.360188+00	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5.00	0
7a65ce1a-e8ed-4777-b6ac-a8b9151cd61a	D40	d40@gmail.com	01610431846	driver	2026-08-02 04:31:22.658375+00	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5.00	0
82354dcd-3fe9-42d6-8e76-f344db116242	C42	c42@gmail.com	0153184348	customer	2026-08-02 04:46:24.327997+00	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5.00	0
1a3dd5cc-a943-45cd-a925-69df114aa14f	Sujon sha	driver@gmail.com	01531542751	driver	2026-07-01 12:27:40.874886+00	t	23.8653509	90.3243348	\N	2026-08-02 04:47:56.418+00	\N	https://tjtimguhglwtdwhfdezo.supabase.co/storage/v1/object/public/avatars/1a3dd5cc-a943-45cd-a925-69df114aa14f-1784568119451.jpg	DHAKA	Dhaka	Ashulia, savar 	Kakvo, savar, Dhaka	5.00	0
ad9049ad-da91-4eef-9d1e-8359b35af82b	D42	d42@gmail.com	0154618461848	driver	2026-08-02 04:48:42.99237+00	t	23.8653312	90.3243302	\N	2026-08-02 04:53:32.563+00	\N	\N	\N	\N	\N	\N	5.00	0
689df7e6-1768-4cec-bef3-3ec3009806f4	D44	d44@gmail.com	01523525425	driver	2026-08-02 05:26:45.453154+00	t	23.8654149	90.3244122	\N	2026-08-02 05:29:23.999+00	\N	\N	\N	\N	\N	\N	5.00	0
\.


--
-- Data for Name: orders; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."orders" ("id", "customer_id", "fuel_type", "quantity", "delivery_address", "latitude", "longitude", "subtotal", "delivery_fee", "total", "status", "created_at", "driver_id", "liters", "address", "total_price", "payment_method", "accepted_at", "completed_at", "delivery_started_at", "arrived_at", "delivering_at", "cancelled_at", "updated_at", "assigned_at", "customer_confirmed_at", "customer_confirmation_requested_at") FROM stdin;
609d1bab-68bb-490b-8204-9534ebd87fa3	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	Petrol	\N	\N	0	0	\N	\N	\N	completed	2026-07-03 09:56:54.489875+00	0c7540e4-69f1-4d46-98b3-3577b0e15162	10	Customer@gmaill.com 	1380	Cash	2026-07-04 18:40:09.727+00	2026-07-04 18:40:16.046+00	2026-07-04 18:40:14.718+00	2026-07-04 18:40:13.77+00	\N	\N	2026-07-13 17:43:07.457991+00	\N	\N	\N
126a1130-680c-45dd-b68b-1134671eb08e	a0e1b020-b22d-4317-bef9-94a69c1f2c15	Petrol	\N	\N	0	0	\N	\N	\N	completed	2026-07-01 14:48:06.501756+00	0c7540e4-69f1-4d46-98b3-3577b0e15162	1000	C2@gmail.com 	130080	Mobile	2026-07-01 14:49:48.636+00	2026-07-01 14:49:51.414+00	\N	\N	\N	\N	2026-07-13 17:43:07.457991+00	\N	\N	\N
17ac4993-520b-4e0a-9d50-567b754ae3a9	a0e1b020-b22d-4317-bef9-94a69c1f2c15	Petrol	\N	\N	23.8653516	90.3243247	\N	\N	\N	completed	2026-07-13 01:34:21.878929+00	0c7540e4-69f1-4d46-98b3-3577b0e15162	36	Kaaba savar dhaka	4760	Card	2026-07-13 01:37:30.749+00	2026-07-13 01:38:15.304+00	2026-07-13 01:37:41.857+00	2026-07-13 01:38:11.504+00	\N	\N	2026-07-13 17:43:07.457991+00	\N	\N	\N
252894b6-8379-41f2-b396-771879326917	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	Petrol	\N	\N	0	0	\N	\N	\N	completed	2026-07-01 12:20:21.574293+00	0c7540e4-69f1-4d46-98b3-3577b0e15162	10000	July1 	1300080	Cash	2026-07-01 12:21:13.103+00	2026-07-01 12:21:30.202+00	2026-07-01 12:21:26.073+00	2026-07-01 12:21:28.402+00	\N	\N	2026-07-13 17:43:07.457991+00	\N	\N	\N
9fa87954-8b50-4464-a6fe-c0f912034d56	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	Petrol	\N	\N	0	0	\N	\N	\N	completed	2026-07-01 14:49:00.656112+00	0c7540e4-69f1-4d46-98b3-3577b0e15162	50	Customer@gmaill.com 	6580	Cash	2026-07-01 15:56:52.006+00	2026-07-01 15:56:55.459+00	\N	\N	\N	\N	2026-07-13 17:43:07.457991+00	\N	\N	\N
36b048be-f58e-45f5-a628-79b79c920950	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	Petrol	\N	\N	0	0	\N	\N	\N	completed	2026-07-01 11:50:53.061323+00	0c7540e4-69f1-4d46-98b3-3577b0e15162	1000	1 july test	130080	Cash	2026-07-01 12:21:34.142+00	2026-07-01 12:21:37.148+00	\N	\N	\N	\N	2026-07-13 17:43:07.457991+00	\N	\N	\N
782ba5bd-b499-4773-b22e-c73225aee767	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	Petrol	\N	\N	0	0	\N	\N	\N	completed	2026-06-30 16:36:12.59467+00	0c7540e4-69f1-4d46-98b3-3577b0e15162	10	Shahin	1380	Cash	2026-07-01 12:21:42.229+00	2026-07-01 12:21:53.525+00	2026-07-01 12:21:50.765+00	2026-07-01 12:21:50.256+00	\N	\N	2026-07-13 17:43:07.457991+00	\N	\N	\N
4f9fe177-a3ed-495e-bd9b-16997b630150	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	Petrol	\N	\N	23.8679896	90.3229338	\N	\N	\N	completed	2026-07-04 18:49:38.562025+00	1a3dd5cc-a943-45cd-a925-69df114aa14f	69	Up 	9050	Mobile	2026-07-04 18:53:22.032+00	2026-07-04 18:53:26.161+00	\N	2026-07-04 18:53:24.846+00	\N	\N	2026-07-13 17:43:07.457991+00	\N	\N	\N
9d2c172d-350b-4f4b-9f1c-2dd9694e9732	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	Petrol	\N	\N	0	0	\N	\N	\N	completed	2026-07-03 09:39:31.782906+00	ea1e230b-cfd2-4ec8-9baa-4fa23a992dca	10	Shahin for d1@gmail.com 	1380	Card	2026-07-03 09:39:59.013+00	2026-07-03 09:40:04.339+00	2026-07-03 09:40:03.515+00	2026-07-03 09:40:02.357+00	\N	\N	2026-07-13 17:43:07.457991+00	\N	\N	\N
0441d230-8025-4108-8672-97cb3ea0ca07	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	Petrol	\N	\N	0	0	\N	\N	\N	completed	2026-07-01 16:24:21.078236+00	ea1e230b-cfd2-4ec8-9baa-4fa23a992dca	1000000	Customer@gmaill.com 	130000080	Cash	2026-07-01 16:25:17.419+00	2026-07-03 09:40:09.77+00	2026-07-01 16:25:22.95+00	2026-07-01 16:26:26.137+00	\N	\N	2026-07-13 17:43:07.457991+00	\N	\N	\N
fe5338d8-f689-4797-9170-7d33099b938b	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	Petrol	\N	\N	0	0	\N	\N	\N	completed	2026-07-01 11:25:06.153766+00	0c7540e4-69f1-4d46-98b3-3577b0e15162	10000	Create 5.24 1july	1300080	Cash	2026-07-01 12:24:27.91+00	2026-07-01 12:24:53.36+00	2026-07-01 12:24:47.466+00	2026-07-01 12:24:39.133+00	\N	\N	2026-07-13 17:43:07.457991+00	\N	\N	\N
2bc69c7e-fc96-437b-afbd-39a18ab402a1	d1eb281c-c2e1-441e-b40d-08a35776bdb4	Octane	\N	\N	0	0	\N	\N	\N	completed	2026-06-29 16:15:43.373506+00	1a3dd5cc-a943-45cd-a925-69df114aa14f	1000	Musa	150080	Cash	2026-07-01 12:27:50.537+00	2026-07-03 09:45:16.781+00	2026-07-01 12:27:56.209+00	\N	\N	\N	2026-07-13 17:43:07.457991+00	\N	\N	\N
1f7aceaf-6c26-48ff-97fc-039a8adfa3ce	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	Petrol	\N	\N	23.8679896	90.3229338	\N	\N	\N	completed	2026-07-12 16:20:16.046397+00	0c7540e4-69f1-4d46-98b3-3577b0e15162	10	Kakabo 	1380	Card	2026-07-13 01:56:30.625+00	2026-07-13 01:56:32.705+00	\N	\N	\N	\N	2026-07-13 17:43:07.457991+00	\N	\N	\N
77801bfb-6d3b-48da-9bbf-a4027e3987f8	a0e1b020-b22d-4317-bef9-94a69c1f2c15	Petrol	\N	\N	23.8653516	90.3243247	\N	\N	\N	completed	2026-07-13 01:40:28.200202+00	0c7540e4-69f1-4d46-98b3-3577b0e15162	66	Kakabo	8660	Mobile	2026-07-13 01:52:05.73+00	2026-07-13 01:52:08.904+00	\N	\N	\N	\N	2026-07-13 17:43:07.457991+00	\N	\N	\N
0f63ca35-2568-4ba0-a88a-e49bdd41fafc	a0e1b020-b22d-4317-bef9-94a69c1f2c15	Petrol	\N	\N	23.8694805	90.3211706	\N	\N	\N	completed	2026-07-04 18:44:06.817172+00	0c7540e4-69f1-4d46-98b3-3577b0e15162	10	Dharma 	1380	Cash	2026-07-04 21:08:49.649+00	2026-07-04 21:08:51.245+00	\N	\N	\N	\N	2026-07-13 17:43:07.457991+00	\N	\N	\N
b04f1767-4692-44b8-8a07-98c86620449a	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	Petrol	\N	\N	0	0	\N	\N	\N	completed	2026-06-29 15:07:51.864219+00	0c7540e4-69f1-4d46-98b3-3577b0e15162	10	34ddx	1380	Cash	2026-07-01 12:21:00.964+00	2026-07-01 13:13:32.049+00	2026-07-01 13:13:31.435+00	2026-07-01 13:13:28.357+00	\N	\N	2026-07-13 17:43:07.457991+00	\N	\N	\N
ac79d326-c39a-4235-b188-367ff0a1b33f	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	Petrol	\N	\N	0	0	\N	\N	\N	completed	2026-07-03 09:56:15.871223+00	0c7540e4-69f1-4d46-98b3-3577b0e15162	10	D1@gmail.com 	1380	Mobile	2026-07-03 09:57:27.043+00	2026-07-04 21:09:47.157+00	2026-07-04 18:40:38.081+00	2026-07-03 09:57:35.036+00	\N	\N	2026-07-13 17:43:07.457991+00	\N	\N	\N
47463687-0b79-4962-bc85-bad992dcecbc	a0e1b020-b22d-4317-bef9-94a69c1f2c15	Petrol	\N	\N	0	0	\N	\N	\N	completed	2026-07-03 09:44:48.498779+00	1a3dd5cc-a943-45cd-a925-69df114aa14f	100	D1@gmail.com 	13080	Mobile	2026-07-03 09:45:19.794+00	2026-07-03 09:45:32.885+00	2026-07-03 09:45:22.601+00	2026-07-03 09:45:32.105+00	\N	\N	2026-07-13 17:43:07.457991+00	\N	\N	\N
c6830fc9-e18e-4105-baef-549515174c66	0c7540e4-69f1-4d46-98b3-3577b0e15162	Diesel	\N	\N	0	0	\N	\N	\N	completed	2026-06-29 15:39:24.765969+00	0c7540e4-69f1-4d46-98b3-3577b0e15162	100	Daffodil University permanent campus ashulia Dattupara 	12080	Cash	2026-07-01 12:26:22.93+00	2026-07-01 13:13:51.847+00	2026-07-01 13:13:49.332+00	2026-07-01 13:13:50.504+00	\N	\N	2026-07-13 17:43:07.457991+00	\N	\N	\N
00e6b48a-82b6-41a1-a212-faf65577dd8b	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	Petrol	\N	\N	0	0	\N	\N	\N	completed	2026-07-01 12:41:38.341401+00	0c7540e4-69f1-4d46-98b3-3577b0e15162	100000	641 1 july	13000080	Card	2026-07-01 13:12:51.763+00	2026-07-01 13:14:22.525+00	\N	2026-07-01 13:14:17.916+00	\N	\N	2026-07-13 17:43:07.457991+00	\N	\N	\N
4c7c52aa-cb6b-448a-8fbd-4319753aebf8	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	Petrol	\N	\N	0	0	\N	\N	\N	completed	2026-06-30 16:05:37.486873+00	0c7540e4-69f1-4d46-98b3-3577b0e15162	100	Kakabo savar dhaka	13080	Mobile	2026-07-01 13:14:27.342+00	2026-07-01 13:14:29.634+00	\N	\N	\N	\N	2026-07-13 17:43:07.457991+00	\N	\N	\N
4b9054cc-b675-4f9b-ae5a-3bf6f3b752c5	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	Petrol	\N	\N	0	0	\N	\N	\N	completed	2026-06-30 16:17:21.046816+00	0c7540e4-69f1-4d46-98b3-3577b0e15162	10	Kakabo savar dhaka	1380	Cash	2026-07-01 13:14:32.775+00	2026-07-01 13:14:34.75+00	\N	\N	\N	\N	2026-07-13 17:43:07.457991+00	\N	\N	\N
057e23c6-83b9-4ac7-984d-7875b412770c	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	Petrol	\N	\N	23.8679896	90.3229338	\N	\N	\N	completed	2026-07-04 18:50:02.69378+00	1a3dd5cc-a943-45cd-a925-69df114aa14f	33	67	4370	Card	2026-07-04 18:54:28.035+00	2026-07-09 06:23:45.379+00	2026-07-04 18:54:37.734+00	\N	\N	\N	2026-07-13 17:43:07.457991+00	\N	\N	\N
51fe98c4-712c-4df7-a648-8b1f3339481b	a0e1b020-b22d-4317-bef9-94a69c1f2c15	Octane	\N	\N	23.865384	90.3244031	\N	\N	\N	completed	2026-07-12 17:11:11.530981+00	0c7540e4-69f1-4d46-98b3-3577b0e15162	10	Dhaka 	1580	Card	2026-07-13 01:52:22.567+00	2026-07-13 01:52:25.969+00	\N	\N	\N	\N	2026-07-13 17:43:07.457991+00	\N	\N	\N
8f01e9da-296c-4077-b727-608aa688e363	a0e1b020-b22d-4317-bef9-94a69c1f2c15	Octane	\N	\N	23.861301	90.3211706	\N	\N	\N	completed	2026-07-12 16:26:09.206677+00	0c7540e4-69f1-4d46-98b3-3577b0e15162	10	Dhaka, kakbo	1580	Card	2026-07-13 01:56:37.693+00	2026-07-13 01:56:39.894+00	\N	\N	\N	\N	2026-07-13 17:43:07.457991+00	\N	\N	\N
79babec2-a448-460e-9597-038fdaa2c9c7	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	Petrol	\N	\N	23.8679896	90.3229338	\N	\N	\N	completed	2026-07-12 17:24:01.056502+00	0c7540e4-69f1-4d46-98b3-3577b0e15162	16	Fur	2160	Cash	2026-07-13 01:56:43.996+00	2026-07-13 01:56:46.081+00	\N	\N	\N	\N	2026-07-13 17:43:07.457991+00	\N	\N	\N
233e84c8-451d-43e6-85b4-f666f6071c99	a0e1b020-b22d-4317-bef9-94a69c1f2c15	Diesel	\N	\N	23.8653516	90.3243247	\N	\N	\N	completed	2026-07-13 01:51:24.938863+00	0c7540e4-69f1-4d46-98b3-3577b0e15162	63	Dhaka 	7640	Mobile	2026-07-13 01:52:36.221+00	2026-07-13 01:56:16.327+00	2026-07-13 01:52:50.502+00	2026-07-13 01:52:51.78+00	\N	\N	2026-07-13 17:43:07.457991+00	\N	\N	\N
28b26bdc-81ba-4be8-9580-ad120b99f649	a0e1b020-b22d-4317-bef9-94a69c1f2c15	Petrol	\N	\N	37.4219983	-122.084	\N	\N	\N	completed	2026-07-08 11:09:35.659614+00	0c7540e4-69f1-4d46-98b3-3577b0e15162	1000	Shahin	130080	Cash	2026-07-13 01:56:24.324+00	2026-07-13 01:56:26.453+00	\N	\N	\N	\N	2026-07-13 17:43:07.457991+00	\N	\N	\N
bea8cf6f-0646-4381-a6c3-238dc9f74bc7	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	Petrol	\N	\N	23.8653516	90.3243247	\N	\N	\N	completed	2026-07-13 02:18:04.720308+00	0c7540e4-69f1-4d46-98b3-3577b0e15162	33	Kakabo, savar, Dhaka	4370	Card	2026-07-13 02:18:37.413+00	2026-07-13 02:18:59.797+00	2026-07-13 02:18:49.233+00	2026-07-13 02:18:54.916+00	\N	\N	2026-07-13 17:43:07.457991+00	\N	\N	\N
689ca12b-f2a8-4bc8-a2c1-ab1da3c738e5	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	Petrol	\N	\N	23.8601862	90.3208768	\N	\N	\N	completed	2026-07-13 08:01:32.185928+00	0c7540e4-69f1-4d46-98b3-3577b0e15162	36	Kakbo	4760	Card	2026-07-13 09:50:08.47+00	2026-07-14 07:49:37.091+00	\N	2026-07-13 09:50:11.208+00	\N	\N	2026-07-13 17:43:07.457991+00	\N	\N	\N
4acf6998-fb07-424c-8051-657d15db7ee8	a0e1b020-b22d-4317-bef9-94a69c1f2c15	Petrol	\N	\N	23.8653376	90.3243869	\N	\N	\N	cancelled	2026-07-13 17:01:27.419595+00	\N	999	Kakabo savar dhaka	129950	Card	\N	\N	\N	\N	\N	\N	2026-07-13 17:43:07.457991+00	\N	\N	\N
1726d0db-7755-4223-ab6f-9b6694236632	a0e1b020-b22d-4317-bef9-94a69c1f2c15	Petrol	\N	\N	23.8653516	90.3243247	\N	\N	\N	completed	2026-07-13 01:58:25.504259+00	0c7540e4-69f1-4d46-98b3-3577b0e15162	66	Kakabo savar, Dhaka	8660	Cash	2026-07-13 02:00:31.367+00	2026-07-14 07:49:54.891+00	2026-07-14 07:19:58.17+00	2026-07-13 02:01:58.876+00	\N	\N	2026-07-13 17:43:07.457991+00	\N	\N	\N
6337296c-f48a-40c1-a483-71b500781d88	a0e1b020-b22d-4317-bef9-94a69c1f2c15	Petrol	\N	\N	23.8652838	90.3243524	\N	\N	\N	cancelled	2026-07-13 18:02:52.116237+00	\N	10000000	Ashulia, Dattupara 	1300000080	Cash	\N	\N	\N	\N	\N	2026-07-13 18:03:57.087+00	2026-07-13 18:03:57.087+00	\N	\N	\N
f35f1297-fcb0-4f13-96df-fe66e5834bd0	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	Petrol	\N	\N	23.8653937	90.324275	\N	\N	\N	completed	2026-07-09 06:28:06.372104+00	1a3dd5cc-a943-45cd-a925-69df114aa14f	10	Kakabo	1380	Mobile	2026-07-13 18:06:14.92+00	2026-07-13 18:06:27.562+00	\N	2026-07-13 18:06:24.375+00	\N	\N	2026-07-13 17:43:07.457991+00	\N	\N	\N
de11e6d8-4af9-45d7-99dd-6f930fa62de4	a0e1b020-b22d-4317-bef9-94a69c1f2c15	Octane	\N	\N	23.8679896	90.3229338	\N	\N	\N	completed	2026-07-08 12:22:53.313411+00	1a3dd5cc-a943-45cd-a925-69df114aa14f	10	Kabir savar, Dhaka 	1580	Cash	2026-07-13 18:05:46.715+00	2026-07-13 18:06:33.781+00	\N	\N	\N	\N	2026-07-13 17:43:07.457991+00	\N	\N	\N
d8594026-130c-40fc-a5ac-563494ff5005	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	Petrol	\N	\N	23.8652832	90.3243822	\N	\N	\N	completed	2026-07-13 17:47:11.643449+00	1a3dd5cc-a943-45cd-a925-69df114aa14f	69	Kakabo 	9050	Cash	2026-07-13 18:06:36.502+00	2026-07-13 18:06:38.09+00	\N	\N	\N	\N	2026-07-13 17:47:11.643449+00	\N	\N	\N
c688d1e7-14a4-49d6-9c06-7839ad4ecc22	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	Petrol	\N	\N	23.8652666	90.3243562	\N	\N	\N	completed	2026-07-13 17:53:35.948724+00	1a3dd5cc-a943-45cd-a925-69df114aa14f	36	Testing cancell	4760	Card	2026-07-13 18:06:41.125+00	2026-07-13 18:06:42.568+00	\N	\N	\N	\N	2026-07-13 17:53:35.948724+00	\N	\N	\N
c5fa28c7-6f5c-471e-b106-1e108e439513	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	Petrol	\N	\N	23.8601862	90.3208768	\N	\N	\N	completed	2026-07-13 08:09:05.096825+00	1a3dd5cc-a943-45cd-a925-69df114aa14f	109	Kakabo savar dhaka	14250	Cash	2026-07-13 18:06:45.29+00	2026-07-13 18:06:47.065+00	\N	\N	\N	\N	2026-07-13 17:43:07.457991+00	\N	\N	\N
c97a8454-0fa9-49e8-ad98-693e94b2da3d	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	Petrol	\N	\N	23.8653458	90.3243856	\N	\N	\N	completed	2026-07-13 09:14:34.47762+00	1a3dd5cc-a943-45cd-a925-69df114aa14f	36	Kakabo savar dhaka	4760	Card	2026-07-13 18:06:49.938+00	2026-07-13 18:06:51.65+00	\N	\N	\N	\N	2026-07-13 17:43:07.457991+00	\N	\N	\N
eae49589-4fd4-44ad-a619-385ab4d754d2	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	Octane	\N	\N	23.8653281	90.324365	\N	\N	\N	completed	2026-07-14 07:50:31.053704+00	0c7540e4-69f1-4d46-98b3-3577b0e15162	10	Kakabo, Dhaka 	1580	Card	2026-07-14 07:50:50.334+00	2026-07-14 12:12:31.88+00	2026-07-14 07:50:54.693+00	\N	\N	\N	2026-07-14 07:50:31.053704+00	\N	\N	\N
612bd449-affb-49cf-9bc0-fafd789c926b	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	Petrol	\N	\N	23.8653034	90.3243533	\N	\N	\N	cancelled	2026-07-13 18:12:24.924914+00	\N	10	Cancel 	1380	Cash	\N	\N	\N	\N	\N	2026-07-13 18:13:04.961+00	2026-07-13 18:13:04.961+00	\N	\N	\N
d8dbd42d-4a9b-46a8-b2c2-0c87638161d0	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	Petrol	\N	\N	23.8652999	90.3243533	\N	\N	\N	cancelled	2026-07-13 18:15:51.462452+00	\N	10	Test	1380	Cash	\N	\N	\N	\N	\N	2026-07-13 18:16:07.577+00	2026-07-13 18:16:07.577+00	\N	\N	\N
2a3dcf47-f111-4556-adf7-047f9d7a0db6	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	Petrol	\N	\N	23.8653414	90.3242959	\N	\N	\N	completed	2026-07-13 09:55:22.500412+00	1a3dd5cc-a943-45cd-a925-69df114aa14f	10	Hyy	1380	Cash	2026-07-13 18:06:57.716+00	2026-07-14 10:54:39.145+00	2026-07-13 18:07:00.033+00	\N	\N	\N	2026-07-13 17:43:07.457991+00	\N	\N	\N
148c844f-1956-479e-ba3c-068b472855df	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	Petrol	\N	\N	23.8653508	90.3243557	\N	\N	\N	completed	2026-07-14 10:16:48.403408+00	1a3dd5cc-a943-45cd-a925-69df114aa14f	11	Kakabo savar dhaka	1510	Card	2026-07-14 10:17:33.899+00	2026-07-14 12:22:19.451+00	2026-07-14 10:18:01.841+00	2026-07-14 10:17:58.222+00	\N	\N	2026-07-14 10:16:48.403408+00	\N	\N	\N
92f57806-ae51-451f-ba00-f4a101e0fbc8	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	Petrol	\N	\N	23.865348	90.3243431	\N	\N	\N	completed	2026-07-14 10:20:15.299348+00	1a3dd5cc-a943-45cd-a925-69df114aa14f	10	123	1380	Card	2026-07-14 10:20:50.128+00	2026-07-14 12:22:28.627+00	\N	\N	\N	\N	2026-07-14 10:20:15.299348+00	\N	\N	\N
c1d06c4d-c635-477c-9f9f-820051b30626	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	Petrol	\N	\N	23.8653153	90.3243773	\N	\N	\N	completed	2026-07-14 10:30:34.904282+00	1a3dd5cc-a943-45cd-a925-69df114aa14f	10	Dhaka	1380	Cash	2026-07-14 10:31:21.323+00	2026-07-14 12:22:33.138+00	\N	\N	\N	\N	2026-07-14 10:30:34.904282+00	\N	\N	\N
ce85e78c-c1a7-407f-9807-c90d9422c5f1	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	Petrol	\N	\N	23.8653382	90.3243495	\N	\N	\N	completed	2026-07-14 10:53:36.139642+00	1a3dd5cc-a943-45cd-a925-69df114aa14f	10	2	1380	Mobile	2026-07-14 10:54:53.322+00	2026-07-14 12:23:08.598+00	\N	2026-07-14 12:23:06.78+00	\N	\N	2026-07-14 10:53:36.139642+00	\N	\N	\N
6eddd3b9-5aa4-4232-8b00-64220d8ac85e	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	Petrol	\N	\N	23.8653615	90.3243635	\N	\N	\N	completed	2026-07-14 10:04:53.53247+00	1a3dd5cc-a943-45cd-a925-69df114aa14f	100	Kakabo 	13080	Card	2026-07-14 10:06:10.561+00	2026-07-14 12:24:57.522+00	2026-07-14 12:21:15.478+00	2026-07-14 12:21:14.101+00	\N	\N	2026-07-14 10:04:53.53247+00	\N	\N	\N
f23e46a4-16ee-4401-8489-3eb62a7ec055	79241b9e-03fe-4877-898e-433446dfa5cf	Petrol	\N	\N	23.8653303	90.3243386	\N	\N	\N	completed	2026-07-14 12:09:57.435714+00	1a3dd5cc-a943-45cd-a925-69df114aa14f	10	Kakabo Road, Birulia, Dhaka Division	1380	Mobile	2026-07-14 12:21:17.699+00	2026-07-14 12:25:42.816+00	\N	\N	\N	\N	2026-07-14 12:09:57.435714+00	\N	\N	\N
99d65f45-59c4-489b-96ed-5760c7426a87	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	Petrol	\N	\N	23.861301	90.3211706	\N	\N	\N	completed	2026-07-14 09:04:09.077135+00	0c7540e4-69f1-4d46-98b3-3577b0e15162	33	Kakabo savar, Dhaka 	4370	Cash	2026-07-14 09:11:18.694+00	2026-07-14 12:29:53.475+00	\N	\N	\N	\N	2026-07-14 09:04:09.077135+00	\N	\N	\N
3a121984-a396-4e29-a6df-358f84e1573b	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	Petrol	\N	\N	23.8653598	90.3243462	\N	\N	\N	completed	2026-07-14 09:36:16.26107+00	0c7540e4-69f1-4d46-98b3-3577b0e15162	100	Testing 	13080	Cash	2026-07-14 09:36:57.33+00	2026-07-14 12:30:07.396+00	\N	2026-07-14 09:37:02.615+00	\N	\N	2026-07-14 09:36:16.26107+00	\N	\N	\N
8d0664c8-37fb-4457-8518-93333501c249	a0e1b020-b22d-4317-bef9-94a69c1f2c15	Petrol	\N	\N	23.8654158	90.3243368	\N	\N	\N	completed	2026-07-14 10:00:10.84102+00	0c7540e4-69f1-4d46-98b3-3577b0e15162	22	Kakabo,Ashulia 	2940	Cash	2026-07-14 10:00:41.608+00	2026-07-14 12:31:40.853+00	\N	\N	\N	\N	2026-07-14 10:00:10.84102+00	\N	\N	\N
38bc8bca-cf74-43e4-bbf1-6873b481b8a4	a0e1b020-b22d-4317-bef9-94a69c1f2c15	Petrol	\N	\N	23.8652873	90.3243749	\N	\N	\N	completed	2026-07-16 07:46:39.615999+00	0c7540e4-69f1-4d46-98b3-3577b0e15162	10	Kakabo Road, Birulia, Dhaka Division	1380	Cash	2026-07-16 07:46:38.301+00	2026-07-16 08:02:28.854+00	2026-07-16 08:02:03.771+00	2026-07-16 08:02:08.871+00	\N	\N	2026-07-16 07:46:39.615999+00	\N	\N	\N
e868c294-f1e3-4fe1-899c-49f1ceeb6294	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	Petrol	\N	\N	23.8652995	90.324415	\N	\N	\N	completed	2026-07-16 10:08:28.438909+00	0c7540e4-69f1-4d46-98b3-3577b0e15162	10	Kakabo Road, Birulia, Dhaka Division	1380	Cash	2026-07-16 10:14:29.434+00	2026-07-16 10:20:17.699+00	\N	2026-07-16 10:14:39.382+00	\N	\N	2026-07-16 10:08:28.438909+00	\N	\N	\N
c4c1a8cb-d67a-416f-9c21-c5faac5beea5	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	Petrol	\N	\N	23.865307	90.3243712	\N	\N	\N	completed	2026-07-16 10:36:07.784401+00	0c7540e4-69f1-4d46-98b3-3577b0e15162	10	Kakabo Road, Birulia, Dhaka Division	1380	Cash	2026-07-16 10:36:02.958+00	2026-07-16 10:40:09.765+00	2026-07-16 10:40:08.716+00	2026-07-16 10:40:07.165+00	\N	\N	2026-07-16 10:36:07.784401+00	\N	\N	\N
31725e5f-8eef-48f3-8dab-8ee9683b431a	a0e1b020-b22d-4317-bef9-94a69c1f2c15	Diesel	\N	\N	23.8653022	90.3243615	\N	\N	\N	completed	2026-07-16 08:02:32.156522+00	0c7540e4-69f1-4d46-98b3-3577b0e15162	1006	Kakabo Road, Birulia, Dhaka Division	120800	Cash	2026-07-16 08:02:36.076+00	2026-07-16 08:02:54.839+00	\N	2026-07-16 08:02:45.571+00	\N	\N	2026-07-16 08:02:32.156522+00	\N	\N	\N
8c5e7210-f66b-43a2-8bd8-0f2bf9db3589	a0e1b020-b22d-4317-bef9-94a69c1f2c15	Petrol	\N	\N	23.8698516	90.3214645	\N	\N	\N	completed	2026-07-14 09:49:37.639254+00	1a3dd5cc-a943-45cd-a925-69df114aa14f	109	Kakbo savar dhaka	14250	Cash	2026-07-14 09:50:13.364+00	2026-07-14 10:54:46.499+00	2026-07-14 09:50:51.863+00	2026-07-14 09:50:29.689+00	\N	\N	2026-07-14 09:49:37.639254+00	\N	\N	\N
b8efbe23-ff34-4c6f-ab76-60ccf1c80d25	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	Petrol	\N	\N	23.865313	90.3243671	\N	\N	\N	completed	2026-07-14 10:41:33.675478+00	0c7540e4-69f1-4d46-98b3-3577b0e15162	1	Dhaka 	210	Cash	2026-07-14 10:42:14.832+00	2026-07-14 12:31:45.077+00	\N	\N	\N	\N	2026-07-14 10:41:33.675478+00	\N	\N	\N
1d565a0d-e899-46e0-893c-7d510d38be8f	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	Petrol	\N	\N	23.8653477	90.3243334	\N	\N	\N	completed	2026-07-14 08:01:33.376899+00	ea1e230b-cfd2-4ec8-9baa-4fa23a992dca	100	Kakabo, savar, Dhaka 	13080	Cash	2026-07-14 10:07:20.28+00	2026-07-14 10:55:56.43+00	\N	\N	\N	\N	2026-07-14 08:01:33.376899+00	\N	\N	\N
f92b1bf5-5a32-4d8a-b220-0d55d1c968f3	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	Petrol	\N	\N	23.8653196	90.3243575	\N	\N	\N	completed	2026-07-14 12:02:54.163256+00	0c7540e4-69f1-4d46-98b3-3577b0e15162	1000	Kakabo Road, Birulia, Dhaka Division	130080	Cash	2026-07-14 12:14:49.048+00	2026-07-14 12:14:53.732+00	\N	\N	\N	\N	2026-07-14 12:02:54.163256+00	\N	\N	\N
73d1e224-6355-4085-8fbd-3d430fe49787	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	Petrol	\N	\N	23.8653303	90.3243008	\N	\N	\N	completed	2026-07-14 08:00:02.610987+00	1a3dd5cc-a943-45cd-a925-69df114aa14f	66	Kakabo savar Dhaka	8660	Card	2026-07-14 10:07:57.983+00	2026-07-14 12:22:01.361+00	2026-07-14 10:10:53.432+00	2026-07-14 10:08:01.548+00	\N	\N	2026-07-14 08:00:02.610987+00	\N	\N	\N
021fd315-9e88-4bec-a9b6-1756179b1053	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	Petrol	\N	\N	23.8652902	90.3243723	\N	\N	\N	cancelled	2026-07-16 07:39:25.744372+00	ea1e230b-cfd2-4ec8-9baa-4fa23a992dca	69	Kakabo Road, Birulia, Dhaka Division	9050	Card	\N	\N	\N	\N	\N	2026-07-16 07:42:31.878+00	2026-07-16 07:42:31.878+00	\N	\N	\N
ff2b2181-7703-4f1d-9c8d-3f9b171b8cea	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	Petrol	\N	\N	23.8653089	90.3243242	\N	\N	\N	completed	2026-07-16 10:20:15.025966+00	0c7540e4-69f1-4d46-98b3-3577b0e15162	10	Kakabo Road, Birulia, Dhaka Division	1380	Cash	2026-07-16 10:20:25.904+00	2026-07-16 10:35:45.749+00	2026-07-16 10:20:32.451+00	2026-07-16 10:35:43.382+00	\N	\N	2026-07-16 10:20:15.025966+00	\N	\N	\N
9e1ea958-9900-4fa9-9b10-57497e6a27ff	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	Petrol	\N	\N	23.8653178	90.3243685	\N	\N	\N	completed	2026-07-16 15:21:40.651786+00	1a3dd5cc-a943-45cd-a925-69df114aa14f	10	Kakabo Road, Birulia, Dhaka Division	1380	Cash	2026-07-16 15:26:39.398+00	2026-07-16 15:31:27.532+00	\N	2026-07-16 15:27:25.366+00	\N	\N	2026-07-16 15:21:40.651786+00	\N	\N	\N
c6163aad-8e1c-44f8-9942-1791bd3f949b	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	Petrol	\N	\N	23.8652939	90.3243146	\N	\N	\N	completed	2026-07-16 07:42:48.300515+00	0c7540e4-69f1-4d46-98b3-3577b0e15162	10	Kakabo Road, Birulia, Dhaka Division	1380	Cash	2026-07-16 07:45:09.016+00	2026-07-16 07:45:36.954+00	2026-07-16 07:45:15.838+00	2026-07-16 07:45:33.887+00	\N	\N	2026-07-16 07:42:48.300515+00	\N	\N	\N
db433805-eeff-41fa-b724-aedfa8a9099a	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	Petrol	\N	\N	23.8652819	90.3243441	\N	\N	\N	completed	2026-07-16 10:40:29.267136+00	0c7540e4-69f1-4d46-98b3-3577b0e15162	10	Kakabo Road, Birulia, Dhaka Division	1380	Cash	2026-07-16 10:40:22.567+00	2026-07-16 11:06:02.465+00	\N	2026-07-16 11:02:45.949+00	\N	\N	2026-07-16 10:40:29.267136+00	\N	\N	\N
377759a5-9430-4c8f-a1e8-1ce18d7c9eed	a0e1b020-b22d-4317-bef9-94a69c1f2c15	Petrol	\N	\N	23.8652842	90.3243502	\N	\N	\N	completed	2026-07-16 08:11:08.559095+00	0c7540e4-69f1-4d46-98b3-3577b0e15162	7	Kakabo Road, Birulia, Dhaka Division	990	Cash	2026-07-16 08:11:15.094+00	2026-07-16 10:14:17.715+00	2026-07-16 10:13:58.883+00	2026-07-16 10:13:41.099+00	\N	\N	2026-07-16 08:11:08.559095+00	\N	\N	\N
2030a100-5797-4a69-a884-939f714a0110	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	Petrol	\N	\N	23.8653412	90.3243168	\N	\N	\N	completed	2026-07-16 13:05:36.116391+00	ea1e230b-cfd2-4ec8-9baa-4fa23a992dca	10	Kakabo Road, Birulia, Dhaka Division	1380	Card	2026-07-16 13:16:11.954+00	2026-07-16 13:18:16.723+00	2026-07-16 13:16:21.439+00	2026-07-16 13:18:07.54+00	\N	\N	2026-07-16 13:05:36.116391+00	\N	\N	\N
b32d8687-5a72-4805-8349-b1dca5b8c1e7	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	Petrol	\N	\N	23.8653085	90.3244144	\N	\N	\N	completed	2026-07-16 15:28:56.330726+00	1a3dd5cc-a943-45cd-a925-69df114aa14f	10	Kakabo Road, Birulia, Dhaka Division	1380	Cash	2026-07-16 15:31:32.291+00	2026-07-16 15:37:38.132+00	\N	\N	\N	\N	2026-07-16 15:28:56.330726+00	\N	\N	\N
36194a70-01c5-4722-937c-7de6c92acba5	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	Diesel	\N	\N	23.8652959	90.3243443	\N	\N	\N	completed	2026-07-16 11:07:15.674386+00	0c7540e4-69f1-4d46-98b3-3577b0e15162	10	Kakabo Road, Birulia, Dhaka Division	1280	Mobile	2026-07-16 11:08:08.65+00	2026-07-16 12:53:21.757+00	\N	\N	\N	\N	2026-07-16 11:07:15.674386+00	\N	\N	\N
1dce265b-5d5a-49ec-9bc8-245f29b550c7	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	Petrol	\N	\N	23.8653027	90.3243418	\N	\N	\N	completed	2026-07-16 13:03:32.373742+00	ea1e230b-cfd2-4ec8-9baa-4fa23a992dca	253	Kakabo Road, Birulia, Dhaka Division	32970	Card	2026-07-16 13:04:06.652+00	2026-07-16 13:04:33.023+00	2026-07-16 13:04:25.393+00	2026-07-16 13:04:30.64+00	\N	\N	2026-07-16 13:03:32.373742+00	\N	\N	\N
5251c106-de63-4f85-a1e1-10db7fe935c1	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	Petrol	\N	\N	23.8653258	90.3243646	\N	\N	\N	completed	2026-07-16 15:11:45.037356+00	1a3dd5cc-a943-45cd-a925-69df114aa14f	10	Kakabo Road, Birulia, Dhaka Division	1380	Mobile	2026-07-16 15:12:25.773+00	2026-07-16 15:13:50.333+00	2026-07-16 15:13:38.567+00	2026-07-16 15:13:46.833+00	\N	\N	2026-07-16 15:11:45.037356+00	\N	\N	\N
c57a76cd-13e2-4a39-bd17-16e41b3c876c	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	Petrol	\N	\N	23.865288	90.324357	\N	\N	\N	completed	2026-07-16 15:03:10.882575+00	1a3dd5cc-a943-45cd-a925-69df114aa14f	10	Kakabo Road, Birulia, Dhaka Division	1380	Cash	2026-07-16 15:10:57.492+00	2026-07-16 15:11:17.02+00	\N	\N	\N	\N	2026-07-16 15:03:10.882575+00	\N	\N	\N
0b08edaa-2f68-45fb-baf1-6555d8a7331e	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	Petrol	\N	\N	23.8653597	90.324443	\N	\N	\N	cancelled	2026-07-16 16:14:47.240782+00	0c7540e4-69f1-4d46-98b3-3577b0e15162	10	Kakabo Road, Birulia, Dhaka Division	1380	Cash	\N	\N	\N	\N	\N	2026-07-16 16:19:21.048+00	2026-07-16 16:19:21.048+00	\N	\N	\N
979e9dfa-162d-4cef-8b9a-e5897ec4bf1d	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	Petrol	\N	\N	23.8653597	90.324443	\N	\N	\N	cancelled	2026-07-16 16:14:48.004041+00	0c7540e4-69f1-4d46-98b3-3577b0e15162	10	Kakabo Road, Birulia, Dhaka Division	1380	Cash	\N	\N	\N	\N	\N	2026-07-16 16:19:13.259+00	2026-07-16 16:19:13.259+00	\N	\N	\N
6c546134-143d-4e25-831f-ba49d990ca12	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	Petrol	\N	\N	23.8653719	90.3243902	\N	\N	\N	completed	2026-07-16 16:21:03.252933+00	144d9b83-f3be-448f-b678-c711c76e513c	10	Kakabo Road, Birulia, Dhaka Division	1380	Cash	2026-07-16 16:23:18.443+00	2026-07-16 16:23:21.677+00	\N	\N	\N	\N	2026-07-16 16:21:03.252933+00	\N	\N	\N
79c8dcdc-71be-4ec8-8d27-eaaf9822b34d	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	Petrol	\N	\N	23.8653914	90.3243926	\N	\N	\N	completed	2026-07-16 16:22:43.947748+00	144d9b83-f3be-448f-b678-c711c76e513c	10	Kakabo Road, Birulia, Dhaka Division	1380	Cash	2026-07-16 16:23:24.453+00	2026-07-16 16:24:44.587+00	2026-07-16 16:24:41.085+00	2026-07-16 16:24:43.376+00	\N	\N	2026-07-16 16:22:43.947748+00	\N	\N	\N
415e1fd1-19e5-49b7-b200-703e0ccf3308	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	Petrol	\N	\N	23.8652856	90.3243884	\N	\N	\N	completed	2026-07-16 15:36:02.656326+00	1a3dd5cc-a943-45cd-a925-69df114aa14f	10	Kakabo Road, Birulia, Dhaka Division	1380	Cash	2026-07-16 15:37:42.862+00	2026-07-16 19:02:19.909+00	2026-07-16 15:37:49.366+00	2026-07-16 15:37:54.899+00	\N	\N	2026-07-16 15:36:02.656326+00	\N	\N	\N
49f6c85a-374f-4fe2-bebb-f6f60eebce0b	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	Petrol	\N	\N	23.8652988	90.3243852	\N	\N	\N	completed	2026-07-16 12:52:27.128507+00	0c7540e4-69f1-4d46-98b3-3577b0e15162	69	Kakabo Road, Birulia, Dhaka Division	9050	Cash	2026-07-16 12:53:36.746+00	2026-07-16 20:22:53.075+00	2026-07-16 20:22:47.092+00	2026-07-16 20:22:43.192+00	\N	\N	2026-07-16 12:52:27.128507+00	\N	\N	\N
5da2f95c-7408-48b4-a154-f2c8b78c2fb5	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	Petrol	\N	\N	23.8653168	90.3243505	\N	\N	\N	cancelled	2026-07-23 16:18:21.110539+00	\N	10	Kakabo Road, Birulia, Dhaka Division	1380	Cash	\N	\N	\N	\N	\N	2026-07-23 17:11:39.606+00	2026-07-23 17:11:39.606+00	\N	\N	\N
e8d96687-df6b-47f8-848a-ae60cef7c677	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	Petrol	\N	\N	23.8653473	90.3242996	\N	\N	\N	completed	2026-07-17 06:10:43.975848+00	0c7540e4-69f1-4d46-98b3-3577b0e15162	10	Kakabo Road, Birulia, Dhaka Division	1380	Cash	2026-07-17 06:20:57.346+00	2026-07-17 10:41:05.166+00	2026-07-17 06:21:06.695+00	2026-07-17 06:21:30.81+00	\N	\N	2026-07-17 06:10:43.975848+00	\N	\N	\N
aba23cdc-e7df-4d68-86e8-e5ee5768f247	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	Octane	\N	\N	23.8694307	90.3214536	\N	\N	\N	completed	2026-07-19 05:05:13.728092+00	1a3dd5cc-a943-45cd-a925-69df114aa14f	5	Dhaka Division	830	Mobile	2026-07-19 05:05:49.034+00	2026-07-19 06:23:57.25+00	\N	\N	\N	\N	2026-07-19 05:05:13.728092+00	\N	\N	\N
ac8e5ed7-48a5-4b24-ab15-c58e75485d1a	a0e1b020-b22d-4317-bef9-94a69c1f2c15	Petrol	\N	\N	23.8646435	90.3229338	\N	\N	\N	completed	2026-07-17 11:11:48.545948+00	fed16cd3-2673-4355-ac94-a3289224ab6d	10	Savar, Dhaka Division	1380	Cash	2026-07-17 12:14:20.387+00	2026-07-17 12:16:32.095+00	\N	\N	\N	\N	2026-07-17 11:11:48.545948+00	\N	\N	\N
d510d9c8-79bb-4467-a5e0-d04650fe9a3a	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	Octane	\N	\N	23.860186	90.3220269	\N	\N	\N	completed	2026-07-18 11:01:51.453589+00	fed16cd3-2673-4355-ac94-a3289224ab6d	10	Dhaka Division	1580	Cash	2026-07-18 11:12:54.126+00	2026-07-23 21:48:53.553+00	\N	\N	\N	\N	2026-07-23 21:48:53.553+00	\N	\N	2026-07-23 21:48:17.841+00
726751bf-10e1-465d-ba05-2de3da78f415	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	Petrol	\N	\N	23.8652962	90.3243361	\N	\N	\N	completed	2026-07-16 19:06:36.514974+00	0c7540e4-69f1-4d46-98b3-3577b0e15162	10	Kakabo Road, Birulia, Dhaka Division	1380	Cash	2026-07-16 19:07:21.785+00	2026-07-16 19:29:12.959+00	2026-07-16 19:29:12.325+00	2026-07-16 19:29:10.808+00	\N	\N	2026-07-16 19:06:36.514974+00	\N	\N	\N
24264b2a-c1c0-45cc-9015-a7db537f69b6	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	Diesel	\N	\N	23.8653385	90.3241838	\N	\N	\N	completed	2026-07-18 11:02:16.077131+00	0c7540e4-69f1-4d46-98b3-3577b0e15162	10	Kakabo Road, Birulia, Dhaka Division	1280	Cash	2026-07-18 11:03:59.932+00	2026-07-18 16:33:00.889+00	\N	2026-07-18 16:30:52.693+00	\N	\N	2026-07-18 11:02:16.077131+00	\N	\N	\N
1c90c86a-b11c-4987-b4c1-20860e84b4c9	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	Petrol	\N	\N	23.861301	90.3211706	\N	\N	\N	completed	2026-07-17 12:15:42.774614+00	fed16cd3-2673-4355-ac94-a3289224ab6d	10	Akran, Dhaka Division	1380	Card	2026-07-17 18:24:12.733+00	2026-07-17 18:24:30.545+00	\N	2026-07-17 18:24:17.199+00	\N	\N	2026-07-17 12:15:42.774614+00	\N	\N	\N
08f1d922-466a-49d9-8b2b-900b24e02e0e	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	Petrol	\N	\N	23.8653105	90.3242624	\N	\N	\N	completed	2026-07-16 20:23:11.361958+00	0c7540e4-69f1-4d46-98b3-3577b0e15162	10	Kakabo Road, Birulia, Dhaka Division	1380	Cash	2026-07-16 20:23:38.354+00	2026-07-16 20:23:48.459+00	2026-07-16 20:23:43.241+00	2026-07-16 20:23:45.708+00	\N	\N	2026-07-16 20:23:11.361958+00	\N	\N	\N
9bc4529f-b826-4cc5-8add-570a668fbbbc	a0e1b020-b22d-4317-bef9-94a69c1f2c15	Petrol	\N	\N	23.8627826	90.3238154	\N	\N	\N	accepted	2026-07-18 10:37:35.812953+00	0c7540e4-69f1-4d46-98b3-3577b0e15162	10	Dhaka, Dhaka Division	1380	Cash	2026-07-18 17:20:56.45+00	\N	\N	\N	\N	\N	2026-07-18 10:37:35.812953+00	\N	\N	\N
daa06a51-a119-4d99-83cf-f48f10f1f331	a0e1b020-b22d-4317-bef9-94a69c1f2c15	Diesel	\N	\N	23.8672671	90.3126498	\N	\N	\N	delivering	2026-07-18 10:39:14.975809+00	0c7540e4-69f1-4d46-98b3-3577b0e15162	33	Ashulia Model Town, Dhaka Division	4040	Card	2026-07-18 17:21:10.879+00	2026-07-18 17:21:20.001+00	2026-07-18 17:21:22.746+00	2026-07-18 17:21:21.71+00	\N	\N	2026-07-18 10:39:14.975809+00	\N	\N	\N
657c49be-c3e8-4bb0-9991-863fc6434ba5	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	Petrol	\N	\N	23.8653116	90.3243425	\N	\N	\N	completed	2026-07-18 17:27:20.064715+00	1a3dd5cc-a943-45cd-a925-69df114aa14f	10	Kakabo Road, Birulia, Dhaka Division	1380	Cash	2026-07-18 17:45:00.846+00	2026-07-18 17:45:03.541+00	\N	\N	\N	\N	2026-07-18 17:27:20.064715+00	\N	\N	\N
e95ca99a-9ca0-482b-ba01-8b964d88ed20	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	Petrol	\N	\N	23.8653776	90.3243535	\N	\N	\N	completed	2026-07-19 06:25:15.987742+00	1a3dd5cc-a943-45cd-a925-69df114aa14f	10	Kakabo Road, Birulia, Dhaka Division	1380	Card	2026-07-19 07:25:32.917+00	2026-07-19 07:59:51.976+00	2026-07-19 07:32:50.369+00	2026-07-19 07:59:23.211+00	\N	\N	2026-07-19 06:25:15.987742+00	\N	\N	\N
223d3671-f4ed-4118-bc5d-8fb7990a6d51	a0e1b020-b22d-4317-bef9-94a69c1f2c15	Petrol	\N	\N	23.8652666	90.3241025	\N	\N	\N	cancelled	2026-07-18 10:16:54.01518+00	144d9b83-f3be-448f-b678-c711c76e513c	10	Kakabo Road, Birulia, Dhaka Division	1380	Cash	\N	\N	\N	\N	\N	2026-07-18 10:34:26.877+00	2026-07-18 10:34:26.877+00	\N	\N	\N
976515eb-6fb0-4852-8a9a-82c3c63b6468	a0e1b020-b22d-4317-bef9-94a69c1f2c15	Petrol	\N	\N	23.8653852	90.3238154	\N	\N	\N	completed	2026-07-18 10:14:22.13157+00	0c7540e4-69f1-4d46-98b3-3577b0e15162	10	Kakabo Road, Birulia, Dhaka Division	1380	Cash	2026-07-18 10:14:08.282+00	2026-07-18 10:36:01.258+00	2026-07-18 10:21:01.005+00	2026-07-18 10:21:03.937+00	\N	\N	2026-07-18 10:14:22.13157+00	\N	\N	\N
88af82e8-de3c-404f-8ff5-6b5cdf264615	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	Petrol	\N	\N	23.8652906	90.3242221	\N	\N	\N	completed	2026-07-16 20:24:18.312062+00	0c7540e4-69f1-4d46-98b3-3577b0e15162	10	Kakabo Road, Birulia, Dhaka Division	1380	Cash	2026-07-16 20:24:22.131+00	2026-07-17 10:35:54.389+00	2026-07-17 10:35:52.558+00	2026-07-17 10:35:49.296+00	\N	\N	2026-07-16 20:24:18.312062+00	\N	\N	\N
98dc87a4-6d98-4d8e-92fb-43762621c910	a0e1b020-b22d-4317-bef9-94a69c1f2c15	Octane	\N	\N	23.8653132	90.3242246	\N	\N	\N	accepted	2026-07-19 10:58:59.542289+00	0c7540e4-69f1-4d46-98b3-3577b0e15162	33	Kakabo Road, Birulia, Dhaka Division	5030	Cash	2026-07-19 11:31:41.692+00	\N	\N	\N	\N	\N	2026-07-19 10:58:59.542289+00	\N	\N	\N
ff0a78c7-80ff-494f-b4f9-6de67247ad29	a0e1b020-b22d-4317-bef9-94a69c1f2c15	Petrol	\N	\N	23.8620409	90.3229338	\N	\N	\N	completed	2026-07-18 10:41:49.770445+00	1a3dd5cc-a943-45cd-a925-69df114aa14f	10	Dhaka, Dhaka Division	1380	Cash	2026-07-18 17:25:18.435+00	2026-07-18 18:50:22.082+00	\N	\N	\N	\N	2026-07-18 10:41:49.770445+00	\N	\N	\N
320a98ab-2904-4268-872a-abfc428a341b	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	Petrol	\N	\N	23.8653763	90.3243509	\N	\N	\N	completed	2026-07-19 06:25:22.613265+00	1a3dd5cc-a943-45cd-a925-69df114aa14f	10	Kakabo Road, Birulia, Dhaka Division	1380	Mobile	2026-07-19 09:53:23.37+00	2026-07-19 11:47:11.925+00	\N	2026-07-19 11:47:07.505+00	\N	\N	2026-07-19 06:25:22.613265+00	\N	\N	\N
e134de56-6fd7-4c0e-9159-2759721cf8b7	a0e1b020-b22d-4317-bef9-94a69c1f2c15	Petrol	\N	\N	23.8694798	90.3214645	\N	\N	\N	completed	2026-07-21 16:58:24.631412+00	1a3dd5cc-a943-45cd-a925-69df114aa14f	10	Dhaka Division	1380	Cash	2026-07-21 18:08:29.935+00	2026-07-21 18:32:18.112+00	\N	\N	\N	\N	2026-07-21 16:58:24.631412+00	\N	\N	\N
d921e9ba-deb2-4326-a294-1bcb783fbe0c	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	Diesel	\N	\N	23.8653091	90.3243348	\N	\N	\N	completed	2026-07-18 18:55:40.174692+00	1a3dd5cc-a943-45cd-a925-69df114aa14f	10	Kakabo Road, Birulia, Dhaka Division	1280	Mobile	2026-07-18 18:56:35.691+00	2026-07-18 19:15:28.946+00	2026-07-18 19:14:40.693+00	2026-07-18 19:14:44.611+00	\N	\N	2026-07-18 18:55:40.174692+00	\N	\N	\N
88e713ce-d981-4337-b946-067fe898a034	a0e1b020-b22d-4317-bef9-94a69c1f2c15	Petrol	\N	\N	23.8653351	90.3243728	\N	\N	\N	completed	2026-07-20 06:17:31.455851+00	1a3dd5cc-a943-45cd-a925-69df114aa14f	69	Kakabo Road, Birulia, Dhaka Division	9050	Card	2026-07-20 06:27:54.538+00	2026-07-24 04:35:04.98+00	2026-07-20 07:24:31.771+00	2026-07-21 18:17:32.847+00	\N	\N	2026-07-24 04:35:04.98+00	\N	\N	\N
1dc96e56-b304-4f08-ad10-9014a19f943d	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	Octane	\N	\N	23.8653088	90.3243428	\N	\N	\N	completed	2026-07-20 10:52:23.510733+00	1a3dd5cc-a943-45cd-a925-69df114aa14f	10	Kakabo Road, Birulia, Dhaka Division	1580	Mobile	2026-07-20 10:59:08.526+00	2026-07-20 10:59:20.892+00	\N	\N	\N	\N	2026-07-20 10:52:23.510733+00	\N	\N	\N
66560d9b-4bcf-461d-ba7b-dc115d302de1	a0e1b020-b22d-4317-bef9-94a69c1f2c15	Petrol	\N	\N	23.865355	90.3243233	\N	\N	\N	waiting_confirmation	2026-07-18 10:34:37.682582+00	fed16cd3-2673-4355-ac94-a3289224ab6d	10	Kakabo Road, Birulia, Dhaka Division	1380	Cash	2026-07-18 16:41:08.351+00	\N	2026-07-24 04:42:14.368+00	2026-07-24 04:42:18.11+00	\N	\N	2026-07-18 10:34:37.682582+00	\N	\N	2026-07-24 04:42:22.739+00
c90c3908-9cc6-4abf-83e7-84a2c9dc1d0c	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	Petrol	\N	\N	23.8653795	90.3243544	\N	\N	\N	completed	2026-07-19 06:25:09.671102+00	1a3dd5cc-a943-45cd-a925-69df114aa14f	10	Kakabo Road, Birulia, Dhaka Division	1380	Cash	2026-07-19 06:26:07.735+00	2026-07-19 07:25:29.765+00	2026-07-19 07:25:26.57+00	2026-07-19 07:24:27.75+00	\N	\N	2026-07-19 06:25:09.671102+00	\N	\N	\N
cb735a42-2c0c-4c1d-8e0d-77bcac1e5879	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	Petrol	\N	\N	23.8653546	90.3243434	\N	\N	\N	completed	2026-07-23 16:34:09.040205+00	1a3dd5cc-a943-45cd-a925-69df114aa14f	10	Kakabo Road, Birulia, Dhaka Division	1380	Cash	2026-07-23 17:24:08.39+00	2026-07-23 21:30:52.138+00	\N	\N	\N	\N	2026-07-23 21:30:52.138+00	\N	\N	\N
6155599e-c830-4a0c-bf28-d2afad00b965	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	Petrol	\N	\N	23.8653094	90.324357	\N	\N	\N	completed	2026-07-20 10:55:02.300035+00	1a3dd5cc-a943-45cd-a925-69df114aa14f	10	Kakabo Road, Birulia, Dhaka Division	1380	Cash	2026-07-20 17:47:40.041+00	2026-07-23 21:44:08.141+00	\N	\N	\N	\N	2026-07-23 21:44:08.141+00	\N	\N	\N
38ffdf25-ce01-407b-9ad1-97992938ff81	a0e1b020-b22d-4317-bef9-94a69c1f2c15	Petrol	\N	\N	23.86533	90.3243267	\N	\N	\N	completed	2026-07-20 18:12:43.101377+00	1a3dd5cc-a943-45cd-a925-69df114aa14f	10	Kakabo Road, Birulia, Dhaka Division	1380	Cash	2026-07-20 18:22:48.701+00	2026-07-23 20:22:02.658+00	2026-07-22 15:41:31.216+00	2026-07-22 15:41:35.988+00	\N	\N	2026-07-20 18:12:43.101377+00	\N	\N	\N
a4badeea-c790-45fb-a512-d9d910cce10b	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	Petrol	\N	\N	23.8653081	90.3243798	\N	\N	\N	completed	2026-07-21 16:17:24.310742+00	1a3dd5cc-a943-45cd-a925-69df114aa14f	10	Kakabo Road, Birulia, Dhaka Division	1380	Cash	2026-07-21 16:18:34.937+00	2026-07-22 15:27:08.835+00	2026-07-22 15:27:05.183+00	2026-07-22 15:27:02.927+00	\N	\N	2026-07-21 16:17:24.310742+00	\N	\N	\N
f6f429f6-44fe-4cef-981d-1ab021aaef1c	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	Petrol	\N	\N	23.8694798	90.3214645	\N	\N	\N	completed	2026-07-23 17:05:34.083303+00	1a3dd5cc-a943-45cd-a925-69df114aa14f	10	Dhaka Division	1380	Cash	2026-07-23 17:53:03.272+00	2026-07-23 20:21:43.081+00	\N	\N	\N	\N	2026-07-23 17:05:34.083303+00	\N	\N	\N
9c12133e-6d21-4ba5-bff4-0f7d49efc763	a0e1b020-b22d-4317-bef9-94a69c1f2c15	Petrol	\N	\N	23.8652767	90.3244017	\N	\N	\N	completed	2026-07-20 17:53:19.426964+00	1a3dd5cc-a943-45cd-a925-69df114aa14f	10	Kakabo Road, Birulia, Dhaka Division	1380	Cash	2026-07-20 17:55:52.708+00	2026-07-23 20:22:28.507+00	\N	2026-07-21 18:17:40.984+00	\N	\N	2026-07-20 17:53:19.426964+00	\N	\N	\N
92bf7cbf-55d6-4e63-83f9-643165bf60b8	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	Petrol	\N	\N	23.8694798	90.3214645	\N	\N	\N	completed	2026-07-23 17:05:35.983322+00	1a3dd5cc-a943-45cd-a925-69df114aa14f	10	Dhaka Division	1380	Cash	2026-07-23 17:24:38.598+00	2026-07-23 20:22:38.076+00	\N	\N	\N	\N	2026-07-23 17:05:35.983322+00	\N	\N	\N
86fb2bc1-79bd-459a-9d6b-ad2bec40d8a9	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	Petrol	\N	\N	23.8652965	90.3243349	\N	\N	\N	completed	2026-07-21 18:12:30.239001+00	1a3dd5cc-a943-45cd-a925-69df114aa14f	10	Kakabo Road, Birulia, Dhaka Division	1380	Cash	2026-07-21 18:15:20.932+00	2026-07-21 18:32:05.638+00	\N	\N	\N	\N	2026-07-21 18:12:30.239001+00	\N	\N	\N
7f0b9f42-631d-4f87-9b66-202e7bf88579	a0e1b020-b22d-4317-bef9-94a69c1f2c15	Petrol	\N	\N	23.8620354	90.3255786	\N	\N	\N	completed	2026-07-20 17:23:24.939256+00	1a3dd5cc-a943-45cd-a925-69df114aa14f	66	Dhaka Division	8660	Cash	2026-07-20 17:23:42.288+00	2026-07-24 04:33:02.072+00	\N	\N	\N	\N	2026-07-24 04:33:02.072+00	\N	\N	\N
b5d79f84-14df-4825-922c-83ce2c05362d	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	Octane	\N	\N	23.8653346	90.324322	\N	\N	\N	completed	2026-07-23 16:57:59.206838+00	1a3dd5cc-a943-45cd-a925-69df114aa14f	69	Kakabo Road, Birulia, Dhaka Division	10430	Mobile	2026-07-23 17:50:35.686+00	2026-07-23 21:28:11.656+00	\N	2026-07-23 17:50:56.919+00	\N	\N	2026-07-23 21:28:11.656+00	2026-07-23 16:57:58.817+00	\N	\N
9b715103-fc5a-4833-82c0-63e25e406292	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	Petrol	\N	\N	23.865298	90.3243659	\N	\N	\N	completed	2026-07-22 16:00:19.429892+00	1a3dd5cc-a943-45cd-a925-69df114aa14f	10	Kakabo Road, Birulia, Dhaka Division	1380	Cash	2026-07-22 16:18:00.707+00	2026-07-23 21:31:38.656+00	\N	\N	\N	\N	2026-07-23 21:31:38.656+00	\N	\N	\N
d99c21d0-509f-4fdd-a241-8f9597f05a2e	a0e1b020-b22d-4317-bef9-94a69c1f2c15	Petrol	\N	\N	23.8653427	90.324365	\N	\N	\N	completed	2026-07-20 10:56:20.177249+00	1a3dd5cc-a943-45cd-a925-69df114aa14f	10	Kakabo Road, Birulia, Dhaka Division	1380	Cash	2026-07-20 10:56:58.134+00	2026-07-24 04:35:03.863+00	2026-07-23 16:36:27.714+00	2026-07-23 16:36:30.839+00	\N	\N	2026-07-24 04:35:03.863+00	\N	\N	\N
8f9838c5-cf51-4627-bbb0-ed5ec229d82e	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	Octane	\N	\N	23.8694798	90.3214645	\N	\N	\N	cancelled	2026-07-23 17:07:28.63185+00	\N	10	Dhaka Division	1580	Card	\N	\N	\N	\N	\N	2026-07-23 17:12:08.582+00	2026-07-23 17:12:08.582+00	\N	\N	\N
66ac9eb8-a163-48cc-a8a2-fe87b1f42cdb	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	Diesel	\N	\N	23.861301	90.3211706	\N	\N	\N	cancelled	2026-07-23 17:22:26.698095+00	\N	69	Akran, Dhaka Division	8360	Mobile	\N	\N	\N	\N	\N	2026-07-23 17:22:54.914+00	2026-07-23 17:22:54.914+00	\N	\N	\N
154d2ecc-8f7a-4cc1-b1c7-de771c698842	a0e1b020-b22d-4317-bef9-94a69c1f2c15	Petrol	\N	\N	23.8655333	90.3244133	\N	\N	\N	completed	2026-07-20 18:06:41.269435+00	1a3dd5cc-a943-45cd-a925-69df114aa14f	10	Kakabo Road, Birulia, Dhaka Division	1380	Cash	2026-07-20 18:12:22.267+00	2026-07-24 04:32:39.859+00	2026-07-22 15:42:54.203+00	\N	\N	\N	2026-07-24 04:32:39.859+00	\N	\N	\N
a51d552b-947c-4a4e-94f1-da58d8177c1f	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	Petrol	\N	\N	23.8653082	90.3243113	\N	\N	\N	completed	2026-07-23 21:49:38.728125+00	1a3dd5cc-a943-45cd-a925-69df114aa14f	100	Kakabo Road, Birulia, Dhaka Division	13080	Cash	2026-07-23 21:51:55.659+00	2026-07-23 21:55:40.763+00	\N	\N	\N	\N	2026-07-23 21:55:40.763+00	\N	\N	2026-07-23 21:52:45.194+00
36b40d36-0aae-48b6-882c-3a2b0d238635	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	Petrol	\N	\N	23.8653723	90.32433	\N	\N	\N	completed	2026-07-24 05:18:39.692842+00	1a3dd5cc-a943-45cd-a925-69df114aa14f	10	Kakabo Road, Birulia, Dhaka Division	1380	Cash	2026-07-24 05:18:48.147+00	2026-07-24 05:20:25.118+00	2026-07-24 05:18:54.691+00	2026-07-24 05:19:00.006+00	\N	\N	2026-07-24 05:20:25.118+00	\N	\N	2026-07-24 05:19:07.611+00
9e44975b-e5b4-4648-8c5d-0ccfcc2d83f6	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	Petrol	\N	\N	23.8653093	90.3243422	\N	\N	\N	completed	2026-07-23 21:55:59.284167+00	1a3dd5cc-a943-45cd-a925-69df114aa14f	10	Kakabo Road, Birulia, Dhaka Division	1380	Cash	2026-07-23 21:56:27.573+00	2026-07-23 21:57:27.496+00	\N	\N	\N	\N	2026-07-23 21:57:27.496+00	\N	\N	2026-07-23 21:56:32.017+00
8f77de5b-a0c1-4901-b6cc-4d4494eedf94	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	Octane	\N	\N	23.8653469	90.3243119	\N	\N	\N	completed	2026-07-23 22:28:32.34831+00	1a3dd5cc-a943-45cd-a925-69df114aa14f	10	Kakabo Road, Birulia, Dhaka Division	1580	Card	2026-07-23 22:40:23.319+00	2026-07-23 23:18:54.203+00	2026-07-23 22:47:53.136+00	2026-07-23 23:17:31.871+00	\N	\N	2026-07-23 23:18:54.203+00	\N	\N	2026-07-23 23:18:22.595+00
16e7def2-d1ce-4036-80fe-fdc760ccd046	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	Petrol	\N	\N	23.8651886	90.3242506	\N	\N	\N	completed	2026-07-23 21:23:42.591586+00	1a3dd5cc-a943-45cd-a925-69df114aa14f	10	Kakabo Road, Birulia, Dhaka Division	1380	Cash	2026-07-23 21:24:07.391+00	\N	\N	\N	\N	\N	2026-07-23 21:23:42.591586+00	\N	\N	2026-07-23 21:24:10.377+00
2080055c-920f-4e77-aa0c-4f4278fae2c9	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	Petrol	\N	\N	23.865391	90.3243981	\N	\N	\N	completed	2026-07-23 17:49:59.751445+00	1a3dd5cc-a943-45cd-a925-69df114aa14f	10	Kakabo Road, Birulia, Dhaka Division	1380	Cash	2026-07-23 20:19:35.953+00	2026-07-23 21:27:45.121+00	\N	2026-07-23 20:33:39.714+00	\N	\N	2026-07-23 21:27:45.121+00	\N	\N	2026-07-23 21:11:18.611+00
5c101ad2-f467-4750-a89f-db50deac9566	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	Petrol	\N	\N	23.8653418	90.324297	\N	\N	\N	completed	2026-07-23 17:31:42.928885+00	1a3dd5cc-a943-45cd-a925-69df114aa14f	10	Kakabo Road, Birulia, Dhaka Division	1380	Cash	2026-07-23 20:20:01.546+00	2026-07-23 20:21:33.982+00	\N	\N	\N	\N	2026-07-23 17:31:42.928885+00	\N	\N	\N
3bdee931-ae36-4943-863f-c90b0a224ba9	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	Petrol	\N	\N	23.8653418	90.324297	\N	\N	\N	completed	2026-07-23 17:31:40.366746+00	1a3dd5cc-a943-45cd-a925-69df114aa14f	10	Kakabo Road, Birulia, Dhaka Division	1380	Cash	2026-07-23 17:59:44.574+00	2026-07-23 21:27:46.156+00	\N	\N	\N	\N	2026-07-23 21:27:46.156+00	\N	\N	2026-07-23 21:11:04.601+00
58865d4c-8118-4fbb-8cc4-5d6b71f07b22	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	Petrol	\N	\N	23.8653455	90.3243702	\N	\N	\N	completed	2026-07-23 17:26:12.926828+00	1a3dd5cc-a943-45cd-a925-69df114aa14f	10	Kakabo Road, Birulia, Dhaka Division	1380	Cash	2026-07-23 17:53:32.223+00	2026-07-23 21:27:47.122+00	\N	\N	\N	\N	2026-07-23 21:27:47.122+00	\N	\N	\N
162f3250-c8c3-49d6-9873-63672ab482b8	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	Diesel	\N	\N	23.8653302	90.3243437	\N	\N	\N	completed	2026-07-23 17:14:30.532771+00	1a3dd5cc-a943-45cd-a925-69df114aa14f	69	Kakabo Road, Birulia, Dhaka Division	8360	Mobile	2026-07-23 18:00:01.825+00	2026-07-23 21:27:49.064+00	\N	\N	\N	\N	2026-07-23 21:27:49.064+00	\N	\N	2026-07-23 21:11:22.352+00
ce7196aa-8144-44c9-be49-6ca965832b4f	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	Diesel	\N	\N	23.8601862	90.3208768	\N	\N	\N	completed	2026-07-23 17:15:34.768064+00	1a3dd5cc-a943-45cd-a925-69df114aa14f	69	Dhaka Division	8360	Mobile	2026-07-23 20:19:52.536+00	2026-07-23 20:22:42.787+00	\N	\N	\N	\N	2026-07-23 17:15:34.768064+00	\N	\N	\N
a2400481-999b-4a18-b6b8-6de365e824f6	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	Petrol	\N	\N	23.8652853	90.3243808	\N	\N	\N	completed	2026-07-23 17:36:23.532648+00	1a3dd5cc-a943-45cd-a925-69df114aa14f	10	Kakabo Road, Birulia, Dhaka Division	1380	Cash	2026-07-23 17:37:40.547+00	2026-07-23 20:23:11.634+00	\N	\N	\N	\N	2026-07-23 17:36:23.532648+00	\N	\N	\N
0a2b4530-657f-4c0c-ba08-b58c4a25a272	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	Petrol	\N	\N	23.8653076	90.3242985	\N	\N	\N	completed	2026-07-23 17:34:09.337054+00	1a3dd5cc-a943-45cd-a925-69df114aa14f	10	Kakabo Road, Birulia, Dhaka Division	1380	Cash	2026-07-23 17:37:43.133+00	2026-07-23 20:31:09.553+00	\N	2026-07-23 17:37:52.935+00	\N	\N	2026-07-23 17:34:09.337054+00	\N	\N	\N
4201ec51-f0db-4809-abd5-c79ef3aa8f49	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	Diesel	\N	\N	23.8653302	90.3243437	\N	\N	\N	completed	2026-07-23 17:12:24.921048+00	1a3dd5cc-a943-45cd-a925-69df114aa14f	69	Kakabo Road, Birulia, Dhaka Division	8360	Mobile	2026-07-23 17:52:51.871+00	2026-07-23 20:31:15.598+00	\N	\N	\N	\N	2026-07-23 17:12:24.921048+00	\N	\N	\N
273b26b5-6ab1-44dd-9487-ab9f7e23e944	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	Diesel	\N	\N	23.8653302	90.3243437	\N	\N	\N	completed	2026-07-23 17:12:22.893582+00	1a3dd5cc-a943-45cd-a925-69df114aa14f	69	Kakabo Road, Birulia, Dhaka Division	8360	Mobile	2026-07-23 17:53:13.631+00	2026-07-23 21:28:01.524+00	\N	2026-07-23 17:53:18.6+00	\N	\N	2026-07-23 21:28:01.524+00	\N	\N	2026-07-23 20:51:31.274+00
33cc55a1-5c69-4429-90b2-2d589a8b8c9c	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	Petrol	\N	\N	23.8653949	90.324387	\N	\N	\N	waiting_confirmation	2026-07-24 06:30:38.501107+00	1a3dd5cc-a943-45cd-a925-69df114aa14f	10	Kakabo Road, Birulia, Dhaka Division	1380	Cash	2026-07-24 06:31:01.193+00	\N	2026-07-24 14:07:32.758+00	2026-07-24 14:07:36.787+00	\N	\N	2026-07-24 06:30:38.501107+00	\N	\N	2026-07-24 14:07:40.898+00
3929df9a-3c1f-4257-b681-3c4291d27987	a0e1b020-b22d-4317-bef9-94a69c1f2c15	Petrol	\N	\N	23.8653676	90.3243082	\N	\N	\N	waiting_confirmation	2026-07-24 05:04:41.484432+00	fed16cd3-2673-4355-ac94-a3289224ab6d	22	Kakabo Road, Birulia, Dhaka Division	2940	Mobile	2026-07-24 05:06:03.79+00	\N	2026-07-24 05:07:37.354+00	2026-07-24 05:07:41.914+00	\N	\N	2026-07-24 05:04:41.484432+00	\N	\N	2026-07-24 05:07:55.027+00
cb1a6f11-38b8-4211-b3bb-02028cba374a	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	Petrol	\N	\N	23.8653324	90.3243132	\N	\N	\N	completed	2026-07-23 22:04:38.742277+00	ea1e230b-cfd2-4ec8-9baa-4fa23a992dca	10	Kakabo Road, Birulia, Dhaka Division	1380	Cash	2026-07-23 22:05:43.991+00	2026-07-23 22:27:26.582+00	2026-07-23 22:05:47.846+00	2026-07-23 22:05:53.633+00	\N	\N	2026-07-23 22:27:26.582+00	\N	\N	2026-07-23 22:06:02.331+00
a0da6b6a-2db3-4631-b904-d7be4b477e41	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	Petrol	\N	\N	23.8653016	90.3243089	\N	\N	\N	completed	2026-07-23 23:19:51.718+00	1a3dd5cc-a943-45cd-a925-69df114aa14f	10	Kakabo Road, Birulia, Dhaka Division	1380	Cash	2026-07-23 23:22:39.755+00	2026-07-23 23:23:14.226+00	\N	\N	\N	\N	2026-07-23 23:23:14.226+00	\N	\N	2026-07-23 23:22:44.441+00
f464f0f7-7ef5-4da4-aa3a-d57d76ec53f1	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	Petrol	\N	\N	23.865307	90.3243567	\N	\N	\N	completed	2026-07-23 21:39:11.23979+00	1a3dd5cc-a943-45cd-a925-69df114aa14f	10	Kakabo Road, Birulia, Dhaka Division	1380	Cash	2026-07-23 21:40:12.252+00	2026-07-23 21:41:36.999+00	2026-07-23 21:40:19.584+00	2026-07-23 21:40:25.891+00	\N	\N	2026-07-23 21:41:36.999+00	\N	\N	2026-07-23 21:40:30.176+00
6c15963e-c540-42a8-8d6c-11ab17b93060	a0e1b020-b22d-4317-bef9-94a69c1f2c15	Petrol	\N	\N	23.8661119	90.3248551	\N	\N	\N	completed	2026-07-24 04:34:00.705586+00	1a3dd5cc-a943-45cd-a925-69df114aa14f	11	Dhaka Division	1510	Cash	2026-07-24 04:34:08.17+00	2026-07-24 04:34:41.87+00	2026-07-24 04:34:18.067+00	2026-07-24 04:34:22.739+00	\N	\N	2026-07-24 04:34:41.87+00	\N	\N	2026-07-24 04:34:34.154+00
6f03773f-53de-4490-84e6-ab8f183a99d1	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	Petrol	\N	\N	23.8652987	90.3243263	\N	\N	\N	completed	2026-07-23 23:23:24.856027+00	1a3dd5cc-a943-45cd-a925-69df114aa14f	10	Kakabo Road, Birulia, Dhaka Division	1380	Cash	2026-07-23 23:28:44.758+00	2026-07-24 04:41:11.602+00	2026-07-24 04:25:13.147+00	2026-07-24 04:26:58.994+00	\N	\N	2026-07-24 04:41:11.602+00	\N	\N	2026-07-24 04:27:06.014+00
957f4e68-548c-47d4-b4f4-2513ebb9d623	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	Petrol	\N	\N	23.8653826	90.3243617	\N	\N	\N	completed	2026-07-24 04:41:30.051262+00	1a3dd5cc-a943-45cd-a925-69df114aa14f	69	Kakabo Road, Birulia, Dhaka Division	9050	Cash	2026-07-24 04:45:24.747+00	2026-07-24 05:11:22.081+00	2026-07-24 04:45:30.571+00	2026-07-24 05:01:33.184+00	\N	\N	2026-07-24 05:11:22.081+00	\N	\N	2026-07-24 05:01:45.41+00
d712202f-ce6f-4ff9-afc2-8ca418b964c4	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	Petrol	\N	\N	23.8653551	90.324366	\N	\N	\N	cancelled	2026-07-24 11:41:19.894989+00	\N	10	Kakabo Road, Birulia, Dhaka Division	1380	Cash	\N	\N	\N	\N	\N	2026-07-24 14:08:52.616+00	2026-07-24 14:08:52.616+00	\N	\N	\N
7802d362-0bbc-490d-aab0-8b492c089e3c	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	Petrol	\N	\N	23.8653211	90.3243367	\N	\N	\N	waiting_confirmation	2026-07-24 05:20:38.537977+00	1a3dd5cc-a943-45cd-a925-69df114aa14f	10	Kakabo Road, Birulia, Dhaka Division	1380	Cash	2026-07-24 05:27:46.356+00	\N	2026-07-24 05:27:53.008+00	2026-07-24 05:27:57.362+00	\N	\N	2026-07-24 05:20:38.537977+00	\N	\N	2026-07-24 05:28:01.235+00
c9f6b809-3fee-451e-a8fa-3f8bb3b200cf	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	Petrol	\N	\N	23.8601862	90.3208768	\N	\N	\N	cancelled	2026-07-24 11:43:15.135273+00	\N	10	Dhaka Division	1380	Cash	\N	\N	\N	\N	\N	2026-07-24 14:04:07.694+00	2026-07-24 14:04:07.694+00	\N	\N	\N
eb95ab62-292c-4615-8de7-c9028da7ca8d	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	Petrol	\N	\N	23.8601862	90.3208768	\N	\N	\N	accepted	2026-07-24 11:30:21.086585+00	1a3dd5cc-a943-45cd-a925-69df114aa14f	10	Dhaka Division	1380	Cash	2026-07-24 14:05:33.655+00	\N	\N	\N	\N	\N	2026-07-24 11:30:21.086585+00	\N	\N	\N
280c1b97-65df-49a7-8a1f-5c1524f95e64	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	Petrol	\N	\N	23.865372	90.32436	\N	\N	\N	waiting_confirmation	2026-07-24 05:58:48.027536+00	1a3dd5cc-a943-45cd-a925-69df114aa14f	10	Kakabo Road, Birulia, Dhaka Division	1380	Cash	2026-07-24 05:59:32.415+00	\N	2026-07-24 05:59:56.647+00	2026-07-24 06:00:04.015+00	\N	\N	2026-07-24 05:58:48.027536+00	\N	\N	2026-07-24 14:06:48.559+00
c2b4d9d7-fcc8-4d1f-a15c-398996469a5b	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	Petrol	\N	\N	23.8652802	90.3241042	\N	\N	\N	cancelled	2026-07-24 14:04:28.092908+00	\N	10	Kakabo Road, Birulia, Dhaka Division	1380	Cash	\N	\N	\N	\N	\N	2026-07-24 14:09:03.182+00	2026-07-24 14:09:03.182+00	\N	\N	\N
bd1848cf-39fa-4be2-9106-f33398a26c12	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	Petrol	\N	\N	23.861301	90.3211706	\N	\N	\N	cancelled	2026-07-24 11:39:08.121447+00	\N	10	Akran, Dhaka Division	1380	Cash	\N	\N	\N	\N	\N	2026-07-24 14:09:13.981+00	2026-07-24 14:09:13.981+00	\N	\N	\N
46246f1e-9015-46af-8abe-8c02941c4ab2	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	Petrol	\N	\N	23.8653463	90.3243838	\N	\N	\N	cancelled	2026-07-24 11:31:51.196126+00	\N	10	Kakabo Road, Birulia, Dhaka Division	1380	Cash	\N	\N	\N	\N	\N	2026-07-24 14:09:26.194+00	2026-07-24 14:09:26.194+00	\N	\N	\N
95c98374-9773-4ec7-9fa6-3cc2d8d50f7d	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	Petrol	\N	\N	23.8654024	90.3243854	\N	\N	\N	cancelled	2026-07-24 10:59:38.408104+00	\N	10	Kakabo Road, Birulia, Dhaka Division	1380	Cash	\N	\N	\N	\N	\N	2026-07-24 14:10:13.62+00	2026-07-24 14:10:13.62+00	\N	\N	\N
a20a9ef2-800c-47bf-a3de-37fa335e1696	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	Petrol	\N	\N	23.8654041	90.3243349	\N	\N	\N	cancelled	2026-07-24 09:53:45.204245+00	\N	10	Kakabo Road, Birulia, Dhaka Division	1380	Cash	\N	\N	\N	\N	\N	2026-07-24 14:10:32.051+00	2026-07-24 14:10:32.051+00	\N	\N	\N
2585a50e-02fe-401a-a21d-294b282b43cc	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	Petrol	\N	\N	23.8653563	90.3243519	\N	\N	\N	arrived	2026-07-24 14:13:05.26192+00	1a3dd5cc-a943-45cd-a925-69df114aa14f	333	Kakabo Road, Birulia, Dhaka Division	43370	Mobile	2026-07-24 14:13:25.492+00	\N	2026-07-24 14:13:29.887+00	2026-07-24 14:13:33.452+00	\N	\N	2026-07-24 14:13:05.26192+00	\N	\N	\N
9ac9c5a9-5837-4790-adde-afcf9646d2b7	a0e1b020-b22d-4317-bef9-94a69c1f2c15	Petrol	\N	\N	23.8653049	90.3243473	\N	\N	\N	accepted	2026-07-24 15:44:28.648697+00	1a3dd5cc-a943-45cd-a925-69df114aa14f	22	Kakabo Road, Birulia, Dhaka Division	2940	Card	2026-07-24 23:42:21.017+00	\N	\N	\N	\N	\N	2026-07-24 15:44:28.648697+00	\N	\N	\N
f5b62213-ba7d-4bfb-b577-8e9e88cb05f2	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	Petrol	\N	\N	23.8652763	90.3243488	\N	\N	\N	accepted	2026-07-24 16:21:01.020166+00	1a3dd5cc-a943-45cd-a925-69df114aa14f	10	Kakabo Road, Birulia, Dhaka Division	1380	Cash	2026-07-25 17:22:03.223+00	\N	\N	\N	\N	\N	2026-07-24 16:21:01.020166+00	\N	\N	\N
31b60dfc-d881-490e-919f-24628798cb09	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	Petrol	\N	\N	23.8653158	90.3243206	\N	\N	\N	arrived	2026-08-01 15:00:33.530568+00	2351c2dd-edb3-47c0-8653-a7da824819f8	10	Kakabo Road, Birulia, Dhaka Division	1300	Cash	2026-08-01 15:00:52.423+00	\N	2026-08-01 15:00:56.584+00	2026-08-01 15:01:03.731+00	\N	\N	2026-08-01 15:00:33.530568+00	\N	\N	\N
43f6176b-d003-4fa0-9b3a-9036f61b57ac	a0e1b020-b22d-4317-bef9-94a69c1f2c15	Octane	\N	\N	23.8653613	90.3243326	\N	\N	\N	arrived	2026-07-25 00:11:19.659863+00	1a3dd5cc-a943-45cd-a925-69df114aa14f	10	Kakabo Road, Birulia, Dhaka Division	1580	Mobile	2026-07-25 17:40:49.224+00	\N	2026-07-25 17:40:55.557+00	2026-07-25 17:41:00.977+00	\N	\N	2026-07-25 00:11:19.659863+00	\N	\N	\N
a4c29db0-3ae1-4aa3-aec8-742b7e2404bc	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	Diesel	\N	\N	23.8654041	90.3243211	\N	\N	\N	cancelled	2026-07-28 12:41:30.873061+00	1a3dd5cc-a943-45cd-a925-69df114aa14f	10	Kakabo Road, Birulia, Dhaka Division	650	Cash	2026-07-28 14:45:27.189+00	\N	\N	\N	\N	\N	2026-07-28 12:41:30.873061+00	\N	\N	\N
73b264ed-ac6f-4c85-8bba-daf25c226b40	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	Octane	\N	\N	23.8653218	90.3243529	\N	\N	\N	accepted	2026-07-28 15:44:14.485096+00	1a3dd5cc-a943-45cd-a925-69df114aa14f	44	Kakabo Road, Birulia, Dhaka Division	6530	Card	2026-07-28 15:45:25.428+00	\N	\N	\N	\N	\N	2026-07-28 15:44:14.485096+00	\N	\N	\N
f844237b-a766-4ccf-86c0-d197ccd41401	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	Petrol	\N	\N	23.8653077	90.3243245	\N	\N	\N	accepted	2026-07-25 17:45:14.318866+00	1a3dd5cc-a943-45cd-a925-69df114aa14f	10	Kakabo Road, Birulia, Dhaka Division	1380	Cash	2026-07-25 17:47:27.77+00	2026-07-25 17:53:12.639+00	2026-07-25 17:50:57.577+00	2026-07-25 17:52:08.628+00	\N	\N	2026-07-25 17:53:12.639+00	\N	\N	2026-07-25 17:52:19.598+00
e8c77ec1-f3b9-4045-a356-f19170a2184d	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	Petrol	\N	\N	23.8652931	90.3243579	\N	\N	\N	delivering	2026-07-24 16:21:23.004349+00	fed16cd3-2673-4355-ac94-a3289224ab6d	693	Kakabo Road, Birulia, Dhaka Division	90170	Mobile	2026-07-27 04:50:14.443+00	\N	2026-07-27 04:50:25.331+00	\N	\N	\N	2026-07-24 16:21:23.004349+00	\N	\N	\N
aa0d08df-f300-47a1-8b7d-c8d0a685daec	bc4d5c79-829d-4b7e-9aaf-936294358391	Octane	\N	\N	37.4219983	-122.084	\N	\N	\N	delivering	2026-07-27 17:56:01.429212+00	1a3dd5cc-a943-45cd-a925-69df114aa14f	10	Amphitheatre Parkway, Mountain View, California	1580	Cash	2026-07-27 17:58:28.91+00	\N	2026-07-27 17:59:16.7+00	\N	\N	\N	2026-07-27 17:56:01.429212+00	\N	\N	\N
b876b3f4-944f-45b4-8196-55ef07647ecc	dd5b6be3-bf04-4cee-a971-911aa8dd9f9e	Petrol	\N	\N	23.8657589	90.3229338	\N	\N	\N	arrived	2026-08-01 07:20:02.348177+00	24701573-d709-4acc-8858-6c96e5e79533	10	Birulia-Akran Road, Ashulia Model Town, Dhaka Division	1300	Cash	2026-08-01 07:22:38.487+00	\N	2026-08-01 07:22:46.076+00	2026-08-01 07:27:38.766+00	\N	\N	2026-08-01 07:20:02.348177+00	\N	\N	\N
41237d7b-eaae-4ead-802c-e98d108d5fbf	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	Petrol	\N	\N	23.8653901	90.3243543	\N	\N	\N	delivering	2026-07-31 10:23:43.960864+00	1a3dd5cc-a943-45cd-a925-69df114aa14f	10	Kakabo Road, Birulia, Dhaka Division	1300	Card	2026-07-31 10:24:24.183+00	\N	2026-07-31 10:24:52.665+00	\N	\N	\N	2026-07-31 10:23:43.960864+00	\N	\N	\N
d125f016-e0d4-406b-a3ff-601ec179fdf0	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	Petrol	\N	\N	23.8653266	90.3243566	\N	\N	\N	arrived	2026-07-25 17:21:30.744999+00	1a3dd5cc-a943-45cd-a925-69df114aa14f	10	Kakabo Road, Birulia, Dhaka Division	1380	Cash	2026-07-27 18:00:28.46+00	\N	2026-07-27 18:00:33.437+00	2026-07-27 18:00:48.985+00	\N	\N	2026-07-25 17:21:30.744999+00	\N	\N	\N
ab16ec23-37c9-4204-8f00-089f361f9363	a0e1b020-b22d-4317-bef9-94a69c1f2c15	Octane	\N	\N	23.8653089	90.3242649	\N	\N	\N	accepted	2026-07-27 04:49:29.556424+00	bc4d5c79-829d-4b7e-9aaf-936294358391	100	Kakabo Road, Birulia, Dhaka Division	15080	Card	2026-07-27 18:02:33.06+00	\N	\N	\N	\N	\N	2026-07-27 04:49:29.556424+00	\N	\N	\N
60dc80c5-4a00-40f2-8b41-25aa262cbb06	815d2073-a11d-46e6-b9df-7f4c5c76b2aa	Octane	\N	\N	23.8653829	90.3243576	\N	\N	\N	accepted	2026-07-31 10:55:35.505483+00	133f926c-a98c-4b27-9ff7-e6c0cf0bec18	69	Kakabo Road, Birulia, Dhaka Division	9760	Mobile	2026-07-31 11:00:33.017+00	\N	\N	\N	\N	\N	2026-07-31 10:55:35.505483+00	\N	\N	\N
c437095c-5a84-4d05-b793-6364af26f46f	a0e1b020-b22d-4317-bef9-94a69c1f2c15	Petrol	\N	\N	37.4219983	-122.084	\N	\N	\N	completed	2026-07-27 18:05:23.963313+00	1a3dd5cc-a943-45cd-a925-69df114aa14f	999	Amphitheatre Parkway, Mountain View, California	129950	Cash	2026-07-27 18:06:20.33+00	2026-07-27 18:11:12.317+00	2026-07-27 18:06:51.393+00	2026-07-27 18:06:56.087+00	\N	\N	2026-07-27 18:11:12.317+00	\N	\N	2026-07-27 18:09:42.259+00
adf690df-5f79-48ee-8c6f-b6317beba6ff	82354dcd-3fe9-42d6-8e76-f344db116242	Octane	\N	\N	23.8653455	90.3243393	\N	\N	\N	completed	2026-08-02 04:46:36.106354+00	ad9049ad-da91-4eef-9d1e-8359b35af82b	69	Kakabo Road, Birulia, Dhaka Division	10105	Mobile	2026-08-02 04:48:51.062+00	2026-08-02 04:54:37.13+00	2026-08-02 04:48:54.693+00	2026-08-02 04:49:00.382+00	\N	\N	2026-08-02 04:54:37.13+00	\N	\N	2026-08-02 04:54:12.3+00
342ba903-862d-4963-a914-8294bb073d08	a0e1b020-b22d-4317-bef9-94a69c1f2c15	Petrol	\N	\N	23.8620354	90.3255786	\N	\N	\N	delivering	2026-07-31 11:46:59.4471+00	1a3dd5cc-a943-45cd-a925-69df114aa14f	10	Dhaka Division	1300	Cash	2026-07-31 11:47:23.006+00	\N	2026-07-31 11:47:35.326+00	\N	\N	\N	2026-07-31 11:46:59.4471+00	\N	\N	\N
e4a6e1c5-4099-46e9-bf65-adf0798fe2f6	815d2073-a11d-46e6-b9df-7f4c5c76b2aa	Petrol	\N	\N	23.8653797	90.3264603	\N	\N	\N	accepted	2026-07-31 11:33:15.798465+00	133f926c-a98c-4b27-9ff7-e6c0cf0bec18	33	Dhaka - Ashulia Hwy, Dhaka, Dhaka Division	4060	Card	2026-07-31 12:02:23.912+00	\N	\N	\N	\N	\N	2026-07-31 11:33:15.798465+00	\N	\N	\N
2c92b125-c9be-4b10-907b-9d3a59dcd15f	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	Petrol	\N	\N	23.865341	90.3243037	\N	\N	\N	accepted	2026-07-30 07:55:24.307312+00	31377f7c-5eff-4de0-bcec-dae997ff9ac6	10	Kakabo Road, Birulia, Dhaka Division	1250	Cash	2026-07-31 17:20:03.546+00	\N	\N	\N	\N	\N	2026-07-30 07:55:24.307312+00	\N	\N	\N
86e7113d-9edc-4426-a846-684710a95741	bc42af3f-3f33-455c-b42f-c59ee761541e	Petrol	\N	\N	23.8653588	90.3243155	\N	\N	\N	arrived	2026-08-02 04:28:45.439155+00	7a65ce1a-e8ed-4777-b6ac-a8b9151cd61a	66	Kakabo Road, Birulia, Dhaka Division	8020	Mobile	2026-08-02 04:31:31.589+00	\N	2026-08-02 04:34:14.117+00	2026-08-02 04:34:18.354+00	\N	\N	2026-08-02 04:28:45.439155+00	\N	\N	\N
0b85eed4-5b02-4238-b0bf-93286ca1de49	dd5b6be3-bf04-4cee-a971-911aa8dd9f9e	Petrol	\N	\N	23.8653289	90.3243447	\N	\N	\N	arrived	2026-08-01 07:50:23.149759+00	24701573-d709-4acc-8858-6c96e5e79533	69	Kakabo Road, Birulia, Dhaka Division	8380	Card	2026-08-01 07:50:45.427+00	\N	2026-08-01 07:50:50.373+00	2026-08-01 07:51:06.331+00	\N	\N	2026-08-01 07:50:23.149759+00	\N	\N	\N
78075207-d875-40fa-8475-cfb264e20c6b	876bad8f-4d46-488f-abb9-7779ccede40b	Octane	\N	\N	23.8653183	90.3243354	\N	\N	\N	arrived	2026-07-31 17:19:07.26346+00	1a3dd5cc-a943-45cd-a925-69df114aa14f	11	Kakabo Road, Birulia, Dhaka Division	1695	Cash	2026-07-31 17:20:50.053+00	\N	2026-07-31 17:21:18.726+00	2026-07-31 17:21:50.94+00	\N	\N	2026-07-31 17:19:07.26346+00	\N	\N	\N
0e11ce76-9ba0-4012-9189-9c4064c29e87	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	Petrol	\N	\N	23.8653371	90.3243191	\N	\N	\N	accepted	2026-07-30 10:44:34.734335+00	133f926c-a98c-4b27-9ff7-e6c0cf0bec18	10	Kakabo Road, Birulia, Dhaka Division	450	Cash	2026-08-01 03:58:41.604+00	\N	\N	\N	\N	\N	2026-07-30 10:44:34.734335+00	\N	\N	\N
6be0e1f5-7b81-425f-8496-6187a597245b	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	Petrol	\N	\N	23.8653487	90.3243105	\N	\N	\N	accepted	2026-07-30 08:01:45.063078+00	133f926c-a98c-4b27-9ff7-e6c0cf0bec18	10	Kakabo Road, Birulia, Dhaka Division	1250	Cash	2026-08-01 03:58:43.878+00	\N	\N	\N	\N	\N	2026-07-30 08:01:45.063078+00	\N	\N	\N
356e4329-6fef-4dec-849c-6ef193e1d088	891825d4-0f9f-4db8-8c18-1ecb3a94f12f	Petrol	\N	\N	23.8653113	90.3243366	\N	\N	\N	arrived	2026-08-01 09:17:09.94106+00	708c6c50-1770-4e04-a50c-d7b9f7c28255	22	Kakabo Road, Birulia, Dhaka Division	2740	Card	2026-08-01 09:19:47.993+00	\N	2026-08-01 09:19:55.385+00	2026-08-01 09:20:20.162+00	\N	\N	2026-08-01 09:17:09.94106+00	\N	\N	\N
a9aa45ed-698c-42d7-a877-5a9eb4f7e8dc	4077aebf-2c36-42ec-b99d-231991995d99	Petrol	\N	\N	23.8653732	90.3243625	\N	\N	\N	completed	2026-08-01 16:25:40.979377+00	523b3a83-d224-4bb8-b636-4b814eff34f1	69	Kakabo Road, Birulia, Dhaka Division	8380	Mobile	2026-08-01 16:26:07.68+00	2026-08-01 16:28:48.895+00	2026-08-01 16:26:14.106+00	2026-08-01 16:26:19.746+00	\N	\N	2026-08-01 16:28:48.895+00	\N	\N	2026-08-01 16:28:00.116+00
0c56a6e0-a0b1-4880-bbee-1ace369a9a57	8b3f7c15-1a6f-455a-b79e-f82eec82de24	Petrol	\N	\N	23.8653983	90.3244039	\N	\N	\N	completed	2026-08-02 05:26:02.130924+00	689df7e6-1768-4cec-bef3-3ec3009806f4	44	Kakabo Road, Birulia, Dhaka Division	5380	Mobile	2026-08-02 05:26:54.596+00	2026-08-02 05:30:59.858+00	2026-08-02 05:27:07.101+00	2026-08-02 05:27:10.898+00	\N	\N	2026-08-02 05:30:59.858+00	\N	\N	2026-08-02 05:29:33.43+00
827966c5-d69c-48d6-9161-77fa0ead93e3	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	Petrol	\N	\N	23.865331	90.3243526	\N	\N	\N	accepted	2026-08-01 17:40:16.354001+00	1a3dd5cc-a943-45cd-a925-69df114aa14f	69	Kakabo Road, Birulia, Dhaka Division	8380	Mobile	2026-08-01 17:40:33.176+00	\N	\N	\N	\N	\N	2026-08-01 17:40:16.354001+00	\N	\N	\N
3783ac02-092f-40d2-95fc-febb6fbffd74	a0e1b020-b22d-4317-bef9-94a69c1f2c15	Petrol	\N	\N	33.5443595	-84.2161176	\N	\N	\N	pending	2026-08-03 00:49:11.851468+00	\N	1	Scott Boulevard, Stockbridge, Georgia	220	Mobile	\N	\N	\N	\N	\N	\N	2026-08-03 00:49:11.851468+00	\N	\N	\N
\.


--
-- Data for Name: conversations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."conversations" ("id", "customer_id", "driver_id", "order_id", "last_message", "last_message_at", "customer_unread_count", "driver_unread_count", "created_at", "updated_at", "type", "admin_id", "status") FROM stdin;
a751cadb-469d-4acc-979b-e0a093a205e6	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	1a3dd5cc-a943-45cd-a925-69df114aa14f	2080055c-920f-4e77-aa0c-4f4278fae2c9	Hi	2026-07-23 20:30:10.689+00	0	0	2026-07-23 20:19:39.479452+00	2026-07-23 20:30:10.689+00	order	\N	active
a6e8c2f2-6363-4804-988f-47615b356915	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	1a3dd5cc-a943-45cd-a925-69df114aa14f	16e7def2-d1ce-4036-80fe-fdc760ccd046	\N	\N	0	0	2026-07-23 21:24:29.776622+00	2026-07-23 21:24:29.776622+00	order	\N	active
96dd2c9a-c547-46bc-8f3f-127c75228608	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	1a3dd5cc-a943-45cd-a925-69df114aa14f	3bdee931-ae36-4943-863f-c90b0a224ba9	\N	\N	0	0	2026-07-23 21:27:46.850784+00	2026-07-23 21:27:46.850784+00	order	\N	active
4cd2b37e-f3d1-442a-a44a-1f14a5007ef6	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	1a3dd5cc-a943-45cd-a925-69df114aa14f	92bf7cbf-55d6-4e63-83f9-643165bf60b8	Hi	2026-07-23 17:37:05.668+00	0	0	2026-07-23 17:24:45.717677+00	2026-07-23 17:37:05.668+00	order	\N	active
3b9781f6-a1b9-4524-a366-c471f38af89a	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	1a3dd5cc-a943-45cd-a925-69df114aa14f	58865d4c-8118-4fbb-8cc4-5d6b71f07b22	\N	\N	0	0	2026-07-23 21:27:48.026902+00	2026-07-23 21:27:48.026902+00	order	\N	active
0672f7a4-6113-44cd-bc79-4c9cac6d061f	a0e1b020-b22d-4317-bef9-94a69c1f2c15	1a3dd5cc-a943-45cd-a925-69df114aa14f	38ffdf25-ce01-407b-9ad1-97992938ff81	\N	\N	0	0	2026-07-22 13:01:08.772416+00	2026-07-22 13:01:08.772416+00	order	\N	active
50ab6936-1bdd-444b-8c4f-3523aa4b307b	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	1a3dd5cc-a943-45cd-a925-69df114aa14f	cb735a42-2c0c-4c1d-8e0d-77bcac1e5879	\N	\N	0	0	2026-07-23 21:28:13.204451+00	2026-07-23 21:28:13.204451+00	order	\N	active
9ca1bed2-9932-4c44-8dde-7179f02219da	a0e1b020-b22d-4317-bef9-94a69c1f2c15	1a3dd5cc-a943-45cd-a925-69df114aa14f	88e713ce-d981-4337-b946-067fe898a034	Hi	2026-07-22 15:05:10.193+00	0	0	2026-07-22 10:56:27.420268+00	2026-07-22 15:05:10.193+00	order	\N	active
cab91bcb-3f20-4de3-8b0b-7d861e9731d0	a0e1b020-b22d-4317-bef9-94a69c1f2c15	1a3dd5cc-a943-45cd-a925-69df114aa14f	7f0b9f42-631d-4f87-9b66-202e7bf88579	Hi	2026-07-23 17:24:29.785+00	0	0	2026-07-23 17:24:25.623604+00	2026-07-23 17:24:29.785+00	order	\N	active
debe47e4-f573-46bd-8655-65174ce28a47	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	1a3dd5cc-a943-45cd-a925-69df114aa14f	f464f0f7-7ef5-4da4-aa3a-d57d76ec53f1	\N	\N	0	0	2026-07-23 21:41:21.133568+00	2026-07-23 21:41:21.133568+00	order	\N	active
651bdef7-9255-4ff4-93b6-e46375b70288	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	1a3dd5cc-a943-45cd-a925-69df114aa14f	6155599e-c830-4a0c-bf28-d2afad00b965	\N	\N	0	0	2026-07-22 15:52:59.889521+00	2026-07-22 15:52:59.889521+00	order	\N	active
455d94e9-855e-4520-81cf-155e4f8488eb	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	1a3dd5cc-a943-45cd-a925-69df114aa14f	a4badeea-c790-45fb-a512-d9d910cce10b	Hi	2026-07-22 14:37:27.095+00	0	0	2026-07-22 12:50:17.558445+00	2026-07-22 14:37:27.095+00	order	\N	active
2d862618-c948-4f89-8cc2-cc42ffed78e9	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	1a3dd5cc-a943-45cd-a925-69df114aa14f	162f3250-c8c3-49d6-9873-63672ab482b8	\N	\N	0	0	2026-07-23 18:00:06.42792+00	2026-07-23 18:00:06.42792+00	order	\N	active
7404473f-2d45-42bf-bac8-4e8f28c56a30	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	1a3dd5cc-a943-45cd-a925-69df114aa14f	a51d552b-947c-4a4e-94f1-da58d8177c1f	\N	\N	0	0	2026-07-23 21:53:07.300775+00	2026-07-23 21:53:07.300775+00	order	\N	active
c4727254-46a6-48e9-8d55-00a80752ac69	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	1a3dd5cc-a943-45cd-a925-69df114aa14f	5c101ad2-f467-4750-a89f-db50deac9566	Hi	2026-07-23 20:20:41.243+00	0	0	2026-07-23 20:20:34.261376+00	2026-07-23 20:20:41.243+00	order	\N	active
cc1ebb3e-be9f-458d-837d-f9ff816fc034	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	1a3dd5cc-a943-45cd-a925-69df114aa14f	9b715103-fc5a-4833-82c0-63e25e406292	Hi	2026-07-23 13:29:36.373+00	0	0	2026-07-23 12:56:27.253975+00	2026-07-23 13:29:36.373+00	order	\N	active
995f26ea-4f2b-4d62-b84d-1d0937309c4e	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	1a3dd5cc-a943-45cd-a925-69df114aa14f	ce7196aa-8144-44c9-be49-6ca965832b4f	\N	\N	0	0	2026-07-23 20:20:52.077534+00	2026-07-23 20:20:52.077534+00	order	\N	active
940657fe-b59b-42dc-b171-b32765690b83	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	1a3dd5cc-a943-45cd-a925-69df114aa14f	7802d362-0bbc-490d-aab0-8b492c089e3c	\N	\N	0	0	2026-07-24 05:38:36.028023+00	2026-07-24 05:38:36.028023+00	order	\N	active
b79a6f3e-fc3a-4078-8a5e-69811394747a	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	1a3dd5cc-a943-45cd-a925-69df114aa14f	a2400481-999b-4a18-b6b8-6de365e824f6	\N	\N	0	0	2026-07-23 17:49:11.025674+00	2026-07-23 17:49:11.025674+00	order	\N	active
9f6d1680-32c7-43da-9b34-2c390bc10061	dd5b6be3-bf04-4cee-a971-911aa8dd9f9e	24701573-d709-4acc-8858-6c96e5e79533	b876b3f4-944f-45b4-8196-55ef07647ecc	Hi	2026-08-01 07:51:34.082+00	0	0	2026-08-01 07:22:50.531824+00	2026-08-01 07:51:34.082+00	order	\N	active
daf0ebf8-277c-4690-a3e3-5b5960c5c7c1	a0e1b020-b22d-4317-bef9-94a69c1f2c15	0c7540e4-69f1-4d46-98b3-3577b0e15162	98dc87a4-6d98-4d8e-92fb-43762621c910	\N	\N	0	0	2026-07-24 04:35:10.039912+00	2026-07-24 04:35:10.039912+00	order	\N	active
16f5554c-0891-42ad-8c8b-015b7da06c66	4077aebf-2c36-42ec-b99d-231991995d99	523b3a83-d224-4bb8-b636-4b814eff34f1	a9aa45ed-698c-42d7-a877-5a9eb4f7e8dc	Thanks	2026-08-02 04:24:52.443+00	0	1	2026-08-01 16:26:45.748171+00	2026-08-02 04:24:52.443+00	order	\N	active
5ae0d1b0-22e9-4c54-9e9d-4a866c8e0d03	bc4d5c79-829d-4b7e-9aaf-936294358391	1a3dd5cc-a943-45cd-a925-69df114aa14f	aa0d08df-f300-47a1-8b7d-c8d0a685daec	hi	2026-07-27 17:59:26.99+00	0	0	2026-07-27 17:59:21.495937+00	2026-07-27 17:59:26.99+00	order	\N	active
3ee0fd11-6026-4b77-b7b6-88886619f016	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	1a3dd5cc-a943-45cd-a925-69df114aa14f	0a2b4530-657f-4c0c-ba08-b58c4a25a272	Hi	2026-07-23 20:30:47.72+00	0	0	2026-07-23 17:37:56.204753+00	2026-07-23 20:30:47.72+00	order	\N	active
b6bb7e60-a82f-41d4-b9a9-0688d6c5886b	a0e1b020-b22d-4317-bef9-94a69c1f2c15	1a3dd5cc-a943-45cd-a925-69df114aa14f	9c12133e-6d21-4ba5-bff4-0f7d49efc763	Ji	2026-07-22 14:37:41.768+00	0	0	2026-07-22 13:04:29.505857+00	2026-07-22 14:37:41.768+00	order	\N	active
b99c4a3e-e413-4733-ba9d-d89101d6149c	a0e1b020-b22d-4317-bef9-94a69c1f2c15	1a3dd5cc-a943-45cd-a925-69df114aa14f	154d2ecc-8f7a-4cc1-b1c7-de771c698842	\N	\N	0	0	2026-07-23 17:52:24.992528+00	2026-07-23 17:52:24.992528+00	order	\N	active
05f94fd2-65a7-4eec-a70d-8a203ff0a586	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	1a3dd5cc-a943-45cd-a925-69df114aa14f	273b26b5-6ab1-44dd-9487-ab9f7e23e944	\N	\N	0	0	2026-07-23 20:51:59.43332+00	2026-07-23 20:51:59.43332+00	order	\N	active
c23eaa66-d2e8-4709-ab38-33d97b3dcb95	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	ea1e230b-cfd2-4ec8-9baa-4fa23a992dca	cb1a6f11-38b8-4211-b3bb-02028cba374a	Hi	2026-07-23 22:28:03.574+00	0	0	2026-07-23 22:06:22.062084+00	2026-07-23 22:28:03.574+00	order	\N	active
8205163a-a727-422d-a1fc-cdacb43ed655	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	1a3dd5cc-a943-45cd-a925-69df114aa14f	9e44975b-e5b4-4648-8c5d-0ccfcc2d83f6	\N	\N	0	0	2026-07-23 21:56:50.867798+00	2026-07-23 21:56:50.867798+00	order	\N	active
3f1466ed-d96c-48e3-b9f5-591ca41577d3	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	1a3dd5cc-a943-45cd-a925-69df114aa14f	8f77de5b-a0c1-4901-b6cc-4d4494eedf94	\N	\N	0	0	2026-07-23 23:13:47.061487+00	2026-07-23 23:13:47.061487+00	order	\N	active
f03dd831-e51b-46be-b05b-27b6f8cdb253	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	1a3dd5cc-a943-45cd-a925-69df114aa14f	a0da6b6a-2db3-4631-b904-d7be4b477e41	\N	\N	0	0	2026-07-23 23:23:01.967841+00	2026-07-23 23:23:01.967841+00	order	\N	active
319e95fb-53fc-45b5-b939-1b24d8876d27	a0e1b020-b22d-4317-bef9-94a69c1f2c15	1a3dd5cc-a943-45cd-a925-69df114aa14f	d99c21d0-509f-4fdd-a241-8f9597f05a2e	\N	\N	0	0	2026-07-24 04:33:05.756313+00	2026-07-24 04:33:05.756313+00	order	\N	active
d9cb3369-8df1-46af-905b-14f8ea059af5	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	fed16cd3-2673-4355-ac94-a3289224ab6d	d510d9c8-79bb-4467-a5e0-d04650fe9a3a	Hi	2026-07-27 04:50:31.444+00	0	0	2026-07-23 21:44:09.808088+00	2026-07-27 04:50:31.444+00	order	\N	active
6bc5b22e-e8bd-4386-b42e-25d9e1c688e3	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	1a3dd5cc-a943-45cd-a925-69df114aa14f	6f03773f-53de-4490-84e6-ab8f183a99d1	\N	\N	0	0	2026-07-24 04:41:07.266775+00	2026-07-24 04:41:07.266775+00	order	\N	active
eb3a1205-6f26-48c5-b094-aed5cfb6a68d	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	144d9b83-f3be-448f-b678-c711c76e513c	b5d79f84-14df-4825-922c-83ce2c05362d	\N	\N	0	0	2026-07-23 16:58:00.497283+00	2026-07-23 16:58:00.497283+00	order	\N	active
60715d3b-381f-40e8-89d9-6982a0ccf2b9	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	1a3dd5cc-a943-45cd-a925-69df114aa14f	957f4e68-548c-47d4-b4f4-2513ebb9d623	\N	\N	0	0	2026-07-24 05:10:48.731021+00	2026-07-24 05:10:48.731021+00	order	\N	active
ab65f6c8-7db6-4788-bed2-7b4a5a2ea86e	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	1a3dd5cc-a943-45cd-a925-69df114aa14f	36b40d36-0aae-48b6-882c-3a2b0d238635	\N	\N	0	0	2026-07-24 05:18:50.395057+00	2026-07-24 05:18:50.395057+00	order	\N	active
2e0c8a54-7127-4d14-9480-24af9382bf0f	815d2073-a11d-46e6-b9df-7f4c5c76b2aa	133f926c-a98c-4b27-9ff7-e6c0cf0bec18	60dc80c5-4a00-40f2-8b41-25aa262cbb06	\N	\N	0	0	2026-07-31 11:32:24.860372+00	2026-07-31 11:32:24.860372+00	order	\N	active
9115649e-26d6-42e9-9fec-1c1b31ed890a	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	133f926c-a98c-4b27-9ff7-e6c0cf0bec18	6be0e1f5-7b81-425f-8496-6187a597245b	Hi	2026-08-01 04:00:29.084+00	0	0	2026-08-01 03:58:52.564059+00	2026-08-01 04:00:29.084+00	order	\N	active
7f1977d2-15d2-4812-8069-88798d5183ae	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	2351c2dd-edb3-47c0-8653-a7da824819f8	31b60dfc-d881-490e-919f-24628798cb09	You 	2026-08-01 17:37:47.026+00	0	0	2026-08-01 15:01:21.686634+00	2026-08-01 17:37:47.026+00	order	\N	active
f786037b-1ee0-4a69-a87d-aa809db0da43	876bad8f-4d46-488f-abb9-7779ccede40b	1a3dd5cc-a943-45cd-a925-69df114aa14f	78075207-d875-40fa-8475-cfb264e20c6b	I am driver@gmail.com	2026-07-31 17:21:39.157+00	0	0	2026-07-31 17:21:23.763238+00	2026-07-31 17:21:39.157+00	order	\N	active
9c4bd8ff-8272-40c3-a324-cb564496fe57	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	1a3dd5cc-a943-45cd-a925-69df114aa14f	280c1b97-65df-49a7-8a1f-5c1524f95e64	Thanks	2026-08-02 04:48:06.419+00	1	0	2026-07-24 05:59:51.661935+00	2026-08-02 04:48:06.419+00	order	\N	active
89c56320-16fa-427f-a3aa-22f4a4414fab	a0e1b020-b22d-4317-bef9-94a69c1f2c15	fed16cd3-2673-4355-ac94-a3289224ab6d	3929df9a-3c1f-4257-b681-3c4291d27987	Hi	2026-07-24 23:57:38.347+00	0	0	2026-07-24 05:07:29.693868+00	2026-07-24 23:57:38.347+00	order	\N	active
efeb6fa5-6e7a-451b-afcb-2442c0354ae8	8b3f7c15-1a6f-455a-b79e-f82eec82de24	689df7e6-1768-4cec-bef3-3ec3009806f4	0c56a6e0-a0b1-4880-bbee-1ace369a9a57	I am c44✍️	2026-08-02 05:30:46.082+00	0	1	2026-08-02 05:27:14.935983+00	2026-08-02 05:30:46.082+00	order	\N	active
65787741-7331-42e3-a3c0-6b531b15c0a6	a0e1b020-b22d-4317-bef9-94a69c1f2c15	bc4d5c79-829d-4b7e-9aaf-936294358391	ab16ec23-37c9-4204-8f00-089f361f9363	\N	\N	0	0	2026-07-27 18:03:42.912061+00	2026-07-27 18:03:42.912061+00	order	\N	active
18f27c24-4bf0-4112-a59d-74dd3e221025	a0e1b020-b22d-4317-bef9-94a69c1f2c15	1a3dd5cc-a943-45cd-a925-69df114aa14f	6c15963e-c540-42a8-8d6c-11ab17b93060	Checking 	2026-08-01 17:39:47.716+00	0	0	2026-07-24 04:34:11.412361+00	2026-08-01 17:39:47.716+00	order	\N	active
f843385c-faa6-4c36-9e5b-530e67cc18dc	bc42af3f-3f33-455c-b42f-c59ee761541e	7a65ce1a-e8ed-4777-b6ac-a8b9151cd61a	86e7113d-9edc-4426-a846-684710a95741	I am d40	2026-08-02 04:45:13.164+00	1	0	2026-08-02 04:32:30.466368+00	2026-08-02 04:45:13.164+00	order	\N	active
c16a87f1-41cb-4ced-b518-e7e6da0986d3	82354dcd-3fe9-42d6-8e76-f344db116242	ad9049ad-da91-4eef-9d1e-8359b35af82b	adf690df-5f79-48ee-8c6f-b6317beba6ff	Thanks	2026-08-02 04:54:56.788+00	0	2	2026-08-02 04:49:06.085742+00	2026-08-02 04:54:56.788+00	order	\N	active
\.


--
-- Data for Name: delivery_settings; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."delivery_settings" ("id", "price_per_km", "minimum_delivery_fee", "maximum_delivery_fee", "is_active", "created_at", "updated_at") FROM stdin;
368c6d7a-9feb-4e25-81c7-876dce49091e	20.00	100.00	1000.00	t	2026-07-19 10:29:28.463859+00	2026-07-19 10:29:28.463859+00
\.


--
-- Data for Name: driver_locations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."driver_locations" ("driver_id", "latitude", "longitude", "heading", "speed", "updated_at") FROM stdin;
\.


--
-- Data for Name: driver_verifications; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."driver_verifications" ("id", "driver_id", "driving_license_number", "license_front_image", "license_back_image", "verification_status", "rejection_reason", "verified_by", "verified_at", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: drivers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."drivers" ("id", "user_id", "vehicle_type", "vehicle_registration", "license_number", "is_online", "current_latitude", "current_longitude", "created_at", "approval_status") FROM stdin;
\.


--
-- Data for Name: fuel_prices; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."fuel_prices" ("id", "fuel_type", "price_per_liter", "active", "created_at") FROM stdin;
d8fea177-9e8d-434a-9bd6-ab1ac05d98fb	Petrol	120	t	2026-07-13 19:19:03.828537+00
56ac03b3-8fd8-4a7b-8da5-fd73c80f6cc4	Diesel	110	t	2026-07-13 19:19:03.828537+00
c2239ea9-3766-44ba-9263-bbe99c2350d4	Octane	145	t	2026-07-13 19:19:03.828537+00
\.


--
-- Data for Name: messages; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."messages" ("id", "conversation_id", "sender_id", "receiver_id", "message", "is_read", "created_at", "updated_at", "message_type") FROM stdin;
777f3cc7-c275-4290-8b43-6b41c4dee94c	b6bb7e60-a82f-41d4-b9a9-0688d6c5886b	1a3dd5cc-a943-45cd-a925-69df114aa14f	a0e1b020-b22d-4317-bef9-94a69c1f2c15	Hi	f	2026-07-22 14:10:48.345314+00	2026-07-22 14:10:48.345314+00	text
1de01c3e-672d-4b0e-8c61-7ca3044f05e1	b6bb7e60-a82f-41d4-b9a9-0688d6c5886b	1a3dd5cc-a943-45cd-a925-69df114aa14f	a0e1b020-b22d-4317-bef9-94a69c1f2c15	Hi	f	2026-07-22 14:11:23.8267+00	2026-07-22 14:11:23.8267+00	text
0d2c55b7-c734-4620-a2de-700e3c0912c5	455d94e9-855e-4520-81cf-155e4f8488eb	1a3dd5cc-a943-45cd-a925-69df114aa14f	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	Hi	t	2026-07-22 14:12:21.760745+00	2026-07-22 14:12:21.760745+00	text
88c8abfd-589d-4338-88c2-1cd70e953a76	455d94e9-855e-4520-81cf-155e4f8488eb	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	1a3dd5cc-a943-45cd-a925-69df114aa14f	Hi this shahin	t	2026-07-22 14:13:37.444328+00	2026-07-22 14:13:37.444328+00	text
716d0a98-f10e-4c40-b423-847b752208e4	455d94e9-855e-4520-81cf-155e4f8488eb	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	1a3dd5cc-a943-45cd-a925-69df114aa14f	Fuck you	t	2026-07-22 14:13:52.74642+00	2026-07-22 14:13:52.74642+00	text
d2dece5a-9fed-4a3d-9dff-3d7b097eda64	b6bb7e60-a82f-41d4-b9a9-0688d6c5886b	1a3dd5cc-a943-45cd-a925-69df114aa14f	a0e1b020-b22d-4317-bef9-94a69c1f2c15	Hi	f	2026-07-22 14:37:36.658003+00	2026-07-22 14:37:36.658003+00	text
f33e54ac-9c0b-491a-a1e8-8f959200a942	b6bb7e60-a82f-41d4-b9a9-0688d6c5886b	1a3dd5cc-a943-45cd-a925-69df114aa14f	a0e1b020-b22d-4317-bef9-94a69c1f2c15	Ji	f	2026-07-22 14:37:42.152744+00	2026-07-22 14:37:42.152744+00	text
13895f1b-2b97-453d-8cda-aab5a02161f2	455d94e9-855e-4520-81cf-155e4f8488eb	1a3dd5cc-a943-45cd-a925-69df114aa14f	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	Testing	t	2026-07-22 14:26:12.018519+00	2026-07-22 14:26:12.018519+00	text
77f277c7-f3ca-404d-985b-84d8099714fb	455d94e9-855e-4520-81cf-155e4f8488eb	1a3dd5cc-a943-45cd-a925-69df114aa14f	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	Hi	t	2026-07-22 14:27:42.849872+00	2026-07-22 14:27:42.849872+00	text
87ead344-a449-41bf-941d-34e2f13280f6	455d94e9-855e-4520-81cf-155e4f8488eb	1a3dd5cc-a943-45cd-a925-69df114aa14f	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	Hi	t	2026-07-22 14:27:47.140777+00	2026-07-22 14:27:47.140777+00	text
e470ff17-fb74-4bad-8668-162dee3340fb	455d94e9-855e-4520-81cf-155e4f8488eb	1a3dd5cc-a943-45cd-a925-69df114aa14f	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	Hi	t	2026-07-22 14:32:18.643372+00	2026-07-22 14:32:18.643372+00	text
1892dc5a-21e7-44d2-9049-1b58b4c21522	455d94e9-855e-4520-81cf-155e4f8488eb	1a3dd5cc-a943-45cd-a925-69df114aa14f	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	Sathi	t	2026-07-22 14:32:28.83394+00	2026-07-22 14:32:28.83394+00	text
6ece53d2-0f0e-4c57-81a1-ce68eed77d6d	455d94e9-855e-4520-81cf-155e4f8488eb	1a3dd5cc-a943-45cd-a925-69df114aa14f	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	Hi	t	2026-07-22 14:37:22.379627+00	2026-07-22 14:37:22.379627+00	text
31930c4f-0a83-468b-8098-43202fff61a3	455d94e9-855e-4520-81cf-155e4f8488eb	1a3dd5cc-a943-45cd-a925-69df114aa14f	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	Hi	t	2026-07-22 14:37:27.481239+00	2026-07-22 14:37:27.481239+00	text
6035a97b-40bf-42e9-8531-3fbbe2430cb2	9ca1bed2-9932-4c44-8dde-7179f02219da	1a3dd5cc-a943-45cd-a925-69df114aa14f	a0e1b020-b22d-4317-bef9-94a69c1f2c15	Hi	t	2026-07-22 14:43:52.042231+00	2026-07-22 14:43:52.042231+00	text
349e04f4-ba53-45d6-b9b6-3f4f94f90555	9ca1bed2-9932-4c44-8dde-7179f02219da	1a3dd5cc-a943-45cd-a925-69df114aa14f	a0e1b020-b22d-4317-bef9-94a69c1f2c15	Hi	t	2026-07-22 14:51:38.765774+00	2026-07-22 14:51:38.765774+00	text
0da7bf71-f3db-478a-9773-187b2e29abaa	9ca1bed2-9932-4c44-8dde-7179f02219da	a0e1b020-b22d-4317-bef9-94a69c1f2c15	1a3dd5cc-a943-45cd-a925-69df114aa14f	Hi	t	2026-07-22 15:03:45.644521+00	2026-07-22 15:03:45.644521+00	text
ad133964-316e-4775-b314-c6690e9b52fe	9ca1bed2-9932-4c44-8dde-7179f02219da	1a3dd5cc-a943-45cd-a925-69df114aa14f	a0e1b020-b22d-4317-bef9-94a69c1f2c15	Hi	f	2026-07-22 15:05:10.666598+00	2026-07-22 15:05:10.666598+00	text
88f4712c-6bc4-4906-b22f-cc393489e801	cc1ebb3e-be9f-458d-837d-f9ff816fc034	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	1a3dd5cc-a943-45cd-a925-69df114aa14f	Hi	f	2026-07-23 13:03:01.062429+00	2026-07-23 13:03:01.062429+00	text
8841a792-5540-4220-b9de-c373623f0169	cc1ebb3e-be9f-458d-837d-f9ff816fc034	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	1a3dd5cc-a943-45cd-a925-69df114aa14f	Kiol	f	2026-07-23 13:04:43.515207+00	2026-07-23 13:04:43.515207+00	text
8b24d2bf-5577-4b92-a8d9-088bf8e514d6	cc1ebb3e-be9f-458d-837d-f9ff816fc034	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	1a3dd5cc-a943-45cd-a925-69df114aa14f	Hi	f	2026-07-23 13:29:36.850754+00	2026-07-23 13:29:36.850754+00	text
3e2bb299-5019-4487-b6a0-3fde8ead2805	cab91bcb-3f20-4de3-8b0b-7d861e9731d0	1a3dd5cc-a943-45cd-a925-69df114aa14f	a0e1b020-b22d-4317-bef9-94a69c1f2c15	Hi	f	2026-07-23 17:24:30.269377+00	2026-07-23 17:24:30.269377+00	text
02009e70-76a7-429d-8464-36dadf946fc9	4cd2b37e-f3d1-442a-a44a-1f14a5007ef6	1a3dd5cc-a943-45cd-a925-69df114aa14f	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	Hi	t	2026-07-23 17:24:50.021792+00	2026-07-23 17:24:50.021792+00	text
713d2bc0-6460-4050-872f-9f640ba9c404	4cd2b37e-f3d1-442a-a44a-1f14a5007ef6	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	1a3dd5cc-a943-45cd-a925-69df114aa14f	Hi	t	2026-07-23 17:37:06.192308+00	2026-07-23 17:37:06.192308+00	text
5cd95379-a270-425a-b23a-0f02ad79c798	c4727254-46a6-48e9-8d55-00a80752ac69	1a3dd5cc-a943-45cd-a925-69df114aa14f	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	Hi	f	2026-07-23 20:20:41.758104+00	2026-07-23 20:20:41.758104+00	text
4785ccde-6bc1-4b65-9190-671f84d1cd5b	a751cadb-469d-4acc-979b-e0a093a205e6	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	1a3dd5cc-a943-45cd-a925-69df114aa14f	Hi	f	2026-07-23 20:30:11.176849+00	2026-07-23 20:30:11.176849+00	text
84427cee-243b-4c33-b175-0b4dfdcfd08a	3ee0fd11-6026-4b77-b7b6-88886619f016	1a3dd5cc-a943-45cd-a925-69df114aa14f	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	Hi	f	2026-07-23 20:30:36.602082+00	2026-07-23 20:30:36.602082+00	text
5751dd19-b361-41cc-a8c2-9d78cfba249a	3ee0fd11-6026-4b77-b7b6-88886619f016	1a3dd5cc-a943-45cd-a925-69df114aa14f	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	Hi	f	2026-07-23 20:30:48.234087+00	2026-07-23 20:30:48.234087+00	text
42346f3b-25fb-46b1-aa7b-d46375a016b3	c23eaa66-d2e8-4709-ab38-33d97b3dcb95	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	ea1e230b-cfd2-4ec8-9baa-4fa23a992dca	Hi	f	2026-07-23 22:28:04.04803+00	2026-07-23 22:28:04.04803+00	text
168b0e0c-3361-4385-a3f8-019ddb2913af	9c4bd8ff-8272-40c3-a324-cb564496fe57	1a3dd5cc-a943-45cd-a925-69df114aa14f	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	Hi	t	2026-07-24 06:29:25.524172+00	2026-07-24 06:29:25.524172+00	text
eb7880d5-c641-4a7e-bf42-e0ca1ec7bd05	9c4bd8ff-8272-40c3-a324-cb564496fe57	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	1a3dd5cc-a943-45cd-a925-69df114aa14f	Hi	t	2026-07-24 06:30:08.071226+00	2026-07-24 06:30:08.071226+00	text
58ff9b4f-b99e-4fd9-8adb-71fba8314ac4	9c4bd8ff-8272-40c3-a324-cb564496fe57	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	1a3dd5cc-a943-45cd-a925-69df114aa14f	12.30am friday 25th july	t	2026-07-24 06:30:31.716361+00	2026-07-24 06:30:31.716361+00	text
1e785ca2-1999-4b86-9f24-9f8d562212e2	9c4bd8ff-8272-40c3-a324-cb564496fe57	1a3dd5cc-a943-45cd-a925-69df114aa14f	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	This is new orders 	t	2026-07-24 06:31:18.383793+00	2026-07-24 06:31:18.383793+00	text
b1c8cc71-dd49-41d0-a96b-6e3ff0036ccb	9c4bd8ff-8272-40c3-a324-cb564496fe57	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	1a3dd5cc-a943-45cd-a925-69df114aa14f	Hi	t	2026-07-24 07:04:31.85872+00	2026-07-24 07:04:31.85872+00	text
f11881ad-7334-438f-8b3b-867560d7a11d	9c4bd8ff-8272-40c3-a324-cb564496fe57	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	1a3dd5cc-a943-45cd-a925-69df114aa14f	Hi	t	2026-07-24 09:49:11.100153+00	2026-07-24 09:49:11.100153+00	text
18c139fc-d906-4fc8-8853-7dd09e3ae0e7	9c4bd8ff-8272-40c3-a324-cb564496fe57	1a3dd5cc-a943-45cd-a925-69df114aa14f	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	Hi	t	2026-07-24 09:51:29.020609+00	2026-07-24 09:51:29.020609+00	text
fff071b2-871b-4590-9cf6-5eee5852937f	9c4bd8ff-8272-40c3-a324-cb564496fe57	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	1a3dd5cc-a943-45cd-a925-69df114aa14f	Hi	t	2026-07-24 09:52:05.899378+00	2026-07-24 09:52:05.899378+00	text
ca8384b1-44de-41f4-b849-583626379d8d	9c4bd8ff-8272-40c3-a324-cb564496fe57	1a3dd5cc-a943-45cd-a925-69df114aa14f	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	Hi	t	2026-07-24 14:05:29.412953+00	2026-07-24 14:05:29.412953+00	text
9a02ac0d-fd1f-471a-b38c-29338386a63c	9c4bd8ff-8272-40c3-a324-cb564496fe57	1a3dd5cc-a943-45cd-a925-69df114aa14f	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	His 	t	2026-07-24 14:05:45.675608+00	2026-07-24 14:05:45.675608+00	text
9f4ca45c-a257-4af3-a43f-db9443f4624e	9c4bd8ff-8272-40c3-a324-cb564496fe57	1a3dd5cc-a943-45cd-a925-69df114aa14f	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	Please accept the delivery 	t	2026-07-24 14:11:43.451126+00	2026-07-24 14:11:43.451126+00	text
8e568432-def8-4fd6-9b02-f106ab3a8a2c	9c4bd8ff-8272-40c3-a324-cb564496fe57	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	1a3dd5cc-a943-45cd-a925-69df114aa14f	I did	t	2026-07-24 15:32:21.181012+00	2026-07-24 15:32:21.181012+00	text
ab078134-e98b-41fe-b16f-d3982b38940c	18f27c24-4bf0-4112-a59d-74dd3e221025	a0e1b020-b22d-4317-bef9-94a69c1f2c15	1a3dd5cc-a943-45cd-a925-69df114aa14f	Hi	t	2026-07-24 23:11:46.667525+00	2026-07-24 23:11:46.667525+00	text
ffb5f6fa-5d78-492a-9256-237051e3058d	89c56320-16fa-427f-a3aa-22f4a4414fab	a0e1b020-b22d-4317-bef9-94a69c1f2c15	fed16cd3-2673-4355-ac94-a3289224ab6d	Hi	f	2026-07-24 23:57:38.682436+00	2026-07-24 23:57:38.682436+00	text
c6e85cbb-4210-43be-abec-3a26651fdf1c	9c4bd8ff-8272-40c3-a324-cb564496fe57	1a3dd5cc-a943-45cd-a925-69df114aa14f	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	Hi	t	2026-07-24 23:55:07.113887+00	2026-07-24 23:55:07.113887+00	text
85721ccf-85b6-4eda-81a7-7676e2e9fa21	9c4bd8ff-8272-40c3-a324-cb564496fe57	1a3dd5cc-a943-45cd-a925-69df114aa14f	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	Hi	t	2026-07-24 23:56:34.115017+00	2026-07-24 23:56:34.115017+00	text
3610aa27-df8f-4cb4-a7c5-d12ebc256684	9c4bd8ff-8272-40c3-a324-cb564496fe57	1a3dd5cc-a943-45cd-a925-69df114aa14f	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	It's working	t	2026-07-24 23:56:41.437381+00	2026-07-24 23:56:41.437381+00	text
cd6df044-409a-40da-92e5-35ec953efba3	9c4bd8ff-8272-40c3-a324-cb564496fe57	1a3dd5cc-a943-45cd-a925-69df114aa14f	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	😃	t	2026-07-24 23:56:46.25708+00	2026-07-24 23:56:46.25708+00	text
6c3221ae-b885-4e96-8d4b-92675f9f2f2a	9c4bd8ff-8272-40c3-a324-cb564496fe57	1a3dd5cc-a943-45cd-a925-69df114aa14f	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	Ok	t	2026-07-25 00:12:30.360473+00	2026-07-25 00:12:30.360473+00	text
3c9a1ac0-37d6-4db0-916e-3ff15bdee03f	9c4bd8ff-8272-40c3-a324-cb564496fe57	1a3dd5cc-a943-45cd-a925-69df114aa14f	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	Texting	t	2026-07-25 00:12:42.136641+00	2026-07-25 00:12:42.136641+00	text
c290271f-c35d-45e3-b684-675f134dbff7	9c4bd8ff-8272-40c3-a324-cb564496fe57	1a3dd5cc-a943-45cd-a925-69df114aa14f	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	Hi	t	2026-07-25 17:22:12.525375+00	2026-07-25 17:22:12.525375+00	text
c26ff27c-b733-404a-a62e-4be8c05be924	9c4bd8ff-8272-40c3-a324-cb564496fe57	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	1a3dd5cc-a943-45cd-a925-69df114aa14f	Hi	t	2026-07-25 17:48:13.93736+00	2026-07-25 17:48:13.93736+00	text
99dfba4b-a7b6-4239-a82a-9ee41daa6a68	9c4bd8ff-8272-40c3-a324-cb564496fe57	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	1a3dd5cc-a943-45cd-a925-69df114aa14f	This is gggg	t	2026-07-25 17:48:29.87751+00	2026-07-25 17:48:29.87751+00	text
a47a22fd-e2d8-486b-91f4-acd4a2e12f84	9c4bd8ff-8272-40c3-a324-cb564496fe57	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	1a3dd5cc-a943-45cd-a925-69df114aa14f	Hi ccc	t	2026-07-25 17:49:31.320321+00	2026-07-25 17:49:31.320321+00	text
5813ef29-dfbb-4873-9a14-c41c9a80f43c	9c4bd8ff-8272-40c3-a324-cb564496fe57	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	1a3dd5cc-a943-45cd-a925-69df114aa14f	That's 	t	2026-07-25 18:16:51.545485+00	2026-07-25 18:16:51.545485+00	text
f623f8d0-b742-45c3-827d-e185fc53da25	18f27c24-4bf0-4112-a59d-74dd3e221025	a0e1b020-b22d-4317-bef9-94a69c1f2c15	1a3dd5cc-a943-45cd-a925-69df114aa14f	I am waiting sujon	t	2026-07-26 05:45:46.120342+00	2026-07-26 05:45:46.120342+00	text
6f686b3d-9ee2-42e5-8b25-75302ff22bf4	18f27c24-4bf0-4112-a59d-74dd3e221025	1a3dd5cc-a943-45cd-a925-69df114aa14f	a0e1b020-b22d-4317-bef9-94a69c1f2c15	Coming	t	2026-07-26 05:46:25.43747+00	2026-07-26 05:46:25.43747+00	text
908d317e-cdd6-4501-a2ef-860b556cbda4	d9cb3369-8df1-46af-905b-14f8ea059af5	fed16cd3-2673-4355-ac94-a3289224ab6d	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	Hi	f	2026-07-27 04:50:31.913244+00	2026-07-27 04:50:31.913244+00	text
c2184f18-bff4-4a7d-8cda-8acda0548b02	5ae0d1b0-22e9-4c54-9e9d-4a866c8e0d03	1a3dd5cc-a943-45cd-a925-69df114aa14f	bc4d5c79-829d-4b7e-9aaf-936294358391	hi	f	2026-07-27 17:59:27.7209+00	2026-07-27 17:59:27.7209+00	text
26e82167-75e6-4865-b317-1c8a0477364c	18f27c24-4bf0-4112-a59d-74dd3e221025	1a3dd5cc-a943-45cd-a925-69df114aa14f	a0e1b020-b22d-4317-bef9-94a69c1f2c15	999999	t	2026-07-27 18:06:46.270345+00	2026-07-27 18:06:46.270345+00	text
78cb19d8-2d27-46aa-a882-f6ffa1a6f18a	18f27c24-4bf0-4112-a59d-74dd3e221025	1a3dd5cc-a943-45cd-a925-69df114aa14f	a0e1b020-b22d-4317-bef9-94a69c1f2c15	Please accept the order	t	2026-07-27 18:10:05.27382+00	2026-07-27 18:10:05.27382+00	text
891ae842-74a2-4090-98ab-5d22d14ae3c1	9c4bd8ff-8272-40c3-a324-cb564496fe57	1a3dd5cc-a943-45cd-a925-69df114aa14f	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	Added Dynamic price Sign R	t	2026-07-28 15:43:09.297082+00	2026-07-28 15:43:09.297082+00	text
e52c49ae-9002-47b3-96f4-2b8fea7e005e	9c4bd8ff-8272-40c3-a324-cb564496fe57	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	1a3dd5cc-a943-45cd-a925-69df114aa14f	Do	t	2026-07-28 15:43:44.515849+00	2026-07-28 15:43:44.515849+00	text
02822c06-62a8-405d-a3dd-e5900b79ccd0	9c4bd8ff-8272-40c3-a324-cb564496fe57	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	1a3dd5cc-a943-45cd-a925-69df114aa14f	What	t	2026-07-28 15:43:48.928315+00	2026-07-28 15:43:48.928315+00	text
b2ece63d-4daf-4825-9c0b-47a9ac15ed77	9c4bd8ff-8272-40c3-a324-cb564496fe57	1a3dd5cc-a943-45cd-a925-69df114aa14f	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	Hey I have accepted your one order again	t	2026-07-28 15:45:49.689087+00	2026-07-28 15:45:49.689087+00	text
7090796e-6e2e-4ffe-b87c-faa612ac89bf	9c4bd8ff-8272-40c3-a324-cb564496fe57	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	1a3dd5cc-a943-45cd-a925-69df114aa14f	Fine lets do it	t	2026-07-29 01:57:17.755321+00	2026-07-29 01:57:17.755321+00	text
92b3a8f0-ad36-4835-972a-52170312adf7	9c4bd8ff-8272-40c3-a324-cb564496fe57	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	1a3dd5cc-a943-45cd-a925-69df114aa14f	You	t	2026-07-30 11:09:59.292403+00	2026-07-30 11:09:59.292403+00	text
01d2fc54-3694-4f9a-8ec6-55efe6eac0f7	f786037b-1ee0-4a69-a87d-aa809db0da43	1a3dd5cc-a943-45cd-a925-69df114aa14f	876bad8f-4d46-488f-abb9-7779ccede40b	Hi 10 customer@gmail.com	f	2026-07-31 17:21:33.569867+00	2026-07-31 17:21:33.569867+00	text
e7136ac0-abb0-4267-9afc-911d111c2037	f786037b-1ee0-4a69-a87d-aa809db0da43	1a3dd5cc-a943-45cd-a925-69df114aa14f	876bad8f-4d46-488f-abb9-7779ccede40b	I am driver@gmail.com	f	2026-07-31 17:21:40.67122+00	2026-07-31 17:21:40.67122+00	text
b66c2708-7177-4cd5-9c5e-53602a50c659	9115649e-26d6-42e9-9fec-1c1b31ed890a	133f926c-a98c-4b27-9ff7-e6c0cf0bec18	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	Hi	t	2026-08-01 03:58:55.728604+00	2026-08-01 03:58:55.728604+00	text
1d8c38f2-7934-4a4d-adeb-30a16f7e1cfb	9115649e-26d6-42e9-9fec-1c1b31ed890a	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	133f926c-a98c-4b27-9ff7-e6c0cf0bec18	Hi	f	2026-08-01 04:00:30.702714+00	2026-08-01 04:00:30.702714+00	text
cf0d38b7-b340-44f8-84f3-4039e667ebb5	9f6d1680-32c7-43da-9b34-2c390bc10061	24701573-d709-4acc-8858-6c96e5e79533	dd5b6be3-bf04-4cee-a971-911aa8dd9f9e	Hi	t	2026-08-01 07:22:53.471264+00	2026-08-01 07:22:53.471264+00	text
a57e084c-5b40-4557-8055-2ae6acd4e10f	9f6d1680-32c7-43da-9b34-2c390bc10061	dd5b6be3-bf04-4cee-a971-911aa8dd9f9e	24701573-d709-4acc-8858-6c96e5e79533	Hi	f	2026-08-01 07:37:35.63409+00	2026-08-01 07:37:35.63409+00	text
128a9abe-8402-4ebd-bd63-f7e1fc7fbd4b	9f6d1680-32c7-43da-9b34-2c390bc10061	dd5b6be3-bf04-4cee-a971-911aa8dd9f9e	24701573-d709-4acc-8858-6c96e5e79533	Hi	f	2026-08-01 07:51:35.740955+00	2026-08-01 07:51:35.740955+00	text
a2314c97-3403-4f0c-b149-48c7df37ae23	16f5554c-0891-42ad-8c8b-015b7da06c66	4077aebf-2c36-42ec-b99d-231991995d99	523b3a83-d224-4bb8-b636-4b814eff34f1	Hi did you arrived	t	2026-08-01 16:26:59.912488+00	2026-08-01 16:26:59.912488+00	text
b1713f37-2cc9-4706-8709-1b793ddda4bc	16f5554c-0891-42ad-8c8b-015b7da06c66	4077aebf-2c36-42ec-b99d-231991995d99	523b3a83-d224-4bb8-b636-4b814eff34f1	Yes requested please accept	t	2026-08-01 16:27:42.505636+00	2026-08-01 16:27:42.505636+00	text
e5e6efd1-2cc4-4abc-99ff-39a8888520a8	16f5554c-0891-42ad-8c8b-015b7da06c66	4077aebf-2c36-42ec-b99d-231991995d99	523b3a83-d224-4bb8-b636-4b814eff34f1	Ok	t	2026-08-01 16:28:35.855196+00	2026-08-01 16:28:35.855196+00	text
7ad0a6d6-5d23-4ef2-8128-ceb8a90b152c	16f5554c-0891-42ad-8c8b-015b7da06c66	4077aebf-2c36-42ec-b99d-231991995d99	523b3a83-d224-4bb8-b636-4b814eff34f1	Hi	t	2026-08-01 16:28:46.030183+00	2026-08-01 16:28:46.030183+00	text
aa304433-69c5-4035-825b-45ef550e5273	16f5554c-0891-42ad-8c8b-015b7da06c66	4077aebf-2c36-42ec-b99d-231991995d99	523b3a83-d224-4bb8-b636-4b814eff34f1	It's me	t	2026-08-01 16:30:01.212586+00	2026-08-01 16:30:01.212586+00	text
1773a019-f47a-49e8-87c4-b164ba15c737	16f5554c-0891-42ad-8c8b-015b7da06c66	4077aebf-2c36-42ec-b99d-231991995d99	523b3a83-d224-4bb8-b636-4b814eff34f1	Hi	t	2026-08-01 17:32:50.990022+00	2026-08-01 17:32:50.990022+00	text
fabf4944-4b93-48ed-9157-354923eb6613	9c4bd8ff-8272-40c3-a324-cb564496fe57	1a3dd5cc-a943-45cd-a925-69df114aa14f	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	Fine	t	2026-07-31 10:33:28.698693+00	2026-07-31 10:33:28.698693+00	text
ff9cb339-d4a1-46dc-a417-76bee6390ec1	9c4bd8ff-8272-40c3-a324-cb564496fe57	1a3dd5cc-a943-45cd-a925-69df114aa14f	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	Ok	t	2026-07-31 10:33:37.960591+00	2026-07-31 10:33:37.960591+00	text
05dd61ca-4715-4855-adfe-7a7f2302be59	7f1977d2-15d2-4812-8069-88798d5183ae	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	2351c2dd-edb3-47c0-8653-a7da824819f8	Hi	f	2026-08-01 17:37:43.905355+00	2026-08-01 17:37:43.905355+00	text
369f5301-20a0-426f-9181-fc5cb5c7e002	7f1977d2-15d2-4812-8069-88798d5183ae	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	2351c2dd-edb3-47c0-8653-a7da824819f8	You 	f	2026-08-01 17:37:48.746767+00	2026-08-01 17:37:48.746767+00	text
d4cd0d98-a748-47bd-b615-500373fad7d8	18f27c24-4bf0-4112-a59d-74dd3e221025	1a3dd5cc-a943-45cd-a925-69df114aa14f	a0e1b020-b22d-4317-bef9-94a69c1f2c15	Hi	t	2026-08-01 17:36:40.905286+00	2026-08-01 17:36:40.905286+00	text
b70ff750-569e-41a6-b0ce-05c8b73754bc	18f27c24-4bf0-4112-a59d-74dd3e221025	a0e1b020-b22d-4317-bef9-94a69c1f2c15	1a3dd5cc-a943-45cd-a925-69df114aa14f	Checking 	f	2026-08-01 17:39:49.458994+00	2026-08-01 17:39:49.458994+00	text
c3fe3d05-9632-4227-99fa-8bdf2165d611	9c4bd8ff-8272-40c3-a324-cb564496fe57	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	1a3dd5cc-a943-45cd-a925-69df114aa14f	Hi	t	2026-08-01 17:37:35.246341+00	2026-08-01 17:37:35.246341+00	text
fbd7a477-4ad1-445b-84f9-ff200df913ad	9c4bd8ff-8272-40c3-a324-cb564496fe57	1a3dd5cc-a943-45cd-a925-69df114aa14f	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	Hi	t	2026-08-01 17:40:41.302842+00	2026-08-01 17:40:41.302842+00	text
292c36c2-3068-427c-8548-752481508dd8	9c4bd8ff-8272-40c3-a324-cb564496fe57	1a3dd5cc-a943-45cd-a925-69df114aa14f	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	Lets see if it works 	t	2026-08-01 17:40:49.584009+00	2026-08-01 17:40:49.584009+00	text
9faf0a16-a49e-4872-8eac-8a502b7b9e13	9c4bd8ff-8272-40c3-a324-cb564496fe57	1a3dd5cc-a943-45cd-a925-69df114aa14f	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	Yes	t	2026-08-01 17:41:16.012335+00	2026-08-01 17:41:16.012335+00	text
cb88ebd6-883a-413b-8789-d73f050008f9	9c4bd8ff-8272-40c3-a324-cb564496fe57	1a3dd5cc-a943-45cd-a925-69df114aa14f	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	Not working 	t	2026-08-01 17:41:28.857277+00	2026-08-01 17:41:28.857277+00	text
e5e9a9c3-6caf-4331-968a-91591524a6e4	16f5554c-0891-42ad-8c8b-015b7da06c66	523b3a83-d224-4bb8-b636-4b814eff34f1	4077aebf-2c36-42ec-b99d-231991995d99	So waht 	t	2026-08-01 17:33:22.698088+00	2026-08-01 17:33:22.698088+00	text
591f0e6f-dd25-40a6-8ae7-bdd30a154de0	16f5554c-0891-42ad-8c8b-015b7da06c66	523b3a83-d224-4bb8-b636-4b814eff34f1	4077aebf-2c36-42ec-b99d-231991995d99	So whay	t	2026-08-01 17:33:28.928625+00	2026-08-01 17:33:28.928625+00	text
a6339125-211f-4968-9550-ccbae784a0d2	16f5554c-0891-42ad-8c8b-015b7da06c66	523b3a83-d224-4bb8-b636-4b814eff34f1	4077aebf-2c36-42ec-b99d-231991995d99	Checking 	t	2026-08-01 17:33:35.362743+00	2026-08-01 17:33:35.362743+00	text
6638c62c-f60d-434a-8a54-2b5c80953c66	16f5554c-0891-42ad-8c8b-015b7da06c66	523b3a83-d224-4bb8-b636-4b814eff34f1	4077aebf-2c36-42ec-b99d-231991995d99	Hi	t	2026-08-01 17:34:19.509399+00	2026-08-01 17:34:19.509399+00	text
0e37d7a3-14ce-4f6d-accf-de7cf490cfab	16f5554c-0891-42ad-8c8b-015b7da06c66	523b3a83-d224-4bb8-b636-4b814eff34f1	4077aebf-2c36-42ec-b99d-231991995d99	Is it is worked 	t	2026-08-01 17:34:37.549779+00	2026-08-01 17:34:37.549779+00	text
fdc5f137-a363-4a21-a34d-30396e585798	16f5554c-0891-42ad-8c8b-015b7da06c66	523b3a83-d224-4bb8-b636-4b814eff34f1	4077aebf-2c36-42ec-b99d-231991995d99	I am c39 writing 	t	2026-08-01 17:34:59.667719+00	2026-08-01 17:34:59.667719+00	text
ee07b906-cba9-4ee2-ad49-7b89596f6478	16f5554c-0891-42ad-8c8b-015b7da06c66	523b3a83-d224-4bb8-b636-4b814eff34f1	4077aebf-2c36-42ec-b99d-231991995d99	I am d39 writing 	t	2026-08-01 17:35:31.28877+00	2026-08-01 17:35:31.28877+00	text
77574cd1-0095-4db3-a3b2-aaef67d4049d	16f5554c-0891-42ad-8c8b-015b7da06c66	523b3a83-d224-4bb8-b636-4b814eff34f1	4077aebf-2c36-42ec-b99d-231991995d99	Hi	t	2026-08-01 18:01:43.085583+00	2026-08-01 18:01:43.085583+00	text
bf9574d1-7305-40e7-9e38-2800f206767f	16f5554c-0891-42ad-8c8b-015b7da06c66	523b3a83-d224-4bb8-b636-4b814eff34f1	4077aebf-2c36-42ec-b99d-231991995d99	Hi	t	2026-08-01 18:02:05.462298+00	2026-08-01 18:02:05.462298+00	text
cecab145-2130-4c71-a021-8eb572d61674	16f5554c-0891-42ad-8c8b-015b7da06c66	4077aebf-2c36-42ec-b99d-231991995d99	523b3a83-d224-4bb8-b636-4b814eff34f1	I am c39 writing 	t	2026-08-01 18:02:51.654009+00	2026-08-01 18:02:51.654009+00	text
5a6b74a7-bda0-4cba-9758-08cb41f8c985	16f5554c-0891-42ad-8c8b-015b7da06c66	4077aebf-2c36-42ec-b99d-231991995d99	523b3a83-d224-4bb8-b636-4b814eff34f1	I c39	t	2026-08-01 18:16:40.403004+00	2026-08-01 18:16:40.403004+00	text
74a86758-cbf0-4151-8314-1c05d1275236	16f5554c-0891-42ad-8c8b-015b7da06c66	523b3a83-d224-4bb8-b636-4b814eff34f1	4077aebf-2c36-42ec-b99d-231991995d99	I am d39 writing 	t	2026-08-01 18:17:04.713508+00	2026-08-01 18:17:04.713508+00	text
a12a2d65-b556-4295-a0f6-d4ac3de19e48	16f5554c-0891-42ad-8c8b-015b7da06c66	523b3a83-d224-4bb8-b636-4b814eff34f1	4077aebf-2c36-42ec-b99d-231991995d99	I am c39 writing 	t	2026-08-01 18:17:47.936685+00	2026-08-01 18:17:47.936685+00	text
23030078-ccd0-4d5d-a8e3-805c3803e958	16f5554c-0891-42ad-8c8b-015b7da06c66	523b3a83-d224-4bb8-b636-4b814eff34f1	4077aebf-2c36-42ec-b99d-231991995d99	I am c39	t	2026-08-01 18:20:40.091709+00	2026-08-01 18:20:40.091709+00	text
37b670f2-cd68-4af8-9916-d9e038c91054	16f5554c-0891-42ad-8c8b-015b7da06c66	523b3a83-d224-4bb8-b636-4b814eff34f1	4077aebf-2c36-42ec-b99d-231991995d99	I am d39	t	2026-08-01 18:21:15.504893+00	2026-08-01 18:21:15.504893+00	text
6c54a430-e466-463e-89c6-3af3e21ba0fe	16f5554c-0891-42ad-8c8b-015b7da06c66	4077aebf-2c36-42ec-b99d-231991995d99	523b3a83-d224-4bb8-b636-4b814eff34f1	I  c39 writing 	t	2026-08-02 04:22:09.306363+00	2026-08-02 04:22:09.306363+00	text
194b9802-0c13-493a-8622-d89d84b597ba	16f5554c-0891-42ad-8c8b-015b7da06c66	523b3a83-d224-4bb8-b636-4b814eff34f1	4077aebf-2c36-42ec-b99d-231991995d99	I am d39 writing 	t	2026-08-02 04:22:37.465696+00	2026-08-02 04:22:37.465696+00	text
72145c5c-ef51-4e24-8476-a7ea696bdcaf	16f5554c-0891-42ad-8c8b-015b7da06c66	4077aebf-2c36-42ec-b99d-231991995d99	523b3a83-d224-4bb8-b636-4b814eff34f1	I am d39 writing 	t	2026-08-02 04:23:12.047568+00	2026-08-02 04:23:12.047568+00	text
35def300-93e3-4a87-8c79-b97c7cc2f039	16f5554c-0891-42ad-8c8b-015b7da06c66	4077aebf-2c36-42ec-b99d-231991995d99	523b3a83-d224-4bb8-b636-4b814eff34f1	Sorru I am c39 writing 	t	2026-08-02 04:23:31.364104+00	2026-08-02 04:23:31.364104+00	text
5b550c1a-9a61-4c12-9995-a3133c9654ff	16f5554c-0891-42ad-8c8b-015b7da06c66	4077aebf-2c36-42ec-b99d-231991995d99	523b3a83-d224-4bb8-b636-4b814eff34f1	This 2 will seeen	t	2026-08-02 04:23:53.86273+00	2026-08-02 04:23:53.86273+00	text
8fdaa08e-7f33-4fcd-99b2-45383ce6f41e	16f5554c-0891-42ad-8c8b-015b7da06c66	523b3a83-d224-4bb8-b636-4b814eff34f1	4077aebf-2c36-42ec-b99d-231991995d99	Yes I have seen	t	2026-08-02 04:24:22.390427+00	2026-08-02 04:24:22.390427+00	text
c21bfed9-2cdd-4466-89d9-0b0f913b7391	16f5554c-0891-42ad-8c8b-015b7da06c66	4077aebf-2c36-42ec-b99d-231991995d99	523b3a83-d224-4bb8-b636-4b814eff34f1	Thanks	f	2026-08-02 04:24:53.154678+00	2026-08-02 04:24:53.154678+00	text
b242259a-bf09-4f9b-9442-1607733db193	f843385c-faa6-4c36-9e5b-530e67cc18dc	7a65ce1a-e8ed-4777-b6ac-a8b9151cd61a	bc42af3f-3f33-455c-b42f-c59ee761541e	Hi i am c40	t	2026-08-02 04:32:45.574191+00	2026-08-02 04:32:45.574191+00	text
963c6d07-bcfc-4448-9032-50c19bf6d9a9	f843385c-faa6-4c36-9e5b-530e67cc18dc	7a65ce1a-e8ed-4777-b6ac-a8b9151cd61a	bc42af3f-3f33-455c-b42f-c59ee761541e	Hi  i am d40 sorry	t	2026-08-02 04:33:38.182292+00	2026-08-02 04:33:38.182292+00	text
f352ab07-a3eb-4cdc-a4cf-13a55764f9ff	f843385c-faa6-4c36-9e5b-530e67cc18dc	7a65ce1a-e8ed-4777-b6ac-a8b9151cd61a	bc42af3f-3f33-455c-b42f-c59ee761541e	When I came beck again	t	2026-08-02 04:33:50.285082+00	2026-08-02 04:33:50.285082+00	text
81529364-e92a-4c7d-a0a7-e47a9a56dcce	f843385c-faa6-4c36-9e5b-530e67cc18dc	7a65ce1a-e8ed-4777-b6ac-a8b9151cd61a	bc42af3f-3f33-455c-b42f-c59ee761541e	I am d40 writing 	t	2026-08-02 04:35:28.043108+00	2026-08-02 04:35:28.043108+00	text
a5b4f54c-d804-414d-817e-180693f90f80	f843385c-faa6-4c36-9e5b-530e67cc18dc	7a65ce1a-e8ed-4777-b6ac-a8b9151cd61a	bc42af3f-3f33-455c-b42f-c59ee761541e	This 4 meesge will mark as seen	t	2026-08-02 04:34:01.113058+00	2026-08-02 04:34:01.113058+00	text
93333427-57a4-41c4-b6e7-ea597688d265	f843385c-faa6-4c36-9e5b-530e67cc18dc	bc42af3f-3f33-455c-b42f-c59ee761541e	7a65ce1a-e8ed-4777-b6ac-a8b9151cd61a	All going same side 	t	2026-08-02 04:36:19.2346+00	2026-08-02 04:36:19.2346+00	text
8624f7b7-51de-4367-8b39-51c637316f17	f843385c-faa6-4c36-9e5b-530e67cc18dc	bc42af3f-3f33-455c-b42f-c59ee761541e	7a65ce1a-e8ed-4777-b6ac-a8b9151cd61a	Why	t	2026-08-02 04:36:22.669337+00	2026-08-02 04:36:22.669337+00	text
6d360416-a0ac-4257-b981-a37c9138af5f	f843385c-faa6-4c36-9e5b-530e67cc18dc	bc42af3f-3f33-455c-b42f-c59ee761541e	7a65ce1a-e8ed-4777-b6ac-a8b9151cd61a	D40	t	2026-08-02 04:36:38.43615+00	2026-08-02 04:36:38.43615+00	text
7244a231-9833-4b5d-a644-340d08962fe8	f843385c-faa6-4c36-9e5b-530e67cc18dc	bc42af3f-3f33-455c-b42f-c59ee761541e	7a65ce1a-e8ed-4777-b6ac-a8b9151cd61a	I. C40	t	2026-08-02 04:37:04.344092+00	2026-08-02 04:37:04.344092+00	text
a4de6539-f75c-4435-af80-53384b239b3d	f843385c-faa6-4c36-9e5b-530e67cc18dc	bc42af3f-3f33-455c-b42f-c59ee761541e	7a65ce1a-e8ed-4777-b6ac-a8b9151cd61a	Why going same side	t	2026-08-02 04:37:16.452299+00	2026-08-02 04:37:16.452299+00	text
2ba73e59-0c0b-421b-a2ff-0ffd9ebd575a	f843385c-faa6-4c36-9e5b-530e67cc18dc	7a65ce1a-e8ed-4777-b6ac-a8b9151cd61a	bc42af3f-3f33-455c-b42f-c59ee761541e	I am c40	t	2026-08-02 04:38:04.313417+00	2026-08-02 04:38:04.313417+00	text
ed5b0642-315c-4aee-9c72-ca2f3ef08c65	f843385c-faa6-4c36-9e5b-530e67cc18dc	7a65ce1a-e8ed-4777-b6ac-a8b9151cd61a	bc42af3f-3f33-455c-b42f-c59ee761541e	Writing 	t	2026-08-02 04:38:10.342493+00	2026-08-02 04:38:10.342493+00	text
525a53e6-0900-4c20-b735-253886455f9f	f843385c-faa6-4c36-9e5b-530e67cc18dc	7a65ce1a-e8ed-4777-b6ac-a8b9151cd61a	bc42af3f-3f33-455c-b42f-c59ee761541e	I am d40 writing 	t	2026-08-02 04:38:53.828953+00	2026-08-02 04:38:53.828953+00	text
e2fb23b3-5ad9-44d5-9d6d-07cd6f7971d9	f843385c-faa6-4c36-9e5b-530e67cc18dc	7a65ce1a-e8ed-4777-b6ac-a8b9151cd61a	bc42af3f-3f33-455c-b42f-c59ee761541e	I am writing 	t	2026-08-02 04:40:41.524881+00	2026-08-02 04:40:41.524881+00	text
13f92b80-f11f-4e37-a32f-1f11b9f3e532	f843385c-faa6-4c36-9e5b-530e67cc18dc	7a65ce1a-e8ed-4777-b6ac-a8b9151cd61a	bc42af3f-3f33-455c-b42f-c59ee761541e	D40	t	2026-08-02 04:40:43.981466+00	2026-08-02 04:40:43.981466+00	text
8cc8da70-570d-49dd-8fa2-8c628040f1d4	f843385c-faa6-4c36-9e5b-530e67cc18dc	7a65ce1a-e8ed-4777-b6ac-a8b9151cd61a	bc42af3f-3f33-455c-b42f-c59ee761541e	D40 	t	2026-08-02 04:40:49.985411+00	2026-08-02 04:40:49.985411+00	text
fa4139b0-ca24-488d-88f8-6f8923534e2e	f843385c-faa6-4c36-9e5b-530e67cc18dc	bc42af3f-3f33-455c-b42f-c59ee761541e	7a65ce1a-e8ed-4777-b6ac-a8b9151cd61a	I am c40	t	2026-08-02 04:41:17.654842+00	2026-08-02 04:41:17.654842+00	text
77e5838d-f22b-4832-9782-ff0bb732ab40	f843385c-faa6-4c36-9e5b-530e67cc18dc	7a65ce1a-e8ed-4777-b6ac-a8b9151cd61a	bc42af3f-3f33-455c-b42f-c59ee761541e	I am d40	t	2026-08-02 04:41:53.697493+00	2026-08-02 04:41:53.697493+00	text
25c5c22b-a122-434f-bd8f-241c45b63f05	f843385c-faa6-4c36-9e5b-530e67cc18dc	7a65ce1a-e8ed-4777-b6ac-a8b9151cd61a	bc42af3f-3f33-455c-b42f-c59ee761541e	I am d40	t	2026-08-02 04:44:19.08155+00	2026-08-02 04:44:19.08155+00	text
1c20ce40-b841-4031-9102-55beee58b967	f843385c-faa6-4c36-9e5b-530e67cc18dc	bc42af3f-3f33-455c-b42f-c59ee761541e	7a65ce1a-e8ed-4777-b6ac-a8b9151cd61a	I am c40	t	2026-08-02 04:44:44.53811+00	2026-08-02 04:44:44.53811+00	text
f58ed769-af66-4599-b3a5-2688a174dbd9	f843385c-faa6-4c36-9e5b-530e67cc18dc	7a65ce1a-e8ed-4777-b6ac-a8b9151cd61a	bc42af3f-3f33-455c-b42f-c59ee761541e	I am d40	f	2026-08-02 04:45:13.89115+00	2026-08-02 04:45:13.89115+00	text
b761a63d-5089-457d-bede-7ab712c85d26	9c4bd8ff-8272-40c3-a324-cb564496fe57	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	1a3dd5cc-a943-45cd-a925-69df114aa14f	Hi i am 	t	2026-08-02 04:45:39.890993+00	2026-08-02 04:45:39.890993+00	text
96fa0f39-7488-4cf2-b74d-cd06f82bc222	9c4bd8ff-8272-40c3-a324-cb564496fe57	1a3dd5cc-a943-45cd-a925-69df114aa14f	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	Thanks	f	2026-08-02 04:48:06.584156+00	2026-08-02 04:48:06.584156+00	text
18b48fb5-7681-4a68-a503-15d40793bc6e	c16a87f1-41cb-4ced-b518-e7e6da0986d3	ad9049ad-da91-4eef-9d1e-8359b35af82b	82354dcd-3fe9-42d6-8e76-f344db116242	Hi I am d42 Driver 	t	2026-08-02 04:49:20.108797+00	2026-08-02 04:49:20.108797+00	text
8976b2e2-714b-410f-98b8-9f00474f13fd	c16a87f1-41cb-4ced-b518-e7e6da0986d3	82354dcd-3fe9-42d6-8e76-f344db116242	ad9049ad-da91-4eef-9d1e-8359b35af82b	I am c42 customer 	t	2026-08-02 04:53:07.389698+00	2026-08-02 04:53:07.389698+00	text
d6651798-e3f0-4728-9236-b48e537fa981	c16a87f1-41cb-4ced-b518-e7e6da0986d3	ad9049ad-da91-4eef-9d1e-8359b35af82b	82354dcd-3fe9-42d6-8e76-f344db116242	I am d42 customer please accept the order 	t	2026-08-02 04:54:05.58932+00	2026-08-02 04:54:05.58932+00	text
a2d4511d-3ce1-4908-a7ca-400e730e3789	c16a87f1-41cb-4ced-b518-e7e6da0986d3	82354dcd-3fe9-42d6-8e76-f344db116242	ad9049ad-da91-4eef-9d1e-8359b35af82b	Yes accepted 	f	2026-08-02 04:54:50.045248+00	2026-08-02 04:54:50.045248+00	text
f905a4bc-b351-4f22-93f9-3eef00815fa5	c16a87f1-41cb-4ced-b518-e7e6da0986d3	82354dcd-3fe9-42d6-8e76-f344db116242	ad9049ad-da91-4eef-9d1e-8359b35af82b	Thanks	f	2026-08-02 04:54:57.346835+00	2026-08-02 04:54:57.346835+00	text
91a637d1-3915-4013-b17e-b73d41c226a9	efeb6fa5-6e7a-451b-afcb-2442c0354ae8	689df7e6-1768-4cec-bef3-3ec3009806f4	8b3f7c15-1a6f-455a-b79e-f82eec82de24	Hi	t	2026-08-02 05:27:18.678994+00	2026-08-02 05:27:18.678994+00	text
b35342f2-79f2-497d-a919-a4ff0e631938	efeb6fa5-6e7a-451b-afcb-2442c0354ae8	689df7e6-1768-4cec-bef3-3ec3009806f4	8b3f7c15-1a6f-455a-b79e-f82eec82de24	I am d44	t	2026-08-02 05:27:29.047047+00	2026-08-02 05:27:29.047047+00	text
129fa868-b4ab-4926-a365-720649550823	efeb6fa5-6e7a-451b-afcb-2442c0354ae8	8b3f7c15-1a6f-455a-b79e-f82eec82de24	689df7e6-1768-4cec-bef3-3ec3009806f4	Hi I am c44	t	2026-08-02 05:28:47.137409+00	2026-08-02 05:28:47.137409+00	text
67b57146-98d9-4f60-b033-36f179ca8e09	efeb6fa5-6e7a-451b-afcb-2442c0354ae8	689df7e6-1768-4cec-bef3-3ec3009806f4	8b3f7c15-1a6f-455a-b79e-f82eec82de24	I am d44 writing✍️	t	2026-08-02 05:29:56.696102+00	2026-08-02 05:29:56.696102+00	text
40acbbe9-c2f6-4932-9326-62d26b8eac7f	efeb6fa5-6e7a-451b-afcb-2442c0354ae8	8b3f7c15-1a6f-455a-b79e-f82eec82de24	689df7e6-1768-4cec-bef3-3ec3009806f4	I am c44✍️	f	2026-08-02 05:30:47.129094+00	2026-08-02 05:30:47.129094+00	text
\.


--
-- Data for Name: notifications; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."notifications" ("id", "user_id", "title", "message", "is_read", "created_at") FROM stdin;
\.


--
-- Data for Name: order_assignments; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."order_assignments" ("id", "order_id", "driver_id", "assigned_at") FROM stdin;
\.


--
-- Data for Name: payments; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."payments" ("id", "order_id", "amount", "status", "stripe_payment_id", "created_at") FROM stdin;
\.


--
-- Data for Name: promotion_banners; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."promotion_banners" ("id", "title", "subtitle", "target_app", "sort_order", "is_active", "starts_at", "ends_at", "created_at", "updated_at", "tag") FROM stdin;
8ec33541-b411-4c68-aa47-e0a3c462e89c	Complimentary Dispatch	Unlock free delivery for orders above ৳3000	both	3	t	\N	\N	2026-07-29 03:46:34.222558+00	2026-07-29 03:46:34.222558+00	ELITE
54b34064-cf4a-4908-ad8d-1cd096e1cc2f	Shahin R.150 Today	Apply promo code FUEL150 on your upcoming dispatch	both	1	t	\N	\N	2026-07-29 03:46:34.222558+00	2026-07-29 03:46:34.222558+00	PROMO
3ba1046b-16fe-4719-9c6f-c6fea626995a	Priority Fleet Delivery	Experience high-speed courier drop-off in under 20 mins	both	2	t	\N	\N	2026-07-29 03:46:34.222558+00	2026-07-29 03:46:34.222558+00	EXPRESS
\.


--
-- Data for Name: vehicles; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."vehicles" ("id", "user_id", "make", "model", "year", "plate_number", "created_at") FROM stdin;
\.


--
-- Data for Name: buckets; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."buckets" ("id", "name", "owner", "created_at", "updated_at", "public", "avif_autodetection", "file_size_limit", "allowed_mime_types", "owner_id", "type") FROM stdin;
avatars	avatars	\N	2026-07-16 08:14:43.245995+00	2026-07-16 08:14:43.245995+00	t	f	5242880	\N	\N	STANDARD
\.


--
-- Data for Name: buckets_analytics; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."buckets_analytics" ("name", "type", "format", "created_at", "updated_at", "id", "deleted_at") FROM stdin;
\.


--
-- Data for Name: buckets_vectors; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."buckets_vectors" ("id", "type", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: objects; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."objects" ("id", "bucket_id", "name", "owner", "created_at", "updated_at", "last_accessed_at", "metadata", "version", "owner_id", "user_metadata") FROM stdin;
a735ebd1-cb81-48fc-9848-309af66ea2bd	avatars	1a3dd5cc-a943-45cd-a925-69df114aa14f-1784568119451.jpg	1a3dd5cc-a943-45cd-a925-69df114aa14f	2026-07-20 17:22:00.289812+00	2026-07-20 17:22:00.289812+00	2026-07-20 17:22:00.289812+00	{"eTag": "\\"f5ed5bd494c91b7d3a082cc4399b2b86\\"", "size": 360841, "mimetype": "text/plain", "cacheControl": "max-age=3600", "lastModified": "2026-07-20T17:22:01.000Z", "contentLength": 360841, "httpStatusCode": 200}	0d30c08d-8f7b-4190-9ec8-29bca1342586	1a3dd5cc-a943-45cd-a925-69df114aa14f	{}
022e08c7-2801-4f1d-8cdd-d2ce3319939c	avatars	2bdad9f6-3bc3-4ca2-b485-80f6421659d2-1784635062380.jpg	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	2026-07-21 11:57:43.37157+00	2026-07-21 11:57:43.37157+00	2026-07-21 11:57:43.37157+00	{"eTag": "\\"68bc2a6f81109c1535ec45678a81ce70\\"", "size": 80931, "mimetype": "text/plain", "cacheControl": "max-age=3600", "lastModified": "2026-07-21T11:57:44.000Z", "contentLength": 80931, "httpStatusCode": 200}	f7461103-2875-43eb-83c7-f202419037d8	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	{}
e3e8a2b0-f49c-49ef-82a3-5d1d9a133b0e	avatars	a0e1b020-b22d-4317-bef9-94a69c1f2c15-1784651289626.jpg	a0e1b020-b22d-4317-bef9-94a69c1f2c15	2026-07-21 16:28:10.355343+00	2026-07-21 16:28:10.355343+00	2026-07-21 16:28:10.355343+00	{"eTag": "\\"a3a744638798bc104318aa9b256e7a55\\"", "size": 23959, "mimetype": "text/plain", "cacheControl": "max-age=3600", "lastModified": "2026-07-21T16:28:11.000Z", "contentLength": 23959, "httpStatusCode": 200}	08e6efa8-72bf-42a1-b59e-d66a8e0f4a31	a0e1b020-b22d-4317-bef9-94a69c1f2c15	{}
c09550fb-e88b-4880-996c-f22fbdf4b472	avatars	2bdad9f6-3bc3-4ca2-b485-80f6421659d2-1784660116345.jpg	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	2026-07-21 18:55:17.390014+00	2026-07-21 18:55:17.390014+00	2026-07-21 18:55:17.390014+00	{"eTag": "\\"355feab8357ff813cb9a6febd3fbb0d0\\"", "size": 438161, "mimetype": "text/plain", "cacheControl": "max-age=3600", "lastModified": "2026-07-21T18:55:18.000Z", "contentLength": 438161, "httpStatusCode": 200}	c09c75cd-36f5-45fb-91e8-5e4c88d6b5e1	2bdad9f6-3bc3-4ca2-b485-80f6421659d2	{}
7c7ed638-f177-41c2-9ed2-2a24c89dfbbc	avatars	fed16cd3-2673-4355-ac94-a3289224ab6d-1785127873970.jpg	fed16cd3-2673-4355-ac94-a3289224ab6d	2026-07-27 04:51:14.856943+00	2026-07-27 04:51:14.856943+00	2026-07-27 04:51:14.856943+00	{"eTag": "\\"cb3c9c7af6572f01f439ebe78cc2c752\\"", "size": 11765, "mimetype": "text/plain", "cacheControl": "max-age=3600", "lastModified": "2026-07-27T04:51:15.000Z", "contentLength": 11765, "httpStatusCode": 200}	f1f1101d-77dd-4686-add5-73e48ede8be1	fed16cd3-2673-4355-ac94-a3289224ab6d	{}
\.


--
-- Data for Name: s3_multipart_uploads; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."s3_multipart_uploads" ("id", "in_progress_size", "upload_signature", "bucket_id", "key", "version", "owner_id", "created_at", "user_metadata", "metadata") FROM stdin;
\.


--
-- Data for Name: s3_multipart_uploads_parts; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."s3_multipart_uploads_parts" ("id", "upload_id", "size", "part_number", "bucket_id", "key", "etag", "owner_id", "version", "created_at") FROM stdin;
\.


--
-- Data for Name: vector_indexes; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."vector_indexes" ("id", "name", "bucket_id", "data_type", "dimension", "distance_metric", "metadata_configuration", "created_at", "updated_at") FROM stdin;
\.


--
-- Name: refresh_tokens_id_seq; Type: SEQUENCE SET; Schema: auth; Owner: supabase_auth_admin
--

SELECT pg_catalog.setval('"auth"."refresh_tokens_id_seq"', 862, true);


--
-- PostgreSQL database dump complete
--

-- \unrestrict ayp4jdluco1p36FrFPdkveTt6vEDv9uOroxImjujucdgx6cDkKZfEf3Vy9h7GXy

RESET ALL;
