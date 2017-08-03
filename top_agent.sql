--Which sales agent made the most in sales over all?
select
    max(i.TotalSales) as "Top Sales", 
    e.FirstName as "First Name", 
    e.LastName as "Last Name"
from 
    (select 
        round(sum(i.Total), 2) as "TotalSales", 
        i.CustomerId as "CustomerId"
    from Invoice i, Employee e, Customer c
    where i.CustomerId = c.CustomerId
    and c.SupportRepId = e.EmployeeId
   group by e.EmployeeId
	) i,
Employee e, Customer c 
where i.CustomerId = c.CustomerId
and c.SupportRepId = e.EmployeeId;