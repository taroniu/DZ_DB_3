
-- заполняем таблицу artists
INSERT INTO artists (artist) VALUES
('rihanna'),
('pop artist'),
('slipknot'),
('eminem');

-- заполняем таблицу janres
INSERT INTO janres (janre) VALUES
('rap'),
('rock'),
('pop');

-- заполняем таблицу albums

INSERT INTO albums (album, "date") VALUES
('rap_album_1', '01-01-2017'),
('rap_album_2', '02-02-2018'),
('rock_album_1', '03-03-2017'),
('rock_album_2', '04-04-2019'),
('rock_album_3', '07-07-2019'),
('pop_album_1', '05-05-2018'),
('pop_album_2', '06-06-2020');

-- заполняем таблицу songs

INSERT INTO songs (id, song, duration, album_id)vALUES
(1, 'rap_song_1', 180, 1),
(2, 'rap_song_2', 185, 1),
(3, 'my_rap_song_3', 190, 1),
(4, 'rap_song_4', 195, 2),
(5, 'rap_song_5', 200, 2),
(6, 'rap_song_6', 205, 2),
(7, 'rock_song_1', 210, 3),
(8, 'rock_song_2', 215, 3),
(9, 'rock_song_3', 220, 3),
(10, 'rock_song_4', 225, 4),
(11, 'my_rock_song_1', 230, 4),
(12, 'rock_song_6', 235, 4),
(13, 'pop_song_1', 240, 5),
(14, 'pop_song_2', 245, 5),
(15, 'pop_song_3', 250, 5),
(16, 'мой_pop_song_4', 255, 6),
(17, 'pop_song_5', 260, 6),
(18, 'pop_song_6', 265, 6),
(19, 'pop_song_7', 270, 7),
(20, 'pop_song_8', 275, 7);

-- заполняем artists_janres
INSERT INTO artists_janres (artists_1d, janres_id) VALUES
(1, 1),
(4, 1),
(3, 1),
(1, 2),
(2, 2),
(3, 2),
(1, 3),
(4, 3),
(3, 3);


-- заполняем artists_albums
INSERT INTO artists_albums (artists_id, albums_id) VALUES
(1, 1),
(4, 1),
(1, 2),
(3, 2),
(2, 3),
(1, 3),
(2, 4),
(3, 4),
(4, 5),
(1, 5),
(4, 6),
(3, 6),
(1, 7),
(4, 7);

-- заполняем collection
INSERT INTO collection (collection_name, "date") VALUES
('collection_name_1', '31-12-2017'),
('collection_name_2', '31-12-2018'),
('collection_name_3', '31-12-2019'),
('collection_name_4', '31-12-2020');

-- заполняем songs_collection
INSERT INTO songs_collection (song_id, collection_id) VALUES
(1, 1),
(2, 1),
(7, 1),
(8, 1),
(3, 1),
(9, 1),
(6, 2),
(4, 2),
(15, 2),
(13, 2),
(11, 3),
(10, 3),
(12, 3),
(19, 3),
(20, 3),
(6, 4),
(12, 4),
(18, 4);