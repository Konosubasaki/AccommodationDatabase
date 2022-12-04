IF OBJECT_ID('ProjekatERP.tr_insUpdBrSjISTORIJA', 'TR') IS NOT NULL
	DROP TRIGGER ProjekatERP.tr_insUpdBrSjISTORIJA;
GO

CREATE TRIGGER ProjekatERP.tr_insUpdBrSjISTORIJA
ON ProjekatERP.Boravak
AFTER UPDATE
AS
BEGIN
		SET NOCOUNT ON
		IF UPDATE(BrSj)	
		BEGIN
		
		
		declare 
		@BrBoravak as int,
		@DatPromene as datetime,
		@Korisnik_ID as varchar(50),
		@StariBrSj as int,
		@Hotel_ID as varchar(50);

		set @BrBoravak=(select BrBoravak from deleted)
		set @DatPromene =(GETDATE())
		set @StariBrSj=(select BrSj from deleted)
		set @Hotel_ID=(select Hotel_ID from deleted);
		

insert into ProjekatERP.PromenaSobe(BrBoravak,DatPromene,StariBrSj,Hotel_ID)
values(@BrBoravak,@DatPromene,@StariBrSj,@Hotel_ID);

PRINT ('Podaci o prethodnoj smestajnoj jedinici za datog korisnika su sacuvani u tabeli PromenaSobe')

END

END
go
