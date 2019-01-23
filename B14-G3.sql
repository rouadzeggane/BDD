-- ===============================================================================
-------- Université Sorbonne Paris Cité, Université Paris 13 , Institut Galiée
-------- Master 2, Informatique, Exploration Informatique des Données et Décisionnel
-------- M2 EID2

-- ===============================================================================
-------- La Data ; The Data
-------- La Donnée est le monde du futur ; Les données et le monde de l'avenir
-------- The Data is the world of the future ;  The Data and the future's world

-------- DATA -->>> Big Data, Dark Data, Open Data, ... 
-- ===============================================================================
-------- Bases de Données Avancées = Advanced Databases (BDA)
-------- Entrepôts de Données = Data Warehouses (DWH, EDON)

-------- Directeur :  Dr. M. Faouzi Boufarès
-------- Enseignant-Chercheur Responsable      

-------- Page Web : http://www.lipn.univ-paris13.fr/~boufares

-------- http://www.lipn.univ-paris13.fr/~boufares/Master2EID2/*.sql

-- ===============================================================================
-- ===============================================================================
--   Projet  BDM : Big Data Management - Gestion des Données Massives
--
--   Data Manipulation (DI) - Manipulation de Données
--   Data Integration (DI) - Intégration de Données
--   Données structurées ; Données Semi-structurées ; Données NON structurées
--   Structured data; Semi-structured data; NON-structured data

--   Master Data Management (MDM) - Gestion des Données de Référence
--   Data Quality Managment (DQM) - Gestion de la qualité des données
--   Data Cleaning - Nettayage des données
--   Data deduplication - Elimination des doubles et des similaires

--   More semantics to better correct the data 
--   Plus de sémantique afin de mieux corriger les données
-- ===============================================================================
-- ===============================================================================
--
--------=============  BIG DATA, DATA BASE, DATA WAREHOUSE =============----------
--
-- Big Data & Clound Computing : Think DIFFERENTLY, BIGGER and SMARTER !
-- The Excellence in Data Use !
-- EID : L'Excellence dans l'Investigation des Données
-- EID : Excellence in Data Investigation
--
-- =============================================================================== 
-- Think DIFFERENTLY, BIGGER and SMARTER ! The Excellence in Data Use !
-- MISSION IMPOSSIBLE OU POSSIBLE ????? !!!!!!!!!!!
-- Votre mission, si vous l’acceptez, est : The Excellence in Data Use !
-- Si vous échouez, nous nierons avoir eu connaissance de vos agissements !

-- ===============================================================================
-- Les dictons du jour !
--
-- Aujourd'hui, j'arrête de fumer
-- Le TABAC t'ABAT
-- Fumer nuit grâvement à ta santé et à celle de ton entourage
--
-- M   T   Dents
-- SMILE and the World SMILES with you !
--
-- MANGER + MANGER = GROSSIR (??? M, A, N, G, E, R, O, S, S, I)
--
-- Manger & Bouger, 
-- Pour votre santé mangez 5 fruits et légumes par jour
-- Pour votre santé ne mangez pas trop gras, trop salé, trop sucré
-- Pour votre santé faites une activité physique régulière
-- Pour votre santé faites 30 mn de marche par jour
-- Pour votre santé faites des BD !!!
--
-- Dr. M. Faouzi Boufarès
-- =============================================================================== 
-- =============================================================================== 
--   A new ETL   ETL & DQ : Extract-Transform-Load & Data-Quality 
--                    Al ETL Al Jadyd   
-- ===============================================================================
-- ===============================================================================

-- =============================================================================== 
-- =============================================================================== 
-- ===============================================================================                   
--   Nom du SGBD/DBMS  : ORACLE  /  DB2  /  MySQL  /  ...        
--   Date de creation  : 17/09/2018 --- 16/10/2018
---  Lieu              : Université Sorbonne Paris Cité, Université Paris 13, Institut Galiée
-- =============================================================================== 
-- ===============================================================================
-------------------- Master 2 EID2 - Promotion 2018-2019 -------------------------

-- Groupe de Travail N° (Binôme)  : B14

-- NOM Prénom 1                   : ZEGGANE Rouad

-- ====>>> Vos fichiers sql devront s'appeler : Bxy-G03.sql


-- =============================================================================== 
-- ===============================================================================
-- ===============================================================================
--   Problématique    :  Intégration de données hétérogènes, distribuées

--   Problématique    :  Traitement des anomalies éventuelles
--   Problématique    :  Plusieurs types d'anomalies INTRA-Colonne ; INTER-COLONNES ; INTER-LIGNES

--   Problématique    :  Standardisation de données hétérogènes
--   Problématique    :  Traitement des valeurs invalides syntaxiquement
--   Problématique    :  Traitement des valeurs invalides sémantiquement
--   Problématique    :  Traitement des valeurs nulles
--   Problématique    :  Traitement des redondances sémantiques (Dépendances fonctionnelles)
--   Problématique    :  Elimination des doubles et similaires

-- =============================================================================== 
-- ===============================================================================
-- ===============================================================================   
-- =============================================================================== 
-- ===============================================================================


-- *******************************************************************************
-- *******************************************************************************
-- *******************************************************************************
--       SQL 2 --     SQL 2 -- --       SQL 2 --     SQL 2 -- 
--       SQL 2 --     SQL 2 -- --       SQL 2 --     SQL 2 -- 
-- *******************************************************************************
-- *******************************************************************************
-- *******************************************************************************


SPOOL GCI-03.lst

SET TIMING ON;
SET LINES 1000
SET PAGES 1000

PROMPT =========================================================
-- Nom du Cas       :  Gestion Commerciale Intelligente : GESCOMI : GCI
-- Nom de SGBD      :  ORACLE DBMS                    
-- Date de création :  Septembre 2018
-- Auteur           :  Faouzi BOUFARES 
-- Université       :  Université Sorbonne Paris Cité, Université Paris 13 
-- Formation        :  Master 2 EID 2  
PROMPT =========================================================
PROMPT 
PROMPT =========================================================
PROMPT |                                                       |
PROMPT |     Exercice 3 :  BD GESCOMI avec SQL 2               |
PROMPT |     Intégration de BD                                 |
PROMPT |                                                       |
PROMPT =========================================================
PROMPT
PROMPT

PROMPT =========================================================
PROMPT Ceci permet d initialiser le type de la date
PROMPT =========================================================
/*
-- Initialiser le type de la date avec ...
ALTER SESSION SET NLS_DATE_FORMAT = 'DAY DD-MONTH-YYYY' ;
ALTER SESSION SET NLS_DATE_FORMAT = '???? HiHi HaHa' ; ???
ALTER SESSION SET    Quelle langue ?
*/
PROMPT =========================================================


/*

Entre parenthèses hihi haha FFF !

Etant donné la table CACLI suivante :
Elle est issue de plusieurs calculs sur les tables de la BD GesComI... 
Faire les requêtes ci-dessous : Statistiques sur le chiffre d affaires
*/

ALTER SESSION SET NLS_DATE_FORMAT = 'DD-MONTH-YYYY' ;
CREATE TABLE CACLI (DATECA DATE, MONTANTCA NUMBER);
INSERT INTO CACLI VALUES ('01-01-2010', 72);
INSERT INTO CACLI VALUES ('01-02-2010', 88);
INSERT INTO CACLI VALUES ('01-03-2010', 90);
INSERT INTO CACLI VALUES ('01-04-2010', 74);
INSERT INTO CACLI VALUES ('01-05-2010', 79);
INSERT INTO CACLI VALUES ('01-06-2010', 72);
INSERT INTO CACLI VALUES ('01-07-2010', 76);
INSERT INTO CACLI VALUES ('01-08-2010', 89);
INSERT INTO CACLI VALUES ('01-09-2010', 90);
INSERT INTO CACLI VALUES ('01-10-2010', 80);
INSERT INTO CACLI VALUES ('01-11-2010', 69);
INSERT INTO CACLI VALUES ('01-12-2010', 90);
INSERT INTO CACLI VALUES ('01-01-2011', 78);
INSERT INTO CACLI VALUES ('01-02-2011', 93);
INSERT INTO CACLI VALUES ('01-03-2011', 81);
INSERT INTO CACLI VALUES ('01-04-2011', 72);
INSERT INTO CACLI VALUES ('01-05-2011', 94);
INSERT INTO CACLI VALUES ('01-06-2011', 70);
INSERT INTO CACLI VALUES ('01-07-2011', 93);
INSERT INTO CACLI VALUES ('01-08-2011', 72);
INSERT INTO CACLI VALUES ('01-09-2011', 82);
INSERT INTO CACLI VALUES ('01-10-2011', 74);
INSERT INTO CACLI VALUES ('01-11-2011', 90);
INSERT INTO CACLI VALUES ('01-12-2011', 73);
INSERT INTO CACLI VALUES ('01-01-2012', 63);
INSERT INTO CACLI VALUES ('01-02-2012', 67);
INSERT INTO CACLI VALUES ('01-03-2012', 74);
INSERT INTO CACLI VALUES ('01-04-2012', 64);
INSERT INTO CACLI VALUES ('01-05-2012', 66);
INSERT INTO CACLI VALUES ('01-06-2012', 60);
INSERT INTO CACLI VALUES ('01-07-2012', 69);
INSERT INTO CACLI VALUES ('01-08-2012', 68);
INSERT INTO CACLI VALUES ('01-09-2012', 69);
INSERT INTO CACLI VALUES ('01-10-2012', 75);
INSERT INTO CACLI VALUES ('01-11-2012', 61);
INSERT INTO CACLI VALUES ('01-12-2012', 60);
INSERT INTO CACLI VALUES ('01-01-2013', 75);
INSERT INTO CACLI VALUES ('01-02-2013', 63);
INSERT INTO CACLI VALUES ('01-03-2013', 69);
INSERT INTO CACLI VALUES ('01-04-2013', 61);
INSERT INTO CACLI VALUES ('01-05-2013', 63);
INSERT INTO CACLI VALUES ('01-06-2013', 62);
INSERT INTO CACLI VALUES ('01-07-2013', 58);
INSERT INTO CACLI VALUES ('01-08-2013', 60);
INSERT INTO CACLI VALUES ('01-09-2013', 61);
INSERT INTO CACLI VALUES ('01-10-2013', 59);
INSERT INTO CACLI VALUES ('01-11-2013', 72);
INSERT INTO CACLI VALUES ('01-12-2013', 59);
INSERT INTO CACLI VALUES ('01-01-2014', 50);
INSERT INTO CACLI VALUES ('01-02-2014', 54);
INSERT INTO CACLI VALUES ('01-03-2014', 59);
INSERT INTO CACLI VALUES ('01-04-2014', 60);
INSERT INTO CACLI VALUES ('01-05-2014', 50);
INSERT INTO CACLI VALUES ('01-06-2014', 54);
INSERT INTO CACLI VALUES ('01-07-2014', 55);
INSERT INTO CACLI VALUES ('01-08-2014', 58);
INSERT INTO CACLI VALUES ('01-09-2014', 60);
INSERT INTO CACLI VALUES ('01-10-2014', 56);
INSERT INTO CACLI VALUES ('01-11-2014', 56);
INSERT INTO CACLI VALUES ('01-12-2014', 55);
INSERT INTO CACLI VALUES ('01-01-2015', 55);
INSERT INTO CACLI VALUES ('01-02-2015', 55);
INSERT INTO CACLI VALUES ('01-03-2015', 51);
INSERT INTO CACLI VALUES ('01-04-2015', 55);
INSERT INTO CACLI VALUES ('01-05-2015', 56);
INSERT INTO CACLI VALUES ('01-06-2015', 56);
INSERT INTO CACLI VALUES ('01-07-2015', 56);
INSERT INTO CACLI VALUES ('01-08-2015', 52);
INSERT INTO CACLI VALUES ('01-09-2015', 58);
INSERT INTO CACLI VALUES ('01-10-2015', 59);
INSERT INTO CACLI VALUES ('01-11-2015', 57);
INSERT INTO CACLI VALUES ('01-12-2015', 50);
INSERT INTO CACLI VALUES ('01-01-2016', 18);
INSERT INTO CACLI VALUES ('01-02-2016', 16);
INSERT INTO CACLI VALUES ('01-03-2016', 18);
INSERT INTO CACLI VALUES ('01-04-2016', 19);
INSERT INTO CACLI VALUES ('01-05-2016', 20);
INSERT INTO CACLI VALUES ('01-06-2016', 10);
INSERT INTO CACLI VALUES ('01-07-2016', 18);
INSERT INTO CACLI VALUES ('01-08-2016', 13);
INSERT INTO CACLI VALUES ('01-09-2016', 19);
INSERT INTO CACLI VALUES ('01-10-2016', 18);
INSERT INTO CACLI VALUES ('01-11-2016', 20);
INSERT INTO CACLI VALUES ('01-12-2016', 12);
INSERT INTO CACLI VALUES ('01-01-2017', 14);
INSERT INTO CACLI VALUES ('01-02-2017', 12);
INSERT INTO CACLI VALUES ('01-03-2017', 17);
INSERT INTO CACLI VALUES ('01-04-2017', 12);
INSERT INTO CACLI VALUES ('01-05-2017', 20);
INSERT INTO CACLI VALUES ('01-06-2017', 14);
INSERT INTO CACLI VALUES ('01-07-2017', 16);
INSERT INTO CACLI VALUES ('01-08-2017', 19);
INSERT INTO CACLI VALUES ('01-09-2017', 12);
INSERT INTO CACLI VALUES ('01-10-2017', 12);
INSERT INTO CACLI VALUES ('01-11-2017', 19);
INSERT INTO CACLI VALUES ('01-12-2017', 20);
INSERT INTO CACLI VALUES ('01-01-2018', 15);
INSERT INTO CACLI VALUES ('01-02-2018', 11);
INSERT INTO CACLI VALUES ('01-03-2018', 14);
INSERT INTO CACLI VALUES ('01-04-2018', 17);
INSERT INTO CACLI VALUES ('01-05-2018', 13);
INSERT INTO CACLI VALUES ('01-06-2018', 13);
INSERT INTO CACLI VALUES ('01-07-2018', 11);
INSERT INTO CACLI VALUES ('01-08-2018', 10);
INSERT INTO CACLI VALUES ('01-09-2018', 13);
COMMIT;

SELECT SUM(MONTANTCA) FROM CACLI WHERE EXTRACT(YEAR FROM DATECA)='2010';
SELECT SUM(MONTANTCA) FROM CACLI WHERE EXTRACT(YEAR FROM DATECA)='2011';
SELECT SUM(MONTANTCA) FROM CACLI WHERE EXTRACT(YEAR FROM DATECA)='2018';
SELECT SUM(MONTANTCA) FROM CACLI WHERE EXTRACT(YEAR FROM DATECA)='2018' AND EXTRACT(MONTH FROM DATECA) BETWEEN '01' AND '03';

SELECT SUM (CA)FROM(
	SELECT SUM(MONTANTCA)AS CA 
		FROM CACLI 
		WHERE EXTRACT(YEAR FROM DATECA)='2012'
	UNION 
	SELECT SUM(MONTANTCA) AS CA 
		FROM CACLI 
		WHERE EXTRACT(YEAR FROM DATECA)='2013');

SELECT SUM(MONTANTCA) FROM CACLI WHERE EXTRACT(YEAR FROM DATECA) BETWEEN '2012' AND '2013';
SELECT SUM(MONTANTCA) FROM CACLI WHERE EXTRACT(YEAR FROM DATECA) BETWEEN '2010' AND '2018';

/*
A vous les requetes suivantes :
Donnez la représentation graphique sous EXCEL !
Gestion des "Reporting"

Chiffre d’affaires pour l’année 2010
Chiffre d’affaires pour l’année 2011

Chiffre d’affaires pour l’année 2018
Chiffre d’affaires de 2018 par trimestre
Chiffre d’affaires de 2018 par semestre

Chiffre d’affaires pour les deux années 2012 et 2013
Chiffre d’affaires de 2010 à 2018

Chiffre d’affaires de 2010 à 2018 par trimestre
Chiffre d’affaires de 2010 à 2018 par semestre

Statistiques sur le chiffre d’affaires – Période de 2010 à 2018

*/



--======================================================================================
--======================================================================================
--======================================================================================


-- ===============================================================================
-- Définition de la structure des données ================= DEBUT    =============
-- en SQL 2 ======================================================================
-- Utilisation des tables ========== Magasin FR01 ====== PARIS   =================
-- CLIENTS, ARTICLES, COMMANDES et DETAILCOM

-- Création des tables ============= Magasin FR02 ====== PARIS   =================
-- Création des tables ============= Magasin TN02 ====== SOUSSE  =================


-- INTEGRATION DE BASES DE DONNEES ; DATA INTEGRATION
-- QUALITE DES DONNEES ; DATA QUALITY

--======================================================================================
--======================================================================================
--======================================================================================

/*

-- Etant donné l'ensemble des magasins

-- Chaque binôme aura à céer sa propore BD GesComI (On verra ultérieurement!)!

-- Afficher la table MAGASINS

-- Développez une procédure AJOUTECOLONNE qui permet d'ajouter à une table une colonne qui porte le nom de MAGASIN
-- Le contenu de cette colonne est l'identifiant du magasin NUMMAG
-- En entrée le nom de la table et le contenu de la colonne ; En sortie une nouvelle table dont le nom est le nom de la table en entrée concaténé au _NUMMAG

-- L'exécution de la procédure permet donc d'affecter les données à un seul magasin
-- On considère que les données dans les tables CLIENTS, ARTICLES, COMMANDES et DETAILCOM sont celles du magasin FR01

-- EXEC AJOUTECOLONNE('CLIENTS', 'FR01')

-- EXEC AJOUTECOLONNE('CLIENTS', 'FR02')

-- Corrigez le contenu de la nouvelle table CLIENTS_FR02 ; Comment savoir si elle contient des anomalies et lesquelles ?

-- EXEC AJOUTECOLONNE('CLIENTS', 'TN02')

-- Corrigez le contenu de la nouvelle table CLIENTS_TN02 ; Comment savoir si elle contient des anomalies et lesquelles ? et lesquelles ?

-- Assemblez (intégrer, fusionner) dans une nouvelle table, de nom TOUSCLIENTS, tous les clients des différents magasins

-- Corrigez le contenu de la nouvelle table TOUSCLIENTS ; Comment savoir si elle contient des anomalies et lesquelles ? et lesquelles ?

-- Faire de même pour les toutes les autres tables !!!

-- Assemblez (intégrer, fusionner) dans une nouvelle BDDWBD l'ensemble des tables des différents magasins et tout le nécessaire
-- Le résultat est : TOUSCLIENTS (avec l'historique des mouvements), TOUSARTICLES (avec l'historique des mouvements), TOUSCOMMANDES, TOUSDETAILSCOM, TOUSMAGASINS (avec l'historique des mouvements), etc...
*/


--=====================================================================================================================
--=====================================================================================================================
-- NOUVELLES DONNEES == NOUVELLES DONNEES  == NOUVELLES DONNEES
--=====================================================================================================================
--=====================================================================================================================


-- Les clients du magasin FR02 c est celui de Paris en France
--FR02
DROP TABLE CLIENTS1;
DROP TABLE ARTICLES1;
DROP TABLE COMMANDES1;
DROP TABLE DETAILSCOM1;
--TN02
DROP TABLE CLIENTS;
DROP TABLE ARTICLES;
DROP TABLE COMMANDES;
DROP TABLE DETAILSCOM;
--FR01
DROP TABLE CLIENTS2;
DROP TABLE ARTICLES2;
DROP TABLE COMMANDES2;
DROP TABLE DETAILCOM2;

DROP TABLE CLIENTS_TN02;
DROP TABLE CLIENTS1_FR02;
DROP TABLE CLIENTS2_FR01;


DROP TABLE ARTICLES2_FR01;
DROP TABLE ARTICLES1_FR02;
DROP TABLE ARTICLES_TN02;

DROP TABLE COMMANDES2_FR01;
DROP TABLE COMMANDES1_FR02;
DROP TABLE COMMANDES_TN02;

DROP TABLE DETAILCOM2_FR01;
DROP TABLE DETAILSCOM1_FR02;
DROP TABLE DETAILSCOM_TN02;

DROP TABLE TOUSCLIENTS;
DROP TABLE TOUTESCOM;
DROP TABLE TOUSARTICLES;
DROP TABLE TOUSDETAILCOM;
 
CREATE TABLE CLIENTS1 (Col1 VARCHAR(50), Col2 VARCHAR(50), Col3 VARCHAR(50), Col4 VARCHAR(50), Col5 VARCHAR(50), Col6 VARCHAR(50), Col7 VARCHAR(50), VILCLI VARCHAR(50), Col9 VARCHAR(50), Col10 VARCHAR(50), Col11 VARCHAR(20));
INSERT INTO CLIENTS1 VALUES ('2994570', 'Madame', 'RAHMA', 'CLEMENCE', '3', '8, BOULEVARD FOCH', '93800', 'EPINAY-SUR-SEINE', 'FRANCE', 'clemence.rahma@up13.fr', '+33617586565');
INSERT INTO CLIENTS1 VALUES ('2996100', 'Monsieur', 'CLEMENCE', 'ALEXANDRE', '1', '5, RUE DE BELLEVILLE', '75019', 'PARIS', 'FRANCE', 'alexandre.clemence@up13.fr', '+33617586566');
INSERT INTO CLIENTS1 VALUES ('2997007', 'Monsieur', 'TRAIFOR', 'ADAM', '2', '13, AVENUE J. B. CLEMENT', '93430', 'VILLETANEUSE', 'FRANCE', 'adam.traifor@up13.fr', '+33617586567');
INSERT INTO CLIENTS1 VALUES ('2997777', 'Mademoiselle', 'LE BON', 'CLEMENTINE', '1', '18, BOULEVARD FOCH', '93800', 'EPINAY-SUR-SEINE', '', 'clementine.le bon@up13.fr', '+33617586568');
INSERT INTO CLIENTS1 VALUES ('2998500', 'Monsieur', 'CHEVALIER', 'INES', '1', '13, RUE DE LA PAIX', '93800', 'EPINAY SUR SEINE', 'FRANCE', 'ines.chevalier@up13.fr', '0717586560');
INSERT INTO CLIENTS1 VALUES ('3001777', 'Monsieur', 'LE BON', 'Adam', '1', '186, AVENUE D ITALIE', '75013', 'PARIS', 'FRANCE', 'adam.le bon@up13.fr', '0717586561');
INSERT INTO CLIENTS1 VALUES ('2998505', 'Mademoiselle', 'TRAIFOR', 'ALICE', '2', '6, RUE DE LA ROSIERE', '75015', 'PARIS', '', 'alice.traifor@up13.fr', '0717586562');
INSERT INTO CLIENTS1 VALUES ('3000106', 'Monsieur', 'HARISSA', 'FORD', '1', '16, AVENUE FOCH', '75016', 'PARIS', 'FRANCE', 'ford.harissa@up13.fr', '0606');
INSERT INTO CLIENTS1 VALUES ('3000107', 'MO NSIEUR', 'ONRI', 'PANDA', '2', '77, RUE DE LA LIBERTE', '13001', 'MARSEILLE', 'FRANCE', 'panda.onri@up13.fr', '+33');
INSERT INTO CLIENTS1 VALUES ('3000108', 'Madame', 'EDITE', 'FIAT', '1', '21, AVENUE D ITALIE', '75013', 'PARIS', '', 'fiat.edite@up13.fr', '');
INSERT INTO CLIENTS1 VALUES ('3000109', 'Madame', 'TOYOTA', 'JACKSON', '3', '55, RUE DU JAPON', '94310', 'ORLY VILLE', 'FRANCE', 'jackson.toyota@up13.fr', '');
INSERT INTO CLIENTS1 VALUES ('3000110', 'MADAME', 'ONRI', 'HONDA', '2', '77, RUE DE LA LIBERTE', '13001', 'MARSEILLE', 'FRANC', 'honda.onri@up13.fr', '');
INSERT INTO CLIENTS1 VALUES ('3000111', 'Madame', 'GENEREUX', 'EVE', '1', '18, BOULEVARD KELLERMAN', '75013', 'PARYS', 'FR', 'eve.genereux@up13.fr', '');
INSERT INTO CLIENTS1 VALUES ('299PPPP', 'Mlle', 'BON', 'CLEMENTINE', '1', '18, BOULEVARD FOCH', '93800', 'EPINAY-SUR-SEINE', 'FRANCE', 'clementine.bon@up13.fr', '+21624801801');
INSERT INTO CLIENTS1 VALUES ('3001', 'M.', 'LE BON', 'Adam', '1', '186, AVENUE D ITALIE', '75013', 'Paris', '', 'adam.le bon@up13.fr', '');
INSERT INTO CLIENTS1 VALUES ('3001777', 'Mr', 'LE BON', 'Adem', '1', '186, AVENUE D ITALIE', '75013', 'PARIS', 'france', 'adem.le bon@up13.fr', '');
INSERT INTO CLIENTS1 VALUES ('3001778', 'Mr', 'COURTOIS', 'Bruno', '1', '', '', 'Bruxelles', 'Belgique', 'bruno.courtois@gmail.com', '');
INSERT INTO CLIENTS1 VALUES ('3001779', 'Monsieur', 'VANDERHOTE', 'Ivan', '1', '', '', 'Bruxelles', 'Belgique', 'ivan.vanderhote@gmail.com', '');
INSERT INTO CLIENTS1 VALUES ('3001780', 'Monsieur', 'Hollanda', 'Francis', '1', '', '', 'Bruxelles', 'Belgique', 'francis.hollanda@gmail.com', '');
INSERT INTO CLIENTS1 VALUES ('3001781', 'Monsieur', 'Bernard', 'Hugues', '1', '', '', 'Bruxelles', 'Belgique', 'hugues.bernard@gmail.com', '');
INSERT INTO CLIENTS1 VALUES ('3001782', 'Monsieur', 'LATIFOU', 'Ilyas', '1', '', '', 'Brusselle', 'Belgic', 'ilyas.latifou@gmail.com', '');
INSERT INTO CLIENTS1 VALUES ('3001783', 'Madame', 'LALLEMAND', 'Ines', '1', '', '', 'Berlin', 'ALLEMANGNE', 'ines.lallemand@gmail.com', '');
INSERT INTO CLIENTS1 VALUES ('3001784', 'Monsieur', 'DEUTCH', 'Hans', '1', '', '', 'Berlin', 'ALLEMANGNE', 'hans.deutch@gmail.com', '');
INSERT INTO CLIENTS1 VALUES ('3001785', 'Madame', 'ALMANI', 'Eve', '1', '', '', 'Berlin', 'ALLEMANGNE', 'eve.almani@gmail.com', '');
INSERT INTO CLIENTS1 VALUES ('3001786', 'Madame', 'MERQUELLE', 'Ange', '1', '', '', 'Dublin', 'ALEMANGNE', 'angela.merquelle@gmail.com', '');

-- Les articles du magasin FR02 c est celui de Paris en France

CREATE TABLE ARTICLES1 (Col1 VARCHAR(50), Col2 VARCHAR(50), Col3 VARCHAR(50), Col4 VARCHAR(50), Col5 VARCHAR(50));
INSERT INTO ARTICLES1 VALUES ('00.37291', 'SIEGE DE TABLE', '55.00 €', '10', '26.43 €');
INSERT INTO ARTICLES1 VALUES ('00.37325', 'CASQUE CYCLISTE PROTECTION', '27.00 €', '20', '20.00 €');
INSERT INTO ARTICLES1 VALUES ('00.37341', 'BONNET PARE-CHOCS', '10.71 €', '100', '05.71 €');
INSERT INTO ARTICLES1 VALUES ('00.37366', 'STORE DE PROTECTION', '07.43 €', '5', '04.29 €');
INSERT INTO ARTICLES1 VALUES ('00.37408', 'COINS DE PROTECTION', '04.00 €', '100', '01.71 €');
INSERT INTO ARTICLES1 VALUES ('00.37424', 'CACHE PRISE DE COURANT', '02.29 €', '500', '00.71 €');
INSERT INTO ARTICLES1 VALUES ('00.37432', 'BLOQUE PORTE', '05.00 €', '4', '02.29 €');
INSERT INTO ARTICLES1 VALUES ('00.37457', 'BANDE DE FERMETURE', '02.29 €', '4', '01.71 €');
INSERT INTO ARTICLES1 VALUES ('00.37465', 'PROTECTION DE FOUR', '37.86 €', '10', '26.43 €');
INSERT INTO ARTICLES1 VALUES ('00.37473', 'PROTECTION DE CUISINIERE', '30.71 €', '10', '22.86 €');
INSERT INTO ARTICLES1 VALUES ('00.37515', 'BABY PHONE', '80.71 €', '3', '45.71 €');
INSERT INTO ARTICLES1 VALUES ('00.37630', 'BRETELLE DE SECURITE REMOND', '15.57 €', '8', '11.43 €');
INSERT INTO ARTICLES1 VALUES ('00.39321', 'HAUSSE-CHAISE', '42.71 €', '1', '25.43 €');
INSERT INTO ARTICLES1 VALUES ('00.39495', 'COUVRE ROBINETTERIE', '07.86 €', '12', '04.29 €');
INSERT INTO ARTICLES1 VALUES ('11.36613', 'BARRIERE DE PORTE, EN BOIS', '32.71 €', '2', '25.71 €');
INSERT INTO ARTICLES1 VALUES ('11.36639', 'BARRIERE DE PORTE, EN METAL', '79.14 €', '3', '28.43 €');
INSERT INTO ARTICLES1 VALUES ('11.36860', 'BARRIERE DE LIT', '23.71 €', '10', '15.71 €');
INSERT INTO ARTICLES1 VALUES ('11.37108', 'PORTE-BEBE', '44.86 €', '6', '34.29 €');
INSERT INTO ARTICLES1 VALUES ('11.37173', 'SIEGE-AUTO COSMOS', '126.86 €', '2', '71.43 €');
INSERT INTO ARTICLES1 VALUES ('11.37280', 'SIEGE-AUTO EUROSEAT', '121.29 €', '2', '71.43 €');
INSERT INTO ARTICLES1 VALUES ('WD.001', 'K7 VIDEO - TOY STORY', '21.29 €', '10', '09.29 €');
INSERT INTO ARTICLES1 VALUES ('WD.002', 'DVD - TOY STORY 2', '34.29 €', '10', '12.14 €');
INSERT INTO ARTICLES1 VALUES ('WD.003', 'K7 VIDEO - WINNIE L OURSON', '32.86 €', '5', '09.29 €');
INSERT INTO ARTICLES1 VALUES ('MV.001', 'Jeux Vidéo PS4 SPIDER-MAN', '59.00 €', '250', '19.00 €');

-- Les commandes du magasin FR02 c est celui de Paris en France

CREATE TABLE COMMANDES1 (Col1 VARCHAR(50), Col2 VARCHAR(50), Col3 VARCHAR(50));
INSERT INTO COMMANDES1 VALUES ('20150917BB0001', '2997007', '17/09/2015');
INSERT INTO COMMANDES1 VALUES ('20150917BB0002', '2998500', '17/09/2015');
INSERT INTO COMMANDES1 VALUES ('20151016BB0001', '2996100', '16/10/2015');
INSERT INTO COMMANDES1 VALUES ('20151024BB0001', '2996100', '24/10/2015');
INSERT INTO COMMANDES1 VALUES ('20120156BB0001', '2996100', '16/01/2012');
INSERT INTO COMMANDES1 VALUES ('20120157BB0007', '2996100', '17/01/2012');
INSERT INTO COMMANDES1 VALUES ('20180917BB0007', '3001777', '17/09/2018');

-- Les détails des commandes du magasin FR02 c est celui de Paris en France

CREATE TABLE DETAILSCOM1 (Col1 VARCHAR(50), Col2 VARCHAR(50), Col3 VARCHAR(50), Col4 VARCHAR(50), Col5 VARCHAR(50));
INSERT INTO DETAILSCOM1 VALUES ('20150917BB0001', '00.37291', '2', '35.00 €', '10.00 %');
INSERT INTO DETAILSCOM1 VALUES ('20150917BB0001', '00.37341', '4', '10.71 €', '10.00 %');
INSERT INTO DETAILSCOM1 VALUES ('20150917BB0001', '11.36639', '2', '49.14 €', '00.00 %');
INSERT INTO DETAILSCOM1 VALUES ('20150917BB0001', 'WD.001', '1', '21.29 €', '00.00 %');
INSERT INTO DETAILSCOM1 VALUES ('20150917BB0002', '00.37291', '2', '35.00 €', '00.00 %');
INSERT INTO DETAILSCOM1 VALUES ('20150917BB0002', 'WD.001', '1', '21.29 €', '00.00 %');
INSERT INTO DETAILSCOM1 VALUES ('20150917BB0002', 'WD.002', '1', '34.29 €', '00.00 %');
INSERT INTO DETAILSCOM1 VALUES ('20150917BB0002', 'WD.003', '1', '22.86 €', '00.00 %');
INSERT INTO DETAILSCOM1 VALUES ('20151016BB0001', 'WD.001', '1', '21.29 €', '20.00 %');
INSERT INTO DETAILSCOM1 VALUES ('20151016BB0001', 'WD.002', '1', '34.29 €', '00.00 %');
INSERT INTO DETAILSCOM1 VALUES ('20151016BB0001', 'WD.003', '1', '22.86 €', '00.00 %');
INSERT INTO DETAILSCOM1 VALUES ('20151024BB0001', '00.37457', '2', '03.29 €', '00.00 %');
INSERT INTO DETAILSCOM1 VALUES ('20120156BB0001', 'WD.003', '2', '25.00 €', '00.00 %');
INSERT INTO DETAILSCOM1 VALUES ('20120157BB0007', 'WD.001', '5', '22.00 €', '50.00 %');
INSERT INTO DETAILSCOM1 VALUES ('20120157BB0007', 'WD.002', '10', '34.29 €', '50.00 %');
INSERT INTO DETAILSCOM1 VALUES ('20180917BB0007', 'MV.001', '2', '59.00 €', '10.00 %');

COMMIT;
-

--=====================================================================================================================
--=====================================================================================================================
-- NOUVELLES DONNEES == NOUVELLES DONNEES  == NOUVELLES DONNEES
--=====================================================================================================================
--=====================================================================================================================


-- Les clients du magasin TN02 c est celui de Sousse en Tunisie


CREATE TABLE CLIENTS (Col1 VARCHAR(50), Col2 VARCHAR(50), Col3 VARCHAR(50), Col4 VARCHAR(50), Col5 VARCHAR(50), Col6 VARCHAR(50), Col7 VARCHAR(50), Col8 VARCHAR(50), Col9 VARCHAR(50), Col10 VARCHAR(50), Col11 VARCHAR(20));
INSERT INTO CLIENTS VALUES ('TN0001', 'Madame', 'RAHMA', 'LINA', '3', '', '', 'TUNIS', 'TUNISIE', 'lina.rahma@gmail.com', '+21624801801');
INSERT INTO CLIENTS VALUES ('TN0002', 'Madame', 'SFAXI', 'KENZA', '3', '', '', 'SOUSSE', 'TUNISIE', 'kenza.sfaxi@gmail.com', '+21624801801');
INSERT INTO CLIENTS VALUES ('TN0003', 'Madame', 'GARROU', 'LINDA', '3', '', '', 'SOUSSE', 'Italie', 'linda.garrou@gmail.com', '+21624801801');
INSERT INTO CLIENTS VALUES ('TN0004', 'Madame', 'FARES', 'LEILA', '3', '', '', 'SOUSSE', 'TUNISIE', 'leila.fares@gmail.com', '+21624801801');
INSERT INTO CLIENTS VALUES ('TN0005', 'Madame', 'FARES', 'INES', '3', '', '', 'SOUSSE', 'TUNISIE', 'ines.fares@gmail.com', '+21624801801');
INSERT INTO CLIENTS VALUES ('TN0006', 'Madame', 'FARES', 'INES', '3', '', '', 'SOUSSE', 'TUNISIE', 'ines.fares@gmail.com', '+21624801801');
INSERT INTO CLIENTS VALUES ('TN0007', 'Madame', 'FARES', 'MARIA', '3', '', '', 'SOUSSE', 'TUNISIE', 'maria.fares@gmail.com', '+21624801801');
INSERT INTO CLIENTS VALUES ('TN0008', 'Madame', 'FARES', 'INES', '1', '', '', 'SOUSSE', 'TUNISIE', 'ines.fares@gmail.com', '+21624801801');
INSERT INTO CLIENTS VALUES ('TN0009', 'Madame', 'DIAB', 'SONIA', '2', '', '', 'SOUSSE', 'TUNISIE', 'sonia.diab@gmail.com', '+21624801801');
INSERT INTO CLIENTS VALUES ('TN0010', 'Madame', 'MAGREBI', 'HAYET', '1', '', '', 'SOUSSE', 'TUNISIE', 'hayet.magrebi@gmail.com', '+21624801801');
INSERT INTO CLIENTS VALUES ('TN0011', 'Madame', 'SLIMANE', 'AZIZA', '3', '', '', 'SOUSSE', 'TUNISIE', 'aziza.slimane@gmail.com', '+21624801801');
INSERT INTO CLIENTS VALUES ('TN0012', 'Madame', 'SLIMANE', 'BEYYA', '2', '', '', 'BIZERTE', 'TUNISIE', 'beyya.slimane@gmail.com', '+21624801801');
INSERT INTO CLIENTS VALUES ('TN0013', 'Madame', 'SAHLOUL', 'MERIAM', '1', '', '', 'BIZERTE', 'TUNISIE', 'meriam.sahloul@gmail.com', '+21624801801');
INSERT INTO CLIENTS VALUES ('TN0014', 'Monsieur', 'BONBON', 'FAOUZI', '1', '', '', 'BIZERTE', 'TUNISIE', 'faouzi.bonbon@gmail.com', '+21624801801');
INSERT INTO CLIENTS VALUES ('TN0015', 'Monsieur', 'ZIZOU', 'ADAM', '1', '', '', 'BIZERTE', 'TUNISIE', 'adam.zizou@gmail.com', '+21624801801');
INSERT INTO CLIENTS VALUES ('TN0016', 'Monsieur', 'TOUNSI', 'ADEM', '1', '', '', 'BIZERTE', 'TUNISIE', 'adem.tounsi@gmail.com', '+21624801801');
INSERT INTO CLIENTS VALUES ('TN0017', 'Monsieur', 'ZATLA', 'SERGIO', '1', '', '', 'DJERBA', 'France', 'sergio.zatla@gmail.com', '+21624801801');
INSERT INTO CLIENTS VALUES ('TN0018', 'Monsieur', 'ZIDANE', 'ALI', '1', '', '', 'HAMMAMET', 'TUNISIE', 'ali.zidane@gmail.com', '+21624801801');
INSERT INTO CLIENTS VALUES ('TN0019', 'Monsieur', 'MOHAMED', 'MOHAMED', '1', '', '', 'HAMMAMET', 'TUNISIE', 'mohamed.mohamed@gmail.com', '+21624801801');
INSERT INTO CLIENTS VALUES ('TN0020', 'Monsieur', 'LATIFOU', 'ELIAS', '1', '', '', 'HAMMAMET', 'TUNISIE', 'elias.latifou@gmail.com', '+21624801801');
INSERT INTO CLIENTS VALUES ('TN0021', 'Monsieur', 'LATIFOU', 'ABDERRAOUF', '1', '', '', 'HAMMAMET', 'TUNISIE', 'abderraouf.latifou@gmail.com', '+21624801801');
INSERT INTO CLIENTS VALUES ('TN0022', 'Monsieur', 'SOUSSI', 'KARIM', '1', '', '', 'SOUSSE', 'TUNISIE', 'karim.soussi@gmail.com', '+21624801801');
INSERT INTO CLIENTS VALUES ('TN0023', 'Monsieur', 'SOURIR', 'FATHI', '1', '', '', 'SOUSSE', 'TUNISIE', 'fathi.sourir@gmail.com', '+21624801801');
INSERT INTO CLIENTS VALUES ('TN0024', 'Monsieur', 'BAJBOUJ', 'BEJI', '1', '', '', 'SOUSSE', 'TUNISIE', 'beji.bajbouj@gmail.com', '+21624801801');
INSERT INTO CLIENTS VALUES ('TN0025', 'Monsieur', 'RAIS', 'TAFI', '1', '', '', 'TUNIS', 'TUNISIE', 'tafi.rais@gmail.com', '+21624801801');
INSERT INTO CLIENTS VALUES ('2997007', 'Monsieur', 'TRAIFOR', 'ADAM', '2', '13, AVENUE J. B. CLEMENT', '93430', 'VILLETANEUSE', 'FRANCE', 'adam.traifor@up13.fr', '+33617586567');


-- Les articles du magasin TN02 c est celui de Sousse en Tunisie

CREATE TABLE ARTICLES (Col1 VARCHAR(50), Col2 VARCHAR(50), Col3 VARCHAR(50), Col4 VARCHAR(50), Col5 VARCHAR(50));
INSERT INTO ARTICLES VALUES ('00.37291', 'SIEGE DE TABLE', '95.15 Dt', '10', '79.29 Dt');
INSERT INTO ARTICLES VALUES ('00.37325', 'CASQUE CYCLISTE PROTECTION', '72.00 Dt', '20', '60.00 Dt');
INSERT INTO ARTICLES VALUES ('00.37341', 'BONNET PARE-CHOCS', '20.56 Dt', '100', '17.13 Dt');
INSERT INTO ARTICLES VALUES ('00.37366', 'STORE DE PROTECTION', '15.44 Dt', '5', '12.87 Dt');
INSERT INTO ARTICLES VALUES ('00.37408', 'COINS DE PROTECTION', '06.16 Dt', '100', '05.13 Dt');
INSERT INTO ARTICLES VALUES ('00.37424', 'CACHE PRISE DE COURANT', '02.56 Dt', '500', '02.13 Dt');
INSERT INTO ARTICLES VALUES ('00.37432', 'BLOQUE PORTE', '08.24 Dt', '4', '06.87 Dt');
INSERT INTO ARTICLES VALUES ('00.37457', 'BANDE DE FERMETURE', '06.16 Dt', '4', '05.13 Dt');
INSERT INTO ARTICLES VALUES ('00.37465', 'PROTECTION DE FOUR', '95.15 Dt', '10', '79.29 Dt');
INSERT INTO ARTICLES VALUES ('00.37473', 'PROTECTION DE CUISINIERE', '82.30 Dt', '10', '68.58 Dt');
INSERT INTO ARTICLES VALUES ('00.37515', 'BABY PHONE', '164.56 Dt', '3', '137.13 Dt');
INSERT INTO ARTICLES VALUES ('00.37630', 'BRETELLE DE SECURITE REMOND', '41.15 Dt', '8', '34.29 Dt');
INSERT INTO ARTICLES VALUES ('00.39321', 'HAUSSE-CHAISE', '91.55 Dt', '1', '76.29 Dt');
INSERT INTO ARTICLES VALUES ('00.39495', 'COUVRE ROBINETTERIE', '15.44 Dt', '12', '12.87 Dt');
INSERT INTO ARTICLES VALUES ('11.36613', 'BARRIERE DE PORTE, EN BOIS', '92.56 Dt', '2', '77.13 Dt');
INSERT INTO ARTICLES VALUES ('11.36639', 'BARRIERE DE PORTE, EN METAL', '102.35 Dt', '3', '85.29 Dt');
INSERT INTO ARTICLES VALUES ('11.36860', 'BARRIERE DE LIT', '56.56 Dt', '10', '47.13 Dt');
INSERT INTO ARTICLES VALUES ('11.37108', 'PORTE-BEBE', '123.44 Dt', '6', '102.87 Dt');
INSERT INTO ARTICLES VALUES ('11.37173', 'SIEGE-AUTO COSMOS', '257.15 Dt', '2', '214.29 Dt');
INSERT INTO ARTICLES VALUES ('11.37280', 'SIEGE-AUTO EUROSEAT', '257.15 Dt', '2', '214.29 Dt');
INSERT INTO ARTICLES VALUES ('WD.001', 'K7 VIDEO - TOY STORY', '33.44 Dt', '10', '27.87 Dt');
INSERT INTO ARTICLES VALUES ('WD.002', 'DVD - TOY STORY 2', '43.70 Dt', '10', '36.42 Dt');
INSERT INTO ARTICLES VALUES ('WD.003', 'K7 VIDEO - WINNIE L OURSON', '33.44 Dt', '5', '27.87 Dt');
INSERT INTO ARTICLES VALUES ('MV.001', 'Jeu Vidéo PS4 SPIDER-MAN', '68.40 Dt', '250', '57.00 Dt');

--Les commandes du magasin TN02 c est celui de Sousse en Tunisie

CREATE TABLE COMMANDES (Col1 VARCHAR(50), Col2 VARCHAR(50), Col3 VARCHAR(50));
INSERT INTO COMMANDES VALUES ('KTN001', 'TN0001', '17/09/2015');
INSERT INTO COMMANDES VALUES ('KTN002', 'TN0002', '17/09/2015');
INSERT INTO COMMANDES VALUES ('KTN003', 'TN0003', '16/10/2015');
INSERT INTO COMMANDES VALUES ('KTN004', 'TN0004', '24/10/2015');
INSERT INTO COMMANDES VALUES ('KTN005', 'TN0001', '16/01/2012');
INSERT INTO COMMANDES VALUES ('KTN006', 'TN0022', '17/01/2017');
INSERT INTO COMMANDES VALUES ('KTN007', 'TN0022', '17/09/2018');

-- Les détails des commandes du magasin TN02 c est celui de Sousse en Tunisie

CREATE TABLE DETAILSCOM (Col1 VARCHAR(50), Col2 VARCHAR(50), Col3 VARCHAR(50), Col4 VARCHAR(50), Col5 VARCHAR(50));
INSERT INTO DETAILSCOM VALUES ('KTN001', '00.37291', '2', '95.15 Dt', '30.00 %');
INSERT INTO DETAILSCOM VALUES ('KTN001', '00.37341', '4', '20.56 Dt', '30.00 %');
INSERT INTO DETAILSCOM VALUES ('KTN001', '11.36639', '2', '102.35 Dt', '30.00 %');
INSERT INTO DETAILSCOM VALUES ('KTN001', 'WD.001', '1', '33.44 Dt', '30.00 %');
INSERT INTO DETAILSCOM VALUES ('KTN002', '00.37291', '2', '95.15 Dt', '30.00 %');
INSERT INTO DETAILSCOM VALUES ('KTN002', 'WD.001', '1', '33.44 Dt', '30.00 %');
INSERT INTO DETAILSCOM VALUES ('KTN002', 'WD.002', '1', '43.70 Dt', '30.00 %');
INSERT INTO DETAILSCOM VALUES ('KTN002', 'WD.003', '1', '33.44 Dt', '30.00 %');
INSERT INTO DETAILSCOM VALUES ('KTN001', 'WD.001', '1', '33.44 Dt', '30.00 %');
INSERT INTO DETAILSCOM VALUES ('KTN001', 'WD.002', '1', '43.70 Dt', '30.00 %');
INSERT INTO DETAILSCOM VALUES ('KTN001', 'WD.003', '1', '33.44 Dt', '30.00 %');
INSERT INTO DETAILSCOM VALUES ('KTN001', '00.37457', '2', '06.16 Dt', '30.00 %');
INSERT INTO DETAILSCOM VALUES ('KTN001', 'WD.003', '2', '33.44 Dt', '30.00 %');
INSERT INTO DETAILSCOM VALUES ('KTN005', 'WD.001', '5', '33.44 Dt', '30.00 %');
INSERT INTO DETAILSCOM VALUES ('KTN007', 'WD.002', '10', '43.70 Dt', '30.00 %');
INSERT INTO DETAILSCOM VALUES ('KTN007', 'MV.001', '2', '68.40 Dt', '30.00 %');

COMMIT;



-- Les clients du magasin FR01 c est celui de Paris en France


CREATE TABLE CLIENTS2(CODCLI VARCHAR(10),CIVCLI VARCHAR(50),NOMCLI VARCHAR(50),PRENCLI VARCHAR(50),CATCLI VARCHAR(50),ADNCLI VARCHAR(50),ADRCLI VARCHAR(50),CPCLI VARCHAR(50),VILCLI VARCHAR(50),PAYSCLI VARCHAR(50),MAILCLI VARCHAR(50),TELCLI VARCHAR(50)
);

INSERT INTO CLIENTS2 (CODCLI, CIVCLI, NOMCLI, PRENCLI, CATCLI, ADNCLI, ADRCLI, CPCLI, VILCLI, PAYSCLI, MAILCLI, TELCLI)VALUES ('C001', 'Madame', 'CLEM@ENT', 'EVE', '1', '18', 'BOULEVARD FOCH', '91000', 'EPINAY-SUR-ORGE', 'FRANCE','eve.clement@gmail.com', '+33777889911');
INSERT INTO CLIENTS2 (CODCLI, CIVCLI, NOMCLI, PRENCLI, CATCLI, ADNCLI, ADRCLI, CPCLI, VILCLI, PAYSCLI, MAILCLI, TELCLI)VALUES ('C002', 'Madame', 'LESEUL', 'MARIE', '1', '21', 'AVENUE D ITALIE', '75013', 'PARIS', 'FRANCE','marieleseul@yahoo.fr', '0617586565');
INSERT INTO CLIENTS2 (CODCLI, CIVCLI, NOMCLI, PRENCLI, CATCLI, ADNCLI, ADRCLI, CPCLI, VILCLI, PAYSCLI, MAILCLI, TELCLI)VALUES ('C003', 'Madame', 'UNIQUE', 'MARINE', '2', '77', 'RUE DE LA LIBERTE', '13001', 'MARCHEILLE', 'FRANCE','munique@gmail.com', '+33777889922');
INSERT INTO CLIENTS2 (CODCLI, CIVCLI, NOMCLI, PRENCLI, CATCLI, ADNCLI, ADRCLI, CPCLI, VILCLI, PAYSCLI, MAILCLI, TELCLI)VALUES ('C004', 'Madame', 'CLEMENCE', 'EVELYNE', '3', '8 BIS', 'BOULEVARD FOCH', '93800', 'EPINAY-SUR-SEINE', 'FRANCE','clemence evelyne@gmail.com', '+33777889933');
INSERT INTO CLIENTS2 (CODCLI, CIVCLI, NOMCLI, PRENCLI, CATCLI, ADNCLI, ADRCLI, CPCLI, VILCLI, PAYSCLI, MAILCLI, TELCLI)VALUES ('C005', 'Madame', 'FORT', 'JEANNE',' 3', '55', 'RUE DU JAPON', '94310', 'ORLY-VILLE', 'FRANCE','jfort\@hotmail.fr', '+33777889944');
INSERT INTO CLIENTS2 (CODCLI, CIVCLI, NOMCLI, PRENCLI, CATCLI, ADNCLI, ADRCLI, CPCLI, VILCLI, PAYSCLI, MAILCLI, TELCLI)VALUES ('C006', 'Mademoiselle', 'LE BON', 'CLEMENCE', '1', '18', 'BOULEVARD FOCH', '93800', 'EPINAY-SUR-SEINE', 'FRANCE','clemence.le bon@cfo.fr', '0033777889955');
INSERT INTO CLIENTS2 (CODCLI, CIVCLI, NOMCLI, PRENCLI, CATCLI, ADNCLI, ADRCLI, CPCLI, VILCLI, PAYSCLI, MAILCLI, TELCLI)VALUES ('C007', 'Mademoiselle', 'TRAIFOR', 'ALICE', '2', '6', 'RUE DE LA ROSIERE', '75015', 'PARIS', 'FRANCE','alice.traifor@yahoo.fr', '+33777889966');
INSERT INTO CLIENTS2 (CODCLI, CIVCLI, NOMCLI, PRENCLI, CATCLI, ADNCLI, ADRCLI, CPCLI, VILCLI, PAYSCLI, MAILCLI, TELCLI)VALUES ('C008', 'Monsieur', 'VIVANT', 'JEAN-BAPTISTE', '1', '13', 'RUE DE LA PAIX', '93800', 'EPINAY-SUR-SEINE', 'FRANCE','jeanbaptiste@', '0607');
INSERT INTO CLIENTS2 (CODCLI, CIVCLI, NOMCLI, PRENCLI, CATCLI, ADNCLI, ADRCLI, CPCLI, VILCLI, PAYSCLI, MAILCLI, TELCLI)VALUES ('C009', 'Monsieur', 'CLEMENCE', 'ALEXANDRE', '1', '5', 'RUE DE BELLEVILLE', '75019', 'PARIS', 'FRANCE','alexandre.clemence@up13.fr', '+33149404071');
INSERT INTO CLIENTS2 (CODCLI, CIVCLI, NOMCLI, PRENCLI, CATCLI, ADNCLI, ADRCLI, CPCLI, VILCLI, PAYSCLI, MAILCLI, TELCLI)VALUES ('C010', 'Monsieur', 'TRAIFOR', 'ALEXANDRE', '1', '16', 'AVENUE FOCH', '75016', 'PARIS', 'FRA','alexandre.traifor@up13.fr', '06070809');
INSERT INTO CLIENTS2 (CODCLI, CIVCLI, NOMCLI, PRENCLI, CATCLI, ADNCLI, ADRCLI, CPCLI, VILCLI, PAYSCLI, MAILCLI, TELCLI)VALUES ('C011', 'Monsieur', 'PREMIER', 'JOS//EPH', '2', '77', 'RUE DE LA LIBERTE', '13001', 'MARCHEILLE', 'FRANCE','josef@premier', '+33777889977');
INSERT INTO CLIENTS2 (CODCLI, CIVCLI, NOMCLI, PRENCLI, CATCLI, ADNCLI, ADRCLI, CPCLI, VILCLI, PAYSCLI, MAILCLI, TELCLI)VALUES ('C013', 'Monsieur', 'FORT', 'GABRIEL', '5', '1', 'AVENUE DE CARTAGE', '99000', 'TUNIS', 'TUNISIE','gabriel.fort@yahoo.fr', '+21624801777');
INSERT INTO CLIENTS2 (CODCLI, CIVCLI, NOMCLI, PRENCLI, CATCLI, ADNCLI, ADRCLI, CPCLI, VILCLI, PAYSCLI, MAILCLI, TELCLI)VALUES ('C014', 'Monsieur', 'ADAM', 'DAVID', '5', '1', 'AVENUE DE ROME', '99001', 'ROME', 'ITALIE','david.adam�@gmail com', '');
INSERT INTO CLIENTS2 (CODCLI, CIVCLI, NOMCLI, PRENCLI, CATCLI, ADNCLI, ADRCLI, CPCLI, VILCLI, PAYSCLI, MAILCLI, TELCLI)VALUES ('C015', 'Monsieur', 'Labsent', 'pala', '7', '1', 'rue des absents', '000', 'BAGDAD', 'IRAQ','pala-labsent@paici', '');
INSERT INTO CLIENTS2 (CODCLI, CIVCLI, NOMCLI, PRENCLI, CATCLI, ADNCLI, ADRCLI, CPCLI, VILCLI, PAYSCLI, MAILCLI, TELCLI)VALUES ('C016', 'Madame', 'obsolete', 'kadym', '7', '1', 'rue des anciens', '000', 'CARTHAGE', 'IFRIQIA','inexistant', 'inexistant');
INSERT INTO CLIENTS2 (CODCLI, CIVCLI, NOMCLI, PRENCLI, CATCLI, ADNCLI, ADRCLI, CPCLI, VILCLI, PAYSCLI, MAILCLI, TELCLI)VALUES ('C017', 'Madame', 'RAHYM', 'KARYM', '1', '1', 'RUE DES GENTILS', '1000', 'CARTHAGE', 'TUNISIE','karym.rahym@gmail.com', '+21624808444');

PROMPT
Pause Tapez sur Enter...
PROMPT
PROMPT =========================================================
PROMPT >> Table : COMMANDES
PROMPT =========================================================
PROMPT


--Les commandes du magasin FR01 c est celui de Paris en France
CREATE TABLE COMMANDES2(NUMCOM VARCHAR2(10),CODCLI VARCHAR2(10),DATCOM VARCHAR(50));
PROMPT
Pause Tapez sur Enter...
PROMPT
PROMPT =========================================================
PROMPT >> Table : ARTICLES
PROMPT =========================================================
PROMPT
INSERT INTO COMMANDES2 (NUMCOM, CODCLI, DATCOM)VALUES ('20001AB', 'C012', '17-09-2000');
INSERT INTO COMMANDES2 (NUMCOM, CODCLI, DATCOM)VALUES ('20002AB', 'C001', '17-11-2000');
INSERT INTO COMMANDES2 (NUMCOM, CODCLI, DATCOM)VALUES ('20003AB', 'C006', '16-10-2000');
INSERT INTO COMMANDES2 (NUMCOM, CODCLI, DATCOM)VALUES ('20004AB', 'C006', '24-10-2000');
INSERT INTO COMMANDES2 (NUMCOM, CODCLI, DATCOM)VALUES ('20011RB', 'C012', '22-01-2001');
INSERT INTO COMMANDES2 (NUMCOM, CODCLI, DATCOM)VALUES ('20012RB', 'C012', '13-03-2001');
INSERT INTO COMMANDES2 (NUMCOM, CODCLI, DATCOM)VALUES ('20031FB', 'C001', '14-03-2003');
INSERT INTO COMMANDES2 (NUMCOM, CODCLI, DATCOM)VALUES ('20051FB', 'C003', '07-01-2005');
INSERT INTO COMMANDES2 (NUMCOM, CODCLI, DATCOM)VALUES ('20052FB', 'C003', '12-01-2005');
INSERT INTO COMMANDES2 (NUMCOM, CODCLI, DATCOM)VALUES ('20053FB', 'C012', '10-03-2005');
INSERT INTO COMMANDES2 (NUMCOM, CODCLI, DATCOM)VALUES ('20054FB', 'C007', '14-03-2005');
INSERT INTO COMMANDES2 (NUMCOM, CODCLI, DATCOM)VALUES ('20055FB', 'C012', '11-03-2005');
INSERT INTO COMMANDES2 (NUMCOM, CODCLI, DATCOM)VALUES ('20056FB', 'C013', '14-03-2005');
INSERT INTO COMMANDES2 (NUMCOM, CODCLI, DATCOM)VALUES ('20057FB', 'C014', '11-03-2005');
INSERT INTO COMMANDES2 (NUMCOM, CODCLI, DATCOM)VALUES ('20061FB', 'C010', '14-02-2003');
INSERT INTO COMMANDES2 (NUMCOM, CODCLI, DATCOM)VALUES ('20062FB', 'C009', '14-02-2003');
INSERT INTO COMMANDES2 (NUMCOM, CODCLI, DATCOM)VALUES ('20065FB', 'C007', '14-02-2003');
INSERT INTO COMMANDES2 (NUMCOM, CODCLI, DATCOM)VALUES ('20066FB', 'C002', '14-02-2003');
INSERT INTO COMMANDES2 (NUMCOM, CODCLI, DATCOM)VALUES ('20067FB', 'C002', '14-02-2003');
INSERT INTO COMMANDES2 (NUMCOM, CODCLI, DATCOM)VALUES ('20068FB', 'C002', '14-02-2003');
INSERT INTO COMMANDES2 (NUMCOM, CODCLI, DATCOM)VALUES ('20069FB', 'C002', '30-01-2007');
INSERT INTO COMMANDES2 (NUMCOM, CODCLI, DATCOM)VALUES ('20070FB', 'C002', '30-01-2007');
INSERT INTO COMMANDES2 (NUMCOM, CODCLI, DATCOM)VALUES ('20071FB', 'C013', '30-01-2007');
INSERT INTO COMMANDES2 (NUMCOM, CODCLI, DATCOM)VALUES ('20072FB', 'C013', '30-01-2007');
INSERT INTO COMMANDES2 (NUMCOM, CODCLI, DATCOM)VALUES ('20073FB', 'C014', '30-01-2007');
INSERT INTO COMMANDES2 (NUMCOM, CODCLI, DATCOM)VALUES ('20074FB', 'C014', '30-01-2007');
INSERT INTO COMMANDES2 (NUMCOM, CODCLI, DATCOM)VALUES ('20184FB', 'C014', '17-09-2018');
INSERT INTO COMMANDES2 (NUMCOM, CODCLI, DATCOM)VALUES ('20181AB', 'C012', '17-09-2018');


-- Les articles du magasin FR01 c est celui de Paris en France

CREATE TABLE ARTICLES2(REFART VARCHAR2(10),NOMART VARCHAR2(50),PVART VARCHAR(50),QSART VARCHAR(50),PAART VARCHAR(50));
INSERT INTO ARTICLES2 (REFART, NOMART, PVART, QSART, PAART)VALUES ('F1.001', 'SIEGE DE TABLE', '35.00 €', '10', '26.43 €');
INSERT INTO ARTICLES2 (REFART, NOMART, PVART, QSART, PAART)VALUES ('F1.002', 'CASQUE CYCLISTE PROTECTION', '27.00 €', '20', '20.00 €');
INSERT INTO ARTICLES2 (REFART, NOMART, PVART, QSART, PAART)VALUES ('F1.003', 'BONNET PARE-CHOCS', '10.71 €', '100', '5.71 €');
INSERT INTO ARTICLES2 (REFART, NOMART, PVART, QSART, PAART)VALUES ('F1.004', 'STORE DE PROTECTION', '7.43 €', '5', '4.29 €');
INSERT INTO ARTICLES2 (REFART, NOMART, PVART, QSART, PAART)VALUES ('F1.005', 'COINS DE PROTECTION', '4.00 €', '100', '1.71 €');
INSERT INTO ARTICLES2 (REFART, NOMART, PVART, QSART, PAART)VALUES ('F1.006', 'CACHE PRISE DE COURANT', '2.29 €', '500', '0.71 €');
INSERT INTO ARTICLES2 (REFART, NOMART, PVART, QSART, PAART)VALUES ('F1.007', 'BLOQUE PORTE', '5.00 €', '4', '2.29 €');
INSERT INTO ARTICLES2 (REFART, NOMART, PVART, QSART, PAART)VALUES ('F1.008', 'BANDE DE FERMETURE', '3.29 €', '4', '1.71 €');
INSERT INTO ARTICLES2 (REFART, NOMART, PVART, QSART, PAART)VALUES ('F1.009', 'PROTECTION DE FOUR', '37.86 €', '10', '26.43 €');
INSERT INTO ARTICLES2 (REFART, NOMART, PVART, QSART, PAART)VALUES ('F1.010', 'PROTECTION DE CUISINIERE', '30.71 €', '10', '22.86 €');
INSERT INTO ARTICLES2 (REFART, NOMART, PVART, QSART, PAART)VALUES ('F1.011', 'BABY PHONE', '80.71 €', '3', '45.71 €');
INSERT INTO ARTICLES2 (REFART, NOMART, PVART, QSART, PAART)VALUES ('F1.012', 'BRETELLE DE SECURITE', '15.57 €', '8', '11.43 €');
INSERT INTO ARTICLES2 (REFART, NOMART, PVART, QSART, PAART)VALUES ('F1.013', 'HAUSSE-CHAISE', '42.71 €', '1',' 25.43 €');
INSERT INTO ARTICLES2 (REFART, NOMART, PVART, QSART, PAART)VALUES ('F1.014', 'COUVRE ROBINETTERIE', '7.86 €', '12', '4.29 €');
INSERT INTO ARTICLES2 (REFART, NOMART, PVART, QSART, PAART)VALUES ('F2.001', 'BARRIERE DE PORTE, EN BOIS', '32.71 €',' 2', '25.71 €');
INSERT INTO ARTICLES2 (REFART, NOMART, PVART, QSART, PAART)VALUES ('F2.002', 'BARRIERE DE PORTE, EN METAL', '49.14 €', '3', '28.43 €');
INSERT INTO ARTICLES2 (REFART, NOMART, PVART, QSART, PAART)VALUES ('F2.003', 'BARRIERE DE LIT', '23.71 €', '10', '15.71 €');
INSERT INTO ARTICLES2 (REFART, NOMART, PVART, QSART, PAART)VALUES ('F2.004', 'PORTE-BEBE', '44.86 €', '6', '34.29 €');
INSERT INTO ARTICLES2 (REFART, NOMART, PVART, QSART, PAART)VALUES ('F2.005', 'SIEGE-AUTO COSMOS', '126.86 €', '2', '71.43 €');
INSERT INTO ARTICLES2 (REFART, NOMART, PVART, QSART, PAART)VALUES ('F2.006', 'SIEGE-AUTO EUROSEAT', '121.29 €', '2', '71.43 €');
INSERT INTO ARTICLES2 (REFART, NOMART, PVART, QSART, PAART)VALUES ('FB.001', 'DVD-SPIRIT',' 24.90 €', '2', '12.00 €');
INSERT INTO ARTICLES2 (REFART, NOMART, PVART, QSART, PAART)VALUES ('FB.002', 'DVD-SPIDER MAN', '24.90 €', '2', '12.00 €');
INSERT INTO ARTICLES2 (REFART, NOMART, PVART, QSART, PAART)VALUES ('FB.003', 'DVD-SPIDER MAN 2', '24.90 €', '2', '12.00 €');
INSERT INTO ARTICLES2 (REFART, NOMART, PVART, QSART, PAART)VALUES ('WD.001', 'K7 VIDEO-TOY STORY', '21.29 €', '10',' 9.29 €');
INSERT INTO ARTICLES2 (REFART, NOMART, PVART, QSART, PAART)VALUES ('WD.002', 'DVD-TOY STORY 2', '34.29 €', '10', '12.14 €');
INSERT INTO ARTICLES2 (REFART, NOMART, PVART, QSART, PAART)VALUES ('WD.003', 'K7 VIDEO-WINNIE L OURSON', '22.86 €', '5', '9.29 €');
INSERT INTO ARTICLES2 (REFART, NOMART, PVART, QSART, PAART)VALUES ('WD.004', 'DVD-FRERES DES OURS', '35.00 €', '3', '13.00 €');
INSERT INTO ARTICLES2 (REFART, NOMART, PVART, QSART, PAART)VALUES ('WD.005', 'K7 VIDEO-LE ROI LION',' 30.00 €', '1', '13.00 €');
INSERT INTO ARTICLES2 (REFART, NOMART, PVART, QSART, PAART)VALUES ('WD.006', 'K7 VIDEO-LE ROI LION 2',' 30.00 €', '4', '13.00 €');
INSERT INTO ARTICLES2 (REFART, NOMART, PVART, QSART, PAART)VALUES ('WD.007', 'K7 VIDEO-LE ROI LION 3', '30.00 €', '3',' 13.00 €');

PROMPT
Pause Tapez sur Enter...
PROMPT
PROMPT =========================================================
PROMPT >> Table : DETAILCOM
PROMPT =========================================================
PROMPT


-- Les détails des commandes du magasin FR01 c est celui de Paris en France
CREATE TABLE DETAILCOM2(NUMCOM VARCHAR2(10),REFART VARCHAR2(10),QTCOM VARCHAR(50),PUART VARCHAR(50),REMISE VARCHAR(50));
INSERT INTO DETAILCOM2 (NUMCOM, REFART, QTCOM, PUART, REMISE)VALUES ('20001AB', 'F1.001', '2', '35.00', '2.50 €');
INSERT INTO DETAILCOM2 (NUMCOM, REFART, QTCOM, PUART, REMISE)VALUES ('20001AB', 'F1.003', '4', '10.71', '3.00 €');
INSERT INTO DETAILCOM2 (NUMCOM, REFART, QTCOM, PUART, REMISE)VALUES ('20001AB', 'F1.013', '2', '49.14', '0.00 €');
INSERT INTO DETAILCOM2 (NUMCOM, REFART, QTCOM, PUART, REMISE)VALUES ('20001AB', 'WD.001', '1', '21.29', '0.00 €');
INSERT INTO DETAILCOM2 (NUMCOM, REFART, QTCOM, PUART, REMISE)VALUES ('20002AB', 'F1.001', '2', '33.00', '3.00 €');
INSERT INTO DETAILCOM2 (NUMCOM, REFART, QTCOM, PUART, REMISE)VALUES ('20002AB', 'WD.001', '1',' 21.29', '0.00 €');
INSERT INTO DETAILCOM2 (NUMCOM, REFART, QTCOM, PUART, REMISE)VALUES ('20002AB', 'WD.002', '1', '34.29', '0.00 €');
INSERT INTO DETAILCOM2 (NUMCOM, REFART, QTCOM, PUART, REMISE)VALUES ('20002AB', 'WD.003', '1', '22.86', '0.00 €');
INSERT INTO DETAILCOM2 (NUMCOM, REFART, QTCOM, PUART, REMISE)VALUES ('20003AB', 'FB.001', '5', '21.00', '4.00');
INSERT INTO DETAILCOM2 (NUMCOM, REFART, QTCOM, PUART, REMISE)VALUES ('20003AB', 'WD.002', '1', '34.29', '0.00 €');
INSERT INTO DETAILCOM2 (NUMCOM, REFART, QTCOM, PUART, REMISE)VALUES ('20003AB', 'WD.003', '1', '22.86', '0.00 €');
INSERT INTO DETAILCOM2 (NUMCOM, REFART, QTCOM, PUART, REMISE)VALUES ('20004AB', 'F1.008', '2', '3.29', '3.50 €');
INSERT INTO DETAILCOM2 (NUMCOM, REFART, QTCOM, PUART, REMISE)VALUES ('20004AB', 'WD.001', '1', '21.29', '2.50 €');
INSERT INTO DETAILCOM2 (NUMCOM, REFART, QTCOM, PUART, REMISE)VALUES ('20012RB', 'F1.007', '5', '5.00', '3.00 €' );
INSERT INTO DETAILCOM2 (NUMCOM, REFART, QTCOM, PUART, REMISE)VALUES ('20012RB', 'F1.009', '1', '37.86', '0.00 €');
INSERT INTO DETAILCOM2 (NUMCOM, REFART, QTCOM, PUART, REMISE)VALUES ('20012RB', 'FB.003', '5', '24.00', '0.00 €');
INSERT INTO DETAILCOM2 (NUMCOM, REFART, QTCOM, PUART, REMISE)VALUES ('20031FB', 'F1.008', '2', '3.29', '3.00 €');
INSERT INTO DETAILCOM2 (NUMCOM, REFART, QTCOM, PUART, REMISE)VALUES ('20031FB', 'F2.001', '1',' 30.71', '0.00 €');
INSERT INTO DETAILCOM2 (NUMCOM, REFART, QTCOM, PUART, REMISE)VALUES ('20031FB', 'FB.001', '5', '21.00', '0.00 €');
INSERT INTO DETAILCOM2 (NUMCOM, REFART, QTCOM, PUART, REMISE)VALUES ('20051FB', 'F1.008', '2', '3.29', '0.00 €');
INSERT INTO DETAILCOM2 (NUMCOM, REFART, QTCOM, PUART, REMISE)VALUES ('20051FB', 'FB.001', '5', '21.00', '4.00 €');
INSERT INTO DETAILCOM2 (NUMCOM, REFART, QTCOM, PUART, REMISE)VALUES ('20052FB', 'F1.001', '2', '35.00', '0.00 €');
INSERT INTO DETAILCOM2 (NUMCOM, REFART, QTCOM, PUART, REMISE)VALUES ('20052FB', 'F1.003', '4', '10.71', '0.00 €');
INSERT INTO DETAILCOM2 (NUMCOM, REFART, QTCOM, PUART, REMISE)VALUES ('20052FB', 'F1.013', '2', '49.14', '3.50 €');
INSERT INTO DETAILCOM2 (NUMCOM, REFART, QTCOM, PUART, REMISE)VALUES ('20052FB', 'WD.001', '1', '21.29', '0.00 €');
INSERT INTO DETAILCOM2 (NUMCOM, REFART, QTCOM, PUART, REMISE)VALUES ('20052FB', 'WD.003', '1', '22.86', '0.00 €');
INSERT INTO DETAILCOM2 (NUMCOM, REFART, QTCOM, PUART, REMISE)VALUES ('20053FB', 'WD.003', '1', '22.86', '0.00 €');
INSERT INTO DETAILCOM2 (NUMCOM, REFART, QTCOM, PUART, REMISE)VALUES ('20054FB', 'WD.003', '1', '22.86', '0.00 €');
INSERT INTO DETAILCOM2 (NUMCOM, REFART, QTCOM, PUART, REMISE)VALUES ('20055FB', 'F1.008', '5', '3.29', '0.00 €');
INSERT INTO DETAILCOM2 (NUMCOM, REFART, QTCOM, PUART, REMISE)VALUES ('20055FB', 'F1.009', '1', '37.86', '0.00 €');
INSERT INTO DETAILCOM2 (NUMCOM, REFART, QTCOM, PUART, REMISE)VALUES ('20055FB', 'F1.011', '2', '80.71', '0.00 €');
INSERT INTO DETAILCOM2 (NUMCOM, REFART, QTCOM, PUART, REMISE)VALUES ('20055FB', 'F2.001', '1', '30.71', '0.00 €');
INSERT INTO DETAILCOM2 (NUMCOM, REFART, QTCOM, PUART, REMISE)VALUES ('20056FB', 'F1.011', '2', '80.71', '0.00 €');
INSERT INTO DETAILCOM2 (NUMCOM, REFART, QTCOM, PUART, REMISE)VALUES ('20057FB', 'F2.001', '1', '30.71', '0.00 €');
INSERT INTO DETAILCOM2 (NUMCOM, REFART, QTCOM, PUART, REMISE)VALUES ('20061FB', 'FB.003', '5', '24.00', '0.00 €');
INSERT INTO DETAILCOM2 (NUMCOM, REFART, QTCOM, PUART, REMISE)VALUES ('20062FB', 'FB.003', '5', '24.00', '0.00 €');
INSERT INTO DETAILCOM2 (NUMCOM, REFART, QTCOM, PUART, REMISE)VALUES ('20065FB', 'FB.003', '5', '24.00', '0.00 €');
INSERT INTO DETAILCOM2 (NUMCOM, REFART, QTCOM, PUART, REMISE)VALUES ('20066FB', 'FB.003', '5', '24.00', '0.00 €');
INSERT INTO DETAILCOM2 (NUMCOM, REFART, QTCOM, PUART, REMISE)VALUES ('20067FB', 'FB.001', '22',' 24.00', '0.00 €');
INSERT INTO DETAILCOM2 (NUMCOM, REFART, QTCOM, PUART, REMISE)VALUES ('20068FB', 'FB.001', '22',' 24.00', '0.00 €');
INSERT INTO DETAILCOM2 (NUMCOM, REFART, QTCOM, PUART, REMISE)VALUES ('20069FB', 'FB.001', '25', '58.00', '0.00 €');
INSERT INTO DETAILCOM2 (NUMCOM, REFART, QTCOM, PUART, REMISE)VALUES ('20070FB', 'FB.001', '50', '24.00', '0.00 €');
INSERT INTO DETAILCOM2 (NUMCOM, REFART, QTCOM, PUART, REMISE)VALUES ('20071FB', 'FB.001', '37', '27.90', '0.00 €');
INSERT INTO DETAILCOM2 (NUMCOM, REFART, QTCOM, PUART, REMISE)VALUES ('20072FB', 'FB.001', '8', '34.00', '0.00 €');
INSERT INTO DETAILCOM2 (NUMCOM, REFART, QTCOM, PUART, REMISE)VALUES ('20073FB', 'FB.001', '35', '15.50', '0.00 €');
INSERT INTO DETAILCOM2 (NUMCOM, REFART, QTCOM, PUART, REMISE)VALUES ('20074FB', 'FB.001', '12', '19.99', '0.00 €');
INSERT INTO DETAILCOM2 (NUMCOM, REFART, QTCOM, PUART, REMISE)VALUES ('20181AB', 'FB.001', '7', '17.77', '0.00 €');
PROMPT
Pause Tapez sur Enter...

SET SERVEROUTPUT ON 

-- LA PROCEDURE  AJOUTCOLONNE PREMET DE CREER UNE NOUVELLE TABLE QUI CONTIENT JUSTE LES CLIENST DE PARIS ET QUI PORTE LE NOM CLIENTS_FRO1 ET/OU CLIENTS1_FR02
CREATE OR REPLACE PROCEDURE AJOUTECOLONNE(TABLEDF IN VARCHAR,COLONNE2 IN VARCHAR)AS
	REQ0 VARCHAR(2000):='';
	REQ VARCHAR(2000):='';
	REQ2 VARCHAR(2000):='';
BEGIN
		REQ0:='CREATE TABLE ' ||TABLEDF||'_'||COLONNE2|| ' AS SELECT * FROM '||TABLEDF|| ' WHERE UPPER(VILCLI)=''PARIS'' and SOUNDEX(VILCLI)=SOUNDEX(''PARIS'')';
		EXECUTE IMMEDIATE REQ0;
		REQ:='ALTER TABLE ' ||TABLEDF||'_'||COLONNE2|| ' ADD MAGASIN VARCHAR(25)';
		EXECUTE IMMEDIATE REQ;
		REQ2:='UPDATE ' ||TABLEDF||'_'||COLONNE2|| ' SET MAGASIN = '''||COLONNE2||''' WHERE MAGASIN IS NULL ';
		EXECUTE IMMEDIATE REQ2;
END;
/
--########################################################################################################
--########################################################################################################
--########################################################################################################

-- LA PROCEDURE  AJOUTCOLONNE1 PREMET DE CREER UNE NOUVELLE TABLE QUI CONTIENT JUSTE LES CLIENTS DE SOUSSE ET QUI PORTE LE NOM CLIENTS_TN02
CREATE OR REPLACE PROCEDURE AJOUTECOLONNE1(TABLEDF IN VARCHAR,COLONNE2 IN VARCHAR)AS
	REQ0 VARCHAR(2000):='';
	REQ VARCHAR(2000):='';
	REQ2 VARCHAR(2000):='';
BEGIN
		--REQ0:='RENAME '||TABLEDF||' to '||TABLEDF||'_'||COLONNE2 ;
		--EXECUTE IMMEDIATE REQ0;
		REQ0:='CREATE TABLE ' ||TABLEDF||'_'||COLONNE2|| ' AS SELECT * FROM '||TABLEDF|| ' WHERE UPPER(COL8)=''SOUSSE'' and SOUNDEX(COL8)=SOUNDEX(''SOUSSE'')';
		EXECUTE IMMEDIATE REQ0;
		REQ:='ALTER TABLE ' ||TABLEDF||'_'||COLONNE2|| ' ADD MAGASIN VARCHAR(25)';
		EXECUTE IMMEDIATE REQ;
		REQ2:='UPDATE ' ||TABLEDF||'_'||COLONNE2|| ' SET MAGASIN = '''||COLONNE2||''' WHERE MAGASIN IS NULL ';
		EXECUTE IMMEDIATE REQ2;
END;
/
--########################################################################################################
--########################################################################################################
--########################################################################################################

-- LA PROCEDURE AJOUTECOLONNE2 PERMET DE CREER LES TABLE DETAILCOM_PYNUM,ARTICLES_PYNUM ET COMMANDES_PYNUM AVEC LA COLONNE MAGASIN QUI POUR LES VAL PYNUM EXE(MATABLE_TN02)
CREATE OR REPLACE PROCEDURE AJOUTECOLONNE2(TABLEDF IN VARCHAR,COLONNE2 IN VARCHAR)AS
	REQ0 VARCHAR(2000):='';
	REQ VARCHAR(2000):='';
	REQ2 VARCHAR(2000):='';
BEGIN
		REQ0:='CREATE TABLE ' ||TABLEDF||'_'||COLONNE2|| ' AS SELECT * FROM '||TABLEDF;
		EXECUTE IMMEDIATE REQ0;
		REQ:='ALTER TABLE ' ||TABLEDF||'_'||COLONNE2|| ' ADD MAGASIN VARCHAR(25)';
		EXECUTE IMMEDIATE REQ;
		REQ2:='UPDATE ' ||TABLEDF||'_'||COLONNE2|| ' SET MAGASIN = '''||COLONNE2||''' WHERE MAGASIN IS NULL ';
		EXECUTE IMMEDIATE REQ2;
END;
/
--########################################################################################################
--########################################################################################################
--########################################################################################################


EXEC AJOUTECOLONNE('CLIENTS2', 'FR01');
EXEC AJOUTECOLONNE('CLIENTS1', 'FR02');
EXEC AJOUTECOLONNE1('CLIENTS', 'TN02');

EXEC AJOUTECOLONNE2('ARTICLES2', 'FR01');
EXEC AJOUTECOLONNE2('ARTICLES1', 'FR02');
EXEC AJOUTECOLONNE2('ARTICLES', 'TN02');

EXEC AJOUTECOLONNE2('DETAILCOM2', 'FR01');
EXEC AJOUTECOLONNE2('DETAILSCOM1', 'FR02');
EXEC AJOUTECOLONNE2('DETAILSCOM', 'TN02');

EXEC AJOUTECOLONNE2('COMMANDES2', 'FR01');
EXEC AJOUTECOLONNE2('COMMANDES1', 'FR02');
EXEC AJOUTECOLONNE2('COMMANDES', 'TN02');
--########################################################################################################
--########################################################################################################
--########################################################################################################


-- LA PROCEDURE FUSTAB PERMET DE CREER LA TABLE QUI PORTE UN NOM EN PARAME QUI CONTIENT LES COLONNES DE LA TABLE CLIENTS_TN02 AVEC CES LIGNES AINSI QUE LES LIGNES DES DEUX TABLES CLIENTS_FR01 ET CLIENTS1_FR02
	CREATE OR REPLACE PROCEDURE FUSTAB(TABLEDF IN VARCHAR,TAB1 IN VARCHAR)AS
		REQ0 VARCHAR(2000):='';
		REQ1 VARCHAR(2000):='';
		REQ2 VARCHAR(2000):='';
	BEGIN

			REQ0:='CREATE TABLE ' ||TABLEDF||' AS SELECT * FROM '||TAB1;
			EXECUTE IMMEDIATE REQ0;
			REQ1:= 'INSERT INTO TOUSCLIENTS (Col1,Col2,Col3,Col4,Col5,Col6,Col7,Col8,Col9,Col10,Col11,MAGASIN)
			SELECT CODCLI,CIVCLI,NOMCLI,PRENCLI,CATCLI,ADNCLI,CPCLI,VILCLI,PAYSCLI,MAILCLI,TELCLI,MAGASIN FROM CLIENTS2_FR01';
			EXECUTE IMMEDIATE REQ1;
			REQ2:='INSERT INTO TOUSCLIENTS (Col1,Col2,Col3,Col4,Col5,Col6,Col7,Col8,Col9,Col10,Col11,MAGASIN)
			SELECT Col1,Col2,Col3,Col4,Col5,Col6,Col7,VILCLI,Col9,Col10,Col11,MAGASIN FROM CLIENTS1_FR02';
			EXECUTE IMMEDIATE REQ2;
	END;
	/
EXEC FUSTAB('TOUSCLIENTS', 'CLIENTS_TN02');
--########################################################################################################
--########################################################################################################
--########################################################################################################

-- LA PROCEDURE PERMET DE FUSIONNER LES ARTICLES
CREATE OR REPLACE PROCEDURE FUSTABART(TABLEDF IN VARCHAR,TAB1 IN VARCHAR)AS
		REQ0 VARCHAR(2000):='';
		REQ1 VARCHAR(2000):='';
		REQ2 VARCHAR(2000):='';
	BEGIN

			REQ0:='CREATE TABLE ' ||TABLEDF||' AS SELECT * FROM '||TAB1;
			EXECUTE IMMEDIATE REQ0;
			REQ1:= 'INSERT INTO TOUSARTICLES (Col1,Col2,Col3,Col4,Col5,MAGASIN)
			SELECT REFART,NOMART,PVART,QSART,PAART,MAGASIN FROM ARTICLES2_FR01';
			EXECUTE IMMEDIATE REQ1;
			REQ2:='INSERT INTO TOUSARTICLES (Col1,Col2,Col3,Col4,Col5,MAGASIN)
			SELECT Col1,Col2,Col3,Col4,Col5,MAGASIN FROM ARTICLES1_FR02';
			EXECUTE IMMEDIATE REQ2;
	END;
	/

EXEC FUSTABART('TOUSARTICLES', 'ARTICLES_TN02');
--########################################################################################################
--########################################################################################################
--########################################################################################################

-- LA PROCEDURE PERMET DE FUSIONNER LES COMMANDES 
CREATE OR REPLACE PROCEDURE FUSTABCOM(TABLEDF IN VARCHAR,TAB1 IN VARCHAR)AS
		REQ0 VARCHAR(2000):='';
		REQ1 VARCHAR(2000):='';
		REQ2 VARCHAR(2000):='';
	BEGIN

			REQ0:='CREATE TABLE ' ||TABLEDF||' AS SELECT * FROM '||TAB1;
			EXECUTE IMMEDIATE REQ0;
			REQ1:= 'INSERT INTO TOUTESCOM (Col1,Col2,Col3,MAGASIN)
			SELECT NUMCOM,CODCLI,DATCOM,MAGASIN FROM COMMANDES2_FR01';
			EXECUTE IMMEDIATE REQ1;
			REQ2:='INSERT INTO TOUTESCOM (Col1,Col2,Col3,MAGASIN)
			SELECT Col1,Col2,Col3,MAGASIN FROM COMMANDES1_FR02';
			EXECUTE IMMEDIATE REQ2;
	END;
	/
 
EXEC FUSTABCOM('TOUTESCOM', 'COMMANDES_TN02');
--########################################################################################################
--########################################################################################################
--########################################################################################################

-- LA PROCEDURE PERMET DE FUSIONNER LES DETAILCOM
CREATE OR REPLACE PROCEDURE FUSTABDCOM(TABLEDF IN VARCHAR,TAB1 IN VARCHAR)AS
		REQ0 VARCHAR(2000):='';
		REQ1 VARCHAR(2000):='';
		REQ2 VARCHAR(2000):='';
	BEGIN

			REQ0:='CREATE TABLE ' ||TABLEDF||' AS SELECT * FROM '||TAB1;
			EXECUTE IMMEDIATE REQ0;
			REQ1:= 'INSERT INTO TOUSDETAILCOM (Col1,Col2,Col3,Col4,Col5,MAGASIN)
			SELECT NUMCOM,REFART,QTCOM,PUART,REMISE,MAGASIN FROM DETAILCOM2_FR01';
			EXECUTE IMMEDIATE REQ1;
			REQ2:='INSERT INTO TOUSDETAILCOM (Col1,Col2,Col3,Col4,Col5,MAGASIN)
			SELECT Col1,Col2,Col3,Col4,Col5,MAGASIN FROM DETAILSCOM1_FR02';
			EXECUTE IMMEDIATE REQ2;
END;
/

EXEC FUSTABDCOM('TOUSDETAILCOM', 'DETAILSCOM_TN02');
--########################################################################################################
--########################################################################################################
--########################################################################################################

CREATE OR REPLACE PROCEDURE SUPPLINE(TABLEDF IN VARCHAR,MaCol IN VARCHAR)AS
		REQ0 VARCHAR(2000):='';
	BEGIN

			REQ0:='DELETE FROM ' ||TABLEDF||' WHERE '''||MaCol||''' IS NULL';
			EXECUTE IMMEDIATE REQ0;
			
END;
/
 
EXEC SUPPLINE('TOUSDETAILCOM', 'COL1');
EXEC SUPPLINE('TOUSCLIENTS', 'COL1');

--########################################################################################################
--########################################################################################################
--########################################################################################################


--Correction des données dans la tables 

DROP TABLE REGULAREXPRES;
CREATE TABLE REGULAREXPRES(
CATEGORY VARCHAR2(20),
REGULAREXPR VARCHAR2(200),
CONSTRAINT PK_REGULAREXPRES PRIMARY KEY(CATEGORY),
CONSTRAINT CK_REGULAREXPRES_CATEGORY CHECK(CATEGORY = UPPER(CATEGORY))
);

INSERT INTO REGULAREXPRES VALUES
('MAIL', '^[a-zA-Z0-9._%-]+@[a-zA-Z0-9._%-]+\.[a-zA-Z]{2,4}$');
INSERT INTO REGULAREXPRES VALUES
('TELFR-I', '(+33|0033)[1-9][0-9]{8}');
INSERT INTO REGULAREXPRES VALUES
('TELFR', '^(0)[1-9][0-9]{8}');
INSERT INTO REGULAREXPRES VALUES
('TELBE-I', '^(+32|0032)[1-9][0-9]{8}');
INSERT INTO REGULAREXPRES VALUES
('TELBE', '^(0)[1-9][0-9]{7}');
INSERT INTO REGULAREXPRES VALUES
('TELTN-I', '^(+216|00216)[1-9][0-9]{7}');
INSERT INTO REGULAREXPRES VALUES
('TELTN', '^[1-9][0-9]{7}');
INSERT INTO REGULAREXPRES VALUES
('ALPHABETIQUE', '[^[:alpha:] ]');
INSERT INTO REGULAREXPRES VALUES
('NUMERIQUE', '^(\d)+$');
INSERT INTO REGULAREXPRES VALUES
('TEMPERATURECF', '^(\-?[0-9]+(\,[0-9]+)?)(?F|?C)$');
INSERT INTO REGULAREXPRES VALUES
('NOM', '^([a-zA-Z])([a-zA-Z]+|[a-zA-Z]+[\-][a-zA-Z]+)$');
INSERT INTO REGULAREXPRES VALUES
('PRENOM', '^([a-zA-Z])([a-zA-Z]+|[a-zA-Z]+[\-][a-zA-Z]+)$');
INSERT INTO REGULAREXPRES VALUES
('CATEGORIE', '^([1-7])$');
INSERT INTO REGULAREXPRES VALUES
('SEXE_F', '^([fF])([eE][mM]{2}[eE]|[eE][mM][eE][lL]{2}[eE]|[eE][mM][aA][lL][eE])?$|^([wW])([iI][fF][eE]|[oO][mM][aA][nN])$');
INSERT INTO REGULAREXPRES VALUES
('SEXE_H', '^[mM][oO][nN][sS][iI][eE][uU][rR]$|^[mM][rR](\.)?$|[M.]$');
INSERT INTO REGULAREXPRES VALUES
('BLOODGROUP', '^(A|B|O|AB)(\+|\-)$');
INSERT INTO REGULAREXPRES VALUES
('ADRNUM', '^(\d)+( bis| Bis| BIS)?$');
INSERT INTO REGULAREXPRES VALUES
('ADRRUE', '^([ ]?[\w][ ]?)+([^ ])$');
INSERT INTO REGULAREXPRES VALUES
('CP', '^(\d){5}$');
INSERT INTO REGULAREXPRES VALUES
('VILLE', '^([a-zA-Z])([a-zA-Z]+|[a-zA-Z\-]+)([^-])$');
INSERT INTO REGULAREXPRES VALUES
('PAYS', '^([a-zA-Z])([a-zA-Z]+|[a-zA-Z\-]+)([^-])|[FR]|[TN]$');
INSERT INTO REGULAREXPRES VALUES
('CIVILITE', '^(Madame|Monsieur|Mademoiselle|M.|Mr|MLLE|)$');  
INSERT INTO REGULAREXPRES VALUES ('IDCLIENT', '^[1-9][0-9]{6}$');  

--########################################################################################################
--########################################################################################################
--########################################################################################################

--PROCEDURE PERMET DE TESTER LES COLONNES AVEC DES REGEX 
CREATE OR REPLACE PROCEDURE TESTREG(TAB IN VARCHAR, COL IN VARCHAR,CAT IN VARCHAR) IS
REQ    VARCHAR2(200);
REQ1    VARCHAR2(200);
M     VARCHAR2(200);
Z     VARCHAR(200);
TYPE Cursor  IS REF CURSOR;
C1 Cursor;
BEGIN
	REQ:= 'SELECT '||COL||' FROM '||TAB ;
	IF (COL LIKE ('COL%')) THEN
	OPEN C1 FOR REQ ;
		LOOP
			FETCH C1 INTO M;
			EXIT WHEN C1%NOTFOUND;
			SELECT REGULAREXPR INTO Z FROM REGULAREXPRES WHERE CATEGORY =''||CAT; 
			IF (REGEXP_LIKE ( M , Z ) )THEN
				dbms_output.put_line(M);
				IF CAT='TELFR' THEN
					UPDATE TOUSCLIENTS SET  COL11 ='+33'||SUBSTR(col11,2)where REGEXP_LIKE (col11, '^(0)[1-9][0-9]{8}');
				END IF;
			END IF;
		END LOOP;
	
	END IF;
END;
/

EXEC TESTREG('TOUSCLIENTS','COL10','MAIL');
EXEC TESTREG('TOUSCLIENTS','COL11','TELFR');
EXEC TESTREG('TOUSCLIENTS','COL4','NOM');

--########################################################################################################
--########################################################################################################
--########################################################################################################

CREATE OR REPLACE FUNCTION getRegex(categorie VARCHAR)
    return VARCHAR IS
    expression VARCHAR(2000);
BEGIN
  select regularexpr into expression from REGULAREXPRES where category = UPPER(categorie);
  return expression;
END;
/
--########################################################################################################
--########################################################################################################
--########################################################################################################

CREATE OR REPLACE FUNCTION correctionIdTabClids(idClient in VARCHAR)
  return VARCHAR
as
BEGIN
    IF REGEXP_LIKE(idClient, '^[1-9][0-9]{6}$') THEN
        return idClient;
    ELSE
        return '';
    END IF;
END;
/
--########################################################################################################
--########################################################################################################
--########################################################################################################

CREATE OR REPLACE FUNCTION correctionNom(nom in VARCHAR)
  return VARCHAR
as
BEGIN
  return UPPER(nom);
END;
/
--########################################################################################################
--########################################################################################################
--########################################################################################################

CREATE OR REPLACE FUNCTION correctionPrenom(prenom in VARCHAR)
  return VARCHAR
as
BEGIN
  return INITCAP(prenom);
END;
/
--########################################################################################################
--########################################################################################################
--########################################################################################################

CREATE OR REPLACE FUNCTION correctionCivilite(civilite in VARCHAR)
  return VARCHAR
as
BEGIN
  IF REGEXP_LIKE(civilite, '^[mM][oO][nN][sS][iI][eE][uU][rR]$|^[mM][rR](\.)?$|[M.]$') THEN
    return 'Monsieur';
  ELSE if NOT REGEXP_LIKE(civilite, '^[mM][oO][nN][sS][iI][eE][uU][rR]$|^[mM][rR](\.)?$|[M.]$') THEN
    return 'Madame';
  END IF;
  END IF;
END;
/
--########################################################################################################
--########################################################################################################
--########################################################################################################


-- la fonction correctionintra permet de corriger certaines colonnes
CREATE OR REPLACE PROCEDURE correctionIntra(maColonne IN VARCHAR, maTable IN VARCHAR, wordRegex IN VARCHAR)
is
  TYPE curType IS REF CURSOR;
  vCursor curType;
  maVariable VARCHAR(255);
  variableCorrection VARCHAR(255);
  requete VARCHAR(255);
  requeteCorrection VARCHAR(255);
  requeteUpdate VARCHAR(255);
BEGIN
    requete := 'SELECT ' || maColonne || ' FROM ' || maTable;
    OPEN vCursor FOR requete;
    LOOP
      FETCH vCursor INTO maVariable;
        IF REGEXP_LIKE(maVariable, getRegex(wordRegex)) THEN
          requeteCorrection := 'SELECT correction'|| wordRegex ||'(''' || maVariable || ''') from dual';
          EXECUTE IMMEDIATE requeteCorrection
          INTO variableCorrection;
          requeteUpdate := 'UPDATE ' || maTable || ' SET ' || maColonne || '=''' || variableCorrection || ''' WHERE ' || maColonne || '=''' || maVariable || '''';
          EXECUTE IMMEDIATE requeteUpdate;
        ELSE
            requeteUpdate := 'UPDATE ' || maTable || ' SET ' || maColonne || '= null WHERE ' || maColonne || '=''' || maVariable || '''';
            EXECUTE IMMEDIATE requeteUpdate;
        END IF;
      EXIT WHEN vCursor%NOTFOUND;
    END LOOP;
    CLOSE vCursor;
END;
/


exec correctionIntra('COL2', 'TOUSCLIENTS', 'CIVILITE');
--exec correctionIntra('COL3', 'TOUSCLIENTS', 'NOM');
exec correctionIntra('COL4', 'TOUSCLIENTS', 'PRENOM');

--########################################################################################################
--########################################################################################################
--########################################################################################################

--PROCEDURE PERMET DE CORRIGER LES PAYS 
SET SERVEROUTPUT ON
CREATE OR REPLACE PROCEDURE correctionPAYS(maCol in VARCHAR,tab in VARCHAR, regex in VARCHAR,MonPays in VARCHAR)is
  
  requeteUpdate VARCHAR(255);
  requete VARCHAR(255);
  TYPE curType IS REF CURSOR;
  vCursor curType;
  maVariable VARCHAR(255);

BEGIN
	requete := 'SELECT ' || maCol || ' FROM ' || tab || ' where REGEXP_LIKE('|| maCol || ',''^['|| regex||']'')';
    OPEN vCursor FOR requete;
    LOOP
      FETCH vCursor INTO maVariable;
  		
  		DBMS_OUTPUT.PUT_LINE(maVariable);
    	requeteUpdate:= 'UPDATE '||tab||' set '|| maCol||'=('''|| MonPays||''') where REGEXP_LIKE('|| maCol || ',''^['|| regex||']'')';
    	EXECUTE IMMEDIATE requeteUpdate ;
  		DBMS_OUTPUT.PUT_LINE('MODIFIER PAR : '||maVariable);
    	--END IF;
   	EXIT WHEN vCursor%NOTFOUND;
    END LOOP;
    CLOSE vCursor;

END;
/
exec correctionPAYS('col9','TOUSCLIENTS','FR','FRANCE');
exec correctionPAYS('col9','TOUSCLIENTS','TN','TUNISIE');

--########################################################################################################
--########################################################################################################
--########################################################################################################

--LA PROCEDURE PERMET DE MODIFIER LES PAYS EN FONCTION DE VILLE 
CREATE OR REPLACE PROCEDURE AJOUTPAYS(MaTable IN VARCHAR, MaColPays IN VARCHAR, Pays IN VARCHAR ,MaColVill IN VARCHAR ,Ville IN VARCHAR) AS
	REQ VARCHAR(1000);
BEGIN
	REQ:='UPDATE ' || MaTable || ' SET ' || MaColPays || '=''' || Pays || ''' WHERE UPPER (' || MaColVill || ')=UPPER(''' || Ville || ''')';
	EXECUTE IMMEDIATE REQ;
END;
/
EXEC AJOUTPAYS('TOUSCLIENTS','COL9','FRANCE','COL8','PARIS');
EXEC AJOUTPAYS('TOUSCLIENTS','COL9','TUNISIE','COL8','SOUSSE');

--########################################################################################################
--########################################################################################################
--########################################################################################################

DROP TABLE ColonneNull CASCADE CONSTRAINT;
CREATE TABLE ColonneNull(
    NOM VARCHAR(255),
    NBNULL NUMBER(5),
    NBROW NUMBER(5)
);
-- LA PROCEDURE NBCN permet de remplir la table ColonneNull qui contient le nom de la colonne avec nombre de ligne null et le nombre totale de ligne 
CREATE OR REPLACE PROCEDURE NBCN(maColonne in VARCHAR, maTable in VARCHAR)AS
    req VARCHAR(2000);
    nbNull NUMBER;
    nbRow NUMBER;
BEGIN
    req := 'SELECT COUNT(*) FROM ' || maTable || ' WHERE ' || maColonne || ' IS NULL';
    EXECUTE IMMEDIATE req
    INTO nbNull;
    req := 'SELECT COUNT(*) FROM ' || maTable;
    EXECUTE IMMEDIATE req
    INTO nbRow;
    req := 'INSERT INTO ColonneNull VALUES(''' || maColonne || ''',''' || nbNull || ''',''' || NBROW || ''')';
    EXECUTE IMMEDIATE req;

END;
/
EXEC NBCN ('COL8','TOUSCLIENTS');
EXEC NBCN ('COL6','TOUSCLIENTS');
EXEC NBCN ('COL2','TOUSCLIENTS');
SELECT * FROM ColonneNull;

--########################################################################################################
--########################################################################################################
--########################################################################################################
CREATE OR REPLACE PROCEDURE TESTCORR(colonne1 in varchar,colonne2 in varchar,tabledf in varchar)
AS

	homogen varchar(1000):= '';
	homogen2 varchar(1000):= '';
	view1 varchar(1000) := '';
	upda1 varchar(1000) := '';
	view2 varchar(1000) := '';
	upda2 varchar(1000) := '';
	view3 varchar(1000) := '';
	upda3 varchar(1000) := '';

BEGIN
	homogen:='UPDATE ' || tabledf || ' SET ' || colonne1 ||'=UPPER(' || colonne1 || ')';
	execute immediate homogen;
	homogen2:='UPDATE ' || tabledf || ' SET '|| colonne2 ||'=UPPER(' || colonne2 || ' )';
	execute immediate homogen2;


	--correction col1
	view1:='create or replace view test(f,s,d) as select first, second, UTL_MATCH.EDIT_DISTANCE_SIMILARITY(first, second)  as distance from (select '||colonne1||' as first from ' || tabledf || ' group by '||colonne1||' order by count(*) desc),(select '||colonne1||' as second from ' || tabledf || ' group by '||colonne1||' order by count(*) desc) where first != second and UTL_MATCH.EDIT_DISTANCE_SIMILARITY(first, second) >= 50 and (SOUNDEX(first)=SOUNDEX(second)) and (select count(*) from ' || tabledf || ' where '||colonne1||'=first)>=(select count(*) from ' || tabledf || ' where '||colonne1||'=second)';
	execute immediate view1;

	upda1:='update ' || tabledf || ' set ' || colonne1 ||'=(select f from test where s=' || colonne1 ||' and ROWNUM <=1) where ' || colonne1 ||'=ANY(select s from test)';
	execute immediate upda1;

	--correction col2
	view2:='create or replace view test(f,s,d,c) as select first, second, UTL_MATCH.EDIT_DISTANCE_SIMILARITY(first, second)  as distance,c from (select ' || colonne2 || ' as first,count(*) as c from ' || tabledf || ' group by ' || colonne2 || ' order by count(*) desc),(select ' || colonne2 || ' as second from ' || tabledf || ' group by ' || colonne2 || ' order by count(*) desc) where first != second and UTL_MATCH.EDIT_DISTANCE_SIMILARITY(first, second) >= 50 and (SOUNDEX(first)=SOUNDEX(second)) and (select count(*) from ' || tabledf || ' where ' || colonne2 || '=first)>=(select count(*) from ' || tabledf || ' where ' || colonne2 || '=second) order by c desc';
	execute immediate view2;

	upda2:='update ' || tabledf || ' set ' || colonne2 || '=(select f from test where s=' || colonne2 || ' and ROWNUM <=1) where ' || colonne2 || '=ANY(select s from test)';
	execute immediate upda2;

	--correction col2 car df
	view3:='create or replace view test(c1,c2,conc,count) as select '||colonne1||',' || colonne2 || ',concat('||colonne1||',' || colonne2 || '),count(*) as conc from ' || tabledf || ' group by '||colonne1||',' || colonne2 || ',concat('||colonne1||',' || colonne2 || ') order by conc desc';
	execute immediate view3;

	upda3:='update ' || tabledf || ' set ' || colonne2 || '=(select c2 from test where c1='||colonne1||' and ROWNUM <=1)';
	execute immediate upda3;


END;
/
EXEC TESTCORR ('col3','col4','TOUSCLIENTS');
SELECT * FROM TEST;


