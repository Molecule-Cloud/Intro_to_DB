USE alx_book_store

CREATE TABLE Authors(
    INT author_id PRIMARY KEY,
    VARCHAR(215) author_name
)

CREATE TABLE Books(
    INT book_id PRIMARY KEY,
    VARCHAR(130) title,
    INT author_id,
    DOUBLE price,
    DATE publication_date,
    FOREIGN KEY (author_id) REFERENCES authors(author_id)
)


CREATE TABLE Customers(
    INT customer_id PRIMARY KEY,
    VARCHAR(215) customer_name,
    VARCHAR(215) email,
    TEXT address
)

CREATE TABLE Orders(
    INT order_id PRIMARY KEY,
    INT customer_id,
    DATE order_date,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
)

CREATE TABLE Order_Details(
    INT orderdetailid PRIMARY KEY,
    INT order_id,
    INT book_id,
    DOUBLE quantity,
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (book_id) REFERENCES books(book_id)
)