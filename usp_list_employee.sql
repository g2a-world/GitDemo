

ALTER Procedure usp_list_employee @empnumber INT

AS
Begin

    DECLARE @Counter INT
    SET @Counter = 1
    WHILE ( @Counter <= @empnumber)
    BEGIN
        SELECT CONCAT(FirstName, ' ', LastName) as FullName 
        From DimEmployee Where EmployeeKey = @Counter

        SET @Counter  = @Counter  + 1
    END

END

--Exec usp_list_employee 5