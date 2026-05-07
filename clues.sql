-- Clue #1:
SELECT name, code, population
FROM countries
WHERE region = 'Southern Europe'
ORDER BY population ASC
LIMIT 1;

-- Clue #2:
SELECT language
FROM countrylanguages
WHERE countrycode = 'VAT'
  AND isofficial = true;

-- Clue #3:
SELECT c.name, c.code
FROM countries c
JOIN countrylanguages cl
  ON c.code = cl.countrycode
WHERE cl.language = 'Italian'
  AND cl.isofficial = true
  AND cl.percentage = 100
  AND c.code <> 'VAT';

-- Clue #4:
SELECT name
FROM cities
WHERE countrycode = 'SMR'
  AND name <> 'San Marino';

-- Clue #5:
SELECT ci.name, co.name AS country
FROM cities ci
JOIN countries co
  ON ci.countrycode = co.code
WHERE ci.name LIKE 'Serra%'
  AND co.continent = 'South America';

-- Clue #6:
SELECT name
FROM cities
WHERE id = (
  SELECT capital
  FROM countries
  WHERE code = 'BRA'
);

-- Clue #7:
SELECT name, countrycode
FROM cities
WHERE population BETWEEN 91000 AND 92000
  AND countrycode = 'BRA';

  Vatican City → Italian → San Marino → Serravalle → Serra, Brazil → Brasília → one of four Brazilian cities