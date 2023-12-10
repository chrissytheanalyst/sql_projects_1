# sql_projects_1
A collection of my sample SQL project files

# Project "Superbowls"
Data source: https://gist.github.com/pamelafox/3d8ab901def3577a8bfc881f6255d3f6

1 query file

Tables includes information for all NLF Superbowl games: team names, hosting location, MVP players, scores

Questions answered within queries:

How many Superbowls have taken place? 
How many players have earned MVP more than once? 
Which stadiums have hosted a Superbowl more than once?
Which teams have won a Superbowl more than once, and also lost more than once?
What was the highest scoring game? (using MAX aggregate values for the highest scoring winner)
What was the AVG score of all winning team points, and also the AVG score for losing team points?
Created a CASE and GROUPBY that categorized a point spread for all games in 3 groups: tied games, less than 10 point spread (close game), and more than 10 point spread (big win).
Ordered list of winners by points scored.
Filtered a list of winning teams where winner points and loser points were in certain ranges (such as winner points greater than 15 OR loser points less than 10) 

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
