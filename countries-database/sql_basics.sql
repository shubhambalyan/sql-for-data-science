-- SELECT command on table 'world'

-- 1. Display name, continent, population and gdp of all countries.

SELECT name, continent, population, gdp FROM world

/* name	        continent	population	gdp
   Afghanistan	Asia	    25500100	20364000000
   Albania	    Europe	    2821977	    12044000000 */

-- 2. Display countries with population of at least 200 million.

SELECT name FROM world
   WHERE population >= 200000000

/* name
   Brazil
   China
   India
   United States */

-- 3. Display countries and per capita GDP with population of at least 200 million.

SELECT name, gdp/population FROM world
   WHERE population >= 200000000

/* name	           gdp/population
   Brazil	       11115.2648
   China	       6121.7106
   India	       1504.7931
   Indonesia	   3482.0205
   United States   51032.2945 */

-- 4. Display countries and population in millions for the continent 'South America'.

SELECT name, population/1000000 FROM world
   WHERE continent = 'South America'

/* name	        population/10..
   Argentina	42.6695
   Bolivia	    10.0273 */

-- 5. Display population for France, Germany and Italy.

SELECT name, population FROM world
   WHERE name IN ('France', 'Germany', 'Italy')

/* name	    population
   France	65906000
   Germany	80716000
   Italy	60782668 */

-- 6. Display countries that includes word 'United'.

SELECT name FROM world
   WHERE name LIKE '%United%'

/* name
   United Arab Emirates
   United Kingdom
   United States */

-- 7. Display countries with area more than 3 million sq km or population more than 250 million.

SELECT name, population, area FROM world
   WHERE area >= 3000000 OR population >= 250000000

/* name	      population	area
   Australia  23545500	    7692024
   Brazil	  202794000	    8515767 */

-- 8. Display countries with area more than 3 million sq km or population more than 250 million but not both.

SELECT name, population, area FROM world
   WHERE (area >= 3000000 AND population < 250000000) OR (area < 3000000 AND population >= 250000000) 

/* name	      population	area
   Australia  23545500	    7692024
   Canada	  35427524	    9984670 */

-- 9. Display south american countries along with their population (millions) and gdp (billions) upto 2 decimal places.

SELECT name, ROUND(population/1000000, 2), ROUND(gdp/1000000000, 2) FROM world
   WHERE continent = 'South America'

/* name	      ROUND(populat..	ROUND(gdp/100..
   Argentina  42.67	            477.03
   Bolivia	  10.03	            27.04 */

-- 10. Display per capita GDP for the trillion dollar countries to the nearest $1000.

SELECT name, ROUND(gdp/population,-3) FROM world
   WHERE gdp >= 1000000000000

/* name	        ROUND(gdp/pop..
   Australia	66000
   Brazil	    11000 */

-- 11. Display countries with their capitals having same number of characters.

SELECT name, capital FROM world
   WHERE LENGTH(name) = LENGTH(capital)

/* name	    capital
   Algeria	Algiers
   Angola	Luanda */

-- 12. Display countries with their capitals having same first letter and where country name & capital do not match.

SELECT name, capital FROM world
   WHERE LEFT(name,1) = LEFT(capital,1) AND name <> capital

/* name	    capital
   Algeria	Algiers
   Andorra	Andorra la Vella */
   
-- 13. Display the country that has all the vowels and no spaces in its name.

SELECT name FROM world
   WHERE name LIKE '%a%' AND name LIKE '%e%' AND name LIKE '%i%' AND name LIKE '%o%' AND name LIKE '%u%' AND name NOT LIKE '% %'

/* name
   Mozambique */

-- 14. Display the population of Germany.

SELECT population FROM world
   WHERE name = 'Germany'

/* population
   80716000 */

-- 15. Show population of Scandinavian countries.

SELECT name, population FROM world
   WHERE name IN ('Sweden', 'Norway', 'Denmark')

/* name	    population
   Denmark	5634437
   Norway	5124383
   Sweden	9675885 */
   
-- 16. Display countries with area between 200,000 and 250,000 sq km.

SELECT name, area FROM world
   WHERE area BETWEEN 200000 AND 250000

/* name	    area
   Belarus	207600
   Ghana	238533 */ 

-- 17. Display countries that start with Y

SELECT name FROM world
   WHERE name LIKE 'Y%'

/* name
   Yemen */

-- 18. Display countries that end with Y

SELECT name FROM world
  WHERE name LIKE '%y'

/* name
   Turkey
   Germany */

-- 19. Display countries that contain letter x

SELECT name FROM world
  WHERE name LIKE '%x%'

/* name
   Luxembourg
   Mexico */

-- 20. Display countries that end with land

SELECT name FROM world
  WHERE name LIKE '%land'

/* name
   Swaziland
   Thailand */

-- 21. Display countries that start with C and end with ia

SELECT name FROM world
  WHERE name LIKE 'C%ia'

/* name
   Cambodia
   Colombia
   Croatia */

-- 22. Display countries that has oo in the name

SELECT name FROM world
  WHERE name LIKE '%oo%'

/* name
   Cameroon */

-- 23. Display countries that have three or more a in their name

SELECT name FROM world
  WHERE name LIKE '%a%a%a%'

/* name
   Central African Republic
   Equatorial Guinea */

-- 24. Display countries that have t as the second character

SELECT name FROM world
   WHERE name LIKE '_t%'
ORDER BY name

/* name
   Ethiopia
   Italy */

-- 25. Display countries that have two o characters separated by two others.

SELECT name FROM world
   WHERE name LIKE '%o__o%'

/* name
   Lesotho
   Morocco */

-- 26. Display countries that have exactly 4 characters

SELECT name FROM world
   WHERE name LIKE '____'
   
/* name
   Chad
   Mali */

-- 27. Display countries where country name is the capital.

SELECT name FROM world
   WHERE capital LIKE name

/* name
   Djibouti
   Luxembourg */

-- 28. Display capitals and countries where capital contains the name of the country.

SELECT capital, name FROM world
   WHERE capital LIKE concat('%', name, '%')

/* capital	          name
   Andorra la Vella	  Andorra
   Djibouti	          Djibouti */

-- 29. Display capitals and countries where capital is an extension of the country name.

SELECT capital, name FROM world
   WHERE capital LIKE concat(name, '%') AND capital > name

/* capital	           name
   Andorra la Vella	   Andorra
   Guatemala City	   Guatemala */

-- 30. Display name and extension where the capital ia an extension of name of the country.

SELECT name, REPLACE(capital, name, '') FROM world 
   WHERE capital LIKE concat('%', name, '%') AND capital > name;

/* name	       REPLACE(capit..
   Andorra	   la Vella
   Guatemala   City */

-- NOTE: All outputs are sample outputs, not the complete output.
-- Credits:  sqlzoo.net