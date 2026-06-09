-- Query the list of CITY names from STATION which have vowels (i.e., a, e, i, o, and u) as both their first and last characters.
-- Your result cannot contain duplicates.
-- Table STATION
-- Fields (ID, CITY, STATE, LAT_N, LONG_W)

select distinct s.city from station s 
where (substring(s.city, 1, 1) = 'a' or substring(s.city, 1, 1) = 'A' or
 substring(s.city, 1, 1) = 'e' or substring(s.city, 1, 1) = 'E' or 
 substring(s.city, 1, 1) = 'i' or substring(s.city, 1, 1) = 'I' or
 substring(s.city, 1, 1) = 'o' or substring(s.city, 1, 1) = 'O' or
 substring(s.city, 1, 1) = 'u' or substring(s.city, 1, 1) = 'U') and
 (substring(s.city, length(s.city)) = 'a' or substring(s.city, length(s.city)) = 'A' or
 substring(s.city, length(s.city)) = 'e' or substring(s.city, length(s.city)) = 'E' or 
 substring(s.city, length(s.city)) = 'i' or substring(s.city, length(s.city)) = 'I' or
 substring(s.city, length(s.city)) = 'o' or substring(s.city, length(s.city)) = 'O' or
 substring(s.city, length(s.city)) = 'u' or substring(s.city, length(s.city)) = 'U');

-- Refactoring
select distinct s.city from station s where regexp_like(s.city, '[aeiou]$', 'i') and regexp_like(s.city, '^[aeiou]', 'i');