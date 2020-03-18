-- SQL joins on tables 'game', 'goal' and 'eteam'

-- 1. Show the matchid and player name for all goals scored by Germany.

SELECT matchid, player FROM goal 
  WHERE teamid = 'GER'

-- 2. Show id, stadium, team1, team2 for just game 1012.

SELECT id, stadium, team1, team2 FROM game
  WHERE id = 1012

-- 3. Show the player, teamid, stadium and mdate for every German goal.

SELECT player, teamid, stadium, mdate FROM game, goal 
  WHERE teamid = 'GER' AND id = matchid

-- 4. Show the team1, team2 and player for every goal scored by a player called Mario.

SELECT team1, team2, player FROM game, goal 
  WHERE player LIKE '%Mario%' AND id = matchid

-- 5. Show player, teamid, coach, gtime for all goals scored in the first 10 minutes.

SELECT player, teamid, coach, gtime FROM goal, eteam
  WHERE gtime <=10 AND teamid = id

-- 6. List the the dates of the matches and the name of the team in which 'Fernando Santos' was the team1 coach.

SELECT mdate, teamname FROM game, eteam
  WHERE coach = 'Fernando Santos' AND team1 = eteam.id

-- 7. List the player for every goal scored in a game where the stadium was 'National Stadium, Warsaw'.

SELECT player FROM game, goal
  WHERE stadium = 'National Stadium, Warsaw' AND id = matchid

-- 8. Show the name of all players who scored a goal against Germany.

SELECT DISTINCT player FROM game, goal
  WHERE teamid != 'GER' AND (team1='GER' OR team2='GER') AND id = matchid

-- 9. Show teamname and the total number of goals scored.

SELECT teamname, count(*) FROM goal, eteam 
  WHERE id = teamid
  GROUP BY teamname

-- 10. Show the stadium and the number of goals scored in each stadium.

SELECT stadium, count(*) FROM game, goal
  WHERE id = matchid
  GROUP BY stadium

-- 11. For every match involving 'POL', show the matchid, date and the number of goals scored.

SELECT matchid, mdate, count(*) FROM game, goal 
  WHERE id = matchid  AND (team1 = 'POL' OR team2 = 'POL')
  GROUP BY matchid, mdate

-- 12. For every match where 'GER' scored, show matchid, match date and the number of goals scored by 'GER'

SELECT matchid, mdate, count(*) FROM game, goal 
  WHERE id = matchid  AND teamid = 'GER'
  GROUP BY matchid, mdate

-- 13. List every match with the goals scored by each team. Sort result by mdate, matchid, team1 and team2.

/* mdate	    team1	score1	team2	score2
   1 July 2012	ESP	    4	    ITA	    0
   10 June 2012	ESP	    1	    ITA	    1 */

SELECT mdate, team1, 
SUM(CASE WHEN teamid = team1 THEN 1 ELSE 0 END) AS score1, 
team2,
SUM(CASE WHEN teamid = team2 THEN 1 ELSE 0 END) AS score2 
  FROM game LEFT JOIN goal ON (id = matchid)
    GROUP BY mdate,team1,team2
    ORDER BY mdate, matchid, team1, team2

-- Credits:  sqlzoo.net