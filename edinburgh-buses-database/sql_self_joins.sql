-- SQL self joins on tables 'stops' and 'route'

-- 1. How many stops are in the database.

SELECT COUNT(*) FROM stops

-- 2. Find the id value for the stop 'Craiglockhart'.

SELECT id FROM stops
  WHERE name = 'Craiglockhart'

-- 3. Give the id and the name for the stops on the '4' 'LRT' service.

SELECT id, name FROM stops, route
  WHERE stops.id = route.stop AND num = '4' AND company = 'LRT'

-- 4. Show two services that links stops 149 and 53.

SELECT company, num, COUNT(*) FROM route 
  WHERE stop = 149 OR stop = 53
  GROUP BY company, num
    HAVING COUNT(*) = 2

-- 5. Show the services from Craiglockhart to London Road.

SELECT a.company, a.num, a.stop, b.stop FROM route a, route b
  WHERE a.company = b.company AND a.num = b.num AND a.stop = 53 AND b.stop = 149

-- 6. Show the services from Craiglockhart to London Road by name.

SELECT ra.company, ra.num, sa.name, sb.name FROM route ra, route rb, stops sa, stops sb
  WHERE ra.company = rb.company AND ra.num = rb.num AND ra.stop = sa.id AND rb.stop = 
    sb.id AND sa.name = 'Craiglockhart' AND sb.name = 'London Road'

-- 7. Give a list of all the services which connect stops 115 and 137 ('Haymarket' and 'Leith').

SELECT DISTINCT a.company, a.num FROM route a, route b
  WHERE a.company = b.company AND a.num = b.num AND a.stop = 115 AND b.stop = 137

-- 8. Give a list of the services which connect the stops 'Craiglockhart' and 'Tollcross'.

SELECT DISTINCT ra.company, ra.num FROM route ra, route rb, stops sa, stops sb
  WHERE ra.company = rb.company AND ra.num = rb.num AND ra.stop = sa.id AND rb.stop = sb.id AND sa.name = 'Craiglockhart' AND sb.name = 'Tollcross'

-- 9. Give a distinct list of the stops which may be reached from 'Craiglockhart' by taking one bus, including 'Craiglockhart' itself, offered by the LRT company..

SELECT DISTINCT sb.name, ra.company, ra.num FROM route ra, route rb, stops sa, stops sb
  WHERE ra.company = rb.company AND ra.num = rb.num AND ra.stop = sa.id AND rb.stop = sb.id AND sa.name = 'Craiglockhart'

-- Credits:  sqlzoo.net