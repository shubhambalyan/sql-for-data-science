# Table Tennis Olympics Database
## Database Design

* Table of 'ttms'

| Field Name        | Data Type           | Comments  |
| --------- | --------- | ----- |
| games      | int(11)	 | not null, primary key |
| color      | varchar(10)      |   not null, primary key |
| who | varchar(50)      |    not null, primary key |
| country      | char(3) | default null |

* Table of 'country'

| Field Name        | Data Type           | Comments  |
| --------- | --------- | ----- |
| id      | char(3)	 | not null, primary key |
| name      | varchar(50)      |   default null |

* Table of 'ttws'

| Field Name        | Data Type           | Comments  |
| --------- | --------- | ----- |
| games      | int(11)	 | not null, primary key |
| color      | varchar(10)      |   not null, primary key |
| who | varchar(50)      |    not null, primary key |
| country      | char(3) | default null |

* Table of 'games'

| Field Name        | Data Type           | Comments  |
| --------- | --------- | ----- |
| yr      | int(11)	 | not null, primary key |
| city      | varchar(20)      |   default null |
| country | char(3)      |    default null |

* Table of 'ttmd'

| Field Name        | Data Type           | Comments  |
| --------- | --------- | ----- |
| games      | int(11)	 | not null, primary key |
| color      | varchar(10)      |   not null, primary key |
| team | int(11)      |    not null, primary key |
| country      | char(3) | default null |

* Table of 'team'

| Field Name        | Data Type           | Comments  |
| --------- | --------- | ----- |
| id      | int(11)	 | not null, primary key |
| name      | varchar(50)      |   not null, primary key |
