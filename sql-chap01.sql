-- 03 Selecting Rows

USE world;
SELECT 'Hello, World';
SELECT 1 + 2;
SELECT * FROM Country;
SELECT * FROM Country ORDER BY Name;
SELECT Name, LifeExpectancy FROM Country ORDER BY Name;
SELECT Name, LifeExpectancy AS "Life Expectancy" FROM Country ORDER BY Name;
SELECT COUNT(*) FROM Country;
SELECT * FROM Country ORDER BY Name LIMIT 5;
SELECT * FROM Country ORDER BY Name LIMIT 5, 5;
SELECT * FROM Country ORDER BY Name LIMIT 10, 5;

-- 04 Selecting Columns

USE world;
SELECT * FROM Country ORDER BY Code;
SELECT Name, Code, Region, Population FROM Country ORDER BY Code;
SELECT Name AS Country, Code AS ISO, Region, Population AS Pop FROM Country ORDER BY Code;

-- 05 Counting Rows

USE world;
SELECT COUNT(*) FROM Country;
SELECT COUNT(*) FROM Country WHERE Population > 1000000;
SELECT COUNT(*) FROM Country WHERE Population > 100000000;
SELECT COUNT(*) FROM Country WHERE Population > 100000000 AND Continent = 'Europe' ;
SELECT COUNT(*) FROM Country;
SELECT COUNT(LifeExpectancy) FROM Country;

-- 06 Inserting Data

USE scratch;
SELECT * FROM customer;
INSERT INTO customer (name, address, city, state, zip) VALUES ('Fred Flintstone', '123 Cobblestone Way', 'Bedrock', 'CA', '91234');
INSERT INTO customer (name, city, state) VALUES ('Jimi Hendrix', 'Renton', 'WA');
SELECT * FROM customer;

-- 07 Updating Data

USE scratch;
SELECT * FROM customer;
SELECT * FROM customer WHERE name LIKE 'Jimi%';
UPDATE customer SET address = '123 Music Avenue', zip = '98056' WHERE name LIKE 'Jimi%';
UPDATE customer SET address = '987 Mockingbird Lane' WHERE name LIKE 'Jimi%';
UPDATE customer SET address = NULL, zip = NULL WHERE name LIKE 'Jimi%';

-- 08 Deleting Data

USE scratch;

CREATE TABLE test ( a INT, b VARCHAR(16), c VARCHAR(16) );
INSERT INTO test VALUES ( 1, 'this', 'right here!' );
INSERT INTO test VALUES ( 2, 'that', 'over there!' );
INSERT INTO test VALUES ( 3, 'another', 'nowhere.' );
INSERT INTO test VALUES ( 4, 'again', 'guess where?' );
INSERT INTO test VALUES ( 1, 'one more', 'everywhere!' );

SELECT * FROM test;
DELETE FROM test WHERE a = 2;
DELETE FROM test WHERE a = 1;
DELETE FROM test;
SELECT * FROM test;

DROP TABLE test;

SELECT * FROM customer;
SELECT * FROM customer WHERE name LIKE 'Jimi%' OR name LIKE 'Fred%';
DELETE FROM customer WHERE name LIKE 'Jimi%' OR name LIKE 'Fred%';
SELECT * FROM customer;

-- 09 Joining queries

USE album;
SELECT * FROM album;
SELECT * FROM track;

SELECT a.artist AS Artist, a.title AS Album, t.track_number AS 'Track Num',
    t.title AS Track, t.duration AS Seconds
  FROM album AS a
  JOIN track AS t ON a.id = t.album_id
  ORDER BY a.artist, a.title, t.track_number;

-- 10 Finding databases, tables, and columns

USE scratch;
SHOW databases;
SHOW tables;
DESCRIBE item;

