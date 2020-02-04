Create Procedure Delete_Prescription
	@PID			varchar(4)
AS 
BEGIN
    DELETE dbo.Prescriptions
    WHERE PID = @PID
END