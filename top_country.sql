--Which country's customers spent the most?
select c.Country as "Country",
	Round(Sum(i.Total), 2) as "Total"
from Customer c, Invoice i
where c.Country = i.BillingCountry;