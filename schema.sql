CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    full_name VARCHAR(100),
    date_of_birth DATE,
    state_code VARCHAR(10),
    join_date DATE
);

CREATE TABLE policies (
    policy_id INT PRIMARY KEY,
    customer_id INT,
    cover_type VARCHAR(50),
    policy_status VARCHAR(20),
    policy_start_date DATE,
    policy_end_date DATE NULL,
    base_premium DECIMAL(10,2),
    last_update_date DATETIME,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

CREATE TABLE premium_transactions (
    transaction_id INT IDENTITY(1,1) PRIMARY KEY,
    policy_id INT,
    transaction_date DATE,
    premium_charged DECIMAL(10,2),
    transaction_type VARCHAR(30),
    source_system VARCHAR(30),
    FOREIGN KEY (policy_id) REFERENCES policies(policy_id)
);
