 --AB loomine
 Create database UsakovBaas;

 use UsakovBaas;
 CREATE TABLE opilane(
 opilaneId int primary key identity(1,1),
 eesnimi varchar(25) not null,
 perenimi varchar(25) not null,
 synniaeg date, 
 stip bit,
 aadres text,
 keskmine_hinne decimal(2,1)
 )
 select * from opilane;
 --andmete lisamine tabelisse 
 INSERT INTO opilane(
 eesnimi,
 perenimi,
 synniaeg,
 stip,
 keskmine_hinne)
 VALUES(
 'Robert',
 'Robert',
 '2008-05-19',
 1,
 4.5),
 (
 'Robert2',
 'Robert2',
 '2008-05-19',
 1,
 4.5),
 (
 'Robert3',
 'Robert3',
 '2008-05-19',
 1,
 4.5),
 (
 'Robert4',
 'Robert4',
 '2008-05-19',
 1,
 4.5),
 (
 'Robert5',
 'Robert5',
 '2008-05-19',
 1,
 4.5)
 --tabeli kustutamine
 drop table opilane;
 --rida kustamine, kus on opilaneId=2
 DELETE FROM opilane WHERE opilaneId=2;
 select * from opilane;

 --andmete uuendamine
 UPDATE opilane SET aadres='Tallinn'
 WHERE opilaneId=3
