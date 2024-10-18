
CREATE TABLE Books (
    book_id INT PRIMARY KEY,
	title VARCHAR(130),
    author_id INT,
    price DOUBLE,
    publication_date DATE,
    FOREIGN KEY (author_id) REFERENCES authors(author_id)
);

CREATE TABLE Authors (
	author_id INT PRIMARY KEY,
    author_name VARCHAR(215)
)

CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(215),
    email VARCHAR(215),
    address TEXT
) 

CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    oder_date DATE,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
)

CREATE TABLE Order_Details (
    order_detail_id INT PRIMARY KEY,
    order_id INT,
    book_id INT,
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (book_id) REFERENCES books(book_id)
)

