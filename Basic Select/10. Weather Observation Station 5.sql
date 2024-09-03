/*
Query the two cities in STATION with the shortest and longest CITY names, as well as their respective lengths (i.e.: number of characters in the name). If there is more than one smallest or largest city, choose the one that comes first when ordered alphabetically.
The STATION table is described as follows:
+-----------+---------------+
| Field     | Type          |
+-----------+---------------+
| ID        | NUMBER        |
| CITY      | VARCHAR2(21)  |
| STATE     | VARCHAR(2)    |
| LAT_N     | NUMBER        |
| LONG_W    | NUMBER        |
+-----------+---------------+
*/
SELECT CITY, LENGTH(CITY) FROM STATION
    ORDER BY LENGTH(CITY), CITY
    LIMIT  1;
SELECT CITY, LENGTH(CITY) FROM STATION
    ORDER BY LENGTH(CITY) DESC, CITY
    LIMIT 1;