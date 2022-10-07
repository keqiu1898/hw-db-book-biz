-- --------------------------------------
--  Ke Qiu Part 6
-- --------------------------------------

USE `book industry`;

-- --------------------------------------
--  Insertion - TABLE Authors
-- --------------------------------------


INSERT INTO `Authors` values(1, 'Kenneth', 'Rogoff', 'Male');
INSERT INTO `Authors` values(2,'Maggie', 'Sokolik', 'Female');
INSERT INTO `Authors` values(3,'F.Scott', 'Fitzgerald', 'Male');
INSERT INTO `Authors` values(4,'Ernest', 'Hemingway', 'Male');
INSERT INTO `Authors` values(5,'Thomas' ,'Wolfe', 'Male');
INSERT INTO `Authors` values(6,'Gregory', 'Maguire', 'Male');

INSERT INTO `Authors` values(7,'Nelle' ,'Lee', 'Male');
INSERT INTO `Authors` values(8,'Abhijit' ,'Banerjee', 'Male');
INSERT INTO `Authors` values(9,'Esther' ,'Duflo', 'Female');
INSERT INTO `Authors` values(10,'Daron' ,'Acemoglu', 'Male');
INSERT INTO `Authors` values(11,'James' ,'Robinson', 'Male');
INSERT INTO `Authors` values(12,'Stuart' ,'Russell', 'Male');
INSERT INTO `Authors` values(13,'Peter' ,'Norvig', 'Male');
INSERT INTO `Authors` values(14,'John' ,'Tolkien', 'Male');


-- --------------------------------------
--  Insertion - TABLE Genres
-- --------------------------------------

INSERT INTO `Genres` values(1,'Thesis');
INSERT INTO `Genres` values(2,'Textbook');
INSERT INTO `Genres` values(3,'Tragedy');
INSERT INTO `Genres` values(4,'Novel');
INSERT INTO `Genres` values(5,'Bildungsroman');
INSERT INTO `Genres` values(6,'Literary Fiction');
INSERT INTO `Genres` values(7,'Fantasy');
INSERT INTO `Genres` values(8,'Non-fiction');
INSERT INTO `Genres` values(9,'Economics');
INSERT INTO `Genres` values(10,'Computer Science');
INSERT INTO `Genres` values(11,'Parallel Novel');
INSERT INTO `Genres` values(12,'Comparative Politics');
INSERT INTO `Genres` values(13,'Nautical Fiction');
INSERT INTO `Genres` values(14,'Fiction');
INSERT INTO `Genres` values(15,'Autobiographical Novel');
INSERT INTO `Genres` values(16,'Historical Fiction');
INSERT INTO `Genres` values(17,'High fantasy');
INSERT INTO `Genres` values(18,'Adventure');



-- --------------------------------------
--  Insertion - TABLE Publishers
-- --------------------------------------

INSERT INTO `Publishers` values(1,'Princeton University Press', '08540');
INSERT INTO `Publishers` values(2,'Wayzgoose Press', '54241');
INSERT INTO `Publishers` values(3,"Charles Scribner's Sons", '10017');
INSERT INTO `Publishers` values(4,'SimonandSchuster.com', '10020');
INSERT INTO `Publishers` values(5,'Harper & Sons', '21601');
INSERT INTO `Publishers` values(6,'WilliamMorrow & Company', '10022');
INSERT INTO `Publishers` values(7,'ReganBooks', '10022');
INSERT INTO `Publishers` values(8,'J. B. Lippincott & Co.', '60015');
INSERT INTO `Publishers` values(9,'PublicAffairs', '20006');
INSERT INTO `Publishers` values(10,'Crown Business', '27741');
INSERT INTO `Publishers` values(11,'Prentice Hall', '44242');
INSERT INTO `Publishers` values(12,'Allen & Unwin', '32940');


-- --------------------------------------
--  Insertion - TABLE Books
-- --------------------------------------


INSERT INTO `Books` values('9780691172132','The Curse of Cash', 1);
INSERT INTO `Books` values('9781720784340','Fifty Ways to Practice Grammar', 2);
INSERT INTO `Books` values('9798405801308','The Great Gatsby', 3);
INSERT INTO `Books` values('9798793955775','The Sun Also Rises', 4);
INSERT INTO `Books` values('9780807123898','The Web and the Rock', 5);
INSERT INTO `Books` values('9780684801223','The Old Man and the Sea', 6);
INSERT INTO `Books` values('9780060987107','Wicked: The Life and Times of the Wicked Witch of the West', 7);
INSERT INTO `Books` values('9780060935467','To Kill a Mockingbird', 8);
INSERT INTO `Books` values('9781610390934','Poor Economics: A Radical Rethinking of the Way to Fight Global Poverty', 9);
INSERT INTO `Books` values('9780307719225','Why Nations Fail: The Origins of Power, Prosperity, and Poverty', 10);
INSERT INTO `Books` values('9781292401133','Artificial Intelligence: A Modern Approach', 11);
INSERT INTO `Books` values('9780358439196','The Lord of the Rings', 12);

select * from Books;










-- --------------------------------------
--  Insertion - TABLE Editors
-- --------------------------------------

INSERT INTO `Editors` values( 1,'Dorothy', 'Zemach', 'Female');
INSERT INTO `Editors` values( 2,'Max', 'Perkins', 'Male');
INSERT INTO `Editors` values( 3,'Edward', 'Aswell', 'Male');
INSERT INTO `Editors` values( 4,'Judith', 'Regan', 'Female');








-- --------------------------------------
--  Insertion - TABLE Customers
-- --------------------------------------


INSERT INTO `Customers` values(1,'Alan','Turing', '2124567890@gmail.com', '(212) 456-7890', 'Boston', 'MA', 'USA');
INSERT INTO `Customers` VALUES(2,'Nancy','Davolio','nancy@gmail.com','(360) 234-8488','Seattle','WA','USA');
INSERT INTO `Customers` VALUES(3,'Andrew','Fuller','andrew@yahoo.com',NULL,'Dallas','TX','USA');
INSERT INTO `Customers` VALUES(4,'Janet','Leverling','janet@hotmail.com','(786) 634-4522','Miami','FL','USA');
INSERT INTO `Customers` VALUES(5,'Margaret','Peacock','maggie@outlook.com',NULL,'Phoenix','AZ','USA');
INSERT INTO `Customers` VALUES(6,'Steven','Buchanan','steve@apple.com',NULL,'Denver','CO','USA');
INSERT INTO `Customers` VALUES(7,'Michael','Suyama','mike@icloud.com','(541) 544-7733','Portland','OR','USA');
INSERT INTO `Customers` VALUES(8,'Robert','King','rob@gmail.com',NULL,'San Francisco','CA','USA');
INSERT INTO `Customers` VALUES(9,'Laura','Callahan','laura@gmail.com','(901) 425-8913','Memphis','TN','USA');
INSERT INTO `Customers` VALUES(10,'Anne','Dodsworth','anne@msn.com',NULL,'Portland','ME','USA');
INSERT INTO `Customers` VALUES(11,'Ivy','Johnson','ivy@gmail.com',NULL,'Chicago','IL','USA');
INSERT INTO `Customers` VALUES(12,'Ana','Trujillo','ana@gmail.com','(360) 457-2258','Seattle','WA','USA');
INSERT INTO `Customers` VALUES(13,'Thomas','Hardy','tom@yahoo.com',NULL,'Austin','TX','USA');
INSERT INTO `Customers` VALUES(14,'Antonio','Moreno','tony@hotmail.com',NULL,'Miami','FL','USA');
INSERT INTO `Customers` VALUES(15,'Elizabeth','Brown','beth@outlook.com','(480) 324-2178','Phoenix','AZ','USA');
INSERT INTO `Customers` VALUES(16,'Ann','Devon','ann@apple.com',NULL,'Denver','CO','USA');
INSERT INTO `Customers` VALUES(17,'Ariel','Cruz','ariel@icloud.com','(541) 652-4565','Portland','OR','USA');
INSERT INTO `Customers` VALUES(18,'Giovanni','Rovelli','gio@gmail.com','(415) 665-2255','San Francisco','CA','USA');
INSERT INTO `Customers` VALUES(19,'Marie','Bertrand','marie@gmail.com',NULL,'Memphis','TN','USA');
INSERT INTO `Customers` VALUES(20,'Philip','Cramer','phil@msn.com','(207) 4436-6524','Portland','ME','USA');
INSERT INTO `Customers` VALUES(21,'Michael','Holz','michael@gmail.com',NULL,'Chicago','IL','USA');







-- --------------------------------------
--  Insertion - TABLE Orders
-- --------------------------------------


INSERT INTO `Orders` values(1, 10.99, '2021-10-1', 1);   
INSERT INTO `Orders` values(2, 0.99, '2021-10-2', 2);
INSERT INTO `Orders` values(3, 3.99, '2021-10-3', 3);
INSERT INTO `Orders` values(4, 50, '2021-10-4', 4);
INSERT INTO `Orders` values(5, 7.99, '2021-10-4', 5);   
INSERT INTO `Orders` values(6, 4.59, '2021-10-5', 6);
INSERT INTO `Orders` values(7, 3.96, '2021-10-6', 7);
INSERT INTO `Orders` values(8, 10.00, '2021-10-6', 8);
INSERT INTO `Orders` values(9, 10.99, '2021-10-6', 9);   
INSERT INTO `Orders` values(10, 9.99, '2021-10-7', 10);
INSERT INTO `Orders` values(11, 3.18, '2021-10-8', 11);
INSERT INTO `Orders` values(12, 19.00, '2021-10-8', 12);
INSERT INTO `Orders` values(13, 29.99, '2021-10-9', 13);   
INSERT INTO `Orders` values(14, 9.99, '2021-10-10',14);
INSERT INTO `Orders` values(15, 3.96, '2021-10-10', 15);
INSERT INTO `Orders` values(16, 40.00, '2021-10-11',16);
INSERT INTO `Orders` values(17, 10.23, '2021-10-11',17);   
INSERT INTO `Orders` values(18, 13.56, '2021-10-12',18);
INSERT INTO `Orders` values(19, 13.99, '2021-10-13',19);
INSERT INTO `Orders` values(20, 40.02, '2021-10-14',20);
INSERT INTO `Orders` values(21, 23.99, '2021-10-18',21);
INSERT INTO `Orders` values(22, 18.28, '2021-10-18',18);
INSERT INTO `Orders` values(23, 10.87, '2021-10-19',19);   
INSERT INTO `Orders` values(24, 16.95, '2021-10-20',20);
INSERT INTO `Orders` values(25, 63.39, '2021-10-21',21);
INSERT INTO `Orders` values(26, 40.78, '2021-10-21',5);
INSERT INTO `Orders` values(27, 63.67, '2021-10-22',7);   
INSERT INTO `Orders` values(28, 78.42, '2021-10-23',4);
INSERT INTO `Orders` values(29, 67.36, '2021-10-24',21);
INSERT INTO `Orders` values(30, 87.32, '2021-10-25',19);







-- --------------------------------------
--  Insertion - TABLE BooksAuthors
-- --------------------------------------


INSERT INTO `BooksAuthors` values(1, '9780691172132', 2.5);
INSERT INTO `BooksAuthors` values(2, '9781720784340', 0.5);
INSERT INTO `BooksAuthors` values(3, '9798405801308', 0.99);
INSERT INTO `BooksAuthors` values(4, '9798793955775', 4.99);
INSERT INTO `BooksAuthors` values(5, '9780807123898', 15.39);
INSERT INTO `BooksAuthors` values(4, '9780684801223', 3.45);
INSERT INTO `BooksAuthors` values(6, '9780060987107', 10.65);
INSERT INTO `BooksAuthors` values(7, '9780060935467', 6.39);
INSERT INTO `BooksAuthors` values(8, '9781610390934', 3.45);
INSERT INTO `BooksAuthors` values(9, '9781610390934', 3.45);
INSERT INTO `BooksAuthors` values(10, '9780307719225', 6.25);
INSERT INTO `BooksAuthors` values(11, '9780307719225', 6.25);
INSERT INTO `BooksAuthors` values(12, '9781292401133', 5.65);
INSERT INTO `BooksAuthors` values(13, '9781292401133', 5.65);
INSERT INTO `BooksAuthors` values(14, '9780358439196', 30.78);




-- --------------------------------------
--  Insertion - TABLE BooksEditors
-- --------------------------------------

INSERT INTO `BooksEditors` values( 1, '9781720784340');
INSERT INTO `BooksEditors` values( 2, '9798405801308');
INSERT INTO `BooksEditors` values( 2, '9798793955775');
INSERT INTO `BooksEditors` values( 3, '9780807123898');
INSERT INTO `BooksEditors` values( 4, '9780060987107');









-- --------------------------------------
--  Insertion - TABLE BooksOrders
-- --------------------------------------


INSERT INTO `BooksOrders` values(1, '9798793955775');
INSERT INTO `BooksOrders` values(1, '9781720784340');
INSERT INTO `BooksOrders` values(2, '9798793955775');
INSERT INTO `BooksOrders` values(3, '9798405801308');
INSERT INTO `BooksOrders` values(4, '9780684801223');
INSERT INTO `BooksOrders` values(4, '9780060987107');
INSERT INTO `BooksOrders` values(5, '9780691172132');
INSERT INTO `BooksOrders` values(6, '9781720784340');
INSERT INTO `BooksOrders` values(7, '9781720784340');
INSERT INTO `BooksOrders` values(8, '9798405801308');
INSERT INTO `BooksOrders` values(9, '9780807123898');
INSERT INTO `BooksOrders` values(10, '9781720784340');
INSERT INTO `BooksOrders` values(11, '9780691172132');
INSERT INTO `BooksOrders` values(12, '9798793955775');
INSERT INTO `BooksOrders` values(12, '9780691172132');
INSERT INTO `BooksOrders` values(13, '9798405801308');
INSERT INTO `BooksOrders` values(14, '9780684801223');
INSERT INTO `BooksOrders` values(14, '9780807123898');
INSERT INTO `BooksOrders` values(15, '9781610390934');
INSERT INTO `BooksOrders` values(16, '9781720784340');
INSERT INTO `BooksOrders` values(17, '9781610390934');
INSERT INTO `BooksOrders` values(18, '9798405801308');
INSERT INTO `BooksOrders` values(19, '9780684801223');
INSERT INTO `BooksOrders` values(20, '9780060987107');
INSERT INTO `BooksOrders` values(21, '9780684801223');
INSERT INTO `BooksOrders` values(21, '9781720784340');
INSERT INTO `BooksOrders` values(22, '9780684801223');
INSERT INTO `BooksOrders` values(23, '9798405801308');
INSERT INTO `BooksOrders` values(23, '9798793955775');
INSERT INTO `BooksOrders` values(24, '9780307719225');
INSERT INTO `BooksOrders` values(25, '9780691172132');
INSERT INTO `BooksOrders` values(26, '9781720784340');
INSERT INTO `BooksOrders` values(27, '9781292401133');
INSERT INTO `BooksOrders` values(28, '9798405801308');
INSERT INTO `BooksOrders` values(29, '9781292401133');
INSERT INTO `BooksOrders` values(30, '9798405801308');
INSERT INTO `BooksOrders` values(30, '9780684801223');
INSERT INTO `BooksOrders` values(30, '9780060987107');






-- --------------------------------------
--  Insertion - TABLE BooksGenres
-- --------------------------------------


INSERT INTO `BooksGenres` values(9780060935467, 5);
INSERT INTO `BooksGenres` values(9780060987107, 7);
INSERT INTO `BooksGenres` values(9780060987107, 4);
INSERT INTO `BooksGenres` values(9780060987107, 11);
INSERT INTO `BooksGenres` values(9780307719225, 12);
INSERT INTO `BooksGenres` values(9780307719225, 9);
INSERT INTO `BooksGenres` values(9780684801223, 4);
INSERT INTO `BooksGenres` values(9780684801223, 13);
INSERT INTO `BooksGenres` values(9780691172132, 1);
INSERT INTO `BooksGenres` values(9780807123898, 14);
INSERT INTO `BooksGenres` values(9780807123898, 15);
INSERT INTO `BooksGenres` values(9781292401133, 2);
INSERT INTO `BooksGenres` values(9781610390934, 8);

INSERT INTO `BooksGenres` values(9781720784340, 2);
INSERT INTO `BooksGenres` values(9798405801308, 4);
INSERT INTO `BooksGenres` values(9798405801308, 14);
INSERT INTO `BooksGenres` values(9798405801308, 3);
INSERT INTO `BooksGenres` values(9798793955775, 4);
INSERT INTO `BooksGenres` values(9780358439196, 17);
INSERT INTO `BooksGenres` values(9780358439196, 18);