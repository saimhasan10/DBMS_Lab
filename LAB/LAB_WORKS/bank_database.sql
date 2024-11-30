-- Creating the bank database
CREATE DATABASE bank;


-- Creating the customers table
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,                -- Unique customer ID
    customer_name VARCHAR(100),                 -- Customer's full name
    address VARCHAR(255),                       -- Customer's address
    phone_number VARCHAR(15),                   -- Customer's phone number
    email VARCHAR(100)                          -- Customer's email
);

-- Creating the accounts table
CREATE TABLE accounts (
    account_number INT PRIMARY KEY,             -- Unique account number
    customer_id INT,                            -- Foreign key to the customers table
    account_type VARCHAR(20),                   -- Type of account (savings/checking)
    balance DECIMAL(15, 2),                     -- Account balance
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)  -- Linking to customers table
);

-- Creating the loans table
CREATE TABLE loans (
    loan_id INT PRIMARY KEY,                    -- Unique loan ID
    customer_id INT,                             -- Foreign key to the customers table
    loan_amount DECIMAL(15, 2),                  -- Amount of the loan
    interest_rate DECIMAL(5, 2),                 -- Interest rate for the loan
    term INT,                                    -- Loan term in months/years
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)  -- Linking to customers table
);

-- Creating the branches table
CREATE TABLE branches (
    branch_id INT PRIMARY KEY,                   -- Unique branch ID
    branch_name VARCHAR(100),                    -- Name of the branch
    address VARCHAR(255),                        -- Branch address
    phone_number VARCHAR(15)                     -- Branch phone number
);


----------------------    insert  data   --------------------

-- Inserting data into the customers table
INSERT INTO customers 
VALUES 
(1001, 'John Doe', '123 Main St', '555-1212', 'johndoe@email.com'),
(1002, 'Jane Smith', '456 Elm St', '555-3434', 'janesmith@email.com'),
(1003, 'Michael Johnson', '789 Oak St', '555-5656', 'michaeljohnson@email.com'),
(1004, 'Emily Davis', '234 Pine St', '555-7878', 'emilydavis@email.com'),
(1005, 'David Lee', '567 Cedar St', '555-9090', 'davidlee@email.com');


-- Inserting data into the accounts table
INSERT INTO accounts 
VALUES 
(1111, 1001, 'Savings', 1000.00),
(2222, 1002, 'Checking', 5000.00),
(3333, 1003, 'Savings', 2500.00),
(4444, 1004, 'Checking', 3000.00),
(5555, 1005, 'Savings', 1500.00);


-- Inserting data into the loans table
INSERT INTO loans 
VALUES 
('L1', 1001, 10000.00, 5.0, 5),
('L2', 1002, 20000.00, 4.5, 3),
('L3', 1003, 15000.00, 6.0, 4),
('L4', 1004, 8000.00, 3.5, 2),
('L5', 1005, 12000.00, 5.5, 3);


-- Inserting data into the branches table
INSERT INTO branches 
VALUES 
('B1', 'Main Branch', '123 Main St', '555-1111'),
('B2', 'Elm Street Branch', '456 Elm St', '555-2222'),
('B3', 'Oak Street Branch', '789 Oak St', '555-3333'),
('B4', 'Pine Street Branch', '234 Pine St', '555-4444'),
('B5', 'Cedar Street Branch', '567 Cedar St', '555-5555');
