--====  FB ===========================================================================
--====  FB ===========================================================================
-- Université Sorbonne Paris Cité - Promotion 2018-2019 - Décembre 2018
--====  FB ===========================================================================

-- Binôme Bxy :  ZEGGANE Rouad            *** MECHAREK Thinhinane

-- Master 2 Informatique, Professionnel, Exploration Informatique des Données et Décisionnel
-- Examen de Bases de Données Avancées
--====  FB ===========================================================================

-- Nouveau nom du Fichier SQL : 2018-Profiler-B14.sql

--====  FB ===========================================================================
--====  FB ===========================================================================


/*
M. F. Boufarès ; 
Université Sorbonne Paris Cité
Université Paris 13 ; Master 2 EID2
Jeudi 13 décembre 2018

Vous êtes le TOUBIB-TABIB des données : Un Data-Logue 
(Comme par exemple les Cardio-logues, les Pneumo-logues, les Uro-logues,...) !

Vous disposez des outils qui vous permettent de DIAGNOSTIQUER les anomalies de votre patient la source de données DataSource !

Est-ce une mission possible ?! SiSi C PO CIBLE !!!
VOTRE MISSION SI VOUS L'ACCEPTEZ EST DE DONNER UN SENS AUX DONNEES !
SI VOUS ECHOUEZ, NOUS NIERONS AVOIR EU CONNAISSANCE DE VOS AGISSEMENTS !

Faites le diagnostic automatiquement qui vous permet :
- de détecter les erreurs (les anomalies), et ensuite,
- de corriger les anomalies

Vous êtes entrain de développer un outil de qualité très intelligent : --->>>>>> SmartDATA
Est-ce une mission impossible ?! SiSi C PO CIBLE !!!

-----??????????? V -----??????????? *******************************

iDQMS : intelligent Data Quality Management System --->>>>>> SmartDATA

                            -----iDQMS-----
         Data Source ---->>|               |----->>> Data Reports + Updates
                           |   SmartDATA   |
   Data Dicionnaries ---->>|               |----->>> Correct Data + INCorrect Data
                            -----iDQMS-----

Data Source       : Data with anomalies (Examples : CSV file, SQL table)
Data Dicionnaries : Dictionnaries such as DDRE for Regular Expressions and DDVS for Valid Strings
Data Reports      : Reports that contain diagnostics (metrics & mesures), to help correcting INVALID DATA
Updates           : A set of actions to do to better correct Data (UPDATE DataSource SET ...=... WHERE ... ; Etc...)
Correct Data      : VALID Records (with NO anomalies ->> Heteregeneous Data, Null Value, Functional Dependency, Deduplication,...)
INCorrect Data    : INVALID Records (with anomalies, at least one) DSWARNING

-----??????????? V -----??????????? *******************************

*/

DROP TABLE DATASOURCE;
CREATE TABLE DATASOURCE (ID VARCHAR(4), NOM VARCHAR2(20), PRENOM VARCHAR2(20), DATNAISS VARCHAR2(20), VILNAIS VARCHAR2(20), PAYSNAIS VARCHAR2(20), SEXE VARCHAR2(20), GS VARCHAR2(5),TAILLE VARCHAR2(20),POIDS VARCHAR2(20), TELMOBILE VARCHAR2(20), EMAIL VARCHAR2(40) );

INSERT INTO DATASOURCE VALUES ('1','LAMEME', 'Lina', '22/02/2002', 'Lille', 'France', 'F', 'AB+', '155cm', '69Kg', '+33 7 77 77 77 77', 'lina.lameme@gmail.com');
INSERT INTO DATASOURCE VALUES ('2','CLEMENT', 'Adam', '10/06/1996', 'Paris', 'France', 'M', 'B+', '172cm', '71', '+33617716698', 'adam.clement@gmail.com');
INSERT INTO DATASOURCE VALUES ('3','LABELLE', 'Eve', '17/06/1990', 'Paris', 'Fr', 'F', 'B', '169cm', '', '669964916', 'eve.la belle@gmail.com');
INSERT INTO DATASOURCE VALUES ('4','CLEMENT', 'Clémence', '01/10/1920', 'Marseille', 'France', 'F', 'A+', '1,68m', '68kg', '684071896', 'clémence.clement@gmail.com');
INSERT INTO DATASOURCE VALUES ('5','TRAIFOR', 'Adam', '19/06/2001', 'Lyon', 'France', 'M', 'B+', '1700mm', '71kg', '(+33) 06 30 50 19 16', 'adam.traifor@gmail.com');
INSERT INTO DATASOURCE VALUES ('6','EVE', 'Evelyne', '22 novembre 1969', '-', '', 'F', '', '', '', '687844442', 'evelyne!?/eve@gmail.com');
INSERT INTO DATASOURCE VALUES ('7','NANNOU', 'Inès', '22 novembre 1969', 'Nice', 'France', 'F', 'B+', '1,69m', '70KG', '678466837', 'ines.nan@nou@gmail.com');
INSERT INTO DATASOURCE VALUES ('8','GRAND', 'Adam', '16 octobre 1996', 'Paris', '', 'M', 'B+', '1920mm', '71KiloG', '646532809', 'adam.grand@gmail.com');
INSERT INTO DATASOURCE VALUES ('9','LAMEME', 'Lina', '22 février 2002', 'Lille', 'France', 'F', 'AB+', '155cm', '69KG', '+33 7 77 77 77 77', 'lina.lameme@gmail.com');
INSERT INTO DATASOURCE VALUES ('10','LAMEME', 'Lina', '22 février 2002', 'Lille', 'France', 'F', 'AB+', '155cm', '69KG', '+33 7 77 77 77 77', '');
INSERT INTO DATASOURCE VALUES ('11','LAMEME', 'Lina', '22 février 2002', 'Lille', 'France', 'F', 'AB+', '155cm', '69KG', '', 'lina.lameme@gmail.com');
INSERT INTO DATASOURCE VALUES ('12','LAMEME', 'L.', '22 février 2002', 'Lille', 'France', 'F', 'AB+', '155cm', '69KG', '', 'lina.lameme@gmail.com');
INSERT INTO DATASOURCE VALUES ('13','lameme', 'lina', '22 février 2002', 'lille', '', 'f', '', '155cm', '69kg', '+33 7 77 77 77 77', 'lina.lameme@gmail.com');
INSERT INTO DATASOURCE VALUES ('14','lameme', 'lina', '22 février 2002', 'lille', 'franc', 'f', 'ab+', '155cm', '69kg', '+33 7 77 77 77 77', 'lina.lameme@gmail');
INSERT INTO DATASOURCE VALUES ('15','CLEMENT', 'Clémence', '11 novembre 2011', 'Barcelone', 'Espagne', 'F', 'A+', '111cm', '13kg', '', 'fcb-clement@yahoo.fr');
INSERT INTO DATASOURCE VALUES ('16','CLEMENT', 'Clémence', '11 novembre 2011', 'Barcelone', 'Espagne', 'F', 'A+', '1,11m', '13000g', '', 'fcb-clement@yahoo.fr');
INSERT INTO DATASOURCE VALUES ('17','CLEMENT', 'clemence', '2011-novembre-11', 'Barcelone', 'Espagne', 'F', 'A+', '1,11m', '13000g', '', 'fcb-clement@yahoo.fr');
COMMIT;


--====  1 ===========================================================================

-- Quelques questions pour commencer !

SELECT DISTINCT NOM FROM DATASOURCE;
SELECT DISTINCT UPPER(NOM) FROM DATASOURCE;
SELECT EMAIL FROM DATASOURCE;

-- Homogénéisation !!! Comment !

SELECT TAILLE FROM DATASOURCE;
SELECT AVG(TAILLE) AS MOYTAIL FROM DATASOURCE ;
SELECT MAX(POIDS) AS MAXPDS FROM DATASOURCE ;


--########################################################################################################
--########################################################################################################
--########################################################################################################

--Correction des données dans la tables 

DROP TABLE REGULAREXPRES;
CREATE TABLE REGULAREXPRES(CATEGORY VARCHAR2(20),REGULAREXPR VARCHAR2(200),CONSTRAINT PK_REGULAREXPRES PRIMARY KEY(CATEGORY),CONSTRAINT CK_REGULAREXPRES_CATEGORY CHECK(CATEGORY = UPPER(CATEGORY)));

INSERT INTO REGULAREXPRES VALUES('MAIL', '^[a-zA-Z0-9._%-]+@[a-zA-Z0-9._%-]+\.[a-zA-Z]{2,4}$');
INSERT INTO REGULAREXPRES VALUES('TELFR-I', '(+33|0033)[1-9][0-9]{8}');
INSERT INTO REGULAREXPRES VALUES('TELFR', '^(0)[1-9][0-9]{8}');
INSERT INTO REGULAREXPRES VALUES('TELFR-0', '^(0|)[1-9][0-9]{8}');
INSERT INTO REGULAREXPRES VALUES('TELBE-I', '^(+32|0032)[1-9][0-9]{8}');
INSERT INTO REGULAREXPRES VALUES('TELBE', '^(0)[1-9][0-9]{7}');
INSERT INTO REGULAREXPRES VALUES('TELTN-I', '^(+216|00216)[1-9][0-9]{7}');
INSERT INTO REGULAREXPRES VALUES('TELTN', '^[1-9][0-9]{7}');
INSERT INTO REGULAREXPRES VALUES('ALPHABETIQUE', '[[:alpha:]]');
INSERT INTO REGULAREXPRES VALUES('NUMERIQUE', '^(\d)+$');
INSERT INTO REGULAREXPRES VALUES('TEMPERATURECF', '^(\-?[0-9]+(\,[0-9]+)?)(?F|?C)$');
INSERT INTO REGULAREXPRES VALUES('NOM', '[[:alpha:]]');
INSERT INTO REGULAREXPRES VALUES('PRENOM', '[[:alpha:]]');
INSERT INTO REGULAREXPRES VALUES('CATEGORIE', '^([1-7])$');
INSERT INTO REGULAREXPRES VALUES('SEXE_F', '^([fF])([eE][mM]{2}[eE]|[eE][mM][eE][lL]{2}[eE]|[eE][mM][aA][lL][eE])?$|^([wW])([iI][fF][eE]|[oO][mM][aA][nN])$');
INSERT INTO REGULAREXPRES VALUES('SEXE_H', '^[mM][oO][nN][sS][iI][eE][uU][rR]$|^[mM][rR](\.)?$|[M.]$|[M]$');
INSERT INTO REGULAREXPRES VALUES('BLOODGROUP', '^(A|B|O|AB)(\+|\-)$');
INSERT INTO REGULAREXPRES VALUES('ADRNUM', '^(\d)+( bis| Bis| BIS)?$');
INSERT INTO REGULAREXPRES VALUES('ADRRUE', '^([ ]?[\w][ ]?)+([^ ])$');
INSERT INTO REGULAREXPRES VALUES('CP', '^(\d){5}$');
INSERT INTO REGULAREXPRES VALUES('VILLE', '^([a-zA-Z])([a-zA-Z]+|[a-zA-Z\-]+)([^-])$');
INSERT INTO REGULAREXPRES VALUES('PAYS', '^([a-zA-Z])([a-zA-Z]+|[a-zA-Z\-]+)([^-])|[FR]|[TN]$');
INSERT INTO REGULAREXPRES VALUES('CIVILITE', '^(Madame|Monsieur|Mademoiselle|M.|Mr|MLLE|M|F|f)$');  
INSERT INTO REGULAREXPRES VALUES ('IDCLIENT', '^[1-9][0-9]{6}$'); 
INSERT INTO REGULAREXPRES VALUES ('DATE', '^\d{1,2}\/\d{1,2}\/\d{4}$'); 

DROP TABLE CONVDATE;
CREATE TABLE CONVDATE(
  CATEGORY VARCHAR2(20),
  REGEX VARCHAR2(200),
  CONSTRAINT PK_DATE PRIMARY KEY(CATEGORY)
);
INSERT INTO CONVDATE VALUES('DD MONTH YYYY', '^[0-9]{2}[a-zA-Z]{1,30}[0-9]{4}$');
INSERT INTO CONVDATE VALUES('YYYY-MONTH-DD', '^(19|20)\d\d[- /.][a-zA-Z]{1,30}[- /.](0[1-9]|[12][0-9]|3[01])$');

--PROCEDURE PERMET D'AFFICHER LES LIGNE AVEC ERREUR D'UNE COLONNE DONNEE (repérage des erreurs en utilisant la table REGULAREXPRES)

SET SERVEROUTPUT ON
CREATE OR REPLACE PROCEDURE TESTREG(TAB IN VARCHAR, COL IN VARCHAR,CAT IN VARCHAR) IS
REQ    VARCHAR2(200);
REQ1    VARCHAR2(200);
M     VARCHAR2(200);
Z     VARCHAR(200);
TYPE Cursor  IS REF CURSOR;
C1 Cursor;
BEGIN
	REQ:= 'SELECT '||COL||' FROM '||TAB ;
	OPEN C1 FOR REQ ;
		LOOP
			FETCH C1 INTO M;
			EXIT WHEN C1%NOTFOUND;
			SELECT REGULAREXPR INTO Z FROM REGULAREXPRES WHERE CATEGORY =''||CAT; 
			IF (NOT REGEXP_LIKE ( M , Z ) )THEN
				dbms_output.put_line(M);
			END IF;
		END LOOP;
END;
/

EXEC TESTREG('DATASOURCE','TELMOBILE','TELFR-I');
EXEC TESTREG('DATASOURCE','EMAIL','MAIL');
EXEC TESTREG('DATASOURCE','PAYSNAIS','PAYS');
EXEC TESTREG('DATASOURCE','VILNAIS','VILLE');
EXEC TESTREG('DATASOURCE','GS','BLOODGROUP');

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
EXEC NBCN ('NOM','DATASOURCE');
EXEC NBCN ('PRENOM','DATASOURCE');
EXEC NBCN ('DATNAISS','DATASOURCE');
EXEC NBCN ('VILNAIS','DATASOURCE');
EXEC NBCN ('SEXE','DATASOURCE');
EXEC NBCN ('GS','DATASOURCE');
EXEC NBCN ('TAILLE','DATASOURCE');
EXEC NBCN ('POIDS','DATASOURCE');
EXEC NBCN ('TELMOBILE','DATASOURCE');
EXEC NBCN ('EMAIL','DATASOURCE');

SELECT * FROM ColonneNull;

--########################################################################################################
--########################################################################################################
--########################################################################################################
----le mécanisme qui permet de diagnostiquer la table data source 

DROP TABLE DIAGNOSTICDATA;
CREATE TABLE DIAGNOSTICDATA (
    ANOMALIES VARCHAR(20),
    VALIDCOL NUMBER(2),
    INVALIDCOL NUMBER(2),
    NULLCOL NUMBER(2)
);


CREATE OR REPLACE PROCEDURE ANOMALITY(
    WORDCOMPARED IN VARCHAR,
    WORDREGEX IN VARCHAR,
    V_ERRORINDICATOR IN OUT VARCHAR,
    V_VALIDE IN OUT NUMBER,
    V_INVALIDE IN OUT NUMBER,
    V_NULL IN OUT NUMBER)
IS
BEGIN
    IF WORDCOMPARED IS NULL THEN
        V_NULL := V_NULL + 1;
        V_ERRORINDICATOR := V_ERRORINDICATOR || 'N';
    ELSE
        IF REGEXP_LIKE(WORDCOMPARED, WORDREGEX) THEN
            V_VALIDE := V_VALIDE + 1;
            V_ERRORINDICATOR := V_ERRORINDICATOR || 'T';
        ELSE
            V_INVALIDE := V_INVALIDE + 1;
            V_ERRORINDICATOR := V_ERRORINDICATOR || 'F';
        END IF;
    END IF;
END;
/

CREATE OR REPLACE FUNCTION GETREGEX(CATEGORIE VARCHAR)
    RETURN VARCHAR IS
    EXPRESSION VARCHAR(255) := '';
BEGIN
  SELECT REGULAREXPR INTO EXPRESSION FROM REGULAREXPRES WHERE CATEGORY = UPPER(CATEGORIE);
  RETURN EXPRESSION;
END;
/

CREATE OR REPLACE PROCEDURE ADDANOMALITY(IDCLIENT IN VARCHAR)
IS
    V_CLIENT DATASOURCE%ROWTYPE;
    V_ERRORINDI VARCHAR(255) := '';
    V_VALIDE NUMBER := 0;
    V_INVALIDE NUMBER := 0;
    V_NULL NUMBER := 0;
    V_EXISTE VARCHAR(255) := '';
BEGIN
    SELECT * INTO V_CLIENT FROM DATASOURCE WHERE ID = IDCLIENT;
    ANOMALITY(V_CLIENT.GS, GETREGEX('BLOODGROUP'),V_ERRORINDI, V_VALIDE, V_INVALIDE, V_NULL);
    ANOMALITY(V_CLIENT.VILNAIS, GETREGEX('VILLE'),V_ERRORINDI, V_VALIDE, V_INVALIDE, V_NULL);
    ANOMALITY(V_CLIENT.PAYSNAIS, GETREGEX('PAYS'),V_ERRORINDI, V_VALIDE, V_INVALIDE, V_NULL);
    ANOMALITY(V_CLIENT.EMAIL, GETREGEX('MAIL'),V_ERRORINDI, V_VALIDE, V_INVALIDE, V_NULL);
    ANOMALITY(V_CLIENT.TELMOBILE, GETREGEX('TELFR-I'),V_ERRORINDI, V_VALIDE, V_INVALIDE, V_NULL);
    DELETE FROM DIAGNOSTICDATA WHERE ANOMALIES = V_ERRORINDI;
    INSERT INTO DIAGNOSTICDATA VALUES(V_CLIENT.ID||V_ERRORINDI,V_VALIDE, V_INVALIDE, V_NULL);
END;
/

CREATE OR REPLACE PROCEDURE ADDABNORMALITIES
IS
    CURSOR MESCLIENTS IS
    SELECT ID FROM DATASOURCE;
BEGIN
    FOR MONCLIENT IN MESCLIENTS LOOP
        ADDANOMALITY(MONCLIENT.ID);
    END LOOP;
END;
/
EXEC ADDABNORMALITIES();

DROP TABLE DIAGNODATASOURCE;
CREATE TABLE DIAGNODATASOURCE
AS SELECT * FROM DATASOURCE, DIAGNOSTICDATA;
SELECT * FROM DIAGNODATASOURCE;


SELECT DISTINCT(ANOMALIES),VALIDCOL,INVALIDCOL,NULLCOL FROM DIAGNODATASOURCE ORDER BY ANOMALIES;
SELECT * FROM DIAGNOSTICDATA;

--########################################################################################################
--########################################################################################################
--########################################################################################################

-- CorrectionTel PERMET DE CORRIGER LES NUMEROS DE TELEPHONE 
CREATE OR REPLACE PROCEDURE CorrectionTel(MaTable IN VARCHAR, MaColTel IN VARCHAR,CAT IN VARCHAR) IS
REQ    VARCHAR2(200);
ReqUpdate VARCHAR2(200);
REQ1    VARCHAR2(200);
M     VARCHAR2(200);
Z     VARCHAR(200);
TEL     VARCHAR(200);
TYPE Cursor  IS REF CURSOR;
C1 Cursor;
C2 Cursor;

BEGIN
	REQ:= 'SELECT '||MaColTel||' FROM '||MaTable ;
	OPEN C1 FOR REQ ;
		LOOP
			FETCH C1 INTO M;
			EXIT WHEN C1%NOTFOUND;
			SELECT REGULAREXPR INTO Z FROM REGULAREXPRES WHERE CATEGORY =''||CAT; 
			IF (REGEXP_LIKE ( M , Z ) )THEN
				dbms_output.put_line(M);

						IF CAT='TELFR-0' THEN
						UPDATE DATASOURCE SET TELMOBILE ='+33'||SUBSTR(TELMOBILE,1)where REGEXP_LIKE (TELMOBILE,Z);
						
						END IF;
		
			END IF;
		END LOOP;
  REQ1:= 'SELECT '||MaColTel||' FROM '||MaTable ;
  OPEN C2 FOR REQ ;
    LOOP
      FETCH C2 INTO TEL;
      EXIT WHEN C2%NOTFOUND; 
      UPDATE DATASOURCE SET TELMOBILE = REPLACE(TELMOBILE, '(', '');
      UPDATE DATASOURCE SET TELMOBILE = REPLACE(TELMOBILE, ') 0', '');
      UPDATE DATASOURCE SET TELMOBILE = REPLACE(TELMOBILE, ' ', '');
    END LOOP;
END;
/
EXEC CorrectionTel('DATASOURCE','TELMOBILE','TELFR-0');
--########################################################################################################
--########################################################################################################
--########################################################################################################
CREATE OR REPLACE PROCEDURE CorrectionMail(MaTable IN VARCHAR, MaColMail IN VARCHAR,CAT IN VARCHAR) IS
REQ    VARCHAR2(200);
ReqUpdate VARCHAR2(200);
TYPE Cursor  IS REF CURSOR;
C1 Cursor;
M     VARCHAR2(200);
Z     VARCHAR(200);
BEGIN
  REQ:='SELECT '||MaColMail||' FROM '||MaTable ;
  OPEN C1 FOR REQ ;
    LOOP
      FETCH C1 INTO M;
      EXIT WHEN C1%NOTFOUND;
      SELECT REGULAREXPR INTO Z FROM REGULAREXPRES WHERE CATEGORY =''||CAT; 
      IF (NOT REGEXP_LIKE ( M , Z ) )THEN
        UPDATE DATASOURCE SET EMAIL = REPLACE(EMAIL, ' ', '');
      END IF;
    END LOOP;
END;
/
EXEC CorrectionMail('DATASOURCE','EMAIL','MAIL');
--########################################################################################################
--########################################################################################################
--########################################################################################################


--FONCTION PERMET DE RETURNER UNE EXPRESSION REGU 
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

--FONCTION PERMET DE CORRIGER LE NOM TOUTE EN MAJ
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
--FONCTION PERMET DE CORRIGER LES PRENOM TOUTE EN MIN SAUF LA PREMIERE LETTRE 
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

-- LA FONCTION CORRECTIONINTRA PERMET DE CORRIGER CERTAINES COLONNES EN UTILISANT DES FONCTION 
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
--EXEC correctionIntra('MaColonne','MaTable','MaCategory dans la table REGULAREXPRES ')

--CORRIGER LES NOM (MAJ)
exec correctionIntra('NOM', 'DATASOURCE', 'NOM');
--CORRECTION DES COLONNES SEXE,PAYSNAIS ET VILNAIS (MAJ) ETC...
exec correctionIntra('SEXE', 'DATASOURCE', 'NOM');
exec correctionIntra('PAYSNAIS', 'DATASOURCE', 'NOM');
exec correctionIntra('VILNAIS', 'DATASOURCE', 'NOM');
exec correctionIntra('TAILLE', 'DATASOURCE', 'NOM');
exec correctionIntra('POIDS', 'DATASOURCE', 'NOM');
exec correctionIntra('GS', 'DATASOURCE', 'NOM');
exec correctionIntra('PRENOM', 'DATASOURCE', 'PRENOM');

--EN PLUS ON PEUT MODIFIER LE SEXE F=MADAME, M=MONSIEUR
exec correctionIntra('SEXE', 'DATASOURCE', 'CIVILITE');


--########################################################################################################
--########################################################################################################
--########################################################################################################
--NOTRE DICO 
CREATE OR REPLACE VIEW DICO2 (CAT_L,CAT_R,VS_L,VS_R)AS (
			SELECT X1.CATEGORY,X2.CATEGORY,X1.FRENCH,X2.FRENCH FROM DDVS X1,DDVS X2 WHERE X1.PRIMARYKEY=X2.FOREIGNKEY
);
SELECT * FROM DICO2 WHERE UPPER(CAT_R)='CITY' AND UPPER(CAT_L)='COUNTRY' AND UPPER(VS_R)=upper('LILLE');
SELECT * FROM DICO2 WHERE UPPER(CAT_R)='CITY' AND UPPER(CAT_L)='COUNTRY' AND UPPER(VS_R)=upper('PARIS');

-- PROCEDURE PERMET DE RAJOUTER UN PAYS EN CONNAISSANT LA VILLE (EN UTILISANT LE DICO2)
CREATE OR REPLACE PROCEDURE AJOUTPAYS(MaTable IN VARCHAR, MaColPays IN VARCHAR, Pays IN VARCHAR ,MaColVill IN VARCHAR ,Ville IN VARCHAR) AS
	REQ VARCHAR(1000);
BEGIN
	REQ:='UPDATE ' || MaTable || ' SET ' || MaColPays || '=''' || Pays || ''' WHERE UPPER (' || MaColVill || ')=UPPER(''' || Ville || ''')';
	EXECUTE IMMEDIATE REQ;
END;
/
EXEC AJOUTPAYS('DATASOURCE','PAYSNAIS','FRANCE','VILNAIS','PARIS');
EXEC AJOUTPAYS('DATASOURCE','PAYSNAIS','FRANCE','VILNAIS','lille');

--########################################################################################################
--########################################################################################################
--########################################################################################################
--PERMET DE MODIFIER LA DATE 

CREATE OR REPLACE PROCEDURE MODIFIERDATE (TAB VARCHAR2 , COL VARCHAR2 , FORMAT_NEW VARCHAR2)
IS
	REQ VARCHAR2(2000);
	REQ2 VARCHAR2(2000);
	RES VARCHAR2(2000);
	TYPE Cursor  IS REF CURSOR;
	C1 Cursor;
	M VARCHAR2(2000);
	Z VARCHAR2(2000);
	CAT VARCHAR2(2000);
BEGIN
	REQ := 'SELECT '||COL||' FROM '||TAB ;
	EXECUTE IMMEDIATE REQ;
	REQ2 := 'ALTER SESSION SET NLS_DATE_FORMAT = '''|| FORMAT_NEW ||'''' ;
	EXECUTE IMMEDIATE REQ2;
		OPEN C1 FOR REQ ;
		LOOP
			FETCH C1 INTO M;
				EXIT WHEN C1%NOTFOUND;
		        	SELECT REGULAREXPR INTO Z FROM REGULAREXPRES WHERE CATEGORY = 'DATE';
				IF ( NOT REGEXP_LIKE ( M , Z ) ) THEN
					SELECT CATEGORY INTO CAT FROM CONVDATE WHERE REGEXP_LIKE(REPLACE(M, ' ', ''), REGEX);
					RES:='UPDATE '||TAB||' SET '||COL||'=TO_DATE('''||M||''','''|| ''||CAT||''') WHERE DATNAISS='''||M||'''';
	    			EXECUTE IMMEDIATE RES;
				END IF;
		END LOOP;
	CLOSE C1;
			
END;
/
EXECUTE MODIFIERDATE('DATASOURCE','DATNAISS','DD/MM/YYYY');

SELECT CATEGORY FROM CONVDATE WHERE REGEXP_LIKE(REPLACE('12 novembre 2014', ' ', ''), REGEX);
--########################################################################################################
--########################################################################################################
--########################################################################################################
--Procedure  ConvTail permet de convertir la taille en mètre


CREATE OR REPLACE PROCEDURE ConvTail (MaTable IN VARCHAR, MaColonne IN VARCHAR)IS
TYPE curType IS REF CURSOR;
vCursor curType;
maVariable VARCHAR(255);
REQ VARCHAR(1000);
RES VARCHAR(100);
REQ1 VARCHAR(100);
REQ2 VARCHAR(100);
VAR VARCHAR(100);
MAVAR VARCHAR(100);
MAVAR1 VARCHAR(100);
BEGIN
  REQ:='SELECT '|| MaColonne ||' FROM '|| MaTable;
  OPEN vCursor FOR REQ;
    LOOP
      FETCH vCursor INTO maVariable;
      IF UPPER(maVariable) LIKE '%CM' THEN
        MAVAR:=maVariable;
        VAR := INSTR( UPPER(maVariable) ,'C' )-1;
        RES:=TO_CHAR(TO_NUMBER(substr(maVariable, 1,VAR)) /100);
        RES:=substr(RES, 1, INSTR( RES , ',' )) || substr(RES,INSTR( RES , ',' )+1, 2) || 'M';
        --DBMS_OUTPUT.PUT_LINE(RES);
        REQ1:='UPDATE '|| MaTable||' SET '||MaColonne||'='''||RES||''' WHERE UPPER('||MaColonne||') LIKE ''%CM'' AND '||MaColonne||'='''||MAVAR||''' ';
        EXECUTE IMMEDIATE REQ1;
      END IF;
      IF UPPER(maVariable) LIKE '%MM' THEN
        VAR := INSTR( UPPER(maVariable) ,'M' )-1;
        MAVAR1:=maVariable;
        RES:=TO_CHAR(TO_NUMBER(substr(maVariable, 1,VAR)) /1000);
        RES:=substr(RES, 1, INSTR( RES , ',' )) || substr(RES,INSTR( RES , ',' )+1, 2) || 'M';
        REQ2:='UPDATE '|| MaTable||' SET '||MaColonne||'='''||RES||''' WHERE UPPER('||MaColonne||') LIKE ''%MM'' AND '||MaColonne||'='''||MAVAR1||''' ';
        EXECUTE IMMEDIATE REQ2;
      END IF;
      EXIT WHEN vCursor%NOTFOUND;
    END LOOP;
    CLOSE vCursor;
END;
/
EXEC ConvTail('DATASOURCE','TAILLE');
--########################################################################################################
--########################################################################################################
--########################################################################################################
-- PROCEDURE CONVPOID PERMET DE CONVERTIR LE POID EN KG
  CREATE OR REPLACE PROCEDURE ConvPoid (MaTable IN VARCHAR, MaColonne IN VARCHAR)IS
  TYPE curType IS REF CURSOR;
  vCursor curType;
  maVariable VARCHAR(255);
  REQ VARCHAR(1000);
  REQ1 VARCHAR(1000);
  REQ2 VARCHAR(1000);
  RES VARCHAR(100);
  RES1 VARCHAR(100);
  VAR1 VARCHAR(100);
  VAR VARCHAR(100);
  MAVAR VARCHAR(100);
  MAVAR1 VARCHAR(100);
  BEGIN
    REQ:='SELECT '|| MaColonne ||' FROM '|| MaTable;
    OPEN vCursor FOR REQ;
      LOOP
        FETCH vCursor INTO maVariable;
        IF UPPER(maVariable) LIKE '%K%' THEN
          MAVAR:=maVariable;
          VAR := INSTR( UPPER(maVariable) ,'K' )-1;
          RES:=TO_CHAR(TO_NUMBER(substr(maVariable, 1,VAR)));
          RES:=substr(RES, 1, INSTR( RES , ',' )) || substr(RES,INSTR( RES , ',' )+1, 2) || 'KG';
          DBMS_OUTPUT.PUT_LINE(RES);
          REQ1:='UPDATE '|| MaTable||' SET '||MaColonne||'='''||RES||''' WHERE UPPER('||MaColonne||') LIKE ''%K%'' AND '||MaColonne||'='''||MAVAR||''' ';
          EXECUTE IMMEDIATE REQ1;
        END IF;
        IF UPPER(maVariable) LIKE '%G' AND UPPER(maVariable) NOT LIKE '%K%' THEN
          MAVAR1:=maVariable;
          VAR1 := INSTR( UPPER(maVariable) ,'G' )-1;
          RES1:=TO_CHAR(TO_NUMBER(substr(maVariable, 1,VAR1)) /1000);
          RES1:=substr(RES1, 1, INSTR( RES1 , ',' )) || substr(RES1,INSTR( RES1 , ',' )+1, 2) || 'KG';
          DBMS_OUTPUT.PUT_LINE(RES1);
          REQ2:='UPDATE '|| MaTable||' SET '||MaColonne||'='''||RES1||''' WHERE UPPER('||MaColonne||') NOT LIKE ''%KG%'' AND '||MaColonne||'='''||MAVAR1||''' ';
          EXECUTE IMMEDIATE REQ2;
        END IF;
        EXIT WHEN vCursor%NOTFOUND;
      END LOOP;
      CLOSE vCursor;
  END;
  /
EXEC ConvPoid('DATASOURCE','POIDS');
 
--########################################################################################################
--########################################################################################################
--########################################################################################################

-- ON SUPPRIME LES LIGNES DOUBLÉES APRES L FIN DE TRAITEMENT DE CERTAINS COLONNE 
DELETE FROM DATASOURCE WHERE ROWID IN (SELECT ROWID FROM( SELECT ROWID,NOM, ROW_NUMBER ( ) OVER ( PARTITION BY (NOM || PRENOM || DATNAISS || VILNAIS || PAYSNAIS) ORDER BY NOM || PRENOM ) NUM_LIGNE FROM   DATASOURCE ) T2 WHERE  NUM_LIGNE >1 );

--########################################################################################################
--########################################################################################################
--########################################################################################################
CREATE OR REPLACE PROCEDURE EnrichirDDVS IS
  RES       VARCHAR2(100);
  PKK    VARCHAR2(50);
  FK  VARCHAR2(50);
  NEWPK  VARCHAR2(50);
BEGIN
  FOR i IN (SELECT DISTINCT PAYSNAIS, VILNAIS FROM DATASOURCE WHERE VILNAIS NOT IN (SELECT UPPER(FRENCH) FROM DDVS WHERE CATEGORY='CITY'))
	LOOP
    -- Recuperation de la PK du pays.
    	SELECT PRIMARYKEY INTO FK FROM DDVS WHERE CATEGORY='COUNTRY' AND UPPER(FRENCH)=i.PAYSNAIS;
    -- Creation d'un nouveau PK pour la ville qu'on est entrain d'inserer.
    	SELECT MAX(PRIMARYKEY) INTO PKK FROM DDVS WHERE CATEGORY='CITY' AND FOREIGNKEY=FK;
    	NEWPK:=TO_NUMBER(SUBSTR(PKK, REGEXP_INSTR(PKK, '[1-9]')))+1;
    	RES:='INSERT INTO DDVS VALUES(''CITY'','''','''||i.VILNAIS||''','''||SUBSTR(i.VILNAIS, 1,3)||''','''||'CITY'||SUBSTR(i.PAYSNAIS, 1,3)||'000'||TO_CHAR(NEWPK)||''','''||FK||''')';
    	EXECUTE IMMEDIATE RES;
  END LOOP;

  	SELECT MAX(PRIMARYKEY) INTO PKK FROM DDVS WHERE CATEGORY='FIRSTNAME';
  	NEWPK:=TO_NUMBER(SUBSTR(PKK, REGEXP_INSTR(PKK, '[1-9]')))+1;
  	FOR i IN (SELECT DISTINCT PRENOM FROM DATASOURCE WHERE PRENOM NOT IN(SELECT UPPER(FRENCH) FROM DDVS WHERE CATEGORY='FIRSTNAME')) 
  	LOOP
    	RES:='INSERT INTO DDVS VALUES(''FIRSTNAME'','''||i.PRENOM||''','''||i.PRENOM||''','''',''FNAMELATFR00'||TO_CHAR(NEWPK)||''','''')';
    	EXECUTE IMMEDIATE RES;
    	NEWPK:=NEWPK+1;
  END LOOP;
END;
/
EXEC EnrichirDDVS();



--########################################################################################################
--########################################################################################################
--########################################################################################################


--====  2 ===========================================================================

-- Il y aurait des problèmes dans cette source de données !!

REM Que faire ?
REM C EST SMARTDATA QUI VA NOUS RENSEIGNER !

-- Développez le mécanisme qui permet de diagnostiquer (profiler) les problèmes dans la source de données
-- Complétez/Corrigez le script sql 2018ProfilerDonnees.sql --==>>> 2018-12-13-Profiler-Bxy.sql

--====  3 ===========================================================================

-- Dans l'exemble d'application traité en cours-TD-TP "GEStion COMmerciale"
-- Les villes & les pays des clients et des magasins peuvent consituer de nouvelles données 
-- qui permettraient d'enrichir le dicionnaire de données DDVS (Data Dictionnary for Valid Strings) utilisé pour corriger des anomalies
-- Proposez une métthode d'enrichissement de ce dictionnaire et développez le script sql correspondant

--====  4 ===========================================================================

-- Dans l'exemble d'application traité en cours-TD-TP "GEStion COMmerciale"
-- Le schéma, relationnel, de la BD GESCOM 
-- est composé de plusieurs tables et leurs dérivés : CLIENTS, COMMANDES, ARTICLES, DETAILSCOM, MAGASINS...

-- Détaillez la manière de définir un nouveau schéma cible-destination (dit schéma en étoile) extrait depuis toutes les sources
-- Celui-ci permet de faire des croisements-analyses-extractions-exploitations des données tel que celui des ventes par rapport 
-- aux articles, aux magasins, aux clients et à la dimension temps...

-- Comparez le avec le schéma global qui regroupe toutes les tables (l'Union-l'Intégration de toutes les tables de toutes les BD)

--====  5 ===========================================================================

-- N'oubliez pas, si vous le souhaitez, d'envoyer la version définitive (G-Bxy) de tous vos travaux avant le jj-décembre 2018

--====  FB ===========================================================================
--====  FB ===========================================================================



