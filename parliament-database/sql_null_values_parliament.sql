-- SQL: Dealing with NULL on tables 'msp' and 'party'

-- 1. Find MSP with no party.

SELECT name FROM msp
  WHERE party IS NULL

-- 2. Obtain a list of all parties and leaders.

SELECT name, leader FROM party

-- 3. Give the party and the leader for the parties which have leaders.

SELECT name, leader FROM party
  WHERE leader IS NOT NULL

-- 4. Obtain a list of all parties which have at least one MSP.

SELECT DISTINCT party.name FROM msp, party
  WHERE party = code

-- 5. Obtain a list of all MSPs by name, give the name of the MSP and the name of the party where available.

SELECT msp.name, party.name FROM msp LEFT OUTER JOIN party
  ON party = code
  ORDER BY msp.name

-- 6. Obtain a list of parties which have MSPs, include the number of MSPs.

SELECT party.name, COUNT(msp.name) FROM msp, party
  WHERE party = code
  GROUP BY party.name

-- 7. A list of parties with the number of MSPs; include parties with no MSPs.

SELECT party.name, COUNT(msp.name) FROM msp RIGHT OUTER JOIN party
  ON party = code
  GROUP BY party.name

-- Credits:  sqlzoo.net