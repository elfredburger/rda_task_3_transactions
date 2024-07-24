USE ShopDB; 

INSERT INTO Products (Name, Description, Price, WarehouseAmount)
VALUES ('AwersomeProduct', 'Product Desctiption', 5, 42);

INSERT INTO Customers (FirstName, LastName, Email, Address)
VALUES ('John', 'Dou', 'j@dou.ua', 'far, far away');

START TRANSACTION; 

INSERT INTO Orders (CustomerID, Date)
VALUES (1, NOW());

INSERT INTO OrderItems(OrderID, ProductID, Count)
VALUES (1,1,1);

UPDATE Products SET WareHouseAmount = WareHouseAmount -1 WHERE ID = 1;

COMMIT;
