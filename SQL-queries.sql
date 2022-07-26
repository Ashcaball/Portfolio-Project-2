/* How many people were named Ashley the month/day/year I was born (1999)? */

SELECT sum(number) AS AmountNamedAshley FROM `bigquery-public-data.usa_names.usa_1910_current`
Where name = "Ashley" AND year = 1999

 --result: 18164

/* Are there any male Ashley's */
/* When was Ashley the most popular? */
/* What states have the most people named Ashley? */
/* When did the name Ashley first appear? */



Tableu: Compare male and femalre AShley popularity
