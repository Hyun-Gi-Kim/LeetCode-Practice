# Write your MySQL query statement below
SELECT SUBSTR(trans_date,1,7) month, country, count(state) trans_count,
count(IF(state = 'approved',1,NULL)) approved_count, sum(amount) trans_total_amount,
sum(IF(state = 'approved',amount,0)) approved_total_amount
FROM Transactions
GROUP BY month, country

     