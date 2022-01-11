Order Details
Find order details made by Jill and Eva.
Consider the Jill and Eva as first names of customers.
Output the order date, details and cost along with the first name.
Order records based on the customer id in ascending order.

select cc.first_name, oo.order_date, oo.order_details, oo.total_order_cost from customers cc
join orders oo on 
cc.id = oo.cust_id
where cc.first_name = 'Jill' or cc.first_name = 'Eva'
order by oo.cust_id asc
