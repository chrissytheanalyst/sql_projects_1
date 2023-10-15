# sql_projects_1
A collection of my sample SQL files

# Project "Superbowls"
Data source: https://gist.github.com/pamelafox/3d8ab901def3577a8bfc881f6255d3f6

1 query file

Questions answered within queries:

What are average, max, and min values in the data?

What about those numbers per category in the data (using HAVING)?

What ways are there to group the data values that don’t exist yet (using CASE)?

What interesting ways are there to filter the data (using AND/OR)?

# Project "Music Class"

1 data/table/insert file

1 query file 

Data set is custom from a real life music classroom. Table data is used to match students with assigned instruments for two different songs: Cup Song and Mbira Jam. Mbira also includes partners and a specific part (bass or soprano). The goal is to create tables that will be able to: 

1. Return student names with assignmed instruments by grade level.
2. Query a list of instrument assignments per student or song.
3. See both partner student names next to assigned instrument and part.
4. Be able to query a count of instruments and see any trends that need to be addressed.

The tables that were brainstormed before beginning the project:
1. Table for each song with instrument_type and student_id for the student that is assigned to it. 
2. Table with student name, grade level 3 or 4. Will use this id automatically given as the student_id to input for instrument assignments.
3. Table with student partners for the song Mbira Jam. Include partner id AND part being played - bass or soprano.

Tables that I actually ended up using for the queries needed: 
1. 'students' table with name, grade level, instrument for cup song, instrument for mbira jam (by instrument table id numbers)
2. 'instruments' table with the name/type of instrument which is referred to by automatic id number - also serves as a start to instrument inventory for future database needs
3. 'partner_mbira' table just for the song Mbira Jam which includes partner1, partner2, part, and instrument id number 

This project allowed me to group and order the student and instrument lists in multiple ways. It also revealed where a couple students were assigned to the same instrument for both songs which was not intentional.
