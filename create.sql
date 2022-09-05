CREATE TABLE IF NOT EXISTS genre (
genre_id SERIAL PRIMARY KEY,
genre_name VARCHAR(60) NOT NULL 
);

CREATE TABLE IF NOT EXISTS musician (
musician_id SERIAL PRIMARY KEY,
musician_name VARCHAR(60) NOT NULL 
);

CREATE TABLE IF NOT EXISTS album (
album_id SERIAL PRIMARY KEY,
album_name VARCHAR(60) NOT NULL,
album_year DATE NOT NULL 
);

CREATE TABLE IF NOT EXISTS collection (
collection_id SERIAL PRIMARY KEY,
collection_name VARCHAR(60) NOT NULL,
collection_year DATE NOT NULL 
);

CREATE TABLE IF NOT EXISTS track (
track_id SERIAL PRIMARY KEY,
track_name VARCHAR(60) NOT NULL,
track_duration INTEGER NOT NULL, 
album_id INTEGER NOT NULL REFERENCES album(album_id)
);

CREATE TABLE IF NOT EXISTS genre_musician (
genre_id INTEGER NOT NULL REFERENCES genre(genre_id),
musician_id INTEGER NOT NULL REFERENCES musician(musician_id),
CONSTRAINT gm_pk PRIMARY KEY (genre_id, musician_id)
);

CREATE TABLE IF NOT EXISTS musician_album (
musician_id INTEGER NOT NULL REFERENCES musician(musician_id),
album_id INTEGER NOT NULL REFERENCES album (album_id),
CONSTRAINT ma_pk PRIMARY KEY (musician_id, album_id)
);

CREATE TABLE IF NOT EXISTS track_collection (
track_id INTEGER NOT NULL REFERENCES track(track_id),
collection_id INTEGER NOT NULL REFERENCES collection (collection_id),
CONSTRAINT tc_pk PRIMARY KEY (track_id, collection_id)
);

