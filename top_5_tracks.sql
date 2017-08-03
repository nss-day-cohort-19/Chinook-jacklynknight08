--Provide a query that shows the top 5 most purchased tracks over all.
select t.Name as "Track Name", 
	Count(il.TrackId) as "Amount Purchased"
from Track t, InvoiceLine il, Invoice i
where il.TrackId = t.TrackId
and il.InvoiceId = i.InvoiceId
group by t.Name
order by Count(il.TrackId) desc
limit 5;