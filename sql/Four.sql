-- Query all attributes of every Japanese city in the CITY table. The COUNTRYCODE for Japan is JPN.
-- The CITY table is described as follows
-- Table CITY
-- Fields (ID, NAME, COUNTRYCODE, DISTRICT, POPULATION)
select * from city c where countrycode = 'JPN';