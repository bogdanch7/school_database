# Bază de Date pentru o școală – Proiect educațional relațional Oracle
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


Diagramă EA a bazei de date

Rezultatele SELECT-urilor importante

View „EleviSiParinti”

JOIN între școală și elevi / personal

---

## Realizat de
Proiect realizat de [bogdanch7](https://github.com/bogdanch7)

An universitar 2024–2025

---

## Licență
Acest proiect este destinat exclusiv scopurilor educaționale.
