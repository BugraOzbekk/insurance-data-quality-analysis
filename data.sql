INSERT INTO customers (customer_id, full_name, date_of_birth, state_code, join_date)
VALUES
(101, 'John Smith', '1988-04-10', 'QLD', '2023-01-15'),
(102, 'Emily Brown', '1992-09-22', 'VIC', '2023-03-10'),
(103, 'Michael Lee', '1979-12-05', 'QLD', '2022-11-01'),
(104, 'Sarah Wilson', '1990-06-14', 'NSW', '2024-01-20'),
(105, 'David Taylor', '1985-01-30', 'VIC', '2023-07-18'),
(106, 'Olivia Martin', '1995-08-11', 'QLD', '2024-02-01');

INSERT INTO policies (policy_id, customer_id, cover_type, policy_status, policy_start_date, policy_end_date, base_premium, last_update_date)
VALUES
(1001, 101, 'Death Cover', 'ACTIVE', '2024-01-01', NULL, 120.00, '2024-01-01 09:00:00'),
(1002, 102, 'TPD Cover', 'ACTIVE', '2024-01-05', NULL, 150.00, '2024-01-05 10:00:00'),
(1003, 103, 'Income Protection', 'ACTIVE', '2024-01-10', NULL, 180.00, '2024-01-10 11:00:00'),
(1004, 104, 'Death Cover', 'ACTIVE', '2024-01-12', NULL, 110.00, '2024-01-12 12:00:00'),
(1005, 105, 'TPD Cover', 'CANCELLED', '2024-01-15', '2024-03-01', 130.00, '2024-03-01 08:30:00'),
(1006, 106, 'Death Cover', 'ACTIVE', '2024-02-01', NULL, 140.00, '2024-02-01 14:00:00');

INSERT INTO premium_transactions (policy_id, transaction_date, premium_charged, transaction_type, source_system)
VALUES
(1001, '2024-02-01', 120.00, 'MONTHLY_PREMIUM', 'CORE'),
(1001, '2024-03-01', 120.00, 'MONTHLY_PREMIUM', 'CORE'),
(1002, '2024-02-01', 150.00, 'MONTHLY_PREMIUM', 'CORE'),
(1002, '2024-03-01', 150.00, 'MONTHLY_PREMIUM', 'CORE'),
(1003, '2024-02-01', 9999.00, 'MONTHLY_PREMIUM', 'BATCH_FIX'),
(1003, '2024-03-01', 180.00, 'MONTHLY_PREMIUM', 'CORE'),
(1004, '2024-02-01', 5.00, 'MONTHLY_PREMIUM', 'CORE'),
(1005, '2024-03-10', 130.00, 'MONTHLY_PREMIUM', 'CORE'),
(1006, '2024-02-15', NULL, 'MONTHLY_PREMIUM', 'MANUAL_UPLOAD');
