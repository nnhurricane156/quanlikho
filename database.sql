-- Tạo cơ sở dữ liệu
CREATE DATABASE QuanLiKho;
USE QuanLiKho;

-- Tạo bảng Unit
CREATE TABLE Units (
    UnitId INT PRIMARY KEY IDENTITY(1,1),
    UnitName VARCHAR(255) NOT NULL
);

-- Tạo bảng Supplier
CREATE TABLE Suppliers (
    SupplierId INT PRIMARY KEY IDENTITY(1,1),
    SupplierName VARCHAR(255) NOT NULL,
    Address VARCHAR(255),
    Phone VARCHAR(50),
    Email VARCHAR(100),
    ContractDate DATE
);

-- Tạo bảng Object
CREATE TABLE Objectss (
    ObjectId INT PRIMARY KEY IDENTITY(1,1),
    ObjectName VARCHAR(255) NOT NULL,
    UnitId INT NOT NULL,
    SupplierId INT NOT NULL,
    FOREIGN KEY (UnitId) REFERENCES Units(UnitId),
    FOREIGN KEY (SupplierId) REFERENCES Suppliers(SupplierId)
);

-- Tạo bảng Input
CREATE TABLE Inputs (
    InputId INT PRIMARY KEY IDENTITY(1,1),
    InputDate DATE NOT NULL
);

-- Tạo bảng InputInfo
CREATE TABLE InputInfos (
    InputInfoId INT PRIMARY KEY IDENTITY(1,1),
    InputId INT NOT NULL,
    ObjectId INT NOT NULL,
    Count INT NOT NULL,
    InputPrice INT NOT NULL,
    OutputPrice INT NOT NULL,
    Status VARCHAR(50),
    FOREIGN KEY (InputId) REFERENCES Inputs(InputId),
    FOREIGN KEY (ObjectId) REFERENCES Objectss(ObjectId)
);

-- Tạo bảng Output
CREATE TABLE Outputs (
    OutputId INT PRIMARY KEY IDENTITY(1,1),
    OutputDate DATE NOT NULL
);

-- Tạo bảng Customer
CREATE TABLE Customers (
    CustomerId INT PRIMARY KEY IDENTITY(1,1),
    CustomerName VARCHAR(255) NOT NULL,
    Address VARCHAR(255),
    Phone VARCHAR(50),
    Email VARCHAR(100),
    ContractDate DATE
);

-- Tạo bảng OutputInfo
CREATE TABLE OutputInfos (
    OutputInfoId INT PRIMARY KEY IDENTITY(1,1),
    OutputId INT NOT NULL,
    CustomerId INT NOT NULL,
    ObjectId INT NOT NULL,
    InputInfoId INT NOT NULL,
    Count INT NOT NULL,
    Status VARCHAR(50),
    FOREIGN KEY (OutputId) REFERENCES Outputs(OutputId),
    FOREIGN KEY (CustomerId) REFERENCES Customers(CustomerId),
    FOREIGN KEY (ObjectId) REFERENCES Objectss(ObjectId),
    FOREIGN KEY (InputInfoId) REFERENCES InputInfos(InputInfoId)
);


-----------------------------------------------

-- Insert dữ liệu mẫu cho bảng Unit
INSERT INTO Units (UnitName) VALUES
('Kilogram'),
('Liter'),
('Piece');

-- Insert dữ liệu mẫu cho bảng Supplier
INSERT INTO Suppliers (SupplierName, Address, Phone, Email, ContractDate) VALUES
('Supplier A', '123 Street A', '0123456789', 'supplierA@example.com', '2023-01-15'),
('Supplier B', '456 Street B', '0987654321', 'supplierB@example.com', '2023-02-20'),
('Supplier C', '789 Street C', '0912345678', 'supplierC@example.com', '2023-03-10');

-- Insert dữ liệu mẫu cho bảng Object
INSERT INTO Objectss (ObjectName, UnitId, SupplierId) VALUES
('Rice', 1, 1),
('Oil', 2, 2),
('Soap', 3, 3);

-- Insert dữ liệu mẫu cho bảng Input
INSERT INTO Inputs (InputDate) VALUES
('2023-05-01'),
('2023-05-10');

-- Insert dữ liệu mẫu cho bảng InputInfo
INSERT INTO InputInfos (InputId, ObjectId, Count, InputPrice, OutputPrice, Status) VALUES
(1, 1, 100, 5000, 6000, 'Available'),
(1, 2, 200, 15000, 18000, 'Available'),
(2, 3, 50, 30000, 35000, 'Available');

-- Insert dữ liệu mẫu cho bảng Output
INSERT INTO Outputs (OutputDate) VALUES
('2023-05-15'),
('2023-05-20');

-- Insert dữ liệu mẫu cho bảng Customer
INSERT INTO Customers (CustomerName, Address, Phone, Email, ContractDate) VALUES
('Customer X', '321 Street X', '0129876543', 'customerX@example.com', '2023-01-25'),
('Customer Y', '654 Street Y', '0981234567', 'customerY@example.com', '2023-02-10');

-- Insert dữ liệu mẫu cho bảng OutputInfo
INSERT INTO OutputInfos (OutputId, CustomerId, ObjectId, InputInfoId, Count, Status) VALUES
(1, 1, 1, 1, 20, 'Delivered'),
(1, 2, 2, 2, 30, 'Delivered'),
(2, 1, 3, 3, 10, 'Pending');
