CREATE PROCEDURE Update_Physician
    @PHID			varchar(4),
	@FirstName		varchar(25), 
	@LastName		varchar(25), 
	@Gender			char(6),
	@WorkPhone		varchar(7),
	@HomePhone		varchar(7),
	@Email			varchar(40)
AS
BEGIN
    SET NOCOUNT ON;
    UPDATE Physicians
    SET FirstName =@FirstName, LastName = @LastName, WorkPhone = @WorkPhone, HomePhone = @HomePhone, Email = @Email
    WHERE PHID = @PHID
END