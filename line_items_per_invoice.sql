-- Looking at the InvoiceLine table, provide a query that COUNTs the number
--of line items for each Invoice. HINT: GROUP BY
select Count(*) as "Line Items for Each Invoice"
from InvoiceLine
group by InvoiceId;