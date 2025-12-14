USE alx_book_store

CREATE TABLE books(
    INT book_id PRIMARY KEY,
    VARCHAR(130) title,
    INT author_id,
    DOUBLE price,
    DATE publication_date,
    FOREIGN KEY (author_id) REFERENCES authors(author_id)
)

CREATE TABLE authors(
    INT author_id PRIMARY KEY,
    VARCHAR(215) author_name
)

CREATE TABLE customers(
    INT customer_id PRIMARY KEY,
    VARCHAR(215) customer_name,
    VARCHAR(215) email,
    TEXT address
)

CREATE TABLE orders(
    INT order_id PRIMARY KEY,
    INT customer_id,
    DATE order_date,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
)

CREATE TABLE order_details(
    INT orderdetailid PRIMARY KEY,
    INT order_id,
    INT book_id,
    DOUBLE quantity,
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (book_id) REFERENCES books(book_id)
)