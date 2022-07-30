/* What are the most popluar names in total? */

SELECT name, sum(number) AS number
FROM `bigquery-public-data.usa_names.usa_1910_current` 
GROUP BY name 
ORDER BY number desc

/* What are the most popular names in 2020?*/
SELECT name, sum(number) AS number
FROM `bigquery-public-data.usa_names.usa_1910_current` 
WHERE year = 2020
GROUP BY name 
ORDER BY number desc;
