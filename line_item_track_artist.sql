--Provide a query that includes the purchased track name AND artist name with each 
--invoice line item.
select t.Name as "Purchased Track Name", a.Name as "Artist Name", il.InvoiceLineId
from InvoiceLine il, Track t, Album al, Artist a
where il.TrackId = t.TrackId
and al.ArtistId = a.ArtistId; 