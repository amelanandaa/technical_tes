SELECT
  state,
  COUNT(DISTINCT(customer_id)) as number_of_high_value_customers
FROM `jago_intern.customer_address`
WHERE property_valuation > 10
GROUP BY state
ORDER BY number_of_high_value_customers DESC
LIMIT 3

/*
SELECT : this query retrieves the columns state and customer_id
COUNT(DISTINCT(customer_id)) as number_of_high_value_customers : count is used to calculate the number of customer_id and distinct ensures that there are no duplicates
WHERE property_valuation >10 : since the values in the file are in 100k units, the condition must be greater than 1,000,000 (1,000,000 / 100k = 10). The multiplication factor of 100k ensures the condition aligns with the criteria
ORDER BY number_of_high_value_customers DESC : sort the results in descending order
GROUP BY state : groups the data by state
LIMIT 3 : restricts the output to only the top 3 states
*/