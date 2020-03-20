# School Database
## Database Design

* Table of 'teacher'

| Field Name        | Data Type           | Comments  |
| --------- | --------- | ----- |
| id      | int(11)	 | not null, primary key |
| dept      | int(11)      |   default null |
| name | varchar(50)      |    default null |
| phone      | varchar(50) | default null |
| mobile      | varchar(50)      |   default null |

* Table of 'dept'

| Field Name        | Data Type           | Comments  |
| --------- | --------- | ----- |
| id      | int(11)	 | not null, primary key |
| name      | varchar(50)      |   default null |