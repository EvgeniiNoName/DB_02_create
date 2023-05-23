CREATE TABLE IF NOT EXISTS Albums (
	Album_id SERIAL PRIMARY KEY,
	Year_Album SMALLINT,
	Name_album VARCHAR(80)
);

CREATE TABLE IF NOT EXISTS Tracks (
	Track_id SERIAL PRIMARY KEY,
	Duration SMALLINT,
	Name_Track VARCHAR(80),
	Album_id INTEGER not null references Albums(Album_id)
);


CREATE TABLE IF NOT EXISTS Genres (
	Genre_id SERIAL PRIMARY KEY,
	Name_Genres VARCHAR(80)
);

CREATE TABLE IF NOT EXISTS Performers (
	Performer_id SERIAL PRIMARY KEY,
	Name_Performers VARCHAR(80)
);

CREATE TABLE IF NOT EXISTS Collections (
	Collection_id SERIAL PRIMARY KEY,
	Year_Collection SMALLINT,
	Name_Collection VARCHAR(80)
);

CREATE TABLE IF NOT EXISTS TrackCollection (
	Track_id_ INTEGER references Tracks(Track_id),
	Collection_id_ INTEGER references Collections(Collection_id),
	constraint pk primary key (Track_id_, Collection_id_)
);

CREATE TABLE IF NOT EXISTS AlbumPerformer (
	Album_id_ INTEGER references Albums(Album_id),
	Performer_id_ INTEGER references Performers(Performer_id),
	constraint pk2 primary key (Album_id_, Performer_id_)
);

CREATE TABLE IF NOT EXISTS GenrePerformer (
	Genre_id_ INTEGER references Genres(Genre_id),
	Performer_id_ INTEGER references Performers(Performer_id),
	constraint pk3 primary key (Genre_id_, Performer_id_)
);
