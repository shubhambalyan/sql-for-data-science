# UEFA EURO 2012 Database
## Database Design

* Table of 'game'

| Field Name        | Data Type           | Comments  |
| --------- | --------- | ----- |
| id      | int(11)	 | not null, primary key |
| mdate      | varchar(12)      |   default null |
| stadium | varchar(100)      |    default null |
| team1      | varchar(100) | default null |
| team2      | varchar(100)      |   default null |

* Table of 'goal'

| Field Name        | Data Type           | Comments  |
| --------- | --------- | ----- |
| matchid      | int(11)	 | not null, primary key |
| teamid      | varchar(3)      |   default null |
| player | varchar(100)      |    default null |
| gtime      | int(11) | not null, primary key |

* Table of 'eteam'

| Field Name        | Data Type           | Comments  |
| --------- | --------- | ----- |
| id      | varchar(3)	 | default null |
| teamname      | varchar(50)      |   default null |
| coach | varchar(50)      |    default null |