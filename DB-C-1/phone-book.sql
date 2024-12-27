-- Active: 1735106435900@@127.0.0.1@3306@bookstore
CREATE TABLE contacts (
    contact_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    phone VARCHAR(15) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

CREATE INDEX idx_last_name ON contacts (last_name);

SELECT * FROM contacts WHERE last_name = 'Taylor';


-- check index
SHOW INDEX FROM contacts;


INSERT INTO contacts (first_name, last_name, phone, email) 
VALUES
('John', 'Doe', '123-456-7890', 'john.doe@example.com'),
('Jane', 'Smith', '987-654-3210', 'jane.smith@example.com'),
('Emily', 'Brown', '555-123-4567', 'emily.brown@example.com'),
('Michael', 'Johnson', '444-987-6543', 'michael.johnson@example.com'),
('Sarah', 'Williams', '222-333-4444', 'sarah.williams@example.com'),
('David', 'Jones', '111-222-3333', 'david.jones@example.com'),
('Emma', 'Taylor', '666-777-8888', 'emma.taylor@example.com'),
('Daniel', 'Anderson', '888-999-0000', 'daniel.anderson@example.com'),
('Sophia', 'Thomas', '123-321-1234', 'sophia.thomas@example.com'),
('James', 'Martinez', '432-543-6543', 'james.martinez@example.com');
