
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
WHERE song LIKE '%мой%' OR song LIKE '%my%'

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
SELECT DISTINCT(artist) FROM artists, albums a, artists_albums aa  
WHERE artists.id = aa.artists_id AND aa.albums_id = a.id AND a.date > '2020-01-01'

-- название сборников, в которых присутствует конкретный исполнитель.
SELECT DISTINCT(collection_name)  FROM collection c, songs_collection sc, songs s, albums a, artists_albums aa, artists aaa
WHERE c.id  = sc.collection_id AND sc.song_id = s.id AND s.album_id = a.id AND a.id = aa.albums_id AND aa.artists_id = aaa.id AND aaa.artist  = 'eminem'


-- Задание 4
-- Названия альбомов, у которых присутствуют исполнители более чем 1-го жанра
SELECT DISTINCT(album) FROM albums, artists_albums, artists a, artists_janres
WHERE (SELECT count(janres_id) FROM artists_janres) > 1

-- наименования треков, которые не входят в сборники
SELECT DISTINCT(song) FROM songs
FULL JOIN songs_collection ON songs_collection.song_id = songs.id 
WHERE songs_collection.collection_id IS NULL

-- исполнитель или исполнители, написавшие самый короткий по продолжительности трек.
SELECT DISTINCT(artist), min(duration) FROM artists a, artists_albums aa, albums a2 , songs s
WHERE a.id = aa.artists_id  AND aa.albums_id  = a2.id AND a2.id = s.album_id 
GROUP BY artist  
