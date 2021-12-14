Highest Cost Orders
Find the customer with the highest total order cost between 2019-02-01 to 2019-05-01. If customer had more than one order on a certain day, sum the order costs on daily basis. Output their first name, total cost of their items, and the date.
 
 For simplicity, you can assume that every first name in the dataset is unique.
 
 
select first_name,
sum(total_order_cost),
order_date

from customers cc
join orders os
on cc.id = os.cust_id
where order_date between '2019-02-01' and '2019-05-01'
group by first_name,order_date
order by sum(total_order_cost) desc
limit 1
