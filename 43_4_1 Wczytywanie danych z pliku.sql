DROP TABLE fastest_file;
Create TABLE fastest_file
(
	zwierze CHAR(30),
    predkosc INT,
    klasa CHAR(20)
);

SHOW VARIABLES LIKE "Secure_file_priv";
LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\fastest_file.csv'
INTO TABLE fastest_file
FIELDS TERMINATED BY  ','
LINES TERMINATED BY '\r\n';
SELECT * FROM fastest_file;

DROP TABLE fastest_file2;
CREATE TABLE fastest_file2
(
	zwierze CHAR(30),
    predkosc DEC (4,1),
    klasa CHAR (20)
);

LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\fastest_utf8.csv'
INTO TABLE fastest_file2
CHARACTER SET utf8
FIELDS TERMINATED  BY ';'
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY	'\r\n'
IGNORE 1 LINES
(zwierze, @predkosc,@klasa)
SET predkosc = REPLACE(@predkosc, ',','.'),
	klasa = IF (@klasa = '', NULL, @KLASA); 

select * from fastest_file2;
DROP TABLE ksiazki;
CREATE TABLE ksiazki(
	id  INT AUTO_INCREMENT PRIMARY KEY, 
    author CHAR(40),
    title VARCHAR(150),
    publication_year INT,
    isbn CHAR(13),
    rating DEC(3,2),
    ratings_no INT,
    rewiews_no INT,
    star_1 INT, 
    star_2 INT, 
    star_3 INT, 
    star_4 INT, 
    star_5 INT
    );
    
    LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\ksiazki.csv'
    INTO TABLE ksiazki
    CHARACTER SET utf8
    FIELDS TERMINATED BY ';'
    LINES TERMINATED BY '\r\n'
    IGNORE 1 LINES
    (author, title, publication_year, isbn, @rating, ratings_no, rewiews_no, star_1, star_2, star_3, star_4, star_5)
    SET rating = replace(@rating,',','.');
    
    SELECT * FROM ksiazki;
    
    SELECT author,title FROM ksiazki;
    
    

