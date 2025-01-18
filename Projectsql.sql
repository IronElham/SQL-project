USE project1;

-- 1. Select everthing from marketing df
SELECT *
FROM marketing;

-- 2. Do a filter of category
SELECT *
FROM marketing
WHERE category ="social";

-- 3. Find total number of campaign in campaign_name 'facebook_retargeting' after 20 Feb
SELECT campaign_name, c_date, COUNT(campaign_name) AS number_of_facebook_retargeting_campaign
FROM marketing
WHERE c_date > '2021-02-20' AND campaign_name = "facebook_retargeting"
GROUP BY campaign_name, c_date;

-- 4. Count of Impressions (number of times the ad has been shown)  after 20 feb and group by category
SELECT Impressions, category, COUNT(*) AS ads_count
FROM marketing
WHERE c_date > 2021-02-20
GROUP BY Impressions, category;

-- 5. Average marketing spent for per category
SELECT category, ROUND(AVG(mark_spent),2) AS average_marketing_exp
FROM marketing
GROUP BY category;

-- 6 Average marketing spent and revenue for per category
SELECT category, ROUND(AVG(mark_spent),2) AS average_marketing_exp , ROUND(AVG(revenue),2) AS average_revenue
FROM marketing
GROUP BY category;

-- 7. Find campaign per category with more than 1000 revenue
SELECT category, campaign_name , SUM(revenue) AS total_revenue
FROM marketing
GROUP BY category, campaign_name
HAVING total_revenue> 1000;

-- 8. Find only 10 first, total marketing expenditure per campaign with at least 1 order that earned at least 1000 revenue
SELECT  category, campaign_name , orders, revenue, ROUND(SUM(mark_spent),2) as total_expense
FROM marketing
WHERE orders>0
GROUP BY category, campaign_name , orders, revenue
HAVING revenue > 1000 
ORDER BY total_expense ASC
limit 10;

-- 9 Min and Max marketing spent and revenue for per category
SELECT category, MIN(mark_spent) AS min_marketing_exp , MAX(mark_spent) AS max_marketing_exp, MIN(revenue) AS min_revenue, MAX(revenue) AS max_revenue
FROM marketing
GROUP BY category;

-- 10. campaigns per category with expenditure of less than 10000 and revenue more than 20000
SELECT campaign_name, category, mark_spent, revenue
FROM marketing
WHERE mark_spent < 10000 AND revenue >20000
GROUP BY category
ORDER BY campaign_name ASC, revenue ASC;

-- 11. campaigns per category which they break even, their revenue surpass their expenditure 
SELECT campaign_name, category, mark_spent, revenue
FROM marketing
WHERE mark_spent <= revenue
GROUP BY category
ORDER BY campaign_name ASC;

-- 
SELECT campaign_name, category, mark_spent, revenue
FROM marketing
WHERE mark_spent < revenue
GROUP BY category
ORDER BY campaign_name ASC;

-- 12. campaigns with Orders between 100 and 200
SELECT campaign_name, category , orders
FROM marketing
WHERE orders BETWEEN 100 AND 200
ORDER BY orders DESC;

-- 13. Find unique values of campaigns names with word "face" in them
SELECT DISTINCT campaign_name 
FROM marketing
WHERE campaign_name LIKE "%face%";



