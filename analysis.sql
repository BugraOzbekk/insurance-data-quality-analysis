-- Query 1: Premium validation check
SELECT
    p.policy_id,
    p.base_premium,
    pt.transaction_date,
    pt.premium_charged,
    pt.source_system,
    CASE
        WHEN pt.premium_charged IS NULL THEN 'MISSING_CHARGE'
        WHEN pt.premium_charged > p.base_premium THEN 'OVERCHARGED'
        WHEN pt.premium_charged < p.base_premium THEN 'UNDERCHARGED'
    END AS issue_type
FROM policies p
LEFT JOIN premium_transactions pt 
    ON p.policy_id = pt.policy_id
WHERE pt.premium_charged IS NULL
   OR pt.premium_charged <> p.base_premium;

-- Query 2: Policy start date integrity check
SELECT 
    c.customer_id,
    c.full_name,
    c.join_date,
    p.policy_id,
    p.policy_start_date
FROM customers c
JOIN policies p 
    ON c.customer_id = p.customer_id
WHERE p.policy_start_date < c.join_date;

-- Query 3: Transactions after policy cancellation
SELECT 
    c.customer_id,
    c.full_name,
    p.policy_id,
    p.cover_type,
    p.policy_status,
    p.policy_end_date,
    pt.transaction_date,
    pt.premium_charged,
    pt.source_system
FROM policies p
JOIN customers c
    ON p.customer_id = c.customer_id
JOIN premium_transactions pt
    ON p.policy_id = pt.policy_id
WHERE p.policy_status = 'CANCELLED'
  AND pt.transaction_date > p.policy_end_date
ORDER BY pt.transaction_date;
