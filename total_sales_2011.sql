-- What are the respective total sales for 2011?
select "$" || Sum(Total) as "Total Sales in 2011"
from Invoice
where InvoiceDate like '2011%';
