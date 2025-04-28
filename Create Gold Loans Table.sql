CREATE TABLE IF NOT EXISTS main.anicholls.issued_loans_gold
CLUSTER BY AUTO
AS
SELECT
  loan_id,
  loan_amnt,
  term,
  int_rate,
  installment,
  grade,
  emp_length,
  home_ownership,
  annual_inc,
  purpose,
  addr_state,
  dti
FROM
  main.anicholls.issued_loans_silver;

SELECT *
FROM main.anicholls.issued_loans_silver
LIMIT 10;