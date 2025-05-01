CREATE OR REPLACE TABLE main.anicholls.issued_loans_bronze
CLUSTER BY AUTO AS
SELECT
  *
FROM
  main.anicholls.issued_loans;