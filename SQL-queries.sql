/* How many people were named Ashley the year I was born (1999)? */

SELECT sum(number) AS AmountNamedAshley FROM `bigquery-public-data.usa_names.usa_1910_current`
Where name = "Ashley" AND year = 1999

 --result: 18164

/* Are there any male Ashley's */

SELECT * FROM `bigquery-public-data.usa_names.usa_1910_current`
Where name = "Ashley" AND gender = 'M'

SELECT sum(number) FROM `bigquery-public-data.usa_names.usa_1910_current`
Where name = "Ashley" AND gender = 'M'

/* When was Ashley the most popular? */

SELECT year, sum(number) AS NamedAshley
FROM `bigquery-public-data.usa_names.usa_1910_current`
Where name = "Ashley" 
GROUP BY year
ORDER BY NamedAshley DESC

 -- result: 1987 with 55229 babies named Ashley

/* What state has the most people named Ashley since 1910? */

SELECT state, sum(number) AS NamedAshley
FROM `bigquery-public-data.usa_names.usa_1910_current`
Where name = "Ashley" 
GROUP BY state
ORDER BY NamedAshley DESC

 -- result: Most babies named Ashley in California (97972), Least amount of babies named Ashley in Wyoming (1387)

/* When did the name Ashley first appear (in this dataset)? */

SELECT year, sum(number) AS NamedAshley 
FROM `bigquery-public-data.usa_names.usa_1910_current`
Where name = "Ashley" 
GROUP BY year
ORDER BY year 

--result: 1914 

Tableu: Compare male and femalre AShley popularity
