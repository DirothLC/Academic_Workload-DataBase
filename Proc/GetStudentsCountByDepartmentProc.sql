CREATE PROCEDURE GetStudentsCountByDepartment
    @КодКафедры INT,
    @ОбщееКоличество INT OUTPUT
AS
BEGIN
    SELECT @ОбщееКоличество = SUM(number)
    FROM AcademicGroup
    WHERE departmentID = @КодКафедры;
END;