-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.

    SELECT ProductName, CategoryId from Product;

-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.

    select [Order].Id, [Order].OrderDate, s.CompanyName
    from [Order]
    join Shipper as s ON (s.id = [Order].Shipvia)
    WHERE OrderDate < '2012-08-09'; 

-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.

    Select p.ProductName, OD.quantity from OrderDetail as OD
    join Product as p ON (OD.ProductId = p.id)
    Where OrderId = 10251;

-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.

    Select [Order].Id, Customer.CompanyName, Employee.LastName  from [Order]
    join Customer ON (Customer.Id = [Order].CustomerId)
    join Employee ON (Employee.Id = [Order].EmployeeId);