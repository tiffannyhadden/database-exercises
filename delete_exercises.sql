USE codeup_test_db;

-- SELECT 'Albums released after 1991' AS 'Search results';
-- SELECT * FROM albums WHERE release_date > 1991;
--
-- SELECT 'Albums with the genre 'disco'' AS 'Search results';
-- SELECT * FROM albums WHERE genre = 'disco';
--
-- SELECT 'Albums by 'Metallica'' AS 'Search results';
-- SELECT * FROM albums WHERE artist = 'Metallica';


DELETE FROM albums WHERE release_date > 1991;

DELETE FROM albums WHERE genre = 'disco';

DELETE FROM albums WHERE artist = 'Metallica';