PGDMP     	                    z            postgres    13.3    13.3     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    13442    postgres    DATABASE     d   CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_India.1252';
    DROP DATABASE postgres;
                postgres    false            �           0    0    DATABASE postgres    COMMENT     N   COMMENT ON DATABASE postgres IS 'default administrative connection database';
                   postgres    false    3007                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
                postgres    false            �           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                   postgres    false    4            �            1259    16405    book    TABLE     �   CREATE TABLE public.book (
    id smallint NOT NULL,
    name character varying(50),
    genre character varying(50),
    publisher character varying(50),
    author character varying(50),
    level smallint,
    issued character varying(50)
);
    DROP TABLE public.book;
       public         heap    postgres    false    4            �            1259    98312 	   inventory    TABLE     �   CREATE TABLE public.inventory (
    name character varying(50),
    title character varying(50),
    datei date,
    dater date,
    issued character varying(50),
    idb character varying(50),
    ids character varying(50)
);
    DROP TABLE public.inventory;
       public         heap    postgres    false    4            �            1259    49152    report    TABLE     �   CREATE TABLE public.report (
    title character varying(50),
    datei character varying(50),
    dater character varying(50)
);
    DROP TABLE public.report;
       public         heap    postgres    false    4            �            1259    16400    student    TABLE     n   CREATE TABLE public.student (
    id smallint NOT NULL,
    name character varying(50),
    grade smallint
);
    DROP TABLE public.student;
       public         heap    postgres    false    4            �          0    16405    book 
   TABLE DATA           Q   COPY public.book (id, name, genre, publisher, author, level, issued) FROM stdin;
    public          postgres    false    203   -       �          0    98312 	   inventory 
   TABLE DATA           P   COPY public.inventory (name, title, datei, dater, issued, idb, ids) FROM stdin;
    public          postgres    false    205   �       �          0    49152    report 
   TABLE DATA           5   COPY public.report (title, datei, dater) FROM stdin;
    public          postgres    false    204   	       �          0    16400    student 
   TABLE DATA           2   COPY public.student (id, name, grade) FROM stdin;
    public          postgres    false    202   �       3           2606    16409    book book_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.book
    ADD CONSTRAINT book_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.book DROP CONSTRAINT book_pkey;
       public            postgres    false    203            1           2606    16404    student student_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.student
    ADD CONSTRAINT student_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.student DROP CONSTRAINT student_pkey;
       public            postgres    false    202            �   s  x�]�Mn"1F�է�D!	�YB &DH$A�����nS�l7���k���$S�(3�Ɩ��s��|	O5�\t��Z��/s��+��T�Em60���*W��)'��cс��_���w�{۟v�cU�M)V9��'�7�N�sjl�C�'x�-�״�a#��[]oH�iBkN8Ѷd��kq}��YN2�*��B�f��7�K�m��>9�9 �|vl��^i�[��<�����y�����f�ta�7r�>�dg���:>y�LP���f�d�(���`�kƁVɖ�/(�ۏ=�Cv0��w��W5���s�a���t�4�	��_�/�氨�w�=\�E�0�'���'0k�K{h:|��Gշ��(� ��e      �   I  x��U͎�0>���d�1���FT������V+�-^b5kK@S������Ijl���搌�of�3��Q��&�Xc�L������jw��iT05�q_ޡ-+��8Yc�3a���{!rΊC�J���Hp�W&�x����{VfޗE\�8�4;#�:�L?��4p��&$-^��'�IB�o�?�7�RQT�˲!�F��%z�E�[.���u7�����#E������
m����+�f9�Ueӄ�Cjn �&:�f@�o���.@�`�K�I!-�enJK��gG:IՑO�b+�OYIy���_\�E}�Ů��|�_��m�����|��ܗ'�s���\U����	�x��9�6f���1����N��\��*Z�e:�O��ٹ������9Q��ʛ�C����J��1���䑲2�j��U�ٛ㎭;4�MdQivb���/�l���2N��h�5Q���}G����
lno�ƫǻд�f�jd�:~�� T[}3$"[T2g#)�5����H<�ך�$K��O/����?`�Y1cm�!0�{v �.`Q�w���
�x�[�V 
�r�      �   �   x���A
�0E��s�J�ji���A�7Ŏ1�f�	Hw^��ymŦQp3<���f
�Vɥx�p@1g���Х�e��+�(#��aI�>��ȱg���r�����BJt:BZ����h,^�F�����x��?�:�P�~Ǧh�8X(4���Ζx[��w(;�������nJ��`��F[mTQ�h����~�{ :�q�      �   l   x���
�0D�3S��j���"q��B��	D��M�gΜo�����[L�.E�Ϙ�2�1��+�w�e�9���]���Y��gJ�Q�U�"xi�����l.7�c-�     