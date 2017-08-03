--Provide a query that shows the count of customers assigned to each sales agent.
select Count(c.SupportRepId), 
	e.FirstName, 
	e.LastName
from Customer c, Employee e
where c.SupportRepId = e.EmployeeId
group by e.LastName;