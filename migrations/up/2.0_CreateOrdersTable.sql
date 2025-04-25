
CREATE TABLE Orders (
    OrderId INT PRIMARY KEY,
    ProductId INT,
    Quantity INT,
    FOREIGN KEY (ProductId) REFERENCES Products(ProductId)
);
