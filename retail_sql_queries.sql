# Total Sales
select sum(Sales) as total_sales from orders;

# Total Profit
select sum(Profit) as total_profit  from orders;

# Sales by Category
select Category,sum(Sales) as total_sales from orders 
group by Category
order by total_sales desc;

# Profit by Category
select Category,sum(Profit) from orders
group by Category ;

# Top 10 Category
select CustomerID ,sum(Sales) as total_sales from orders
group by CustomerID 
order by total_sales desc
limit 10;

# Monthly Sales Trend
select extract('month',OrderDate) as month,sum(Sales) as total_sales from orders
group by month
order by month;

# check for negative profit values
select * from orders where Profit < 0;
