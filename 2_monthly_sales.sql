SELECT
  brand,
  EXTRACT(MONTH FROM t.transaction_date) as month,
  SUM(list_price) as total_sales
FROM `jago_intern.transactions` as t
WHERE brand is not null and order_status ="Approved"
GROUP BY brand, month
ORDER BY brand ASC, month ASC

/*
SELECT : this query retrieves the columns brand, transaction_date, and list_price
EXTRACT(MONTH FROM t.transaction_date) as month : extracts the month from transaction_date
SUM(list_price) as total_sales : an aggregate function that sums the list_price as total_sales
WHERE brand is not null : condition filter to ensure that brand column is not null
and order_status = "Approved" : filters the data to include only successful transaction
GROUP BY brand, month : group the data by brand and month
ORDER BY brand asc, month asc : sort the result in ascending order
*/