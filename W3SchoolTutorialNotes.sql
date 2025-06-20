

# W3 SCHOOLS SQL TUTORIAL NOTES

-- Create the Customers table
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(255),
    ContactName VARCHAR(255),
    Address VARCHAR(255),
    City VARCHAR(100),
    PostalCode VARCHAR(20),
    Country VARCHAR(100)
);

-- Insert data into the Customers table
INSERT INTO Customers (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country) VALUES
(1, 'Alfreds Futterkiste', 'Maria Anders', 'Obere Str. 57', 'Berlin', '12209', 'Germany'),
(2, 'Ana Trujillo Emparedados y helados', 'Ana Trujillo', 'Avda. de la Constitución 2222', 'México D.F.', '05021', 'Mexico'),
(3, 'Antonio Moreno Taquería', 'Antonio Moreno', 'Mataderos 2312', 'México D.F.', '05023', 'Mexico'),
(4, 'Around the Horn', 'Thomas Hardy', '120 Hanover Sq.', 'London', 'WA1 1DP', 'UK'),
(5, 'Berglunds snabbköp', 'Christina Berglund', 'Berguvsvägen 8', 'Luleå', 'S-958 22', 'Sweden');

-- SELECT - extracts data from a database
-- UPDATE - updates data in a database
-- DELETE - deletes data from a database
-- INSERT INTO - inserts new data into a database
-- CREATE DATABASE - creates a new database
-- ALTER DATABASE - modifies a database
-- CREATE TABLE - creates a new table
-- ALTER TABLE - modifies a table
-- DROP TABLE - deletes a table
-- CREATE INDEX - creates an index (search key)
-- DROP INDEX - deletes an index


SELECT CustomerName, City FROM Customers;

-- By using the DISTINCT keyword in a function called COUNT, we can return the number of different countries.
SELECT COUNT(DISTINCT Country) FROM Customers;


-- WHERE Clause
SELECT * FROM Customers
WHERE Country='Mexico';

SELECT * FROM Customers
WHERE CustomerID=1;


SELECT * FROM Customers
WHERE CustomerID > 3;



-- ORDER BY
-- Create the Products table
CREATE TABLE IF NOT EXISTS Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(255),
    SupplierID INT,
    CategoryID INT,
    Unit VARCHAR(255),
    Price DECIMAL(10, 2)
);

-- Insert data into the Products table

-- Create the Customers2 table
CREATE TABLE Customers2 (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(255),
    ContactName VARCHAR(255),
    Address VARCHAR(255),
    City VARCHAR(255),
    PostalCode VARCHAR(10),
    Country VARCHAR(255)
);

-- Insert data into the Customers2 table
INSERT INTO Customers2 (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country) VALUES
(1, 'Alfreds Futterkiste', 'Maria Anders', 'Obere Str. 57', 'Berlin', '12209', 'Germany'),
(2, 'Ana Trujillo Emparedados y helados', 'Ana Trujillo', 'Avda. de la Constitución 2222', 'México D.F.', '05021', 'Mexico'),
(3, 'Antonio Moreno Taquería', 'Antonio Moreno', 'Mataderos 2312', 'México D.F.', '05023', 'Mexico'),
(4, 'Around the Horn', 'Thomas Hardy', '120 Hanover Sq.', 'London', 'WA1 1DP', 'UK'),
(5, 'Berglunds snabbköp', 'Christina Berglund', 'Berguvsvägen 8', 'Luleå', 'S-958 22', 'Sweden'),
(6, 'Blauer See Delikatessen', 'Hanna Moos', 'Forsterstr. 57', 'Mannheim', '68306', 'Germany'),
(7, 'Blondel père et fils', 'Frédérique Citeaux', '24, place Kléber', 'Strasbourg', '67000', 'France'),
(8, 'Bólido Comidas preparadas', 'Martín Sommer', 'C/ Araquil, 67', 'Madrid', '28023', 'Spain'),
(9, 'Bon app''', 'Laurence Lebihans', '12, rue des Bouchers', 'Marseille', '13008', 'France'),
(10, 'Bottom-Dollar Markets', 'Elizabeth Lincoln', '23 Tsawassen Blvd.', 'Tsawassen', 'T2F 8M4', 'Canada'),
(11, 'B''s Beverages', 'Victoria Ashworth', 'Fauntleroy Circus', 'London', 'EC2 5NT', 'UK'),
(12, 'Cactus Comidas para llevar', 'Patricio Simpson', 'Cerrito 333', 'Buenos Aires', '1010', 'Argentina'),
(13, 'Centro comercial Moctezuma', 'Francisco Chang', 'Sierras de Granada 9993', 'México D.F.', '05022', 'Mexico'),
(14, 'Chop-suey Chinese', 'Yang Wang', 'Hauptstr. 29', 'Bern', '3012', 'Switzerland'),
(15, 'Comércio Mineiro', 'Pedro Afonso', 'Av. dos Lusíadas, 23', 'São Paulo', '05432-043', 'Brazil'),
(16, 'Consolidated Holdings', 'Elizabeth Brown', 'Berkeley Gardens 12 Brewery', 'London', 'WX1 6LT', 'UK'),
(17, 'Drachenblut Delikatessend', 'Sven Ottlieb', 'Walserweg 21', 'Aachen', '52066', 'Germany'),
(18, 'Du monde entier', 'Janine Labrune', '67, rue des Cinquante Otages', 'Nantes', '44000', 'France'),
(19, 'Eastern Connection', 'Ann Devon', '35 King George', 'London', 'WX3 6FW', 'UK'),
(20, 'Ernst Handel', 'Roland Mendel', 'Kirchgasse 6', 'Graz', '8010', 'Austria');


SELECT * FROM Customers
ORDER BY Price DESC;


-- LIKE, AND operators




# The WHERE clause can contain one or many AND operators.

# The AND operator is used to filter records based on more than one condition, like if you want to return all customers from Spain that starts with the letter 'G':



SELECT *
FROM Customers2
WHERE Country = 'Germany' AND CustomerName LIKE 'G%';


-- NOT Operator
SELECT * FROM Customers2
WHERE NOT Country = 'Spain';

-- Select customers that does not start with the letter 'A':

SELECT * FROM Customers2
WHERE CustomerName NOT LIKE 'A%';

-- Select customers with a customerID not between 10 and 60:

SELECT * FROM Customers2
WHERE CustomerID NOT BETWEEN 10 AND 60;

-- NOT IN
SELECT * FROM Customers2
WHERE City NOT IN ('Paris', 'London');

-- NOT GREATER THAN
SELECT * FROM Customers2
WHERE NOT CustomerID > 50;


-- INSERT INTO


-- Create the Employees table
CREATE TABLE Employees2 (
    EmployeeID INT PRIMARY KEY,
    LastName VARCHAR(255),
    FirstName VARCHAR(255),
    BirthDate DATE,
    Photo VARCHAR(255),
    Notes TEXT
);

-- Insert data into the Employees table
INSERT INTO Employees2 (EmployeeID, LastName, FirstName, BirthDate, Photo, Notes) VALUES
(1, 'Davolio', 'Nancy', '1968-12-08', 'EmpID1.pic', 'Education includes a BA in psychology from Colorado State University. She also completed (The Art of the Cold Call). Nancy is a member of "Toastmasters International".'),
(2, 'Fuller', 'Andrew', '1952-02-19', 'EmpID2.pic', 'Andrew received his BTS commercial and a Ph.D. in international marketing from the University of Dallas. He is fluent in French and Italian and reads German. He joined the company as a sales representative, was promoted to sales manager and was then named vice president of sales. Andrew is a member of the Sales Management Roundtable, the Seattle Chamber of Commerce, and the Pacific Rim Importers Association.'),
(3, 'Leverling', 'Janet', '1963-08-30', 'EmpID3.pic', 'Janet has a BS degree in chemistry from Boston College). She has also completed a certificate program in food retailing management. Janet was hired as a sales associate and was promoted to sales representative.'),
(4, 'Peacock', 'Margaret', '1958-09-19', 'EmpID4.pic', 'Margaret holds a BA in English literature from Concordia College and an MA from the American Institute of Culinary Arts. She was temporarily assigned to the London office before returning to her permanent post in Seattle.'),
(5, 'Buchanan', 'Steven', '1955-03-04', 'EmpID5.pic', 'Steven Buchanan graduated from St. Andrews University, Scotland, with a BSC degree. Upon joining the company as a sales representative, he spent 6 months in an orientation program at the Seattle office and then returned to his permanent post in London, where he was promoted to sales manager. Mr. Buchanan has completed the courses "Successful Telemarketing" and "International Sales Management". He is fluent in French.'),
(6, 'Suyama', 'Michael', '1963-07-02', 'EmpID6.pic', 'Michael is a graduate of Sussex University (MA, economics) and the University of California at Los Angeles (MBA, marketing). He has also taken the courses "Multi-Cultural Selling" and "Time Management for the Sales Professional". He is fluent in Japanese and can read and write French, Portuguese, and Spanish.'),
(7, 'King', 'Robert', '1960-05-29', 'EmpID7.pic', 'Robert King served in the Peace Corps and traveled extensively before completing his degree in English at the University of Michigan and then joining the company. After completing a course entitled "Selling in Europe", he was transferred to the London office.'),
(8, 'Callahan', 'Laura', '1958-01-09', 'EmpID8.pic', 'Laura received a BA in psychology from the University of Washington. She has also completed a course in business French. She reads and writes French.'),
(9, 'Dodsworth', 'Anne', '1969-07-02', 'EmpID9.pic', 'Anne has a BA degree in English from St. Lawrence College. She is fluent in French and German.'),
(10, 'West', 'Adam', '1928-09-19', 'EmpID10.pic', 'An old chum');

INSERT INTO Employees2 (EmployeeID, LastName, FirstName, BirthDate, Photo, Notes) 
VALUES (11, 'Smith', 'John', '1980-05-15', 'EmpID11.pic', 'John Smith is a recent addition to the company.');

-- UPDATE


-- The following SQL statement updates the first customer (CustomerID = 1) with a new contact person and a new city.
UPDATE Customers2
SET ContactName = 'Alfred Schmidtttt', City= 'Frankfurt'
WHERE CustomerID = 1;

SELECT * FROM Customers2;


UPDATE Customers2
SET ContactName='Juan'
WHERE Country='Mexico';
# SAFE UPDATE MODE OPEN

-- Disable safe update mode
SET SQL_SAFE_UPDATES = 0;

-- Perform your update
UPDATE Customers2
SET ContactName = 'Juan'
WHERE Country = 'Mexico';

-- Re-enable safe update mode
SET SQL_SAFE_UPDATES = 1;

SELECT * FROM Customers2;

-- DELETE
DELETE FROM Customers WHERE CustomerName='Alfreds Futterkiste';

#The following SQL statement deletes all rows in the "Customers" table, without deleting the table:
DELETE FROM table_name;

#Remove the Customers table:

DROP TABLE Customers;

-- SELECT TOP
#The SELECT TOP clause is used to specify the number of records to return.

#The SELECT TOP clause is useful on large tables with thousands of records. 
#Returning a large number of records can impact performance.

SELECT * FROM Customers2
LIMIT 3;

SELECT * FROM Customers2
ORDER BY CustomerID
LIMIT 3;

-- AGGREGATE FUNCTION
-- The most commonly used SQL aggregate functions are:

-- MIN() - returns the smallest value within the selected column
-- MAX() - returns the largest value within the selected column
-- COUNT() - returns the number of rows in a set
-- SUM() - returns the total sum of a numerical column
-- AVG() - returns the average value of a numerical column
-- Aggregate functions ignore null values (except for COUNT()).


SELECT MIN(Price)
FROM Products;

SELECT MAX(Price)
FROM Products;

SELECT MIN(Price) AS SmallestPrice
FROM Products;

SELECT MIN(Price) AS SmallestPrice, CategoryID
FROM Products
GROUP BY CategoryID;



SELECT COUNT(ProductID)
FROM Products
WHERE Price > 20;



-- LIKE
SELECT * FROM Customers
WHERE CustomerName LIKE 'a%';

-- WILDCARD
-- The _ wildcard represents a single character.
-- It can be any character or number, but each _ represents one, and only one, character.


SELECT * FROM Customers
WHERE city LIKE 'L_nd__';

#Return all customers from a city that contains the letter 'L':

SELECT * FROM Customers
WHERE city LIKE '%L%';


#Return all customers that starts with "b" and ends with "s":

SELECT * FROM Customers
WHERE CustomerName LIKE 'b%s';

#Return all customers that contains the phrase 'or'

SELECT * FROM Customers
WHERE CustomerName LIKE '%or%';

-- IN
SELECT * FROM Customers
WHERE Country IN ('Germany', 'France', 'UK');

SELECT * FROM Customers
WHERE Country NOT IN ('Germany', 'France', 'UK');

-- BETWEEN DATES
SELECT * FROM Orders
WHERE OrderDate BETWEEN #07/01/1996# AND #07/31/1996#;


-- Create the employees table
drop table orders;
USE companydb;
CREATE TABLE orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    EmployeeID INT,
    OrderDate DATE,
    ShipperID INT
);

INSERT INTO orders (OrderID, CustomerID, EmployeeID, OrderDate, ShipperID) VALUES
(10301, 66, 4, '1996-10-01', 2),
(10302, 10, 7, '1996-10-01', 2),
(10303, 50, 5, '1996-10-02', 2),
(10304, 38, 3, '1996-10-02', 2),
(10305, 56, 8, '1996-10-03', 2),
(10306, 38, 6, '1996-10-03', 2),
(10307, 9, 5, '1996-10-04', 2),
(10308, 4, 1, '1996-10-04', 2),
(10309, 89, 3, '1996-10-07', 2),
(10310, 31, 1, '1996-10-07', 2),
(10311, 54, 7, '1996-10-08', 2),
(10312, 6, 4, '1996-10-08', 2),
(10313, 64, 1, '1996-10-09', 2),
(10314, 75, 1, '1996-10-09', 2),
(10315, 85, 4, '1996-10-10', 2),
(10316, 48, 4, '1996-10-10', 2),
(10317, 34, 6, '1996-10-11', 2),
(10318, 69, 1, '1996-10-11', 2),
(10319, 63, 8, '1996-10-14', 2),
(10320, 67, 4, '1996-10-14', 2),
(10321, 72, 4, '1996-10-15', 2),
(10322, 2, 8, '1996-10-15', 2),
(10323, 61, 6, '1996-10-16', 2),
(10324, 29, 7, '1996-10-16', 2),
(10325, 19, 3, '1996-10-17', 2),
(10326, 23, 6, '1996-10-17', 2),
(10327, 5, 1, '1996-10-18', 2),
(10328, 45, 5, '1996-10-18', 2),
(10329, 57, 8, '1996-10-21', 2),
(10330, 13, 2, '1996-10-21', 2),
(10331, 46, 1, '1996-10-22', 2),
(10332, 29, 6, '1996-10-22', 2),
(10333, 53, 3, '1996-10-23', 2),
(10334, 19, 7, '1996-10-23', 2),
(10335, 88, 5, '1996-10-24', 2),
(10336, 7, 4, '1996-10-24', 2),
(10337, 30, 1, '1996-10-25', 2),
(10338, 15, 6, '1996-10-25', 2),
(10339, 33, 3, '1996-10-28', 2),
(10340, 63, 2, '1996-10-28', 2);

SELECT * FROM orders;

SELECT * FROM Orders
WHERE OrderDate BETWEEN '1996-10-23' AND '1996-10-28';

-- OR
SELECT * FROM Orders
WHERE OrderDate BETWEEN #07/01/1996# AND #07/31/1996#;


-- CONCATENATION mysql code
SELECT CustomerName, CONCAT(Address,', ',PostalCode,', ',City,', ',Country) AS Address
FROM Customers;

-- WITH ALIAS
SELECT o.OrderID, o.OrderDate, c.CustomerName
FROM Customers AS c, Orders AS o
WHERE c.CustomerName='Around the Horn' AND c.CustomerID=o.CustomerID;

-- WITHOUT ALIAS
SELECT Orders.OrderID, Orders.OrderDate, Customers.CustomerName
FROM Customers, Orders
WHERE Customers.CustomerName='Around the Horn' AND Customers.CustomerID=Orders.CustomerID;

-- INNER JOIN
SELECT Orders.OrderID, Customers.CustomerName, Orders.OrderDate
FROM Orders
INNER JOIN Customers ON Orders.CustomerID=Customers.CustomerID;


-- GROUP BY
SELECT COUNT(CustomerID), Country
FROM Customers
GROUP BY Country;

-- EXISTS

SELECT SupplierName
FROM Suppliers
WHERE EXISTS (SELECT ProductName FROM Products WHERE Products.SupplierID = Suppliers.supplierID AND Price < 20);






















