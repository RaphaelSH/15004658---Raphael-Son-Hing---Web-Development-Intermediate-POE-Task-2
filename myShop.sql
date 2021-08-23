create database test

use test
--Creating tables
create table tbl_Customer
(
cusID VARCHAR2(10) not null primary key,
cusName VARCHAR2(10) not null,
cusAddress VARCHAR2(50) not null, 
cusContact VARCHAR2(10) not null,
orderID not null
)

create table tbl_Item
(
itemID VARCHAR2(10) not null primary key,
itemName VARCHAR2(10) not null,
itemAmount int,
itemPrice NUMBER(10)
)


create table tbl_Order
(
orderID not null primary key,
cusID VARCHAR2(10) not null,
itemID VARCHAR2(10)not null,
orderDate date not null,
ordAddress VARCHAR2(50) not null,
orderAmount int,
orderPrice NUMBER(10)
)

INSERT INTO tbl_Customer VALUES ('C0001', 'Alpha', '1 Alpha Street', '3218528751', 'O0001');
INSERT INTO tbl_Customer VALUES ('C0002', 'Bravo', '1 Beta Street', '3218528752', 'O0002');
INSERT INTO tbl_Customer VALUES ('C0003', 'Charlie', '1 Gamma Street', '3218528753', 'O0003');
INSERT INTO tbl_Customer VALUES ('C0004', 'Delta', '1 Delta Street', '3218528754', 'O0004');
INSERT INTO tbl_Customer VALUES ('C0005', 'Echo', '1 Epsilion Street', '3218528755', 'O0005');
INSERT INTO tbl_Customer VALUES ('C0006', 'Foxtrot', '1 Zeta Street', '3218528756', 'O0006');
INSERT INTO tbl_Customer VALUES ('C0007', 'Golf', '1 Eta Street', '3218528757', 'O0007');
INSERT INTO tbl_Customer VALUES ('C0008', 'Hotel', '1 Theta Street', '3218528758', 'O0008');
INSERT INTO tbl_Customer VALUES ('C0009', 'India', '1 Iota Street', '3218528759', 'O0009');
INSERT INTO tbl_Customer VALUES ('C0010', 'Juliette', '1 Kappa Street', '3218528760', 'O0010');
INSERT INTO tbl_Customer VALUES ('C0011', 'Kilo', '1 Lambda Street', '3218528761', 'O0011');
INSERT INTO tbl_Customer VALUES ('C0012', 'Lima', '1 Mu Street', '3218528762', 'O0012');
INSERT INTO tbl_Customer VALUES ('C0013', 'Mike', '1 Nu Street', '3218528763', 'O0013');
INSERT INTO tbl_Customer VALUES ('C0014', 'November', '1 Xi Street', '3218528764', 'O0014');
INSERT INTO tbl_Customer VALUES ('C0015', 'Oscar', '1 Omicron Street', '3218528765', 'O0015');
INSERT INTO tbl_Customer VALUES ('C0016', 'Papa', '1 Pi Street', '3218528766', 'O0016');
INSERT INTO tbl_Customer VALUES ('C0017', 'Quebec', '1 Rho Street', '3218528767', 'O0017');
INSERT INTO tbl_Customer VALUES ('C0018', 'Romeo', '1 Sigma Street', '3218528768', 'O0018');
INSERT INTO tbl_Customer VALUES ('C0019', 'Sierra', '1 Tau Street', '3218528769', 'O0019');
INSERT INTO tbl_Customer VALUES ('C0020', 'Tango', '1 Upsilon Street', '3218528770', 'O0020');
INSERT INTO tbl_Customer VALUES ('C0021', 'Uniform', '1 Phi Street', '3218528771', 'O021');
INSERT INTO tbl_Customer VALUES ('C0022', 'Victor', '1 Chi Street', '3218528772', 'O0022');
INSERT INTO tbl_Customer VALUES ('C0023', 'Whiskey', '1 Psi Street', '3218528773', 'O0023');
INSERT INTO tbl_Customer VALUES ('C0024', 'Xray', '1 Omega Street', '3218528774', 'O0024');
INSERT INTO tbl_Customer VALUES ('C0025', 'Yankee', '1 Fool Street', '3218528775', 'O0025');
INSERT INTO tbl_Customer VALUES ('C0026', 'Zuku', '1 Magician Street', '3218528776', 'O0026');
INSERT INTO tbl_Customer VALUES ('C0027', 'Priestess', '1 Empress Street', '3218528777', 'O0027');
INSERT INTO tbl_Customer VALUES ('C0028', 'Emperor', '1 Heirophant Street', '3218528778', 'O0028');
INSERT INTO tbl_Customer VALUES ('C0029', 'Lovers', '1 Chariot Street', '3218528779', 'O0029');
INSERT INTO tbl_Customer VALUES ('C0030', 'Justice', '1 Hermit Street', '3218528780', 'O0030');


INSERT INTO tbl_Items VALUES ('I0001', 'Fool', 10, 65.98);
INSERT INTO tbl_Items VALUES ('I0002', 'Magician', 10, 65.98);
INSERT INTO tbl_Items VALUES ('I0003', 'Priestess', 10, 65.98);
INSERT INTO tbl_Items VALUES ('I0004', 'Empress', 10, 65.98);
INSERT INTO tbl_Items VALUES ('I0005', 'Emperor', 10, 65.98);
INSERT INTO tbl_Items VALUES ('I0006', 'Lovers', 10, 65.98);
INSERT INTO tbl_Items VALUES ('I0007', 'Chariot', 10, 65.98);
INSERT INTO tbl_Items VALUES ('I0008', 'Justice', 10, 65.98);
INSERT INTO tbl_Items VALUES ('I0009', 'Hermit', 10, 65.98);
INSERT INTO tbl_Items VALUES ('I0010', 'Wheel of Fortune', 10, 65.98);
INSERT INTO tbl_Items VALUES ('I0011', 'Hanged Man', 10, 65.98);
INSERT INTO tbl_Items VALUES ('I0012', 'Death', 10, 65.98);
INSERT INTO tbl_Items VALUES ('I0013', 'Temperance', 10, 65.98);
INSERT INTO tbl_Items VALUES ('I0014', 'Devil', 10, 65.98);
INSERT INTO tbl_Items VALUES ('I0015', 'Tower', 10, 65.98);
INSERT INTO tbl_Items VALUES ('I0016', 'Moon', 10, 65.98);
INSERT INTO tbl_Items VALUES ('I0017', 'Sun', 10, 65.98);
INSERT INTO tbl_Items VALUES ('I0018', 'Judgement', 10, 65.98);
INSERT INTO tbl_Items VALUES ('I0019', 'Aeon', 10, 65.98);
INSERT INTO tbl_Items VALUES ('I0020', 'World', 10, 65.98);
INSERT INTO tbl_Items VALUES ('I0021', 'Universe', 10, 65.98);
INSERT INTO tbl_Items VALUES ('I0022', 'Hunger', 10, 65.98);
INSERT INTO tbl_Items VALUES ('I0023', 'Jester', 10, 65.98);
INSERT INTO tbl_Items VALUES ('I0024', 'Sword', 10, 65.98);
INSERT INTO tbl_Items VALUES ('I0025', 'Bow', 10, 65.98);
INSERT INTO tbl_Items VALUES ('I0026', 'Lance', 10, 65.98);
INSERT INTO tbl_Items VALUES ('I0027', 'Mound', 10, 65.98);
INSERT INTO tbl_Items VALUES ('I0028', 'Staff', 10, 65.98);
INSERT INTO tbl_Items VALUES ('I0029', 'Dirk', 10, 65.98);
INSERT INTO tbl_Items VALUES ('I0030', 'Axe', 10, 65.98);

INSERT INTO tbl_Order VALUES ('O0001', 'C0001', 'I0001', '21 March 2020', '1 Alpha Street', 79.98);
INSERT INTO tbl_Order VALUES ('O0002', 'C0002', 'I0002', '21 March 2020', '1 Beta Street', 79.98);
INSERT INTO tbl_Order VALUES ('O0003', 'C0003', 'I0003', '21 March 2020', '1 Gamma Street', 79.98);
INSERT INTO tbl_Order VALUES ('O0004', 'C0004', 'I0004', '21 March 2020', '1 Delta Street', 79.98);
INSERT INTO tbl_Order VALUES ('O0005', 'C0005', 'I0005', '21 March 2020', '1 Epsilion Street', 79.98);
INSERT INTO tbl_Order VALUES ('O0006', 'C0006', 'I0006', '21 March 2020', '1 Zeta Street', 79.98);
INSERT INTO tbl_Order VALUES ('O0007', 'C0007', 'I0007', '21 March 2020', '1 Eta Street', 79.98);
INSERT INTO tbl_Order VALUES ('O0008', 'C0008', 'I0008', '21 March 2020', '1 Theta Street', 79.98);
INSERT INTO tbl_Order VALUES ('O0009', 'C0009', 'I0009', '21 March 2020', '1 Iota Street', 79.98);
INSERT INTO tbl_Order VALUES ('O0010', 'C0010', 'I0010', '21 March 2020', '1 Kappa Street', 79.98);
INSERT INTO tbl_Order VALUES ('O0011', 'C0011', 'I0011', '21 March 2020', '1 Lambda Street', 79.98);
INSERT INTO tbl_Order VALUES ('O0012', 'C0012', 'I0012', '21 March 2020', '1 Mu Street', 79.98);
INSERT INTO tbl_Order VALUES ('O0013', 'C0013', 'I0013', '21 March 2020', '1 Nu Street', 79.98);
INSERT INTO tbl_Order VALUES ('O0014', 'C0014', 'I0014', '21 March 2020', '1 Xi Street', 79.98);
INSERT INTO tbl_Order VALUES ('O0015', 'C0015', 'I0015', '21 March 2020', '1 Omicron Street', 79.98);
INSERT INTO tbl_Order VALUES ('O0016', 'C0016', 'I0016', '21 March 2020', '1 Pi Street', 79.98);
INSERT INTO tbl_Order VALUES ('O0017', 'C0017', 'I0017', '21 March 2020', '1 Rho Street', 79.98);
INSERT INTO tbl_Order VALUES ('O0018', 'C0018', 'I0018', '21 March 2020', '1 Sigma Street', 79.98);
INSERT INTO tbl_Order VALUES ('O0019', 'C0019', 'I0019', '21 March 2020', '1 Tau Street', 79.98);
INSERT INTO tbl_Order VALUES ('O0020', 'C0020', 'I0020', '21 March 2020', '1 Upsilon Street', 79.98);
INSERT INTO tbl_Order VALUES ('O0021', 'C0021', 'I0021', '21 March 2020', '1 Phi Street', 79.98);
INSERT INTO tbl_Order VALUES ('O0022', 'C0022', 'I0022', '21 March 2020', '1 Chi Street', 79.98);
INSERT INTO tbl_Order VALUES ('O0023', 'C0023', 'I0023', '21 March 2020', '1 Psi Street', 79.98);
INSERT INTO tbl_Order VALUES ('O0024', 'C0024', 'I0024', '21 March 2020', '1 Omega Street', 79.98);
INSERT INTO tbl_Order VALUES ('O0025', 'C0025', 'I0025', '21 March 2020', '1 Fool Street', 79.98);
INSERT INTO tbl_Order VALUES ('O0026', 'C0026', 'I0026', '21 March 2020', '1 Magician Street', 79.98);
INSERT INTO tbl_Order VALUES ('O0027', 'C0027', 'I0027', '21 March 2020', '1 Empress Street', 79.98);
INSERT INTO tbl_Order VALUES ('O0028', 'C0028', 'I0028', '21 March 2020', '1 Heirophant Street', 79.98);
INSERT INTO tbl_Order VALUES ('O0029', 'C0029', 'I0029', '21 March 2020', '1 Chariot Street', 79.98);
INSERT INTO tbl_Order VALUES ('O0030', 'C0030', 'I0030', '21 March 2020', '1 Hermit Street', 79.98);





