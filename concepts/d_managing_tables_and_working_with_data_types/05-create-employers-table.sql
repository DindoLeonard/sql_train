CREATE TABLE employers (
  company_name VARCHAR(200),
  company_address VARCHAR(300),   -- yearly_revenue FLOAT(5,2),
  yearly_revenue NUMERIC(5,2), -- 5 total digits, 2 decimals only after .
  is_hiring BOOLEAN DEFAULT FALSE
)