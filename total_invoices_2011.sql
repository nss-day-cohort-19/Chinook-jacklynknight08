-- How many Invoices were there in 2011?
select Count(*) as "Invoices In 2011"
from Invoice
where InvoiceDate like "2011%";