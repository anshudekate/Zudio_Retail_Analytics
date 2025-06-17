select * from zudio

create table cust_detail as 
select manager_id , customer_id , customer_name , product_id , order_id , order_date , month ,
contact_information , price , quantity ,sales_profit from zudio


create table zudio_location as
select customer_id, country , state , city , store , postal_code , store_address from zudio 


create table zudio_detail as
select customer_id , store_type , selling_area, store_number , staff_count, operating_hours, parking_availability, 
security_features , manager_id , store_manager from zudio

create table zudio_category as 
select manager_id ,customer_id, category , clothing_type 
from zudio


select * from cust_detail

select * from zudio_location 

select * from zudio_detail

select * from zudio_category 


select * from cust_detail as c
inner join zudio_location as l
on c.customer_id = l.customer_id
inner join zudio_detail  as d
on c.customer_id = d.customer_id
inner join zudio_category as ca 
on c.customer_id = ca.customer_id


select month , sum(sales_profit) as profit from cust_detail as c
inner join zudio_location as l
on c.customer_id = l.customer_id
inner join zudio_detail  as d
on c.customer_id = d.customer_id
inner join zudio_category as ca 
on c.customer_id = ca.customer_id
group by month




select state, sum(sales_profit) as profit from cust_detail as c
inner join zudio_location as l
on c.customer_id = l.customer_id
inner join zudio_detail  as d
on c.customer_id = d.customer_id
inner join zudio_category as ca 
on c.customer_id = ca.customer_id
group by state


select city, sum(sales_profit) as profit from cust_detail as c
inner join zudio_location as l
on c.customer_id = l.customer_id
inner join zudio_detail  as d
on c.customer_id = d.customer_id
inner join zudio_category as ca 
on c.customer_id = ca.customer_id
group by city


select category, sum(sales_profit) as profit from cust_detail as c
inner join zudio_location as l
on c.customer_id = l.customer_id
inner join zudio_detail  as d
on c.customer_id = d.customer_id
inner join zudio_category as ca 
on c.customer_id = ca.customer_id
group by category



select order_date,sum(quantity) as Quantity , sum (price) as Price, sum (sales_profit) as Profit from cust_detail as c
inner join zudio_location as l
on c.customer_id = l.customer_id
inner join zudio_detail  as d
on c.customer_id = d.customer_id
inner join zudio_category as ca 
on c.customer_id = ca.customer_id
group by order_date 


select clothing_type , sum (price) as price from cust_detail as c
inner join zudio_location as l
on c.customer_id = l.customer_id
inner join zudio_detail  as d
on c.customer_id = d.customer_id
inner join zudio_category as ca 
on c.customer_id = ca.customer_id
group by clothing_type






