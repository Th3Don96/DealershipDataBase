# ---------------------------------------------------------------------- #
# Target DBMS:           MySQL                                           #
# Project name:          Dealership                                      #
# ---------------------------------------------------------------------- #
DROP DATABASE IF EXISTS dealership;

CREATE DATABASE IF NOT EXISTS dealership ;

USE dealerhip;

# ---------------------------------------------------------------------- #
# Tables                                                                 #
# ---------------------------------------------------------------------- #
# ---------------------------------------------------------------------- #
# Add table "Categories"                                                 #
# ---------------------------------------------------------------------- #


CREATE TABLE dealerships (
`LocationName` varchar(50) COMMENT 'Dealership location',
`GeneralManager` varchar(50) COMMENT 'Manager name',
`Address` varchar(50),
`Phone` varchar(12),
`Dealership_id` varchar(50)
);

INSERT INTO dealerships (`LocationName`, `GeneralManager`, `Address`, `Phone`,`Dealership_idDealership_id`) 
VALUES
('City Motors', 'Alice Johnson', '123 Main St', '555-123-4567','D001'),
('Mountain Auto', 'Bob Smith', '456 Alpine Dr', '555-987-6543','D002'),
('Lakeside Cars', 'Cindy Lee', '789 Lake Rd', '555-654-3210','D003'),
('Downtown Rides', 'David Brown', '101 Center Ave', '555-321-0987','D004'),
('Suburban Wheels', 'Eva White', '202 Elm St', '555-876-5432','D005'),
('Highway Motors', 'Frank Green', '303 Highway Ln', '555-765-4321','D006'),
('Sunset Auto', 'Grace Black', '404 Sunset Blvd', '555-234-5678','D007'),
('Northside Cars', 'Henry Blue', '505 North St', '555-456-7890','D008'),
('West End Autos', 'Ivy Gold', '606 West End Ave', '555-567-8901','D009'),
('Metro Motors', 'Jack Silver', '707 Metro Pkwy', '555-678-9012','D010'),
('Rapid Wheels', 'Karen Amber', '808 Rapid St', '555-789-0123','D011'),
('Prime Autos', 'Liam Gray', '909 Prime Rd', '555-890-1234','D012'),
('Ocean View Motors', 'Mia Orange', '111 Ocean Dr', '555-901-2345','D013'),
('Hillside Autos', 'Noah Brown', '222 Hilltop Rd', '555-012-3456','D014'),
('Grand Parkway Autos', 'Olivia Purple', '333 Grand Pkwy', '555-123-6789','D015'),
('Greenfield Cars', 'Paul Yellow', '444 Greenfield St', '555-234-7890','D016'),
('Central City Motors', 'Quinn White', '555 Central Ave', '555-345-8901','D017'),
('Luxury Rides', 'Ryan Pink', '666 Luxury Ln', '555-456-9012','D018'),
('Budget Motors', 'Sophie Teal', '777 Budget Blvd', '555-567-0123','D019'),
('Family Auto', 'Tom Cyan', '888 Family St', '555-678-1234','D020');


CREATE TABLE inventory (
`Dealership_id` varchar(5) COMMENT 'Determins what daelship is witch',
`VIN` int NOT NULL,
	PRIMARY KEY (VIN)
);

INSERT INTO inventory (`Dealership_id`, `VIN`) VALUES
('D001', 10001),
('D001', 10002),
('D002', 10003),
('D003', 10004),
('D003', 10005),
('D004', 10006),
('D005', 10007),
('D005', 10008),
('D001', 10009),
('D002', 10010),
('D003', 10011),
('D004', 10012),
('D005', 10013),
('D005', 10014),
('D001', 10015),
('D002', 10016),
('D003', 10017),
('D004', 10018),
('D005', 10019),
('D005', 10020);


CREATE TABLE vehicle (
  `VIN` VARCHAR(50) NOT NULL,
  `Make` VARCHAR(50) NULL COMMENT 'Describes the brand of vehice',
  `Model` VARCHAR(50) NULL COMMENT 'Describes the type of model',
  `FuelType` VARCHAR(50) NULL COMMENT 'Describes Fuel type',
  `Sold` VARCHAR(50) NULL COMMENT 'Describes if the Vehicle has been sold',
  `BodyStyle` VARCHAR(50) NULL COMMENT 'Describes body type of Vehicle',
  `ClassSize` VARCHAR(50) NULL COMMENT 'Describes the class of the Vehicle',
  `VIN` VARCHAR(20) NOT NULL,
			PRIMARY KEY (`VIN`)
);

INSERT INTO vehicle (`VIN`, `Make`, `Model`, `FuelType`, `Sold`, `BodyStyle`, `ClassSize`) 
VALUES
('10001', 'Audi', 'A4', 'Gasoline', 'No', 'Sedan', 'Compact'),
('10002', 'Audi', 'Q5', 'Gasoline', 'Yes', 'SUV', 'Mid-size'),
('10003', 'Audi', 'A6', 'Diesel', 'No', 'Sedan', 'Full-size'),
('10004', 'Audi', 'Q7', 'Gasoline', 'No', 'SUV', 'Full-size'),
('10005', 'Audi', 'e-tron', 'Electric', 'Yes', 'SUV', 'Mid-size'),
('10006', 'Audi', 'TT', 'Gasoline', 'No', 'Coupe', 'Compact'),
('10007', 'Audi', 'A3', 'Hybrid', 'Yes', 'Sedan', 'Compact'),
('10008', 'Audi', 'RS 5', 'Gasoline', 'No', 'Coupe', 'Luxury'),
('10009', 'Audi', 'Q3', 'Gasoline', 'No', 'SUV', 'Compact'),
('10010', 'Audi', 'S4', 'Gasoline', 'Yes', 'Sedan', 'Compact'),
('10011', 'Audi', 'A8', 'Gasoline', 'No', 'Sedan', 'Luxury'),
('10012', 'Audi', 'RS Q8', 'Gasoline', 'No', 'SUV', 'Luxury'),
('10013', 'Audi', 'Q4 e-tron', 'Electric', 'Yes', 'SUV', 'Mid-size'),
('10014', 'Audi', 'A5', 'Gasoline', 'No', 'Sedan', 'Compact'),
('10015', 'Audi', 'SQ7', 'Diesel', 'Yes', 'SUV', 'Full-size'),
('10016', 'Audi', 'R8', 'Gasoline', 'No', 'Coupe', 'Supercar'),
('10017', 'Audi', 'Q2', 'Gasoline', 'No', 'SUV', 'Compact'),
('10018', 'Audi', 'A7', 'Hybrid', 'Yes', 'Sedan', 'Full-size'),
('10019', 'Audi', 'S5', 'Gasoline', 'No', 'Coupe', 'Luxury'),
('10020', 'Audi', 'e-tron GT', 'Electric', 'No', 'Sedan', 'Luxury');


CREATE TABLE sale_contracts (
Sale_Id int NOT NULL auto_increment,
`VIN` VARCHAR (20) NOT NULL
);

INSERT INTO sale_contracts (`VIN`)
VALUES
('10002'),
('10005'),
('10007'),
('10010'),
('10013'),
('10015'),
('10018');




