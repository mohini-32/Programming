INSERT INTO authors (name,email) VALUES
('J.K. Rowling', 'jknowling@example.com'),
('George R.R. Martin', 'grrm@example.com'),
('J.R.R. Tolkien', 'jrrtolkien@example.com'),
('Stephen King', 'Stephenking@example.com');


INSERT INTO books (title, price, stock_quantity, author_id) VALUES
('Harry Potter and the Sorcerer\'s Stone', 19.99, 50, 1),
('A Game of Thrones', 24.99, 30, 2),
('The Hobbit', 14.99, 40, 4),
('Murder on the Orient Express', 12.99, 25, 3),
('Harry Potter and the Chamber of Secrets', 20.99, 45, 1);




INSERT INTO customers (name, email, phone) VALUES
('Alice Johnson', 'alice.johnson@example.com', '123-456-7890'),
('Bob Smith', 'bob.smith@example.com', '987-654-3210'),
('Charlie Brown', 'charlie.brown@example.com', '456-789-1234'),
('Daisy Miller', 'daisy.miller@example.com', '321-654-9870');



INSERT INTO orders (customer_id, total_amount) VALUES
(1, 39.98),  -- Alice buys two books
(2, 24.99),  -- Bob buys one book
(3, 37.98),  -- Charlie buys two books
(4, 12.99);  -- Daisy buys one book



INSERT INTO order_details (order_id, book_id, quantity, line_total) VALUES
(1, 1, 1, 19.99),  -- Alice buys 1 copy of 'Harry Potter and the Sorcerer's Stone'
(1, 5, 1, 19.99),  -- Alice buys 1 copy of 'Harry Potter and the Chamber of Secrets'
(2, 2, 1, 24.99),  -- Bob buys 1 copy of 'A Game of Thrones'
(3, 3, 2, 29.98),  -- Charlie buys 2 copies of 'The Hobbit'
(4, 4, 1, 12.99);  -- Daisy buys 1 copy of 'Murder on the Orient Express'
