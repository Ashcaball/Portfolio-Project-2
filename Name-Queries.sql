/* What are the most popluar names in total? */

SELECT name, sum(number) AS number
FROM `bigquery-public-data.usa_names.usa_1910_current` 
GROUP BY name 
ORDER BY number desc
