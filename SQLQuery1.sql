-- UC1 Create Database
CREATE DATABASE AddressBook_Service

-- UC2 Creating Table
--Primary key is uniqually identify each record in table ItCannot contal null value
CREATE TABLE AddressBook_DB(PersonId INT PRIMARY KEY IDENTITY(1,1),
FirstName VARCHAR(30) NOT NULL,
LastName VARCHAR(30) NOT NULL,
Address VARCHAR(100) NOT NULL,
City VARCHAR(20) NOT NULL,
State VARCHAR(20) NOT NULL,
Zip INT NOT NULL,
PhoneNumber BIGINT NOT NULL,
Email VARCHAR(50) NOT NULL
);

--SELECT Query
SELECT * FROM AddressBook_DB

--UC3 Insert query UC
INSERT INTO AddressBook_DB(FirstName,LastName,Address,City,State,Zip,PhoneNumber,Email)
VALUES('Akash','Girase','Location','Pune','MH',411052,8380885318,'aksh@gmail'),
('Akki','Girase','Location','Pune','MH',411052,8380885318,'aksh@gmail'),
('Aakashh','Girase','Location','Pune','MH',411052,8380885318,'aksh@gmail')

-- UC4 Update Quary
UPDATE AddressBook_DB SET LastName = 'Rajput' WHERE FirstName = 'Akki'
UPDATE AddressBook_DB SET Address = 'Other LocatioN' WHERE LastName = 'Girase'
UPDATE AddressBook_DB SET City = 'Mumbai' WHERE FirstName = 'Location'

--UC5 DELETE Quary
DELETE FROM AddressBook_DB WHERE FirstName = 'Akki'

-- UC6 Retrive
SELECT * FROM AddressBook_DB WHERE City = 'Pune'
SELECT * FROM AddressBook_DB WHERE State = 'MH'