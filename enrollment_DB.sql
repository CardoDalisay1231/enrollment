PGDMP                 
        |            enrollment_DB    15.4    15.4 I    Q           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            R           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            S           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            T           1262    17027    enrollment_DB    DATABASE     �   CREATE DATABASE "enrollment_DB" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_Philippines.1252';
    DROP DATABASE "enrollment_DB";
                postgres    false            �            1259    17080    advisers    TABLE     ]  CREATE TABLE public.advisers (
    id integer NOT NULL,
    first_name character varying(255) NOT NULL,
    middle_name character varying(255),
    last_name character varying(255) NOT NULL,
    program_id integer,
    contact_number character varying(255),
    email character varying(255) NOT NULL,
    password character varying(255) NOT NULL
);
    DROP TABLE public.advisers;
       public         heap    postgres    false            �            1259    17079    advisers_id_seq    SEQUENCE     �   CREATE SEQUENCE public.advisers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.advisers_id_seq;
       public          postgres    false    223            U           0    0    advisers_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.advisers_id_seq OWNED BY public.advisers.id;
          public          postgres    false    222            �            1259    17137 
   checklists    TABLE     d  CREATE TABLE public.checklists (
    id integer NOT NULL,
    program_id integer NOT NULL,
    year_level integer NOT NULL,
    semester character varying NOT NULL,
    course_code character varying NOT NULL,
    prerequisite_course_code character varying,
    adviser_id integer NOT NULL,
    start_year integer NOT NULL,
    end_year integer NOT NULL
);
    DROP TABLE public.checklists;
       public         heap    postgres    false            �            1259    17136    checklists_id_seq    SEQUENCE     �   CREATE SEQUENCE public.checklists_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.checklists_id_seq;
       public          postgres    false    229            V           0    0    checklists_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.checklists_id_seq OWNED BY public.checklists.id;
          public          postgres    false    228            �            1259    17107    course_prerequisites    TABLE     �   CREATE TABLE public.course_prerequisites (
    id integer NOT NULL,
    course_code character varying(50),
    prerequisite_course_code character varying(50)
);
 (   DROP TABLE public.course_prerequisites;
       public         heap    postgres    false            �            1259    17106    course_prerequisites_id_seq    SEQUENCE     �   CREATE SEQUENCE public.course_prerequisites_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.course_prerequisites_id_seq;
       public          postgres    false    227            W           0    0    course_prerequisites_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.course_prerequisites_id_seq OWNED BY public.course_prerequisites.id;
          public          postgres    false    226            �            1259    17096    courses    TABLE     �   CREATE TABLE public.courses (
    id integer NOT NULL,
    course_code character varying NOT NULL,
    course_title character varying NOT NULL,
    credit_unit_lec integer NOT NULL,
    credit_unit_lab integer NOT NULL
);
    DROP TABLE public.courses;
       public         heap    postgres    false            �            1259    17095    courses_id_seq    SEQUENCE     �   CREATE SEQUENCE public.courses_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.courses_id_seq;
       public          postgres    false    225            X           0    0    courses_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.courses_id_seq OWNED BY public.courses.id;
          public          postgres    false    224            �            1259    17029    department_heads    TABLE     :  CREATE TABLE public.department_heads (
    id integer NOT NULL,
    first_name character varying(255) NOT NULL,
    middle_name character varying(255),
    last_name character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    password character varying(255) NOT NULL,
    program_id integer
);
 $   DROP TABLE public.department_heads;
       public         heap    postgres    false            �            1259    17034    department_heads_head_id_seq    SEQUENCE     �   CREATE SEQUENCE public.department_heads_head_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.department_heads_head_id_seq;
       public          postgres    false    214            Y           0    0    department_heads_head_id_seq    SEQUENCE OWNED BY     X   ALTER SEQUENCE public.department_heads_head_id_seq OWNED BY public.department_heads.id;
          public          postgres    false    215            �            1259    17035    programs    TABLE     l   CREATE TABLE public.programs (
    id integer NOT NULL,
    program_name character varying(255) NOT NULL
);
    DROP TABLE public.programs;
       public         heap    postgres    false            �            1259    17038    programs_id_seq    SEQUENCE     �   CREATE SEQUENCE public.programs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.programs_id_seq;
       public          postgres    false    216            Z           0    0    programs_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.programs_id_seq OWNED BY public.programs.id;
          public          postgres    false    217            �            1259    17039    registrar_heads    TABLE     !  CREATE TABLE public.registrar_heads (
    id integer NOT NULL,
    first_name character varying(255) NOT NULL,
    middle_name character varying(255),
    last_name character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    password character varying(255) NOT NULL
);
 #   DROP TABLE public.registrar_heads;
       public         heap    postgres    false            �            1259    17044    registrar_heads_head_id_seq    SEQUENCE     �   CREATE SEQUENCE public.registrar_heads_head_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.registrar_heads_head_id_seq;
       public          postgres    false    218            [           0    0    registrar_heads_head_id_seq    SEQUENCE OWNED BY     V   ALTER SEQUENCE public.registrar_heads_head_id_seq OWNED BY public.registrar_heads.id;
          public          postgres    false    219            �            1259    17045    students    TABLE     �  CREATE TABLE public.students (
    id integer NOT NULL,
    first_name character varying NOT NULL,
    middle_name character varying,
    last_name character varying NOT NULL,
    email character varying NOT NULL,
    contact_number character varying,
    address character varying,
    date_of_birth date NOT NULL,
    student_type character varying NOT NULL,
    standing_year integer NOT NULL,
    semester character varying,
    password character varying NOT NULL,
    program_id integer
);
    DROP TABLE public.students;
       public         heap    postgres    false            �            1259    17050    students_student_id_seq    SEQUENCE     �   CREATE SEQUENCE public.students_student_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.students_student_id_seq;
       public          postgres    false    220            \           0    0    students_student_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.students_student_id_seq OWNED BY public.students.id;
          public          postgres    false    221            �           2604    17083    advisers id    DEFAULT     j   ALTER TABLE ONLY public.advisers ALTER COLUMN id SET DEFAULT nextval('public.advisers_id_seq'::regclass);
 :   ALTER TABLE public.advisers ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    222    223            �           2604    17140    checklists id    DEFAULT     n   ALTER TABLE ONLY public.checklists ALTER COLUMN id SET DEFAULT nextval('public.checklists_id_seq'::regclass);
 <   ALTER TABLE public.checklists ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    228    229    229            �           2604    17110    course_prerequisites id    DEFAULT     �   ALTER TABLE ONLY public.course_prerequisites ALTER COLUMN id SET DEFAULT nextval('public.course_prerequisites_id_seq'::regclass);
 F   ALTER TABLE public.course_prerequisites ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    227    226    227            �           2604    17099 
   courses id    DEFAULT     h   ALTER TABLE ONLY public.courses ALTER COLUMN id SET DEFAULT nextval('public.courses_id_seq'::regclass);
 9   ALTER TABLE public.courses ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    224    225    225            �           2604    17051    department_heads id    DEFAULT        ALTER TABLE ONLY public.department_heads ALTER COLUMN id SET DEFAULT nextval('public.department_heads_head_id_seq'::regclass);
 B   ALTER TABLE public.department_heads ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    214            �           2604    17052    programs id    DEFAULT     j   ALTER TABLE ONLY public.programs ALTER COLUMN id SET DEFAULT nextval('public.programs_id_seq'::regclass);
 :   ALTER TABLE public.programs ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    216            �           2604    17053    registrar_heads id    DEFAULT     }   ALTER TABLE ONLY public.registrar_heads ALTER COLUMN id SET DEFAULT nextval('public.registrar_heads_head_id_seq'::regclass);
 A   ALTER TABLE public.registrar_heads ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    218            �           2604    17054    students id    DEFAULT     r   ALTER TABLE ONLY public.students ALTER COLUMN id SET DEFAULT nextval('public.students_student_id_seq'::regclass);
 :   ALTER TABLE public.students ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    220            H          0    17080    advisers 
   TABLE DATA           w   COPY public.advisers (id, first_name, middle_name, last_name, program_id, contact_number, email, password) FROM stdin;
    public          postgres    false    223   �[       N          0    17137 
   checklists 
   TABLE DATA           �   COPY public.checklists (id, program_id, year_level, semester, course_code, prerequisite_course_code, adviser_id, start_year, end_year) FROM stdin;
    public          postgres    false    229   ]       L          0    17107    course_prerequisites 
   TABLE DATA           Y   COPY public.course_prerequisites (id, course_code, prerequisite_course_code) FROM stdin;
    public          postgres    false    227   )]       J          0    17096    courses 
   TABLE DATA           b   COPY public.courses (id, course_code, course_title, credit_unit_lec, credit_unit_lab) FROM stdin;
    public          postgres    false    225   F]       ?          0    17029    department_heads 
   TABLE DATA           o   COPY public.department_heads (id, first_name, middle_name, last_name, email, password, program_id) FROM stdin;
    public          postgres    false    214   �]       A          0    17035    programs 
   TABLE DATA           4   COPY public.programs (id, program_name) FROM stdin;
    public          postgres    false    216   ^       C          0    17039    registrar_heads 
   TABLE DATA           b   COPY public.registrar_heads (id, first_name, middle_name, last_name, email, password) FROM stdin;
    public          postgres    false    218   O^       E          0    17045    students 
   TABLE DATA           �   COPY public.students (id, first_name, middle_name, last_name, email, contact_number, address, date_of_birth, student_type, standing_year, semester, password, program_id) FROM stdin;
    public          postgres    false    220   �^       ]           0    0    advisers_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.advisers_id_seq', 24, true);
          public          postgres    false    222            ^           0    0    checklists_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.checklists_id_seq', 6, true);
          public          postgres    false    228            _           0    0    course_prerequisites_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.course_prerequisites_id_seq', 8, true);
          public          postgres    false    226            `           0    0    courses_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.courses_id_seq', 9, true);
          public          postgres    false    224            a           0    0    department_heads_head_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.department_heads_head_id_seq', 44, true);
          public          postgres    false    215            b           0    0    programs_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.programs_id_seq', 13, true);
          public          postgres    false    217            c           0    0    registrar_heads_head_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.registrar_heads_head_id_seq', 24, true);
          public          postgres    false    219            d           0    0    students_student_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.students_student_id_seq', 202, true);
          public          postgres    false    221            �           2606    17089    advisers advisers_email_key 
   CONSTRAINT     W   ALTER TABLE ONLY public.advisers
    ADD CONSTRAINT advisers_email_key UNIQUE (email);
 E   ALTER TABLE ONLY public.advisers DROP CONSTRAINT advisers_email_key;
       public            postgres    false    223            �           2606    17087    advisers advisers_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.advisers
    ADD CONSTRAINT advisers_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.advisers DROP CONSTRAINT advisers_pkey;
       public            postgres    false    223            �           2606    17144    checklists checklists_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.checklists
    ADD CONSTRAINT checklists_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.checklists DROP CONSTRAINT checklists_pkey;
       public            postgres    false    229            �           2606    17114 R   course_prerequisites course_prerequisites_course_code_prerequisite_course_code_key 
   CONSTRAINT     �   ALTER TABLE ONLY public.course_prerequisites
    ADD CONSTRAINT course_prerequisites_course_code_prerequisite_course_code_key UNIQUE (course_code, prerequisite_course_code);
 |   ALTER TABLE ONLY public.course_prerequisites DROP CONSTRAINT course_prerequisites_course_code_prerequisite_course_code_key;
       public            postgres    false    227    227            �           2606    17112 .   course_prerequisites course_prerequisites_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.course_prerequisites
    ADD CONSTRAINT course_prerequisites_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.course_prerequisites DROP CONSTRAINT course_prerequisites_pkey;
       public            postgres    false    227            �           2606    17105    courses courses_course_code_key 
   CONSTRAINT     a   ALTER TABLE ONLY public.courses
    ADD CONSTRAINT courses_course_code_key UNIQUE (course_code);
 I   ALTER TABLE ONLY public.courses DROP CONSTRAINT courses_course_code_key;
       public            postgres    false    225            �           2606    17103    courses courses_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.courses
    ADD CONSTRAINT courses_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.courses DROP CONSTRAINT courses_pkey;
       public            postgres    false    225            �           2606    17056 &   department_heads department_heads_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.department_heads
    ADD CONSTRAINT department_heads_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.department_heads DROP CONSTRAINT department_heads_pkey;
       public            postgres    false    214            �           2606    17058    programs programs_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.programs
    ADD CONSTRAINT programs_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.programs DROP CONSTRAINT programs_pkey;
       public            postgres    false    216            �           2606    17060 $   registrar_heads registrar_heads_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.registrar_heads
    ADD CONSTRAINT registrar_heads_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.registrar_heads DROP CONSTRAINT registrar_heads_pkey;
       public            postgres    false    218            �           2606    17062    students students_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.students DROP CONSTRAINT students_pkey;
       public            postgres    false    220            �           2606    17146 %   checklists unique_course_per_semester 
   CONSTRAINT     �   ALTER TABLE ONLY public.checklists
    ADD CONSTRAINT unique_course_per_semester UNIQUE (id, year_level, semester, course_code);
 O   ALTER TABLE ONLY public.checklists DROP CONSTRAINT unique_course_per_semester;
       public            postgres    false    229    229    229    229            �           2606    17115 :   course_prerequisites course_prerequisites_course_code_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.course_prerequisites
    ADD CONSTRAINT course_prerequisites_course_code_fkey FOREIGN KEY (course_code) REFERENCES public.courses(course_code) ON DELETE CASCADE;
 d   ALTER TABLE ONLY public.course_prerequisites DROP CONSTRAINT course_prerequisites_course_code_fkey;
       public          postgres    false    3229    227    225            �           2606    17120 G   course_prerequisites course_prerequisites_prerequisite_course_code_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.course_prerequisites
    ADD CONSTRAINT course_prerequisites_prerequisite_course_code_fkey FOREIGN KEY (prerequisite_course_code) REFERENCES public.courses(course_code) ON DELETE CASCADE;
 q   ALTER TABLE ONLY public.course_prerequisites DROP CONSTRAINT course_prerequisites_prerequisite_course_code_fkey;
       public          postgres    false    227    3229    225            �           2606    17162    checklists fk_adviser_id    FK CONSTRAINT     }   ALTER TABLE ONLY public.checklists
    ADD CONSTRAINT fk_adviser_id FOREIGN KEY (adviser_id) REFERENCES public.advisers(id);
 B   ALTER TABLE ONLY public.checklists DROP CONSTRAINT fk_adviser_id;
       public          postgres    false    3227    223    229            �           2606    17152    checklists fk_course_code    FK CONSTRAINT     �   ALTER TABLE ONLY public.checklists
    ADD CONSTRAINT fk_course_code FOREIGN KEY (course_code) REFERENCES public.courses(course_code);
 C   ALTER TABLE ONLY public.checklists DROP CONSTRAINT fk_course_code;
       public          postgres    false    3229    225    229            �           2606    17157 &   checklists fk_prerequisite_course_code    FK CONSTRAINT     �   ALTER TABLE ONLY public.checklists
    ADD CONSTRAINT fk_prerequisite_course_code FOREIGN KEY (prerequisite_course_code) REFERENCES public.courses(course_code);
 P   ALTER TABLE ONLY public.checklists DROP CONSTRAINT fk_prerequisite_course_code;
       public          postgres    false    229    225    3229            �           2606    17069    students fk_program    FK CONSTRAINT     �   ALTER TABLE ONLY public.students
    ADD CONSTRAINT fk_program FOREIGN KEY (program_id) REFERENCES public.programs(id) ON DELETE SET NULL;
 =   ALTER TABLE ONLY public.students DROP CONSTRAINT fk_program;
       public          postgres    false    220    3219    216            �           2606    17074    department_heads fk_program    FK CONSTRAINT     �   ALTER TABLE ONLY public.department_heads
    ADD CONSTRAINT fk_program FOREIGN KEY (program_id) REFERENCES public.programs(id) ON DELETE SET NULL;
 E   ALTER TABLE ONLY public.department_heads DROP CONSTRAINT fk_program;
       public          postgres    false    216    3219    214            �           2606    17090    advisers fk_program    FK CONSTRAINT     �   ALTER TABLE ONLY public.advisers
    ADD CONSTRAINT fk_program FOREIGN KEY (program_id) REFERENCES public.programs(id) ON DELETE SET NULL;
 =   ALTER TABLE ONLY public.advisers DROP CONSTRAINT fk_program;
       public          postgres    false    223    216    3219            �           2606    17147    checklists fk_program_id    FK CONSTRAINT     }   ALTER TABLE ONLY public.checklists
    ADD CONSTRAINT fk_program_id FOREIGN KEY (program_id) REFERENCES public.programs(id);
 B   ALTER TABLE ONLY public.checklists DROP CONSTRAINT fk_program_id;
       public          postgres    false    216    229    3219            H   A  x�}�Ks�@��˯����cE�XQA!�򂲺X�>X&^b�j��=]5�`U�QM�7;bh���<�)���O�v�-���to���SI�������	|��o����t�+Y(��䞱�س���έ/��otjG�Q�>% A����n`�W����iU�'1Ӄ�d3Sm��bsX󊇴a��eLK2��?��2�B��`L� �0.�K"��쾕�ꥎ�r����h)4saJ"(	m�%øbɄ�����
����e+��h��@\zx[�U�G��%8q
�4u����%S�6��o8��      N      x������ � �      L      x������ � �      J   I   x�3�t65���+)�O)M.���S(�Wp��-(-I-RN�L�KN�4�4�2�540�D�T 	sq��qqq "I�      ?   d   x�32�LI-(A#�@�CrYq�^A�^r~.��Q����JAbXIq������gqTZq��g�cjF�O�S�a�OZp��kPb^RYv@������iz�?�!W� ��"      A   ,   x�3�tJL�H��/R�OSp��-(-I-RN�L�KN����� ݥK      C   e   x�3�,JM�,�R`RL:$���d�%��r�%��X�g�UF�f�y��V$�����G��FWTy9E9Z[���W��q��qqq 9�!F      E   8  x����r�@��u�.�����Eb@	(
��M#��o�O5������:�T��ou/�������_���`��}����`��EQ�U�ZX�a(��X�Iܥ�,`����b^���i��A��\ݟ�]B�t&*���[���hJ��<�B�	0�$�� ';�	8�2,l���#��Q� R��0��������C�c��@M�G�s�\��u�@�zW�+����>]m�Z.��R?����V|�j���O�͜����v��U�}zrd���P"�8�2g����bN{�����s�8V#ߙ�����zUL2����C��e-�mI˩1\<��.�F}�'�BC[��?����4x�~�w��E���0a�+C�ȉ�:�	��2n�8��U5��S�W��b���YI��:a���^�Z�Q�f��݄lݣ��$\�'�>�)�h����_�[}7������Mz9+�C' ��_�-�)�D�Oq,b��9����P��8��C)���iy�ݭ�پ��ԵUv�����u����5o�+�j~������l�u�     