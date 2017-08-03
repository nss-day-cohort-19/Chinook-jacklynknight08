-- How many Invoices were there in 2009?
select Count(*) as "Invoices In 2009"
from Invoice
where InvoiceDate like "2009%";

-- Another way to do this with BOTH 2009 and 2011:
--select Count(i.InvoiceId) NumberOfInvoices,
--	strftime("%Y", i.InvoiceDate) as InvoiceYear
--from Invoice i
--where InvoiceYear = "2011'"
--or InvoiceYear = "2009"
--group by InvoiceYear;