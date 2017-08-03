--Provide a query that shows the most purchased track of 2013.
select t.Name as "Track Name", Count(il.TrackId) as "Times Purchased"
from Track t, InvoiceLine il, Invoice i
where il.TrackId = t.TrackId
and il.InvoiceId = i.InvoiceId
and i.InvoiceDate like "2013%"
group by t.Name
order by Count(il.TrackId) desc
limit 1;