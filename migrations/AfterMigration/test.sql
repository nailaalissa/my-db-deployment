

MERGE INTO Products AS Target
USING (
    SELECT 1 AS ProductId, 'Laptop' AS Name, 20.00 AS Price
    UNION ALL
    SELECT 2, 'Smartphone', 300.00
    UNION ALL
    SELECT 3, 'Tablet', 50.00
) AS Source
ON Target.ProductId = Source.ProductId
WHEN MATCHED THEN
    UPDATE SET Name = Source.Name, Price = Source.Price
WHEN NOT MATCHED THEN
    INSERT (ProductId, Name, Price)
    VALUES (Source.ProductId, Source.Name, Source.Price);
