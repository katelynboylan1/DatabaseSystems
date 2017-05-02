CREATE TABLE Organization (
	OGID char(4) 	not null unique, -- Organization Group ID
	GroupType text, 
	GroupName text,
	primary key(OGID)
);

CREATE TABLE MusicSystem (
	MSID char(4)	not null unique,
	SystemName text,
	primary key(MSID)
);

CREATE TABLE Collector (
	CID char(4)	not null unique,
	MSID char(4) 	not null references MusicSystem(MSID), 
	firstName text,
	lastName text,
	DOB date,
	primary key(CID),
	foreign key(MSID) references MusicSystem(MSID) -- FK1
);

CREATE TABLE CollectorGroup (
	OGID char(4)	not null unique references Organization(OGID),
	CID char(4) 	not null unique references Collector(CID),
	UNIQUE (OGID, CID),
	primary key(OGID, CID)
);

CREATE TABLE Playlist (
	PID char(4) 	not null unique,
	MSID char(4)	not null references MusicSystem(MSID), 
	CID char(4) 	not null references Collector(CID),
	Title text,
	primary key(PID),
	foreign key(MSID) references MusicSystem(MSID), -- FK1
	foreign key(CID) references Collector(CID) -- FK2
);

CREATE TABLE CollectorStore (
	CSID char(4) 	not null unique, --Collector Store ID
	StreetAddress text,
	Town text,
	State text, 		
	Country text,		
	ZipCode varchar(5),
	NumberOfCDs int,
	primary key(CSID)
);

CREATE TABLE CD (
	CDID char(4)	not null unique, --Recording ID
	CID char(4)	not null references Collector(CID),
	CSID char(4)	not null references CollectorStore(CSID),
	Title text,
	DateOfRelease date,
	ArtistName text,
	ArtistDOB date,
	primary key(CDID),
	foreign key(CID) references Collector(CID), -- FK2
	foreign key(CSID) references CollectorStore(CSID) -- FK3
);

CREATE TABLE Song (
	SID char(4)	not null unique, --Song ID
	CDID char(4)	not null references CD(CDID),
	PID char(4)	not null references Playlist(PID),
	SongName text,
	TrackNumber int,
	primary key(SID),
	foreign key(CDID) references CD(CDID), -- FK4
	foreign key(PID) references Playlist(PID) --FK5
);
