INSERT INTO albums(Year_album, Name_album) 
	VALUES
	('2020', 'Простой альбом'),
	('2021', 'Первый альбом'),
	('2022', 'Второй альбом');

INSERT INTO Tracks(Duration, Name_Track, Album_id) 
	VALUES
	('190', 'Первая', 1),
	('200', 'Мой Второй', 1),
	('139', 'Четвертая', 1),
	('179', 'Пятая', 1),
	('300', 'Седьмая', 1),
	('300', 'my own', 1),
	('300', 'own my', 2),
	('300', 'my', 2),
	('300', 'oh my god', 2),
	('300', 'myself', 2),
	('300', 'by myself', 2),
	('300', 'bemy self', 3),
	('300', 'go my', 3),
	('300', 'myself by', 3),
	('300', 'by myself by', 3),
	('300', 'beemy', 3),
	('182', 'premyne', 3);
	
INSERT INTO Genres(Name_Genres) 
	VALUES
	('POP'),
	('JAZZ'),
	('ROCK');

INSERT INTO Performers(Name_Performers)
	VALUES
	('Первый'),
	('Второй исполнитель'),
	('Третий'),
	('Чертвертый');

INSERT INTO Collections(Year_Collection, Name_Collection)
	VALUES
	('2019', 'Первый сборник'),
	('2019', 'Второй сборник'),
	('2021', 'Третий сборник'),
	('2022', 'Четвертый сборник');
	
INSERT INTO TrackCollection(Track_id_, Collection_id_)
	VALUES
	(1, 1),
	(2, 2),
	(3, 3),
	(4, 4),
	(5, 1),
	(6, 2),
	(7, 3),
	(8, 4),
	(9, 1),
	(10, 2),
	(11, 3),
	(12, 4),
	(13, 1),
	(14, 2),
	(15, 3),
	(16, 4),
	(17, 1);

INSERT INTO AlbumPerformer(Performer_id_, Album_id_)
	VALUES
	(1, 1),
	(2, 2),
	(3, 3),
	(1, 2),
	(2, 1),
	(4, 1);

INSERT INTO GenrePerformer(Performer_id_, Genre_id_)
	VALUES
	(1, 1),
	(2, 2),
	(3, 2),
	(4, 2);


TRUNCATE albums, Tracks, Genres, Performers, Collections, TrackCollection RESTART IDENTITY CASCADE;
TRUNCATE AlbumPerformer RESTART IDENTITY CASCADE;