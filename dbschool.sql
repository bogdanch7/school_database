-- Tabel Scoala
CREATE TABLE scoala (
    id_scoala NUMBER PRIMARY KEY,
    nume_scoala VARCHAR2(100) NOT NULL,
    adresa_scoala VARCHAR2(150) NOT NULL,
    numar_telefon_scoala VARCHAR2(15) NOT NULL
);

-- Tabel Parinti
CREATE TABLE parinti (
    id_parinte NUMBER PRIMARY KEY,
    nume_parinte VARCHAR2(50) NOT NULL,
    prenume_parinte VARCHAR2(50) NOT NULL,
    cnp_parinte VARCHAR2(13) NOT NULL UNIQUE,
    numar_telefon_parinte VARCHAR2(15) NOT NULL,
    email_parinte VARCHAR2(100) NOT NULL
);

-- Tabel Elevi
CREATE TABLE elevi (
    id_elev NUMBER PRIMARY KEY,
    nume_elev VARCHAR2(50) NOT NULL,
    prenume_elev VARCHAR2(50) NOT NULL,
    cnp_elev VARCHAR2(13) NOT NULL UNIQUE,
    numar_telefon_elev VARCHAR2(15),
    email_elev VARCHAR2(100) NOT NULL,
    an_scolar_elev NUMBER NOT NULL,
    email_cont_elev VARCHAR2(100) NOT NULL,
    parola_cont_elev VARCHAR2(50) NOT NULL,
    id_parinte NUMBER NOT NULL,
    id_scoala NUMBER NOT NULL,
    FOREIGN KEY (id_parinte) REFERENCES parinti(id_parinte),
    FOREIGN KEY (id_scoala) REFERENCES scoala(id_scoala)
);

-- Tabel Personal Administrativ
CREATE TABLE personal_administrativ (
    id_personal_administrativ NUMBER PRIMARY KEY,
    nume_personal_administrativ VARCHAR2(50) NOT NULL,
    prenume_personal_administrativ VARCHAR2(50) NOT NULL,
    cnp_personal_administrativ VARCHAR2(13) NOT NULL UNIQUE,
    numar_telefon_personal_administrativ VARCHAR2(15),
    email_personal_administrativ VARCHAR2(100) NOT NULL,
    functie_personal_administrativ VARCHAR2(50),
    salariu_personal_administrativ NUMBER NOT NULL,
    id_scoala NUMBER NOT NULL,
    FOREIGN KEY (id_scoala) REFERENCES scoala(id_scoala)
);

-- Tabel Personal Didactic
CREATE TABLE personal_didactic (
    id_personal_didactic NUMBER PRIMARY KEY,
    nume_personal_didactic VARCHAR2(50) NOT NULL,
    prenume_personal_didactic VARCHAR2(50) NOT NULL,
    cnp_personal_didactic VARCHAR2(13) NOT NULL UNIQUE,
    numar_telefon_personal_didactic VARCHAR2(15),
    email_personal_didactic VARCHAR2(100) NOT NULL,
    functie_personal_didactic VARCHAR2(50),
    salariu_personal_didactic NUMBER NOT NULL,
    id_scoala NUMBER NOT NULL,
    FOREIGN KEY (id_scoala) REFERENCES scoala(id_scoala)
);

-- Tabel Personal Auxiliar
CREATE TABLE personal_auxiliar (
    id_personal_auxiliar NUMBER PRIMARY KEY,
    nume_personal_auxiliar VARCHAR2(50) NOT NULL,
    prenume_personal_auxiliar VARCHAR2(50) NOT NULL,
    cnp_personal_auxiliar VARCHAR2(13) NOT NULL UNIQUE,
    numar_telefon_personal_auxiliar VARCHAR2(15),
    email_personal_auxiliar VARCHAR2(100) NOT NULL,
    functie_personal_auxiliar VARCHAR2(50),
    salariu_personal_auxiliar NUMBER NOT NULL,
    id_scoala NUMBER NOT NULL,
    FOREIGN KEY (id_scoala) REFERENCES scoala(id_scoala)
);

-- Tabel Profiluri
CREATE TABLE profiluri (
    id_profil NUMBER PRIMARY KEY,
    categorie_profil VARCHAR2(50) NOT NULL,
    nume_profil VARCHAR2(50) NOT NULL,
    numar_clase_profil NUMBER NOT NULL,
    locuri_disponibile_profil NUMBER NOT NULL,
    id_scoala NUMBER NOT NULL,
    FOREIGN KEY (id_scoala) REFERENCES scoala(id_scoala)
);

-- Tabel Orare
CREATE TABLE orare (
    id_orar NUMBER PRIMARY KEY,
    ziua_saptamanii_orar VARCHAR2(15) NOT NULL,
    interval_orar VARCHAR2(20) NOT NULL,
    sala_orar VARCHAR2(20) NOT NULL,
    id_profil NUMBER NOT NULL,
    FOREIGN KEY (id_profil) REFERENCES profiluri(id_profil)
);

-- Tabel Materii
CREATE TABLE materii (
    id_materie NUMBER PRIMARY KEY,
    nume_materie VARCHAR2(50) NOT NULL,
    id_orar NUMBER NOT NULL,
    FOREIGN KEY (id_orar) REFERENCES orare(id_orar)
);

-- Tabel Sali
CREATE TABLE sali (
    id_sala NUMBER PRIMARY KEY,
    locuri_disponibile_sala NUMBER NOT NULL,
    dotari_sala VARCHAR2(150),
    id_scoala NUMBER NOT NULL,
    FOREIGN KEY (id_scoala) REFERENCES scoala(id_scoala)
);

-- Tabel Cataloage
CREATE TABLE cataloage (
    id_catalog NUMBER PRIMARY KEY,
    nume_catalog VARCHAR2(50) NOT NULL,
    numar_materii_catalog NUMBER NOT NULL,
    note_catalog NUMBER NOT NULL,
    absente_catalog NUMBER NOT NULL,
    invoiri_catalog NUMBER NOT NULL,
    id_scoala NUMBER NOT NULL,
    FOREIGN KEY (id_scoala) REFERENCES scoala(id_scoala)
);





-- Inserare Scoala
INSERT INTO scoala (id_scoala, nume_scoala, adresa_scoala, numar_telefon_scoala)
VALUES (1, 'Colegiul National de Informatica Matei Basarab', 'Strada Henri Coandă 21, Ramnicu Valcea 240239', '0350401741');





-- Inserare Parinti
INSERT INTO parinti (id_parinte, nume_parinte, prenume_parinte, cnp_parinte, numar_telefon_parinte, email_parinte)
VALUES (1, 'Buruiana', 'Ion', '1800101123456', '0723456789', 'ion.popescu@gmail.com');

INSERT INTO parinti (id_parinte, nume_parinte, prenume_parinte, cnp_parinte, numar_telefon_parinte, email_parinte)
VALUES (2, 'Ionescu', 'Maria', '2850101123456', '0723456781', 'maria.ionescu@gmail.com');

INSERT INTO parinti (id_parinte, nume_parinte, prenume_parinte, cnp_parinte, numar_telefon_parinte, email_parinte)
VALUES (3, 'Iacob', 'Andrei', '1950202123456', '0723456782', 'andrei.georgescu@gmail.com');

INSERT INTO parinti (id_parinte, nume_parinte, prenume_parinte, cnp_parinte, numar_telefon_parinte, email_parinte)
VALUES (4, 'Ciolacu', 'Ioana', '2780312123456', '0723456783', 'ioana.dumitrescu@yahoo.com');

INSERT INTO parinti (id_parinte, nume_parinte, prenume_parinte, cnp_parinte, numar_telefon_parinte, email_parinte)
VALUES (5, 'Stan', 'Vasile', '1690412123456', '0723456784', 'vasile.stan@yahoo.com');

INSERT INTO parinti (id_parinte, nume_parinte, prenume_parinte, cnp_parinte, numar_telefon_parinte, email_parinte)
VALUES (6, 'Radu', 'Ana', '2830509123456', '0723456785', 'ana.radu@outlook.com');

INSERT INTO parinti (id_parinte, nume_parinte, prenume_parinte, cnp_parinte, numar_telefon_parinte, email_parinte)
VALUES (7, 'Ioan', 'George', '1750603123456', '0723456786', 'george.iliescu@gmail.com');

INSERT INTO parinti (id_parinte, nume_parinte, prenume_parinte, cnp_parinte, numar_telefon_parinte, email_parinte)
VALUES (8, 'Petre', 'Elena', '2920708123456', '0723456787', 'elena.petrescu@yahoo.com');

INSERT INTO parinti (id_parinte, nume_parinte, prenume_parinte, cnp_parinte, numar_telefon_parinte, email_parinte)
VALUES (9, 'Tudor', 'Mihai', '1650802123456', '0723456788', 'mihai.tudor@outlook.com');

INSERT INTO parinti (id_parinte, nume_parinte, prenume_parinte, cnp_parinte, numar_telefon_parinte, email_parinte)
VALUES (10, 'Radulescu', 'Adriana', '2810906123456', '0723456789', 'adriana.radulescu@gmail.com');

INSERT INTO parinti (id_parinte, nume_parinte, prenume_parinte, cnp_parinte, numar_telefon_parinte, email_parinte)
VALUES (11, 'Ghinea', 'Ioan', '1701010123456', '0723456790', 'ioan.popescu@gmail.com');

INSERT INTO parinti (id_parinte, nume_parinte, prenume_parinte, cnp_parinte, numar_telefon_parinte, email_parinte)
VALUES (12, 'Mocanu', 'Ema', '2930203123456', '0723456791', 'ema.vasilescu@gmail.com');

INSERT INTO parinti (id_parinte, nume_parinte, prenume_parinte, cnp_parinte, numar_telefon_parinte, email_parinte)
VALUES (13, 'Dinca', 'Alexandru', '1820312123456', '0723456792', 'alex.dinca@yahoo.com');

INSERT INTO parinti (id_parinte, nume_parinte, prenume_parinte, cnp_parinte, numar_telefon_parinte, email_parinte)
VALUES (14, 'Lungu', 'Bianca', '2860412123456', '0723456793', 'bianca.lungu@gmail.com');

INSERT INTO parinti (id_parinte, nume_parinte, prenume_parinte, cnp_parinte, numar_telefon_parinte, email_parinte)
VALUES (15, 'Gheorghiu', 'Razvan', '1720519123456', '0723456794', 'razvan.gheorghiu@outlook.com');

INSERT INTO parinti (id_parinte, nume_parinte, prenume_parinte, cnp_parinte, numar_telefon_parinte, email_parinte)
VALUES (16, 'Dragomir', 'Sofia', '2800608123456', '0723456795', 'sofia.dragomir@gmail.com');

INSERT INTO parinti (id_parinte, nume_parinte, prenume_parinte, cnp_parinte, numar_telefon_parinte, email_parinte)
VALUES (17, 'Avram', 'Roxana', '2900701123456', '0723456796', 'roxana.avram@yahoo.com');

INSERT INTO parinti (id_parinte, nume_parinte, prenume_parinte, cnp_parinte, numar_telefon_parinte, email_parinte)
VALUES (18, 'Simion', 'Victor', '1830803123456', '0723456797', 'victor.simion@outlook.com');

INSERT INTO parinti (id_parinte, nume_parinte, prenume_parinte, cnp_parinte, numar_telefon_parinte, email_parinte)
VALUES (19, 'Costea', 'Lavinia', '2940901123456', '0723456798', 'lavinia.costea@gmail.com');

INSERT INTO parinti (id_parinte, nume_parinte, prenume_parinte, cnp_parinte, numar_telefon_parinte, email_parinte)
VALUES (20, 'Ciobanu', 'Sorin', '1741012123456', '0723456799', 'sorin.ciobanu@gmail.com');

INSERT INTO parinti (id_parinte, nume_parinte, prenume_parinte, cnp_parinte, numar_telefon_parinte, email_parinte)
VALUES (21, 'Popa', 'Carmen', '2811119123456', '0723456800', 'carmen.popa@yahoo.com');

INSERT INTO parinti (id_parinte, nume_parinte, prenume_parinte, cnp_parinte, numar_telefon_parinte, email_parinte)
VALUES (22, 'Dima', 'Alexandra', '2860102123456', '0723456801', 'alexandra.dima@gmail.com');

INSERT INTO parinti (id_parinte, nume_parinte, prenume_parinte, cnp_parinte, numar_telefon_parinte, email_parinte)
VALUES (23, 'Toma', 'Cristian', '1990218123456', '0723456802', 'cristian.toma@yahoo.com');

INSERT INTO parinti (id_parinte, nume_parinte, prenume_parinte, cnp_parinte, numar_telefon_parinte, email_parinte)
VALUES (24, 'Florea', 'Marian', '1740310123456', '0723456803', 'marian.florea@gmail.com');

INSERT INTO parinti (id_parinte, nume_parinte, prenume_parinte, cnp_parinte, numar_telefon_parinte, email_parinte)
VALUES (25, 'Grigore', 'Diana', '2810412123456', '0723456804', 'diana.grigore@gmail.com');

INSERT INTO parinti (id_parinte, nume_parinte, prenume_parinte, cnp_parinte, numar_telefon_parinte, email_parinte)
VALUES (26, 'Manole', 'Oana', '2890501123456', '0723456805', 'oana.manole@yahoo.com');

INSERT INTO parinti (id_parinte, nume_parinte, prenume_parinte, cnp_parinte, numar_telefon_parinte, email_parinte)
VALUES (27, 'Morar', 'Paul', '1820612123456', '0723456806', 'paul.morar@gmail.com');

INSERT INTO parinti (id_parinte, nume_parinte, prenume_parinte, cnp_parinte, numar_telefon_parinte, email_parinte)
VALUES (28, 'Ganea', 'Alina', '2730718123456', '0723456807', 'alina.ganea@gmail.com');

INSERT INTO parinti (id_parinte, nume_parinte, prenume_parinte, cnp_parinte, numar_telefon_parinte, email_parinte)
VALUES (29, 'Ghinoiu', 'Daniel', '1760815123456', '0723456808', 'daniel.iacob@yahoo.com');

INSERT INTO parinti (id_parinte, nume_parinte, prenume_parinte, cnp_parinte, numar_telefon_parinte, email_parinte)
VALUES (30, 'Pavel', 'Florina', '2850910123456', '0723456809', 'florina.pavel@gmail.com');





-- Inserare Elevi
INSERT INTO elevi (id_elev, nume_elev, prenume_elev, cnp_elev, numar_telefon_elev, email_elev, an_scolar_elev, email_cont_elev, parola_cont_elev, id_parinte, id_scoala) 
VALUES (1, 'Buruiana', 'Ana', '6120718123451', '0734567001', 'ana.buruiana@gmail.com', 7, 'ana.buruiana@cnimb.ro', 'parola123', 1, 1);

INSERT INTO elevi (id_elev, nume_elev, prenume_elev, cnp_elev, numar_telefon_elev, email_elev, an_scolar_elev, email_cont_elev, parola_cont_elev, id_parinte, id_scoala) 
VALUES (2, 'Buruiana', 'Andrei', '5110907123452', '0734567002', 'andrei.buruiana@gmail.com', 8, 'andrei.buruiana@cnimb.ro', 'parola456', 1, 1);

INSERT INTO elevi (id_elev, nume_elev, prenume_elev, cnp_elev, numar_telefon_elev, email_elev, an_scolar_elev, email_cont_elev, parola_cont_elev, id_parinte, id_scoala) 
VALUES (3, 'Ionescu', 'Maria', '6091110123453', '0734567003', 'maria.ionescu@gmail.com', 10, 'maria.ionescu@cnimb.ro', 'parola789', 2, 1);

INSERT INTO elevi (id_elev, nume_elev, prenume_elev, cnp_elev, numar_telefon_elev, email_elev, an_scolar_elev, email_cont_elev, parola_cont_elev, id_parinte, id_scoala) 
VALUES (4, 'Ionescu', 'Mihai', '5071212123454', '0734567004', 'mihai.ionescu@gmail.com', 12, 'mihai.ionescu@cnimb.ro', 'parola321', 2, 1);

INSERT INTO elevi (id_elev, nume_elev, prenume_elev, cnp_elev, numar_telefon_elev, email_elev, an_scolar_elev, email_cont_elev, parola_cont_elev, id_parinte, id_scoala) 
VALUES (5, 'Iacob', 'George', '5120303123455', '0734567005', 'george.iacob@gmail.com', 7, 'george.iacob@cnimb.ro', 'parola654', 3, 1);

INSERT INTO elevi (id_elev, nume_elev, prenume_elev, cnp_elev, numar_telefon_elev, email_elev, an_scolar_elev, email_cont_elev, parola_cont_elev, id_parinte, id_scoala) 
VALUES (6, 'Iacob', 'Bianca', '6130703123456', '0734567006', 'bianca.iacob@gmail.com', 6, 'bianca.iacob@cnimb.ro', 'parola987', 3, 1);

INSERT INTO elevi (id_elev, nume_elev, prenume_elev, cnp_elev, numar_telefon_elev, email_elev, an_scolar_elev, email_cont_elev, parola_cont_elev, id_parinte, id_scoala) 
VALUES (7, 'Ciolacu', 'Ioana', '6140912123457', '0734567007', 'ioana.ciolacu@gmail.com', 5, 'ioana.ciolacu@cnimb.ro', 'parola111', 4, 1);

INSERT INTO elevi (id_elev, nume_elev, prenume_elev, cnp_elev, email_elev, an_scolar_elev, email_cont_elev, parola_cont_elev, id_parinte, id_scoala) 
VALUES (8, 'Ciolacu', 'Florin', '5161119123458', 'florin.ciolacu@gmail.com', 2, 'florin.ciolacu@cnimb.ro', 'parola222', 4, 1);

INSERT INTO elevi (id_elev, nume_elev, prenume_elev, cnp_elev, email_elev, an_scolar_elev, email_cont_elev, parola_cont_elev, id_parinte, id_scoala) 
VALUES (9, 'Stan', 'Alex', '5151011123459', 'alex.stan@gmail.com', 3, 'alex.stan@cnimb.ro', 'parola333', 5, 1);

INSERT INTO elevi (id_elev, nume_elev, prenume_elev, cnp_elev, email_elev, an_scolar_elev, email_cont_elev, parola_cont_elev, id_parinte, id_scoala) 
VALUES (10, 'Stan', 'Gabriela', '6160410123460', 'gabriela.stan@gmail.com', 2, 'gabriela.stan@cnimb.ro', 'parola444', 5, 1);

INSERT INTO elevi (id_elev, nume_elev, prenume_elev, cnp_elev, numar_telefon_elev, email_elev, an_scolar_elev, email_cont_elev, parola_cont_elev, id_parinte, id_scoala) 
VALUES (11, 'Radu', 'Cristian', '5111205123461', '0734567011', 'cristian.radu@gmail.com', 8, 'cristian.radu@cnimb.ro', 'parola555', 6, 1);

INSERT INTO elevi (id_elev, nume_elev, prenume_elev, cnp_elev, numar_telefon_elev, email_elev, an_scolar_elev, email_cont_elev, parola_cont_elev, id_parinte, id_scoala) 
VALUES (12, 'Radu', 'Dana', '6120103123462', '0734567012', 'dana.radu@gmail.com', 7, 'dana.radu@cnimb.ro', 'parola666', 6, 1);

INSERT INTO elevi (id_elev, nume_elev, prenume_elev, cnp_elev, numar_telefon_elev, email_elev, an_scolar_elev, email_cont_elev, parola_cont_elev, id_parinte, id_scoala) 
VALUES (13, 'Ioan', 'Dan', '5080709123463', '0734567013', 'dan.ioan@gmail.com', 11, 'dan.ioan@cnimb.ro', 'parola777', 7, 1);

INSERT INTO elevi (id_elev, nume_elev, prenume_elev, cnp_elev, numar_telefon_elev, email_elev, an_scolar_elev, email_cont_elev, parola_cont_elev, id_parinte, id_scoala) 
VALUES (14, 'Ioan', 'Gabriela', '6091017123464', '0734567014', 'gabriela.ioan@gmail.com', 10, 'gabriela.ioan@cnimb.ro', 'parola888', 7, 1);

INSERT INTO elevi (id_elev, nume_elev, prenume_elev, cnp_elev, numar_telefon_elev, email_elev, an_scolar_elev, email_cont_elev, parola_cont_elev, id_parinte, id_scoala) 
VALUES (15, 'Petre', 'Elena', '6090907123465', '0734567015', 'elena.petre@gmail.com', 10, 'elena.petre@cnimb.ro', 'parola999', 8, 1);

INSERT INTO elevi (id_elev, nume_elev, prenume_elev, cnp_elev, numar_telefon_elev, email_elev, an_scolar_elev, email_cont_elev, parola_cont_elev, id_parinte, id_scoala) 
VALUES (16, 'Petre', 'Radu', '5071017123466', '0734567016', 'radu.petre@gmail.com', 12, 'radu.petre@cnimb.ro', 'parola000', 8, 1);

INSERT INTO elevi (id_elev, nume_elev, prenume_elev, cnp_elev, numar_telefon_elev, email_elev, an_scolar_elev, email_cont_elev, parola_cont_elev, id_parinte, id_scoala) 
VALUES (17, 'Tudor', 'Vlad', '5101507123467', '0734567017', 'vlad.tudor@gmail.com', 9, 'vlad.tudor@cnimb.ro', 'parola112', 9, 1);

INSERT INTO elevi (id_elev, nume_elev, prenume_elev, cnp_elev, numar_telefon_elev, email_elev, an_scolar_elev, email_cont_elev, parola_cont_elev, id_parinte, id_scoala) 
VALUES (18, 'Tudor', 'Alexia', '6111708123468', '0734567018', 'alexia.tudor@gmail.com', 8, 'alexia.tudor@cnimb.ro', 'parola223', 9, 1);

INSERT INTO elevi (id_elev, nume_elev, prenume_elev, cnp_elev, numar_telefon_elev, email_elev, an_scolar_elev, email_cont_elev, parola_cont_elev, id_parinte, id_scoala) 
VALUES (19, 'Radulescu', 'Ana', '6121219123469', '0734567019', 'ana.radulescu@gmail.com', 7, 'ana.radulescu@cnimb.ro', 'parola334', 10, 1);

INSERT INTO elevi (id_elev, nume_elev, prenume_elev, cnp_elev, numar_telefon_elev, email_elev, an_scolar_elev, email_cont_elev, parola_cont_elev, id_parinte, id_scoala) 
VALUES (20, 'Radulescu', 'Mihai', '5131108123470', '0734567020', 'mihai.radulescu@gmail.com', 6, 'mihai.radulescu@cnimb.ro', 'parola445', 10, 1);

INSERT INTO elevi (id_elev, nume_elev, prenume_elev, cnp_elev, email_elev, an_scolar_elev, email_cont_elev, parola_cont_elev, id_parinte, id_scoala) 
VALUES (21, 'Ghinea', 'Adrian', '5150918123471', 'adrian.ghinea@gmail.com', 3, 'adrian.ghinea@cnimb.ro', 'parola123', 11, 1);

INSERT INTO elevi (id_elev, nume_elev, prenume_elev, cnp_elev, numar_telefon_elev, email_elev, an_scolar_elev, email_cont_elev, parola_cont_elev, id_parinte, id_scoala) 
VALUES (22, 'Mocanu', 'Ema', '6131010123472', '0734567022', 'ema.mocanu@gmail.com', 6, 'ema.mocanu@cnimb.ro', 'parola234', 12, 1);

INSERT INTO elevi (id_elev, nume_elev, prenume_elev, cnp_elev, numar_telefon_elev, email_elev, an_scolar_elev, email_cont_elev, parola_cont_elev, id_parinte, id_scoala) 
VALUES (23, 'Dinca', 'Rares', '5081109123473', '0734567023', 'rares.dinca@gmail.com', 11, 'rares.dinca@cnimb.ro', 'parola345', 13, 1);

INSERT INTO elevi (id_elev, nume_elev, prenume_elev, cnp_elev, numar_telefon_elev, email_elev, an_scolar_elev, email_cont_elev, parola_cont_elev, id_parinte, id_scoala) 
VALUES (24, 'Lungu', 'Anca', '6111210123474', '0734567024', 'anca.lungu@gmail.com', 8, 'anca.lungu@cnimb.ro', 'parola456', 14, 1);

INSERT INTO elevi (id_elev, nume_elev, prenume_elev, cnp_elev, numar_telefon_elev, email_elev, an_scolar_elev, email_cont_elev, parola_cont_elev, id_parinte, id_scoala) 
VALUES (25, 'Gheorghiu', 'Teodor', '5121308123475', '0734567025', 'teodor.gheorghiu@gmail.com', 7, 'teodor.gheorghiu@cnimb.ro', 'parola567', 15, 1);

INSERT INTO elevi (id_elev, nume_elev, prenume_elev, cnp_elev, numar_telefon_elev, email_elev, an_scolar_elev, email_cont_elev, parola_cont_elev, id_parinte, id_scoala) 
VALUES (26, 'Dragomir', 'Ioana', '6121715123476', '0734567026', 'ioana.dragomir@gmail.com', 7, 'ioana.dragomir@cnimb.ro', 'parola678', 16, 1);

INSERT INTO elevi (id_elev, nume_elev, prenume_elev, cnp_elev, numar_telefon_elev, email_elev, an_scolar_elev, email_cont_elev, parola_cont_elev, id_parinte, id_scoala) 
VALUES (27, 'Avram', 'Mihai', '5130908123477', '0734567027', 'mihai.avram@gmail.com', 6, 'mihai.avram@cnimb.ro', 'parola789', 17, 1);

INSERT INTO elevi (id_elev, nume_elev, prenume_elev, cnp_elev, numar_telefon_elev, email_elev, an_scolar_elev, email_cont_elev, parola_cont_elev, id_parinte, id_scoala) 
VALUES (28, 'Simion', 'Alina', '6111015123478', '0734567028', 'alina.simion@gmail.com', 8, 'alina.simion@cnimb.ro', 'parola890', 18, 1);

INSERT INTO elevi (id_elev, nume_elev, prenume_elev, cnp_elev, numar_telefon_elev, email_elev, an_scolar_elev, email_cont_elev, parola_cont_elev, id_parinte, id_scoala) 
VALUES (29, 'Costea', 'Alex', '5121110123479', '0734567029', 'alex.costea@gmail.com', 7, 'alex.costea@cnimb.ro', 'parola901', 19, 1);

INSERT INTO elevi (id_elev, nume_elev, prenume_elev, cnp_elev, numar_telefon_elev, email_elev, an_scolar_elev, email_cont_elev, parola_cont_elev, id_parinte, id_scoala) 
VALUES (30, 'Ciobanu', 'Bianca', '6091218123480', '0734567030', 'bianca.ciobanu@gmail.com', 10, 'bianca.ciobanu@cnimb.ro', 'parola012', 20, 1);

INSERT INTO elevi (id_elev, nume_elev, prenume_elev, cnp_elev, numar_telefon_elev, email_elev, an_scolar_elev, email_cont_elev, parola_cont_elev, id_parinte, id_scoala) 
VALUES (31, 'Popa', 'Adrian', '5100712123481', '0734567031', 'adrian.popa@gmail.com', 9, 'adrian.popa@cnimb.ro', 'parola123', 21, 1);

INSERT INTO elevi (id_elev, nume_elev, prenume_elev, cnp_elev, numar_telefon_elev, email_elev, an_scolar_elev, email_cont_elev, parola_cont_elev, id_parinte, id_scoala) 
VALUES (32, 'Dima', 'Ema', '6081012123482', '0734567032', 'ema.dima@gmail.com', 11, 'ema.dima@cnimb.ro', 'parola234', 22, 1);

INSERT INTO elevi (id_elev, nume_elev, prenume_elev, cnp_elev, numar_telefon_elev, email_elev, an_scolar_elev, email_cont_elev, parola_cont_elev, id_parinte, id_scoala) 
VALUES (33, 'Toma', 'Rares', '5071219123483', '0734567033', 'rares.toma@gmail.com', 12, 'rares.toma@cnimb.ro', 'parola345', 23, 1);

INSERT INTO elevi (id_elev, nume_elev, prenume_elev, cnp_elev, email_elev, an_scolar_elev, email_cont_elev, parola_cont_elev, id_parinte, id_scoala) 
VALUES (34, 'Florea', 'Anca', '6171101123484', 'anca.florea@gmail.com', 2, 'anca.florea@cnimb.ro', 'parola456', 24, 1);

INSERT INTO elevi (id_elev, nume_elev, prenume_elev, cnp_elev, email_elev, an_scolar_elev, email_cont_elev, parola_cont_elev, id_parinte, id_scoala) 
VALUES (35, 'Grigore', 'Teodor', '5160907123485', 'teodor.grigore@gmail.com', 2, 'teodor.grigore@cnimb.ro', 'parola567', 25, 1);

INSERT INTO elevi (id_elev, nume_elev, prenume_elev, cnp_elev, email_elev, an_scolar_elev, email_cont_elev, parola_cont_elev, id_parinte, id_scoala) 
VALUES (36, 'Manole', 'Ioana', '6151105123486', 'ioana.manole@gmail.com', 4, 'ioana.manole@cnimb.ro', 'parola678', 26, 1);

INSERT INTO elevi (id_elev, nume_elev, prenume_elev, cnp_elev, numar_telefon_elev, email_elev, an_scolar_elev, email_cont_elev, parola_cont_elev, id_parinte, id_scoala) 
VALUES (37, 'Morar', 'Mihai', '5140912123487', '0734567037', 'mihai.morar@gmail.com', 5, 'mihai.morar@cnimb.ro', 'parola789', 27, 1);

INSERT INTO elevi (id_elev, nume_elev, prenume_elev, cnp_elev, numar_telefon_elev, email_elev, an_scolar_elev, email_cont_elev, parola_cont_elev, id_parinte, id_scoala) 
VALUES (38, 'Ganea', 'Alina', '6131018123488', '0734567038', 'alina.ganea@gmail.com', 6, 'alina.ganea@cnimb.ro', 'parola890', 28, 1);

INSERT INTO elevi (id_elev, nume_elev, prenume_elev, cnp_elev, numar_telefon_elev, email_elev, an_scolar_elev, email_cont_elev, parola_cont_elev, id_parinte, id_scoala) 
VALUES (39, 'Ghinoiu', 'Alex', '5121115123489', '0734567039', 'alex.ghinoiu@gmail.com', 7, 'alex.ghinoiu@cnimb.ro', 'parola901', 29, 1);

INSERT INTO elevi (id_elev, nume_elev, prenume_elev, cnp_elev, numar_telefon_elev, email_elev, an_scolar_elev, email_cont_elev, parola_cont_elev, id_parinte, id_scoala) 
VALUES (40, 'Pavel', 'Bianca', '6111217123490', '0734567040', 'bianca.pavel@gmail.com', 8, 'bianca.pavel@cnimb.ro', 'parola012', 30, 1);





-- Inserare Personal Administrativ
INSERT INTO personal_administrativ (id_personal_administrativ, nume_personal_administrativ, prenume_personal_administrativ, cnp_personal_administrativ, numar_telefon_personal_administrativ, email_personal_administrativ, functie_personal_administrativ, salariu_personal_administrativ, id_scoala)
VALUES (1, 'Ionascu', 'Lavinia', '2720101123456', '0712345678', 'lavinia.ionascu@cnimb.ro', 'Secretar', 4500, 1);

INSERT INTO personal_administrativ (id_personal_administrativ, nume_personal_administrativ, prenume_personal_administrativ, cnp_personal_administrativ, numar_telefon_personal_administrativ, email_personal_administrativ, functie_personal_administrativ, salariu_personal_administrativ, id_scoala) 
VALUES (2, 'Cristescu', 'Ioana', '2731126312821', '0723519401', 'ioana.cristescu@cnimb.ro', 'Contabil', 5000, 1);

INSERT INTO personal_administrativ (id_personal_administrativ, nume_personal_administrativ, prenume_personal_administrativ, cnp_personal_administrativ, numar_telefon_personal_administrativ, email_personal_administrativ, functie_personal_administrativ, salariu_personal_administrativ, id_scoala) 
VALUES (3, 'Dumitrescu', 'Marian', '2760611683951', '0711789995', 'marian.dumitrescu@cnimb.ro', 'Contabil', 5200, 1);

INSERT INTO personal_administrativ (id_personal_administrativ, nume_personal_administrativ, prenume_personal_administrativ, cnp_personal_administrativ, numar_telefon_personal_administrativ, email_personal_administrativ, functie_personal_administrativ, salariu_personal_administrativ, id_scoala) 
VALUES (4, 'Andrei', 'Alina', '2801103435517', '0723124452', 'ioana.andrei@cnimb.ro', 'Secretar', 6000, 1);

INSERT INTO personal_administrativ (id_personal_administrativ, nume_personal_administrativ, prenume_personal_administrativ, cnp_personal_administrativ, numar_telefon_personal_administrativ, email_personal_administrativ, functie_personal_administrativ, salariu_personal_administrativ, id_scoala) 
VALUES (5, 'Popescu', 'Mariana', '2790730706505', '0736099337', 'mariana.popescu@cnimb.ro', 'Secretar', 5700, 1);

INSERT INTO personal_administrativ (id_personal_administrativ, nume_personal_administrativ, prenume_personal_administrativ, cnp_personal_administrativ, numar_telefon_personal_administrativ, email_personal_administrativ, functie_personal_administrativ, salariu_personal_administrativ, id_scoala) 
VALUES (6, 'Ionescu', 'Cristina', '2710524951620', '0742527843', 'cristina.ionescu@cnimb.ro', 'Contabil', 4500, 1);

INSERT INTO personal_administrativ (id_personal_administrativ, nume_personal_administrativ, prenume_personal_administrativ, cnp_personal_administrativ, numar_telefon_personal_administrativ, email_personal_administrativ, functie_personal_administrativ, salariu_personal_administrativ, id_scoala) 
VALUES (7, 'Stan', 'Gabriela', '2770424579500', '0737266055', 'gabriela.stan@cnimb.ro', 'Secretar', 4200, 1);

INSERT INTO personal_administrativ (id_personal_administrativ, nume_personal_administrativ, prenume_personal_administrativ, cnp_personal_administrativ, numar_telefon_personal_administrativ, email_personal_administrativ, functie_personal_administrativ, salariu_personal_administrativ, id_scoala) 
VALUES (8, 'Calin', 'Ioana', '2750318904743', '0713822301', 'ioana.calin@cnimb.ro', 'Contabil', 3800, 1);

INSERT INTO personal_administrativ (id_personal_administrativ, nume_personal_administrativ, prenume_personal_administrativ, cnp_personal_administrativ, numar_telefon_personal_administrativ, email_personal_administrativ, functie_personal_administrativ, salariu_personal_administrativ, id_scoala) 
VALUES (9, 'Georgescu', 'Dan', '2810908042625', '0723116801', 'dan.georgescu@cnimb.ro', 'Secretar', 5700, 1);

INSERT INTO personal_administrativ (id_personal_administrativ, nume_personal_administrativ, prenume_personal_administrativ, cnp_personal_administrativ, numar_telefon_personal_administrativ, email_personal_administrativ, functie_personal_administrativ, salariu_personal_administrativ, id_scoala) 
VALUES (10, 'Craciun', 'Daniel', '2811014505479', '0716330133', 'daniel.craciun@cnimb.ro', 'Director', 7000, 1);

INSERT INTO personal_administrativ (id_personal_administrativ, nume_personal_administrativ, prenume_personal_administrativ, cnp_personal_administrativ, numar_telefon_personal_administrativ, email_personal_administrativ, functie_personal_administrativ, salariu_personal_administrativ, id_scoala) 
VALUES (11, 'Vasilescu', 'Marius', '2951113456407', '0748271163', 'marius.vasilescu@cnimb.ro', 'Director Adjunct', 4500, 1);

INSERT INTO personal_administrativ (id_personal_administrativ, nume_personal_administrativ, prenume_personal_administrativ, cnp_personal_administrativ, numar_telefon_personal_administrativ, email_personal_administrativ, functie_personal_administrativ, salariu_personal_administrativ, id_scoala) 
VALUES (12, 'Mircea', 'Ioana', '2710715250211', '0743249994', 'ioana.radulescu@cnimb.ro', 'Inspector', 4500, 1);

INSERT INTO personal_administrativ (id_personal_administrativ, nume_personal_administrativ, prenume_personal_administrativ, cnp_personal_administrativ, numar_telefon_personal_administrativ, email_personal_administrativ, functie_personal_administrativ, salariu_personal_administrativ, id_scoala) 
VALUES (13, 'Iliescu', 'Georgiana', '2810560848060', '0752261881', 'georgiana.iliescu@cnimb.ro', 'Director Adjunct', 5700, 1);

INSERT INTO personal_administrativ (id_personal_administrativ, nume_personal_administrativ, prenume_personal_administrativ, cnp_personal_administrativ, numar_telefon_personal_administrativ, email_personal_administrativ, functie_personal_administrativ, salariu_personal_administrativ, id_scoala) 
VALUES (14, 'Virje', 'Calin', '2721203633128', '0716615008', 'ioana.calinescu@cnimb.ro', 'Secretar', 4200, 1);

INSERT INTO personal_administrativ (id_personal_administrativ, nume_personal_administrativ, prenume_personal_administrativ, cnp_personal_administrativ, numar_telefon_personal_administrativ, email_personal_administrativ, functie_personal_administrativ, salariu_personal_administrativ, id_scoala) 
VALUES (15, 'Marinescu', 'Dana', '2736113474622', '0735437687', 'dana.marinescu@cnimb.ro', 'Contabil', 5000, 1);





-- Inserare Personal Didactic
INSERT INTO personal_didactic (id_personal_didactic, nume_personal_didactic, prenume_personal_didactic, cnp_personal_didactic, numar_telefon_personal_didactic, email_personal_didactic, functie_personal_didactic, salariu_personal_didactic, id_scoala)
VALUES (1, 'Ionescu', 'Ionel', '1650201123456', '0701234567', 'ionel.vasilescu@cnimb.ro', 'Profesor Limba Romana', 6000, 1);

INSERT INTO personal_didactic (id_personal_didactic, nume_personal_didactic, prenume_personal_didactic, cnp_personal_didactic, numar_telefon_personal_didactic, email_personal_didactic, functie_personal_didactic, salariu_personal_didactic, id_scoala) 
VALUES (2, 'Georgescu', 'Maria', '2681212986516', '0716321447', 'maria.georgescu@cnimb.ro', 'Profesor Sport', 6400, 1);

INSERT INTO personal_didactic (id_personal_didactic, nume_personal_didactic, prenume_personal_didactic, cnp_personal_didactic, numar_telefon_personal_didactic, email_personal_didactic, functie_personal_didactic, salariu_personal_didactic, id_scoala) 
VALUES (3, 'Vasilescu', 'Vlad', '1631379181644', '0738550205', 'vlad.vasilescu@cnimb.ro', 'Profesor Fizica', 5000, 1);

INSERT INTO personal_didactic (id_personal_didactic, nume_personal_didactic, prenume_personal_didactic, cnp_personal_didactic, numar_telefon_personal_didactic, email_personal_didactic, functie_personal_didactic, salariu_personal_didactic, id_scoala) 
VALUES (4, 'Radulescu', 'Ionel', '1641710587285', '0732340180', 'ionel.radulescu@cnimb.ro', 'Profesor Limba Romana', 6600, 1);

INSERT INTO personal_didactic (id_personal_didactic, nume_personal_didactic, prenume_personal_didactic, cnp_personal_didactic, numar_telefon_personal_didactic, email_personal_didactic, functie_personal_didactic, salariu_personal_didactic, id_scoala) 
VALUES (5, 'Calinescu', 'Cristina', '2601623011700', '0755341182', 'cristina.georgescu@cnimb.ro', 'Profesor Sport', 6600, 1);

INSERT INTO personal_didactic (id_personal_didactic, nume_personal_didactic, prenume_personal_didactic, cnp_personal_didactic, numar_telefon_personal_didactic, email_personal_didactic, functie_personal_didactic, salariu_personal_didactic, id_scoala) 
VALUES (6, 'Dumitrescu', 'Sofia', '2681425275983', '0741492370', 'sofia.dumitrescu@cnimb.ro', 'Profesor Istorie', 7500, 1);

INSERT INTO personal_didactic (id_personal_didactic, nume_personal_didactic, prenume_personal_didactic, cnp_personal_didactic, numar_telefon_personal_didactic, email_personal_didactic, functie_personal_didactic, salariu_personal_didactic, id_scoala) 
VALUES (7, 'Tudor', 'Ioana', '2641212510621', '0738712115', 'ioana.tudor@cnimb.ro', 'Profesor Engleza', 7500, 1);

INSERT INTO personal_didactic (id_personal_didactic, nume_personal_didactic, prenume_personal_didactic, cnp_personal_didactic, numar_telefon_personal_didactic, email_personal_didactic, functie_personal_didactic, salariu_personal_didactic, id_scoala) 
VALUES (8, 'Dumitrescu', 'Paul', '1631113035031', '0747939227', 'paul.dumitrescu@cnimb.ro', 'Profesor Fizica', 5000, 1);

INSERT INTO personal_didactic (id_personal_didactic, nume_personal_didactic, prenume_personal_didactic, cnp_personal_didactic, numar_telefon_personal_didactic, email_personal_didactic, functie_personal_didactic, salariu_personal_didactic, id_scoala) 
VALUES (9, 'Petrescu', 'Roxana', '2671215122173', '0721560641', 'roxana.petrescu@cnimb.ro', 'Profesor Chimie', 6800, 1);

INSERT INTO personal_didactic (id_personal_didactic, nume_personal_didactic, prenume_personal_didactic, cnp_personal_didactic, numar_telefon_personal_didactic, email_personal_didactic, functie_personal_didactic, salariu_personal_didactic, id_scoala) 
VALUES (10, 'Vasile', 'George', '1660911263838', '0737552784', 'george.radulescu@cnimb.ro', 'Profesor Informatica', 6000, 1);

INSERT INTO personal_didactic (id_personal_didactic, nume_personal_didactic, prenume_personal_didactic, cnp_personal_didactic, numar_telefon_personal_didactic, email_personal_didactic, functie_personal_didactic, salariu_personal_didactic, id_scoala) 
VALUES (11, 'Popescu', 'Dan', '1650916651650', '0752858141', 'dan.popescu@cnimb.ro', 'Profesor Fizica', 6200, 1);

INSERT INTO personal_didactic (id_personal_didactic, nume_personal_didactic, prenume_personal_didactic, cnp_personal_didactic, numar_telefon_personal_didactic, email_personal_didactic, functie_personal_didactic, salariu_personal_didactic, id_scoala) 
VALUES (12, 'Stan', 'Adriana', '2631319579448', '0731688630', 'adriana.stan@cnimb.ro', 'Profesor Limba Romana', 5600, 1);

INSERT INTO personal_didactic (id_personal_didactic, nume_personal_didactic, prenume_personal_didactic, cnp_personal_didactic, numar_telefon_personal_didactic, email_personal_didactic, functie_personal_didactic, salariu_personal_didactic, id_scoala) 
VALUES (13, 'Greuceanu', 'Cristina', '2620131078993', '0732748720', 'cristina.vasilescu@cnimb.ro', 'Profesor Geografie', 5000, 1);

INSERT INTO personal_didactic (id_personal_didactic, nume_personal_didactic, prenume_personal_didactic, cnp_personal_didactic, numar_telefon_personal_didactic, email_personal_didactic, functie_personal_didactic, salariu_personal_didactic, id_scoala) 
VALUES (14, 'Dumitrescu', 'Elena', '2671105302857', '0739350676', 'elena.dumitrescu@cnimb.ro', 'Profesor Informatica', 6000, 1);

INSERT INTO personal_didactic (id_personal_didactic, nume_personal_didactic, prenume_personal_didactic, cnp_personal_didactic, numar_telefon_personal_didactic, email_personal_didactic, functie_personal_didactic, salariu_personal_didactic, id_scoala) 
VALUES (15, 'Popescu', 'Dan', '1600211908863', '0728189514', 'dan.iliescu@cnimb.ro', 'Profesor Chimie', 5800, 1);

INSERT INTO personal_didactic (id_personal_didactic, nume_personal_didactic, prenume_personal_didactic, cnp_personal_didactic, numar_telefon_personal_didactic, email_personal_didactic, functie_personal_didactic, salariu_personal_didactic, id_scoala) 
VALUES (16, 'Iordache', 'Dan', '1671125408503', '0752095738', 'dan.vasilescu@cnimb.ro', 'Profesor Arte', 6200, 1);

INSERT INTO personal_didactic (id_personal_didactic, nume_personal_didactic, prenume_personal_didactic, cnp_personal_didactic, numar_telefon_personal_didactic, email_personal_didactic, functie_personal_didactic, salariu_personal_didactic, id_scoala) 
VALUES (17, 'Radulescu', 'Roxana', '2610311404084', '0711188973', 'roxana.radulescu@cnimb.ro', 'Profesor Chimie', 6400, 1);

INSERT INTO personal_didactic (id_personal_didactic, nume_personal_didactic, prenume_personal_didactic, cnp_personal_didactic, numar_telefon_personal_didactic, email_personal_didactic, functie_personal_didactic, salariu_personal_didactic, id_scoala) 
VALUES (18, 'Petrescu', 'Ana', '2620131144128', '0713382002', 'ana.petrescu@cnimb.ro', 'Profesor Informatica', 5000, 1);

INSERT INTO personal_didactic (id_personal_didactic, nume_personal_didactic, prenume_personal_didactic, cnp_personal_didactic, numar_telefon_personal_didactic, email_personal_didactic, functie_personal_didactic, salariu_personal_didactic, id_scoala) 
VALUES (19, 'Dan', 'Elena', '2690213732136', '0711715216', 'elena.georgescu@cnimb.ro', 'Profesor Biologie', 6800, 1);

INSERT INTO personal_didactic (id_personal_didactic, nume_personal_didactic, prenume_personal_didactic, cnp_personal_didactic, numar_telefon_personal_didactic, email_personal_didactic, functie_personal_didactic, salariu_personal_didactic, id_scoala) 
VALUES (20, 'Zachia', 'Vlad', '1691504202993', '0727512156', 'vlad.vasilescu@cnimb.ro', 'Profesor Matematica', 6800, 1);





-- Inserare Personal Auxiliar
INSERT INTO personal_auxiliar (id_personal_auxiliar, nume_personal_auxiliar, prenume_personal_auxiliar, cnp_personal_auxiliar, numar_telefon_personal_auxiliar, email_personal_auxiliar, functie_personal_auxiliar, salariu_personal_auxiliar, id_scoala)
VALUES (1, 'Georgescu', 'Ana', '2630301123456', '0745123456', 'ana.georgescu@cnimb.ro', 'Personal de Serviciu', 3300, 1);

INSERT INTO personal_auxiliar (id_personal_auxiliar, nume_personal_auxiliar, prenume_personal_auxiliar, cnp_personal_auxiliar, numar_telefon_personal_auxiliar, email_personal_auxiliar, functie_personal_auxiliar, salariu_personal_auxiliar, id_scoala) 
VALUES (2, 'Tudor', 'Gabriela', '2694087944172', '0758996216', 'gabriela.tudor@cnimb.ro', 'Personal de Serviciu', 3500, 1);

INSERT INTO personal_auxiliar (id_personal_auxiliar, nume_personal_auxiliar, prenume_personal_auxiliar, cnp_personal_auxiliar, numar_telefon_personal_auxiliar, email_personal_auxiliar, functie_personal_auxiliar, salariu_personal_auxiliar, id_scoala) 
VALUES (3, 'Dumitrescu', 'Cristina', '2638215384689', '0764674715', 'cristina.dumitrescu@cnimb.ro', 'Personal de Serviciu', 3300, 1);

INSERT INTO personal_auxiliar (id_personal_auxiliar, nume_personal_auxiliar, prenume_personal_auxiliar, cnp_personal_auxiliar, numar_telefon_personal_auxiliar, email_personal_auxiliar, functie_personal_auxiliar, salariu_personal_auxiliar, id_scoala) 
VALUES (4, 'Vasilescu', 'Roxana', '2633265019017', '0762536872', 'roxana.vasilescu@cnimb.ro', 'Asistent Medical', 4500, 1);

INSERT INTO personal_auxiliar (id_personal_auxiliar, nume_personal_auxiliar, prenume_personal_auxiliar, cnp_personal_auxiliar, numar_telefon_personal_auxiliar, email_personal_auxiliar, functie_personal_auxiliar, salariu_personal_auxiliar, id_scoala) 
VALUES (5, 'Stan', 'Ion', '1693011259929', '0761159564', 'ana.stan@cnimb.ro', 'Lacatus', 4500, 1);

INSERT INTO personal_auxiliar (id_personal_auxiliar, nume_personal_auxiliar, prenume_personal_auxiliar, cnp_personal_auxiliar, numar_telefon_personal_auxiliar, email_personal_auxiliar, functie_personal_auxiliar, salariu_personal_auxiliar, id_scoala) 
VALUES (6, 'Craciun', 'Andrei', '1605303990036', '0755572328', 'andrei.vasilescu@cnimb.ro', 'Personal de Serviciu', 3500, 1);

INSERT INTO personal_auxiliar (id_personal_auxiliar, nume_personal_auxiliar, prenume_personal_auxiliar, cnp_personal_auxiliar, numar_telefon_personal_auxiliar, email_personal_auxiliar, functie_personal_auxiliar, salariu_personal_auxiliar, id_scoala) 
VALUES (7, 'Budeanu', 'Andreea', '1605303990036', '0755572328', 'andrei.vasilescu@cnimb.ro', 'Personal de Serviciu', 3500, 1);

INSERT INTO personal_auxiliar (id_personal_auxiliar, nume_personal_auxiliar, prenume_personal_auxiliar, cnp_personal_auxiliar, numar_telefon_personal_auxiliar, email_personal_auxiliar, functie_personal_auxiliar, salariu_personal_auxiliar, id_scoala) 
VALUES (8, 'Codreanu', 'Vasile', '1674301661238', '0742091552', 'ion.stan@cnimb.ro', 'Lacatus', 4000, 1);

INSERT INTO personal_auxiliar (id_personal_auxiliar, nume_personal_auxiliar, prenume_personal_auxiliar, cnp_personal_auxiliar, numar_telefon_personal_auxiliar, email_personal_auxiliar, functie_personal_auxiliar, salariu_personal_auxiliar, id_scoala) 
VALUES (9, 'Lazar', 'Daniel', '1690713959050', '0777977846', 'dan.tudor@cnimb.ro', 'Lacatus', 3500, 1);

INSERT INTO personal_auxiliar (id_personal_auxiliar, nume_personal_auxiliar, prenume_personal_auxiliar, cnp_personal_auxiliar, numar_telefon_personal_auxiliar, email_personal_auxiliar, functie_personal_auxiliar, salariu_personal_auxiliar, id_scoala) 
VALUES (10, 'Ionescu', 'Mihaela', '165117018908', '0747683790', 'mihai.ionescu@cnimb.ro', 'Medic', 7000, 1);

INSERT INTO personal_auxiliar (id_personal_auxiliar, nume_personal_auxiliar, prenume_personal_auxiliar, cnp_personal_auxiliar, numar_telefon_personal_auxiliar, email_personal_auxiliar, functie_personal_auxiliar, salariu_personal_auxiliar, id_scoala) 
VALUES (11, 'Grigore', 'Marian', '1681114741061', '0745410006', 'sofia.ionescu@cnimb.ro', 'Lacatus', 6000, 1);

INSERT INTO personal_auxiliar (id_personal_auxiliar, nume_personal_auxiliar, prenume_personal_auxiliar, cnp_personal_auxiliar, numar_telefon_personal_auxiliar, email_personal_auxiliar, functie_personal_auxiliar, salariu_personal_auxiliar, id_scoala) 
VALUES (12, 'Stan', 'Alex', '1630452002731', '0756189906', 'mihai.stan@cnimb.ro', 'Lacatus', 4500, 1);

INSERT INTO personal_auxiliar (id_personal_auxiliar, nume_personal_auxiliar, prenume_personal_auxiliar, cnp_personal_auxiliar, numar_telefon_personal_auxiliar, email_personal_auxiliar, functie_personal_auxiliar, salariu_personal_auxiliar, id_scoala) 
VALUES (13, 'Petrescu', 'Victor', '1671257293856', '0785166798', 'victor.petrescu@cnimb.ro', 'Asistent Medical', 3500, 1);

INSERT INTO personal_auxiliar (id_personal_auxiliar, nume_personal_auxiliar, prenume_personal_auxiliar, cnp_personal_auxiliar, numar_telefon_personal_auxiliar, email_personal_auxiliar, functie_personal_auxiliar, salariu_personal_auxiliar, id_scoala) 
VALUES (14, 'Ionescu', 'Marius', '1611000512148', '0744516213', 'alexandru.ionescu@cnimb.ro', 'Personal de Serviciu', 3000, 1);

INSERT INTO personal_auxiliar (id_personal_auxiliar, nume_personal_auxiliar, prenume_personal_auxiliar, cnp_personal_auxiliar, numar_telefon_personal_auxiliar, email_personal_auxiliar, functie_personal_auxiliar, salariu_personal_auxiliar, id_scoala) 
VALUES (15, 'Popescu', 'Vlad', '1620469630821', '0767080524', 'victor.popescu@cnimb.ro', 'Administrator', 5000, 1);

INSERT INTO personal_auxiliar (id_personal_auxiliar, nume_personal_auxiliar, prenume_personal_auxiliar, cnp_personal_auxiliar, numar_telefon_personal_auxiliar, email_personal_auxiliar, functie_personal_auxiliar, salariu_personal_auxiliar, id_scoala) 
VALUES (16, 'Dan', 'Ana', '2612013390760', '0753492149', 'ana.popescu@cnimb.ro', 'Medic', 6500, 1);

INSERT INTO personal_auxiliar (id_personal_auxiliar, nume_personal_auxiliar, prenume_personal_auxiliar, cnp_personal_auxiliar, numar_telefon_personal_auxiliar, email_personal_auxiliar, functie_personal_auxiliar, salariu_personal_auxiliar, id_scoala) 
VALUES (17, 'Selaru', 'Elena', '2611231357933', '0782533668', 'elena.iliescu@cnimb.ro', 'Administrator', 4500, 1);

INSERT INTO personal_auxiliar (id_personal_auxiliar, nume_personal_auxiliar, prenume_personal_auxiliar, cnp_personal_auxiliar, numar_telefon_personal_auxiliar, email_personal_auxiliar, functie_personal_auxiliar, salariu_personal_auxiliar, id_scoala) 
VALUES (18, 'Grigore', 'Cristina', '2620604203837', '0744177362', 'cristina.vasilescu@cnimb.ro', 'Personal de Serviciu', 3800, 1);

INSERT INTO personal_auxiliar (id_personal_auxiliar, nume_personal_auxiliar, prenume_personal_auxiliar, cnp_personal_auxiliar, numar_telefon_personal_auxiliar, email_personal_auxiliar, functie_personal_auxiliar, salariu_personal_auxiliar, id_scoala) 
VALUES (19, 'Bucuroaia', 'Daniela', '2612508390760', '0753492149', 'ana.popescu@cnimb.ro', 'Medic', 7000, 1);

INSERT INTO personal_auxiliar (id_personal_auxiliar, nume_personal_auxiliar, prenume_personal_auxiliar, cnp_personal_auxiliar, numar_telefon_personal_auxiliar, email_personal_auxiliar, functie_personal_auxiliar, salariu_personal_auxiliar, id_scoala) 
VALUES (20, 'Petrescu', 'Delia', '2675011293856', '0785166798', 'victor.petrescu@cnimb.ro', 'Asistent Medical', 4000, 1);





-- Inserare Profiluri
INSERT INTO profiluri (id_profil, categorie_profil, nume_profil, numar_clase_profil, locuri_disponibile_profil, id_scoala)
VALUES (1, 'Real', 'Matematica-Informatica', 3, 90, 1);

INSERT INTO profiluri (id_profil, categorie_profil, nume_profil, numar_clase_profil, locuri_disponibile_profil, id_scoala) 
VALUES (2, 'Real', 'Stiintele Naturii', 4, 120, 1);

INSERT INTO profiluri (id_profil, categorie_profil, nume_profil, numar_clase_profil, locuri_disponibile_profil, id_scoala) 
VALUES (3, 'Uman', 'Filologie', 4, 90, 1);

INSERT INTO profiluri (id_profil, categorie_profil, nume_profil, numar_clase_profil, locuri_disponibile_profil, id_scoala) 
VALUES (4, 'Uman', 'Stiinte Sociale', 3, 90, 1);

INSERT INTO profiluri (id_profil, categorie_profil, nume_profil, numar_clase_profil, locuri_disponibile_profil, id_scoala) 
VALUES (5, 'Uman', 'Pedagogie', 2, 60, 1);





-- Inserare Orare
INSERT INTO orare (id_orar, ziua_saptamanii_orar, interval_orar, sala_orar, id_profil) 
VALUES (1, 'Luni', '08:00-09:00', 'Sala 1', 1);

INSERT INTO orare (id_orar, ziua_saptamanii_orar, interval_orar, sala_orar, id_profil) 
VALUES (2, 'Luni', '09:00-10:00', 'Sala 2', 1);

INSERT INTO orare (id_orar, ziua_saptamanii_orar, interval_orar, sala_orar, id_profil) 
VALUES (3, 'Marti', '08:00-09:00', 'Sala 3', 1);

INSERT INTO orare (id_orar, ziua_saptamanii_orar, interval_orar, sala_orar, id_profil) 
VALUES (4, 'Marti', '10:00-11:00', 'Sala 4', 2);

INSERT INTO orare (id_orar, ziua_saptamanii_orar, interval_orar, sala_orar, id_profil) 
VALUES (5, 'Miercuri', '09:00-10:00', 'Sala 5', 2);

INSERT INTO orare (id_orar, ziua_saptamanii_orar, interval_orar, sala_orar, id_profil) 
VALUES (6, 'Miercuri', '10:00-11:00', 'Sala 6', 3);

INSERT INTO orare (id_orar, ziua_saptamanii_orar, interval_orar, sala_orar, id_profil) 
VALUES (7, 'Joi', '08:00-09:00', 'Sala 7', 3);

INSERT INTO orare (id_orar, ziua_saptamanii_orar, interval_orar, sala_orar, id_profil) 
VALUES (8, 'Joi', '09:00-10:00', 'Sala 8', 4);

INSERT INTO orare (id_orar, ziua_saptamanii_orar, interval_orar, sala_orar, id_profil) 
VALUES (9, 'Vineri', '10:00-11:00', 'Sala 9', 4);

INSERT INTO orare (id_orar, ziua_saptamanii_orar, interval_orar, sala_orar, id_profil) 
VALUES (10, 'Vineri', '11:00-12:00', 'Sala 10', 5);

INSERT INTO orare (id_orar, ziua_saptamanii_orar, interval_orar, sala_orar, id_profil) 
VALUES (11, 'Luni', '11:00-12:00', 'Sala 11', 5);

INSERT INTO orare (id_orar, ziua_saptamanii_orar, interval_orar, sala_orar, id_profil) 
VALUES (12, 'Marti', '12:00-13:00', 'Sala 12', 1);

INSERT INTO orare (id_orar, ziua_saptamanii_orar, interval_orar, sala_orar, id_profil) 
VALUES (13, 'Miercuri', '08:00-09:00', 'Sala 13', 2);

INSERT INTO orare (id_orar, ziua_saptamanii_orar, interval_orar, sala_orar, id_profil) 
VALUES (14, 'Joi', '10:00-11:00', 'Sala 14', 3);

INSERT INTO orare (id_orar, ziua_saptamanii_orar, interval_orar, sala_orar, id_profil) 
VALUES (15, 'Vineri', '12:00-13:00', 'Sala 15', 4);

INSERT INTO orare (id_orar, ziua_saptamanii_orar, interval_orar, sala_orar, id_profil) 
VALUES (16, 'Luni', '12:00-13:00', 'Sala 16', 5);

INSERT INTO orare (id_orar, ziua_saptamanii_orar, interval_orar, sala_orar, id_profil) 
VALUES (17, 'Marti', '09:00-10:00', 'Sala 17', 1);

INSERT INTO orare (id_orar, ziua_saptamanii_orar, interval_orar, sala_orar, id_profil) 
VALUES (18, 'Miercuri', '10:00-11:00', 'Sala 18', 2);

INSERT INTO orare (id_orar, ziua_saptamanii_orar, interval_orar, sala_orar, id_profil) 
VALUES (19, 'Joi', '11:00-12:00', 'Sala 19', 3);

INSERT INTO orare (id_orar, ziua_saptamanii_orar, interval_orar, sala_orar, id_profil) 
VALUES (20, 'Vineri', '13:00-14:00', 'Sala 20', 4);

INSERT INTO orare (id_orar, ziua_saptamanii_orar, interval_orar, sala_orar, id_profil) 
VALUES (21, 'Luni', '08:00-09:00', 'Sala 21', 1);

INSERT INTO orare (id_orar, ziua_saptamanii_orar, interval_orar, sala_orar, id_profil) 
VALUES (22, 'Marti', '09:00-10:00', 'Sala 22', 2);





-- Inserare Materii
INSERT INTO materii (id_materie, nume_materie, id_orar) 
VALUES (1, 'Matematica', 1);

INSERT INTO materii (id_materie, nume_materie, id_orar) 
VALUES (2, 'Informatica', 2);

INSERT INTO materii (id_materie, nume_materie, id_orar) 
VALUES (3, 'Fizica', 3);

INSERT INTO materii (id_materie, nume_materie, id_orar) 
VALUES (4, 'Chimie', 4);

INSERT INTO materii (id_materie, nume_materie, id_orar) 
VALUES (5, 'Romana', 5);

INSERT INTO materii (id_materie, nume_materie, id_orar) 
VALUES (6, 'Istorie', 6);

INSERT INTO materii (id_materie, nume_materie, id_orar) 
VALUES (7, 'Engleza', 7);

INSERT INTO materii (id_materie, nume_materie, id_orar) 
VALUES (8, 'Geografie', 8);

INSERT INTO materii (id_materie, nume_materie, id_orar) 
VALUES (9, 'Biologie', 9);

INSERT INTO materii (id_materie, nume_materie, id_orar) 
VALUES (10, 'Psihologie', 10);

INSERT INTO materii (id_materie, nume_materie, id_orar) 
VALUES (11, 'Pedagogie', 11);

INSERT INTO materii (id_materie, nume_materie, id_orar) 
VALUES (12, 'Arte', 12);

INSERT INTO materii (id_materie, nume_materie, id_orar) 
VALUES (13, 'Logica', 13);

INSERT INTO materii (id_materie, nume_materie, id_orar) 
VALUES (14, 'Educatie Fizica', 14);

INSERT INTO materii (id_materie, nume_materie, id_orar) 
VALUES (15, 'Franceza', 15);

INSERT INTO materii (id_materie, nume_materie, id_orar) 
VALUES (16, 'Geografie', 16);

INSERT INTO materii (id_materie, nume_materie, id_orar) 
VALUES (17, 'Muzica', 17);

INSERT INTO materii (id_materie, nume_materie, id_orar) 
VALUES (18, 'Filosofie', 18);

INSERT INTO materii (id_materie, nume_materie, id_orar) 
VALUES (19, 'Latina', 19);

INSERT INTO materii (id_materie, nume_materie, id_orar) 
VALUES (20, 'Economie', 20);

INSERT INTO materii (id_materie, nume_materie, id_orar) 
VALUES (21, 'Matematica', 3);

INSERT INTO materii (id_materie, nume_materie, id_orar) 
VALUES (22, 'Fizica', 7);

INSERT INTO materii (id_materie, nume_materie, id_orar) 
VALUES (23, 'Chimie', 10);

INSERT INTO materii (id_materie, nume_materie, id_orar) 
VALUES (24, 'Informatica', 15);

INSERT INTO materii (id_materie, nume_materie, id_orar) 
VALUES (25, 'Istorie', 2);

INSERT INTO materii (id_materie, nume_materie, id_orar) 
VALUES (26, 'Romana', 6);

INSERT INTO materii (id_materie, nume_materie, id_orar) 
VALUES (27, 'Geografie', 9);

INSERT INTO materii (id_materie, nume_materie, id_orar) 
VALUES (28, 'Biologie', 13);

INSERT INTO materii (id_materie, nume_materie, id_orar) 
VALUES (29, 'Latina', 5);

INSERT INTO materii (id_materie, nume_materie, id_orar) 
VALUES (30, 'Franceza', 12);

INSERT INTO materii (id_materie, nume_materie, id_orar) 
VALUES (31, 'Economia', 18);

INSERT INTO materii (id_materie, nume_materie, id_orar) 
VALUES (32, 'Logica', 4);

INSERT INTO materii (id_materie, nume_materie, id_orar) 
VALUES (33, 'Educatie fizica', 8);

INSERT INTO materii (id_materie, nume_materie, id_orar) 
VALUES (34, 'Psihologie', 17);

INSERT INTO materii (id_materie, nume_materie, id_orar) 
VALUES (35, 'Pedagogie', 14);

INSERT INTO materii (id_materie, nume_materie, id_orar) 
VALUES (36, 'Muzica', 11);

INSERT INTO materii (id_materie, nume_materie, id_orar) 
VALUES (37, 'Filosofie', 19);

INSERT INTO materii (id_materie, nume_materie, id_orar) 
VALUES (38, 'Biologie', 1);

INSERT INTO materii (id_materie, nume_materie, id_orar) 
VALUES (39, 'Fizica', 20);

INSERT INTO materii (id_materie, nume_materie, id_orar) 
VALUES (40, 'Muzica', 16);





-- Inserare Sali
INSERT INTO sali (id_sala, locuri_disponibile_sala, dotari_sala, id_scoala)
VALUES (1, 30, 'Videoproiector, Tabla inteligenta', 1);

INSERT INTO sali (id_sala, locuri_disponibile_sala, dotari_sala, id_scoala) 
VALUES (2, 20, 'Tabla alba, Scaune ergonomice', 1);

INSERT INTO sali (id_sala, locuri_disponibile_sala, dotari_sala, id_scoala) 
VALUES (3, 40, 'Tabla alba, Scaune ergonomice', 1);

INSERT INTO sali (id_sala, locuri_disponibile_sala, dotari_sala, id_scoala) 
VALUES (4, 30, 'Tabla clasica, Scaune standard', 1);

INSERT INTO sali (id_sala, locuri_disponibile_sala, dotari_sala, id_scoala) 
VALUES (5, 40, 'Videoproiector, Tabla inteligenta, Echipamente chimie', 1);

INSERT INTO sali (id_sala, locuri_disponibile_sala, dotari_sala, id_scoala) 
VALUES (6, 40, 'Videoproiector, Calculator', 1);

INSERT INTO sali (id_sala, locuri_disponibile_sala, dotari_sala, id_scoala) 
VALUES (7, 30, 'Videoproiector, Tabla inteligenta, Sistem PC, Sistem audio', 1);

INSERT INTO sali (id_sala, locuri_disponibile_sala, dotari_sala, id_scoala) 
VALUES (8, 30, 'Ecran interactiv, Sistem PC, Sistem audio', 1);

INSERT INTO sali (id_sala, locuri_disponibile_sala, dotari_sala, id_scoala) 
VALUES (9, 25, 'Tabla alba, Scaune ergonomice', 1);

INSERT INTO sali (id_sala, locuri_disponibile_sala, dotari_sala, id_scoala) 
VALUES (10, 35, 'Tabla clasica, Scaune standard', 1);

INSERT INTO sali (id_sala, locuri_disponibile_sala, dotari_sala, id_scoala) 
VALUES (11, 25, 'Videoproiector, Tabla inteligenta', 1);

INSERT INTO sali (id_sala, locuri_disponibile_sala, dotari_sala, id_scoala) 
VALUES (12, 35, 'Tabla alba, Echipamente chimie, Scaune ergonomice', 1);

INSERT INTO sali (id_sala, locuri_disponibile_sala, dotari_sala, id_scoala) 
VALUES (13, 30, 'Tabla alba, Scaune ergonomice', 1);

INSERT INTO sali (id_sala, locuri_disponibile_sala, dotari_sala, id_scoala) 
VALUES (14, 40, 'Ecran interactiv, Sistem audio', 1);

INSERT INTO sali (id_sala, locuri_disponibile_sala, dotari_sala, id_scoala) 
VALUES (15, 35, 'Videoproiector, Tabla inteligenta, Echipamente fizica', 1);

INSERT INTO sali (id_sala, locuri_disponibile_sala, dotari_sala, id_scoala) 
VALUES (16, 20, 'Tabla clasica, Scaune ergonomice', 1);

INSERT INTO sali (id_sala, locuri_disponibile_sala, dotari_sala, id_scoala) 
VALUES (17, 40, 'Ecran interactiv, Sistem audio', 1);

INSERT INTO sali (id_sala, locuri_disponibile_sala, dotari_sala, id_scoala) 
VALUES (18, 40, 'Echipamente fizica, Videoproiector, Tabla inteligenta', 1);

INSERT INTO sali (id_sala, locuri_disponibile_sala, dotari_sala, id_scoala) 
VALUES (19, 20, 'Videoproiector, Calculator, Tabla inteligenta, Scaune ergonomice', 1);

INSERT INTO sali (id_sala, locuri_disponibile_sala, id_scoala) 
VALUES (20, 40, 1);

INSERT INTO sali (id_sala, locuri_disponibile_sala, dotari_sala, id_scoala) 
VALUES (21, 20,  'Videoproiector, Calculator', 1);

INSERT INTO sali (id_sala, locuri_disponibile_sala, dotari_sala, id_scoala) 
VALUES (22, 35, 'Ecran interactiv, Sistem audio', 1);

INSERT INTO sali (id_sala, locuri_disponibile_sala, dotari_sala, id_scoala) 
VALUES (23, 40, 'Sisteme PC, Sistem audio', 1);

INSERT INTO sali (id_sala, locuri_disponibile_sala, id_scoala) 
VALUES (24, 20, 1);

INSERT INTO sali (id_sala, locuri_disponibile_sala, id_scoala) 
VALUES (25, 30, 1);






--Inserare Cataloage
INSERT INTO cataloage (id_catalog, nume_catalog, numar_materii_catalog, note_catalog, absente_catalog, invoiri_catalog, id_scoala)
VALUES (1, 'Clasa a II-a A', 5, 10, 2, 0, 1);

INSERT INTO cataloage (id_catalog, nume_catalog, numar_materii_catalog, note_catalog, absente_catalog, invoiri_catalog, id_scoala)
VALUES (2, 'Clasa a II-a B', 5, 8, 3, 1, 1);

INSERT INTO cataloage (id_catalog, nume_catalog, numar_materii_catalog, note_catalog, absente_catalog, invoiri_catalog, id_scoala)
VALUES (3, 'Clasa a III-a A', 6, 9, 1, 0, 1);

INSERT INTO cataloage (id_catalog, nume_catalog, numar_materii_catalog, note_catalog, absente_catalog, invoiri_catalog, id_scoala)
VALUES (4, 'Clasa a III-a B', 6, 10, 4, 1, 1);

INSERT INTO cataloage (id_catalog, nume_catalog, numar_materii_catalog, note_catalog, absente_catalog, invoiri_catalog, id_scoala)
VALUES (5, 'Clasa a IV-a A', 7, 9, 2, 0, 1);

INSERT INTO cataloage (id_catalog, nume_catalog, numar_materii_catalog, note_catalog, absente_catalog, invoiri_catalog, id_scoala)
VALUES (6, 'Clasa a IV-a B', 7, 8, 3, 2, 1);

INSERT INTO cataloage (id_catalog, nume_catalog, numar_materii_catalog, note_catalog, absente_catalog, invoiri_catalog, id_scoala)
VALUES (7, 'Clasa a V-a A', 8, 10, 1, 0, 1);

INSERT INTO cataloage (id_catalog, nume_catalog, numar_materii_catalog, note_catalog, absente_catalog, invoiri_catalog, id_scoala)
VALUES (8, 'Clasa a V-a B', 8, 7, 5, 2, 1);

INSERT INTO cataloage (id_catalog, nume_catalog, numar_materii_catalog, note_catalog, absente_catalog, invoiri_catalog, id_scoala)
VALUES (9, 'Clasa a VI-a A', 9, 9, 3, 1, 1);

INSERT INTO cataloage (id_catalog, nume_catalog, numar_materii_catalog, note_catalog, absente_catalog, invoiri_catalog, id_scoala)
VALUES (10, 'Clasa a VI-a B', 9, 8, 2, 0, 1);

INSERT INTO cataloage (id_catalog, nume_catalog, numar_materii_catalog, note_catalog, absente_catalog, invoiri_catalog, id_scoala)
VALUES (11, 'Clasa a VII-a A', 10, 10, 1, 1, 1);

INSERT INTO cataloage (id_catalog, nume_catalog, numar_materii_catalog, note_catalog, absente_catalog, invoiri_catalog, id_scoala)
VALUES (12, 'Clasa a VII-a B', 10, 7, 4, 2, 1);

INSERT INTO cataloage (id_catalog, nume_catalog, numar_materii_catalog, note_catalog, absente_catalog, invoiri_catalog, id_scoala)
VALUES (13, 'Clasa a VIII-a A', 10, 9, 3, 1, 1);

INSERT INTO cataloage (id_catalog, nume_catalog, numar_materii_catalog, note_catalog, absente_catalog, invoiri_catalog, id_scoala)
VALUES (14, 'Clasa a VIII-a B', 10, 8, 5, 1, 1);

INSERT INTO cataloage (id_catalog, nume_catalog, numar_materii_catalog, note_catalog, absente_catalog, invoiri_catalog, id_scoala)
VALUES (15, 'Clasa a IX-a A', 12, 10, 2, 1, 1);

INSERT INTO cataloage (id_catalog, nume_catalog, numar_materii_catalog, note_catalog, absente_catalog, invoiri_catalog, id_scoala)
VALUES (16, 'Clasa a IX-a B', 12, 8, 4, 1, 1);

INSERT INTO cataloage (id_catalog, nume_catalog, numar_materii_catalog, note_catalog, absente_catalog, invoiri_catalog, id_scoala)
VALUES (17, 'Clasa a X-a A', 13, 9, 3, 1, 1);

INSERT INTO cataloage (id_catalog, nume_catalog, numar_materii_catalog, note_catalog, absente_catalog, invoiri_catalog, id_scoala)
VALUES (18, 'Clasa a X-a B', 13, 8, 2, 0, 1);

INSERT INTO cataloage (id_catalog, nume_catalog, numar_materii_catalog, note_catalog, absente_catalog, invoiri_catalog, id_scoala)
VALUES (19, 'Clasa a XI-a A', 14, 10, 1, 1, 1);

INSERT INTO cataloage (id_catalog, nume_catalog, numar_materii_catalog, note_catalog, absente_catalog, invoiri_catalog, id_scoala)
VALUES (20, 'Clasa a XI-a B', 14, 7, 6, 2, 1);

INSERT INTO cataloage (id_catalog, nume_catalog, numar_materii_catalog, note_catalog, absente_catalog, invoiri_catalog, id_scoala)
VALUES (21, 'Clasa a XII-a A', 14, 10, 2, 1, 1);

INSERT INTO cataloage (id_catalog, nume_catalog, numar_materii_catalog, note_catalog, absente_catalog, invoiri_catalog, id_scoala)
VALUES (22, 'Clasa a XII-a B', 14, 9, 1, 0, 1);





--Inserare Select-uri

--Afiseaza toate informatiile din tabela scoala:
SELECT * FROM scoala;

--Afiseaza doar numele parintilor din tabela parinti:
SELECT nume_parinte FROM parinti;

--Afiseaza toate informatiile despre elevii care sunt in clasa a VII-a:
SELECT * FROM elevi WHERE an_scolar_elev = 7;

--Afiseaza numele si prenumele profesorilor de informatica:
SELECT nume_personal_didactic, prenume_personal_didactic 
FROM personal_didactic 
WHERE functie_personal_didactic = 'Profesor Informatica';

--Afiseaza toate informatiile despre elevii care sunt intre clasele a 5-a si a 10-a:
SELECT * 
FROM elevi 
WHERE an_scolar_elev BETWEEN 5 AND 10;

--Afiseaza dotarile salilor care au mai mult de 30 de locuri:
SELECT * 
FROM sali 
WHERE locuri_disponibile_sala > 30;

--Interogari cu functii speciale:

--Afiseaza numarul total al profesorilor din baza de date:
SELECT COUNT(*) AS numar_profesori 
FROM personal_didactic;

--Afiseaza salariul mediu al personalului administrativ:
SELECT AVG(salariu_personal_administrativ) AS salariu_mediu 
FROM personal_administrativ;

--Afiseaza salariul minim si maxim al personalului didactic:
SELECT MIN(salariu_personal_didactic) AS salariu_minim, MAX(salariu_personal_didactic) AS salariu_maxim 
FROM personal_didactic;

--Afiseaza suma totala a salariilor personalului auxiliar:
SELECT SUM(salariu_personal_auxiliar) AS salariu_total 
FROM personal_auxiliar;

--Interogari cu conditii complexe:

--Afiseaza numele si prenumele profesorilor care predau Romana sau Matematica:
SELECT nume_personal_didactic, prenume_personal_didactic 
FROM personal_didactic 
WHERE functie_personal_didactic = 'Profesor Limba Romana' 
   OR functie_personal_didactic = 'Profesor Matematica';

--Afiseaza salile care au dotari si mai mult de 20 de locuri:
SELECT * 
FROM sali 
WHERE dotari_sala IS NOT NULL 
  AND locuri_disponibile_sala > 20;

--Afiseaza numele si prenumele parintilor al caror numar de telefon incepe cu "0723":
SELECT nume_parinte, prenume_parinte 
FROM parinti 
WHERE numar_telefon_parinte LIKE '0723%';

--Interogari cu GROUP BY si HAVING:

--Afiseaza numarul salilor din scoala care au mai mult de 20 de locuri:
SELECT id_scoala, COUNT(*) AS numar_sali 
FROM sali 
WHERE locuri_disponibile_sala > 20 
GROUP BY id_scoala;

--Interogari DISTINCT:

--Afiseaza functiile distincte ale personalului auxiliar:
SELECT DISTINCT functie_personal_auxiliar 
FROM personal_auxiliar;

--Afiseaza anii scolari unici din tabela elevi:
SELECT DISTINCT an_scolar_elev 
FROM elevi;

--Interogari cu JOIN:

--Afiseaza numele si prenumele elevilor impreuna cu numele scolii lor:
SELECT e.nume_elev, e.prenume_elev, s.nume_scoala 
FROM elevi e 
JOIN scoala s ON e.id_scoala = s.id_scoala;

--Afiseaza numele personalului administrativ si al scolii:
SELECT s.nume_scoala, pa.nume_personal_administrativ, pa.prenume_personal_administrativ
FROM scoala s
JOIN personal_administrativ pa ON s.id_scoala = pa.id_scoala;

--Afiseaza informatiile despre sali, dotarile acestora si numele scolii:
SELECT sali.id_sala, sali.locuri_disponibile_sala, sali.dotari_sala, scoala.nume_scoala
FROM sali
JOIN scoala ON sali.id_scoala = scoala.id_scoala;

--Afiseaza profesorii care au salarii mai mari decat media generala a salariilor:
SELECT nume_personal_didactic, prenume_personal_didactic, salariu_personal_didactic 
FROM personal_didactic 
WHERE salariu_personal_didactic > (SELECT AVG(salariu_personal_didactic) FROM personal_didactic);

--Afiseaza numele materiilor care se predau in ziua de luni:
SELECT m.nume_materie 
FROM materii m 
JOIN orare o ON m.id_orar = o.id_orar 
WHERE o.ziua_saptamanii_orar = 'Luni';

--Instructiunea UNION

--Afiseaza salariile tuturor angajatilor din categoriile administrative, didactice si auxiliare:
SELECT salariu_personal_administrativ AS salariu 
FROM personal_administrativ 
UNION 
SELECT salariu_personal_didactic 
FROM personal_didactic 
UNION 
SELECT salariu_personal_auxiliar 
FROM personal_auxiliar;

--Afiseaza elevii care nu au numar de telefon inregistrat:
SELECT nume_elev, prenume_elev 
FROM elevi 
WHERE numar_telefon_elev IS NULL;

--Creeaza un VIEW care contine informatii despre elevi si parintii lor:
CREATE VIEW EleviSiParinti AS
SELECT e.nume_elev, e.prenume_elev, p.nume_parinte, p.prenume_parinte 
FROM elevi e 
JOIN parinti p ON e.id_parinte = p.id_parinte;

--Alta varianta pentru a vizualiza VIEW-ul creat:
SELECT * FROM EleviSiParinti;

--Afiseaza modul de organizare a orelor in functie de profilurile scolii:
SELECT p.nume_profil, p.categorie_profil, o.ziua_saptamanii_orar, o.interval_orar, o.sala_orar
FROM profiluri p
JOIN orare o ON p.id_profil = o.id_profil;

--Afiseaza elevii in ordine alfabetica dupa nume si prenume:
SELECT nume_elev, prenume_elev 
FROM elevi 
ORDER BY nume_elev ASC, prenume_elev ASC;

--Instructiunea pentru realizarea PRODUSULUI CARTEZIAN:

--Afiseaza elevii alaturi de parintii lor pe baza relatiei din baza de date:
SELECT e.nume_elev, e.prenume_elev, p.nume_parinte, p.prenume_parinte
FROM elevi e, parinti p
WHERE e.id_parinte = p.id_parinte;

--Intructiunea JOIN NATURAL:

--Afiseaza doar randurile in care valorile coloanei comune (id_scoala) coincid intre tabelele personal_didactic si scoala:
SELECT *
FROM personal_didactic
NATURAL JOIN scoala;

--Afiseaza scolile si elevii aferenti, afisand NULL daca nu exista elevi asociati:
SELECT s.nume_scoala, e.id_elev, e.nume_elev 
FROM scoala s 
LEFT JOIN elevi e ON s.id_scoala = e.id_scoala;

--Intructiunea pentru afisarea si concatenarea textului:

--Construieste o propozitie cu detalii despre elevi si scoala lor:
SELECT 'Elevul ' || e.nume_elev || ' ' || e.prenume_elev || ' este înregistrat la școala ' || s.nume_scoala AS Detalii 
FROM elevi e 
JOIN scoala s ON e.id_scoala = s.id_scoala;
