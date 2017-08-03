--Provide a query that shows the total sales per country.
select i.BillingCountry as "Country",
	Sum(i.Total) as "Total Sales"
from Invoice i
group by "Country";