--Provide a query that shows the total number of tracks in each playlist. The Playlist name 
--should be include on the resulant table.
select Count(pt.TrackId) as "Amount of Tracks",  p.Name as "Playlist Name"
from PlaylistTrack pt, Playlist p
where pt.PlaylistId = p.PlaylistId
group by p.Name;