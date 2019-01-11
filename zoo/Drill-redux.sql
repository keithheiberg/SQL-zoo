USE db_zoo;
SELECT * FROM tbl_habitat;
SELECT * FROM tbl_species WHERE species_order = 3;
SELECT * FROM tbl_nutrition WHERE nutrition_cost < 600.01;
SELECT * FROM tbl_nutrition WHERE nutrition_id > 2201 AND nutrition_id < 2206;
SELECT species_name,nutrition_id FROM tbl_species INNER JOIN tbl_nutrition 
ON nutrition_id = species_nutrition WHERE nutrition_id BETWEEN 2202 AND 2206;
SELECT species_name AS [Species Name:],nutrition_type AS [Nutrition Type:] 
FROM tbl_species INNER JOIN tbl_nutrition ON nutrition_id = species_nutrition;
SELECT specialist_fname, specialist_lname, specialist_contact 
FROM ((tbl_specialist 
INNER JOIN tbl_care ON care_specialist = tbl_specialist.specialist_id) 
INNER JOIN tbl_species ON species_care = 'care_6');
 
CREATE DATABASE db_customer;
USE db_customer;
CREATE TABLE tbl_customer (
    customerID int NOT NULL PRIMARY KEY,
    fName varchar(255),
    lName varchar(255)
);
CREATE TABLE tbl_contact (
    contactID int NOT NULL PRIMARY KEY,
    contactAddress varchar(255),
    contactPhone varchar(15),
    customerID int NOT NULL FOREIGN KEY REFERENCES tbl_customer(customerID)
);
INSERT INTO tbl_customer (customerID, fName, lName)
VALUES (1, 'Bilbo', 'Baggins');
INSERT INTO tbl_customer (customerID, fName, lName)
VALUES (2, 'Bungo', 'Baggins');
INSERT INTO tbl_customer (customerID, fName, lName)
VALUES (3, 'Belladonna', 'Took');
INSERT INTO tbl_contact (contactID, contactAddress, contactPhone, customerID)
VALUES (1, 'Bag End', '612-333-3333', 1);
INSERT INTO tbl_contact (contactID, contactAddress, contactPhone, customerID)
VALUES (2, 'Garden Bottom', '612-444-4444', 2);
INSERT INTO tbl_contact (contactID, contactAddress, contactPhone, customerID)
VALUES (3, 'Nightshade Fields', '612-555-5555', 3);
SELECT fName, lName FROM tbl_customer 
INNER JOIN tbl_contact ON contactAddress = 'Bag End';
