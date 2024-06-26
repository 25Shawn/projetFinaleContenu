PGDMP  0        	            |           projetfinale    16.2 (Debian 16.2-1.pgdg120+2)    16.2     5           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            6           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            7           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            8           1262    16389    projetfinale    DATABASE     w   CREATE DATABASE projetfinale WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.UTF8';
    DROP DATABASE projetfinale;
                projetfinale_user    false            9           0    0    projetfinale    DATABASE PROPERTIES     5   ALTER DATABASE projetfinale SET "TimeZone" TO 'utc';
                     projetfinale_user    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
                projetfinale_user    false            :           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                   projetfinale_user    false    5            �            1259    16423    sous_taches    TABLE     �   CREATE TABLE public.sous_taches (
    sous_tache_id integer NOT NULL,
    titre character varying(255),
    complete boolean,
    tache_id integer
);
    DROP TABLE public.sous_taches;
       public         heap    projetfinale_user    false    5            �            1259    16422    sous_taches_sous_tache_id_seq    SEQUENCE     �   CREATE SEQUENCE public.sous_taches_sous_tache_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.sous_taches_sous_tache_id_seq;
       public          projetfinale_user    false    220    5            ;           0    0    sous_taches_sous_tache_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.sous_taches_sous_tache_id_seq OWNED BY public.sous_taches.sous_tache_id;
          public          projetfinale_user    false    219            �            1259    16409    taches    TABLE     �   CREATE TABLE public.taches (
    tache_id integer NOT NULL,
    titre character varying(255),
    description text,
    date_debut date,
    date_echeance date,
    complete boolean,
    utilisateur_id integer
);
    DROP TABLE public.taches;
       public         heap    projetfinale_user    false    5            �            1259    16408    taches_tache_id_seq    SEQUENCE     �   CREATE SEQUENCE public.taches_tache_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.taches_tache_id_seq;
       public          projetfinale_user    false    5    218            <           0    0    taches_tache_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.taches_tache_id_seq OWNED BY public.taches.tache_id;
          public          projetfinale_user    false    217            �            1259    16398    utilisateur    TABLE     �   CREATE TABLE public.utilisateur (
    utilisateur_id integer NOT NULL,
    nom character varying(100),
    prenom character varying(100),
    courriel character varying(100),
    cle_api character varying(100),
    password character varying(100)
);
    DROP TABLE public.utilisateur;
       public         heap    projetfinale_user    false    5            �            1259    16397    utilisateur_utilisateur_id_seq    SEQUENCE     �   CREATE SEQUENCE public.utilisateur_utilisateur_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.utilisateur_utilisateur_id_seq;
       public          projetfinale_user    false    5    216            =           0    0    utilisateur_utilisateur_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.utilisateur_utilisateur_id_seq OWNED BY public.utilisateur.utilisateur_id;
          public          projetfinale_user    false    215            �           2604    16426    sous_taches sous_tache_id    DEFAULT     �   ALTER TABLE ONLY public.sous_taches ALTER COLUMN sous_tache_id SET DEFAULT nextval('public.sous_taches_sous_tache_id_seq'::regclass);
 H   ALTER TABLE public.sous_taches ALTER COLUMN sous_tache_id DROP DEFAULT;
       public          projetfinale_user    false    220    219    220            �           2604    16412    taches tache_id    DEFAULT     r   ALTER TABLE ONLY public.taches ALTER COLUMN tache_id SET DEFAULT nextval('public.taches_tache_id_seq'::regclass);
 >   ALTER TABLE public.taches ALTER COLUMN tache_id DROP DEFAULT;
       public          projetfinale_user    false    217    218    218            �           2604    16401    utilisateur utilisateur_id    DEFAULT     �   ALTER TABLE ONLY public.utilisateur ALTER COLUMN utilisateur_id SET DEFAULT nextval('public.utilisateur_utilisateur_id_seq'::regclass);
 I   ALTER TABLE public.utilisateur ALTER COLUMN utilisateur_id DROP DEFAULT;
       public          projetfinale_user    false    215    216    216            2          0    16423    sous_taches 
   TABLE DATA           O   COPY public.sous_taches (sous_tache_id, titre, complete, tache_id) FROM stdin;
    public          projetfinale_user    false    220   =$       0          0    16409    taches 
   TABLE DATA           s   COPY public.taches (tache_id, titre, description, date_debut, date_echeance, complete, utilisateur_id) FROM stdin;
    public          projetfinale_user    false    218   �$       .          0    16398    utilisateur 
   TABLE DATA           _   COPY public.utilisateur (utilisateur_id, nom, prenom, courriel, cle_api, password) FROM stdin;
    public          projetfinale_user    false    216   W%       >           0    0    sous_taches_sous_tache_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.sous_taches_sous_tache_id_seq', 7, true);
          public          projetfinale_user    false    219            ?           0    0    taches_tache_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.taches_tache_id_seq', 7, true);
          public          projetfinale_user    false    217            @           0    0    utilisateur_utilisateur_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.utilisateur_utilisateur_id_seq', 1, true);
          public          projetfinale_user    false    215            �           2606    16428    sous_taches sous_taches_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.sous_taches
    ADD CONSTRAINT sous_taches_pkey PRIMARY KEY (sous_tache_id);
 F   ALTER TABLE ONLY public.sous_taches DROP CONSTRAINT sous_taches_pkey;
       public            projetfinale_user    false    220            �           2606    16416    taches taches_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.taches
    ADD CONSTRAINT taches_pkey PRIMARY KEY (tache_id);
 <   ALTER TABLE ONLY public.taches DROP CONSTRAINT taches_pkey;
       public            projetfinale_user    false    218            �           2606    16407 #   utilisateur utilisateur_cle_api_key 
   CONSTRAINT     a   ALTER TABLE ONLY public.utilisateur
    ADD CONSTRAINT utilisateur_cle_api_key UNIQUE (cle_api);
 M   ALTER TABLE ONLY public.utilisateur DROP CONSTRAINT utilisateur_cle_api_key;
       public            projetfinale_user    false    216            �           2606    16405    utilisateur utilisateur_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.utilisateur
    ADD CONSTRAINT utilisateur_pkey PRIMARY KEY (utilisateur_id);
 F   ALTER TABLE ONLY public.utilisateur DROP CONSTRAINT utilisateur_pkey;
       public            projetfinale_user    false    216            �           2606    16429 %   sous_taches sous_taches_tache_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.sous_taches
    ADD CONSTRAINT sous_taches_tache_id_fkey FOREIGN KEY (tache_id) REFERENCES public.taches(tache_id) ON DELETE CASCADE;
 O   ALTER TABLE ONLY public.sous_taches DROP CONSTRAINT sous_taches_tache_id_fkey;
       public          projetfinale_user    false    3225    220    218            �           2606    16417 !   taches taches_utilisateur_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.taches
    ADD CONSTRAINT taches_utilisateur_id_fkey FOREIGN KEY (utilisateur_id) REFERENCES public.utilisateur(utilisateur_id) ON DELETE CASCADE;
 K   ALTER TABLE ONLY public.taches DROP CONSTRAINT taches_utilisateur_id_fkey;
       public          projetfinale_user    false    3223    218    216            2   O   x�3�,�/-V(IL�H-V0�,�4�2B3�s�d��%B@�%�9�ŉ%��E M�\&��R`FH�9!1z\\\ ��E�      0   �   x��ν�0����9Ahiu6��FR�X�@����|^���I�]��w	���LXW���^Iۻ�]��L@eJ'�N�ZJ��ʣPI�+���Ge�IGe2�DeZ�uT���40�����;�}glh����֎<���z�=үl��$�?��L�o�*��      .   �   x�Mƻ�0 Й~k�V���1q��A��4,�� 6��|W�tXT��<���_m��ތ~���S�B�}��34�BP�RP�
. d��⭎�C�߾
����I}N�P���}�N��.��)��9�C��KE���6�,d     