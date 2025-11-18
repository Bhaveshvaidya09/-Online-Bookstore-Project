-- online book store project 
DROP TABLE IF EXISTS Books;
CREATE TABLE Books(
				
	Book_ID	SERIAL 	PRIMARY KEY,
	Title VARCHAR(50),	
	Author VARCHAR(50),	
	Genre VARCHAR(50),	
	Published_Year INT,	
	Price NUMERIC(10,2),	
	Stock INT	

);

DROP TABLE IF EXISTS Customers;
CREATE TABLE Customers(
				
	Customer_ID	SERIAL 	PRIMARY KEY,
	Name VARCHAR(80),	
	Email VARCHAR(80),	
	Phone INT,	
	City VARCHAR(80),	
	Country	VARCHAR(80)	
);

DROP TABLE IF EXISTS Orders;
CREATE TABLE Orders(			
	Order_ID SERIAL	PRIMARY KEY,
	Customer_ID	INT	REFERENCES Customers(Customer_ID),
	Book_ID	INT REFERENCES Books(Book_ID),	
	Order_Date	DATE,	
	Quantity INT,	
	Total_Amount NUMERIC(10,2)			
);
SELECT * FROM Books;
SELECT * FROM Customers;
SELECT * FROM Orders;

ALTER TABLE books 
ALTER COLUMN title TYPE TEXT;


-- 1) Retrieve all books in the "Fiction" genre:
SELECT title, author, genre
FROM Books
WHERE genre = 'Fiction';

---- 2) Find books published after the year 1950:
SELECT title, author, genre, published_year
FROM Books
WHERE published_year >'1950';

--3) List all customers from the Canada:
SELECT name,country
FROM Customers
WHERE country = 'Canada';

--4) Show orders placed in November 2023:
SELECT customer_id, order_date
FROM Orders
WHERE order_date BETWEEN '2023-11-01' AND '2023-11-30';

--5]Retrieve the total stock of books available:
SELECT  SUM(stock) AS Total_stock
FROM Books;

-- 6) Find the details of the most expensive book:
SELECT * FROM Books 
ORDER BY Price DESC 
LIMIT 1;

--7]Show all customers who ordered more than 1 quantity of a book:
SELECT * FROM Orders
where quantity >1;

--8}Retrieve all orders where the total amount exceeds $20:
SELECT * FROM Orders
where total_amount>20;

--9]List all genres available in the Books table:
SELECT DISTINCT genre FROM Books;


---- 10) Find the book with the lowest stock:
 SELECT * FROM Books 
ORDER BY stock asc 
LIMIT 1;

--11) Calculate the total revenue generated from all orders:
SELECT SUM(total_amount) as Total_revenue FROM Orders;

--

