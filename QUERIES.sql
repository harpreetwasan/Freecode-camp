SELECT A.WINNER, player_info.FIRST_NAME, player_info.LAST_NAME, WinCount FROM player_info JOIN 
(select match_result.Winner,count(Winner) as WinCount from match_result
group by WINNER
order by WinCount desc
limit 1) as A
WHERE A.WINNER = player_info.PLAYER_ID

SELECT A.LOOSER, player_info.FIRST_NAME, player_info.LAST_NAME, LOOSECOUNT FROM player_info JOIN 
(select match_result.LOOSER,count(LOOSER) as LOOSECOUNT from match_result
group by LOOSER
order by LOOSECOUNT desc
limit 1) as A
WHERE A.LOOSER = player_info.PLAYER_ID

SELECT MATCH_TYPE, MATCH_ID, DURATION
FROM MATCH_INFO
Where DURATION = (SELECT MAX(DURATION) FROM MATCH_INFO)

SELECT MATCH_TYPE, MATCH_ID, DURATION
FROM MATCH_INFO
Where DURATION = (SELECT MIN(DURATION) FROM MATCH_INFO)

SELECT MATCH_ID, MATCH_TYPE, DateTime
FROM match_info
WHERE DateTime >= "2016-02-06 13:00:00" AND DateTime <="2016-02-06 17:00:00"

