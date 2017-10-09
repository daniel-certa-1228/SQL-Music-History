-- 1. Query all of the entries in the Genre table
SELECT *
FROM Genre;
-- 2. Using the INSERT statement, add one of your favorite artists to the Artist table.
INSERT into Artist ('ArtistId', 'ArtistName', 'YearEstablished')
  values(28, 'Frank Sinatra', 1939);
--3. Using the INSERT statement, add one, or more, albums by your artist to the Album table.
INSERT into Album('AlbumId', 'Title', 'ReleaseDate', 'AlbumLength', 'Label', 'ArtistId', 'GenreId')
  values (23, 'Come Fly With Me', '1958', 39, 'Capitol', 28, 4);
-- 4. Using the INSERT statement, add some songs that are on that album to the Song table.
INSERT into Song('SongId', 'Title', 'SongLength', 'ReleaseDate', 'GenreId', 'ArtistId', 'AlbumId')
  values (22, 'Come Fly With Me', 189, '1958', 4, 28, 23),
			 (23, 'On The Road To Mandalay', 157, '1958', 4, 28, 23),
			 (24, 'Moonlight In Vermont', 157, '1958', 4, 28, 23);
-- 5.  Write a SELECT query that provides the song titles, album title, and artist name for all of the data you just entered in. Use the LEFT JOIN keyword sequence to connect the tables, and the WHERE keyword to filter the results to the album and artist you added.
SELECT Song.Title, Album.Title, Artist.ArtistName
	FROM Song LEFT JOIN Album LEFT JOIN Artist
	WHERE (Song.AlbumId = Album.AlbumId) AND (Album.ArtistId = Artist.ArtistId) AND (Artist.ArtistId = 28);
-- 6.  Write a SELECT statement to display how many songs exist for each album. You'll need to use the COUNT() function and the GROUP BY keyword sequence.
SELECT  Album.Title, SUM(CASE WHEN Song.AlbumId = Album.AlbumId THEN 1 ELSE 0 end)
FROM Album LEFT JOIN Song
Group By Album.Title;
