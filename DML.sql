--kategorija hotela
insert into ProjekatERP.Kategorija_hotela(NazKat)
values ('Prva')

insert into ProjekatERP.Kategorija_hotela(NazKat)
values ('Druga')

insert into ProjekatERP.Kategorija_hotela(NazKat)
values ('Treca')

insert into ProjekatERP.Kategorija_hotela(NazKat)
values ('Cetvrta')

insert into ProjekatERP.Kategorija_hotela(NazKat)
values ('Peta')


--Hotel
insert into ProjekatERP.Hotel(NazHtl,MestoHtl,AdrHtl,BrTelHtl,Kategorija_ID)
values ('Beli Bor','Novi Sad','Milovanovica 121','352-313',1)

insert into ProjekatERP.Hotel(NazHtl,MestoHtl,AdrHtl,BrTelHtl,Kategorija_ID )
values ('Sheraton','Novi Sad','Milovanovica 121','352-313',2)

insert into ProjekatERP.Hotel(NazHtl,MestoHtl,AdrHtl,BrTelHtl,Kategorija_ID )
values ('Hotel Park','Novi Sad','Dejanovica 15','762-315',1)

insert into ProjekatERP.Hotel(NazHtl,MestoHtl,AdrHtl,BrTelHtl,Kategorija_ID )
values ('Putnik','Novi Sad','Milovanovica 121','352-313',1)

insert into ProjekatERP.Hotel(NazHtl,MestoHtl,AdrHtl,BrTelHtl,Kategorija_ID )
values ('Novi Sad','Novi Sad','Milovanovica 121','352-313',1)

insert into ProjekatERP.Hotel(NazHtl,MestoHtl,AdrHtl,BrTelHtl,Kategorija_ID )
values ('Centar','Novi Sad','Milovanovica 121','452-313',2)

insert into ProjekatERP.Hotel(NazHtl,MestoHtl,AdrHtl,BrTelHtl,Kategorija_ID )
values ('Hotel Sajam','Novi Sad','Milovanovica 125','472-313',2)

insert into ProjekatERP.Hotel(NazHtl,MestoHtl,AdrHtl,BrTelHtl,Kategorija_ID )
values ('Hotel Zlatar','Novi Sad','Milovanovica 125','462-313',2)


--Tip smestajne jedinice
insert into ProjekatERP.Tip_smestajne_jedinice(NazTipSj,BrKrev)
values ('Prvi tip',1)

insert into ProjekatERP.Tip_smestajne_jedinice(NazTipSj,BrKrev)
values ('Drugi tip',2)

insert into ProjekatERP.Tip_smestajne_jedinice(NazTipSj,BrKrev)
values ('Treci tip',3)

insert into ProjekatERP.Tip_smestajne_jedinice(NazTipSj,BrKrev)
values ('Cetvrti tip',4)


insert into ProjekatERP.Tip_smestajne_jedinice(NazTipSj,BrKrev)
values ('Peti tip',5)

insert into ProjekatERP.Tip_smestajne_jedinice(NazTipSj,BrKrev)
values ('Sesti tip',6)

insert into ProjekatERP.Tip_smestajne_jedinice(NazTipSj,BrKrev)
values ('Sedmi tip',7)

insert into ProjekatERP.Tip_smestajne_jedinice(NazTipSj,BrKrev)
values ('Osmi tip',8)

insert into ProjekatERP.Tip_smestajne_jedinice(NazTipSj,BrKrev)
values ('Deveti tip',9)

insert into ProjekatERP.Tip_smestajne_jedinice(NazTipSj,BrKrev)
values ('Deseti tip',10)

insert into ProjekatERP.Tip_smestajne_jedinice(NazTipSj,BrKrev)
values ('Jedanaesti tip',15)

insert into ProjekatERP.Tip_smestajne_jedinice(NazTipSj,BrKrev)
values ('Dvanaesti tip',20)


--Smestajna jedinica

insert into ProjekatERP.Smestajna_jedinica(Cena,TipSj_ID,Hotel_ID)
values (1790,1,1)

insert into ProjekatERP.Smestajna_jedinica(Cena,TipSj_ID,Hotel_ID)
values (1590,1,1)

insert into ProjekatERP.Smestajna_jedinica(Cena,TipSj_ID,Hotel_ID)
values (1290,1,1)

insert into ProjekatERP.Smestajna_jedinica(Cena,TipSj_ID,Hotel_ID)
values (1190,2,1)

insert into ProjekatERP.Smestajna_jedinica(Cena,TipSj_ID,Hotel_ID)
values (1190,2,1)

insert into ProjekatERP.Smestajna_jedinica(Cena,TipSj_ID,Hotel_ID)
values (990,3,1)

insert into ProjekatERP.Smestajna_jedinica(Cena,TipSj_ID,Hotel_ID)
values (850,1,2)

insert into ProjekatERP.Smestajna_jedinica(Cena,TipSj_ID,Hotel_ID)
values (850,2,2)

insert into ProjekatERP.Smestajna_jedinica(Cena,TipSj_ID,Hotel_ID)
values (700,2,2)

insert into ProjekatERP.Smestajna_jedinica(Cena,TipSj_ID,Hotel_ID)
values (690,3,2)

insert into ProjekatERP.Smestajna_jedinica(Cena,TipSj_ID,Hotel_ID)
values (2580,6,2)

insert into ProjekatERP.Smestajna_jedinica(Cena,TipSj_ID,Hotel_ID)
values (2190,8,1)

insert into ProjekatERP.Smestajna_jedinica(Cena,TipSj_ID,Hotel_ID)
values (1390,9,1)

insert into ProjekatERP.Smestajna_jedinica(Cena,TipSj_ID,Hotel_ID)
values (4350,7,2)

insert into ProjekatERP.Smestajna_jedinica(Cena,TipSj_ID,Hotel_ID)
values (5650,7,2)

insert into ProjekatERP.Smestajna_jedinica(Cena,TipSj_ID,Hotel_ID)
values (1400,8,1)

insert into ProjekatERP.Smestajna_jedinica(Cena,TipSj_ID,Hotel_ID)
values (1590,7,2)

insert into ProjekatERP.Smestajna_jedinica(Cena,TipSj_ID,Hotel_ID)
values (2000,6,2)


--Korisnik 

insert into ProjekatERP.Korisnik(Ime,Prz,Adr,BrTel, uloga)
values ('Marko','Micic','Preradoviceva 53','3667-434','A')

insert into ProjekatERP.Korisnik(Ime,Prz,Adr,BrTel, uloga, osobljeHotelaID)
values ('Dejan','Radovanov','Preradoviceva 193','667-664','O',1)

insert into ProjekatERP.Korisnik(Ime,Prz,Adr,BrTel, uloga, osobljeHotelaID)
values ('Ana','Pesic','Musickog 89','6667-436' ,'O',2)

insert into ProjekatERP.Korisnik(Ime,Prz,Adr,BrTel, uloga)
values ('Ivan','Stojic','Ignjatovica 193','3662-424' ,'G')

insert into ProjekatERP.Korisnik(Ime,Prz,Adr,BrTel, uloga)
values ('Sasa','Jocic','Pasiceva 2','3267-424' ,'G')

insert into ProjekatERP.Korisnik(Ime,Prz,Adr,BrTel, uloga)
values ('Mario','Radic','Sajma 39','1667-134','G')

insert into ProjekatERP.Korisnik(Ime,Prz,Adr,BrTel, uloga)
values ('Momcilo','Jovanovic','Radziceva 393','2667-134','G')

insert into ProjekatERP.Korisnik(Ime,Prz,Adr,BrTel, uloga)
values ('Marko','Petrovic','Cankareva 34','3267-234','G')

insert into ProjekatERP.Korisnik(Ime,Prz,Adr,BrTel, uloga)
values ('Tijana','Kecic','Bulevar oslobodjenja 83','377-488','G')

insert into ProjekatERP.Korisnik(Ime,Prz,Adr,BrTel, uloga)
values ('Vesna','Dejanovic','Duciceva 234','3693-934','G')

insert into ProjekatERP.Korisnik(Ime,Prz,Adr,BrTel, uloga)
values ('Milica','Tesic','Cankareva 6','9467-934','G')

insert into ProjekatERP.Korisnik(Ime,Prz,Adr,BrTel, uloga)
values ('Marija','Bozic','Veljkova 248','557-554','G')

insert into ProjekatERP.Korisnik(Ime,Prz,Adr,BrTel, uloga)
values ('Pera','Micijanovic','Maksima gorkog 43','44-434','G')

insert into ProjekatERP.Korisnik(Ime,Prz,Adr,BrTel, uloga)
values ('Bejan','Radovanov','Preradoviceva 193','6654-664','G' )

insert into ProjekatERP.Korisnik(Ime,Prz,Adr,BrTel, uloga)
values ('AnaMarija','Pesic','Musickog 89','66567-436','G' )

insert into ProjekatERP.Korisnik(Ime,Prz,Adr,BrTel, uloga)
values ('Ivana','Stojic','Maksima gorkog193','366542-424','G')


--Boravak

insert into ProjekatERP.Boravak(DatOd,Korisnik_ID,BrSj,Hotel_ID )
values ('2-2-2019' ,1,1,1)

insert into ProjekatERP.Boravak(DatOd,Korisnik_ID,BrSj,Hotel_ID )
values ('1-2-2019', 1,8,2)

insert into ProjekatERP.Boravak(DatOd,Korisnik_ID,BrSj,Hotel_ID )
values ('7-3-2019', 1,9,2)

insert into ProjekatERP.Boravak(DatOd,Korisnik_ID,BrSj,Hotel_ID )
values ('1-5-2019', 2,2,1)

insert into ProjekatERP.Boravak(DatOd,Korisnik_ID,BrSj,Hotel_ID )
values ('6-2-2019', 3,1,1)

insert into ProjekatERP.Boravak(DatOd,Korisnik_ID,BrSj,Hotel_ID )
values ('7-2-2019',4,3,1)

insert into ProjekatERP.Boravak(DatOd,Korisnik_ID,BrSj,Hotel_ID )
values ('7-12-2019' ,5,6,1)

insert into ProjekatERP.Boravak(DatOd,Korisnik_ID,BrSj,Hotel_ID )
values ('7-6-2019', 6,5,1)

insert into ProjekatERP.Boravak(DatOd,Korisnik_ID,BrSj,Hotel_ID )
values ('7-7-2018', 8,4,1)

insert into ProjekatERP.Boravak(DatOd,Korisnik_ID,BrSj,Hotel_ID )
values ('6-2-2019', 8,6,1)

insert into ProjekatERP.Boravak(DatOd,Korisnik_ID,BrSj,Hotel_ID )
values ('1-2-2019', 9,8,2)

insert into ProjekatERP.Boravak(DatOd,Korisnik_ID,BrSj,Hotel_ID )
values ('7-3-2019', 10,9,2)

insert into ProjekatERP.Boravak(DatOd,Korisnik_ID,BrSj,Hotel_ID )
values ('7-2-2019', 4,4,1)

insert into ProjekatERP.Boravak(DatOd,Korisnik_ID,BrSj,Hotel_ID )
values ('7-12-2019', 5,4,1)

insert into ProjekatERP.Boravak(DatOd,Korisnik_ID,BrSj,Hotel_ID )
values ('7-6-2019', 6,5,1)

insert into ProjekatERP.Boravak(DatOd,Korisnik_ID,BrSj,Hotel_ID )
values ('7-7-2019', 8,6,1)

insert into ProjekatERP.Boravak(DatOd,Korisnik_ID,BrSj,Hotel_ID )
values ('1-2-2019', 9,10,2)

insert into ProjekatERP.Boravak(DatOd,Korisnik_ID,BrSj,Hotel_ID )
values ('7-3-2014', 10,11,2)


--Rezervacija 

insert into ProjekatERP.Rezervacija(DatOd,DatDo,Korisnik_ID,BrSj,Hotel_ID )
values ('7-12-2015','1-6-2018',1,4,1)

insert into ProjekatERP.Rezervacija(DatOd,DatDo,Korisnik_ID,BrSj,Hotel_ID )
values ('7-6-2013','5-7-2018',4,5,1)

insert into ProjekatERP.Rezervacija(DatOd,DatDo,Korisnik_ID,BrSj,Hotel_ID )
values ('7-7-2015','7-12-2018',3,6,1)

insert into ProjekatERP.Rezervacija(DatOd,DatDo,Korisnik_ID,BrSj,Hotel_ID )
values ('1-2-2014','8-12-2018',4,10,2)

insert into ProjekatERP.Rezervacija(DatOd,DatDo,Korisnik_ID,BrSj,Hotel_ID )
values ('7-3-2014','12-5-2017',5,11,2)


--Vrste dodatnih usluga

insert into ProjekatERP.VrsteDodatnihUsluga(NazUsluge,OpisUsluge,CenaUsluge )
values ('SPA','90 minuta spa',2000)

insert into ProjekatERP.VrsteDodatnihUsluga(NazUsluge,OpisUsluge,CenaUsluge )
values ('MASAZA','30 minuta masaza',1000)


--Dodatne usluge

insert into ProjekatERP.DodatneUsluge(BrBoravak,VrstaUsluge_ID)
values (1,1)

insert into ProjekatERP.DodatneUsluge(BrBoravak,VrstaUsluge_ID)
values (2 ,2)

insert into ProjekatERP.DodatneUsluge(BrBoravak,VrstaUsluge_ID)
values (7 ,2)

insert into ProjekatERP.DodatneUsluge(BrBoravak,VrstaUsluge_ID)
values (7 ,1)


--Racun

insert into ProjekatERP.Racun(BrBoravak,Iznos,Datum)
values (1,1600,'7-3-2019')

insert into ProjekatERP.Racun(BrBoravak,Iznos,Datum)
values (2,1200,'2-3-2019')

insert into ProjekatERP.Racun(BrBoravak,Iznos,Datum)
values (3,1900,'5-3-2019')

insert into ProjekatERP.Racun(BrBoravak,Iznos,Datum)
values (4,5600,'7-8-2019')


--Promena sobe

insert into ProjekatERP.PromenaSobe(BrBoravak,DatPromene,StariBrSj,Hotel_ID)
values (4,'7-8-2019',1,1)

select *
from ProjekatERP.Kategorija_hotela

select *
from ProjekatERP.Hotel

select *
from ProjekatERP.Tip_smestajne_jedinice

select *
from ProjekatERP.Smestajna_jedinica

select *
from ProjekatERP.Korisnik

select *
from ProjekatERP.Boravak

select *
from ProjekatERP.Rezervacija

select *
from ProjekatERP.DodatneUsluge

select *
from ProjekatERP.VrsteDodatnihUsluga

select *
from ProjekatERP.PromenaSobe

select *
from ProjekatERP.Racun
