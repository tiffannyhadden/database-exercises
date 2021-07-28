USE codeup_test_db;
DROP TABLE IF EXISTS albums;
CREATE TABLE albums (
                        id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                        artist VARCHAR(50) NOT NULL,
                        name VARCHAR(100) NOT NULL,
                        release_date INT NOT NULL,
                        sales FLOAT,
                        genre VARCHAR(50),
                        PRIMARY KEY (id)
 );

DESCRIBE albums;

SELECT * from albums;
INSERT INTO codeup_test_db.albums (artist, Name, release_date, sales, genre)
VALUES ('Shakira', 'Shakira', '2002', '10,000,000.00', 'latin pop');
DESCRIBE albums;
# SHOW TABLE albums;
SELECT artist FROM albums;
INSERT INTO codeup_test_db.albums (artist, Name, release_date, sales, genre)
VALUES ('Masego', 'Masego', '2002', '3.5', 'latin pop');
SELECT artist FROM albums;