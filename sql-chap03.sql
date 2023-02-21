-- 01 comparison operators

SELECT 0 = 0;
SELECT 0 = 1;
SELECT 0 = '0';
SELECT '0.1' > 0;
SELECT '0.1' < 0;
SELECT 0.1 < 0;
SELECT 9 < 7;
SELECT 9 > 7;
SELECT 9 = 7;
SELECT 9 != 7;
SELECT 9 <= 7;
SELECT 9 >= 7;
SELECT (9 > 7) AND (12 < 27);
SELECT (9 > 7) OR (12 < 27);
SELECT (9 > 7) IS TRUE;
SELECT (9 > 7) IS NOT TRUE;

-- 02 logical operators

SELECT 1 AND 1;
SELECT 1 OR 1;
SELECT 1 OR 0;
SELECT 1 XOR 0;
SELECT 1 XOR 1;

SELECT 1 IS TRUE;
SELECT 1 IS NOT TRUE;

SELECT 1 IS NULL;
SELECT 1 IS NOT NULL;
SELECT 0 IS NULL;
SELECT 0 IS NULL;
SELECT NULL IS NULL;
SELECT '' IS NULL;

SELECT 7 IN (1, 5, 9);
SELECT 9 IN (1, 5, 9);

USE world;
SELECT Name AS 'Country', ROUND(Population / 1000000) AS 'PopMM' 
  FROM Country 
  WHERE Population > 50000000 AND Continent IN ('Asia', 'Europe')
  ORDER BY Population DESC;

SELECT t.title AS 'Track', t.track_number AS 'Track No', a.title AS 'Album', 
    a.artist AS 'Artist', t.duration AS 'Seconds'
  FROM Album AS a
  JOIN Track AS t ON t.album_id = a.id
  WHERE t.duration > 120 AND t.track_number > 3
  ORDER BY t.duration DESC;

-- 03 assignment operators

SELECT 5 + 3;
SELECT 5 - 3;
SELECT 5 * 3;
SELECT 5 / 3;
SELECT 5 DIV 3;
SELECT 5 MOD 3;
SELECT 5 / 0;

-- 04 operator precedence

SELECT 5 + 6 * 7 - 8;
SELECT (5 + 6) * (7 - 8);
SELECT 5 + (6 * 7) - 8;

-- 05 The CASE statement

USE scratch;

DROP TABLE IF EXISTS booltest;
CREATE TABLE booltest (a INTEGER, b INTEGER);
INSERT INTO booltest VALUES (1, 0);
SELECT * FROM booltest;

SELECT
  CASE WHEN a < 5 THEN 'true' ELSE 'false' END AS boolA,
  CASE WHEN b > 0 THEN 'true' ELSE 'false' END AS boolB
  FROM booltest
;

SELECT
  CASE a WHEN 1 THEN 'true' ELSE 'false' END AS boolA,
  CASE b WHEN 1 THEN 'true' ELSE 'false' END AS boolB 
  FROM booltest
;

DROP TABLE IF EXISTS booltest;

-- 06 the IF statement

USE scratch;

DROP TABLE IF EXISTS booltest;
CREATE TABLE booltest (a INTEGER, b INTEGER);
INSERT INTO booltest VALUES (1, 0);
SELECT * FROM booltest;

SELECT IF(a < 5, 'TRUE', 'FALSE') FROM booltest;
SELECT IF(b > 0, 'TRUE', 'FALSE') FROM booltest;

DROP TABLE IF EXISTS booltest;

