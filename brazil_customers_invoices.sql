--Provide a query showing the Invoices of customers who are from Brazil. 
--The resultant table should show the customer's full name, Invoice ID, Date of 
--the invoice and billing country.
select i.InvoiceId, i.InvoiceDate, i.BillingCountry, c.FirstName, c.LastName
from Invoice i, Customer c
where c.Country = "Brazil"
and i.CustomerId = c.CustomerId;