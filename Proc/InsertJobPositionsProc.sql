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
                 WHEN 1 THEN 'Что-то новое'
                 WHEN 2 THEN 'Что-то другое'
                 WHEN 3 THEN 'Какая-то должность'
                 WHEN 4 THEN 'Вообще не понимаю смысл задания'
             END);
        SET @Counter = @Counter + 1;
    END;
END;