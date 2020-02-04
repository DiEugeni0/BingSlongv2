CREATE PROCEDURE Search_Patients
	@PATID			varchar(4),
	@FirstName		varchar(25), 
	@LastName		varchar(25) 
AS
BEGIN
    SELECT * FROM Patients
	where (upper(LastName) like '%' + upper(@LastName) + '%' or upper(LastName) = ' ')
	   or (upper(FirstName) like '%' + upper(@FirstName) + '%' or upper(FirstName) = ' ')
	   or (upper(PATID) like '%' + upper(@PATID) + '%' or upper(PATID) = ' ')
END