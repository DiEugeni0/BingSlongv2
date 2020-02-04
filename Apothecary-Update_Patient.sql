CREATE PROCEDURE Update_Patient
    @PATID			varchar(4),
	@FirstName		varchar(25), 
	@MiddleInitial	char(1),
	@LastName		varchar(25), 
	@Age			varchar(3),
	@Gender			char(6),
	@DOB			date ,
	@Address		varchar(60),
	@City			varchar(60),
	@State			char(2),
	@Zip			char(5),
	@WorkPhone		varchar(7),
	@HomePhone		varchar(7),
	@Email			varchar(40),
	@SSN			char(9),
	@CreditCard		char(16),				
	@CC_CCV			varchar(4)
AS
BEGIN
    SET NOCOUNT ON;
    UPDATE Patients
    SET FirstName =@FirstName, MiddleInitial = @MiddleInitial, LastName = @LastName, Age = @Age, Address = @Address, City = @City, State = @State, Zip = @Zip,
		WorkPhone = @WorkPhone, HomePhone = @HomePhone, Email = @Email, CreditCard = @CreditCard, CC_CCV = @CC_CCV
    WHERE PATID = @PATID
END