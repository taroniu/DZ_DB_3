
-- заполняем таблицу artists
INSERT INTO artists (artist)
VALUES ('eminem')

INSERT INTO artists (artist)
VALUES ('slipknot')

INSERT INTO artists (artist)
VALUES ('pop artist')

INSERT INTO artists (artist)
VALUES ('rihanna')

-- заполняем таблицу janres
INSERT INTO janres (janre)
VALUES ('rap')

INSERT INTO janres (janre)
VALUES ('rock')

INSERT INTO janres (janre)
VALUES ('pop')

-- заполняем таблицу albums

INSERT INTO albums (album, "date")
VALUES ('rap_album_1', '01-01-2017')

INSERT INTO albums (album, "date")
VALUES ('rap_album_2', '02-02-2018')

INSERT INTO albums (album, "date")
VALUES ('rock_album_1', '03-03-2017')

INSERT INTO albums (album, "date")
VALUES ('rock_album_2', '04-04-2019')

INSERT INTO albums (album, "date")
VALUES ('rock_album_3', '07-07-2019')

INSERT INTO albums (album, "date")
VALUES ('pop_album_1', '05-05-2018')

INSERT INTO albums (album, "date")
VALUES ('pop_album_2', '06-06-2020')

-- заполняем таблицу songs

INSERT INTO songs (id, song, duration, album_id)
VALUES (1, 'rap_song_1', 180, 1)

INSERT INTO songs (id, song, duration, album_id)
VALUES (2, 'rap_song_2', 185, 1)

INSERT INTO songs (id, song, duration, album_id)
VALUES (3, 'my_rap_song_3', 190, 1)

INSERT INTO songs (id, song, duration, album_id)
VALUES (4, 'rap_song_4', 195, 2)

INSERT INTO songs (id, song, duration, album_id)
VALUES (5, 'rap_song_5', 200, 2)

INSERT INTO songs (id, song, duration, album_id)
VALUES (6, 'rap_song_6', 205, 2)

INSERT INTO songs (id, song, duration, album_id)
VALUES (7, 'rock_song_1', 210, 3)

INSERT INTO songs (id, song, duration, album_id)
VALUES (8, 'rock_song_2', 215, 3)

INSERT INTO songs (id, song, duration, album_id)
VALUES (9, 'rock_song_3', 220, 3)

INSERT INTO songs (id, song, duration, album_id)
VALUES (10, 'rock_song_4', 225, 4)

INSERT INTO songs (id, song, duration, album_id)
VALUES (11, 'my_rock_song_1', 230, 4)

INSERT INTO songs (id, song, duration, album_id)
VALUES (12, 'rock_song_6', 235, 4)

INSERT INTO songs (id, song, duration, album_id)
VALUES (13, 'pop_song_1', 240, 5)

INSERT INTO songs (id, song, duration, album_id)
VALUES (14, 'pop_song_2', 245, 5)

INSERT INTO songs (id, song, duration, album_id)
VALUES (15, 'pop_song_3', 250, 5)

INSERT INTO songs (id, song, duration, album_id)
VALUES (16, 'мой_pop_song_4', 255, 6)

INSERT INTO songs (id, song, duration, album_id)
VALUES (17, 'pop_song_5', 260, 6)

INSERT INTO songs (id, song, duration, album_id)
VALUES (18, 'pop_song_6', 265, 6)

INSERT INTO songs (id, song, duration, album_id)
VALUES (19, 'pop_song_7', 270, 7)

INSERT INTO songs (id, song, duration, album_id)
VALUES (20, 'pop_song_8', 275, 7)


-- заполняем artists_janres
INSERT INTO artists_janres (artists_1d, janres_id)
VALUES (1, 1)

INSERT INTO artists_janres (artists_1d, janres_id)
VALUES (4, 1)

INSERT INTO artists_janres (artists_1d, janres_id)
VALUES (3, 1)

INSERT INTO artists_janres (artists_1d, janres_id)
VALUES (1, 2)

INSERT INTO artists_janres (artists_1d, janres_id)
VALUES (2, 2)

INSERT INTO artists_janres (artists_1d, janres_id)
VALUES (3, 2)

INSERT INTO artists_janres (artists_1d, janres_id)
VALUES (1, 3)

INSERT INTO artists_janres (artists_1d, janres_id)
VALUES (4, 3)

INSERT INTO artists_janres (artists_1d, janres_id)
VALUES (3, 3)


-- заполняем artists_albums
INSERT INTO artists_albums (artists_id, albums_id)
VALUES (1, 1)

INSERT INTO artists_albums (artists_id, albums_id)
VALUES (4, 1)

INSERT INTO artists_albums (artists_id, albums_id)
VALUES (1, 2)

INSERT INTO artists_albums (artists_id, albums_id)
VALUES (3, 2)

INSERT INTO artists_albums (artists_id, albums_id)
VALUES (2, 3)

INSERT INTO artists_albums (artists_id, albums_id)
VALUES (1, 3)

INSERT INTO artists_albums (artists_id, albums_id)
VALUES (2, 4)

INSERT INTO artists_albums (artists_id, albums_id)
VALUES (3, 4)

INSERT INTO artists_albums (artists_id, albums_id)
VALUES (4, 5)

INSERT INTO artists_albums (artists_id, albums_id)
VALUES (1, 5)

INSERT INTO artists_albums (artists_id, albums_id)
VALUES (4, 6)

INSERT INTO artists_albums (artists_id, albums_id)
VALUES (3, 6)

INSERT INTO artists_albums (artists_id, albums_id)
VALUES (1, 7)

INSERT INTO artists_albums (artists_id, albums_id)
VALUES (4, 7)

-- заполняем collection
INSERT INTO collection (collection_name, "date")
VALUES ('collection_name_1', '31-12-2017')

INSERT INTO collection (collection_name, "date")
VALUES ('collection_name_2', '31-12-2018')

INSERT INTO collection (collection_name, "date")
VALUES ('collection_name_3', '31-12-2019')

INSERT INTO collection (collection_name, "date")
VALUES ('collection_name_4', '31-12-2020')

-- заполняем songs_collection
INSERT INTO songs_collection (song_id, collection_id)
VALUES (1, 1)

INSERT INTO songs_collection (song_id, collection_id)
VALUES (2, 1)

INSERT INTO songs_collection (song_id, collection_id)
VALUES (7, 1)

INSERT INTO songs_collection (song_id, collection_id)
VALUES (8, 1)

INSERT INTO songs_collection (song_id, collection_id)
VALUES (3, 1)

INSERT INTO songs_collection (song_id, collection_id)
VALUES (9, 1)

INSERT INTO songs_collection (song_id, collection_id)
VALUES (6, 2)

INSERT INTO songs_collection (song_id, collection_id)
VALUES (4, 2)

INSERT INTO songs_collection (song_id, collection_id)
VALUES (15, 2)

INSERT INTO songs_collection (song_id, collection_id)
VALUES (13, 2)

INSERT INTO songs_collection (song_id, collection_id)
VALUES (11, 3)

INSERT INTO songs_collection (song_id, collection_id)
VALUES (10, 3)

INSERT INTO songs_collection (song_id, collection_id)
VALUES (12, 3)

INSERT INTO songs_collection (song_id, collection_id)
VALUES (19, 3)

INSERT INTO songs_collection (song_id, collection_id)
VALUES (20, 3)

INSERT INTO songs_collection (song_id, collection_id)
VALUES (6, 4)

INSERT INTO songs_collection (song_id, collection_id)
VALUES (12, 4)

INSERT INTO songs_collection (song_id, collection_id)
VALUES (18, 4)
