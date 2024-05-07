PGDMP  ,                    |            prueba    16.0    16.0     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    24958    prueba    DATABASE     |   CREATE DATABASE prueba WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Colombia.1252';
    DROP DATABASE prueba;
                postgres    false            �            1259    24964    hibernate_sequence    SEQUENCE     {   CREATE SEQUENCE public.hibernate_sequence
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.hibernate_sequence;
       public          postgres    false            �            1259    25361    rol    TABLE     W   CREATE TABLE public.rol (
    id bigint NOT NULL,
    nombre character varying(255)
);
    DROP TABLE public.rol;
       public         heap    postgres    false            �            1259    25360 
   rol_id_seq    SEQUENCE     s   CREATE SEQUENCE public.rol_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 !   DROP SEQUENCE public.rol_id_seq;
       public          postgres    false    217            �           0    0 
   rol_id_seq    SEQUENCE OWNED BY     9   ALTER SEQUENCE public.rol_id_seq OWNED BY public.rol.id;
          public          postgres    false    216            �            1259    25367    todos    TABLE     �   CREATE TABLE public.todos (
    id bigint NOT NULL,
    description character varying(255),
    target_date timestamp without time zone,
    user_name character varying(255)
);
    DROP TABLE public.todos;
       public         heap    postgres    false            �            1259    25374    usuario    TABLE     �   CREATE TABLE public.usuario (
    id bigint NOT NULL,
    apellido character varying(255),
    nombre character varying(255),
    password character varying(255),
    username character varying(255)
);
    DROP TABLE public.usuario;
       public         heap    postgres    false            �            1259    25381    usuario_rol    TABLE     `   CREATE TABLE public.usuario_rol (
    usuario_id bigint NOT NULL,
    rol_id bigint NOT NULL
);
    DROP TABLE public.usuario_rol;
       public         heap    postgres    false            '           2604    25364    rol id    DEFAULT     `   ALTER TABLE ONLY public.rol ALTER COLUMN id SET DEFAULT nextval('public.rol_id_seq'::regclass);
 5   ALTER TABLE public.rol ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    216    217            �          0    25361    rol 
   TABLE DATA           )   COPY public.rol (id, nombre) FROM stdin;
    public          postgres    false    217   �       �          0    25367    todos 
   TABLE DATA           H   COPY public.todos (id, description, target_date, user_name) FROM stdin;
    public          postgres    false    218          �          0    25374    usuario 
   TABLE DATA           K   COPY public.usuario (id, apellido, nombre, password, username) FROM stdin;
    public          postgres    false    219   �       �          0    25381    usuario_rol 
   TABLE DATA           9   COPY public.usuario_rol (usuario_id, rol_id) FROM stdin;
    public          postgres    false    220          �           0    0    hibernate_sequence    SEQUENCE SET     @   SELECT pg_catalog.setval('public.hibernate_sequence', 7, true);
          public          postgres    false    215            �           0    0 
   rol_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('public.rol_id_seq', 1, false);
          public          postgres    false    216            )           2606    25366    rol rol_pkey 
   CONSTRAINT     J   ALTER TABLE ONLY public.rol
    ADD CONSTRAINT rol_pkey PRIMARY KEY (id);
 6   ALTER TABLE ONLY public.rol DROP CONSTRAINT rol_pkey;
       public            postgres    false    217            +           2606    25373    todos todos_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.todos
    ADD CONSTRAINT todos_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.todos DROP CONSTRAINT todos_pkey;
       public            postgres    false    218            -           2606    25385 #   usuario uk863n1y3x0jalatoir4325ehal 
   CONSTRAINT     b   ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT uk863n1y3x0jalatoir4325ehal UNIQUE (username);
 M   ALTER TABLE ONLY public.usuario DROP CONSTRAINT uk863n1y3x0jalatoir4325ehal;
       public            postgres    false    219            /           2606    25380    usuario usuario_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT usuario_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.usuario DROP CONSTRAINT usuario_pkey;
       public            postgres    false    219            0           2606    25386 '   usuario_rol fk610kvhkwcqk2pxeewur4l7bd1    FK CONSTRAINT     �   ALTER TABLE ONLY public.usuario_rol
    ADD CONSTRAINT fk610kvhkwcqk2pxeewur4l7bd1 FOREIGN KEY (rol_id) REFERENCES public.rol(id);
 Q   ALTER TABLE ONLY public.usuario_rol DROP CONSTRAINT fk610kvhkwcqk2pxeewur4l7bd1;
       public          postgres    false    217    4649    220            1           2606    25391 '   usuario_rol fkbyfgloj439r9wr9smrms9u33r    FK CONSTRAINT     �   ALTER TABLE ONLY public.usuario_rol
    ADD CONSTRAINT fkbyfgloj439r9wr9smrms9u33r FOREIGN KEY (usuario_id) REFERENCES public.usuario(id);
 Q   ALTER TABLE ONLY public.usuario_rol DROP CONSTRAINT fkbyfgloj439r9wr9smrms9u33r;
       public          postgres    false    220    4655    219            �   9   x�3���q�wt����2�pB�]���!� W�� .�58$����/ĕ+F��� �p      �   n   x�m�A
� @ѵs
/`L:u�6S	�`���%����g�����B�&���R"vWbtv�UNS������m�9<�P��+e��콍@95�,�{mrJ�� p�9�      �   p   x�%���0뽏A���DECZ�%���aG&I���@7�Ҍ�Ȓ�FØo|/ʂ�����.�Uw,�·��yi�H��m�˃�{E�a�~I%�D��Y�r�g_?��AD>�p'N      �      x�3�4�2�4�2�4�2�4����� ��     