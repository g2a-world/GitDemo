
/*
	01/21/2023 - GA Added the Title of each selected employees.
*/

ALTER Procedure usp_list_employee @empnumber INT

AS
Begin

    DECLARE @Counter INT
    SET @Counter = 1
    WHILE ( @Counter <= @empnumber)
    BEGIN
        SELECT CONCAT(FirstName, N' ', MiddleName, N' ', LastName) as FullName
			  ,Title
              ,BirthDate
              ,HireDate
        From DimEmployee Where EmployeeKey = @Counter

        SET @Counter  = @Counter  + 1
    END

END

--Exec usp_list_employee 5

--Select * from DimEmployee