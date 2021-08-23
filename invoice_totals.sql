-- Provide a query that shows the customers and employees associated with each invoice. The resultant table should include:
-- Invoice Total
-- Customer Name
-- Customer Country
-- Sale Agent full name
SELECT Employee.FirstName || " " || Employee.LastName as SalesAgentFullName,
    Customer.FirstName || " " || Customer.LastName as CustomerFullName,
    Customer.Country as CustomerCountry,
    Invoice.InvoiceId,
    Invoice.Total
FROM Invoice
    JOIN Customer ON Invoice.CustomerId = Customer.CustomerId
    JOIN Employee ON Customer.SupportRepId = Employee.EmployeeId