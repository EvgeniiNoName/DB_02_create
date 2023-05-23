SELECT Name_Track, Duration / 60 FROM Tracks
WHERE Duration = (SELECT MAX(Duration) FROM Tracks);

SELECT Name_Track FROM Tracks
WHERE Duration >= 3.5 * 60;

SELECT Name_Collection FROM Collections
WHERE Year_Collection  BETWEEN '2018' AND '2020';

SELECT Name_Performers FROM Performers
WHERE (char_length(Name_Performers) - char_length(REPLACE(Name_Performers, ' ',''))) = 0;

SELECT Name_Track FROM Tracks
WHERE upper(Name_Track) LIKE '%МОЙ%' OR upper(Name_Track) LIKE '%MY%';

SELECT Name_Genres, COUNT(Performer_id_) FROM GenrePerformer
JOIN Genres ON GenrePerformer.Genre_id_=Genres.Genre_id
GROUP BY Name_Genres;

SELECT count(Name_Track) FROM albums
JOIN Tracks ON albums.Album_id=Tracks.Album_id
WHERE Year_album BETWEEN '2019' AND '2020';

SELECT Name_album, AVG(Duration) FROM albums
JOIN Tracks ON albums.Album_id=Tracks.Album_id
GROUP BY Name_album;

SELECT Name_Performers FROM AlbumPerformer
JOIN albums ON AlbumPerformer.Album_id_=Albums.Album_id
JOIN Performers ON AlbumPerformer.Performer_id_=Performers.Performer_id
WHERE Year_album != '2020'
GROUP BY Name_Performers;

SELECT Name_Collection FROM TrackCollection
JOIN Tracks ON TrackCollection.Track_id_=Tracks.track_id
JOIN Collections ON TrackCollection.Collection_id_=Collections.Collection_id
JOIN Albums ON Tracks.Album_id=Albums.Album_id
JOIN AlbumPerformer ON Albums.Album_id=AlbumPerformer.album_id_ 
JOIN Performers ON AlbumPerformer.performer_id_=Performers.performer_id 
WHERE Name_Performers = 'Второй исполнитель';