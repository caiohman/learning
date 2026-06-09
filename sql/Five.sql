-- Query the names of all the Japanese cities in the CITY table. The COUNTRYCODE for Japan is JPN.
-- The CITY table is described as follows
-- Table CITY
-- Fields (ID, NAME, COUNTRYCODE, DISTRICT, POPULATION)
select c.name from city c where countrycode = 'JPN';