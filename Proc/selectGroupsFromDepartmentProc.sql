CREATE PROCEDURE GetGroupsByDepartment
    @КодКафедры INT
AS
BEGIN
    SELECT * 
    FROM AcademicGroup
    WHERE departmentID = @КодКафедры AND AcademicGroup.number > 20;
END;
