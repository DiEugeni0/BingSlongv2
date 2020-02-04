CREATE PROCEDURE Search_Physicians
	@PHID			varchar(4),
	@FirstName		varchar(25), 
	@LastName		varchar(25) 
AS
BEGIN
    SELECT * FROM Physicians
	where (upper(LastName) like '%' + upper(@LastName) + '%' or upper(LastName) = ' ')
	   or (upper(FirstName) like '%' + upper(@FirstName) + '%' or upper(FirstName) = ' ')
	   or (upper(PHID) like '%' + upper(@PHID) + '%' or upper(PHID) = ' ')
END