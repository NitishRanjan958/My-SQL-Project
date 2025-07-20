CREATE DATABASE CARS;
USE CAR;
-- READ DATA--
SELECT * FROM car_dekho;
-- Total cars: to get a count of total records--
SELECT count(*) FROM car_dekho;
-- The Manager asked the employee how many cars will be availabe in 2023--
SELECT count(*) FROM car_dekho WHERE YEAR = 2023;
-- The Manager asked the employee how many cars will be availabe in 2020,2021,2022--
SELECT count(*) FROM car_dekho WHERE YEAR = 2020; #74
SELECT count(*) FROM car_dekho WHERE YEAR = 2021; #7
SELECT count(*) FROM car_dekho WHERE YEAR = 2022; #7
-- Group BY--
SELECT count(*) FROM car_dekho WHERE YEAR IN (2020,2021,2022) Group BY year;
-- clint asked me to print the total of all cars by year i dont sell all the details--
SELECT YEAR, count(*) FROM car_dekho Group by year;

-- clint asked to car dealer agent how many diesel cars will there be in 2020?--
select count(*) from car_dekho where year = 2020 and fuel ="diesel"; #20

-- clint asked to car dealer agent how many petrol cars will there be in 2020?--
select count(*) from car_dekho where year = 2020 and fuel ="petrol"; #51

-- the manager total employee to give all the fuel (petrol, diesel, and cng) come ny all year--
select year, count(*) from car_dekho where fuel = "petrol" group by year;
select year, count(*) from car_dekho where fuel = "diesel" group by year;
select year, count(*) from car_dekho where fuel = "CNG" group by year;

-- Manager said there were more than 100 cars in a given year, which year had more than 100 cars?--
select year, count(*) from car_dekho group by year having count(*)>100;
select year, count(*) from car_dekho group by year having count(*)>50;

-- The manager said to the employee All cars count details between 2015 and 2023; we need a complete list--
SELECT count(*) FROM car_dekho WHERE YEAR between 2015 and 2023; #4124

-- The manager said to the employee All cars details between 2015 to 2023 we need complete list--
select*FROM car_dekho WHERE YEAR between 2015 and 2023;


-- END--

