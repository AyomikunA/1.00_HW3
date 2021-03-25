-- --------------------------------------
--  SAMPLE DATA FOR THE BOOK_BUSINESS DATABASE
-- --------------------------------------
-- --------------------------------------
--  POPULATE THE AUTHORS TABLE
-- --------------------------------------
-- INSERT INTO `Authors` VALUES(ID,FIRSTNAME,LASTNAME,COUNTRY);
INSERT INTO `Authors` VALUES(1,'Abel','Sanchez','USA');
INSERT INTO `Authors` VALUES(2,'Ayomikun','Ayodeji','Nigeria');
INSERT INTO `Authors` VALUES(3,'John','Williams','Spain');
INSERT INTO `Authors` VALUES(4,'Paula','Pieper','England');
INSERT INTO `Authors` VALUES(5,'Sama','Taha','Egypt');
INSERT INTO `Authors` VALUES(6,'Daler','Pirov','Russia');
INSERT INTO `Authors` VALUES(7,'Yash','Trivedi','India');
INSERT INTO `Authors` VALUES(8,'Anna','Landler','Norway');
INSERT INTO `Authors` VALUES(9,'Liliana','Jelu','Puerto Rico');
INSERT INTO `Authors` VALUES(10,'Micah','Luedtke','USA');

-- --------------------------------------
--  POPULATE THE EDITORS TABLE
-- --------------------------------------
-- INSERT INTO `Editors` VALUES(ID, FULLNAME, CITY, STATE);
INSERT INTO `Editors` VALUES(1,'Nailah Smith','Atlanta','GA');
INSERT INTO `Editors` VALUES(2,'Andrea Orji','Houston','TX');
INSERT INTO `Editors` VALUES(3,'Mojo Oke','Cambridge','MA');
INSERT INTO `Editors` VALUES(4,'Zoe Fisher','Chicago','IL');
INSERT INTO `Editors` VALUES(5,'Jimmmy Zelle','Boston','MA');

-- --------------------------------------
--  POPULATE THE PUBLISHERS TABLE
-- --------------------------------------
-- INSERT INTO `Publsihers` VALUES(ID, NAME, CITY, REGION, COUNTRY );
INSERT INTO `Publishers` VALUES(1,'The Tech','Cambridge','Massachusetts','USA');
INSERT INTO `Publishers` VALUES(2,'Geese Pages','Bowen Island','Vancouver','Canada');


-- --------------------------------------
--  POPULATE THE BOOKS TABLE
-- --------------------------------------
-- INSERT INTO `Books` VALUES(ID, TITLE, GENRE, PUBLISHERID, YEAR, PRICE);
INSERT INTO `Books` VALUES(1,"SQL Databases","Education", 1,1999,70.29);
INSERT INTO `Books` VALUES(2,"Lover's Gambit","Romance", 1,1998,19.99);
INSERT INTO `Books` VALUES(3,"UFO On Sight","Sci-Fi", 1,1997,93.09);
INSERT INTO `Books` VALUES(4,"Pain","Romance", 1,1996,17.89);
INSERT INTO `Books` VALUES(5,"Sorrow","Romance", 1,1995,27.50);
INSERT INTO `Books` VALUES(6,"Glow","Fantasy", 1,1994,37.40);
INSERT INTO `Books` VALUES(7,"Flow","Fantasy", 1,1993,73.50);
INSERT INTO `Books` VALUES(8,"Tales of William Churchill","Non-Fiction", 1,1992,17.25);
INSERT INTO `Books` VALUES(9,"Letters from Chadwick Boseman","Memoir", 1,1991,27.50);
INSERT INTO `Books` VALUES(10,"Chemistry 101","Education", 1,1999,24.30);
INSERT INTO `Books` VALUES(11,"Love Me","Romance", 2,1989,30.50);
INSERT INTO `Books` VALUES(12,"Hold Me","Romance", 2,1979,42.45);
INSERT INTO `Books` VALUES(13,"Python Basics II","Education", 2,1969,15.50);
INSERT INTO `Books` VALUES(14,"Letters from Michael Jackson","Memoir", 2,1988,35.75);
INSERT INTO `Books` VALUES(15,"Valentine","Romance", 2,1979,27.30);
INSERT INTO `Books` VALUES(16,"Letters from Anita Jackson","Memoir", 2,2000,18.99);
INSERT INTO `Books` VALUES(17,"Physics 101","Education", 2,2006,99.99);
INSERT INTO `Books` VALUES(18,"Solid Plasma","Sci-Fi", 2,2002,18.98);
INSERT INTO `Books` VALUES(19,"Letters from BoJack Horseman","Memoir", 2,2001,42.40);
INSERT INTO `Books` VALUES(20,"SQL Databases II","Education", 2,2004,75.99);


-- --------------------------------------
--  POPULATE THE BOOKAUTHORS TABLE
-- --------------------------------------
-- INSERT INTO `BookAuthors` VALUES(BOOKID, AUTHORID, ROYALTY);
INSERT INTO `BookAuthors` VALUES(1,1,0.08);
INSERT INTO `BookAuthors` VALUES(2,1,0.18);
INSERT INTO `BookAuthors` VALUES(3,2,0.08);
INSERT INTO `BookAuthors` VALUES(4,2,0.28);
INSERT INTO `BookAuthors` VALUES(5,3,0.08);
INSERT INTO `BookAuthors` VALUES(6,3,0.07);
INSERT INTO `BookAuthors` VALUES(7,4,0.06);
INSERT INTO `BookAuthors` VALUES(8,4,0.05);
INSERT INTO `BookAuthors` VALUES(9,4,0.04);
INSERT INTO `BookAuthors` VALUES(10,5,0.03);
INSERT INTO `BookAuthors` VALUES(11,6,0.12);
INSERT INTO `BookAuthors` VALUES(12,7,0.08);
INSERT INTO `BookAuthors` VALUES(13,7,0.02);
INSERT INTO `BookAuthors` VALUES(14,8,0.03);
INSERT INTO `BookAuthors` VALUES(15,8,0.06);
INSERT INTO `BookAuthors` VALUES(16,9,0.04);
INSERT INTO `BookAuthors` VALUES(17,9,0.03);
INSERT INTO `BookAuthors` VALUES(18,10,0.18);
INSERT INTO `BookAuthors` VALUES(19,10,0.06);
INSERT INTO `BookAuthors` VALUES(20,10,0.07);

-- --------------------------------------
--  POPULATE THE BOOKEDITORS TABLE
-- --------------------------------------
-- INSERT INTO `BookEditors` VALUES(BOOKID, EDITORID);
INSERT INTO `BookEditors` VALUES(1,1);
INSERT INTO `BookEditors` VALUES(2,1);
INSERT INTO `BookEditors` VALUES(3,2);
INSERT INTO `BookEditors` VALUES(4,2);
INSERT INTO `BookEditors` VALUES(5,3);
INSERT INTO `BookEditors` VALUES(6,3);
INSERT INTO `BookEditors` VALUES(7,4);
INSERT INTO `BookEditors` VALUES(8,4);
INSERT INTO `BookEditors` VALUES(9,4);
INSERT INTO `BookEditors` VALUES(10,5);
INSERT INTO `BookEditors` VALUES(11,5);
INSERT INTO `BookEditors` VALUES(12,5);
INSERT INTO `BookEditors` VALUES(13,4);
INSERT INTO `BookEditors` VALUES(14,3);
INSERT INTO `BookEditors` VALUES(15,3);
INSERT INTO `BookEditors` VALUES(16,2);
INSERT INTO `BookEditors` VALUES(17,2);
INSERT INTO `BookEditors` VALUES(18,1);
INSERT INTO `BookEditors` VALUES(19,1);
INSERT INTO `BookEditors` VALUES(20,2);

-- --------------------------------------
--  POPULATE THE CUSTOMERS TABLE
-- --------------------------------------
-- INSERT INTO `Customers` VALUES(ID, FULLNAME);
INSERT INTO `Customers` VALUES(1,'Zachary Smith');
INSERT INTO `Customers` VALUES(2,'Elena Gonzalez');
INSERT INTO `Customers` VALUES(3,'Sophia Chan');
INSERT INTO `Customers` VALUES(4,'Matthew Ganatra');
INSERT INTO `Customers` VALUES(5,'Kenneth Donald');

-- --------------------------------------
--  POPULATE THE ORDERS TABLE
-- --------------------------------------
-- INSERT INTO `Orders` VALUES(ORDERID, CUSTOMERID);
INSERT INTO `Orders` VALUES(1,1);
INSERT INTO `Orders` VALUES(2,1);
INSERT INTO `Orders` VALUES(3,1);
INSERT INTO `Orders` VALUES(4,1);
INSERT INTO `Orders` VALUES(5,1);
INSERT INTO `Orders` VALUES(6,2);
INSERT INTO `Orders` VALUES(7,2);
INSERT INTO `Orders` VALUES(8,2);
INSERT INTO `Orders` VALUES(9,2);
INSERT INTO `Orders` VALUES(10,3);
INSERT INTO `Orders` VALUES(11,3);
INSERT INTO `Orders` VALUES(12,3);
INSERT INTO `Orders` VALUES(13,3);
INSERT INTO `Orders` VALUES(14,3);
INSERT INTO `Orders` VALUES(15,4);
INSERT INTO `Orders` VALUES(16,4);
INSERT INTO `Orders` VALUES(17,4);
INSERT INTO `Orders` VALUES(18,5);

-- --------------------------------------
--  POPULATE THE ORDERDETAILS TABLE
-- --------------------------------------
-- INSERT INTO `OrderDetails` VALUES(ORDERID, BOOKID, Quantity, OrderDate);
INSERT INTO `OrderDetails` VALUES(1,1,1,'1981-11-11 05:31:08');
INSERT INTO `OrderDetails` VALUES(2,6,1,'1982-11-11 04:31:08');
INSERT INTO `OrderDetails` VALUES(3,2,1,'1983-11-11 06:31:08');
INSERT INTO `OrderDetails` VALUES(4,3,3,'1984-11-11 07:31:08');
INSERT INTO `OrderDetails` VALUES(5,3,1,'1988-11-11 08:31:08');
INSERT INTO `OrderDetails` VALUES(6,4,3,'1986-11-11 09:31:08');
INSERT INTO `OrderDetails` VALUES(7,5,1,'1985-11-11 06:31:08');
INSERT INTO `OrderDetails` VALUES(8,16,1,'1982-11-11 16:31:08');
INSERT INTO `OrderDetails` VALUES(9,20,1,'1991-11-11 13:31:08');
INSERT INTO `OrderDetails` VALUES(10,13,4,'1991-11-11 12:31:08');
INSERT INTO `OrderDetails` VALUES(11,14,1,'1993-11-11 13:21:08');
INSERT INTO `OrderDetails` VALUES(12,15,1,'1981-11-11 16:51:08');
INSERT INTO `OrderDetails` VALUES(13,17,6,'1981-11-11 16:31:08');
INSERT INTO `OrderDetails` VALUES(14,2,2,'1983-11-11 15:31:08');
INSERT INTO `OrderDetails` VALUES(15,2,1,'1984-11-11 20:31:08');
INSERT INTO `OrderDetails` VALUES(16,6,2,'1986-11-11 06:31:08');
INSERT INTO `OrderDetails` VALUES(17,7,4,'1987-11-11 21:31:08');
INSERT INTO `OrderDetails` VALUES(18,8,1,'1982-11-11 22:31:08');
