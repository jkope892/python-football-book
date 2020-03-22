SELECT 1 AS q, 
       home_score_q1 % 10 AS hs, 
       away_score_q1 % 10 AS vs
FROM base.game     
WHERE (home_score_q1 IS NOT NULL AND home_score_q2 IS NOT NULL AND home_score_q3 IS NOT NULL AND home_score_q4 IS NOT NULL)

UNION ALL

SELECT 2 AS q, 
       (home_score_q1 + home_score_q2) % 10 AS hs, 
       (away_score_q1 + away_score_q2) % 10 AS vs
FROM base.game     
WHERE (home_score_q1 IS NOT NULL AND home_score_q2 IS NOT NULL AND home_score_q3 IS NOT NULL AND home_score_q4 IS NOT NULL)

UNION ALL

SELECT 3 AS q, 
       (home_score_q1 + home_score_q2 + home_score_q3) % 10 AS hs, 
       (away_score_q1 + away_score_q2 + away_score_q3) % 10 AS vs
FROM base.game     
WHERE (home_score_q1 IS NOT NULL AND home_score_q2 IS NOT NULL AND home_score_q3 IS NOT NULL AND home_score_q4 IS NOT NULL)

UNION ALL

SELECT 4 AS q, 
       (home_score_q1 + home_score_q2 + home_score_q3 + home_score_q4) % 10 AS hs, 
       (away_score_q1 + away_score_q2 + away_score_q3 + away_score_q4) % 10 AS vs
FROM base.game     
WHERE (home_score_q1 IS NOT NULL AND home_score_q2 IS NOT NULL AND home_score_q3 IS NOT NULL AND home_score_q4 IS NOT NULL)
