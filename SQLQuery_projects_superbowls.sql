SELECT * FROM superbowls
ORDER BY DATE;

SELECT COUNT(SB) AS Number_of_Superbowls FROM superbowls;

SELECT MVP, COUNT(MVP) AS times_voted
FROM superbowls
GROUP BY MVP
HAVING COUNT(MVP) > 1;

SELECT City, COUNT(City) AS times_hosted
FROM superbowls
GROUP BY City
HAVING COUNT(City) > 1;

SELECT Stadium, COUNT(Stadium) AS times_hosted
FROM superbowls
GROUP BY Stadium
HAVING COUNT(Stadium) > 1;

SELECT Winner, COUNT(Winner) AS times_won
FROM superbowls
GROUP BY Winner
HAVING COUNT(Winner) > 1;

SELECT Loser, COUNT(Loser) AS times_lost
FROM superbowls
GROUP BY Loser
HAVING COUNT(Loser) > 1;

SELECT SB, s.Winner, s.Winner_Pts AS most_pts_won
FROM superbowls s
WHERE s.Winner_Pts = (SELECT MAX(Winner_Pts) FROM superbowls);

SELECT AVG(Winner_pts) AS Avg_pts_won
FROM superbowls;

SELECT AVG(Loser_Pts) AS Avg_pts_lost
FROM superbowls;

SELECT Count(SB) AS games,
    CASE 
        WHEN winner_pts = loser_pts THEN 'tie'
        WHEN winner_pts - loser_pts >= 10 THEN 'big win'
        WHEN winner_pts - loser_pts < 10 THEN 'close game'
    END as "point_spread"
FROM 
    superbowls
	GROUP BY 
    CASE 
        WHEN winner_pts = loser_pts THEN 'tie'
        WHEN winner_pts - loser_pts >= 10 THEN 'big win'
        WHEN winner_pts - loser_pts < 10 THEN 'close game'
    END;

SELECT * FROM superbowls
ORDER BY Winner_pts;

SELECT SB, Winner, Winner_pts, Loser_pts FROM superbowls
WHERE winner_pts > 15 OR loser_pts < 10;

SELECT SB, Winner 
FROM superbowls
WHERE Winner = 'Dallas Cowboys';

