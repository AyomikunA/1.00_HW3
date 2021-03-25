-- --------------------------------------
--  SQL query to answer each of the following questions
-- --------------------------------------
-- --------------------------------------
--  7.1 Books per author
-- --------------------------------------
SELECT FirstName, LastName, BookTitle
FROM Authors a
JOIN BookAuthors ba
	ON a.authorID = ba.authorID
JOIN Books as b
	ON ba.BookID= b.BookID
    ;
-- --------------------------------------
--  7.2 Authors per book
-- --------------------------------------
SELECT  BookTitle, FirstName, LastName
FROM Books b 
JOIN BookAuthors ba
	ON ba.BookID= b.BookID
JOIN Authors a
    ON a.authorID = ba.authorID
	;
-- --------------------------------------
--  7.3 Author royalties on book
-- --------------------------------------
SELECT FirstName, LastName, BookTitle, Price, Royalty, 
		Round((Royalty* Price),2) as RoyaltyPerSale
FROM Authors a
JOIN BookAuthors ba
	ON a.authorID = ba.authorID
JOIN Books b
	ON b.bookID = ba.bookID
ORDER BY LastName, FirstName, BookTitle
	;
-- --------------------------------------
--  7.4 Book royalties per author
-- --------------------------------------
SELECT CONCAT(FirstName, " ", LastName) as FullName, 
	round(sum(Price *Royalty*Quantity),2) as RoyaltiesFromAllSales
FROM Authors a
JOIN BookAuthors as ba
	ON a.AuthorID= ba.AuthorID
JOIN Books b
	ON b.BookID = ba.BookID
JOIN OrderDetails od
	ON b.BookID = od.BookID
GROUP BY FullName
ORDER BY FullName
;
-- --------------------------------------
--  7.5 Books in a genre
-- --------------------------------------
SELECT Genre, Booktitle
FROM Books
ORDER BY Genre
;
-- --------------------------------------
--  7.6 Books published by a publisher
-- --------------------------------------
SELECT PublisherName, BookTitle 
FROM Books b
JOIN Publishers p 
	ON b.PublisherID = p.PublisherID
ORDER BY PublisherName
;
-- --------------------------------------
--  7.7 Editor per book
-- --------------------------------------
SELECT EditorName, BookTitle
FROM Editors e
JOIN BookEditors as be
	ON be.editorID = e.editorID
JOIN Books b
	ON be.bookID = b.bookID
ORDER BY EditorName
;
-- --------------------------------------
--  7.8 Books per editor
-- --------------------------------------
SELECT BookTitle, EditorName
FROM Books b
JOIN BookEditors as be
	ON be.bookID = b.bookID
JOIN Editors e
	ON be.editorID = e.editorID
ORDER BY BookTitle
;
-- --------------------------------------
--  7.9 Books in an order
-- --------------------------------------
SELECT o.OrderID as OrderID, BookTitle, Quantity
FROM Orders o
JOIN OrderDetails od
	ON o.OrderID = od.OrderID
JOIN Books b
	ON  od.BookID = b.BookID
ORDER BY o.OrderID
;


-- --------------------------------------
--  7.10 Orders for a book
-- --------------------------------------
SELECT BookTitle, sum(Quantity) as QuantitySold
FROM Orders o
JOIN OrderDetails od
	ON o.OrderID = od.OrderID
JOIN Books b
	ON  od.BookID = b.BookID
GROUP BY BookTitle
;



-- --------------------------------------
--  7.11 Customer orders
-- --------------------------------------
SELECT CustomerName, o.OrderID, BookTitle, od.OrderDate
FROM Customers c
JOIN Orders o
	ON c.CustomerID = o.CustomerID
JOIN OrderDetails od
	ON o.OrderID = od.OrderID
JOIN Books b
	ON od.BookID = b.BookID
ORDER BY CustomerName, OrderID, BookTitle
;


-- --------------------------------------
--  7.12 Orders per customer
-- --------------------------------------
SELECT CustomerName, count(OrderID) as NumOfOrders
FROM Customers c
JOIN Orders o
	ON c.CustomerID = o.CustomerID
GROUP BY CustomerName
ORDER BY CustomerName
