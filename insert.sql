INSERT INTO genre (genre_name)
VALUES 
	('Rock'), 
	('Pop'), 
	('Rap'),
	('Electronic'),
	('Classical');

INSERT INTO musician (musician_name)
VALUES 
	('Pink Floyd'),
	('Sia'),
	('Eminem'),
	('Daft Punk'),
	('Чайковский'),
	('БИ 2'),
	('Metallica'),
	('Lady Gaga');

INSERT INTO genre_musician 
	(genre_id, musician_id)
VALUES 
	(1, 1),
	(2, 2),
	(3, 3),
	(4, 4),
	(5, 5),
	(1, 6),
	(1, 7),
	(2, 8);

INSERT INTO album (album_name, album_year)
VALUES 
	('The Dark Side of the Moon', '1973-03-24'),
	('This is Acting', '2016-01-29'),
	('Kamikaze', '2018-08-31'),
	('Discovery', '2001-03-03'),
	('Концерт для фортепиано с оркестром № 1', '1875-10-25'),
	('Горизонт событий', '2017-09-29'),
	('Master of puppets', '1986-03-03'),
	('Chromatica', '2020-05-29');
	
INSERT INTO musician_album (musician_id, album_id)
VALUES 
	(1, 1),
	(2, 2),
	(3, 3),
	(4, 4),
	(5, 5),
	(6, 6),
	(7, 7),
	(8, 8);

INSERT INTO track (track_name, track_duration, album_id)
VALUES 
	('Time', 413, 1),
    ('Money', 381, 1),
    ('Unstoppable', 217, 2),
    ('Cheap Thrills', 210, 2),
    ('The Ringer', 337, 3),
    ('Lucky You', 244, 3),
    ('One More Time', 320, 4),
    ('Piano Concerto N1', 1230, 5),
    ('Черное солнце', 288, 6),
    ('Пора возвращаться домой', 288, 6),
    ('Лайки', 210, 6),
    ('Muster of Puppets', 515, 7),
    ('Orion', 507, 7),
    ('Stupid Love', 193, 8),
    ('Rain On Me', 181, 8);

INSERT INTO collection (collection_name, collection_year)
VALUES 
	('Best Rock', '2018-09-01'),
	('Best POP', '2019-07-07'),
	('Best Rap', '2020-11-05'),
	('Best Electronic', '2019-01-01'),
	('Classical Music', '2020-03-07'),
	('POP hits', '2022-06-15'),
	('Rock Hits', '2021-12-28'),
	('Best track', '2022-08-30');

INSERT INTO track_collection  
	(track_id, collection_id)
VALUES
	(1, 1),
	(2, 1),
	(3, 2),
	(4, 2),
	(5, 3),
	(6, 3),
	(7, 4),
	(8, 5),
	(3, 6),
	(11, 7),
	(13, 7),
	(1, 8),
	(15, 8);






