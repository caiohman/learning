-- Query the Name of any student in STUDENTS who scored higher than 75 Marks. Order your output by the last three characters of each name. 
-- If two or more students both have names ending in the same last three characters (i.e.: Bobby, Robby, etc.), secondary sort them by ascending ID.
-- Table STUDENTS
-- Fields (ID, NAME, MARKS)

select s.name from students s where marks > 75 order by substring(s.name, length(s.name) - 2, 3), s.id;


