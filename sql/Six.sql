-- Query a list of CITY and STATE from the STATION table.
-- The STATION table is described as follows:
-- Table STATION
-- Fields (ID, CITY, STATE, LAT_N, LONG_W)
select s.city, s.state from station s;