SELECT
  d.wealth_segment,
  t.order_status,
  COUNT(DISTINCT(t.customer_id)) as customer_count
FROM `jago_intern.customer_demographics` as d
JOIN `jago_intern.transactions` as t
ON d.customer_id = t.customer_id
WHERE t.order_status = 'Approved'
GROUP BY d.wealth_segment, t.order_status

/*
SELECT : this query retrieves the columns wealth_segment, order_status, and customer_id
COUNT(DISTINCT(t.customer_id)) as customer_count : count is used to calculate the number of customer_id and distinct ensures that there are no duplicates
FROM customer_demographics as d join transactions as t : join 2 tables, customer_demographics and transactions
ON d.customer_id = t.customer_id : ensures that join is correctly aligned based on customer_id
WHERE t.order_status = 'Approved' : to ensures that only completed orders
GROUP BY d.wealth_segment, t.order_status : groups the data by wealth_segment and order_status
*/