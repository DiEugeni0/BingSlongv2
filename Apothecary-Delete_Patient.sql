Create Procedure Delete_Patient
	@PATID			varchar(4)
AS 
BEGIN
    DELETE dbo.Patients
    WHERE PATID = @PATID
END