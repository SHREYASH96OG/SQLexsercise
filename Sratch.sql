-- scratch database
-- mysql version
-- as of 2019-04-17 bw

CREATE DATABASE IF NOT EXISTS scratch DEFAULT CHARSET = utf8;
USE scratch;

DROP TABLE IF EXISTS customer;
CREATE TABLE customer (
    id              INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY, 
    name            VARCHAR(255),
    address         VARCHAR(255),
    city            VARCHAR(255),
    state           CHAR(2),
    zip             CHAR(10)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS item;
CREATE TABLE item (
    id              INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name            VARCHAR(255),
    description     TEXT
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS sale;
CREATE TABLE sale (
    id              INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
    item_id         INTEGER,
    customer_id     INTEGER,
    date            DATE,
    quantity        INTEGER,
    price           DECIMAL(9,2)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO customer ( id, name, address, city, state, zip ) VALUES ( 1, 'Bill Smith', '123 Main Street', 'Hope', 'CA', '98765' );
INSERT INTO customer ( id, name, address, city, state, zip ) VALUES ( 2, 'Mary Smith', '123 Dorian Street', 'Harmony', 'AZ', '98765' );
INSERT INTO customer ( id, name, address, city, state, zip ) VALUES ( 3, 'Bob Smith', '123 Laugh Street', 'Humor', 'CA', '98765' );

INSERT INTO item ( id, name, description ) VALUES ( 1, 'Box of 64 Pixels', '64 RGB pixels in a decorative box' );
INSERT INTO item ( id, name, description ) VALUES ( 2, 'Sense of Humor', 'Especially dry. Imported from England.' );
INSERT INTO item ( id, name, description ) VALUES ( 3, 'Beauty', 'Inner beauty. No cosmetic surgery required!' );
INSERT INTO item ( id, name, description ) VALUES ( 4, 'Bar Code', 'Unused. In original packaging.' );

INSERT INTO sale ( id, item_id, customer_id, date, quantity, price ) VALUES ( 1, 1, 2, '2009-02-27', 3, 29.95 );
INSERT INTO sale ( id, item_id, customer_id, date, quantity, price ) VALUES ( 2, 2, 2, '2009-02-27', 1, 19.95 );
INSERT INTO sale ( id, item_id, customer_id, date, quantity, price ) VALUES ( 3, 1, 1, '2009-02-28', 1, 29.95 );
INSERT INTO sale ( id, item_id, customer_id, date, quantity, price ) VALUES ( 4, 4, 3, '2009-02-28', 2, 9.99 );
INSERT INTO sale ( id, item_id, customer_id, date, quantity, price ) VALUES ( 5, 1, 2, '2009-02-28', 1, 29.95 );

DROP TABLE IF EXISTS numerics;
CREATE TABLE numerics (
    id INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
    da DECIMAL(10, 2),
    db DECIMAL(10, 2),
    fa FLOAT,
    fb FLOAT
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO numerics (da, db, fa, fb) VALUES ( 0.1, 0.2, 0.1, 0.2 );
