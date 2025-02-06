SELECT
  customer_id,
  SUM(list_price) as total_spending,
  COUNT(DISTINCT(transaction_id)) as number_of_transactions
FROM `jago_intern.transactions`
WHERE order_status ="Approved"
GROUP BY customer_id 
HAVING number_of_transactions > 5 AND total_spending > 10000
ORDER BY number_of_transactions DESC, total_spending DESC

/*
SELECT : this query is used to retrieve the colomns customer_id, list_price, and transaction_id
SUM(list_price) as total spending : an agregat function used to sum the list price as total spending
COUNT(DISTINCT(transaction_id)) : COUNT is used as an agregat to calculate transaction_id and DISTINCT ensures that there are no duplicates
WHERE order_status = approved : this condition filters to include only successful transactions
GROUP BY customer_id : ensure that the data is grouped by customer_id
HAVING number_of_transactions > 5 and total_spending > 10000 : Filters the data to include only customers who have made more than 5 transactions and have total spending over 10,000
order_by number_of_transactions DESC, total_spending DESC : sort the results in descending order
*/