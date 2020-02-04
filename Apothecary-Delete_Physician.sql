Create Procedure Delete_Physician
	@PHID			varchar(4)
AS 
BEGIN
    DELETE dbo.Physicians
    WHERE PHID = @PHID
END