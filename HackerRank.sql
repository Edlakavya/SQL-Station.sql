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

-- 5)Query the list of CITY names from STATION that do not end with vowels. Your result cannot contain duplicates.
select distinct(city) from station
where right(city,1) not in ('a','e','i','o','u');

-- 6)Query the list of CITY names from STATION that either do not start with vowels or do not end with vowels. Your result cannot contain duplicates.
select distinct(city) from station
where substr(city,1,1) not in ('A','E','I','O','U') or right(city,1) not in ('a','e','i','o','u');

-- 7)Query the list of CITY names from STATION that do not start with vowels and do not end with vowels. Your result cannot contain duplicates.
select distinct(city) from station
where substr(city,1,1) not in ('A','E','I','O','U') and right(city,1) not in ('a','e','i','o','u');

-- 8) Query the Name of any student in STUDENTS who scored higher than  Marks. Order your output by the last three characters of each name. If two or more students both have names ending in the same last three characters (i.e.: Bobby, Robby, etc.), secondary sort them by ascending ID.
select name from students
where marks>75 order by right(name,3), id;

-- 9) Write a query that prints a list of employee names (i.e.: the name attribute) from the Employee table in alphabetical order.
select name from employee
order by name;


-- Write a query that prints a list of employee names (i.e.: the name attribute) for employees in Employee having a salary greater than  per month who have been employees for less than  months. Sort your result by ascending employee_id.
select name from employee
where salary>2000 and months<10 order by employee_id;



























