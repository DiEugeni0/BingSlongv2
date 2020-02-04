CREATE PROCEDURE Search_Prescriptions
	@PID			varchar(4),
	@PHID			varchar(4),
	@PATID			varchar(4)

AS
BEGIN
    SELECT * FROM Prescriptions
	WHERE (upper(PATID) like '%' + upper(@PATID) + '%' or upper(PATID) = ' ')
	   or (upper(PHID) like '%' + upper(@PHID) + '%' or upper(PHID) = ' ')
	    or (upper(PID) like '%' + upper(@PID) + '%' or upper(PID) = ' ')
END