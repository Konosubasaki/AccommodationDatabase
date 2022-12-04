
IF OBJECT_ID('ProjekatERP.tr_insUpdBrSj', 'TR') IS NOT NULL
DROP TRIGGER ProjekatERP.tr_insUpdBrSj;
GO

CREATE TRIGGER ProjekatERP.tr_insUpdBrSj
ON ProjekatERP.Boravak
INSTEAD OF INSERT
AS
BEGIN
SET NOCOUNT ON
IF UPDATE(BrSj)
BEGIN
declare @ukupnoKorUSobi as int,
@brKreveta as int,
@BrSjNovi as int =(select BrSj from inserted);

set @ukupnoKorUSobi=(select count(s.korisnik_ID) from ProjekatERP.Korisnik S,ProjekatERP.Boravak B where S.korisnik_ID=B.korisnik_ID and B.BrSj=@BrSjNovi)
set @brKreveta=(select tsj.BrKrev from ProjekatERP.Tip_smestajne_jedinice tsj where tsj.TipSj_ID=(select TipSj_ID from ProjekatERP.Smestajna_jedinica sj where sj.BrSj=@BrSjNovi ))

PRINT ('Broj slobodnih kreveta u smestanoj jedinici: ' + CAST((@brKreveta-@ukupnoKorUSobi) as varchar(25)))


--Proverava da li ima slobodnih kreveta
IF (@brKreveta-@ukupnoKorUSobi>0)
BEGIN


insert into ProjekatERP.Boravak(DatOd,DatDo,Korisnik_ID,BrSj,Hotel_ID )
select DatOd,DatDo,Korisnik_ID,BrSj,Hotel_ID  from inserted;


PRINT ('Ima slobodnih mesta u datoj smestanoj jedinici, upis je uspesno izvrsen.')
END
ELSE
BEGIN
--Ne dozvoli upis
PRINT ('Nema slobodnih mesta u smestajnoj jedinici, upis nije uspeo.')

END

end
END
go
