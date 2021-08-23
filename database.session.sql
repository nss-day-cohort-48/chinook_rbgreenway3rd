SELECT *
From Employee
    JOIN Customer ON Customer.SupportRepId = Employee.EmployeeId
    JOIN Invoice ON Customer.CustomerId = Invoice.CustomerId