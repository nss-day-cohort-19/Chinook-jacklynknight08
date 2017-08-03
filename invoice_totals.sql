--Provide a query that shows the Invoice Total, Customer name, Country and Sale Agent name for 
--all invoices and customers
select c.FirstName as CustFirstName, c.LastName as CustLastName, c.Country, i.Total, e.FirstName as EmpFirstName, e.LastName as EmpLastName
from Employee e, Invoice i, Customer c
where c.SupportRepId = e.EmployeeId
and i.CustomerId = c.CustomerId;