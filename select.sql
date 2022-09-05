SELECT genre_name, COUNT(musician_id) AS countmus FROM genre a
JOIN genre_musician b ON a.genre_id = b.genre_id 
GROUP BY genre_name

SELECT album_name, album_year, COUNT(track_name) AS counttrack FROM album a 
JOIN track t ON a.album_id = t.album_id 
WHERE EXTRACT (YEAR FROM album_year) BETWEEN 2019 AND 2020
GROUP BY album_name, album_year; 

SELECT album_name, AVG(track_duration) AS averagetrack FROM album a 
JOIN track t ON a.album_id = t.album_id 
GROUP BY album_name;

SELECT musician_name FROM musician a 
JOIN musician_album b ON a.musician_id = b.musician_id 
JOIN album c ON b.album_id = c.album_id 
WHERE EXTRACT (YEAR FROM album_year) != 2020
GROUP BY musician_name;

SELECT collection_name, musician_name FROM collection c 
JOIN track_collection tk USING(collection_id)
JOIN track t USING(track_id)
JOIN album a USING(album_id)
JOIN musician_album ma USING(album_id)
JOIN musician m USING(musician_id)
WHERE musician_name LIKE 'Pink Floyd'
GROUP BY collection_name, musician_name;

SELECT album_name, musician_name, COUNT(genre_name) AS genre_count FROM album a 
JOIN musician_album ma USING(album_id)
JOIN musician m USING(musician_id)
JOIN genre_musician gm USING(musician_id)
JOIN genre g USING(genre_id)
GROUP BY album_name, musician_name
HAVING COUNT(genre_name) > 1

SELECT track_name FROM track t 
FULL JOIN track_collection tc USING(track_id)
WHERE tc.collection_id IS NULL;


SELECT musician_name, track_duration FROM musician m 
JOIN musician_album ma USING(musician_id)
JOIN album a USING(album_id)
JOIN track t USING(album_id)
WHERE track_duration = (SELECT MIN(track_duration) FROM track);

SELECT album_name, COUNT(track_name) AS track_count FROM album a 
JOIN track t USING(album_id)
GROUP BY album_name
HAVING COUNT(track_name) = (
	SELECT COUNT(track_name) AS count_track FROM track tc
	JOIN album ac USING(album_id)
	GROUP BY album_name
	ORDER BY count_track
	LIMIT 1);
