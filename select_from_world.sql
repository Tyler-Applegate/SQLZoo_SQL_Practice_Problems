Select from World

1.  Read the notes about this table. Observe the result of running this SQL command to show the name, continent and population of all countries.

Select name, continent, population
FROM world;

2. How to use WHERE to filter records. Show the name for the countries that have a population of at least 200 million. 200 million is 200000000, there are eight zeros.

SELECT name
FROM world
WHERE population >= 200000000;

3.  Give the name and the per capita GDP for those countries with a population of at least 200 million.

SELECT name, gdp/population as 'per capita GDP'
from world
where population >= 200000000

4.  Show the name and population in millions for the countries of the continent 'South America'. Divide the population by 1000000 to get population in millions.

SELECT name, population/1000000 as 'population in millions'
FROM world
where continent = 'South America'

5.  Show the name and population for France, Germany, Italy

SELECT name, population
FROM world
WHERE name IN ('France', 'Germany', 'Italy')

6.  Show the countries which have a name that includes the word 'United'

SELECT name
FROM world
WHERE name LIKE '%United%'

7.  Two ways to be big: A country is big if it has an area of more than 3 million sq km or it has a population of more than 250 million.

Show the countries that are big by area or big by population. Show name, population and area.

SELECT name, population, area
FROM world
WHERE population > 250000000 OR area > 3000000