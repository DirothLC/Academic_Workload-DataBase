CREATE PROCEDURE GetGroupsByDepartment
    @���������� INT
AS
BEGIN
    SELECT * 
    FROM AcademicGroup
    WHERE departmentID = @���������� AND AcademicGroup.number > 20;
END;
