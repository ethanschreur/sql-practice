-- Comments in SQL Start with dash-dash --
--01
SELECT * FROM analytics WHERE id = 1880;
--02
SELECT id, app_name WHERE last_updated = '2018-09-01';
--03
SELECT category, COUNT(*) FROM analytics
--04
SELECT * FROM analytics ORDER BY reviews DESC LIMIT 5;
--05
SELECT * FROM analytics WHERE rating >= 4.8 LIMIT 1;
--06
SELECT category, AVG(rating) FROM analytics GROUP BY category ORDER BY avg(rating) DESC;
--07
SELECT app_name, price, rating FROM analytics WHERE rating < 3 ORDER BY price DESC LIMIT 1;
--08
SELECT * FROM analytics WHERE min_installs <= 50 AND rating IS NOT NULL ORDER BY rating DESC;
--09
SELECT app_name WHERE FROM analytics WHERE rating < 3 AND reviews >= 10000;
--10
SELECT * FROM analytics WHERE price BETWEEN 0.1 AND 1 ORDER BY reviews DESC LIMIT 10;
--11
SELECT * FROM analytics ORDER BY last_updated LIMIT 1;
--12
SELECT * FROM analytics ORDER BY price DESC LIMIT 1;
--13
SELECT SUM(reviews) from analytics;
--14
SELECT category FROM analytics GROUP BY category HAVING COUNT(*) > 300;
--15
SELECT app_name, reviews, min_installs, reviews / min_installs AS reviews_per_install FROM analytics WHERE min_installs >= 100000 ORDER BY reviews_per_install DESC LIMIT 1;