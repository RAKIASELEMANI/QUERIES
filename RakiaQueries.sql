CREATE DATABASE RakiaRestarant;
Use RakiaRestarant;
-- Create customers table
CREATE TABLE IF NOT EXISTS `customers` (
  `CustomerID` INT NOT NULL AUTO_INCREMENT,
  `FirstName` VARCHAR(50) NOT NULL,
  `LastName` VARCHAR(50) NOT NULL,
  `Email` VARCHAR(100) NOT NULL,
  `Address` VARCHAR(100) NOT NULL,
  `City` VARCHAR(50) NOT NULL,
  `Phone` VARCHAR(20) NOT NULL,
  `Birthday` DATE NOT NULL,
  `FavoriteDish` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`CustomerID`)
);

-- Create orders table
CREATE TABLE IF NOT EXISTS `orders` (
  `OrderID` INT NOT NULL AUTO_INCREMENT,
  `CustomerID` INT NOT NULL,
  `OrderDate` DATE NOT NULL,
  PRIMARY KEY (`OrderID`),
  FOREIGN KEY (`CustomerID`) REFERENCES `customers`(`CustomerID`)
);

-- Create dishes table
CREATE TABLE IF NOT EXISTS `dishes` (
  `DishID` INT NOT NULL AUTO_INCREMENT,
  `Quality` VARCHAR(20) NOT NULL,
  `DishDescription` VARCHAR(100) NOT NULL,
  `CustomerID` INT NOT NULL,
  PRIMARY KEY (`DishID`),
  FOREIGN KEY (`CustomerID`) REFERENCES `customers`(`CustomerID`)
);

-- Create dishesorders table
CREATE TABLE IF NOT EXISTS `dishesorders` (
  `DishesOrdersID` INT NOT NULL AUTO_INCREMENT,
  `DishID` INT NOT NULL,
  `OrderID` INT NOT NULL,
  PRIMARY KEY (`DishesOrdersID`),
  FOREIGN KEY (`DishID`) REFERENCES `dishes`(`DishID`),
  FOREIGN KEY (`OrderID`) REFERENCES `orders`(`OrderID`)
);

-- Insert data into customers table
INSERT INTO `customers`(`FirstName`, `LastName`, `Email`, `Address`, `City`, `Phone`, `Birthday`, `FavoriteDish`) VALUES 
('Mohamed', 'Mbwana', 'mohamed.mbwana@example.com', '123 Kimweri St', 'Dar es Salaam', '+255 712 345678', '1988-05-20', 'Nyama Choma'),
('Salma', 'Khalfan', 'salma.khalfan@example.com', '456 Sam Nujoma Rd', 'Dodoma', '+255 754 987654', '1992-09-12', 'Pilau'),
('Rajab', 'Rashidi', 'rajab.rashidi@example.com', '789 Mkwepu St', 'Zanzibar', '+255 716 456789', '1985-11-28', 'Mshikaki'),
('Zuwena', 'Musa', 'zuwena.musa@example.com', '321 Mabatini Rd', 'Arusha', '+255 767 123456', '1997-03-15', 'Ugali with Fish Curry'),
('Ali', 'Hamisi', 'ali.hamisi@example.com', '654 Nyerere Rd', 'Morogoro', '+255 718 654321', '1983-07-08', 'Chapati with Beef Stew'),
('Zainab', 'Kassim', 'zainab.kassim@example.com', '987 Makumbusho St', 'Mwanza', '+255 780 234567', '1990-01-25', 'Pilipili Chicken'),
('Rashidi', 'Juma', 'rashidi.juma@example.com', '741 Kijitonyama St', 'Mbeya', '+255 755 876543', '1980-04-03', 'Matoke'),
('Fatma', 'Suleiman', 'fatma.suleiman@example.com', '369 Nyerere St', 'Tanga', '+255 789 345678', '1994-12-19', 'Kachumbari Salad'),
('Ahmed', 'Said', 'ahmed.said@example.com', '852 Mtaa wa Maziwa', 'Mbagala', '+255 767 234567', '1976-08-14', 'Mishkaki'),
('Hawa', 'Mbaraka', 'hawa.mbaraka@example.com', '147 Mtendeni St', 'Mtwara', '+255 755 987654', '1989-02-10', 'Kuku Wa Kupaka'),
('Juma', 'Saidi', 'juma.saidi@example.com', '258 Mandela Rd', 'Kinondoni', '+255 783 456789', '1982-06-27', 'Ndizi Nyama'),
('Saida', 'Hamadi', 'saida.hamadi@example.com', '369 Uhuru St', 'Kigoma', '+255 717 123456', '1991-10-31', 'Biryani'),
('Mwanaidi', 'Salum', 'mwanaidi.salum@example.com', '741 Boma Rd', 'Moshi', '+255 780 876543', '1978-03-17', 'Maharage Ya Nazi'),
('Hassan', 'Khalid', 'hassan.khalid@example.com', '147 Mwenge St', 'Kilimanjaro', '+255 756 234567', '1996-07-23', 'Mchuzi Wa Samaki'),
('Zara', 'Nassor', 'zara.nassor@example.com', '258 Lumumba St', 'Dodoma', '+255 789 345678', '1987-11-05', 'Wali Na Kuku'),
('Ali', 'Juma', 'ali.juma@example.com', '369 Upanga Rd', 'Morogoro', '+255 767 987654', '1984-01-09', 'Supu Ya Ndizi'),
('Saida', 'Kassim', 'saida.kassim@example.com', '123 Fire Rd', 'Singida', '+255 754 234567', '1993-04-22', 'Kisamvu'),
('Suleiman', 'Mussa', 'suleiman.mussa@example.com', '456 Changombe St', 'Shinyanga', '+255 780 876543', '1981-09-03', 'Mandazi'),
('Mariam', 'Juma', 'mariam.juma@example.com', '789 Nachingwea St', 'Kilombero', '+255 756 123456', '1990-02-15', 'Nyama Ya Nguruwe'),
('Hussein', 'Said', 'hussein.said@example.com', '654 Tandika St', 'Lindi', '+255 789 345678', '1986-05-28', 'Kitumbua');

-- Insert data into orders table
INSERT INTO `orders`(`CustomerID`, `OrderDate`) VALUES 
(1, '2024-02-01'),
(2, '2024-02-02'),
(3, '2024-02-03'),
(4, '2024-02-04'),
(5, '2024-02-05'),
(6, '2024-02-06'),
(7, '2024-02-07'),
(8, '2024-02-08'),
(9, '2024-02-09'),
(10, '2024-02-10'),
(11, '2024-02-11'),
(12, '2024-02-12'),
(13, '2024-02-13'),
(14, '2024-02-14'),
(15, '2024-02-15'),
(16, '2024-02-16'),
(17, '2024-02-17'),
(18, '2024-02-18'),
(19, '2024-02-19'),
(20, '2024-02-20');

-- Insert data into dishes table
INSERT INTO `dishes`(`Quality`, `DishDescription`, `CustomerID`) VALUES 
('High', 'Nyama Choma', 1),
('Medium', 'Pilau', 2),
('Low', 'Mshikaki', 3),
('High', 'Ugali with Fish Curry', 4),
('Medium', 'Chapati with Beef Stew', 5),
('Low', 'Pilipili Chicken', 6),
('High', 'Matoke', 7),
('Medium', 'Kachumbari Salad', 8),
('Low', 'Mishkaki', 9),
('High', 'Kuku Wa Kupaka', 10),
('Medium', 'Ndizi Nyama', 11),
('Low', 'Biryani', 12),
('High', 'Maharage Ya Nazi', 13),
('Medium', 'Mchuzi Wa Samaki', 14),
('Low', 'Wali Na Kuku', 15),
('High', 'Supu Ya Ndizi', 16),
('Medium', 'Kisamvu', 17),
('Low', 'Mandazi', 18),
('High', 'Nyama Ya Nguruwe', 19),
('Medium', 'Kitumbua', 20);

-- Insert data into dishesorders table
INSERT INTO `dishesorders`(`DishID`, `OrderID`) VALUES 
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10),
(11, 11),
(12, 12),
(13, 13),
(14, 14),
(15, 15),
(16, 16),
(17, 17),
(18, 18),
(19, 19),
(20, 20);