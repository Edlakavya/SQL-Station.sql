-- 1)Query the list of CITY names STARTING with vowels (a, e, i, o, u) from STATION. Your result cannot contain duplicates.
select distinct(city) from station
where substr(city,1,1) in ('A','E','I','O','U')
  
-- 2) Query the list of CITY names ending with vowels (a, e, i, o, u) from STATION. Your result cannot contain duplicates.
SELECT DISTINCT(CITY) FROM STATION
WHERE right(CITY,1) IN ('a','e','i','o','u');

--3) Query the list of CITY names from STATION which have vowels (i.e., a, e, i, o, and u) as both their first and last characters. Your result cannot contain duplicates.
select distinct(city) from station
where substr(city,1,1) in ('A','E','I','O','U') and right(city,1) in ('a','e','i','o','u');

-- 4)Query the list of CITY names from STATION that do not start with vowels. Your result cannot contain duplicates.
select distinct(city) from station
where substr(city,1,1) not in ('A','E','I','O','U');
