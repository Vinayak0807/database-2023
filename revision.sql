-----------------------------------------------
SELECT  amount
FROM sales
ORDER BY amount DESC
LIMIT 1 OFFSET 1;
------------------------------------------------
with sec_max as(
select amount ,
dense_rank() over(order by amount desc) as max_
from sales
)
select * from sec_max
where max_ = 2
------------------------------------------------
select amount from sales
where amount < (select max(amount) from sales )
limit 1 ;
------------------------------------------------
second max per department
-------------------------------------------
with sec_max as(
select amount , state ,
dense_rank() over(partition by state order by amount desc) as max_
from sales
)
select state , amount from sec_max
where max_ = 2

---------------
--Show each state's total sales and also show
--the overall grand total beside it
---------------
select state , sum(amount) as total_sales,
sum(sum(amount)) over() as grand
from sales
group by state ;
----------------
SELECT SUM(amount) , round(AVG(amount),2), MAX(amount)
from sales