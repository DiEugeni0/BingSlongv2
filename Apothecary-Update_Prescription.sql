CREATE PROCEDURE Update_Prescription
    @PID			varchar(4),
	@PHID			varchar(4),
	@PATID			varchar(4),
	@Prescription	varchar(20), 
	@Dosage			varchar(20), 
	@Description	varchar(60),
	@Date_Prescribed	date,
	@Refills		varchar(2)
AS
BEGIN
    SET NOCOUNT ON;
    UPDATE Prescriptions
    SET  Prescription = @Prescription, Dosage = @Dosage, Description = @Description, Refills = @Refills
    WHERE PID = @PID
END