--Provide a query that shows the # of invoices per country. HINT: GROUP BY
select Count(InvoiceId) as "# of Invoices", BillingCountry
from Invoice
Group by BillingCountry;
