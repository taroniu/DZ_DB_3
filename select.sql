
-- Задание 2
-- название и продолжительность самого длительного трека
SELECT song, duration FROM songs
WHERE duration = (SELECT max(duration) FROM songs)

-- название треков, продолжительность которых не менее 3,5 минут
SELECT song FROM songs 
WHERE duration >= 210

-- название сборников, вышедших в период с 2018 по 2020 год включительно.

SELECT DISTINCT(collection_name) FROM collection 
WHERE date BETWEEN '01.01.2018' AND '31.12.2020'

-- исполнители, чье имя состоит из одного слова
SELECT artist FROM artists
WHERE artist NOT LIKE '% %' OR artist NOT LIKE '%_%'

-- название треков, которые содержат слово "мой" или "my"
SELECT song FROM songs
WHERE song LIKE 'мой'
OR song LIKE 'my'
OR song LIKE '% my'
OR song LIKE 'my %'
OR song LIKE '% my %'
OR song LIKE 'мой %'
OR song LIKE '% мой'
OR song LIKE '% мой %';
-- Задание 3
-- количество исполнителей в каждом жанре
SELECT janres_id, count(*) FROM artists_janres
GROUP BY janres_id

-- количество треков, вошедших в альбомы 2019-2020 годов
SELECT count(song) FROM songs, albums
WHERE album_id = albums.id AND date BETWEEN '01-01-2019' AND '31-12-2020'

--средняя продолжительность треков по каждому альбому
SELECT avg(duration), album FROM songs, albums a
WHERE album_id = a.id
GROUP BY a.album

-- все исполнители, которые не выпустили альбомы в 2020 году

SELECT artist FROM artists
WHERE artist NOT IN (
	SELECT artist FROM artists a
	JOIN artists_albums aa ON a.id  = aa.artists_id
	JOIN albums a2 ON aa.albums_id = a2.id
	WHERE  a2."date" > '2020-01-01'
	)


-- название сборников, в которых присутствует конкретный исполнитель.
SELECT DISTINCT(collection_name)  FROM collection c, songs_collection sc, songs s, albums a, artists_albums aa, artists aaa
WHERE c.id  = sc.collection_id AND sc.song_id = s.id AND s.album_id = a.id AND a.id = aa.albums_id AND aa.artists_id = aaa.id AND aaa.artist  = 'slipknot'

-- название альбомов, содержащих наименьшее количество треков
SELECT album FROM albums a
JOIN songs ON a.id = songs.album_id
GROUP BY a.id
HAVING COUNT(songs.id) = (
	SELECT count(songs.id) FROM songs
	GROUP BY songs.album_id
	ORDER BY 1
	LIMIT 1
	);

-- Задание 4
-- Названия альбомов, у которых присутствуют исполнители более чем 1-го жанра
SELECT DISTINCT(album) FROM albums, artists_albums, artists a, artists_janres
WHERE (SELECT count(janres_id) FROM artists_janres) > 1

SELECT DISTINCT(album) FROM albums
JOIN artists_albums aa ON albums.id = aa.albums_id
JOIN artists a ON aa.artists_id = a.id
JOIN artists_janres aj ON a.id = aj.artists_1d
GROUP BY albums.album, aj.artists_1d
HAVING count (aj.janres_id) > 1



-- наименования треков, которые не входят в сборники
SELECT DISTINCT(song) FROM songs
FULL JOIN songs_collection ON songs_collection.song_id = songs.id
WHERE songs_collection.collection_id IS NULL

-- исполнитель или исполнители, написавшие самый короткий по продолжительности трек.
SELECT artist FROM artists
JOIN artists_albums aa ON artists.id = aa.artists_id
JOIN albums a ON aa.albums_id = a.id
JOIN songs s ON s.album_id = a.id
WHERE s.duration = (
	SELECT min(duration) FROM songs
	JOIN artists_albums aa2 ON s.album_id = aa2.albums_id
	)


