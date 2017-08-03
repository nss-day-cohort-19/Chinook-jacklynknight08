--Which sales agent made the most in sales in 2009?
select
	max(i.TotalSales) as "Highest Sales in 2009",
	e.FirstName,
	e.LastName
from 
	(select
		sum(i.Total) as "TotalSales", 
        i.CustomerId as "CustomerId"
    from Invoice i, Employee e, Customer c
    where i.InvoiceDate like "2009%"
    and i.CustomerId = c.CustomerId
    and c.SupportRepId = e.EmployeeId
    group by e.EmployeeId
	) i,
Employee e, Customer c 
where i.CustomerId = c.CustomerId
and c.SupportRepId = e.EmployeeId;