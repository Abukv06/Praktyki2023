select Orders.CustomerID, Orders.OrderID, CompanyName, City, Products.ProductID, ProductName
from Products
left join [Order Details]
ON [Order Details].ProductID=Products.ProductID

left join Orders
ON [Order Details].OrderID=Orders.OrderID

left join Customers
ON Orders.CustomerID=Customers.CustomerID
where City = 'México D.F.'
order by CompanyName;

SELECT Products.ProductID, ProductName, COUNT(*) as Count
FROM Products
LEFT JOIN [Order Details] ON [Order Details].ProductID = Products.ProductID
LEFT JOIN Orders ON [Order Details].OrderID = Orders.OrderID
LEFT JOIN Customers ON Orders.CustomerID = Customers.CustomerID
WHERE City = 'México D.F.'
GROUP BY Products.ProductID, ProductName
ORDER BY ProductName;
