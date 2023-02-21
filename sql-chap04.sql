-- 01 string comparisons

USE world;
SELECT Name FROM country WHERE Name LIKE '_a%' ORDER BY Name;
SELECT Name FROM country WHERE STRCMP(Name, 'France') <= 0 ORDER BY Name;

-- 02 regular expressions

USE world;
SELECT Name FROM country WHERE Name RLIKE 'y$' ORDER BY Name;
SELECT Name FROM country WHERE Name RLIKE '[xz][ai]' ORDER BY Name;

-- 03 string concatenation

SELECT 'This ' || 'and ' || 'that';
SELECT CONCAT('This ', 'and ', 'that');
SELECT CONCAT('Love', ' ', 'is', ' ', 'all', ' ', 'you', ' ', 'need');
SELECT CONCAT('one', 'two');
SELECT CONCAT('string', 42);
SELECT CONCAT(42, 42);

-- 04 numeric conversions

SELECT 32742;
SELECT HEX(32742);
SELECT OCT(32742);
SELECT BIN(32742);

SELECT CONV('32742',10,16);
SELECT CONV('7FE6',16,10);
SELECT CONV('28K6',24,10);

-- 05 trimming and padding

USE scratch;
SELECT * FROM customer WHERE name LIKE '  Bill Smith  ';
SELECT * FROM customer WHERE name LIKE TRIM('  Bill Smith  ');
SELECT CONCAT(':', RTRIM('  Bill Smith  '), ':');
SELECT CONCAT(':', LTRIM('  Bill Smith  '), ':');

SELECT CONCAT(':', TRIM('x' FROM 'xxxBill Smithxxx'), ':');

SELECT LPAD('Price', 20, '.');
SELECT LPAD('Price', 20, '. ');
SELECT RPAD('Price', 20, '. ');

-- 06 case conversion

USE scratch;
SELECT UPPER(name) FROM customer;
SELECT LOWER(name) FROM customer;
SELECT CONCAT(UPPER(SUBSTRING(name, 1, 1)),LOWER(SUBSTRING(name, 2))) FROM customer;

-- 07 substring

SELECT SUBSTRING('this is a string', 6);
SELECT SUBSTR('this is a string', 6);
SELECT SUBSTR('this is a string', 6, 4);
SELECT SUBSTR('this is a string', -6);
SELECT SUBSTR('this is a string', -6, 4);

SELECT SUBSTRING_INDEX('this is a string', ' ', 1);
SELECT SUBSTRING_INDEX('this is a string', ' ', 2);
SELECT SUBSTRING_INDEX('this is a string', ' ', -2);

-- 08 soundex

SELECT SOUNDEX('bill'), SOUNDEX('bell');
SELECT SOUNDEX('acton'), SOUNDEX('action');
SELECT SOUNDEX('acting'), SOUNDEX('action');

SELECT 'bill' SOUNDS LIKE 'boil', 'bill' SOUNDS LIKE 'phil';



