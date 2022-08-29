use sakila;
SHOW TABLES;
SELECT	* FROM customer LIMIT 10;
UPDATE customer SET email = 'jarek@wp.pl'  where customer_id = 1;
SELECT	* FROM customer LIMIT 10;
UPDATE customer SET last_name = "Brzęczyszczykiewicz" WHERE customer_id = 2;
SELECT * FROM customer LIMIT 10;

SHOW DATABASES;
USE najszybsze_zwierzeta;
DROP TABLE fastest;
CREATE TABLE fastest
(
	animal CHAR(30),
    max_speed INT,
    class CHAR(20)
);
INSERT INTO fastest ( animal, max_speed, class )
VALUES
        ("Peregrine falcon", 390, "Flight-diving"),
        ("Golden eagle", 320, "Flight-diving"),
        ("Whitethroated needletail swift", 170, "Flight"),
        ("Eurasian hobby", 160, "Flight"),
        ("Mexican free-tailed bat", 160, "Flight"),
        ("Frigatebird", 153, "Flight"),
        ("Rock dove", 149, "Flight"),
        ("Spur-winged goose", 142, "Flight"),
        ("Black marlin", 129, "Swimming"),
        ("Gyrfalcon", 128, "Flight");
        
SELECT * FROM fastest;

UPDATE fastest SET max_speed = 500 WHERE class = 'Flight';


DELETE FROM fastest WHERE animal = 'Rock dove';

SELECT * FROM fastest;

DELETE FROM fastest WHERE class = 'Swimming';
SELECT * FROM fastest;

DELETE FROM fastest WHERE class = 'Flight-diving';
SELECT * FROM fastest;