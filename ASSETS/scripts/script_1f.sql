CREATE TABLE borrowed_books (
    borrow_id INT AUTO_INCREMENT PRIMARY KEY,
    book_id INT,
    user_id INT,
    FOREIGN KEY (book_id)
        REFERENCES books (book_id),
    FOREIGN KEY (user_id)
        REFERENCES users (user_id),
    borrow_date DATE,
    return_date DATE
);