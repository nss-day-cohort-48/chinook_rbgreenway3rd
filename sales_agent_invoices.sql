-- Provide a query that shows the invoices associated with each sales agent. The resultant table should include:
-- Sales Agent's full name
-- Invoice ID
SELECT Employee.FirstName || " " || Employee.LastName as FullName,
    Invoice.InvoiceId,
    Invoice.CustomerId,
    Invoice.InvoiceDate,
    Invoice.Total
FROM Invoice
    JOIN Customer ON Invoice.CustomerId = Customer.CustomerId
    JOIN Employee ON Customer.SupportRepId = Employee.EmployeeId
ORDER BY FullName