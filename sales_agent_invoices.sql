--Provide a query that shows the invoices associated with each sales agent. The resultant table
-- should include the Sales Agent's full name.
select e.FirstName, e.LastName, i.InvoiceId
from Employee e, Invoice i, Customer c
where e.EmployeeId = c.SupportRepId
and c.CustomerId = i.CustomerId;