create procedure Add_Patient
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
INSERT INTO dbo.Patients(PATID, FirstName, MiddleInitial, LastName, Age, Gender, DOB, Address, City, State, Zip, HomePhone, WorkPhone, Email, SSN, CreditCard, CC_CCV)
VALUES 	(@PATID, @FirstName, @MiddleInitial, @LastName, @Age, @Gender, @DOB, @Address, @City, @State, @Zip, @HomePhone, @WorkPhone, @Email, @SSN, @CreditCard, @CC_CCV)
END
