CREATE DATABASE ShopDB;
USE ShopDB;

CREATE TABLE Countries (
    ID INT AUTO_INCREMENT,
    Name VARCHAR(50),
    PRIMARY KEY (ID)
);

CREATE TABLE Addresses (
    ID INT AUTO_INCREMENT,
    Address VARCHAR(100),
    CountryID INT,
    PRIMARY KEY (ID),
    FOREIGN KEY (CountryID) REFERENCES Countries(ID) ON DELETE NO ACTION
);

CREATE TABLE Warehouses (
    ID INT AUTO_INCREMENT,
    Name VARCHAR(50),
    AddressID INT,
    PRIMARY KEY (ID),
    FOREIGN KEY (AddressID) REFERENCES Addresses(ID) ON DELETE NO ACTION
);

CREATE TABLE ProductInventory (
    ID INT AUTO_INCREMENT,
    ProductName VARCHAR(50),
    WarehouseAmount INT,
    WarehouseID INT,
    PRIMARY KEY (ID),
    FOREIGN KEY (WarehouseID) REFERENCES Warehouses(ID) ON DELETE NO ACTION
);

INSERT INTO Countries (Name)
    VALUES ('Country1'), ('Country2');
    
INSERT INTO Addresses (Address, CountryID)
    VALUES ('City-1, Street-1', 1), ('City-2, Street-2', 2);

INSERT INTO Warehouses (Name, AddressID)
    VALUES ('Warehouse-1', 1), ('Warehouse-2', 2);

INSERT INTO ProductInventory (ProductName, WarehouseAmount, WarehouseID)
    VALUES ('AwesomeProduct', 2, 1), ('AwesomeProduct', 5, 2);
