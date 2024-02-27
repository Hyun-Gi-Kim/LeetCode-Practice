# Write your MySQL query statement below
select distinct num as ConsecutiveNums from Logs where (id+1,num) in (select * from logs) and (id+2,num) in (select * from logs)

WAY 2)
with cte as (
    select num,
    lead(num,1) over() num1,
    lead(num,2) over() num2
    from logs

)

select distinct num ConsecutiveNums from cte where (num=num1) and (num=num2)
