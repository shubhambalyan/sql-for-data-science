# SQL for Data Science - SQLZoo
## Database Design

* Table of 'world'

| Field Name        | Data Type           | Comments  |
| --------- | --------- | ----- |
| name      | varchar(50)	 | not null, primary key |
| continent      | varchar(60)      |   not null |
| area | decimal(10,0)      |    default null |
| population      | decimal(11,0) | default null |
| gdp      | decimal(14,0)      |   default null |
| capital | varchar(60)	      |    default null |
| tld | varchar(5)      |    default null, web domain|
| flag | varchar(255)      |    default null |

* Table of 'nobel'

| Field Name        | Data Type           | Comments  |
| --------- | --------- | ----- |
| yr      | int(11)	 | default null |
| subject      | varchar(15)      |   default null |
| winner | varchar(50)      |    default null |