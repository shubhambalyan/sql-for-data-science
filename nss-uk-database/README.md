# National Student Survey UK Database
## Database Design

* Table of 'nss'

| Field Name        | Data Type           | Comments  |
| --------- | --------- | ----- |
| ukprn      | varchar(8)	 | not null, primary key |
| institution      | varchar(100)      |   default null |
| subject | varchar(60)      |    not null, primary key |
| level      | varchar(50)	 | not null, primary key |
| question      | varchar(10)      |   not null, primary key |
| A_STRONGLY_DISAGREE      | int(11)      |   default null |
| A_DISAGREE      | int(11)	 | default null |
| A_NEUTRAL      | int(11)      |   default null |
| A_AGREE | int(11)      |    default null |
| A_STRONGLY_AGREE      | int(11)	 | default null |
| A_NA      | int(11)      |   default null |
| CI_MIN      | int(11)      |   default null |
| score      | int(11)	 | default null |
| CI_MAX      | int(11)      |   default null |
| response | int(11)      |    default null |
| sample      | int(11)	 | default null |
| aggregate      | char(1)      |   default null |