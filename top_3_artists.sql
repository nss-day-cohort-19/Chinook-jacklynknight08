--Provide a query that shows the top 3 best selling artists.
select a.Name as "Artist", 
	Round(Sum(i.Total), 2) as "Total Sales"
from Artist a, Invoice i, Track t, InvoiceLine il, Album al
where a.ArtistId = al.ArtistId
and al.AlbumId = t.AlbumId
and t.TrackId = il.TrackId
and il.InvoiceId = i.InvoiceId
group by a.Name
order by Sum(i.Total) desc
limit 3;