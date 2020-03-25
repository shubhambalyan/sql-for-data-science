# Edinburgh Buses Database
## Database Design

* Table of 'stops'

| Field Name        | Data Type           | Comments  |
| --------- | --------- | ----- |
| id      | int(11)	 | not null, primary key |
| name      | varchar(30)      |   default null |

* Table of 'route'

| Field Name        | Data Type           | Comments  |
| --------- | --------- | ----- |
| num      | varchar(5)	 | not null, primary key |
| company      | varchar(3)      |  not null, primary key  |
| pos      | int(11)	 | not null, primary key |
| stop      | int(11)      |   default null |