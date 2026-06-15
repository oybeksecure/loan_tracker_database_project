
-- ARITHMETIC OPERATORS

SELECT loan_id,
l_amount,
l_amount * 1.10 AS increased_amount
FROM loans;

SELECT collateral_id,
asset_name,
estimated_value,
estimated_value - 500 AS reduced_value
FROM collateral;


-- COMPARISON OPERATORS


SELECT *
FROM loans
WHERE l_amount > 1000;

SELECT *
FROM loans
WHERE deadline_date > GETDATE();


-- LOGICAL OPERATORS


SELECT *
FROM loans
WHERE l_amount > 1000
AND status_id = 'LS001';

SELECT *
FROM people
WHERE NOT phone LIKE '010%';


-- BITWISE OPERATORS


SELECT payment_id,
CAST(p_amount AS INT) & 1 AS odd_even_flag
FROM payments;

SELECT loan_id,
CAST(l_amount AS INT) & 1 AS bit_result
FROM loans;


-- STRING OPERATORS


SELECT person_id,
CONCAT(name, ' - ', phone) AS contact_information
FROM people;

SELECT *
FROM people
WHERE name LIKE 'A%';


-- SET OPERATORS


SELECT person_id
FROM people

EXCEPT

SELECT borrower_id
FROM loans;

SELECT lender_id
FROM loans

UNION

SELECT borrower_id
FROM loans;


-- ORDER BY


SELECT *
FROM loans
ORDER BY l_amount DESC;

SELECT *
FROM people
ORDER BY name ASC;


-- INNER JOIN


SELECT l.loan_id,
p.name,
l.l_amount
FROM loans l
INNER JOIN people p
ON l.borrower_id = p.person_id;

SELECT p.payment_id,
p.p_amount,
pm.method_name
FROM payments p
INNER JOIN payment_methods pm
ON p.method_id = pm.method_id;


-- LEFT JOIN

SELECT pe.name,
l.loan_id
FROM people pe
LEFT JOIN loans l
ON pe.person_id = l.borrower_id;

SELECT l.loan_id,
c.asset_name
FROM loans l
LEFT JOIN collateral c
ON l.loan_id = c.loan_id;


-- RIGHT JOIN


SELECT l.loan_id,
ls.status_name
FROM loans l
RIGHT JOIN loan_status ls
ON l.status_id = ls.status_id;

SELECT p.payment_id,
pm.method_name
FROM payments p
RIGHT JOIN payment_methods pm
ON p.method_id = pm.method_id;


-- FULL JOIN


SELECT l.loan_id,
c.asset_name
FROM loans l
FULL JOIN collateral c
ON l.loan_id = c.loan_id;

SELECT pe.name,
l.loan_id
FROM people pe
FULL JOIN loans l
ON pe.person_id = l.borrower_id;


-- SELF JOIN


SELECT p1.name AS lender_name,
p2.name AS borrower_name,
l.loan_id
FROM loans l
JOIN people p1
ON l.lender_id = p1.person_id
JOIN people p2
ON l.borrower_id = p2.person_id;

SELECT a.loan_id AS first_loan,
b.loan_id AS second_loan,
a.borrower_id
FROM loans a
JOIN loans b
ON a.borrower_id = b.borrower_id
AND a.loan_id <> b.loan_id;


-- MULTIPLE TABLE JOIN


SELECT l.loan_id,
p.name AS borrower_name,
ls.status_name,
lt.type_name,
l.l_amount
FROM loans l
JOIN people p
ON l.borrower_id = p.person_id
JOIN loan_status ls
ON l.status_id = ls.status_id
JOIN loan_types lt
ON l.loan_type_id = lt.loan_type_id;

SELECT py.payment_id,
py.p_amount,
pm.method_name,
l.loan_id
FROM payments py
JOIN payment_methods pm
ON py.method_id = pm.method_id
JOIN loans l
ON py.loan_id = l.loan_id;


SELECT
    l.loan_id,
    borrower.name AS borrower_name,
    lender.name AS lender_name,
    lt.type_name,
    ls.status_name,
    l.l_amount,
    SUM(ISNULL(p.p_amount,0)) AS total_paid
FROM loans l
JOIN people borrower
    ON l.borrower_id = borrower.person_id
JOIN people lender
    ON l.lender_id = lender.person_id
JOIN loan_types lt
    ON l.loan_type_id = lt.loan_type_id
JOIN loan_status ls
    ON l.status_id = ls.status_id
LEFT JOIN payments p
    ON l.loan_id = p.loan_id
GROUP BY
    l.loan_id,
    borrower.name,
    lender.name,
    lt.type_name,
    ls.status_name,
    l.l_amount;



-- SINGLE ROW SUBQUERIES


SELECT loan_id,
(
SELECT MAX(l_amount)
FROM loans
) AS highest_loan
FROM loans;

SELECT name
FROM people
WHERE person_id =
(
SELECT TOP 1 borrower_id
FROM loans
ORDER BY l_amount DESC
);


-- MULTI ROW SUBQUERIES


SELECT *
FROM people
WHERE person_id IN
(
SELECT borrower_id
FROM loans
);

SELECT *
FROM loans
WHERE l_amount > ALL
(
SELECT l_amount
FROM loans
WHERE status_id = 'LS002'
);


-- CORRELATED SUBQUERIES


SELECT p.person_id,
p.name
FROM people p
WHERE EXISTS
(
SELECT 1
FROM loans l
WHERE l.borrower_id = p.person_id
);

SELECT loan_id,
l_amount
FROM loans l
WHERE l_amount >
(
SELECT AVG(l2.l_amount)
FROM loans l2
WHERE l2.loan_type_id = l.loan_type_id
);



SELECT
    l.loan_id,
    l.l_amount,
    borrower_id
FROM loans l
WHERE l.l_amount >
(
    SELECT AVG(l2.l_amount)
    FROM loans l2
    WHERE l2.borrower_id = l.borrower_id
);



-- CASE STATEMENTS


SELECT loan_id,
l_amount,
CASE
WHEN l_amount < 1000 THEN 'Small Loan'
WHEN l_amount BETWEEN 1000 AND 5000 THEN 'Medium Loan'
ELSE 'Large Loan'
END AS loan_category
FROM loans;

SELECT payment_id,
p_amount,
CASE
WHEN p_amount >= 1000 THEN 'High Payment'
ELSE 'Regular Payment'
END AS payment_status
FROM payments;


-- COALESCE / NULLIF


SELECT person_id,
COALESCE(phone,'No Phone Number') AS phone
FROM people;

SELECT loan_id,
NULLIF(l_amount,0) AS adjusted_amount
FROM loans;


-- DATE FUNCTIONS


SELECT GETDATE() AS current_date_time;

SELECT loan_id,
DATEDIFF(day, issue_date, deadline_date) AS loan_duration
FROM loans;

SELECT loan_id,
DATEADD(day,30,issue_date) AS next_month
FROM loans;

SELECT YEAR(issue_date) AS issue_year,
MONTH(issue_date) AS issue_month
FROM loans;


-- INDEXES


CREATE INDEX idx_loans_amount
ON loans(l_amount);

CREATE INDEX idx_people_name
ON people(name);


-- VIEWS


GO
CREATE VIEW ActiveLoans
AS
SELECT loan_id,
borrower_id,
lender_id,
l_amount
FROM loans
WHERE status_id = 'LS001';
GO

SELECT *
FROM ActiveLoans;

GO
CREATE VIEW PaymentSummary
AS
SELECT payment_id,
loan_id,
p_amount,
payment_date
FROM payments;
GO

SELECT *
FROM PaymentSummary;


-- WINDOW FUNCTIONS


SELECT loan_id,
l_amount,
ROW_NUMBER() OVER
(
ORDER BY l_amount DESC
) AS row_num
FROM loans;

SELECT loan_id,
l_amount,
RANK() OVER
(
ORDER BY l_amount DESC
) AS loan_rank
FROM loans;

SELECT
    loan_id,
    borrower_id,
    l_amount,
    RANK() OVER
    (
        PARTITION BY borrower_id
        ORDER BY l_amount DESC
    ) AS loan_rank
FROM loans;

SELECT
    payment_id,
    loan_id,
    payment_date,
    p_amount,
    SUM(p_amount) OVER
    (
        PARTITION BY loan_id
        ORDER BY payment_date
    ) AS cumulative_payment
FROM payments;

-- CTE


WITH HighValueLoans AS
(
SELECT *
FROM loans
WHERE l_amount > 5000
)
SELECT *
FROM HighValueLoans;

WITH RecentPayments AS
(
SELECT *
FROM payments
WHERE payment_date >= DATEADD(month,-1,GETDATE())
)
SELECT *
FROM RecentPayments;


WITH LoanBalance AS
(
    SELECT
        l.loan_id,
        l.l_amount,
        ISNULL(SUM(p.p_amount),0) AS total_paid
    FROM loans l
    LEFT JOIN payments p
        ON l.loan_id = p.loan_id
    GROUP BY l.loan_id,l.l_amount
)
SELECT *,
       l_amount - total_paid AS remaining_balance
FROM LoanBalance;



WITH ReminderDates AS
(
    SELECT
        CAST(GETDATE() AS DATE) AS remind_date,
        1 AS level

    UNION ALL

    SELECT
        DATEADD(DAY,7,remind_date),
        level + 1
    FROM ReminderDates
    WHERE level < 5
)
SELECT *
FROM ReminderDates;

-- STORED PROCEDURES


GO
CREATE PROCEDURE GetAllLoans
AS
BEGIN
SELECT *
FROM loans;
END;
GO

EXEC GetAllLoans;

GO
CREATE PROCEDURE GetLoansByStatus
@status_id VARCHAR(5)
AS
BEGIN
SELECT *
FROM loans
WHERE status_id = @status_id;
END;
GO

EXEC GetLoansByStatus 'LS001';

GO
CREATE PROCEDURE GetLoanSummary
    @loan_id VARCHAR(8)
AS
BEGIN

    SELECT
        l.loan_id,
        l.l_amount,
        ISNULL(SUM(p.p_amount),0) AS total_paid,
        l.l_amount - ISNULL(SUM(p.p_amount),0) AS balance
    FROM loans l
    LEFT JOIN payments p
        ON l.loan_id = p.loan_id
    WHERE l.loan_id = @loan_id
    GROUP BY l.loan_id,l.l_amount;

END;
go


-- USER DEFINED FUNCTIONS


GO
CREATE FUNCTION dbo.fn_TotalPayments
(
@loan_id VARCHAR(8)
)
RETURNS DECIMAL(15,2)
AS
BEGIN
DECLARE @total DECIMAL(15,2);


SELECT @total = SUM(p_amount)
FROM payments
WHERE loan_id = @loan_id;

RETURN ISNULL(@total,0);


END;
GO

SELECT dbo.fn_TotalPayments('L001');

GO
CREATE FUNCTION dbo.fn_LoanCategory
(
@amount DECIMAL(15,2)
)
RETURNS VARCHAR(20)
AS
BEGIN
DECLARE @category VARCHAR(20);


IF @amount < 1000
    SET @category = 'Small';
ELSE IF @amount <= 5000
    SET @category = 'Medium';
ELSE
    SET @category = 'Large';

RETURN @category;


END;
GO

SELECT dbo.fn_LoanCategory(7500);


-- TRIGGERS


GO
CREATE TRIGGER trg_default_status
ON loans
AFTER INSERT
AS
BEGIN
PRINT 'New loan has been created.';
END;
GO


GO
CREATE TRIGGER trg_payment_insert
ON payments
AFTER INSERT
AS
BEGIN
PRINT 'New payment recorded.';
END;
GO
