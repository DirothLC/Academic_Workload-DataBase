CREATE PROCEDURE GetStudentsCountByDepartment
    @���������� INT,
    @��������������� INT OUTPUT
AS
BEGIN
    SELECT @��������������� = SUM(number)
    FROM AcademicGroup
    WHERE departmentID = @����������;
END;