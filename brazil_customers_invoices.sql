-- Provide a query showing the Invoices of Customers who are from Brazil. The resultant table should include:
-- Customer's full name
-- Invoice Id,
-- Date of the invoice
-- Billing country
SELECT FirstName || " " || LastName as FullName,
    InvoiceId,
    InvoiceDate,
    BillingCountry
From Customer
    JOIN Invoice ON Customer.CustomerId = Invoice.CustomerId
WHERE BillingCountry = "Brazil"