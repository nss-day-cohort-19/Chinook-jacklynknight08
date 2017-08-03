--Provide a query that shows the most purchased Media Type.
select m.Name as "Most Purchased Media Type",
	Count(i.Total) as "Number of Purchases"
from MediaType m, Track t, InvoiceLine il, Invoice i
where m.MediaTypeId = t.MediaTypeId
and t.TrackId = il.TrackId
and il.InvoiceId = i.InvoiceId;