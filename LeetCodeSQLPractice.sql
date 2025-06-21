#PRODUCTS TABLE

CREATE TABLE IF NOT EXISTS Products (
    product_id INT,
    low_fats ENUM('Y', 'N'),
    recyclable ENUM('Y', 'N')
);

TRUNCATE TABLE Products;

INSERT INTO Products (product_id, low_fats, recyclable) VALUES (0, 'Y', 'N');
INSERT INTO Products (product_id, low_fats, recyclable) VALUES (1, 'Y', 'Y');
INSERT INTO Products (product_id, low_fats, recyclable) VALUES (2, 'N', 'Y');
INSERT INTO Products (product_id, low_fats, recyclable) VALUES (3, 'Y', 'Y');
INSERT INTO Products (product_id, low_fats, recyclable) VALUES (4, 'N', 'N');

SELECT * FROM Products;

/*

1757. Recyclable and Low Fat Products
Write a solution to find the ids of products that are both low fat and recyclable.
*/


SELECT product_id FROM Products
WHERE low_fats='Y' AND recyclable='Y';



#TABLE CUSTOMER
CREATE TABLE IF NOT EXISTS Customer (
    id INT,
    name VARCHAR(25),
    referee_id INT
);

TRUNCATE TABLE Customer;

INSERT INTO Customer (id, name, referee_id) VALUES (1, 'Will', NULL);
INSERT INTO Customer (id, name, referee_id) VALUES (2, 'Jane', NULL);
INSERT INTO Customer (id, name, referee_id) VALUES (3, 'Alex', 2);
INSERT INTO Customer (id, name, referee_id) VALUES (4, 'Bill', NULL);
INSERT INTO Customer (id, name, referee_id) VALUES (5, 'Zack', 1);
INSERT INTO Customer (id, name, referee_id) VALUES (6, 'Mark', 2);

SELECT * FROM Customer;


/*
584. Find Customer Referee
Find the names of the customer that are not referred by the customer with id = 2.

*/
SELECT name
FROM Customer
WHERE referee_id != 2 OR referee_id IS NULL;


#WORLD TABLE
CREATE TABLE IF NOT EXISTS World (
    name VARCHAR(255),
    continent VARCHAR(255),
    area INT,
    population INT,
    gdp BIGINT
);

TRUNCATE TABLE World;

INSERT INTO World (name, continent, area, population, gdp) 
VALUES 
    ('Afghanistan', 'Asia', 652230, 25500100, 20343000000),
    ('Albania', 'Europe', 28748, 2831741, 12960000000),
    ('Algeria', 'Africa', 2381741, 37100000, 188681000000),
    ('Andorra', 'Europe', 468, 78115, 3712000000),
    ('Angola', 'Africa', 1246700, 20609294, 100990000000);

SELECT * FROM World;

/*
A country is big if:

it has an area of at least three million (i.e., 3000000 km2), or
it has a population of at least twenty-five million (i.e., 25000000).
Write a solution to find the name, population, and area of the big countries.

Return the result table in any order.
*/
SELECT name, population, area
FROM World
WHERE population>25000000 OR area>3000000;


#VIEWS TABLE
CREATE TABLE IF NOT EXISTS Views (
    article_id INT,
    author_id INT,
    viewer_id INT,
    view_date DATE
);

TRUNCATE TABLE Views;

INSERT INTO Views (article_id, author_id, viewer_id, view_date) VALUES (1, 3, 5, '2019-08-01');
INSERT INTO Views (article_id, author_id, viewer_id, view_date) VALUES (1, 3, 6, '2019-08-02');
INSERT INTO Views (article_id, author_id, viewer_id, view_date) VALUES (2, 7, 7, '2019-08-01');
INSERT INTO Views (article_id, author_id, viewer_id, view_date) VALUES (2, 7, 6, '2019-08-02');
INSERT INTO Views (article_id, author_id, viewer_id, view_date) VALUES (4, 7, 1, '2019-07-22');
INSERT INTO Views (article_id, author_id, viewer_id, view_date) VALUES (3, 4, 4, '2019-07-21');
INSERT INTO Views (article_id, author_id, viewer_id, view_date) VALUES (3, 4, 4, '2019-07-21');

/*

Write a solution to find all the authors that viewed at least one of their own articles.

*/ 
SELECT DISTINCT viewer_id AS id
FROM Views
WHERE viewer_id = author_id
ORDER BY id;


#TWEETS TABLE
CREATE TABLE IF NOT EXISTS Tweets (
    tweet_id INT,
    content VARCHAR(50)
);

TRUNCATE TABLE Tweets;

INSERT INTO Tweets (tweet_id, content) VALUES (1, 'Let us Code');
INSERT INTO Tweets (tweet_id, content) VALUES (2, 'More than fifteen chars are here!');

/*Write a solution to find the IDs of the invalid tweets. The tweet is invalid if the number of characters used in the content of the tweet is strictly greater than 15.
*/
SELECT tweet_id 
from Tweets
WHERE LENGTH(content)>15;


#EMPLOYEES AND EMPLOYEEUNI TABLEs

CREATE TABLE IF NOT EXISTS Employees (
    id INT,
    name VARCHAR(20)
);

CREATE TABLE IF NOT EXISTS EmployeeUNI (
    id INT,
    unique_id INT
);

TRUNCATE TABLE Employees;

INSERT INTO Employees (id, name) VALUES 
    (1, 'Alice'),
    (7, 'Bob'),
    (11, 'Meir'),
    (90, 'Winston'),
    (3, 'Jonathan');

TRUNCATE TABLE EmployeeUNI;

INSERT INTO EmployeeUNI (id, unique_id) VALUES 
    (3, 1),
    (11, 2),
    (90, 3);

/*
Write a solution to show the unique ID of each user, If a user does not have a unique ID replace just show null.
*/
SELECT name, unique_id FROM Employees
LEFT JOIN EmployeeUNI ON Employees.id=EmployeeUNI.id;






