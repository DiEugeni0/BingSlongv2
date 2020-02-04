create procedure Add_Prescription
	@PID			varchar(4),
	@PHID			varchar(4),
	@PATID			varchar(4),
	@Prescription	varchar(20), 
	@Dosage			varchar(20), 
	@Description	varchar(60),
	@Date_Prescribed	date
AS
BEGIN
INSERT INTO dbo.Prescriptions(PID, PHID, PATID, Prescription, Dosage, Description, Date_Prescribed)
VALUES 	(@PID, @PHID, @PATID, @Prescription, @Dosage, @Description, @Date_Prescribed)
END
