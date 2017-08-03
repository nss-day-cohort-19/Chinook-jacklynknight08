--Provide a query that shows all Invoices but includes the # of invoice line items.
select i.*, Count(il.InvoiceLineId)
from Invoice i, InvoiceLine il
where i.InvoiceId = il.InvoiceId
group by i.InvoiceId;
