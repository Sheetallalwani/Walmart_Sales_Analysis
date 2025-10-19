-- Walmart Project Queries - MySQL
select * from walmart;

--
select count(*) from walmart;

select 
	payment_method,
    count(*)
from walmart
group by 1;

select 
	count(distinct branch)
from walmart;

select 
	max(quantity)
from walmart;

-- Bussiness Problems

-- Q1.Find different payment method and number of transactions, number of qty sold
select
	payment_method,
	count(*) no_of_transactions,
    sum(quantity) no_quant_sold
from walmart
group by 1;

-- Project Question #2
-- Identify the highest-rated category in each branch, displaying the branch, category
-- AVG Rating
with cte as (
	select
		branch,
		category,
        round(avg(rating),2) as Avg_rating,
		rank() over(partition by branch order by avg(rating) desc) as rnk
	from walmart
	group by 1,2)
select 
	branch,
	category,
	Avg_rating
    from cte
where rnk=1;

-- Q.3 Identify the busiest day for each branch based on the number of transactions
with cte as (
	select 
		branch,
		DAYNAME(STR_TO_DATE(date, '%d/%m/%y')) AS day_name,
		count(payment_method) no_trans,
		rank() over(partition by branch order by count(payment_method) desc) rnk
	from walmart
	group by 1,2
	order by 1,3 desc)
select
	branch,
    day_name
from cte
where rnk=1;

-- Q4. Calculate the total quantity of items sold per payment method. List payment_method and total_quantity.
select 
	payment_method,
    sum(quantity) as total_quantity
from walmart
group by 1;

-- Q.5 Determine the average, minimum, and maximum rating of products for each city.
select
	city,
    category,
    round(avg(rating),2) avg_rating,
    min(rating) min_rating,
    max(rating) max_rating
from walmart 
group by 1,2;

-- Q.6 Calculate the total profit for each category by considering total_profit as (unit_price * quantity * profit_margin).
-- List category and total_profit, ordered from highest to lowest profit.
select 
	category,
    round(sum(unit_price * quantity * profit_margin),2) as total_profit
from walmart
group by 1
order by  2 desc;

-- Q.7 -- Q.7
-- Determine the most common payment method for each Branch.
-- Display Branch and the preferred_payment_method.
with cte as (
	select 
		branch,
		payment_method,
		rank() over(partition by branch order by count(payment_method) desc ) rnk
	from walmart
	group by 1,2
	order by 1
    )
select 
	branch,
	payment_method as preferred_payment_method
from cte
where rnk =1;

-- Q.8 Categorize sales into 3 group MORNING, AFTERNOON, EVENING
-- Find out which of the shift and number of invoices
select 
	branch,
	case
		when time between 6 and 12 then 'morning' 
        when time between 12 and 18 then 'noon'
        else 'evening'
	end as day_end,
    count(*)
from walmart
group by 1,2
order by 1,3;

-- Q.9 Identify 5 branch with highest decrease ratio in revenue compare to last year (current year 2023 and last year 2022)

-- 2022 sales
with revenue_2022 as (
	select 
		branch,
		sum(total) as revenue
	from walmart
	where year(date) = '2022'
	group by 1
	order by 2 
    ),

revenue_2023 as
(
	select 
		branch,
		sum(total) as revenue
	from walmart
	where year(date) = '2023'
	group by 1
	order by 2 
    )
    
select 
	ls.branch,
    ls.revenue as last_revenue,
    cs.revenue as current_revenue,
    round(((ls.revenue - cs.revenue) / ls.revenue) * 100,2) AS rev_dec_ratio
from revenue_2022 as ls
join revenue_2023 as cs
	on ls.branch = cs.branch
where ls.revenue > cs.revenue
order by 4 desc
limit 5







	










