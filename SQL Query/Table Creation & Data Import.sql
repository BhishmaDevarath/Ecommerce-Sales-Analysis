CREATE DATABASE EcommerceSalesDB;

USE EcommerceSalesDB
GO

CREATE TABLE SalesData (
    OrderID NVARCHAR(50),
    Dates DATE,
    OrderStatus VARCHAR(50),
    Fulfilment VARCHAR(50),
    ShipChannel VARCHAR(50),
    ShipServiceLevel VARCHAR(50),
    Style NVARCHAR(100),
    SKU NVARCHAR(100),
    Category VARCHAR(50),
    Sizes VARCHAR(50),
    ASIN NVARCHAR(100),
    CourierStatus VARCHAR(50),
    Quantity INT,
    Currency VARCHAR(50),
    Amount FLOAT,
    ShipCity VARCHAR(50),
    ShipState VARCHAR(50),
    ShipPostalCode VARCHAR(50),
    ShipCountry VARCHAR(50),
    B2B VARCHAR(50)
);

BULK INSERT SalesData
FROM 'D:\Downloads\E-Commerce Sales Dataset.csv'
WITH (
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n',
    TABLOCK,
    CODEPAGE = '65001'
);