# Bază de Date pentru o școală
Acest proiect reprezintă modelarea și implementarea unei baze de date relaționale complete pentru o instituție de învățământ. Proiectul a fost realizat în cadrul disciplinei **Bazele de Date**, folosind Oracle SQL Developer și Visual Studio Code. Scopul principal este gestionarea centralizată a informațiilor despre elevi, părinți, cadrele didactice, personalul auxiliar și administrativ, alături de structura orară, materiile, sălile și cataloagele unei școli.

---

## Funcționalități
Model entitate-asociere (ER) cu 11 entități relaționate prin chei primare și străine

Tabele bine normalizate pentru evitarea redundanțelor și menținerea integrității datelor

Interogări SQL complexe pentru extragerea de statistici educaționale și administrative

VIEW-uri relaționale și interogări JOIN pentru corelarea multiplă a datelor

Cod SQL complet: creare tabele, populare cu date și interogări utile

Diagrama relațională completă și prezentare detaliată a relațiilor

Inserarea de date pentru simularea unui caz real

---

## Entități și Tabele
scoala – date despre școală (nume, adresă, telefon)

elevi – date personale, cont institutional elev, legătură cu părinți și școala

parinti – nume, prenume, CNP, telefon, email

personal_administrativ – angajați cu funcții administrative și salarizare

personal_didactic – profesori cu specializări, salarii, funcții

personal_auxiliar – personal medical, întreținere, tehnic

profiluri – categorii de studiu (Real, Uman), cu număr clase/locuri

orare – intervale orare, zile, sală, profil asociat

materii – legate de orar și profil, definite prin id_orar

sali – locuri disponibile, dotări, legate de școală

cataloage – evidență clase: nume, note, absențe, învoiri

---

## Structura fișierelor
documentatie_baza_de_date_scoala.pdf – documentație completă

diagrama_scoala.png – diagramă EA relațională completă

dbschool.sql – script SQL pentru definirea conținutului bazei de date și exemple de interogări 

---

## Tehnologii utilizate
Oracle SQL Developer – IDE principal pentru testare și rulare cod SQL

Visual Studio Code – editare și structurare cod cu extensii pentru SQL

Oracle Database 21c – sistem de gestiune a bazei de date relaționale (SGDBR)

Standard SQL (Oracle dialect) – limbaj de definire, interogare și manipulare date

---

## Rulare și testare
Deschide Oracle SQL Developer

Creează conexiunea cu baza Oracle locală

Rulează dbschool.sql

---

## Capturi

![school db diagram](https://github.com/user-attachments/assets/5a95e3f6-c3e4-4eba-a11e-86eded58865f)
Diagramă EA a bazei de date

![parinti](https://github.com/user-attachments/assets/a489a283-7dd0-4589-9a7d-d8fc9519483e)
Crearea tabelei ȘCOALĂ

![scoala](https://github.com/user-attachments/assets/8b804427-8f81-4610-9a40-4fc585270909)
Inserarea datelor în tabela ȘCOALĂ

![afisare](https://github.com/user-attachments/assets/8fb097ff-f781-4e09-b446-28d36c7856b8)
Afișarea informațiilor din tabela școală

![select](https://github.com/user-attachments/assets/e7201664-4d49-40db-8c3f-574e613099e9)
Afișarea numelor și prenumelor profesorilor de Română și Matematică

![image](https://github.com/user-attachments/assets/aac1d4fc-1ec1-4bd8-911a-b8db0e81efec)
Afișarea numelui personalului administrativ

![select1](https://github.com/user-attachments/assets/efe919a0-5435-43ce-80ae-15d868aff0cd)
Afișarea materiilor care se predau în ziua de luni

![view](https://github.com/user-attachments/assets/595296cb-973e-40e6-a5f6-1f23a785dd09)
Afișarea view-ului "EleviSiParinti"

![select2](https://github.com/user-attachments/assets/addf53c5-a3dc-4fd9-bf0c-6546e0ada414)
Afișarea orelor în funcție de orare

![prop](https://github.com/user-attachments/assets/73c854e1-d011-4a9b-aeee-4547679e0f7b)
Afișarea și concatenarea textului

---

## Realizat de
Proiect realizat de [bogdanch7](https://github.com/bogdanch7)

An universitar 2024–2025

---

## Licență
Acest proiect este destinat exclusiv scopurilor educaționale.
