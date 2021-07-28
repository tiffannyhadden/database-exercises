USE codeup_test_db;
#
SELECT * FROM albums;
# The name of
SELECT * FROM albums
WHERE artist = 'Masego';

#The Year
SELECT release_date FROM albums
WHERE Name = 'Masego';
#The Genre
SELECT genre FROM albums
WHERE Name = 'The Bodyguard';
#Albums in the nineties
SELECT Name, release_date FROM albums
WHERE release_date < 2000
  AND release_date > 1990;
#Sales < 20 millions
SELECT * FROM albums
WHERE sales < 20;
#All the albums with a genre of Rock
SELECT * FROM albums
WHERE genre = 'Rock';
# get status
#addtional notes
