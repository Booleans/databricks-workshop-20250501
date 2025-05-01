CREATE FUNCTION state_filter(addr_state STRING)
RETURN IF(IS_ACCOUNT_GROUP_MEMBER('authorized_users'), true, addr_state='CA');

CREATE OR REPLACE TABLE anicholls.loans.issued_loans_bronze
CLUSTER BY AUTO AS
SELECT
  *
FROM
  PARQUET.`/Volumes/main/anicholls/issued_loans/LoanStats*`;

ALTER TABLE anicholls.loans.issued_loans_bronze SET ROW FILTER state_filter ON (addr_state);

SELECT
  *
FROM
  anicholls.loans.issued_loans_bronze