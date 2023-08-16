INSERT INTO genre(type)
values ('metal'),('pop'),('hip hop');

INSERT INTO singer(nickname)
values ('Anaal Nathrakh'),
('Archspire'),
('Freddie Gibbs'),
('Big L'),
('Kylie Minogue'),
('Fergie'),
('Benny the Butcher'),
('Gang Starr');

INSERT INTO album(name, year)
values ('A New Kind Of Horror', '2018'),
('Bleed The Future', '2021'),
('Freddie', '2018'),
('Lifestylez Ov Da Poor & Dangerous', '1995'),
('Fever', '2001'),
('The Dutchess', '2006'),
('Tana Talk', '2018'),
('Moment of Truth', '1998');

INSERT INTO soundtrack (name, time, album_id)
values ('Forward!', '209', 1),
('Drone Corpse Aviator', '226', 2),
('Golden Mouth Of Ruin', '245', 2),
('Acrid Canon', '248', 2),
('Automatic', '152', 3),
('Set Set', '148', 3),
('Put It On', '217', 4),
('All Black', '261', 4),
('Cant Get You Out Of My Head', '230', 5),
('More More More', '282', 5),
('Fergalicious', '228', 6),
('Glamorous', '250', 6),
('Rubber Bands & Weight', '233', 7),
('Joe Pesci 38', '214', 7),
('Above The Clouds', '222', 8),
('Betrayal', '330', 8);

INSERT INTO collection (name, year)
values ('Adrenaline Pump', '2022'), ('Beastcoast', '2019'),('Mid Era Pop', '2007'), ('East Coast Classics', '2015'); 

INSERT INTO singergenre (singerid, genreid)
values (1, 1),(2, 1),(3, 3),(4, 3),(5, 2),(6, 2),(7,3),(8,3);


INSERT INTO singeralbum (singerid, albumid)
values (1, 1),(2, 2),(3, 3),(4, 4),(5, 5),(6, 6),(7, 7),(8, 8);

INSERT INTO soundtrackcollection (soundtrackid, collectionid)
values (1,1),(2,1),(3,1),(4,1),(5,2),(6,2),(13,2),
(14,2),(7,4),(8,4),(15,4),(16,4),(9,3),(10,3),(11,3),(12,3);