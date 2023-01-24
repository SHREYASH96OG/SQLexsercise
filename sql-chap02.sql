-- 01 create table

USE scratch;

CREATE TABLE test (
    id INT,
    name VARCHAR(255),
    address VARCHAR(255),
    city VARCHAR(255),
    state CHAR(2),
    zip CHAR(10)
);

DESCRIBE test;
SHOW TABLE STATUS;
SHOW CREATE TABLE test;

DROP TABLE IF EXISTS test;

-- 03 numeric types

USE scratch;
DESCRIBE numerics;
SELECT * FROM numerics;
SELECT da + db, fa + fb FROM numerics;
SELECT da + db = 0.3 FROM numerics;
SELECT fa + fb = 0.3 FROM numerics;
SELECT fa + fb FROM numerics;

-- 04 date and time

USE scratch;
SELECT NOW();
SHOW VARIABLES LIKE '%time_zone%';
SET time_zone = '+00:00';
SET time_zone = "SYSTEM";
SELECT UTC_TIMESTAMP();

# obsolete TIMESTAMP
DROP TABLE IF EXISTS temp;
CREATE TABLE temp (
  id INT UNSIGNED UNIQUE AUTO_INCREMENT PRIMARY KEY,
  stamp TIMESTAMP,
  name VARCHAR(64)
);
INSERT INTO temp (name) VALUES ('this');
INSERT INTO temp (name) VALUES ('that');
INSERT INTO temp (name) VALUES ('other');
SELECT * FROM temp;

# with DATETIME
CREATE TABLE temp (
  id INT UNSIGNED UNIQUE AUTO_INCREMENT PRIMARY KEY,
  stamp DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  name VARCHAR(64)
);

UPDATE temp SET name = 'Jackson Pollack' WHERE id = 2;

DROP TABLE IF EXISTS temp;

-- 06 enum

USE scratch;

DROP TABLE IF EXISTS test;
CREATE TABLE test (
  id INT UNSIGNED UNIQUE AUTO_INCREMENT PRIMARY KEY,
  a ENUM( 'Pablo', 'Henri', 'Jackson' )
);
INSERT INTO test ( a ) VALUES ( 'Pablo' );
INSERT INTO test ( a ) VALUES ( 'Henri' );
INSERT INTO test ( a ) VALUES ( 'Jackson' );
INSERT INTO test ( a ) VALUES ( 1 );
INSERT INTO test ( a ) VALUES ( 2 );
INSERT INTO test ( a ) VALUES ( 3 );
SELECT * FROM test;

DROP TABLE IF EXISTS test;
CREATE TABLE test (
  id INT UNSIGNED UNIQUE AUTO_INCREMENT PRIMARY KEY,
  a SET( 'Pablo', 'Henri', 'Jackson' )
);
INSERT INTO test ( a ) VALUES ( 'Pablo' );
INSERT INTO test ( a ) VALUES ( 'Henri' );
INSERT INTO test ( a ) VALUES ( 'Jackson' );
INSERT INTO test ( a ) VALUES ( 'Pablo,Jackson,Henri,Henri,Henri' );
INSERT INTO test ( a ) VALUES ( 1 );
INSERT INTO test ( a ) VALUES ( 2 );
INSERT INTO test ( a ) VALUES ( 3 );
INSERT INTO test ( a ) VALUES ( 4 );
INSERT INTO test ( a ) VALUES ( 5 );
INSERT INTO test ( a ) VALUES ( 6 );
INSERT INTO test ( a ) VALUES ( 7 );
SELECT * FROM test;

DROP TABLE IF EXISTS test;

-- 07 serial

USE scratch;

DROP TABLE IF EXISTS test;
CREATE TABLE test (
  id INT UNSIGNED UNIQUE AUTO_INCREMENT PRIMARY KEY,
  a VARCHAR(32)
);
INSERT INTO test ( a ) VALUES ( 'Pablo' );
INSERT INTO test ( a ) VALUES ( 'Henri' );
INSERT INTO test ( a ) VALUES ( 'Jackson' );
SELECT * FROM test;
DESCRIBE test;
SHOW CREATE TABLE test;
DROP TABLE IF EXISTS test;

