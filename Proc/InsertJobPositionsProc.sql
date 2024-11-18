CREATE PROCEDURE InsertJobPositions
AS
BEGIN
    DECLARE @Counter INT = 1;
    WHILE @Counter <= 4
    BEGIN
        INSERT INTO JobTitle(ID,jobName)
        VALUES 
            (10 + @Counter, 
             CASE @Counter
                 WHEN 1 THEN '���-�� �����'
                 WHEN 2 THEN '���-�� ������'
                 WHEN 3 THEN '�����-�� ���������'
                 WHEN 4 THEN '������ �� ������� ����� �������'
             END);
        SET @Counter = @Counter + 1;
    END;
END;