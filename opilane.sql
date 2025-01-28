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


------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


VIGANE KOOD 





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

 CREATE TABLE Language
(
ID int NOT NULL PRIMARY KEY,
Code char(3) NOT NULL,
Language varchar(50) NOT NULL,
IsOfficial bit,
Percentage smallint
);
Select * from Language;

INSERT INTO Language (ID, Code, Language)
VALUES (1, 'EST', 'eesti'), (2, 'RUS', 'vene'), (3, 'ENG', 'inlise'), (4, 'DE', 'saksa'),(5, 'FRA', 'prantsuse')

Create table keeleValik(
keeleValikID int primary key identity,(1,1)
valikNumetus varchar(10) not null,
opilaneId int,
Foreign key (opilaneId) references opilane(opilaneId),
Language int,
Foreign key (Language) references Language(ID)
)
select * from keeleValik;
select * from Language;
select * from opilane;

INSERT INTO keeleValik(valikNumetus, opilaneId, Language)
Values('vallik B', 1, 2)

SELECT opilane.opilaneId FROM opilane Language keeleValik
FROM opilane, Language, keeleValik
WHERE opilane.opilaneId=keeleValik(opilaneId)
AND Language(ID)=keeleValik.Language

SELECT *
FROM opilane, Language, keeleValik
WHERE opilane.opilaneId=keeleValik(opilaneId)
AND Language(ID)=keeleValik.Language

CREATE TABLE oppimine(
oppimineId int primary key identity(1,1),
aine
