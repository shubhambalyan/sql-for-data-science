# Scottish Parliament Database
## Database Design

* Table of 'msp'

| Field Name        | Data Type           | Comments  |
| --------- | --------- | ----- |
| name      | varchar(50)	 | not null, primary key |
| party      | varchar(10)      |   default null |
| constituency | varchar(50)      |    default null |

* Table of 'party'

| Field Name        | Data Type           | Comments  |
| --------- | --------- | ----- |
| code      | varchar(10)	 | not null, primary key |
| name      | varchar(50)      |   default null |
| leader      | varchar(50)      |   default null |