/* Shows all students, grade level, and id */
SELECT id AS student_id, name, grade FROM students;

/* Shows list of instruments */
SELECT id, instr_name AS instrument_type FROM instruments;

/* Shows students with Mbira Jam instrument */
SELECT name, instruments.instr_name AS mbira FROM students
    LEFT OUTER JOIN instruments
    ON students.instrument_mbira = instruments.id
    ORDER BY mbira;

/* Shows the list of students and instruments for the cup song*/
SELECT name, grade, instruments.instr_name AS cup_song FROM students
    JOIN instruments
    ON students.instrument_cup = instruments.id
    ORDER BY instruments.instr_name; 

/* Shows complete student list with grade level and instrument assignments for both songs, ordered my mbira song */
SELECT name, grade, a.instr_name AS cup_song, b.instr_name AS mbira_jam FROM students
    JOIN instruments a
    ON students.instrument_cup = a.id
    JOIN instruments b
    ON students.instrument_mbira = b.id
    ORDER BY b.instr_name;

/* Shows students who were assigned the same instrument for both songs*/
SELECT name FROM students 
    WHERE instrument_cup = instrument_mbira;

SELECT * from partner_mbira;

/* Query for a list of partners, part, and instrument for Mbira */  
SELECT a. name, b. name, part, instruments.instr_name FROM partner_mbira
    LEFT OUTER JOIN students a
    ON partner_mbira.partner1 = a.id
    LEFT OUTER JOIN students b
    ON partner_mbira.partner2 = b.id
    JOIN instruments
   ON partner_mbira.instrument = instruments.id;
