select* from customer limit 20

--Q1. What si the total revenue genrated by male vs. female customer ?
SELECT
    gender,
    SUM(purchase_amount) AS revenue
FROM public.customer
GROUP BY gender;

--Q2 Which customers used a discount but still spent more than the average purchase amount ?
select customer_id , purchase_amount
from customer
where discount_applied = 'Yes' and purchase_amount >= (select AVG(purchase_amount)  from customer)

--Q3. Which are the top 5 products with the highest review rating ?
select item_purchased, Round(AVG(review_rating::numeric),2) as "Average Product Rating"
from customer 
group by item_purchased
order by avg(review_rating) desc
limit 5;

--Q4. Compare the average Purchase Amounts between Standard and Express Shipping .
select shipping_type,
ROUND(AVG(purchase_amount),2)
from customer
where shipping_type in ('Standard','Express')
group by shipping_type

--Q5. Do subcribed customers spend more? Compare average spend and total revenue
-- between subcribers and non-subcribers.

SELECT
    subscription_status,
    COUNT(customer_id) AS total_customers,
    ROUND(AVG(purchase_amount)::numeric, 2) AS avg_spend,
    ROUND(SUM(purchase_amount)::numeric, 2) AS total_revenue
FROM customer
GROUP BY subscription_status
ORDER BY total_revenue DESC, avg_spend DESC;

--Q6. Which 5 products have the highest percentage of purchase with discounts applied ?
SELECT item_purchased,
ROUND( 100.0 * SUM(CASE WHEN discount_applied = 'Yes' THEN 1
                ELSE 0
            END
        ) / COUNT(*),
        2
    ) AS discount_rate
FROM customer
GROUP BY item_purchased
ORDER BY discount_rate DESC
LIMIT 5;

--Q7. Segment customers into New , Returning, and Loyal based on their total
--number of previous purchases , and show the count of each segment.

WITH customer_type AS (
    SELECT
        customer_id,
        previous_purchases,
        CASE
            WHEN previous_purchases = 1 THEN 'New'
            WHEN previous_purchases BETWEEN 2 AND 10 THEN 'Returning'
            ELSE 'Loyal'
        END AS customer_segment
    FROM customer
)

SELECT
    customer_segment,
    COUNT(*) AS "Number of Customer"
FROM customer_type
GROUP BY customer_segment
ORDER BY COUNT(*) DESC;

--Q8, What are the top 3 most purchased products within each category?


WITH item_counts AS (
    SELECT
        category,
        item_purchased,
        COUNT(customer_id) AS total_orders,
        ROW_NUMBER() OVER (
            PARTITION BY category
            ORDER BY COUNT(customer_id) DESC
        ) AS item_rank
    FROM customer
    GROUP BY category, item_purchased
)
SELECT
    item_rank,
    category,
    item_purchased,
    total_orders
FROM item_counts
WHERE item_rank <= 3
ORDER BY category, item_rank;

--Q9. Are customers who are repeat buyers(more than 5 previous purchase) also likely to subcribe ?
select subscription_status,
count(customer_id) as repeat_buyers
from customer
where previous_purchases >5
group by subscription_status

--Q10. What is the revenue contribution of each age group?
select age_group,
SUM(purchase_amount) as total_revenue
from customer
group by age_group
order by total_revenue desc;