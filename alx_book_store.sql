CREATE DATABASE IF NOT EXISTS alx_book_store;
    CREATE TABLE Books(
        book_id INT PRIMARY KEY NOT NULL,
        title VARCHAR(130) NOT NULL,
        FOREIGN KEY (author_id) REFERENCES Authors(author_id),
        price DOUBLE NOT NULL,
        publication_date DATE NOT NULL,
    );

    CREATE TABLE Authors(
        author_id INT PRIMARY KEY NOT NULL,
        author_name VARCHAR(215) NOT NULL,
    );

    CREATE TABLE Customers(
        customer_id NT PRIMARY KEY NOT NULL,
        customer_name VARCHAR(215) NOT NULL,
        email VARCHAR(215) NOT NULL,
        address TEXT NOT NULL,
    );

    CREATE TABLE Orders(
        order_id INT PRIMARY KEY NOT NULL,
        FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
        order_date DATE
    );

    CREATE TABLE Order_Details(
        orderdetailid INT PRIMARY KEY NOT NULL,
        FOREIGN KEY (order_id) REFERENCES Orders(order_id),
        FOREIGN KEY (book_id) REFERENCES bOOKS(book_id),
        quantity DOUBLE.
    );