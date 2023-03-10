
/*
	01/21/2023 - GA Added the Title of each selected employees.
    01/21/2023 - Three additional columns added
            - Middle Name
            - BirthDate
            - HiredDate
	----------------------------------------01/21/2023 - GA Added EmployeeKey information.

 ----------------------------------------   01/22/2023 - GA Added calculated age at date of hire (calculated in month).

 ----------------------------------------   01/23/3023 - This stored procedure need to be reviewed and approved.
*/

ALTER Procedure usp_list_employee @empnumber INT

AS
Begin

    DECLARE @Counter INT
    SET @Counter = 1
    WHILE ( @Counter <= @empnumber)
    BEGIN
        SELECT EmployeeKey, CONCAT(FirstName, N' ', MiddleName, N' ', LastName) as FullName
			  ,Title
              ,BirthDate
              ,HireDate
              ,DATEDIFF(MONTH, BirthDate, HireDate) AgeAtHireInMonth
        From DimEmployee Where EmployeeKey = @Counter

        SET @Counter  = @Counter  + 1
    END

END

--Exec usp_list_employee 5

--Select * from DimEmployee

--select * From [dbo].[DimOrganization]