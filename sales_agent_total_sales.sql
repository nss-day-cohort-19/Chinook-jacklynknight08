--Provide a query that shows total sales made by each sales agent.
select
    e.FirstName as "First Name",
	e.LastName as "Last Name",
    round(sum(i.Total), 2) as "Total Sales"
from Employee e, Invoice i, Customer c
where i.CustomerId = c.CustomerId
and c.SupportRepId = e.EmployeeId
group by e.LastName;