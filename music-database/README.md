# Music Database
## Database Design

* Table of 'album'

| Field Name        | Data Type           | Comments  |
| --------- | --------- | ----- |
| asin      | char(10)	 | not null, primary key |
| title      | varchar(50)      |   default null |
| artist | varchar(50)      |    default null |
| price      | decimal(10,2) | default null |
| rdate      | date      |   default null |
| label      | varchar(50) | default null |
| rank      | int(11)      |   default null |

* Table of 'track'

| Field Name        | Data Type           | Comments  |
| --------- | --------- | ----- |
| album      | char(10)	 | not null, primary key |
| disk      | int(11)      |   not null, primary key |
| posn | int(11)      |    not null, primary key |
| song      | varchar(255) | default null |