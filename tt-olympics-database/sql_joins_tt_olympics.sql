-- SQL joins on tables 'ttms', 'country', 'ttws', 'games', 'ttmd' and 'team'

-- 1. Show the athelete and the country name for medal winners in 2000.

SELECT who, name FROM ttms, country
  WHERE ttms.country = country.id AND games = 2000

-- 2. Show the who and the color of the medal for the medal winners from 'Sweden'.

SELECT who, color FROM ttms, country
  WHERE ttms.country = country.id AND name = 'Sweden'

-- 3. Show the years in which 'China' won a 'gold' medal.

SELECT games FROM ttms, country
  WHERE ttms.country = country.id AND name = 'China' AND color = 'gold'

-- 4. Show who won medals in the 'Barcelona' games.

SELECT who FROM ttws, games
  WHERE ttws.games = games.yr AND city = 'Barcelona'

-- 5. Show which city 'Jing Chen' won medals.

SELECT city, color FROM ttws, games
  WHERE ttws.games = games.yr AND who = 'Jing Chen'

-- 6. Show who won the gold medal and the city.

SELECT who, city FROM ttws, games
  WHERE ttws.games = games.yr AND color = 'gold'

-- 7. Show the games and color of the medal won by the team that includes 'Yan Sen'.

SELECT games, color FROM ttmd, team
  WHERE ttmd.team = team.id AND name = 'Yan Sen'

-- 8. Show the 'gold' medal winners in 2004.

SELECT name FROM ttmd, team
  WHERE ttmd.team = team.id AND color = 'gold' AND games = '2004'

-- 9. Show the name of each medal winner country 'FRA'.

SELECT name FROM ttmd, team
  WHERE ttmd.team = team.id AND country = 'FRA'

-- Credits:  sqlzoo.net