-- Write a query identifying the type of each record in the TRIANGLES
-- table using its three side lengths. Output one of the following
-- statements for each record in the table:
-- Equilateral: It's a triangle with 
-- sides of equal length.
-- Isosceles: It's a triangle with
-- sides of equal length.
-- Scalene: It's a triangle with
-- sides of differing lengths.
-- Not A Triangle: The given values of A, B, and C don't form a triangle.

select if( t.a + t.b <= t.c or t.a + t.c <= t.b or t.b + t.c <= t.a, 'Not A Triangle ',
if( (t.a = t.b) and (t.a = t.c), 'Equilateral',
if( (t.a = t.b) or (t.a = t.c), 'Isosceles', 'Scalene' ) ) ) 
from triangles t;