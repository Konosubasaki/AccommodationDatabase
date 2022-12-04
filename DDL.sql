CREATE SCHEMA ProjekatERP AUTHORIZATION dbo;
GO


--BRISANJE TABELA
IF ObjECT_ID('ProjekatERP.Racun', 'U') IS NOT NULL DROP TABLE ProjekatERP.Racun
IF ObjECT_ID('ProjekatERP.PromenaSobe', 'U') IS NOT NULL DROP TABLE ProjekatERP.PromenaSobe
IF ObjECT_ID('ProjekatERP.DodatneUsluge', 'U') IS NOT NULL DROP TABLE ProjekatERP.DodatneUsluge;
IF ObjECT_ID('ProjekatERP.Boravak', 'U') IS NOT NULL DROP TABLE ProjekatERP.Boravak;
IF ObjECT_ID('ProjekatERP.Rezervacija', 'U') IS NOT NULL DROP TABLE ProjekatERP.Rezervacija;
IF ObjECT_ID('ProjekatERP.Smestajna_jedinica', 'U') IS NOT NULL DROP TABLE ProjekatERP.Smestajna_jedinica ;
IF ObjECT_ID('ProjekatERP.Korisnik', 'U') IS NOT NULL DROP TABLE ProjekatERP.Korisnik;
IF ObjECT_ID('ProjekatERP.Hotel', 'U') IS NOT NULL DROP TABLE ProjekatERP.Hotel;
IF ObjECT_ID('ProjekatERP.Kategorija_hotela', 'U') IS NOT NULL DROP TABLE ProjekatERP.Kategorija_hotela;
IF ObjECT_ID('ProjekatERP.Tip_smestajne_jedinice', 'U') IS NOT NULL DROP TABLE ProjekatERP.Tip_smestajne_jedinice ;
IF ObjECT_ID('ProjekatERP.VrsteDodatnihUsluga', 'U') IS NOT NULL DROP TABLE ProjekatERP.VrsteDodatnihUsluga;

--BRISANJE I KREIRANJE SEKVENCE
IF ObjECT_ID('ProjekatERP.seqRacun', 'SO') IS NOT NULL drop sequence ProjekatERP.seqRacun;
create sequence ProjekatERP.seqRacun as int --tipa int
start with 1 --pocinje od
minvalue 1 --minimalna vrednost sekvence
increment by 1

IF ObjECT_ID('ProjekatERP.seqPromenaSobe', 'SO') IS NOT NULL drop sequence ProjekatERP.seqPromenaSobe;
create sequence ProjekatERP.seqPromenaSobe as int --tipa int
start with 1 --pocinje od
minvalue 1 --minimalna vrednost sekvence
increment by 1

--BRISANJE I KREIRANJE SEKVENCE
IF ObjECT_ID('ProjekatERP.seqkategorija_hotela', 'SO') IS NOT NULL drop sequence ProjekatERP.seqkategorija_hotela;
create sequence ProjekatERP.seqkategorija_hotela as int --tipa int
start with 1 --pocinje od
minvalue 1 --minimalna vrednost sekvence
increment by 1
--BRISANJE I KREIRANJE SEKVENCE
IF ObjECT_ID('ProjekatERP.seqboravak', 'SO') IS NOT NULL drop sequence ProjekatERP.seqboravak;
create sequence ProjekatERP.seqboravak as int --tipa int
start with 1 --pocinje od
minvalue 1 --minimalna vrednost sekvence
increment by 1

--BRISANJE I KREIRANJE SEKVENCE
IF ObjECT_ID('ProjekatERP.seqrezervacija', 'SO') IS NOT NULL drop sequence ProjekatERP.seqrezervacija;
create sequence ProjekatERP.seqrezervacija as int --tipa int
start with 1 --pocinje od
minvalue 1 --minimalna vrednost sekvence
increment by 1

--BRISANJE I KREIRANJE SEKVENCE
IF ObjECT_ID('ProjekatERP.seqsmestajna_jedinica', 'SO') IS NOT NULL drop sequence ProjekatERP.seqsmestajna_jedinica;
create sequence ProjekatERP.seqsmestajna_jedinica as int --tipa int
start with 1 --pocinje od
minvalue 1 --minimalna vrednost sekvence
increment by 1

IF ObjECT_ID('ProjekatERP.seqHotel', 'SO') IS NOT NULL drop sequence ProjekatERP.seqHotel
create sequence ProjekatERP.seqHotel as int --tipa int
start with 1 --pocinje od
minvalue 1 --minimalna vrednost sekvence
increment by 1

IF ObjECT_ID('ProjekatERP.seqtip_smestajne_jedinice', 'SO') IS NOT NULL drop sequence ProjekatERP.seqtip_smestajne_jedinice
create sequence ProjekatERP.seqtip_smestajne_jedinice as int --tipa int
start with 1 --pocinje od
minvalue 1 --minimalna vrednost sekvence
increment by 1

IF ObjECT_ID('ProjekatERP.seqKorisnik', 'SO') IS NOT NULL drop sequence ProjekatERP.seqKorisnik
create sequence ProjekatERP.seqKorisnik as int --tipa int
start with 1 --pocinje od
minvalue 1 --minimalna vrednost sekvence
increment by 1

IF ObjECT_ID('ProjekatERP.seqDodatneUsluge', 'SO') IS NOT NULL drop sequence ProjekatERP.seqDodatneUsluge
create sequence ProjekatERP.seqDodatneUsluge as int --tipa int
start with 1 --pocinje od
minvalue 1 --minimalna vrednost sekvence
increment by 1





IF ObjECT_ID('ProjekatERP.seqVrsteDodatnihUsluga', 'SO') IS NOT NULL drop sequence ProjekatERP.seqVrsteDodatnihUsluga
create sequence ProjekatERP.seqVrsteDodatnihUsluga as int --tipa int
start with 1 --pocinje od
minvalue 1 --minimalna vrednost sekvence
increment by 1

go
--_________________________________________
--KREIRANJE TABELA
CREATE TABLE ProjekatERP.Kategorija_hotela (

	Kategorija_ID varchar(6) not null DEFAULT (next value for ProjekatERP.seqkategorija_hotela),
	NazKat varchar(50) not null,
	constraint chk_NazKat check (NazKat in ('Prva','Druga','Treca','Cetvrta','Peta')),
	constraint pk_kategorija_hotela primary key (Kategorija_ID),
	CONSTRAINT UQ_Kategorija_hotela_NazKat UNIQUE(NazKat)
)
-- 
CREATE TABLE ProjekatERP.Hotel (
	Hotel_ID varchar(6) not null  DEFAULT (next value for ProjekatERP.seqHotel),
	NazHtl varchar(50) not null,
	MestoHtl varchar(50),
	AdrHtl varchar(50),
	BrTelHtl varchar(10),
	Kategorija_ID varchar(6) not null,
	constraint fk_Hotel_kategorija foreign key (Kategorija_ID) references ProjekatERP.Kategorija_hotela (Kategorija_ID),
	constraint pk_Hotel primary key (Hotel_ID)
)
--
CREATE TABLE ProjekatERP.Tip_smestajne_jedinice (
	TipSj_ID varchar(6) not null  DEFAULT (next value for ProjekatERP.seqtip_smestajne_jedinice),
	NazTipSj varchar(50) ,
	BrKrev int not null,
	constraint pk_tip_smestajne_jedinice primary key (TipSj_ID)
)
--
CREATE TABLE ProjekatERP.Smestajna_jedinica (
	BrSj int not null DEFAULT (next value for ProjekatERP.seqsmestajna_jedinica),
	Cena int not null,
	TipSj_ID varchar(6) not null,
	Hotel_ID varchar(6) not null,
	constraint fk_smestajnaJedinica_Hotel foreign key (Hotel_ID ) references ProjekatERP.Hotel (Hotel_ID ),
	constraint fk_smestajnaJedinica_tipSmestajneJedinice foreign key (TipSj_ID) references ProjekatERP.Tip_smestajne_jedinice (TipSj_ID),
	constraint pk_smestajna_jedinica primary key (BrSj,Hotel_ID)
)





CREATE TABLE ProjekatERP.Korisnik (
	Korisnik_ID  varchar(10) not null DEFAULT (next value for ProjekatERP.seqKorisnik),
	Ime varchar(50) not null, 
	Prz varchar(50) not null, 
	Adr varchar(50), 
	BrTel varchar(20), 
	uloga varchar(1),
	osobljeHotelaID varchar(6),
	constraint fk_korisnik_Hotel foreign key (osobljeHotelaID) references 	ProjekatERP.Hotel (Hotel_ID ),
	constraint pk_Korisnik primary key (Korisnik_ID),
  constraint ck_uloga CHECK (uloga like 'A' or uloga like 'O' or uloga like 'G')
)
--
CREATE TABLE ProjekatERP.Boravak (
	BrBoravak int not null DEFAULT (next value for ProjekatERP.seqboravak),
	DatOd datetime not null,
	DatDo datetime,
	Korisnik_ID  varchar(10) not null, 
	BrSj int not null,
	Hotel_ID varchar(6) not null,
	constraint fk_boravak_smestajnaJedinica foreign key (BrSj,Hotel_ID) references ProjekatERP.Smestajna_jedinica (BrSj,Hotel_ID),
	constraint fk_boravak_Korisnik foreign key (Korisnik_ID) references ProjekatERP.Korisnik(Korisnik_ID),
	constraint pk_boravak primary key (BrBoravak)
)

CREATE TABLE ProjekatERP.Rezervacija (
	BrRezervacije int not null DEFAULT (next value for ProjekatERP.seqrezervacija),
	DatOd datetime not null,
	DatDo datetime not null,
	Korisnik_ID  varchar(10) not null, 
	BrSj int not null,
	Hotel_ID varchar(6) not null,
	constraint fk_rezervacija_smestajnaJedinica foreign key (BrSj,Hotel_ID) references ProjekatERP.Smestajna_jedinica (BrSj,Hotel_ID),
	constraint fk_rezervacija_Korisnik foreign key (Korisnik_ID) references ProjekatERP.Korisnik(Korisnik_ID),
	constraint pk_rezervacija primary key (BrRezervacije )
)
--
CREATE TABLE ProjekatERP.VrsteDodatnihUsluga (
	VrstaUsluge_ID varchar(6) not null  DEFAULT (next value for ProjekatERP.seqVrsteDodatnihUsluga),
	NazUsluge varchar(50) ,
	OpisUsluge varchar(100),
	CenaUsluge int not null,
	constraint pk_VrsteDodatnihUsluga primary key (VrstaUsluge_ID)
)
--





CREATE TABLE ProjekatERP.DodatneUsluge (
	Usluga_ID int not null DEFAULT (next value for ProjekatERP.seqDodatneUsluge),
  BrBoravak int not null,
	VrstaUsluge_ID varchar(6) not null,
	constraint fk_DodatneUsluge_Boravak foreign key (BrBoravak) references ProjekatERP.Boravak(BrBoravak),
	constraint fk_DodatneUsluge_VrstaUsluge foreign key (VrstaUsluge_ID) references ProjekatERP.VrsteDodatnihUsluga (VrstaUsluge_ID),
	constraint pk_DodatneUsluge primary key (Usluga_ID)
)
--

CREATE TABLE ProjekatERP.PromenaSobe (
	PromenaSobe_ID int not null DEFAULT (next value for ProjekatERP.seqPromenaSobe),
	BrBoravak int,
	DatPromene datetime not null,
	StariBrSj int not null,
	Hotel_ID varchar(6) not null,
	constraint fk_PromenaSobe_smestajnaJedinica foreign key (StariBrSj,Hotel_ID) references ProjekatERP.Smestajna_jedinica (BrSj,Hotel_ID),
	constraint fk_PromenaSobe_Boravak foreign key (BrBoravak) references ProjekatERP.Boravak(BrBoravak),
	constraint pk_PromenaSobe primary key (PromenaSobe_ID)
)
--

CREATE TABLE ProjekatERP.Racun (
	Racun_ID int not null DEFAULT (next value for ProjekatERP.seqRacun),
	BrBoravak int not null unique ,
	Iznos int not null,
	Datum datetime not null,
	constraint fk_Racun_Boravak foreign key (BrBoravak) references ProjekatERP.Boravak(BrBoravak),
	constraint pk_Racun primary key (Racun_ID)
)
