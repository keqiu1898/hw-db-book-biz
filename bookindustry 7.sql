-- --------------------------------------
--  Ke QiuPart 7 - Queries
-- --------------------------------------
-- --------------------------------------
--  7.1 Books per author
-- --------------------------------------

SELECT 		Authors.FirstName, Authors.LastName, 
			COUNT(BooksAuthors.ISBN) AS "Books per Author"
FROM 		BooksAuthors
			JOIN Authors
				ON BooksAuthors.AuthorID = Authors.AuthorID
GROUP BY 	BooksAuthors.AuthorID, Authors.FirstName, Authors.LastName;
     
     
 
 
 

-- --------------------------------------
--  7.2 Authors per Book
-- --------------------------------------

SELECT 		ba.ISBN, b.BookName, 
			COUNT(ba.AuthorID) as "Authors per Book"
FROM 		BooksAuthors ba
			JOIN Books b
				ON ba.ISBN = b.ISBN
GROUP BY 	ba.ISBN, b.BookName;

  

  
     
     
     

-- --------------------------------------
--  7.3 Author royalties on a book
-- --------------------------------------

SELECT 		ba.ISBN, b.BookName, 
			ROUND(SUM(ba.Royalty),2) as "Author Royalties"
FROM 		BooksAuthors ba
			JOIN Books b
				ON ba.ISBN = b.ISBN
GROUP BY 	ba.ISBN, b.BookName;




     


-- --------------------------------------
--  7.4 Book royalties per author.
-- --------------------------------------
-- select * from Books;

SELECT 		a.FirstName, a.LastName, 
			ba.Royalty as "Book Royalties"
FROM 		BooksAuthors ba
			JOIN Authors a
				ON ba.AuthorID = a.AuthorID
GROUP BY 	a.FirstName, ba.AuthorID, a.LastName, ba.Royalty;
     
     
     
     


-- --------------------------------------
--  7.5 Books in a genre
-- --------------------------------------
-- select * from Books;
SELECT 		g.Genre, COUNT(bg.ISBN) as "Books per Genre"
FROM 		Genres g
            JOIN BooksGenres bg
				ON g.GenreID = bg.GenreID
GROUP BY 	g.Genre, g.GenreID ;


     
-- --------------------------------------
--  7.6 Books published by a publisher
-- --------------------------------------    
SELECT 		p.PublisherName, COUNT(b.ISBN) AS "Number of Books"
FROM 		Publishers p
            JOIN Books b
				ON p.PublisherID = b.PublisherID
GROUP BY 	p.PublisherName, p.PublisherID;
     
     
     

 
 
-- --------------------------------------
--  7.7 Editors per book
-- --------------------------------------    
SELECT 		b.ISBN, b.BookName, COUNT(be.EditorID) AS "Editors per Book"
FROM 		Books b
            JOIN BooksEditors be
				ON b.ISBN  = be.ISBN
GROUP BY 	b.BookName, b.ISBN;
     
     
     
     
     
 
-- --------------------------------------
--  7.8 Books per editor
-- --------------------------------------    
SELECT 		e.EditorID, e.FirstName, e.LastName, COUNT(be.ISBN) AS "Number of Books"
FROM 		Editors e
            JOIN BooksEditors be
				ON e.editorId = be.editorId
GROUP BY 	e.FirstName, e.LastName, e.EditorID;
  
 
 
 
-- --------------------------------------
--  7.9 Books in an order
-- --------------------------------------    
SELECT 		o.OrderID, COUNT(bo.ISBN) AS "Number of Books"
FROM 		Orders o
            JOIN BooksOrders bo
				ON o.OrderID = bo.OrderID
GROUP BY 	o.OrderID;





-- --------------------------------------
--  7.10 Orders for a book
-- --------------------------------------    
SELECT 		b.BookName, COUNT(bo.OrderID) AS "Number of Orders"
FROM 		Books b
            JOIN BooksOrders bo
				ON b.ISBN = bo.ISBN
GROUP BY 	b.ISBN;


		


-- --------------------------------------
--  7.11 Customer orders           
-- --------------------------------------    
SELECT 		c.FirstName, c.LastName, 
            o.Price, o.OrderDate, o.OrderID 
FROM 		Customers c
            JOIN Orders o
				ON o.CustomerID = c.CustomerID;

 

-- --------------------------------------
--  7.12 Orders per customer
-- --------------------------------------    
SELECT 		c.FirstName, c.LastName, COUNT(o.OrderID) AS "Number of Orders"
FROM 		Customers c
            JOIN Orders o
				ON c.CustomerID = o.CustomerID
GROUP BY 	c.FirstName, c.LastName;

