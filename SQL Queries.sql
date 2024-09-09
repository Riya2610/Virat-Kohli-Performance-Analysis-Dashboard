CREATE DATABASE VIRAT;

USE VIRAT;

SELECT * FROM Virat_Performance;



-- 1) Total Runs Against Each Opponent

SELECT opponent, SUM(runs) AS total_runs
FROM Virat_Performance
GROUP BY opponent
ORDER BY total_runs DESC;

-- 2) Total Runs Scored on Each Ground

SELECT ground, SUM(runs) AS total_runs
FROM Virat_Performance
GROUP BY ground
ORDER BY total_runs DESC;

-- 3) Total Runs Scored in a Specific Year

SELECT SUM(runs) AS total_runs
FROM Virat_Performance
WHERE YEAR(match_date) = 2018;

-- 4) average runs per match format

SELECT match_format, AVG(runs) AS average_runs
FROM Virat_Performance
GROUP BY match_format;

-- 5) Matches Played Against a Specific Opponent

SELECT match_no, ground, match_date, runs
FROM Virat_Performance
WHERE opponent = 'Australia';