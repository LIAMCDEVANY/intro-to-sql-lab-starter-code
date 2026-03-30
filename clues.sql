-- Clue #1:
SELECT name, code, population
FROM country
WHERE region = 'Southern Europe'
ORDER BY population ASC
LIMIT 1;

-- Clue #2:
SELECT language
FROM countrylanguage
WHERE countrycode = 'VAT'
  AND isofficial = TRUE;

-- Clue #3:
SELECT c.name, c.code
FROM country c
JOIN countrylanguage cl
  ON c.code = cl.countrycode
WHERE cl.language = 'Italian'
  AND cl.isofficial = TRUE
  AND cl.percentage = 100;

-- Clue #4:
SELECT name
FROM city
WHERE countrycode = 'SMR'
  AND name <> 'San Marino';

-- Clue #5:
SELECT ci.name, co.name AS country
FROM city ci
JOIN country co
  ON ci.countrycode = co.code
WHERE ci.name LIKE 'Serra%'
  AND co.continent = 'South America';

-- Clue #6:
SELECT name
FROM city
WHERE id = (
  SELECT capital
  FROM country
  WHERE code = 'BRA'
);

-- Clue #7:
SELECT name, countrycode
FROM city
WHERE population = 91084;