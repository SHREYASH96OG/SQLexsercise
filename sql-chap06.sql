-- 01 string concatenation

SELECT 'string1' || 'string2'; -- standard not mysql
SELECT TRUE || FALSE;          -- non-standard mysql
SELECT TRUE OR FALSE;
SELECT CONCAT('string1', 'string2');

-- 02 quote marks
SELECT 'this is a string';
SELECT "this is a string";

USE scratch;
SELECT "name", "address" FROM customer;
SELECT `name`, `address` FROM customer;

-- 03 the modulo operator

SELECT 47 / 3;
SELECT DIV(47,3);       -- standard not mysql
SELECT MOD(47,3);
SELECT 47 MOD 3;        -- non-standard operator
SELECT 47 % 3;          -- non-standard operator

-- 04 comments

--SQL standard comment
-- SQL standard comment

# non-standard MySQL comment
#non-standard MySQL comment

/*
    SQL standard 
    multi-line comment
*/

/*!
    SELECT 'MySQL executable comment' AS `Say what?!`
*/ ;

SELECT 1 /*! + 2 */ ;


