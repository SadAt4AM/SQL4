-- Задание 2
--  1  Название и продолжительность самого длительного трека.
select time, name from soundtrack order by time desc limit 1;

--  2  Название треков, продолжительность которых не менее 3,5 минут.
select name from soundtrack where time >= 210;

--  3  Названия сборников, вышедших в период с 2018 по 2020 год включительно.
select name from collection where year between 2018 and 2020;

--  4  Исполнители, чьё имя состоит из одного слова.
select nickname from singer where nickname not like '% %';

--  5  Название треков, которые содержат слово «мой» или «my».
select name from soundtrack 
where name ilike 'my %'
or name ilike '% my'
or name ilike '% my %'
or name ilike 'my'
or name ilike '% мой'
or name ilike '% мой %'
or name ilike 'мой'
or name ilike 'мой %'
;


-- Задание 3
--  1  Количество исполнителей в каждом жанре.
	SELECT type, count(nickname) from genre as g 
	join singergenre as s on g.id = s.genreid 
	join singer as s2 on s.singerid = s2.id 
	group by g.type;

--  2  Количество треков, вошедших в альбомы 2019–2020 годов.

SELECT COUNT(s4.id) FROM soundtrack as s4
join album as a1 on s4.album_id = a1.id 
where a1."year" between 2019 and 2020;

--  3  Средняя продолжительность треков по каждому альбому.
SELECT a.name, avg(s5.time) from album a
join soundtrack as s5 on s5.album_id = a.id
group by a.name;
--  4  Все исполнители, которые не выпустили альбомы в 2020 году.

SELECT nickname FROM singer as si
WHERE nickname NOT IN (
    SELECT nickname 
    FROM singer 
    JOIN singeralbum as sa ON si.id = sa.singerid 
    JOIN album as al ON al.id = sa.albumid 
    WHERE al.year = 2020 
);


--  5  Названия сборников, в которых присутствует конкретный исполнитель (выберите его сами).
SELECT distinct coll.name, nickname from singer si1
join singeralbum as s6 on s6.singerid = si1.id
join album as a on s6.albumid = a.id
join soundtrack as s5 on s5.album_id = a.id
join soundtrackcollection as s3 on s3.soundtrackid = s5.id
join collection as coll  on coll.id = s3.collectionid  
WHERE nickname = 'Archspire';