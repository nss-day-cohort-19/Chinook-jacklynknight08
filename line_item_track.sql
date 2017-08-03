-- Provide a query that includes the purchased track name with each invoice line item.
select t.Name as "Track Name", il.InvoiceLineId as "Invoice Line ID"
from InvoiceLine il, Track t
where il.TrackId = t.TrackId;