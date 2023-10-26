--DROP DATABASE AdHocRoster
CREATE DATABASE AdHocRoster;
-------------------------------------------------------------------------------------------------------------------------------
--CREATING THE NECESSARY TABLES
CREATE TABLE StaffInfo (
             StaffID INT,
             Surname VARCHAR (225),
             FirstName VARCHAR(255),
             OtherName VARCHAR(255),
             GradeLevel VARCHAR(100),
             Directorate VARCHAR (150), 
             Department VARCHAR (150),
             Gender VARCHAR (6), 
             Religion VARCHAR (50)
             );
CREATE TABLE Shift (
             StaffID INT,
             ShiftDate DATE,
             StartTime TIME,
             FinishTime TIME
             );
-------------------------------------------------------------------------------------------------------------------------------
--POPULATING THE TABLE WITH CLEANED DATA FROM EXCEL
BULK INSERT StaffInfo
FROM 'C:\Users\oowolabi\Downloads\bkup\BUKKYOWOBS\BUKOLA\2023\Personal\Portfolio\AdHocRoster.csv'
WITH (
    FIRSTROW = 2,  --CSV file has a header row, hence the use of 2.
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n'
);
-------------------------------------------------------------------------------------------------------------------------------
