create database java4_assignment
go
use java4_assignment
go

-- Create table Product
CREATE TABLE Product (
    ProductID int identity(1,1) PRIMARY KEY NOT NULL,
    ProductName NVARCHAR(50) NOT NULL,
    Brand NVARCHAR(50) NOT NULL,
    IsDeleted BIT NOT NULL
);

-- Create table ProductDetails
CREATE TABLE ProductDetails (
    ProductDetailID int identity(1,1) PRIMARY KEY NOT NULL,
	ProductType NVARCHAR(50) NOT NULL,
    Colorway NVARCHAR(50) NOT NULL,
    ProductImage NVARCHAR(250) NOT NULL,
    Quantity INT NOT NULL,
    Size INT NOT NULL,
    Price FLOAT NOT NULL,
    ProductID int  NOT NULL,
    IsDeleted BIT NOT NULL,
    FOREIGN KEY (ProductID) REFERENCES Product (ProductID)
);

-- Create table Users
CREATE TABLE Users (
    UserID int identity(1,1) PRIMARY KEY NOT NULL,
    Password VARCHAR(20) NOT NULL,
    FullName NVARCHAR(50) NOT NULL,
    Email VARCHAR(50),
    Phone VARCHAR(20) NOT NULL,
    Address NVARCHAR(255) NOT NULL,
    Gender BIT,
    Role NVARCHAR(30) NOT NULL,
    IsDeleted BIT NOT NULL
);

-- Create table NumberOfVisit
CREATE TABLE NumberOfVisit (
    DateID DATE PRIMARY KEY NOT NULL,
    NumberOfVisitors INT NOT NULL
);

-- Create table FavoriteCount
CREATE TABLE FavoriteCount (
    FavoriteID int identity(1,1) PRIMARY KEY NOT NULL,
    UserID int  NOT NULL,
    ProductID int  NOT NULL,
    FOREIGN KEY (UserID) REFERENCES Users (UserID),
    FOREIGN KEY (ProductID) REFERENCES Product (ProductID)
);
-- Create table Cart
CREATE TABLE Cart (
    CartID int identity(1,1) PRIMARY KEY NOT NULL,
    UserID int  NOT NULL,
    ProductID int  NOT NULL,
    ProductName NVARCHAR(50) NOT NULL,
    TotalPayment FLOAT NOT NULL,
	IsDeleted BIT NOT NULL
    FOREIGN KEY (UserID) REFERENCES Users (UserID),
    FOREIGN KEY (ProductID) REFERENCES Product (ProductID)
);

-- Create table CartDetails
CREATE TABLE CartDetails (
    CartDetailID int identity(1,1) PRIMARY KEY NOT NULL,
    CartID int  NOT NULL,
    ProductDetailID int  NOT NULL,
	ProductType NVARCHAR(50) NOT NULL,
    Colorway NVARCHAR(50) NOT NULL,
    ProductImage NVARCHAR(250) NOT NULL,
    Quantity INT NOT NULL,
    Size INT NOT NULL,
    Price FLOAT NOT NULL,
    IsDeleted BIT NOT NULL
    FOREIGN KEY (CartID) REFERENCES Cart (CartID),
    FOREIGN KEY (ProductDetailID) REFERENCES ProductDetails (ProductDetailID)
);
-- Create table Receipt
CREATE TABLE Receipt (
    ReceiptID int identity(1,1) PRIMARY KEY NOT NULL,
    UserID int  NOT NULL,
    CartID int  NOT NULL,
    Date DATE NOT NULL,
    Phone VARCHAR(20) NOT NULL,
    Address NVARCHAR(255) NOT NULL,
    TotalPayment FLOAT NOT NULL,
    IsDeleted BIT NOT NULL
    FOREIGN KEY (UserID) REFERENCES Users (UserID),
    FOREIGN KEY (CartID) REFERENCES Cart (CartID)
);

-- Create table ReceiptDetails
CREATE TABLE ReceiptDetails (
    ReceiptDetailID int identity(1,1) PRIMARY KEY NOT NULL,
    ReceiptID int NOT NULL,
    CartDetailID int NOT NULL,
	ProductType NVARCHAR(50) NOT NULL,
    Quantity INT NOT NULL,
    Size INT NOT NULL,
    Color NVARCHAR(20) NOT NULL,
    Price FLOAT NOT NULL,
    IsDeleted BIT NOT NULL
    FOREIGN KEY (ReceiptID) REFERENCES Receipt (ReceiptID),
    FOREIGN KEY (CartDetailID) REFERENCES CartDetails (CartDetailID)
);


-- Insert data into Users table
INSERT INTO Users (Password, FullName, Email, Phone, Address, Gender, Role, IsDeleted)
VALUES
    ('pass123', 'John Doe', 'johndoe@example.com', '+1 123-456-7890', '123 Main St, Anytown, USA', 1, 'customer', 0),	 
	('password3', 'David Johnson', 'david@example.com', '1111111111', '789 Oak St, Chicago, IL', 1, 'customer',  0),
    ('password4', 'Emily Wilson', 'emily@example.com', '2222222222', '321 Pine St, San Francisco, CA', 0, 'customer', 0),
    ('password5', 'Michael Brown', 'michael@example.com', '3333333333', '987 Maple St, Houston, TX', 1, 'customer',  0),
    ('password6', 'Sophia Lee', 'sophia@example.com', '4444444444', '654 Cedar St, Miami, FL', 0, 'customer',  0),
    ('password7', 'Daniel Martinez', 'daniel@example.com', '5555555555', '321 Elm St, Los Angeles, CA', 1, 'customer',  0),
    ('password8', 'Olivia Davis', 'olivia@example.com', '6666666666', '789 Oak St, New York, NY', 0, 'customer',  0),
    ('password9', 'Ethan Anderson', 'ethan@example.com', '7777777777', '987 Maple St, Chicago, IL', 1, 'customer',  0),
    ('password10', 'Ava Wilson', 'ava@example.com', '8888888888', '654 Cedar St, San Francisco, CA', 0, 'customer',  0),
	('admin123', 'Admin User', 'admin@example.com', '+1 987-654-3210', '456 Admin Ave, Anytown, USA', 0, 'admin', 0);

    
-- Insert data into NumberOfVisit table
INSERT INTO NumberOfVisit (DateID, NumberOfVisitors)
VALUES
    ('2024-04-01', 100),
    ('2024-04-02', 150),
    ('2024-04-03', 200),
    ('2024-04-04', 180),
    ('2024-04-05', 220),
    ('2024-04-06', 190),
    ('2024-04-07', 210),
    ('2024-04-08', 240),
    ('2024-04-09', 180);
    
-- Insert data into FavoriteCount table
INSERT INTO FavoriteCount (UserID, ProductID)
VALUES
    (1, 1),
    (1, 2),
    (2, 3),
    (2, 4);
    
-- Insert data into Product table
INSERT INTO Product (ProductName, Brand, IsDeleted)
VALUES
    ('Nike Dunk', 'Nike', 0),
    ('Nike Air Force 1', 'Nike', 0),
    ('Nike Air Max 90', 'Nike', 0),
	('Nike Air Max DN', 'Nike', 0),
	('Nike Slide', 'Nike', 0),
	('Nike Hyperdunk 2017 Low', 'Nike', 0),
	('Nike KD 16', 'Nike', 0),
	('Nike Ja 1', 'Nike', 0),
	('Nike GT Jump 2', 'Nike', 0);
	
    
-- Insert data into ProductDetails table
INSERT INTO ProductDetails (ProductType, Colorway, ProductImage, Quantity, Size, Price, ProductID, IsDeleted)
VALUES
    ('lifestyle', 'White/Green', '"C:\FPT_Polytechnic\.metadata\java4_assignment\java4_assignment\NiceKicks\WebContent\images\dunk-low-retro-mens-shoes-26QgdP.png"', 100, 9, 120.0, 1, 0),
	('lifestyle', 'White/Green', '"C:\FPT_Polytechnic\.metadata\java4_assignment\java4_assignment\NiceKicks\WebContent\images\dunk-low-retro-mens-shoes-26QgdP.png"', 100, 8, 120.0, 1, 0),
	('lifestyle', 'White/Green', '"C:\FPT_Polytechnic\.metadata\java4_assignment\java4_assignment\NiceKicks\WebContent\images\dunk-low-retro-mens-shoes-26QgdP.png"', 100, 7, 120.0, 1, 0),
	('lifestyle', 'White/Green', '"C:\FPT_Polytechnic\.metadata\java4_assignment\java4_assignment\NiceKicks\WebContent\images\dunk-low-retro-mens-shoes-26QgdP.png"', 100, 10, 120.0, 1, 0),
	('lifestyle', 'White/Green', '"C:\FPT_Polytechnic\.metadata\java4_assignment\java4_assignment\NiceKicks\WebContent\images\dunk-low-retro-mens-shoes-26QgdP.png"', 100, 11, 120.0, 1, 0),
	('lifestyle', 'White/Green', '"C:\FPT_Polytechnic\.metadata\java4_assignment\java4_assignment\NiceKicks\WebContent\images\dunk-low-retro-mens-shoes-26QgdP.png"', 100, 12, 120.0, 1, 0),
    ('lifestyle', 'White/Green', '"C:\FPT_Polytechnic\.metadata\java4_assignment\java4_assignment\NiceKicks\WebContent\images\dunk-low-retro-mens-shoes-26QgdP.png"', 100, 13, 120.0, 1, 0),
	('lifestyle', 'White/Green', '"C:\FPT_Polytechnic\.metadata\java4_assignment\java4_assignment\NiceKicks\WebContent\images\dunk-low-retro-mens-shoes-26QgdP.png"', 100, 14, 120.0, 1, 0);
-- Insert data into ProductDetails table
INSERT INTO ProductDetails (ProductType, Colorway, ProductImage, Quantity, Size, Price, ProductID, IsDeleted)
VALUES
    ('lifestyle', 'Gray/White', '"C:\FPT_Polytechnic\.metadata\java4_assignment\java4_assignment\NiceKicks\WebContent\images\dunk-low-retro-se-mens-shoes-54Zggv.png"', 100, 8, 110.0, 1, 0),
    ('lifestyle', 'Gray/White', '"C:\FPT_Polytechnic\.metadata\java4_assignment\java4_assignment\NiceKicks\WebContent\images\dunk-low-retro-se-mens-shoes-54Zggv.png"', 100, 7, 110.0, 1, 0),
    ('lifestyle', 'Gray/White', '"C:\FPT_Polytechnic\.metadata\java4_assignment\java4_assignment\NiceKicks\WebContent\images\dunk-low-retro-se-mens-shoes-54Zggv.png"', 100, 9, 110.0, 1, 0),
    ('lifestyle', 'Gray/White', '"C:\FPT_Polytechnic\.metadata\java4_assignment\java4_assignment\NiceKicks\WebContent\images\dunk-low-retro-se-mens-shoes-54Zggv.png"', 100, 10, 110.0, 1, 0),
	('lifestyle', 'Gray/White', '"C:\FPT_Polytechnic\.metadata\java4_assignment\java4_assignment\NiceKicks\WebContent\images\dunk-low-retro-se-mens-shoes-54Zggv.png"', 100, 11, 110.0, 1, 0),
	('lifestyle', 'Gray/White', '"C:\FPT_Polytechnic\.metadata\java4_assignment\java4_assignment\NiceKicks\WebContent\images\dunk-low-retro-se-mens-shoes-54Zggv.png"', 100, 12, 110.0, 1, 0),
    ('lifestyle', 'Gray/White', '"C:\FPT_Polytechnic\.metadata\java4_assignment\java4_assignment\NiceKicks\WebContent\images\dunk-low-retro-se-mens-shoes-54Zggv.png"', 100, 13, 110.0, 1, 0);

	
	
-- Insert data into ProductDetails table
INSERT INTO ProductDetails (ProductType, Colorway, ProductImage, Quantity, Size, Price, ProductID, IsDeleted)
VALUES	
	('lifestyle', 'White', '"C:\FPT_Polytechnic\.metadata\java4_assignment\java4_assignment\NiceKicks\WebContent\images\AF1.png"', 100, 10, 130.0, 2, 0),
    ('lifestyle', 'White', '"C:\FPT_Polytechnic\.metadata\java4_assignment\java4_assignment\NiceKicks\WebContent\images\AF1.png"', 100, 9, 130.0, 2, 0),
	('lifestyle', 'White', '"C:\FPT_Polytechnic\.metadata\java4_assignment\java4_assignment\NiceKicks\WebContent\images\AF1.png"', 100, 8, 130.0, 2, 0),
	('lifestyle', 'White', '"C:\FPT_Polytechnic\.metadata\java4_assignment\java4_assignment\NiceKicks\WebContent\images\AF1.png"', 100, 12, 130.0, 2, 0),
	('lifestyle', 'White', '"C:\FPT_Polytechnic\.metadata\java4_assignment\java4_assignment\NiceKicks\WebContent\images\AF1.png"', 100, 13, 130.0, 2, 0);
-- Insert data into ProductDetails table
INSERT INTO ProductDetails (ProductType, Colorway, ProductImage, Quantity, Size, Price, ProductID, IsDeleted)
VALUES
	('lifestyle', 'Navy/White', '"C:\FPT_Polytechnic\.metadata\java4_assignment\java4_assignment\NiceKicks\WebContent\images\air-max-90-mens-shoes-Bd2qnn.png"', 100, 11, 125.0, 3, 0),
    ('lifestyle', 'Navy/White', '"C:\FPT_Polytechnic\.metadata\java4_assignment\java4_assignment\NiceKicks\WebContent\images\air-max-90-mens-shoes-Bd2qnn.png"', 100, 12, 125.0, 3, 0),
	('lifestyle', 'Navy/White', '"C:\FPT_Polytechnic\.metadata\java4_assignment\java4_assignment\NiceKicks\WebContent\images\air-max-90-mens-shoes-Bd2qnn.png"', 100, 9, 125.0, 3, 0),
	('lifestyle', 'Navy/White', '"C:\FPT_Polytechnic\.metadata\java4_assignment\java4_assignment\NiceKicks\WebContent\images\air-max-90-mens-shoes-Bd2qnn.png"', 100, 10, 125.0, 3, 0);
-- Insert data into ProductDetails table
INSERT INTO ProductDetails (ProductType, Colorway, ProductImage, Quantity, Size, Price, ProductID, IsDeleted)
VALUES
	('lifestyle', 'Red/Black', '"C:\FPT_Polytechnic\.metadata\java4_assignment\java4_assignment\NiceKicks\WebContent\images\air-max-dn-mens-shoes-27XkSQ.png"', 100, 10, 150.0, 4, 0),
	('lifestyle', 'Red/Black', '"C:\FPT_Polytechnic\.metadata\java4_assignment\java4_assignment\NiceKicks\WebContent\images\air-max-dn-mens-shoes-27XkSQ.png"', 100, 9, 150.0, 4, 0),
	('lifestyle', 'Red/Black', '"C:\FPT_Polytechnic\.metadata\java4_assignment\java4_assignment\NiceKicks\WebContent\images\air-max-dn-mens-shoes-27XkSQ.png"', 100, 14, 150.0, 4, 0),
	('lifestyle', 'Red/Black', '"C:\FPT_Polytechnic\.metadata\java4_assignment\java4_assignment\NiceKicks\WebContent\images\air-max-dn-mens-shoes-27XkSQ.png"', 100, 13, 150.0, 4, 0);
-- Insert data into ProductDetails table
INSERT INTO ProductDetails (ProductType, Colorway, ProductImage, Quantity, Size, Price, ProductID, IsDeleted)
VALUES

	('lifestyle', 'Tan', '"C:\FPT_Polytechnic\.metadata\java4_assignment\java4_assignment\NiceKicks\WebContent\images\calm-mens-slides-4hQGBf.png"', 100, 10, 150.0, 5, 0),
    ('lifestyle', 'Tan', '"C:\FPT_Polytechnic\.metadata\java4_assignment\java4_assignment\NiceKicks\WebContent\images\calm-mens-slides-4hQGBf.png"', 100, 11, 150.0, 5, 0),
	('lifestyle', 'Tan', '"C:\FPT_Polytechnic\.metadata\java4_assignment\java4_assignment\NiceKicks\WebContent\images\calm-mens-slides-4hQGBf.png"', 100, 9, 150.0, 5, 0);
-- Insert data into ProductDetails table
INSERT INTO ProductDetails (ProductType, Colorway, ProductImage, Quantity, Size, Price, ProductID, IsDeleted)
VALUES
	('basketball', 'White/Black', '"C:\FPT_Polytechnic\.metadata\java4_assignment\java4_assignment\NiceKicks\WebContent\images\react-hyperdunk-2017-low-mens-basketball-shoe-2by1jP.png"', 100, 10, 150.0, 6, 0),
	('basketball', 'White/Black', '"C:\FPT_Polytechnic\.metadata\java4_assignment\java4_assignment\NiceKicks\WebContent\images\react-hyperdunk-2017-low-mens-basketball-shoe-2by1jP.png"', 100, 9, 150.0, 6, 0),
	('basketball', 'White/Black', '"C:\FPT_Polytechnic\.metadata\java4_assignment\java4_assignment\NiceKicks\WebContent\images\react-hyperdunk-2017-low-mens-basketball-shoe-2by1jP.png"', 100, 11, 150.0, 6, 0),
	('basketball', 'White/Black', '"C:\FPT_Polytechnic\.metadata\java4_assignment\java4_assignment\NiceKicks\WebContent\images\react-hyperdunk-2017-low-mens-basketball-shoe-2by1jP.png"', 100, 7, 150.0, 6, 0),
	('basketball', 'White/Black', '"C:\FPT_Polytechnic\.metadata\java4_assignment\java4_assignment\NiceKicks\WebContent\images\react-hyperdunk-2017-low-mens-basketball-shoe-2by1jP.png"', 100, 8, 150.0, 6, 0);
-- Insert data into ProductDetails table
INSERT INTO ProductDetails (ProductType, Colorway, ProductImage, Quantity, Size, Price, ProductID, IsDeleted)
VALUES

	('basketball', 'White/Black', '"C:\FPT_Polytechnic\.metadata\java4_assignment\java4_assignment\NiceKicks\WebContent\images\kd16-basketball-shoes-H3gcDG.jpg"', 100, 10, 150.0, 8, 0),
	('basketball', 'White/Black', '"C:\FPT_Polytechnic\.metadata\java4_assignment\java4_assignment\NiceKicks\WebContent\images\kd16-basketball-shoes-H3gcDG.jpg"', 100, 9, 150.0, 8, 0),
	('basketball', 'White/Black', '"C:\FPT_Polytechnic\.metadata\java4_assignment\java4_assignment\NiceKicks\WebContent\images\kd16-basketball-shoes-H3gcDG.jpg"', 100, 11, 150.0, 8, 0),
	('basketball', 'White/Black', '"C:\FPT_Polytechnic\.metadata\java4_assignment\java4_assignment\NiceKicks\WebContent\images\kd16-basketball-shoes-H3gcDG.jpg"', 100, 8, 150.0, 8, 0),
	('basketball', 'White/Black', '"C:\FPT_Polytechnic\.metadata\java4_assignment\java4_assignment\NiceKicks\WebContent\images\kd16-basketball-shoes-H3gcDG.jpg"', 100, 13, 150.0, 8, 0);
-- Insert data into ProductDetails table
INSERT INTO ProductDetails (ProductType, Colorway, ProductImage, Quantity, Size, Price, ProductID, IsDeleted)
VALUES

	('basketball', 'White/Brown', '"C:\FPT_Polytechnic\.metadata\java4_assignment\java4_assignment\NiceKicks\WebContent\images\ja-1-vacation-basketball-shoes-bCx2W3.png"', 100, 14, 150.0, 9, 0),
	('basketball', 'White/Brown', '"C:\FPT_Polytechnic\.metadata\java4_assignment\java4_assignment\NiceKicks\WebContent\images\ja-1-vacation-basketball-shoes-bCx2W3.png"', 100, 9, 150.0, 9, 0),
	('basketball', 'White/Brown', '"C:\FPT_Polytechnic\.metadata\java4_assignment\java4_assignment\NiceKicks\WebContent\images\ja-1-vacation-basketball-shoes-bCx2W3.png"', 100, 11, 150.0, 9, 0),
	('basketball', 'White/Brown', '"C:\FPT_Polytechnic\.metadata\java4_assignment\java4_assignment\NiceKicks\WebContent\images\ja-1-vacation-basketball-shoes-bCx2W3.png"', 100, 7, 150.0, 9, 0);
-- Insert data into ProductDetails table
INSERT INTO ProductDetails (ProductType, Colorway, ProductImage, Quantity, Size, Price, ProductID, IsDeleted)
VALUES

	('basketball', 'Red', '"C:\FPT_Polytechnic\.metadata\java4_assignment\java4_assignment\NiceKicks\WebContent\images\gt-jump-2-mens-basketball-shoes-CZpmDQ.png"', 100, 9, 150.0, 10, 0),
	('basketball', 'Red', '"C:\FPT_Polytechnic\.metadata\java4_assignment\java4_assignment\NiceKicks\WebContent\images\gt-jump-2-mens-basketball-shoes-CZpmDQ.png"', 100, 8, 150.0, 10, 0),
	('basketball', 'Red', '"C:\FPT_Polytechnic\.metadata\java4_assignment\java4_assignment\NiceKicks\WebContent\images\gt-jump-2-mens-basketball-shoes-CZpmDQ.png"', 100, 14, 150.0, 10, 0),
	('basketball', 'Red', '"C:\FPT_Polytechnic\.metadata\java4_assignment\java4_assignment\NiceKicks\WebContent\images\gt-jump-2-mens-basketball-shoes-CZpmDQ.png"', 100, 7, 150.0, 10, 0),
	('basketball', 'Red', '"C:\FPT_Polytechnic\.metadata\java4_assignment\java4_assignment\NiceKicks\WebContent\images\gt-jump-2-mens-basketball-shoes-CZpmDQ.png"', 100, 12, 150.0, 10, 0);


-- Insert rows into Cart table
INSERT INTO Cart (UserID, ProductID, ProductName, TotalPayment, IsDeleted)
VALUES
    (1, 1, 'Nike Dunk', 240.0, 0),
    (2, 3, 'Nike Air Max 90', 130.0, 0),
    (3, 2, 'Nike Air Force 1', 330.0, 0);

-- Insert rows into CartDetails table
INSERT INTO CartDetails (CartID, ProductDetailID, ProductType, Colorway, ProductImage, Quantity, Size, Price , IsDeleted)
VALUES
    (1, 1, 'lifestyle', 'White/Green', '"C:\FPT_Polytechnic\.metadata\java4_assignment\java4_assignment\NiceKicks\WebContent\images\dunk-low-retro-mens-shoes-26QgdP.png"', 2, 9, 120.0, 0),
    (2, 21, 'lifestyle', 'Navy/White', '"C:\FPT_Polytechnic\.metadata\java4_assignment\java4_assignment\NiceKicks\WebContent\images\air-max-90-mens-shoes-Bd2qnn.png"', 1, 11, 130.0, 0),
    (3, 16, 'lifestyle', 'White', '"C:\FPT_Polytechnic\.metadata\java4_assignment\java4_assignment\NiceKicks\WebContent\images\AF1.png"', 3, 10, 110.0, 0);

-- Insert rows into Receipt table
INSERT INTO Receipt (UserID, CartID, Date, Phone, Address, TotalPayment , IsDeleted)
VALUES
    (1, 1, '2024-04-09', '+1 123-456-7890', '123 Main St, Anytown, USA', 240.0, 0),
    (2, 2, '2024-04-09', '1111111111', '789 Oak St, Chicago, IL', 130.0, 0),
    (3, 3, '2024-04-09', '2222222222', '321 Pine St, San Francisco, CA', 330.0, 0);

-- Insert rows into ReceiptDetails table
INSERT INTO ReceiptDetails (ReceiptID, CartDetailID, ProductType, Quantity, Size, Color, Price, IsDeleted)
VALUES
    (1, 1, 'lifestyle', 2, 9, 'White/Green', 120.0, 0),
    (2, 2, 'lifestyle', 1, 7, 'Navy/White', 130.0, 0),
    (3, 3, 'lifestyle', 3, 10, 'White', 110.0, 0);

-- Drop the Users table
DROP TABLE IF EXISTS Users;

-- Drop the NumberOfVisit table
DROP TABLE IF EXISTS NumberOfVisit;

-- Drop the FavoriteCount table
DROP TABLE IF EXISTS FavoriteCount;

-- Drop the Product table
DROP TABLE IF EXISTS Product;

-- Drop the ProductDetails table
DROP TABLE IF EXISTS ProductDetails;

-- Drop the Cart table
DROP TABLE IF EXISTS Cart;

-- Drop the CartDetail table
DROP TABLE IF EXISTS CartDetail;

-- Drop the Receipt table
DROP TABLE IF EXISTS Receipt;

-- Drop the ReceiptDetail table
DROP TABLE IF EXISTS ReceiptDetail;
 