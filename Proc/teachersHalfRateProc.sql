CREATE PROCEDURE GetHalfRateTeachers
AS
BEGIN
    SELECT Teachers.fullName 
    FROM Teachers
    WHERE sizeOfRate = 0.5;
END;
