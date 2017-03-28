--Lab 8: Normalization 2

--Delete any tables that exist
DROP TABLE if exists People, Actors, Directors, Movies, MovieActors, MovieDirectors;

--People Table
CREATE TABLE People ( 
	pid int not null,
	firstName text not null,
	lastName text not null,
	Address varchar,
	SpouseName text,
	DOB date,
PRIMARY KEY (pid)
);

--Actors Table
CREATE TABLE Actors ( 
	pid int not null references People(pid),
	HairColor text not null,
	EyeColor text not null,
	HeightIn int not null,
	WeightLBS int not null,
	FavoriteColor text not null,
	SAGAnniversaryDate date,
	HourlyRateUSD numeric not null,
PRIMARY KEY (pid)
);

--Directors Table
CREATE TABLE Directors (
	pid int not null references People(pid),
	FilmSchoolAttended text not null,
	DGAnniversaryDate date,
	FavoriteLensMaker text null,
PRIMARY KEY (pid)
);

--Movies Table
CREATE TABLE Movies (
	mid int not null,
	ReleaseDate date not null,
	MPAAnumber int not null, 
	DomesticBoxOfficeSalesUSD numeric not null, 
	ForeignBoxOfficeSalesUSD numeric not null,
	DVD/Blu-raySalesUSD numeric not null,
PRIMARY KEY (mid)
);

--MovieActors Table
CREATE TABLE MovieActors (
	pid int not null references People(pid),
	mid int not null references Movies(mid),
UNIQUE (pid, mid)
PRIMARY KEY (pid, mid)
);

--MovieDirectors Table
CREATE TABLE MovieDirectors (
	pid int not null references People(pid),
	mid int not null references Movies(mid),
UNIQUE (pid, mid)
PRIMARY KEY (pid, mid)
);

--Insert Values into Tables
--People
INSERT INTO People (pid, firstName, lastName, Address, SpouseName, DOB)
	VALUES (01, 'Kate', 'Boylan', '6465 Arroyo Drive, Viera, FL 32940','Bob', '08-10-1995');

INSERT INTO People (pid, firstName, lastName, Address, SpouseName, DOB)
	VALUES (02, 'Heather', 'Strein', '6467 Arroyo Drive, Viera, FL 32940','Will', '04-10-1995');	

INSERT INTO People (pid, firstName, lastName, Address, SpouseName, DOB)
	VALUES (03, 'Sean', 'Connery', '6467 Arroyo Drive, Viera, FL 32940','Liz', '08-10-1960');

--Actors
INSERT INTO Actors (pid, HairColor, EyeColor, HeightIn, WeightLBS, FavoriteColor, SAGAnniversaryDate, HourlyRateUSD)
	VALUES (01, 'Blonde', 'Green', '72','140', 'Yellow','12-08-1996',1000000);

INSERT INTO Actors (pid, HairColor, EyeColor, HeightIn, WeightLBS, FavoriteColor, SAGAnniversaryDate, HourlyRateUSD)
	VALUES (03, 'Blonde', 'Blue', '80','190', 'Red','09-08-1996',5000000);
	
--Directors
INSERT INTO Directors (pid, FilmSchoolAttended, DGAnniversaryDate, FavoriteLensMaker)
	VALUES (02, 'NYU', '12-09-1996', 'Kodak');

--Movies
INSERT INTO Movies (mid, ReleaseDate, MPAAnumber, DomesticBoxOfficeSalesUSD, ForeignBoxOfficeSalesUSD, DVD/Blu-raySalesUSD)
	VALUES (01, '12-10-2017', '07', 1000000, 2000000, 3000000);

INSERT INTO Movies (mid, ReleaseDate, MPAAnumber, DomesticBoxOfficeSalesUSD, ForeignBoxOfficeSalesUSD, DVD/Blu-raySalesUSD)
	VALUES (02, '12-11-2016', '08', 1000000, 7000000, 6000000);

--MovieActors
INSERT INTO MovieActors (pid, mid)
	VALUES (01, 01);

INSERT INTO MovieActors (pid, mid)
	VALUES (03, 02);
	
--MovieDirectors
INSERT INTO MovieDirectors (pid, mid)
	VALUES (02, 01);

INSERT INTO MovieDirectors (pid, mid)
	VALUES (02, 02);

--Write a query to show all the directors with whom actor “Sean Connery” has worked.
SELECT DISTINCT p_directors.*
FROM People p_actors, People p_directors, Movie m, MovieDirectors md, MovieActors ma
WHERE m.mid = md.mid
AND   md.pid = p_directors.pid
AND   ma.pid = p_actors.pid
AND   ma.mid = m.mid
AND   p_actors.firstName = 'Sean'
AND   p_actors.lastName = 'Connery'
;

