create procedure Add_Physician
	@PHID			varchar(4),
	@FirstName		varchar(25), 
	@LastName		varchar(25), 
	@Gender			char(6),
	@WorkPhone		varchar(7),
	@HomePhone		varchar(7),
	@Email			varchar(40)
AS
BEGIN
INSERT INTO dbo.Physicians(PHID, FirstName, LastName, Gender, WorkPhone, HomePhone, Email)
VALUES 	(@PHID, @FirstName, @LastName, @Gender, @WorkPhone, @HomePhone, @Email)
END
