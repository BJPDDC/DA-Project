INSERT INTO matches (
    id, season, city, match_date, team1, team2, toss_winner, toss_decision, result,
    dl_applied, winner, win_by_runs, win_by_wickets, player_of_match, venue,
    umpire1, umpire2, umpire3
) VALUES (
    1, 2017, 'Hyderabad', TO_DATE('2017-04-05 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
    'Sunrisers Hyderabad', 'Royal Challengers Bangalore', 'Royal Challengers Bangalore', 
    'field', 'normal', 0, 'Sunrisers Hyderabad', 35, 0, 'Yuvraj Singh',
    'Rajiv Gandhi International Stadium, Uppal', 'AY Dandekar', 'NJ Llong', NULL
);
INSERT INTO matches VALUES (
    2, 2017, 'Pune', TO_DATE('2017-04-06 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
    'Mumbai Indians', 'Rising Pune Supergiant', 'Rising Pune Supergiant', 'field',
    'normal', 0, 'Rising Pune Supergiant', 0, 7, 'SPD Smith',
    'Maharashtra Cricket Association Stadium', 'A Nand Kishore', 'S Ravi', NULL
);

INSERT INTO matches VALUES (
    3, 2017, 'Rajkot', TO_DATE('2017-04-07 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
    'Gujarat Lions', 'Kolkata Knight Riders', 'Kolkata Knight Riders', 'field',
    'normal', 0, 'Kolkata Knight Riders', 0, 10, 'CA Lynn',
    'Saurashtra Cricket Association Stadium', 'Nitin Menon', 'CK Nandan', NULL
);
INSERT INTO matches VALUES (
    4, 2017, 'Indore', TO_DATE('2017-04-08 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
    'Rising Pune Supergiant', 'Kings XI Punjab', 'Kings XI Punjab', 'field',
    'normal', 0, 'Kings XI Punjab', 0, 6, 'GJ Maxwell',
    'Holkar Cricket Stadium', 'AK Chaudhary', 'C Shamshuddin', NULL
);
INSERT INTO matches VALUES (
    5, 2017, 'Bangalore', TO_DATE('2017-04-08 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
    'Royal Challengers Bangalore', 'Delhi Daredevils', 'Royal Challengers Bangalore', 'bat',
    'normal', 0, 'Royal Challengers Bangalore', 15, 0, 'KM Jadhav',
    'M Chinnaswamy Stadium', NULL, NULL, NULL
);
INSERT INTO matches VALUES (
    6, 2017, 'Hyderabad', TO_DATE('2017-04-09 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
    'Gujarat Lions', 'Sunrisers Hyderabad', 'Sunrisers Hyderabad', 'field',
    'normal', 0, 'Sunrisers Hyderabad', 0, 9, 'Rashid Khan',
    'Rajiv Gandhi International Stadium, Uppal', 'A Deshmukh', 'NJ Llong', NULL
);
INSERT INTO matches VALUES (
    7, 2017, 'Mumbai', TO_DATE('2017-04-09 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
    'Kolkata Knight Riders', 'Mumbai Indians', 'Mumbai Indians', 'field',
    'normal', 0, 'Mumbai Indians', 0, 4, 'N Rana',
    'Wankhede Stadium', 'Nitin Menon', 'CK Nandan', NULL
);
INSERT INTO matches VALUES (
    8, 2017, 'Indore', TO_DATE('2017-04-10 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
    'Royal Challengers Bangalore', 'Kings XI Punjab', 'Royal Challengers Bangalore', 'bat',
    'normal', 0, 'Kings XI Punjab', 0, 8, 'AR Patel',
    'Holkar Cricket Stadium', 'AK Chaudhary', 'C Shamshuddin', NULL
);
INSERT INTO matches VALUES (
    9, 2017, 'Pune', TO_DATE('2017-04-11 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
    'Delhi Daredevils', 'Rising Pune Supergiant', 'Rising Pune Supergiant', 'field',
    'normal', 0, 'Delhi Daredevils', 97, 0, 'SV Samson',
    'Maharashtra Cricket Association Stadium', 'AY Dandekar', 'S Ravi', NULL
);
INSERT INTO matches VALUES (
    10, 2017, 'Mumbai', TO_DATE('2017-04-12 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
    'Sunrisers Hyderabad', 'Mumbai Indians', 'Mumbai Indians', 'field',
    'normal', 0, 'Mumbai Indians', 0, 4, 'JJ Bumrah',
    'Wankhede Stadium', 'Nitin Menon', 'CK Nandan', NULL
);
INSERT INTO deliveries (
    match_id, inning, batting_team, bowling_team, over_num, ball_num, batsman,
    non_striker, bowler, is_super_over, wide_runs, bye_runs, legbye_runs,
    noball_runs, penalty_runs, batsman_runs, extra_runs, total_runs,
    player_dismissed, dismissal_kind, fielder
) VALUES (
    1, 1, 'Sunrisers Hyderabad', 'Royal Challengers Bangalore', 1, 1, 'DA Warner',
    'S Dhawan', 'TS Mills', 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL
);
INSERT INTO deliveries VALUES (
    1, 1, 'Sunrisers Hyderabad', 'Royal Challengers Bangalore', 1, 2, 'DA Warner',
    'S Dhawan', 'TS Mills', 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL
);
INSERT INTO deliveries VALUES (
    1, 1, 'Sunrisers Hyderabad', 'Royal Challengers Bangalore', 1, 3, 'DA Warner',
    'S Dhawan', 'TS Mills', 0, 0, 0, 0, 0, 0, 4, 0, 4, NULL, NULL, NULL
);
INSERT INTO deliveries VALUES (
    1, 1, 'Sunrisers Hyderabad', 'Royal Challengers Bangalore', 1, 4, 'DA Warner',
    'S Dhawan', 'TS Mills', 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL
);
-- Top 10 batsmen with highest total runs
SELECT batsman, SUM(batsman_runs) AS total_runs
FROM deliveries
GROUP BY batsman
ORDER BY total_runs DESC
FETCH FIRST 10 ROWS ONLY;

-- Top 10 batsmen with lowest non-zero runs
SELECT batsman, SUM(batsman_runs) AS total_runs
FROM deliveries
GROUP BY batsman
HAVING SUM(batsman_runs) > 0
ORDER BY total_runs ASC
FETCH FIRST 10 ROWS ONLY;
-- Top 10 bowlers by wickets (excluding run outs, retired hurt, obstructing field)
SELECT bowler, COUNT(player_dismissed) AS total_wickets
FROM deliveries
WHERE dismissal_kind NOT IN ('run out', 'retired hurt', 'obstructing the field')
  AND player_dismissed IS NOT NULL
GROUP BY bowler
ORDER BY total_wickets DESC
FETCH FIRST 10 ROWS ONLY;

-- Bowlers with zero wickets
SELECT bowler
FROM deliveries
GROUP BY bowler
HAVING SUM(CASE 
            WHEN player_dismissed IS NOT NULL 
            AND dismissal_kind NOT IN ('run out', 'retired hurt', 'obstructing the field') 
            THEN 1 ELSE 0 
           END) = 0;
SELECT bowler,
       ROUND(SUM(total_runs) / COUNT(*), 2) AS economy_rate
FROM deliveries
GROUP BY bowler
HAVING COUNT(*) > 100
ORDER BY economy_rate ASC
FETCH FIRST 5 ROWS ONLY;

SELECT fielder, COUNT(*) AS dismissals
FROM deliveries
WHERE dismissal_kind IN ('caught', 'run out')
GROUP BY fielder
ORDER BY dismissals DESC
FETCH FIRST 10 ROWS ONLY;

SELECT toss_winner, COUNT(*) AS tosses_won
FROM matches
GROUP BY toss_winner
ORDER BY tosses_won DESC;

-- Teams winning both toss and match
SELECT toss_winner, COUNT(*) AS wins_after_toss
FROM matches
WHERE toss_winner = winner
GROUP BY toss_winner
ORDER BY wins_after_toss DESC;

SELECT winner, COUNT(*) AS total_wins
FROM matches
WHERE winner IS NOT NULL
GROUP BY winner
ORDER BY total_wins DESC;

-- Players with most sixes
SELECT batsman, COUNT(*) AS sixes
FROM deliveries
WHERE batsman_runs = 6
GROUP BY batsman
ORDER BY sixes DESC
FETCH FIRST 10 ROWS ONLY;

-- Teams with most sixes
SELECT batting_team, COUNT(*) AS team_sixes
FROM deliveries
WHERE batsman_runs = 6
GROUP BY batting_team
ORDER BY team_sixes DESC;

-- Players with most fours
SELECT batsman, COUNT(*) AS fours
FROM deliveries
WHERE batsman_runs = 4
GROUP BY batsman
ORDER BY fours DESC
FETCH FIRST 10 ROWS ONLY;

-- Count of toss decisions overall
SELECT toss_decision, COUNT(*) AS decision_count
FROM matches
GROUP BY toss_decision;

-- Toss decision trends by team
SELECT toss_winner, toss_decision, COUNT(*) AS decision_count
FROM matches
GROUP BY toss_winner, toss_decision
ORDER BY toss_winner;

-- Cities that hosted the most matches
SELECT city, COUNT(*) AS matches_hosted
FROM matches
GROUP BY city
ORDER BY matches_hosted DESC;

-- Which venues favor which teams
SELECT winner, venue, COUNT(*) AS wins_at_venue
FROM matches
WHERE winner IS NOT NULL
GROUP BY winner, venue
ORDER BY winner, wins_at_venue DESC;

-- Number of matches per season
SELECT season, COUNT(*) AS matches
FROM matches
GROUP BY season
ORDER BY season;

SELECT m.season, SUM(d.total_runs) AS total_runs
FROM deliveries d
JOIN matches m ON d.match_id = m.id
GROUP BY m.season
ORDER BY m.season;

