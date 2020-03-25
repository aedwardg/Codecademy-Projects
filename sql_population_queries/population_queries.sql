-- How many entries in the database are from Africa?
SELECT COUNT(*)
FROM countries
WHERE continent = 'Africa';


-- What was the total population of Oceania in 2005?
SELECT countries.continent, population_years.year, 
       SUM(population_years.population) AS 'Total Population'
FROM countries
JOIN population_years
ON countries.id = population_years.country_id
WHERE continent = 'Oceania' AND year = 2005;


-- What is the average population of countries in South America in 2003?
SELECT countries.continent, population_years.year, 
       AVG(population_years.population) AS 'Average Population'
FROM countries
JOIN population_years
ON countries.id = population_years.country_id
WHERE continent = 'South America' AND year = 2003;


-- What country had the smallest population in 2007?
SELECT countries.name, population_years.year, 
       population_years.population
FROM countries
JOIN population_years
ON countries.id = population_years.country_id
WHERE year = 2007
GROUP BY 1
ORDER BY population ASC
LIMIT 5;


-- What is the average population of Poland during the time period covered by this dataset?
SELECT countries.name, 
       AVG(population_years.population) AS 'Average Population'
FROM countries
JOIN population_years
ON countries.id = population_years.country_id
WHERE name = 'Poland';


-- How many countries have the word "The" in their name?
SELECT COUNT(*)
FROM countries
WHERE name LIKE '%The%';


-- What was the total population of each continent in 2010?
SELECT countries.continent, population_years.year, 
       SUM(population_years.population) AS 'Total Population'
FROM countries
JOIN population_years
ON countries.id = population_years.country_id
WHERE year = 2010
GROUP BY 1;

