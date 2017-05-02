--Organization Table

INSERT INTO Organization (OGID, GroupType, GroupName)
	VALUES (01, 'Sorority', 'Kappa Kappa Gamma');

INSERT INTO Organization (OGID, GroupType, GroupName)
	VALUES (02, 'Fraternity', 'Kappa Sigma');

INSERT INTO Organization (OGID, GroupType, GroupName)
	VALUES (03, 'Band', 'Marist College Band');

INSERT INTO Organization (OGID, GroupType, GroupName)
	VALUES (04, 'Sorority', 'Sigma Sigma Sigma');
	
INSERT INTO Organization (OGID, GroupType, GroupName)
	VALUES (05, 'Club', 'Computer Science Society');

INSERT INTO Organization (OGID, GroupType, GroupName)
	VALUES (06, 'Sports team', 'Swimming and Diving');


--Music System Table
INSERT INTO MusicSystem (MSID, SystemName)
	VALUES (01, 'Spotify');
	
INSERT INTO MusicSystem (MSID, SystemName)
	VALUES (02, 'iTunes');

INSERT INTO MusicSystem (MSID, SystemName)
	VALUES (03, 'Pandora');

INSERT INTO MusicSystem(MSID, SystemName)
	VALUES (04, 'Apple Music');

--Collector Table

INSERT INTO Collector (CID, MSID, firstName, lastName, DOB)
	VALUES (01, 01, 'Alan', 'Laboseur', '12-10-1990');

INSERT INTO Collector (CID, MSID, firstName, lastName, DOB)
	VALUES (02, 02, 'Kate', 'Boylan', '08-10-1995');

INSERT INTO Collector (CID, MSID, firstName, lastName, DOB)
	VALUES (03, 04, 'Cory', 'Lang', '12-11-1995');

INSERT INTO Collector (CID, MSID, firstName, lastName, DOB)
	VALUES (04, 03, 'Heather','Strein', '11-21-1996');

INSERT INTO Collector (CID, MSID, firstName, lastName, DOB)
	VALUES (05, 02, 'Bob', 'Smith', '01-21-1970');

INSERT INTO Collector (CID, MSID, firstName, lastName, DOB)
	VALUES (06, 01, 'Lauren', 'Powell', '06-05-1980');


--Collector Group Table

INSERT INTO CollectorGroup (OGID, CID)
	VALUES (05, 01);

INSERT INTO CollectorGroup (OGID, CID)
	VALUES (01, 02);

INSERT INTO CollectorGroup (OGID, CID)
	VALUES (04, 04);
	
INSERT INTO CollectorGroup (OGID, CID)
	VALUES (02, 03);

INSERT INTO CollectorGroup (OGID, CID)
	VALUES (06, 05);

INSERT INTO CollectorGroup (OGID, CID)
	VALUES (03, 06);

--Playlist Group Table

INSERT INTO Playlist (PID, MSID, CID, Title)
	VALUES (01, 01, 01, 'Have a Great Day!');

INSERT INTO Playlist (PID, MSID, CID, Title)
	VALUES (02, 02, 02, 'Senior Year Pt2');

INSERT INTO Playlist (PID, MSID, CID, Title)
	VALUES (03, 04, 02, 'Summer Jams');

INSERT INTO Playlist (PID, MSID, CID, Title)
	VALUES (04, 03, 04, 'Hits of the 90s');

INSERT INTO Playlist (PID, MSID, CID, Title)
	VALUES (05, 02, 05, 'Afternoon Acoustic');

INSERT INTO Playlist (PID, MSID, CID, Title)
	VALUES (06, 04, 06, 'Old School');

--Collector Store Group Table

INSERT INTO CollectorStore (CSID, StreetAddress, Town, State, Country, ZipCode, NumberOfCDs)
	VALUES(01, '6465 Arroyo Drive', 'Viera', 'FL', 'USA', '32940', 700);

INSERT INTO CollectorStore (CSID, StreetAddress, Town, State, Country, ZipCode, NumberOfCDs)
	VALUES(02, '79 Saddle Rock Road', 'East Setauket', 'NY', 'USA', '11733', 200);

INSERT INTO CollectorStore (CSID, StreetAddress, Town, State, Country, ZipCode, NumberOfCDs)
	VALUES(03, '4410 North Road', 'Poughkeepsie', 'NY', 'USA', '12601', 500);

--CD Group Table
INSERT INTO CD(CDID, CID, CSID, Title, DateOfRelease, ArtistName, ArtistDOB)
	VALUES(01, 03, 01, 'LaLa Land Sountrack', '01-01-2017', 'LaLa Land Cast', '9999-01-01');

INSERT INTO CD(CDID, CID, CSID, Title, DateOfRelease, ArtistName, ArtistDOB)
	VALUES(02, 04, 01, 'Cocoon', '09-14-2016', 'Milky Chance', '09-08-1975');

INSERT INTO CD(CDID, CID, CSID, Title, DateOfRelease, ArtistName, ArtistDOB)
	VALUES(03, 05, 03, 'Young New England', '08-14-2006', 'Transit', '10-31-1981');

INSERT INTO CD(CDID, CID, CSID, Title, DateOfRelease, ArtistName, ArtistDOB)
	VALUES(04, 05, 03, 'Leave Before the Light Comes On', '12-25-20012', 'Arctic Monkeys', '9999-01-01');

INSERT INTO CD(CDID, CID, CSID, Title, DateOfRelease, ArtistName, ArtistDOB)
	VALUES(05, 06, 02,'Calling the World', '06-05-2010', 'Rooney', '9999-01-01');

INSERT INTO CD(CDID, CID, CSID, Title, DateOfRelease, ArtistName, ArtistDOB)
	VALUES(06, 01, 03,'Divide', '02-01-2017', 'Ed Sheeran', '05-04-1990');

INSERT INTO CD(CDID, CID, CSID, Title, DateOfRelease, ArtistName, ArtistDOB)
	VALUES(07, 01, 02, 'Multiply', '05-08-2015', 'Ed Sheeran', '05-04-1990');

INSERT INTO CD(CDID, CID, CSID, Title, DateOfRelease, ArtistName, ArtistDOB)
	VALUES(08, 02, 02,'24K Magic', '01-12-2014', 'Bruno Mars', '04-20-1983');

INSERT INTO CD(CDID, CID, CSID, Title, DateOfRelease, ArtistName, ArtistDOB)
	VALUES(09, 02, 02,'Death of a Bachelor', '08-10-1995', 'Panic! At the Disco', '06-12-1980');

INSERT INTO CD(CDID, CID, CSID, Title, DateOfRelease, ArtistName, ArtistDOB)
	VALUES(10, 03, 01, 'Lovely Little Lonely', '07-30-2010', 'The Maine', '9999-01-01');

--Song Group Table
INSERT INTO Song(SID, CDID, PID, SongName, TrackNumber) values(1,6,1,'Eraser',1);
INSERT INTO Song(SID, CDID, PID, SongName, TrackNumber) values(2,6,1,'Castle On the Hill',2);
INSERT INTO Song(SID, CDID, PID, SongName, TrackNumber) values(3,6,1,'Dive',3);
INSERT INTO Song(SID, CDID, PID, SongName, TrackNumber) values(4,6,1,'Shape of you',4);
INSERT INTO Song(SID, CDID, PID, SongName, TrackNumber) values(5,6,1,'Perfect',5);
INSERT INTO Song(SID, CDID, PID, SongName, TrackNumber) values(6,6,1,'Galway Girl',6);
INSERT INTO Song(SID, CDID, PID, SongName, TrackNumber) values(7,6,1,'Happier',7);
INSERT INTO Song(SID, CDID, PID, SongName, TrackNumber) values(8,6,1,'New Man',8);
INSERT INTO Song(SID, CDID, PID, SongName, TrackNumber) values(9,6,1,'Hearts Dont Break Around Here',9);
INSERT INTO Song(SID, CDID, PID, SongName, TrackNumber) values(10,6,1,'What Do I Know',10);
INSERT INTO Song(SID, CDID, PID, SongName, TrackNumber) values(11,6,1,'How Would you feel',11);
INSERT INTO Song(SID, CDID, PID, SongName, TrackNumber) values(12,6,1,'Supermarket Flowers',12);
INSERT INTO Song(SID, CDID, PID, SongName, TrackNumber) values(13,6,1,'Barcelona',13);
INSERT INTO Song(SID, CDID, PID, SongName, TrackNumber) values(14,6,1,'Bibia Be Ye Ye',14);
INSERT INTO Song(SID, CDID, PID, SongName, TrackNumber) values(15,6,1,'Nancy Mulligan',15);
INSERT INTO Song(SID, CDID, PID, SongName, TrackNumber) values(16,6,1,'Save Myself',16);
INSERT INTO Song(SID, CDID, PID, SongName, TrackNumber) values(17,7,1,'One',1);
INSERT INTO Song(SID, CDID, PID, SongName, TrackNumber) values(18,7,1,'Im A Mess',2);
INSERT INTO Song(SID, CDID, PID, SongName, TrackNumber) values(19,7,1,'Sing',3);
INSERT INTO Song(SID, CDID, PID, SongName, TrackNumber) values(20,7,1,'Don’t',4);
INSERT INTO Song(SID, CDID, PID, SongName, TrackNumber) values(21,7,1,'Nina',5);
INSERT INTO Song(SID, CDID, PID, SongName, TrackNumber) values(22,7,1,'Photograph',6);
INSERT INTO Song(SID, CDID, PID, SongName, TrackNumber) values(23,7,1,'Bloodstream',7);
INSERT INTO Song(SID, CDID, PID, SongName, TrackNumber) values(24,7,1,'Tenefire Sea',8);
INSERT INTO Song(SID, CDID, PID, SongName, TrackNumber) values(25,7,1,'Runaway ',9);
INSERT INTO Song(SID, CDID, PID, SongName, TrackNumber) values(26,7,1,'The Man',10);
INSERT INTO Song(SID, CDID, PID, SongName, TrackNumber) values(27,7,1,'Thinking Out Loud',11);
INSERT INTO Song(SID, CDID, PID, SongName, TrackNumber) values(28,7,1,'Afire Love',12);
INSERT INTO Song(SID, CDID, PID, SongName, TrackNumber) values(29,7,1,'Take It Back',13);
INSERT INTO Song(SID, CDID, PID, SongName, TrackNumber) values(30,7,1,'Shirtsleeves',14);
INSERT INTO Song(SID, CDID, PID, SongName, TrackNumber) values(31,7,1,'Even My Dad does sometimes',15);
INSERT INTO Song(SID, CDID, PID, SongName, TrackNumber) values(32,7,1,'I See Fire',16);
INSERT INTO Song(SID, CDID, PID, SongName, TrackNumber) values(33,8,2,'24K Magic',1);
INSERT INTO Song(SID, CDID, PID, SongName, TrackNumber) values(34,8,2,'Chunky',2);
INSERT INTO Song(SID, CDID, PID, SongName, TrackNumber) values(35,8,2,'Perm',3);
INSERT INTO Song(SID, CDID, PID, SongName, TrackNumber) values(36,8,2,'Thats What I Like',4);
INSERT INTO Song(SID, CDID, PID, SongName, TrackNumber) values(37,8,2,'Versace On the Floor',5);
INSERT INTO Song(SID, CDID, PID, SongName, TrackNumber) values(38,8,2,'Straight Up Down',6);
INSERT INTO Song(SID, CDID, PID, SongName, TrackNumber) values(39,8,2,'Calling All My Lovelies',7);
INSERT INTO Song(SID, CDID, PID, SongName, TrackNumber) values(40,8,2,'Finesse',8);
INSERT INTO Song(SID, CDID, PID, SongName, TrackNumber) values(41,8,2,'Too Good to say Goodbye',9);
INSERT INTO Song(SID, CDID, PID, SongName, TrackNumber) values(42,9,2,'Victorious',1);
INSERT INTO Song(SID, CDID, PID, SongName, TrackNumber) values(43,9,2,'Dont Threaten Me With a Good Time',2);
INSERT INTO Song(SID, CDID, PID, SongName, TrackNumber) values(44,9,2,'Hallelujah',3);
INSERT INTO Song(SID, CDID, PID, SongName, TrackNumber) values(45,9,2,'Emperors New Clothes',4);
INSERT INTO Song(SID, CDID, PID, SongName, TrackNumber) values(46,9,2,'Death of a Bachelor',5);
INSERT INTO Song(SID, CDID, PID, SongName, TrackNumber) values(47,9,2,'Crazy is Genius',6);
INSERT INTO Song(SID, CDID, PID, SongName, TrackNumber) values(48,9,2,'LA Devotee',7);
INSERT INTO Song(SID, CDID, PID, SongName, TrackNumber) values(49,9,2,'Golden Days',8);
INSERT INTO Song(SID, CDID, PID, SongName, TrackNumber) values(50,9,2,'The Good The Bad and the Dirty',9);
INSERT INTO Song(SID, CDID, PID, SongName, TrackNumber) values(51,9,2,'House of Memories',10);
INSERT INTO Song(SID, CDID, PID, SongName, TrackNumber) values(52,9,2,'Impossible Year',11);
INSERT INTO Song(SID, CDID, PID, SongName, TrackNumber) values(53,10,3,'Dont Come Down',1);
INSERT INTO Song(SID, CDID, PID, SongName, TrackNumber) values(54,10,3,'Bad Behavior',2);
INSERT INTO Song(SID, CDID, PID, SongName, TrackNumber) values(55,10,3,'Lovely',3);
INSERT INTO Song(SID, CDID, PID, SongName, TrackNumber) values(56,10,3,'Black Butterflies and déjà vu',4);
INSERT INTO Song(SID, CDID, PID, SongName, TrackNumber) values(57,10,3,'Taxi',5);
INSERT INTO Song(SID, CDID, PID, SongName, TrackNumber) values(58,10,3,'Do you Remember',6);
INSERT INTO Song(SID, CDID, PID, SongName, TrackNumber) values(59,10,3,'Little',7);
INSERT INTO Song(SID, CDID, PID, SongName, TrackNumber) values(60,10,3,'The Sound of Reverie',8);
INSERT INTO Song(SID, CDID, PID, SongName, TrackNumber) values(61,10,3,'Lost in Nostalgia',9);
INSERT INTO Song(SID, CDID, PID, SongName, TrackNumber) values(62,10,3,'I Only Wanna Talk to you',10);
INSERT INTO Song(SID, CDID, PID, SongName, TrackNumber) values(63,10,3,'Lonely',11);
INSERT INTO Song(SID, CDID, PID, SongName, TrackNumber) values(64,10,3,'How do you feel',12);
INSERT INTO Song(SID, CDID, PID, SongName, TrackNumber) values(65,1,3,'Another Day of Sun',1);
INSERT INTO Song(SID, CDID, PID, SongName, TrackNumber) values(66,1,3,'Someone in the crowd',2);
INSERT INTO Song(SID, CDID, PID, SongName, TrackNumber) values(67,1,3,'Mia and Sebastians Theme',3);
INSERT INTO Song(SID, CDID, PID, SongName, TrackNumber) values(68,1,3,'A lovely night',4);
INSERT INTO Song(SID, CDID, PID, SongName, TrackNumber) values(69,1,3,'Hemans Habit',5);
INSERT INTO Song(SID, CDID, PID, SongName, TrackNumber) values(70,1,3,'City of Stars',6);
INSERT INTO Song(SID, CDID, PID, SongName, TrackNumber) values(71,1,3,'Planetarium',7);
INSERT INTO Song(SID, CDID, PID, SongName, TrackNumber) values(72,1,3,'Summer Montage and Madeline',8);
INSERT INTO Song(SID, CDID, PID, SongName, TrackNumber) values(73,1,3,'Start a fire',9);
INSERT INTO Song(SID, CDID, PID, SongName, TrackNumber) values(74,1,3,'Engagement Party',10);
INSERT INTO Song(SID, CDID, PID, SongName, TrackNumber) values(75,1,3,'Audition',11);
INSERT INTO Song(SID, CDID, PID, SongName, TrackNumber) values(76,1,3,'Epilogue',12);
INSERT INTO Song(SID, CDID, PID, SongName, TrackNumber) values(77,1,3,'The End',13);
INSERT INTO Song(SID, CDID, PID, SongName, TrackNumber) values(78,2,4,'Blossom',1);
INSERT INTO Song(SID, CDID, PID, SongName, TrackNumber) values(79,2,4,'Ego',2);
INSERT INTO Song(SID, CDID, PID, SongName, TrackNumber) values(80,2,4,'Firebird',3);
INSERT INTO Song(SID, CDID, PID, SongName, TrackNumber) values(81,2,4,'Doing good',4);
INSERT INTO Song(SID, CDID, PID, SongName, TrackNumber) values(82,2,4,'Clouds',5);
INSERT INTO Song(SID, CDID, PID, SongName, TrackNumber) values(83,2,4,'Cold Blue Rain',6);
INSERT INTO Song(SID, CDID, PID, SongName, TrackNumber) values(84,2,4,'Stay',7);
INSERT INTO Song(SID, CDID, PID, SongName, TrackNumber) values(85,2,4,'Bad Things',8);
INSERT INTO Song(SID, CDID, PID, SongName, TrackNumber) values(86,2,4,'Cocoon',9);
INSERT INTO Song(SID, CDID, PID, SongName, TrackNumber) values(87,2,4,'Losing you',10);
INSERT INTO Song(SID, CDID, PID, SongName, TrackNumber) values(88,2,4,'Peripeteia',11);
INSERT INTO Song(SID, CDID, PID, SongName, TrackNumber) values(89,2,4,'Alive',12);
INSERT INTO Song(SID, CDID, PID, SongName, TrackNumber) values(90,2,4,'Piano Song',13);
INSERT INTO Song(SID, CDID, PID, SongName, TrackNumber) values(91,2,4,'Heartless',14);
INSERT INTO Song(SID, CDID, PID, SongName, TrackNumber) values(92,3,5,'Nothing lasts forever',1);
INSERT INTO Song(SID, CDID, PID, SongName, TrackNumber) values(93,3,5,'Second to right',2);
INSERT INTO Song(SID, CDID, PID, SongName, TrackNumber) values(94,3,5,'Young new england',3);
INSERT INTO Song(SID, CDID, PID, SongName, TrackNumber) values(95,3,5,'Sleep',4);
INSERT INTO Song(SID, CDID, PID, SongName, TrackNumber) values(96,3,5,'So long so long',5);
INSERT INTO Song(SID, CDID, PID, SongName, TrackNumber) values(97,3,5,'Weathered Souls',6);
INSERT INTO Song(SID, CDID, PID, SongName, TrackNumber) values(98,3,5,'Hang it up',7);
INSERT INTO Song(SID, CDID, PID, SongName, TrackNumber) values(99,3,5,'Dont go Dont stray',8);
INSERT INTO Song(SID, CDID, PID, SongName, TrackNumber) values(100,3,5,'Thanks for nothing',9);
INSERT INTO Song(SID, CDID, PID, SongName, TrackNumber) values(101,3,5,'Summer ME',10);
INSERT INTO Song(SID, CDID, PID, SongName, TrackNumber) values(102,3,5,'Hazy',11);
INSERT INTO Song(SID, CDID, PID, SongName, TrackNumber) values(103,3,5,'Bright Lights Dark Shadows',12);
INSERT INTO Song(SID, CDID, PID, SongName, TrackNumber) values(104,3,5,'Lake Q',13);
INSERT INTO Song(SID, CDID, PID, SongName, TrackNumber) values(105,4,5,'Leave before the light comes on',1);
INSERT INTO Song(SID, CDID, PID, SongName, TrackNumber) values(106,4,5,'Put your dukes up john',2);
INSERT INTO Song(SID, CDID, PID, SongName, TrackNumber) values(107,4,5,'Baby Im yours',3);
INSERT INTO Song(SID, CDID, PID, SongName, TrackNumber) values(108,5,6,'Calling the World',1);
INSERT INTO Song(SID, CDID, PID, SongName, TrackNumber) values(109,5,6,'When did your heart go missing',2);
INSERT INTO Song(SID, CDID, PID, SongName, TrackNumber) values(110,5,6,'I shouldve been after you',3);
INSERT INTO Song(SID, CDID, PID, SongName, TrackNumber) values(111,5,6,'Tell me soon',4);
INSERT INTO Song(SID, CDID, PID, SongName, TrackNumber) values(112,5,6,'Dont come around again',5);
INSERT INTO Song(SID, CDID, PID, SongName, TrackNumber) values(113,5,6,'are you afraid',6);
INSERT INTO Song(SID, CDID, PID, SongName, TrackNumber) values(114,5,6,'Love me or leave me',7);
INSERT INTO Song(SID, CDID, PID, SongName, TrackNumber) values(115,5,6,'paralyzed',8);
INSERT INTO Song(SID, CDID, PID, SongName, TrackNumber) values(116,5,6,'What for',9);
INSERT INTO Song(SID, CDID, PID, SongName, TrackNumber) values(117,5,6,'All in your Head',10);
INSERT INTO Song(SID, CDID, PID, SongName, TrackNumber) values(118,5,6,'Believe in me',11);
INSERT INTO Song(SID, CDID, PID, SongName, TrackNumber) values(119,5,6,'Help me find my way',12);
