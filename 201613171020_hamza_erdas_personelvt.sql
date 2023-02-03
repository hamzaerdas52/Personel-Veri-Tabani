--------------------------------------------------------
--  File created - Çar?amba-Haziran-09-2021   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Sequence SEQ_BIRIM_ID
--------------------------------------------------------

   CREATE SEQUENCE  "SEQ_BIRIM_ID"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_PERADRES_ID
--------------------------------------------------------

   CREATE SEQUENCE  "SEQ_PERADRES_ID"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_PERBILGI_NO
--------------------------------------------------------

   CREATE SEQUENCE  "SEQ_PERBILGI_NO"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 10020 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_PERBILGI_TRIG_ID
--------------------------------------------------------

   CREATE SEQUENCE  "SEQ_PERBILGI_TRIG_ID"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_PERISGEC_ID
--------------------------------------------------------

   CREATE SEQUENCE  "SEQ_PERISGEC_ID"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_PERKIMLIKLOG_TRIG_ID
--------------------------------------------------------

   CREATE SEQUENCE  "SEQ_PERKIMLIKLOG_TRIG_ID"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Table ADRESTIP
--------------------------------------------------------

  CREATE TABLE "ADRESTIP" 
   (	"ATID" NUMBER(1,0), 
	"ATADI" NVARCHAR2(10)
   ) ;
--------------------------------------------------------
--  DDL for Table BIRIMLER
--------------------------------------------------------

  CREATE TABLE "BIRIMLER" 
   (	"BIRIMID" NUMBER, 
	"BIRIMADI" NVARCHAR2(200)
   ) ;
--------------------------------------------------------
--  DDL for Table CINSIYET
--------------------------------------------------------

  CREATE TABLE "CINSIYET" 
   (	"CID" NUMBER(1,0), 
	"CADI" VARCHAR2(6)
   ) ;
--------------------------------------------------------
--  DDL for Table KANGRUBU
--------------------------------------------------------

  CREATE TABLE "KANGRUBU" 
   (	"KGID" NUMBER(1,0), 
	"KGADI" NVARCHAR2(5)
   ) ;
--------------------------------------------------------
--  DDL for Table MAILTIP
--------------------------------------------------------

  CREATE TABLE "MAILTIP" 
   (	"MTID" NUMBER(1,0), 
	"MTADI" VARCHAR2(20)
   ) ;
--------------------------------------------------------
--  DDL for Table MEDENIHAL
--------------------------------------------------------

  CREATE TABLE "MEDENIHAL" 
   (	"MHID" NUMBER(1,0), 
	"MHADI" VARCHAR2(6)
   ) ;
--------------------------------------------------------
--  DDL for Table PERADRES
--------------------------------------------------------

  CREATE TABLE "PERADRES" 
   (	"ADRESID" NUMBER, 
	"KIMLIKNO" NUMBER, 
	"ADRESTIPID" NUMBER, 
	"ONCELIKNO" NUMBER, 
	"MAHALLE" VARCHAR2(50), 
	"CADDE" VARCHAR2(50), 
	"SOKAK" VARCHAR2(50), 
	"DISKAPINO" NUMBER, 
	"ICKAPINO" NUMBER, 
	"POSTAKODU" VARCHAR2(20), 
	"ILCE" VARCHAR2(50), 
	"SEHIRKODU" NUMBER
   ) ;
--------------------------------------------------------
--  DDL for Table PERBILGI
--------------------------------------------------------

  CREATE TABLE "PERBILGI" 
   (	"PERSONELNO" NUMBER(7,0), 
	"KIMLIKNO" NUMBER(12,0), 
	"MAAS" NUMBER(9,2), 
	"BIRIMID" NUMBER(3,0), 
	"UNVANID" NUMBER(3,0), 
	"PRIM" NUMBER(3,2), 
	"SIFRE" NUMBER(8,0), 
	"VARDIYAID" NUMBER(2,0)
   ) ;
--------------------------------------------------------
--  DDL for Table PERBILGILOG
--------------------------------------------------------

  CREATE TABLE "PERBILGILOG" 
   (	"KULLANICI" VARCHAR2(20), 
	"TARIH" DATE, 
	"YAPILAN_ISLEM" VARCHAR2(10), 
	"ID" NUMBER
   ) ;
--------------------------------------------------------
--  DDL for Table PERCOCUK
--------------------------------------------------------

  CREATE TABLE "PERCOCUK" 
   (	"COCUKID" NUMBER, 
	"PERSONELNO" NUMBER(6,0), 
	"ADI" NVARCHAR2(200), 
	"SOYADI" NVARCHAR2(200), 
	"DTARIHI" DATE, 
	"DYERIKODU" NUMBER(4,0), 
	"CINSIYETID" NUMBER(1,0)
   ) ;
--------------------------------------------------------
--  DDL for Table PERISGEC
--------------------------------------------------------

  CREATE TABLE "PERISGEC" 
   (	"GECID" NUMBER, 
	"PERSONELNO" NUMBER(6,0), 
	"BASTARIH" DATE, 
	"BITTARIH" DATE, 
	"UNVANID" NUMBER, 
	"BIRIMID" NUMBER
   ) ;

   COMMENT ON TABLE "PERISGEC"  IS 'BU TABLO PERSONELLER?N HANG? TAR?HLER ARASINDA HANG? ??LERDE ÇALI?TI?INI TUTMAKTADIR.';
--------------------------------------------------------
--  DDL for Table PERKIMLIK
--------------------------------------------------------

  CREATE TABLE "PERKIMLIK" 
   (	"KIMLIKNO" NUMBER(11,0), 
	"ADI" NVARCHAR2(200), 
	"SOYADI" NVARCHAR2(200), 
	"ANNEADI" NVARCHAR2(200), 
	"BABAADI" NVARCHAR2(200), 
	"DTARIH" DATE, 
	"DYERIKODU" NUMBER(4,0), 
	"UYRUKID" NUMBER(3,0), 
	"CINSIYETID" NUMBER(1,0), 
	"KANGRUBUID" NUMBER(1,0), 
	"MEDENIHALID" NUMBER(1,0)
   ) ;

   COMMENT ON TABLE "PERKIMLIK"  IS 'BU TABLO PERSONEL?N K?ML?K B?LG?LER?N? TUTMAK ?Ç?N TASARLANMI?TIR.';
--------------------------------------------------------
--  DDL for Table PERKIMLIKLOG
--------------------------------------------------------

  CREATE TABLE "PERKIMLIKLOG" 
   (	"KULLANICI" VARCHAR2(20), 
	"TARIH" DATE, 
	"YAPILAN_ISLEM" VARCHAR2(10), 
	"ID" NUMBER
   ) ;
--------------------------------------------------------
--  DDL for Table PERMAILADRES
--------------------------------------------------------

  CREATE TABLE "PERMAILADRES" 
   (	"MAILID" NUMBER(6,0), 
	"PERSONELNO" NUMBER(6,0), 
	"MAILADRESI" NVARCHAR2(50), 
	"MAILTIPID" NUMBER(1,0), 
	"ONCELIKNO" NUMBER(1,0)
   ) ;
--------------------------------------------------------
--  DDL for Table PERTELNO
--------------------------------------------------------

  CREATE TABLE "PERTELNO" 
   (	"PTNID" NUMBER(6,0), 
	"PERSONELNO" NUMBER(6,0), 
	"TELNO" NUMBER(10,0), 
	"TELTIP" NUMBER(2,0), 
	"ONCELIKNO" NUMBER(1,0)
   ) ;
--------------------------------------------------------
--  DDL for Table SEHIRLER
--------------------------------------------------------

  CREATE TABLE "SEHIRLER" 
   (	"SEHKODU" NUMBER(4,0), 
	"SEHADI" NVARCHAR2(100), 
	"ULKEKODU" NUMBER(4,0)
   ) ;
--------------------------------------------------------
--  DDL for Table TELTIP
--------------------------------------------------------

  CREATE TABLE "TELTIP" 
   (	"TTID" NUMBER(2,0), 
	"TTADI" NVARCHAR2(10)
   ) ;
--------------------------------------------------------
--  DDL for Table ULKELER
--------------------------------------------------------

  CREATE TABLE "ULKELER" 
   (	"ULKEKODU" NUMBER(4,0), 
	"ULKEADI" NVARCHAR2(100)
   ) ;
--------------------------------------------------------
--  DDL for Table UNVAN
--------------------------------------------------------

  CREATE TABLE "UNVAN" 
   (	"UNVANID" NUMBER(2,0), 
	"UNVANADI" NVARCHAR2(200), 
	"ENAZMAAS" NUMBER(6,2), 
	"ENCOKMAAS" NUMBER(8,2)
   ) ;
--------------------------------------------------------
--  DDL for Table UYRUK
--------------------------------------------------------

  CREATE TABLE "UYRUK" 
   (	"UYRUKID" NUMBER(3,0), 
	"UYRUKADI" NVARCHAR2(10)
   ) ;
--------------------------------------------------------
--  DDL for Table VARDIYA
--------------------------------------------------------

  CREATE TABLE "VARDIYA" 
   (	"VARDIYAID" NUMBER, 
	"VARARALIK" NVARCHAR2(15)
   ) ;

   COMMENT ON TABLE "VARDIYA"  IS 'BU TABLO VARD?YA SAATLER?N? TUTMAK ?Ç?N OLU?TURULMU?TUR.
';
--------------------------------------------------------
--  DDL for View PERBILGIVIEW
--------------------------------------------------------

  CREATE OR REPLACE VIEW "PERBILGIVIEW" ("PERSONELNO", "KIMLIKNO", "MAAS", "BIRIMADI", "UNVANADI", "ENCOKMAAS", "ENAZMAAS", "VARARALIK") AS 
  SELECT P.PERSONELNO,
       P.KIMLIKNO,
       P.MAAS,
       B.BIRIMADI,
       U.UNVANADI,
       U.ENCOKMAAS,
       U.ENAZMAAS,
       V.VARARALIK
       
    
FROM PERBILGI P,
     BIRIMLER B,
     UNVAN U,
     VARDIYA V
     
WHERE P.BIRIMID=B.BIRIMID AND P.UNVANID=U.UNVANID AND P.VARDIYAID=V.VARDIYAID
;
--------------------------------------------------------
--  DDL for View PERKIMLIKVIEW
--------------------------------------------------------

  CREATE OR REPLACE VIEW "PERKIMLIKVIEW" ("KIMLIKNO", "ADI", "ANNEADI", "BABAADI", "DTARIH", "UYRUKADI", "SEHADI", "CADI", "KGADI", "MHADI") AS 
  SELECT P.KIMLIKNO,
    P.ADI,
    P.ANNEADI,
    P.BABAADI,
    P.DTARIH,
    U.UYRUKADI,
    S.SEHADI,
    C.CADI,
    K.KGADI,
    M.MHADI
    
FROM PERKIMLIK P, 
    UYRUK U, 
    SEHIRLER S, 
    CINSIYET C, 
    KANGRUBU K, 
    MEDENIHAL M
WHERE P.UYRUKID=U.UYRUKID AND P.CINSIYETID=C.CID AND P.KANGRUBUID=K.KGID AND
    P.MEDENIHALID=M.MHID AND P.DYERIKODU=S.SEHKODU
;
REM INSERTING into ADRESTIP
SET DEFINE OFF;
Insert into ADRESTIP (ATID,ATADI) values ('1','?ahsi');
Insert into ADRESTIP (ATID,ATADI) values ('2','Kira');
REM INSERTING into BIRIMLER
SET DEFINE OFF;
Insert into BIRIMLER (BIRIMID,BIRIMADI) values ('1','Yönetici');
Insert into BIRIMLER (BIRIMID,BIRIMADI) values ('2','Pazarlama');
Insert into BIRIMLER (BIRIMID,BIRIMADI) values ('3','Mühendislik');
Insert into BIRIMLER (BIRIMID,BIRIMADI) values ('4','Temizlik');
REM INSERTING into CINSIYET
SET DEFINE OFF;
Insert into CINSIYET (CID,CADI) values ('1','Erkek');
Insert into CINSIYET (CID,CADI) values ('2','Kad?n');
REM INSERTING into KANGRUBU
SET DEFINE OFF;
Insert into KANGRUBU (KGID,KGADI) values ('1','0-');
Insert into KANGRUBU (KGID,KGADI) values ('2','0+');
Insert into KANGRUBU (KGID,KGADI) values ('3','A-');
Insert into KANGRUBU (KGID,KGADI) values ('4','A+');
Insert into KANGRUBU (KGID,KGADI) values ('5','B-');
Insert into KANGRUBU (KGID,KGADI) values ('6','B+');
Insert into KANGRUBU (KGID,KGADI) values ('7','AB-');
Insert into KANGRUBU (KGID,KGADI) values ('8','AB+');
REM INSERTING into MAILTIP
SET DEFINE OFF;
Insert into MAILTIP (MTID,MTADI) values ('1','??');
Insert into MAILTIP (MTID,MTADI) values ('2','?ahsi');
REM INSERTING into MEDENIHAL
SET DEFINE OFF;
Insert into MEDENIHAL (MHID,MHADI) values ('1','Evli');
Insert into MEDENIHAL (MHID,MHADI) values ('2','Bekar');
REM INSERTING into PERADRES
SET DEFINE OFF;
Insert into PERADRES (ADRESID,KIMLIKNO,ADRESTIPID,ONCELIKNO,MAHALLE,CADDE,SOKAK,DISKAPINO,ICKAPINO,POSTAKODU,ILCE,SEHIRKODU) values ('2','123654987','1','2','Kap?c?','Çobanl?','Soldan','1','3','20153','Merkez','28');
Insert into PERADRES (ADRESID,KIMLIKNO,ADRESTIPID,ONCELIKNO,MAHALLE,CADDE,SOKAK,DISKAPINO,ICKAPINO,POSTAKODU,ILCE,SEHIRKODU) values ('3','147852369','2','1','Turnasuyu','Çobanl?','Sa?dan','2','4','23015','Merkez','52');
Insert into PERADRES (ADRESID,KIMLIKNO,ADRESTIPID,ONCELIKNO,MAHALLE,CADDE,SOKAK,DISKAPINO,ICKAPINO,POSTAKODU,ILCE,SEHIRKODU) values ('1','123456789','1','1','A?a??','Yukar?','Bizim','2','3','10200','Merkez','52');
REM INSERTING into PERBILGI
SET DEFINE OFF;
Insert into PERBILGI (PERSONELNO,KIMLIKNO,MAAS,BIRIMID,UNVANID,PRIM,SIFRE,VARDIYAID) values ('10004','154632146','5000','3','2','3','3456','1');
Insert into PERBILGI (PERSONELNO,KIMLIKNO,MAAS,BIRIMID,UNVANID,PRIM,SIFRE,VARDIYAID) values ('10000','325896147','6000','2','3','2','4210','2');
Insert into PERBILGI (PERSONELNO,KIMLIKNO,MAAS,BIRIMID,UNVANID,PRIM,SIFRE,VARDIYAID) values ('10001','999111941','5000','2','4','2','4242','2');
Insert into PERBILGI (PERSONELNO,KIMLIKNO,MAAS,BIRIMID,UNVANID,PRIM,SIFRE,VARDIYAID) values ('10002','123534534','6000','2','3','4','4513','2');
Insert into PERBILGI (PERSONELNO,KIMLIKNO,MAAS,BIRIMID,UNVANID,PRIM,SIFRE,VARDIYAID) values ('10003','123321122','5005','3','5','5','4245','1');
Insert into PERBILGI (PERSONELNO,KIMLIKNO,MAAS,BIRIMID,UNVANID,PRIM,SIFRE,VARDIYAID) values ('12345','123456789','12000','1','1','5','1234','1');
Insert into PERBILGI (PERSONELNO,KIMLIKNO,MAAS,BIRIMID,UNVANID,PRIM,SIFRE,VARDIYAID) values ('14523','123654987','9500','1','2','4','3214','1');
Insert into PERBILGI (PERSONELNO,KIMLIKNO,MAAS,BIRIMID,UNVANID,PRIM,SIFRE,VARDIYAID) values ('12563','147852369','7000','1','3','4','2154','1');
Insert into PERBILGI (PERSONELNO,KIMLIKNO,MAAS,BIRIMID,UNVANID,PRIM,SIFRE,VARDIYAID) values ('13524','369512487','7000','2','4','2','3251','1');
Insert into PERBILGI (PERSONELNO,KIMLIKNO,MAAS,BIRIMID,UNVANID,PRIM,SIFRE,VARDIYAID) values ('18745','325896147','8000','3','5','5','6251','2');
REM INSERTING into PERBILGILOG
SET DEFINE OFF;
Insert into PERBILGILOG (KULLANICI,TARIH,YAPILAN_ISLEM,ID) values ('PVT',to_date('09/06/2021','DD/MM/RRRR'),'INSERT','3');
Insert into PERBILGILOG (KULLANICI,TARIH,YAPILAN_ISLEM,ID) values ('PVT',to_date('09/06/2021','DD/MM/RRRR'),'UPDATE','4');
Insert into PERBILGILOG (KULLANICI,TARIH,YAPILAN_ISLEM,ID) values ('PVT',to_date('09/06/2021','DD/MM/RRRR'),'UPDATE','7');
Insert into PERBILGILOG (KULLANICI,TARIH,YAPILAN_ISLEM,ID) values ('PVT',to_date('07/06/2021','DD/MM/RRRR'),'INSERT','1');
Insert into PERBILGILOG (KULLANICI,TARIH,YAPILAN_ISLEM,ID) values ('PVT',to_date('07/06/2021','DD/MM/RRRR'),'INSERT','2');
REM INSERTING into PERCOCUK
SET DEFINE OFF;
Insert into PERCOCUK (COCUKID,PERSONELNO,ADI,SOYADI,DTARIHI,DYERIKODU,CINSIYETID) values ('1','12345','Emre','ERDA?',to_date('19/08/2006','DD/MM/RRRR'),'52','1');
REM INSERTING into PERISGEC
SET DEFINE OFF;
Insert into PERISGEC (GECID,PERSONELNO,BASTARIH,BITTARIH,UNVANID,BIRIMID) values ('2','14523',to_date('05/01/2021','DD/MM/RRRR'),to_date('14/04/2021','DD/MM/RRRR'),'1','2');
Insert into PERISGEC (GECID,PERSONELNO,BASTARIH,BITTARIH,UNVANID,BIRIMID) values ('1','13524',to_date('09/01/2020','DD/MM/RRRR'),to_date('14/08/2020','DD/MM/RRRR'),'4','2');
REM INSERTING into PERKIMLIK
SET DEFINE OFF;
Insert into PERKIMLIK (KIMLIKNO,ADI,SOYADI,ANNEADI,BABAADI,DTARIH,DYERIKODU,UYRUKID,CINSIYETID,KANGRUBUID,MEDENIHALID) values ('123456789','Hamza','ERDA?','Melda','Mevlüt
',to_date('06/06/1998','DD/MM/RRRR'),'52','1','1','1','2');
Insert into PERKIMLIK (KIMLIKNO,ADI,SOYADI,ANNEADI,BABAADI,DTARIH,DYERIKODU,UYRUKID,CINSIYETID,KANGRUBUID,MEDENIHALID) values ('999111941','Q','W','E','R',to_date('21/12/2000','DD/MM/RRRR'),'52','1','1','1','1');
Insert into PERKIMLIK (KIMLIKNO,ADI,SOYADI,ANNEADI,BABAADI,DTARIH,DYERIKODU,UYRUKID,CINSIYETID,KANGRUBUID,MEDENIHALID) values ('154632146','B','C','D','F',to_date('03/07/1993','DD/MM/RRRR'),'52','1','2','3','1');
Insert into PERKIMLIK (KIMLIKNO,ADI,SOYADI,ANNEADI,BABAADI,DTARIH,DYERIKODU,UYRUKID,CINSIYETID,KANGRUBUID,MEDENIHALID) values ('516151656','Furkan','KÖKSAL','Fatma','Ferhat',to_date('11/09/1996','DD/MM/RRRR'),'52','1','1','4','1');
Insert into PERKIMLIK (KIMLIKNO,ADI,SOYADI,ANNEADI,BABAADI,DTARIH,DYERIKODU,UYRUKID,CINSIYETID,KANGRUBUID,MEDENIHALID) values ('123321122','Mahmut','W','E','R',to_date('21/12/1995','DD/MM/RRRR'),'52','1','1','1','1');
Insert into PERKIMLIK (KIMLIKNO,ADI,SOYADI,ANNEADI,BABAADI,DTARIH,DYERIKODU,UYRUKID,CINSIYETID,KANGRUBUID,MEDENIHALID) values ('123534534','Q','W','E','R',to_date('21/12/1995','DD/MM/RRRR'),'28','1','1','1','1');
Insert into PERKIMLIK (KIMLIKNO,ADI,SOYADI,ANNEADI,BABAADI,DTARIH,DYERIKODU,UYRUKID,CINSIYETID,KANGRUBUID,MEDENIHALID) values ('123654987','Mahmut','YILMAZ','Havva','Recep',to_date('13/03/1991','DD/MM/RRRR'),'28','1','1','5','1');
Insert into PERKIMLIK (KIMLIKNO,ADI,SOYADI,ANNEADI,BABAADI,DTARIH,DYERIKODU,UYRUKID,CINSIYETID,KANGRUBUID,MEDENIHALID) values ('147852369','Elif','KORKMAZ','Gülsüm','Emre',to_date('23/06/1995','DD/MM/RRRR'),'52','1','2','4','2');
Insert into PERKIMLIK (KIMLIKNO,ADI,SOYADI,ANNEADI,BABAADI,DTARIH,DYERIKODU,UYRUKID,CINSIYETID,KANGRUBUID,MEDENIHALID) values ('369512487','Muhammet','ÖZCAN','?erife','Ertu?rul',to_date('15/08/1988','DD/MM/RRRR'),'28','1','1','2','1');
Insert into PERKIMLIK (KIMLIKNO,ADI,SOYADI,ANNEADI,BABAADI,DTARIH,DYERIKODU,UYRUKID,CINSIYETID,KANGRUBUID,MEDENIHALID) values ('325896147','Defne','YALÇIN','Cemile','Mehmet',to_date('17/12/1993','DD/MM/RRRR'),'28','1','2','6','2');
REM INSERTING into PERKIMLIKLOG
SET DEFINE OFF;
Insert into PERKIMLIKLOG (KULLANICI,TARIH,YAPILAN_ISLEM,ID) values ('PVT',to_date('09/06/2021','DD/MM/RRRR'),'INSERT','2');
Insert into PERKIMLIKLOG (KULLANICI,TARIH,YAPILAN_ISLEM,ID) values ('PVT',to_date('07/06/2021','DD/MM/RRRR'),'UPDATE','1');
REM INSERTING into PERMAILADRES
SET DEFINE OFF;
Insert into PERMAILADRES (MAILID,PERSONELNO,MAILADRESI,MAILTIPID,ONCELIKNO) values ('1','18745','defne@gmail.com','2','1');
REM INSERTING into PERTELNO
SET DEFINE OFF;
Insert into PERTELNO (PTNID,PERSONELNO,TELNO,TELTIP,ONCELIKNO) values ('1','12563','5346254312','1','1');
REM INSERTING into SEHIRLER
SET DEFINE OFF;
Insert into SEHIRLER (SEHKODU,SEHADI,ULKEKODU) values ('28','G?RESUN','90');
Insert into SEHIRLER (SEHKODU,SEHADI,ULKEKODU) values ('52','ORDU','90');
REM INSERTING into TELTIP
SET DEFINE OFF;
Insert into TELTIP (TTID,TTADI) values ('1','Cep');
Insert into TELTIP (TTID,TTADI) values ('2','Ev');
Insert into TELTIP (TTID,TTADI) values ('3','??');
REM INSERTING into ULKELER
SET DEFINE OFF;
Insert into ULKELER (ULKEKODU,ULKEADI) values ('49','Almanya');
Insert into ULKELER (ULKEKODU,ULKEADI) values ('90','Türkiye');
Insert into ULKELER (ULKEKODU,ULKEADI) values ('597','Kuzey K?br?s Türk Cumhuriyeti');
Insert into ULKELER (ULKEKODU,ULKEADI) values ('994','Azerbaycan');
REM INSERTING into UNVAN
SET DEFINE OFF;
Insert into UNVAN (UNVANID,UNVANADI,ENAZMAAS,ENCOKMAAS) values ('1','Müdür','9000','20000');
Insert into UNVAN (UNVANID,UNVANADI,ENAZMAAS,ENCOKMAAS) values ('2','Müdür Yard?mc?s?','7000','9000');
Insert into UNVAN (UNVANID,UNVANADI,ENAZMAAS,ENCOKMAAS) values ('3','Genel Sekreter','6000','8000');
Insert into UNVAN (UNVANID,UNVANADI,ENAZMAAS,ENCOKMAAS) values ('4','Sat?? Müdürü','6000','8000');
Insert into UNVAN (UNVANID,UNVANADI,ENAZMAAS,ENCOKMAAS) values ('5','Programc?','5000','10000');
REM INSERTING into UYRUK
SET DEFINE OFF;
Insert into UYRUK (UYRUKID,UYRUKADI) values ('1','TC');
Insert into UYRUK (UYRUKID,UYRUKADI) values ('2','KKTC');
Insert into UYRUK (UYRUKID,UYRUKADI) values ('3','AZ');
Insert into UYRUK (UYRUKID,UYRUKADI) values ('4','DE');
REM INSERTING into VARDIYA
SET DEFINE OFF;
Insert into VARDIYA (VARDIYAID,VARARALIK) values ('1','08.30/15.00');
Insert into VARDIYA (VARDIYAID,VARARALIK) values ('2','15.00/21.30');
REM INSERTING into PERBILGIVIEW
SET DEFINE OFF;
Insert into PERBILGIVIEW (PERSONELNO,KIMLIKNO,MAAS,BIRIMADI,UNVANADI,ENCOKMAAS,ENAZMAAS,VARARALIK) values ('12345','123456789','12000','Yönetici','Müdür','20000','9000','08.30/15.00');
Insert into PERBILGIVIEW (PERSONELNO,KIMLIKNO,MAAS,BIRIMADI,UNVANADI,ENCOKMAAS,ENAZMAAS,VARARALIK) values ('14523','123654987','9500','Yönetici','Müdür Yard?mc?s?','9000','7000','08.30/15.00');
Insert into PERBILGIVIEW (PERSONELNO,KIMLIKNO,MAAS,BIRIMADI,UNVANADI,ENCOKMAAS,ENAZMAAS,VARARALIK) values ('12563','147852369','7000','Yönetici','Genel Sekreter','8000','6000','08.30/15.00');
Insert into PERBILGIVIEW (PERSONELNO,KIMLIKNO,MAAS,BIRIMADI,UNVANADI,ENCOKMAAS,ENAZMAAS,VARARALIK) values ('10000','325896147','6000','Pazarlama','Genel Sekreter','8000','6000','15.00/21.30');
Insert into PERBILGIVIEW (PERSONELNO,KIMLIKNO,MAAS,BIRIMADI,UNVANADI,ENCOKMAAS,ENAZMAAS,VARARALIK) values ('10002','123534534','6000','Pazarlama','Genel Sekreter','8000','6000','15.00/21.30');
Insert into PERBILGIVIEW (PERSONELNO,KIMLIKNO,MAAS,BIRIMADI,UNVANADI,ENCOKMAAS,ENAZMAAS,VARARALIK) values ('10001','999111941','5000','Pazarlama','Sat?? Müdürü','8000','6000','15.00/21.30');
Insert into PERBILGIVIEW (PERSONELNO,KIMLIKNO,MAAS,BIRIMADI,UNVANADI,ENCOKMAAS,ENAZMAAS,VARARALIK) values ('13524','369512487','7000','Pazarlama','Sat?? Müdürü','8000','6000','08.30/15.00');
Insert into PERBILGIVIEW (PERSONELNO,KIMLIKNO,MAAS,BIRIMADI,UNVANADI,ENCOKMAAS,ENAZMAAS,VARARALIK) values ('18745','325896147','8000','Mühendislik','Programc?','10000','5000','15.00/21.30');
Insert into PERBILGIVIEW (PERSONELNO,KIMLIKNO,MAAS,BIRIMADI,UNVANADI,ENCOKMAAS,ENAZMAAS,VARARALIK) values ('10004','154632146','5000','Mühendislik','Müdür Yard?mc?s?','9000','7000','08.30/15.00');
Insert into PERBILGIVIEW (PERSONELNO,KIMLIKNO,MAAS,BIRIMADI,UNVANADI,ENCOKMAAS,ENAZMAAS,VARARALIK) values ('10003','123321122','5005','Mühendislik','Programc?','10000','5000','08.30/15.00');
REM INSERTING into PERKIMLIKVIEW
SET DEFINE OFF;
Insert into PERKIMLIKVIEW (KIMLIKNO,ADI,ANNEADI,BABAADI,DTARIH,UYRUKADI,SEHADI,CADI,KGADI,MHADI) values ('999111941','Q','E','R',to_date('21/12/2000','DD/MM/RRRR'),'TC','ORDU','Erkek','0-','Evli');
Insert into PERKIMLIKVIEW (KIMLIKNO,ADI,ANNEADI,BABAADI,DTARIH,UYRUKADI,SEHADI,CADI,KGADI,MHADI) values ('123321122','Mahmut','E','R',to_date('21/12/1995','DD/MM/RRRR'),'TC','ORDU','Erkek','0-','Evli');
Insert into PERKIMLIKVIEW (KIMLIKNO,ADI,ANNEADI,BABAADI,DTARIH,UYRUKADI,SEHADI,CADI,KGADI,MHADI) values ('123534534','Q','E','R',to_date('21/12/1995','DD/MM/RRRR'),'TC','G?RESUN','Erkek','0-','Evli');
Insert into PERKIMLIKVIEW (KIMLIKNO,ADI,ANNEADI,BABAADI,DTARIH,UYRUKADI,SEHADI,CADI,KGADI,MHADI) values ('123456789','Hamza','Melda','Mevlüt
',to_date('06/06/1998','DD/MM/RRRR'),'TC','ORDU','Erkek','0-','Bekar');
Insert into PERKIMLIKVIEW (KIMLIKNO,ADI,ANNEADI,BABAADI,DTARIH,UYRUKADI,SEHADI,CADI,KGADI,MHADI) values ('369512487','Muhammet','?erife','Ertu?rul',to_date('15/08/1988','DD/MM/RRRR'),'TC','G?RESUN','Erkek','0+','Evli');
Insert into PERKIMLIKVIEW (KIMLIKNO,ADI,ANNEADI,BABAADI,DTARIH,UYRUKADI,SEHADI,CADI,KGADI,MHADI) values ('154632146','B','D','F',to_date('03/07/1993','DD/MM/RRRR'),'TC','ORDU','Kad?n','A-','Evli');
Insert into PERKIMLIKVIEW (KIMLIKNO,ADI,ANNEADI,BABAADI,DTARIH,UYRUKADI,SEHADI,CADI,KGADI,MHADI) values ('516151656','Furkan','Fatma','Ferhat',to_date('11/09/1996','DD/MM/RRRR'),'TC','ORDU','Erkek','A+','Evli');
Insert into PERKIMLIKVIEW (KIMLIKNO,ADI,ANNEADI,BABAADI,DTARIH,UYRUKADI,SEHADI,CADI,KGADI,MHADI) values ('147852369','Elif','Gülsüm','Emre',to_date('23/06/1995','DD/MM/RRRR'),'TC','ORDU','Kad?n','A+','Bekar');
Insert into PERKIMLIKVIEW (KIMLIKNO,ADI,ANNEADI,BABAADI,DTARIH,UYRUKADI,SEHADI,CADI,KGADI,MHADI) values ('123654987','Mahmut','Havva','Recep',to_date('13/03/1991','DD/MM/RRRR'),'TC','G?RESUN','Erkek','B-','Evli');
Insert into PERKIMLIKVIEW (KIMLIKNO,ADI,ANNEADI,BABAADI,DTARIH,UYRUKADI,SEHADI,CADI,KGADI,MHADI) values ('325896147','Defne','Cemile','Mehmet',to_date('17/12/1993','DD/MM/RRRR'),'TC','G?RESUN','Kad?n','B+','Bekar');
--------------------------------------------------------
--  DDL for Index ADRESTIP_AD_UK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ADRESTIP_AD_UK" ON "ADRESTIP" ("ATADI") 
  ;
--------------------------------------------------------
--  DDL for Index ADRESTIP_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ADRESTIP_PK" ON "ADRESTIP" ("ATID") 
  ;
--------------------------------------------------------
--  DDL for Index BIRIMLER_ADI_UK
--------------------------------------------------------

  CREATE UNIQUE INDEX "BIRIMLER_ADI_UK" ON "BIRIMLER" ("BIRIMADI") 
  ;
--------------------------------------------------------
--  DDL for Index CINSIYET_AD
--------------------------------------------------------

  CREATE UNIQUE INDEX "CINSIYET_AD" ON "CINSIYET" ("CADI") 
  ;
--------------------------------------------------------
--  DDL for Index CINSIYET_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "CINSIYET_PK" ON "CINSIYET" ("CID") 
  ;
--------------------------------------------------------
--  DDL for Index KANGRUBU_AD
--------------------------------------------------------

  CREATE UNIQUE INDEX "KANGRUBU_AD" ON "KANGRUBU" ("KGADI") 
  ;
--------------------------------------------------------
--  DDL for Index KANGRUBU_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "KANGRUBU_PK" ON "KANGRUBU" ("KGID") 
  ;
--------------------------------------------------------
--  DDL for Index MAIL_AD
--------------------------------------------------------

  CREATE UNIQUE INDEX "MAIL_AD" ON "MAILTIP" ("MTADI") 
  ;
--------------------------------------------------------
--  DDL for Index MAILTIP_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "MAILTIP_PK" ON "MAILTIP" ("MTID") 
  ;
--------------------------------------------------------
--  DDL for Index MEDENIHAL_AD
--------------------------------------------------------

  CREATE UNIQUE INDEX "MEDENIHAL_AD" ON "MEDENIHAL" ("MHADI") 
  ;
--------------------------------------------------------
--  DDL for Index MEDENIHAL_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "MEDENIHAL_PK" ON "MEDENIHAL" ("MHID") 
  ;
--------------------------------------------------------
--  DDL for Index PERMAILADRES_ADRES_UK
--------------------------------------------------------

  CREATE UNIQUE INDEX "PERMAILADRES_ADRES_UK" ON "PERMAILADRES" ("MAILADRESI") 
  ;
--------------------------------------------------------
--  DDL for Index PERMAILADRES_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "PERMAILADRES_PK" ON "PERMAILADRES" ("MAILID") 
  ;
--------------------------------------------------------
--  DDL for Index PERTELNO_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "PERTELNO_PK" ON "PERTELNO" ("PTNID") 
  ;
--------------------------------------------------------
--  DDL for Index PERTELNO_TELNO_UK
--------------------------------------------------------

  CREATE UNIQUE INDEX "PERTELNO_TELNO_UK" ON "PERTELNO" ("TELNO") 
  ;
--------------------------------------------------------
--  DDL for Index SEH?RLER_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SEH?RLER_PK" ON "SEHIRLER" ("SEHKODU") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C007103
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C007103" ON "PERKIMLIK" ("KIMLIKNO") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C007116
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C007116" ON "PERBILGI" ("PERSONELNO") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C007117
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C007117" ON "BIRIMLER" ("BIRIMID") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C007122
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C007122" ON "UNVAN" ("UNVANID") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C007128
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C007128" ON "PERISGEC" ("GECID") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C007134
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C007134" ON "PERCOCUK" ("COCUKID") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C007252
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C007252" ON "PERADRES" ("ADRESID") 
  ;
--------------------------------------------------------
--  DDL for Index TELTIP_AD_UK
--------------------------------------------------------

  CREATE UNIQUE INDEX "TELTIP_AD_UK" ON "TELTIP" ("TTADI") 
  ;
--------------------------------------------------------
--  DDL for Index TELTIP_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "TELTIP_PK" ON "TELTIP" ("TTID") 
  ;
--------------------------------------------------------
--  DDL for Index ULKELER_AD_UK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ULKELER_AD_UK" ON "ULKELER" ("ULKEADI") 
  ;
--------------------------------------------------------
--  DDL for Index ULKELER_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ULKELER_PK" ON "ULKELER" ("ULKEKODU") 
  ;
--------------------------------------------------------
--  DDL for Index UNVAN_AD_UK
--------------------------------------------------------

  CREATE UNIQUE INDEX "UNVAN_AD_UK" ON "UNVAN" ("UNVANADI") 
  ;
--------------------------------------------------------
--  DDL for Index UYRUK_AD
--------------------------------------------------------

  CREATE UNIQUE INDEX "UYRUK_AD" ON "UYRUK" ("UYRUKADI") 
  ;
--------------------------------------------------------
--  DDL for Index UYRUK_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "UYRUK_PK" ON "UYRUK" ("UYRUKID") 
  ;
--------------------------------------------------------
--  DDL for Index VARDIYA_ARALIK
--------------------------------------------------------

  CREATE UNIQUE INDEX "VARDIYA_ARALIK" ON "VARDIYA" ("VARARALIK") 
  ;
--------------------------------------------------------
--  DDL for Index VARDIYA_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "VARDIYA_PK" ON "VARDIYA" ("VARDIYAID") 
  ;
--------------------------------------------------------
--  DDL for Index ADRESTIP_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ADRESTIP_PK" ON "ADRESTIP" ("ATID") 
  ;
--------------------------------------------------------
--  DDL for Index ADRESTIP_AD_UK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ADRESTIP_AD_UK" ON "ADRESTIP" ("ATADI") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C007117
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C007117" ON "BIRIMLER" ("BIRIMID") 
  ;
--------------------------------------------------------
--  DDL for Index BIRIMLER_ADI_UK
--------------------------------------------------------

  CREATE UNIQUE INDEX "BIRIMLER_ADI_UK" ON "BIRIMLER" ("BIRIMADI") 
  ;
--------------------------------------------------------
--  DDL for Index CINSIYET_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "CINSIYET_PK" ON "CINSIYET" ("CID") 
  ;
--------------------------------------------------------
--  DDL for Index CINSIYET_AD
--------------------------------------------------------

  CREATE UNIQUE INDEX "CINSIYET_AD" ON "CINSIYET" ("CADI") 
  ;
--------------------------------------------------------
--  DDL for Index KANGRUBU_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "KANGRUBU_PK" ON "KANGRUBU" ("KGID") 
  ;
--------------------------------------------------------
--  DDL for Index KANGRUBU_AD
--------------------------------------------------------

  CREATE UNIQUE INDEX "KANGRUBU_AD" ON "KANGRUBU" ("KGADI") 
  ;
--------------------------------------------------------
--  DDL for Index MAILTIP_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "MAILTIP_PK" ON "MAILTIP" ("MTID") 
  ;
--------------------------------------------------------
--  DDL for Index MAIL_AD
--------------------------------------------------------

  CREATE UNIQUE INDEX "MAIL_AD" ON "MAILTIP" ("MTADI") 
  ;
--------------------------------------------------------
--  DDL for Index MEDENIHAL_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "MEDENIHAL_PK" ON "MEDENIHAL" ("MHID") 
  ;
--------------------------------------------------------
--  DDL for Index MEDENIHAL_AD
--------------------------------------------------------

  CREATE UNIQUE INDEX "MEDENIHAL_AD" ON "MEDENIHAL" ("MHADI") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C007252
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C007252" ON "PERADRES" ("ADRESID") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C007116
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C007116" ON "PERBILGI" ("PERSONELNO") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C007134
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C007134" ON "PERCOCUK" ("COCUKID") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C007128
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C007128" ON "PERISGEC" ("GECID") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C007103
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C007103" ON "PERKIMLIK" ("KIMLIKNO") 
  ;
--------------------------------------------------------
--  DDL for Index PERMAILADRES_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "PERMAILADRES_PK" ON "PERMAILADRES" ("MAILID") 
  ;
--------------------------------------------------------
--  DDL for Index PERMAILADRES_ADRES_UK
--------------------------------------------------------

  CREATE UNIQUE INDEX "PERMAILADRES_ADRES_UK" ON "PERMAILADRES" ("MAILADRESI") 
  ;
--------------------------------------------------------
--  DDL for Index PERTELNO_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "PERTELNO_PK" ON "PERTELNO" ("PTNID") 
  ;
--------------------------------------------------------
--  DDL for Index PERTELNO_TELNO_UK
--------------------------------------------------------

  CREATE UNIQUE INDEX "PERTELNO_TELNO_UK" ON "PERTELNO" ("TELNO") 
  ;
--------------------------------------------------------
--  DDL for Index SEH?RLER_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SEH?RLER_PK" ON "SEHIRLER" ("SEHKODU") 
  ;
--------------------------------------------------------
--  DDL for Index TELTIP_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "TELTIP_PK" ON "TELTIP" ("TTID") 
  ;
--------------------------------------------------------
--  DDL for Index TELTIP_AD_UK
--------------------------------------------------------

  CREATE UNIQUE INDEX "TELTIP_AD_UK" ON "TELTIP" ("TTADI") 
  ;
--------------------------------------------------------
--  DDL for Index ULKELER_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ULKELER_PK" ON "ULKELER" ("ULKEKODU") 
  ;
--------------------------------------------------------
--  DDL for Index ULKELER_AD_UK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ULKELER_AD_UK" ON "ULKELER" ("ULKEADI") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C007122
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C007122" ON "UNVAN" ("UNVANID") 
  ;
--------------------------------------------------------
--  DDL for Index UNVAN_AD_UK
--------------------------------------------------------

  CREATE UNIQUE INDEX "UNVAN_AD_UK" ON "UNVAN" ("UNVANADI") 
  ;
--------------------------------------------------------
--  DDL for Index UYRUK_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "UYRUK_PK" ON "UYRUK" ("UYRUKID") 
  ;
--------------------------------------------------------
--  DDL for Index UYRUK_AD
--------------------------------------------------------

  CREATE UNIQUE INDEX "UYRUK_AD" ON "UYRUK" ("UYRUKADI") 
  ;
--------------------------------------------------------
--  DDL for Index VARDIYA_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "VARDIYA_PK" ON "VARDIYA" ("VARDIYAID") 
  ;
--------------------------------------------------------
--  DDL for Index VARDIYA_ARALIK
--------------------------------------------------------

  CREATE UNIQUE INDEX "VARDIYA_ARALIK" ON "VARDIYA" ("VARARALIK") 
  ;
--------------------------------------------------------
--  DDL for Trigger PERBILGITRIGGER
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "PERBILGITRIGGER" 
AFTER DELETE OR INSERT OR UPDATE 
ON PERBILGI 

FOR EACH ROW

DECLARE

BEGIN
  IF INSERTING THEN
    INSERT INTO PERBILGILOG(KULLANICI,TARIH,YAPILAN_ISLEM,ID)
    VALUES (USER, SYSDATE, 'INSERT',SEQ_PERBILGI_TRIG_ID.nextval);
  END IF;
    
  IF DELETING THEN
    INSERT INTO PERBILGILOG(KULLANICI,TARIH,YAPILAN_ISLEM,ID)
    VALUES (USER, SYSDATE, 'DELETE',SEQ_PERBILGI_TRIG_ID.nextval); 
  END IF;
    
  IF UPDATING THEN
    INSERT INTO PERBILGILOG(KULLANICI,TARIH,YAPILAN_ISLEM,ID)
    VALUES (USER, SYSDATE, 'UPDATE',SEQ_PERBILGI_TRIG_ID.nextval); 
  END IF;
END;
/
ALTER TRIGGER "PERBILGITRIGGER" ENABLE;
--------------------------------------------------------
--  DDL for Trigger PERKIMLIKTRIGGER
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "PERKIMLIKTRIGGER" 
AFTER DELETE OR INSERT OR UPDATE 
ON PERKIMLIK

FOR EACH ROW

DECLARE

BEGIN
  IF INSERTING THEN
    INSERT INTO PERKIMLIKLOG(KULLANICI,TARIH,YAPILAN_ISLEM,ID)
    VALUES (USER, SYSDATE, 'INSERT',SEQ_PERKIMLIKLOG_TRIG_ID.nextval);
  END IF;
    
  IF DELETING THEN
    INSERT INTO PERKIMLIKLOG(KULLANICI,TARIH,YAPILAN_ISLEM,ID)
    VALUES (USER, SYSDATE, 'DELETE',SEQ_PERKIMLIKLOG_TRIG_ID.nextval); 
  END IF;
    
  IF UPDATING THEN
    INSERT INTO PERKIMLIKLOG(KULLANICI,TARIH,YAPILAN_ISLEM,ID)
    VALUES (USER, SYSDATE, 'UPDATE',SEQ_PERKIMLIKLOG_TRIG_ID.nextval); 
  END IF;
END;
/
ALTER TRIGGER "PERKIMLIKTRIGGER" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRIG_PK_PERADRES_ID
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "TRIG_PK_PERADRES_ID" 
   before insert on "PERADRES" 
   for each row 
begin  
   if inserting then 
      if :NEW."ADRESID" is null then 
         select SEQ_PERADRES_ID.nextval into :NEW."ADRESID" from dual; 
      end if; 
   end if; 
end;

/
ALTER TRIGGER "TRIG_PK_PERADRES_ID" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRIG_PK_PERBILGI_NO
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "TRIG_PK_PERBILGI_NO" 
   before insert on "PERBILGI" 
   for each row 
begin  
   if inserting then 
      if :NEW."PERSONELNO" is null then 
         select SEQ_PERBILGI_NO.nextval into :NEW."PERSONELNO" from dual; 
      end if; 
   end if; 
end;

/
ALTER TRIGGER "TRIG_PK_PERBILGI_NO" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRIG_PK_PERISGEC_ID
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "TRIG_PK_PERISGEC_ID" 
   before insert on "PERISGEC" 
   for each row 
begin  
   if inserting then 
      if :NEW."GECID" is null then 
         select SEQ_PERISGEC_ID.nextval into :NEW."GECID" from dual; 
      end if; 
   end if; 
end;

/
ALTER TRIGGER "TRIG_PK_PERISGEC_ID" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRIQ_PK_BIRIM_ID
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "TRIQ_PK_BIRIM_ID" 
   before insert on "BIRIMLER" 
   for each row 
begin  
   if inserting then 
      if :NEW."BIRIMID" is null then 
         select SEQ_BIRIM_ID.nextval into :NEW."BIRIMID" from dual; 
      end if; 
   end if; 
end;

/
ALTER TRIGGER "TRIQ_PK_BIRIM_ID" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRIQ_PK_BIRIM_ID
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "TRIQ_PK_BIRIM_ID" 
   before insert on "BIRIMLER" 
   for each row 
begin  
   if inserting then 
      if :NEW."BIRIMID" is null then 
         select SEQ_BIRIM_ID.nextval into :NEW."BIRIMID" from dual; 
      end if; 
   end if; 
end;

/
ALTER TRIGGER "TRIQ_PK_BIRIM_ID" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRIG_PK_PERADRES_ID
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "TRIG_PK_PERADRES_ID" 
   before insert on "PERADRES" 
   for each row 
begin  
   if inserting then 
      if :NEW."ADRESID" is null then 
         select SEQ_PERADRES_ID.nextval into :NEW."ADRESID" from dual; 
      end if; 
   end if; 
end;

/
ALTER TRIGGER "TRIG_PK_PERADRES_ID" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRIG_PK_PERBILGI_NO
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "TRIG_PK_PERBILGI_NO" 
   before insert on "PERBILGI" 
   for each row 
begin  
   if inserting then 
      if :NEW."PERSONELNO" is null then 
         select SEQ_PERBILGI_NO.nextval into :NEW."PERSONELNO" from dual; 
      end if; 
   end if; 
end;

/
ALTER TRIGGER "TRIG_PK_PERBILGI_NO" ENABLE;
--------------------------------------------------------
--  DDL for Trigger PERBILGITRIGGER
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "PERBILGITRIGGER" 
AFTER DELETE OR INSERT OR UPDATE 
ON PERBILGI 

FOR EACH ROW

DECLARE

BEGIN
  IF INSERTING THEN
    INSERT INTO PERBILGILOG(KULLANICI,TARIH,YAPILAN_ISLEM,ID)
    VALUES (USER, SYSDATE, 'INSERT',SEQ_PERBILGI_TRIG_ID.nextval);
  END IF;
    
  IF DELETING THEN
    INSERT INTO PERBILGILOG(KULLANICI,TARIH,YAPILAN_ISLEM,ID)
    VALUES (USER, SYSDATE, 'DELETE',SEQ_PERBILGI_TRIG_ID.nextval); 
  END IF;
    
  IF UPDATING THEN
    INSERT INTO PERBILGILOG(KULLANICI,TARIH,YAPILAN_ISLEM,ID)
    VALUES (USER, SYSDATE, 'UPDATE',SEQ_PERBILGI_TRIG_ID.nextval); 
  END IF;
END;
/
ALTER TRIGGER "PERBILGITRIGGER" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRIG_PK_PERISGEC_ID
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "TRIG_PK_PERISGEC_ID" 
   before insert on "PERISGEC" 
   for each row 
begin  
   if inserting then 
      if :NEW."GECID" is null then 
         select SEQ_PERISGEC_ID.nextval into :NEW."GECID" from dual; 
      end if; 
   end if; 
end;

/
ALTER TRIGGER "TRIG_PK_PERISGEC_ID" ENABLE;
--------------------------------------------------------
--  DDL for Trigger PERKIMLIKTRIGGER
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "PERKIMLIKTRIGGER" 
AFTER DELETE OR INSERT OR UPDATE 
ON PERKIMLIK

FOR EACH ROW

DECLARE

BEGIN
  IF INSERTING THEN
    INSERT INTO PERKIMLIKLOG(KULLANICI,TARIH,YAPILAN_ISLEM,ID)
    VALUES (USER, SYSDATE, 'INSERT',SEQ_PERKIMLIKLOG_TRIG_ID.nextval);
  END IF;
    
  IF DELETING THEN
    INSERT INTO PERKIMLIKLOG(KULLANICI,TARIH,YAPILAN_ISLEM,ID)
    VALUES (USER, SYSDATE, 'DELETE',SEQ_PERKIMLIKLOG_TRIG_ID.nextval); 
  END IF;
    
  IF UPDATING THEN
    INSERT INTO PERKIMLIKLOG(KULLANICI,TARIH,YAPILAN_ISLEM,ID)
    VALUES (USER, SYSDATE, 'UPDATE',SEQ_PERKIMLIKLOG_TRIG_ID.nextval); 
  END IF;
END;
/
ALTER TRIGGER "PERKIMLIKTRIGGER" ENABLE;
--------------------------------------------------------
--  DDL for Procedure PERBILGIVERIEKLE
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "PERBILGIVERIEKLE" (
                            KIMLIKNO NUMBER,
                            MAAS NUMBER,
                            BIRIMID NUMBER,
                            UNVANID NVARCHAR2,
                            PRIMID NUMBER,
                            SIFRE NUMBER,
                            VARDIYAID NUMBER) AS 
BEGIN
  INSERT INTO PERBILGI(KIMLIKNO,MAAS,BIRIMID,UNVANID,PRIM,SIFRE,VARDIYAID)
  VALUES 
  (KIMLIKNO,MAAS,BIRIMID,UNVANID,PRIMID,SIFRE,VARDIYAID);
END PERBILGIVERIEKLE;

/
--------------------------------------------------------
--  DDL for Procedure PERKIMLIKVERIEKLE
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "PERKIMLIKVERIEKLE" (
                            KIMLIKNO NUMBER,
                            ADI NVARCHAR2,
                            SOYADI NVARCHAR2,
                            ANNEADI NVARCHAR2,
                            BABAADI NVARCHAR2,
                            DTARIH DATE,
                            DYERIKODU NUMBER,
                            UYRUKID NUMBER,
                            CINSIYETID NUMBER,
                            KANGRUBUID NUMBER,
                            MEDENIHALID NUMBER)AS 
BEGIN
  INSERT INTO PERKIMLIK(KIMLIKNO,ADI,SOYADI,ANNEADI,BABAADI,DTARIH,DYERIKODU,UYRUKID,CINSIYETID,KANGRUBUID,MEDENIHALID)
  VALUES 
  (KIMLIKNO,ADI,SOYADI,ANNEADI,BABAADI,DTARIH,DYERIKODU,UYRUKID,CINSIYETID,KANGRUBUID,MEDENIHALID);
END PERKIMLIKVERIEKLE;

/
--------------------------------------------------------
--  DDL for Function ELEMANSAYISI
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION "ELEMANSAYISI" (ILKODU NUMBER) RETURN VARCHAR2 AS 

TOPLAM NUMBER:=0;
METIN VARCHAR2(100);

BEGIN
    SELECT COUNT(*) INTO TOPLAM FROM PERKIMLIK WHERE dyer?kodu=ILKODU;
    METIN:= TO_CHAR(ILKODU) || ' kodlu ilden ' || TO_CHAR(TOPLAM) || ' elemanimiz vardir.';
  RETURN METIN;
END ELEMANSAYISI;

/
--------------------------------------------------------
--  DDL for Function ORTALAMAMAAS
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION "ORTALAMAMAAS" RETURN VARCHAR2 AS 

CURSOR C1 IS SELECT MAAS FROM PERBILGI;
R1 C1%ROWTYPE;

TOPLAM NUMBER:=0;
SAYI NUMBER;
ORTALAMA NUMBER(6,2);
METIN VARCHAR2(100);
BEGIN
    OPEN C1;
    LOOP
    FETCH C1 INTO R1;
    EXIT WHEN C1%NOTFOUND;
    TOPLAM := TOPLAM + R1.MAAS;
    END LOOP;
    CLOSE C1;
    SELECT COUNT(*) INTO SAYI FROM PERBILGI;
    ORTALAMA:=TOPLAM/SAYI;
    METIN:='ORTALAMA MAAS = '||TO_CHAR(ORTALAMA);
  RETURN METIN;
END ORTALAMAMAAS;

/
--------------------------------------------------------
--  Constraints for Table ADRESTIP
--------------------------------------------------------

  ALTER TABLE "ADRESTIP" ADD CONSTRAINT "ADRESTIP_AD_UK" UNIQUE ("ATADI") ENABLE;
  ALTER TABLE "ADRESTIP" ADD CONSTRAINT "ADRESTIP_PK" PRIMARY KEY ("ATID") ENABLE;
  ALTER TABLE "ADRESTIP" MODIFY ("ATADI" NOT NULL ENABLE);
  ALTER TABLE "ADRESTIP" MODIFY ("ATID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table BIRIMLER
--------------------------------------------------------

  ALTER TABLE "BIRIMLER" ADD CONSTRAINT "BIRIM_ADI_UK" UNIQUE ("BIRIMADI") ENABLE;
  ALTER TABLE "BIRIMLER" MODIFY ("BIRIMADI" NOT NULL ENABLE);
  ALTER TABLE "BIRIMLER" ADD PRIMARY KEY ("BIRIMID") ENABLE;
--------------------------------------------------------
--  Constraints for Table CINSIYET
--------------------------------------------------------

  ALTER TABLE "CINSIYET" ADD CONSTRAINT "CINSIYET_AD_UK" UNIQUE ("CADI") ENABLE;
  ALTER TABLE "CINSIYET" ADD CONSTRAINT "CINSIYET_PK" PRIMARY KEY ("CID") ENABLE;
  ALTER TABLE "CINSIYET" MODIFY ("CADI" NOT NULL ENABLE);
  ALTER TABLE "CINSIYET" MODIFY ("CID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table KANGRUBU
--------------------------------------------------------

  ALTER TABLE "KANGRUBU" ADD CONSTRAINT "KANGRUBU_AD" UNIQUE ("KGADI") ENABLE;
  ALTER TABLE "KANGRUBU" ADD CONSTRAINT "KANGRUBU_PK" PRIMARY KEY ("KGID") ENABLE;
  ALTER TABLE "KANGRUBU" MODIFY ("KGADI" NOT NULL ENABLE);
  ALTER TABLE "KANGRUBU" MODIFY ("KGID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table MAILTIP
--------------------------------------------------------

  ALTER TABLE "MAILTIP" ADD CONSTRAINT "MAIL_AD" UNIQUE ("MTADI") ENABLE;
  ALTER TABLE "MAILTIP" ADD CONSTRAINT "MAILTIP_PK" PRIMARY KEY ("MTID") ENABLE;
  ALTER TABLE "MAILTIP" MODIFY ("MTADI" NOT NULL ENABLE);
  ALTER TABLE "MAILTIP" MODIFY ("MTID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table MEDENIHAL
--------------------------------------------------------

  ALTER TABLE "MEDENIHAL" ADD CONSTRAINT "MEDENIHAL_AD" UNIQUE ("MHADI") ENABLE;
  ALTER TABLE "MEDENIHAL" ADD CONSTRAINT "MEDENIHAL_PK" PRIMARY KEY ("MHID") ENABLE;
  ALTER TABLE "MEDENIHAL" MODIFY ("MHADI" NOT NULL ENABLE);
  ALTER TABLE "MEDENIHAL" MODIFY ("MHID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table PERADRES
--------------------------------------------------------

  ALTER TABLE "PERADRES" ADD PRIMARY KEY ("ADRESID") ENABLE;
  ALTER TABLE "PERADRES" MODIFY ("SEHIRKODU" NOT NULL ENABLE);
  ALTER TABLE "PERADRES" MODIFY ("ILCE" NOT NULL ENABLE);
  ALTER TABLE "PERADRES" MODIFY ("DISKAPINO" NOT NULL ENABLE);
  ALTER TABLE "PERADRES" MODIFY ("MAHALLE" NOT NULL ENABLE);
  ALTER TABLE "PERADRES" MODIFY ("ONCELIKNO" NOT NULL ENABLE);
  ALTER TABLE "PERADRES" MODIFY ("ADRESTIPID" NOT NULL ENABLE);
  ALTER TABLE "PERADRES" MODIFY ("KIMLIKNO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table PERBILGI
--------------------------------------------------------

  ALTER TABLE "PERBILGI" ADD PRIMARY KEY ("PERSONELNO") ENABLE;
  ALTER TABLE "PERBILGI" MODIFY ("VARDIYAID" NOT NULL ENABLE);
  ALTER TABLE "PERBILGI" MODIFY ("SIFRE" NOT NULL ENABLE);
  ALTER TABLE "PERBILGI" MODIFY ("PRIM" NOT NULL ENABLE);
  ALTER TABLE "PERBILGI" MODIFY ("UNVANID" NOT NULL ENABLE);
  ALTER TABLE "PERBILGI" MODIFY ("BIRIMID" NOT NULL ENABLE);
  ALTER TABLE "PERBILGI" MODIFY ("MAAS" NOT NULL ENABLE);
  ALTER TABLE "PERBILGI" MODIFY ("KIMLIKNO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table PERBILGILOG
--------------------------------------------------------

  ALTER TABLE "PERBILGILOG" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table PERCOCUK
--------------------------------------------------------

  ALTER TABLE "PERCOCUK" ADD PRIMARY KEY ("COCUKID") ENABLE;
  ALTER TABLE "PERCOCUK" MODIFY ("CINSIYETID" NOT NULL ENABLE);
  ALTER TABLE "PERCOCUK" MODIFY ("DYERIKODU" NOT NULL ENABLE);
  ALTER TABLE "PERCOCUK" MODIFY ("SOYADI" NOT NULL ENABLE);
  ALTER TABLE "PERCOCUK" MODIFY ("ADI" NOT NULL ENABLE);
  ALTER TABLE "PERCOCUK" MODIFY ("PERSONELNO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table PERISGEC
--------------------------------------------------------

  ALTER TABLE "PERISGEC" ADD PRIMARY KEY ("GECID") ENABLE;
  ALTER TABLE "PERISGEC" MODIFY ("BIRIMID" NOT NULL ENABLE);
  ALTER TABLE "PERISGEC" MODIFY ("UNVANID" NOT NULL ENABLE);
  ALTER TABLE "PERISGEC" MODIFY ("BITTARIH" NOT NULL ENABLE);
  ALTER TABLE "PERISGEC" MODIFY ("BASTARIH" NOT NULL ENABLE);
  ALTER TABLE "PERISGEC" MODIFY ("PERSONELNO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table PERKIMLIK
--------------------------------------------------------

  ALTER TABLE "PERKIMLIK" ADD PRIMARY KEY ("KIMLIKNO") ENABLE;
  ALTER TABLE "PERKIMLIK" MODIFY ("MEDENIHALID" NOT NULL ENABLE);
  ALTER TABLE "PERKIMLIK" MODIFY ("KANGRUBUID" NOT NULL ENABLE);
  ALTER TABLE "PERKIMLIK" MODIFY ("CINSIYETID" NOT NULL ENABLE);
  ALTER TABLE "PERKIMLIK" MODIFY ("UYRUKID" NOT NULL ENABLE);
  ALTER TABLE "PERKIMLIK" MODIFY ("DYERIKODU" NOT NULL ENABLE);
  ALTER TABLE "PERKIMLIK" MODIFY ("DTARIH" NOT NULL ENABLE);
  ALTER TABLE "PERKIMLIK" MODIFY ("BABAADI" NOT NULL ENABLE);
  ALTER TABLE "PERKIMLIK" MODIFY ("ANNEADI" NOT NULL ENABLE);
  ALTER TABLE "PERKIMLIK" MODIFY ("SOYADI" NOT NULL ENABLE);
  ALTER TABLE "PERKIMLIK" MODIFY ("ADI" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table PERMAILADRES
--------------------------------------------------------

  ALTER TABLE "PERMAILADRES" ADD CONSTRAINT "PERMAILADRES_ADRES_UK" UNIQUE ("MAILADRESI") ENABLE;
  ALTER TABLE "PERMAILADRES" ADD CONSTRAINT "PERMAILADRES_PK" PRIMARY KEY ("MAILID") ENABLE;
  ALTER TABLE "PERMAILADRES" MODIFY ("ONCELIKNO" NOT NULL ENABLE);
  ALTER TABLE "PERMAILADRES" MODIFY ("MAILTIPID" NOT NULL ENABLE);
  ALTER TABLE "PERMAILADRES" MODIFY ("MAILADRESI" NOT NULL ENABLE);
  ALTER TABLE "PERMAILADRES" MODIFY ("PERSONELNO" NOT NULL ENABLE);
  ALTER TABLE "PERMAILADRES" MODIFY ("MAILID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table PERTELNO
--------------------------------------------------------

  ALTER TABLE "PERTELNO" ADD CONSTRAINT "PERTELNO_TELNO_UK" UNIQUE ("TELNO") ENABLE;
  ALTER TABLE "PERTELNO" MODIFY ("TELTIP" NOT NULL ENABLE);
  ALTER TABLE "PERTELNO" MODIFY ("ONCELIKNO" NOT NULL ENABLE);
  ALTER TABLE "PERTELNO" ADD CONSTRAINT "PERTELNO_PK" PRIMARY KEY ("PTNID") ENABLE;
  ALTER TABLE "PERTELNO" MODIFY ("TELNO" NOT NULL ENABLE);
  ALTER TABLE "PERTELNO" MODIFY ("PERSONELNO" NOT NULL ENABLE);
  ALTER TABLE "PERTELNO" MODIFY ("PTNID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SEHIRLER
--------------------------------------------------------

  ALTER TABLE "SEHIRLER" ADD CONSTRAINT "SEH?RLER_PK" PRIMARY KEY ("SEHKODU") ENABLE;
  ALTER TABLE "SEHIRLER" MODIFY ("ULKEKODU" NOT NULL ENABLE);
  ALTER TABLE "SEHIRLER" MODIFY ("SEHADI" NOT NULL ENABLE);
  ALTER TABLE "SEHIRLER" MODIFY ("SEHKODU" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table TELTIP
--------------------------------------------------------

  ALTER TABLE "TELTIP" ADD CONSTRAINT "TELTIP_AD_UK" UNIQUE ("TTADI") ENABLE;
  ALTER TABLE "TELTIP" ADD CONSTRAINT "TELTIP_PK" PRIMARY KEY ("TTID") ENABLE;
  ALTER TABLE "TELTIP" MODIFY ("TTADI" NOT NULL ENABLE);
  ALTER TABLE "TELTIP" MODIFY ("TTID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table ULKELER
--------------------------------------------------------

  ALTER TABLE "ULKELER" ADD CONSTRAINT "ULKELER_AD_UK" UNIQUE ("ULKEADI") ENABLE;
  ALTER TABLE "ULKELER" ADD CONSTRAINT "ULKELER_PK" PRIMARY KEY ("ULKEKODU") ENABLE;
  ALTER TABLE "ULKELER" MODIFY ("ULKEADI" NOT NULL ENABLE);
  ALTER TABLE "ULKELER" MODIFY ("ULKEKODU" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table UNVAN
--------------------------------------------------------

  ALTER TABLE "UNVAN" ADD CONSTRAINT "UNVAN_AD_UK" UNIQUE ("UNVANADI") ENABLE;
  ALTER TABLE "UNVAN" ADD PRIMARY KEY ("UNVANID") ENABLE;
  ALTER TABLE "UNVAN" MODIFY ("ENCOKMAAS" NOT NULL ENABLE);
  ALTER TABLE "UNVAN" MODIFY ("ENAZMAAS" NOT NULL ENABLE);
  ALTER TABLE "UNVAN" MODIFY ("UNVANADI" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table UYRUK
--------------------------------------------------------

  ALTER TABLE "UYRUK" ADD CONSTRAINT "UYRUK_AD_UK" UNIQUE ("UYRUKADI") ENABLE;
  ALTER TABLE "UYRUK" ADD CONSTRAINT "UYRUK_PK" PRIMARY KEY ("UYRUKID") ENABLE;
  ALTER TABLE "UYRUK" MODIFY ("UYRUKADI" NOT NULL ENABLE);
  ALTER TABLE "UYRUK" MODIFY ("UYRUKID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table VARDIYA
--------------------------------------------------------

  ALTER TABLE "VARDIYA" ADD CONSTRAINT "VARDIYA_ARALIK" UNIQUE ("VARARALIK") ENABLE;
  ALTER TABLE "VARDIYA" ADD CONSTRAINT "VARDIYA_PK" PRIMARY KEY ("VARDIYAID") ENABLE;
  ALTER TABLE "VARDIYA" MODIFY ("VARDIYAID" NOT NULL ENABLE);
  ALTER TABLE "VARDIYA" MODIFY ("VARARALIK" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table PERADRES
--------------------------------------------------------

  ALTER TABLE "PERADRES" ADD CONSTRAINT "PERADRES_ADRESTIP_FK" FOREIGN KEY ("ADRESTIPID")
	  REFERENCES "ADRESTIP" ("ATID") ENABLE;
  ALTER TABLE "PERADRES" ADD CONSTRAINT "PERADRES_KIMLIKNO_FK" FOREIGN KEY ("KIMLIKNO")
	  REFERENCES "PERKIMLIK" ("KIMLIKNO") ENABLE;
  ALTER TABLE "PERADRES" ADD CONSTRAINT "PERADRES_SEHKOD_FK" FOREIGN KEY ("SEHIRKODU")
	  REFERENCES "SEHIRLER" ("SEHKODU") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PERBILGI
--------------------------------------------------------

  ALTER TABLE "PERBILGI" ADD CONSTRAINT "PERBILGI_BIRIM_FK" FOREIGN KEY ("BIRIMID")
	  REFERENCES "BIRIMLER" ("BIRIMID") ENABLE;
  ALTER TABLE "PERBILGI" ADD CONSTRAINT "PERBILGI_KIMLIK_FK" FOREIGN KEY ("KIMLIKNO")
	  REFERENCES "PERKIMLIK" ("KIMLIKNO") ENABLE;
  ALTER TABLE "PERBILGI" ADD CONSTRAINT "PERBILGI_UNVAN_FK" FOREIGN KEY ("UNVANID")
	  REFERENCES "UNVAN" ("UNVANID") ENABLE;
  ALTER TABLE "PERBILGI" ADD CONSTRAINT "PERBILGI_VARDIYA_FK" FOREIGN KEY ("VARDIYAID")
	  REFERENCES "VARDIYA" ("VARDIYAID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PERCOCUK
--------------------------------------------------------

  ALTER TABLE "PERCOCUK" ADD CONSTRAINT "PERCOCUK_CINSIYET_FK" FOREIGN KEY ("CINSIYETID")
	  REFERENCES "CINSIYET" ("CID") ENABLE;
  ALTER TABLE "PERCOCUK" ADD CONSTRAINT "PERCOCUK_DYKODU_FK" FOREIGN KEY ("DYERIKODU")
	  REFERENCES "SEHIRLER" ("SEHKODU") ENABLE;
  ALTER TABLE "PERCOCUK" ADD CONSTRAINT "PERCOCUK_PERSONELNO_FK" FOREIGN KEY ("PERSONELNO")
	  REFERENCES "PERBILGI" ("PERSONELNO") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PERISGEC
--------------------------------------------------------

  ALTER TABLE "PERISGEC" ADD CONSTRAINT "PERISGEC_BIRIM_FK" FOREIGN KEY ("BIRIMID")
	  REFERENCES "BIRIMLER" ("BIRIMID") ENABLE;
  ALTER TABLE "PERISGEC" ADD CONSTRAINT "PERISGEC_PERSONELNO_FK" FOREIGN KEY ("PERSONELNO")
	  REFERENCES "PERBILGI" ("PERSONELNO") ENABLE;
  ALTER TABLE "PERISGEC" ADD CONSTRAINT "PERISGEC_UNVAN_FK" FOREIGN KEY ("UNVANID")
	  REFERENCES "UNVAN" ("UNVANID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PERKIMLIK
--------------------------------------------------------

  ALTER TABLE "PERKIMLIK" ADD CONSTRAINT "PERKIMLIK_CINSIYET_FK" FOREIGN KEY ("CINSIYETID")
	  REFERENCES "CINSIYET" ("CID") ENABLE;
  ALTER TABLE "PERKIMLIK" ADD CONSTRAINT "PERKIMLIK_DYERI_FK" FOREIGN KEY ("DYERIKODU")
	  REFERENCES "SEHIRLER" ("SEHKODU") ENABLE;
  ALTER TABLE "PERKIMLIK" ADD CONSTRAINT "PERKIMLIK_KG_FK" FOREIGN KEY ("KANGRUBUID")
	  REFERENCES "KANGRUBU" ("KGID") ENABLE;
  ALTER TABLE "PERKIMLIK" ADD CONSTRAINT "PERKIMLIK_MH_FK" FOREIGN KEY ("MEDENIHALID")
	  REFERENCES "MEDENIHAL" ("MHID") ENABLE;
  ALTER TABLE "PERKIMLIK" ADD CONSTRAINT "PERKIMLIK_UYRUK_FK" FOREIGN KEY ("UYRUKID")
	  REFERENCES "UYRUK" ("UYRUKID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PERMAILADRES
--------------------------------------------------------

  ALTER TABLE "PERMAILADRES" ADD CONSTRAINT "PERADRES_PERSONELNO_FK" FOREIGN KEY ("PERSONELNO")
	  REFERENCES "PERBILGI" ("PERSONELNO") ENABLE;
  ALTER TABLE "PERMAILADRES" ADD CONSTRAINT "PERADRES_TIP_FK" FOREIGN KEY ("MAILTIPID")
	  REFERENCES "MAILTIP" ("MTID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PERTELNO
--------------------------------------------------------

  ALTER TABLE "PERTELNO" ADD CONSTRAINT "PERTELNO_PERSONELNO_FK" FOREIGN KEY ("PERSONELNO")
	  REFERENCES "PERBILGI" ("PERSONELNO") ENABLE;
  ALTER TABLE "PERTELNO" ADD CONSTRAINT "PERTELNO_TELTIP_FK" FOREIGN KEY ("TELTIP")
	  REFERENCES "TELTIP" ("TTID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table SEHIRLER
--------------------------------------------------------

  ALTER TABLE "SEHIRLER" ADD CONSTRAINT "SEHIRLER_ULKEKODU_FK" FOREIGN KEY ("ULKEKODU")
	  REFERENCES "ULKELER" ("ULKEKODU") ENABLE;
