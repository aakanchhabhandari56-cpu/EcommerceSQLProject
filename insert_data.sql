-- Insert sample data

-- Customers
INSERT INTO Customers (Name, Email, Phone, Address) VALUES
('Alice Johnson', 'alice@example.com', '555-1010', '123 Main St'),
('Bob Smith', 'bob@example.com', '555-2020', '456 Oak Ave'),
('Carol Lee', 'carol@example.com', '555-3030', '789 Pine Rd');

-- Categories
INSERT INTO Categories (CategoryName, Description) VALUES
('Electronics', 'Devices and gadgets'),
('Clothing', 'Apparel and accessories'),
('Books', 'Books and stationery');

-- Suppliers
INSERT INTO Suppliers (Name, Contact, Address) VALUES
('Tech Supplies Inc.', 'tech@example.com', '12 Tech Park'),
('Fashion Hub', 'fashion@example.com', '34 Style St'),
('Book World', 'books@example.com', '56 Book Ln');

-- Products
INSERT INTO Products (Name, CategoryID, Price, StockQuantity) VALUES
('Laptop', 1, 1200.00, 15),
('Headphones', 1, 150.00, 50),
('T-Shirt', 2, 25.00, 100),
('Jeans', 2, 60.00, 60),
('Novel: The Great Adventure', 3, 20.00, 40);

-- Inventory
INSERT INTO Inventory (ProductID, SupplierID, QuantityAvailable) VALUES
(1, 1, 15),
(2, 1, 50),
(3, 2, 100),
(4, 2, 60),
(5, 3, 40);

-- Orders
INSERT INTO Orders (CustomerID, OrderDate, TotalAmount) VALUES
(1, '2026-02-10', 1450.00),
(2, '2026-02-11', 85.00),
(3, '2026-02-12', 120.00);

-- OrderItems
INSERT INTO OrderItems (OrderID, ProductID, Quantity, UnitPrice) VALUES
(1, 1, 1, 1200.00),
(1, 2, 2, 125.00),
(2, 3, 2, 25.00),
(2, 4, 1, 60.00),
(3, 5, 6, 20.00);
