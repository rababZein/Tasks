SELECT 
  t.customer,
  SUM(CASE WHEN t.type = 'BUY' THEN 1 ELSE 0 END) AS num_buy,
  SUM(CASE WHEN t.type = 'SELL' THEN 1 ELSE 0 END) AS num_sell,
  SUM(CASE WHEN t.status = 'COMPLETED' THEN 1 ELSE 0 END) AS num_complete,
  SUM(CASE WHEN t.status = 'PENDING' THEN 1 ELSE 0 END) AS num_pending,
  SUM(CASE WHEN t.status = 'CANCELED' THEN 1 ELSE 0 END) AS num_cancel,
  SUM(CASE WHEN t.status = 'COMPLETED' AND t.type = 'BUY' THEN t.amount
           WHEN t.status = 'COMPLETED' AND t.type = 'SELL' THEN t.amount * 0.1
           WHEN t.status = 'CANCELED' THEN -t.amount * 0.01
           ELSE 0 END) AS total_revenue
FROM 
  transactions t
WHERE
  t.dt BETWEEN '2021-07-01' AND '2021-07-31'
GROUP BY 
  t.customer
ORDER BY
  total_revenue DESC
LIMIT 1