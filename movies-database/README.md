# Movies Database
## Database Design

* Table of 'movie'

| Field Name        | Data Type           | Comments  |
| --------- | --------- | ----- |
| id      | int(11)	 | not null, primary key |
| title      | varchar(50)      |   default null |
| yr | int(11)      |    default null |
| director      | int(11) | default null |
| budget      | int(11)      |   default null |
| gross      | int(11) | default null |

* Table of 'actor'

| Field Name        | Data Type           | Comments  |
| --------- | --------- | ----- |
| id      | int(11)	 | not null, primary key |
| name      | varchar(50)      |   default null |

* Table of 'casting'

| Field Name        | Data Type           | Comments  |
| --------- | --------- | ----- |
| movieid      | int(11)	 | not null, primary key |
| actorid      | int(11)      |   not null, primary key |
| ord      | int(11)      |   not null, primary key |