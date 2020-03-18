-- SQL joins on tables 'actor', 'movie' and 'casting'

-- 1. List the films where the yr is 1962.

SELECT id, title FROM movie
 WHERE yr = 1962

-- 2. Give year of 'Citizen Kane'.

SELECT yr FROM movie
 WHERE title = 'Citizen Kane'

-- 3. List all of the Star Trek movies.

SELECT id, title, yr FROM movie
 WHERE title LIKE '%Star%Trek%'
 ORDER BY yr

-- 4. What id number does the actor 'Glenn Close' have.

SELECT id FROM actor
 WHERE name = 'Glenn Close'

-- 5. What is the id of the film 'Casablanca'.

SELECT id FROM movie
 WHERE title = 'Casablanca'

-- 6. Obtain the cast list for 'Casablanca'.

SELECT name FROM actor, casting
 WHERE id = actorid AND movieid = '11768'

-- 7. Obtain the cast list for the film 'Alien'

SELECT name FROM actor, casting
 WHERE id = actorid AND movieid = (SELECT id FROM movie WHERE title = 'Alien')

-- 8. List the films in which 'Harrison Ford' has appeared.

SELECT title FROM movie, casting, actor
 WHERE movie.id = movieid AND actor.id = actorid AND name = 'Harrison Ford'

-- 9. List the films where 'Harrison Ford' has appeared - but not in the starring role.

SELECT title FROM movie, casting, actor
 WHERE movie.id = movieid AND actor.id = actorid AND name = 'Harrison Ford' AND ord <> 1
  
-- 10. List the films together with the leading star for all 1962 films.

SELECT title, name FROM movie, casting, actor
 WHERE movie.id = movieid AND actor.id = actorid AND yr = 1962 AND ord = 1
  
-- 11. Which were the busiest years for 'Rock Hudson', show the year and the number of movies he made each year for any year in which he made more than 2 movies.

SELECT yr, COUNT(title) FROM movie, casting, actor
  WHERE movie.id = movieid AND actorid = actor.id AND name='Rock Hudson'
  GROUP BY yr
    HAVING COUNT(title) > 2

-- 12. List the film title and the leading actor for all of the films 'Julie Andrews' played in.

SELECT title, name FROM movie, casting, actor
  WHERE movie.id = movieid AND actorid = actor.id AND ord = 1 AND movie.id IN
    (SELECT movieid FROM casting 
       WHERE actorid IN 
      (SELECT id FROM actor 
         WHERE name = 'Julie Andrews'))

-- 13. Obtain a list, in alphabetical order, of actors who've had at least 15 starring roles.

SELECT name FROM casting, actor
  WHERE actorid = actor.id AND ord = 1
  GROUP BY name
    HAVING count(movieid) >= 15
  ORDER BY name

-- 14. List the films released in the year 1978 ordered by the number of actors in the cast, then by title.

SELECT title, COUNT(actorid) FROM casting, movie
  WHERE movie.id = movieid AND yr = 1978
  GROUP BY title
  ORDER BY COUNT(actorid) DESC, title

-- 15. List all the people who have worked with 'Art Garfunkel'.

SELECT name FROM actor, casting 
WHERE actor.id = actorid AND movieid IN
  (SELECT id FROM movie WHERE title IN
    (SELECT title FROM movie, casting WHERE movie.id = movieid AND actorid IN
      (SELECT id FROM actor WHERE name = 'Art Garfunkel')))
  AND name != 'Art Garfunkel'

-- Credits:  sqlzoo.net