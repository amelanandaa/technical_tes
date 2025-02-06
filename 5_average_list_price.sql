SELECT
  product_line,
  brand,
  AVG(list_price) as average_list_price
FROM `jago_intern.transactions`
WHERE product_line is not null
GROUP BY product_line, brand
ORDER BY product_line, brand ASC

/*
SELECT: this query retrieves the columns product_line, brand, and list_price
AVG(list_price) as average_list_price: an aggregate function that calculate the average of list_price as average_list_price
WHERE product_line is not null: because there is product_line that null, so this query ensures that the data clean from null
GROUP BY product_line, brand: Groups the data by product_line and brand
ORDER BY product_line, brand ASC: sorts the results in ascending order based on product_line and brand column
*/