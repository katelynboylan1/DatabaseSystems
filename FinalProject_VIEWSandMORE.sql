--VIEWS
--CollectorSongs connects PID in Songs to Playlist name 
CREATE VIEW CollectorSongs AS
select song.SID, song.CDID, song.PID, Song.SongName, Song.TrackNumber, Playlist.Title 
FROM Song, Playlist
WHERE song.PID = playlist.PID

SELECT * FROM CollectorSongs;

--PlaylistMusicSystem connects MSID to Music System Name for each playlist
CREATE VIEW PlaylistMusicSystem AS
select playlist.PID, playlist.MSID, playlist.CID, playlist.Title, MusicSystem.SystemName
FROM Playlist, MusicSystem
WHERE playlist.MSID = MusicSystem.MSID

SELECT * FROM PlaylistMusicSystem;

--CollectorSongsInPlaylist shows each song to its playlist and its Collector alongside 
CREATE VIEW CollectorSongsInPlaylist AS
SELECT DISTINCT p.PID, p.MSID, p.Title, c.CID, c.firstName, c.lastName, s.SID, s.songName
FROM Collector c, Playlist p, song s
WHERE p.cid = c.cid
AND s.pid = p.pid
ORDER BY PID ASC;

SELECT * FROM CollectorSongsInPlaylist;

--REPORTS
--All stores with over 500 CDs
SELECT  CSID, NumberOfCDs
FROM CollectorStore
WHERE NumberOfCDs >=500 ;

--All Playlists that Kate has 
SELECT PID, Playlist.Title
FROM Playlist
WHERE CID in (SELECT distinct CID
	      FROM Collector
	      WHERE firstName = 'Kate')
;

--All CollectorGroups and People from a fraternity or sorority
SELECT distinct CollectorGroup.OGID, CollectorGroup.CID, Organization.GroupType
FROM CollectorGroup, Organization
WHERE (GroupType = 'Sorority'
	OR GroupType = 'Fraternity')
AND organization.ogid=collectorgroup.ogid
ORDER BY OGID ASC;

-- ALL Songs from a given collector group
SELECT * FROM song,CD
WHERE song.cdid = cd.cdid
AND cid IN (SELECT CID 
	    FROM collector 
	    WHERE CID in (SELECT CID 
			  FROM collectorgroup,organization 
			  WHERE organization.ogid = collectorgroup.ogid 
			  AND GroupName like '%Kappa Kappa%'
			  )
	    )
;

--STORED PROCEDURE
--Get Song by Playlist 
create or replace function Get_Song_by_Playlist(INT, REFCURSOR) returns refcursor as 
$$
declare
	SONG_ID INT                    := $1;
	resultset   REFCURSOR		:= $2;
begin
  open resultset for
	select s.SongName, p.Title
	from Song s, Playlist p
	where SONG_ID = cast(s.SID as int)
	and s.PID = p.PID;
	return resultset;
end;
$$ 
language plpgsql;

select Get_Song_by_Playlist(1, 'results');
Fetch all from results;

--SECURITY
--Database ADMIN
CREATE ROLE DatabaseAdmin;
Grant select, insert, update on all tables in schema public
to DatabaseAdmin;

--Organization Role who may not collect music anymore or new organizations get involved
CREATE ROLE Organization;
Grant select, insert, update on all tables in schema public
to Organization;

--Collector Role who may add songs to their playlist after buying a new CD from a new store
CREATE ROLE Collector;
Grant select, insert on all tables in schema public
to Collector;

