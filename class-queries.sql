SELECT title from Album where label = "Def Jam";

SELECT label FROM Album where AlbumId in (1,2,3,4);

SELECT * FROM Album order by title, ReleaseDate desc;

SELECT title FROM Album where label = "Columbia" and title = "Screaming for Vengeance";

SELECT * FROM Album where label = "Columbia" or label = "Def Jam";

SELECT * FROM Album where NOT label = "Columbia";

--INSERT into Genre (Label) values("Screamo");

select * from Genre;

--DELETE from Genre where GenreId = 16;

--update Genre set Label = "Americana" where Label = "Rap";

SELECT * from Artist;

--update Artist set ArtistName = "Fang", YearEstablished = "1992" where ArtistName = "Jay Z";

SELECT * from Album;

UPDATE Album set title = "The Blueprint" where Label = "Def Jam" or Label = "Columbia";

--update Album set AlbumId = 1 where AlbumId = 2;

--Update Album set ReleaseDate = null where Label = "Columbia";

--select * from Album where label is null;
