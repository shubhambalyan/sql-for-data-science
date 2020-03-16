-- Advanced SQL commands on table 'nobel'

-- 1. Display Nobel prizes for year 1950.

SELECT yr, subject, winner FROM nobel 
 WHERE yr = 1950

/* yr	subject	    winner
1950	Chemistry	Kurt Alder
1950	Chemistry	Otto Diels
1950	Literature	Bertrand Russell */

-- 2. Display Nobel prize winner for year 1962 in Literature.

SELECT winner FROM nobel
 WHERE yr = 1962 AND subject = 'Literature'

/* winner
   John Steinbeck */

-- 3. Display the year and subject that won 'Albert Einstein' his prize.

SELECT yr, subject FROM nobel
 WHERE winner = 'Albert Einstein'

/* yr	subject
1921	Physics */

-- 4. Display recent Peace prizes after year 2000.

SELECT winner FROM nobel
 WHERE subject = 'Peace' AND yr >= 2000 

/* winner
Tunisian National Dialogue Quartet
Kailash Satyarthi */

-- 5. Display Literature prizes in the 1980s.

SELECT * FROM nobel
 WHERE subject = 'Literature' AND yr BETWEEN 1980 and 1989 

/* yr	subject	    winner
1989	Literature	Camilo José Cela
1988	Literature	Naguib Mahfouz */

-- 6. Display details of presidential winners.

SELECT * FROM nobel
 WHERE winner IN ('Theodore Roosevelt', 'Woodrow Wilson', 'Jimmy Carter', 'Barack Obama')

/* yr	subject	winner
2009	Peace	Barack Obama
2002	Peace	Jimmy Carter
1919	Peace	Woodrow Wilson
1906	Peace	Theodore Roosevelt */

-- 7. Display winners having first name John.

SELECT winner FROM nobel
 WHERE winner LIKE 'John%'

/* winner
John O'Keefe
John B. Gurdon */

-- 8. Display Chemistry and Physics winners from different years.

SELECT * FROM nobel
 WHERE subject = 'Chemistry' AND yr = 1984
UNION
SELECT * FROM nobel
 WHERE subject = 'Physics' AND yr = 1980 

/* yr	subject	    winner
1984	Chemistry	Bruce Merrifield
1980	Physics	    James Cronin
1980	Physics	    Val Fitch */

-- 9. Display winners for 1980 excluding Chemists and Medics.

SELECT * FROM nobel
 WHERE yr = 1980 and subject NOT IN ('Chemistry', 'Medicine')

/* yr	subject	    winner
1980	Economics	Lawrence R. Klein
1980	Literature	Czeslaw Milosz */

-- 10. Display early Medicine and late Literature winners.

SELECT * FROM nobel
 WHERE subject = 'Literature' AND yr >= 2004
UNION
SELECT * FROM nobel
 WHERE subject = 'Medicine' AND yr < 1910

/* yr	subject	    winner
2015	Literature	Svetlana Alexievich
2014	Literature	Patrick Modiano
1909	Medicine	Theodor Kocher
1908	Medicine	Paul Ehrlich */

-- 11. Display details of the prize won by PETER GRÜNBERG.

SELECT * FROM nobel
 WHERE winner = 'Peter Grünberg'

/* yr	subject	winner
2007	Physics	Peter Grünberg */

-- 12. Display details of the prize won by EUGENE O'NEILL.

SELECT * FROM nobel
 WHERE winner = 'Eugene O''Neill'

/* yr	subject	    winner
1936	Literature	Eugene O'Neill */
   
-- 13. Display details of the winners whose name starts with Sir. ordered by most recent date.

SELECT winner, yr, subject FROM nobel
 WHERE winner LIKE 'Sir%' ORDER BY yr DESC

/* winner	        yr	    subject
Sir Martin J. Evans	2007	Medicine
Sir Peter Mansfield	2003	Medicine */

-- 14. Display Physics and Chemistry winners at last.

SELECT winner, subject FROM nobel
 WHERE yr = 1984
 ORDER BY subject IN ('Physics', 'Chemistry'), subject, winner

/* winner	       subject
Richard Stone	   Economics
Desmond Tutu	   Peace
Bruce Merrifield   Chemistry
Carlo Rubbia	   Physics
Simon van der Meer Physics */

-- NOTE: All outputs are sample outputs, not the complete output.
-- Credits:  sqlzoo.net