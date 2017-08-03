--What are the respective total sales for 2009?
select "$'"|| Sum(Total) as "Total Sales in 2009"
from Invoice
where InvoiceDate like "2009%";