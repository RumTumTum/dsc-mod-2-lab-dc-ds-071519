SELECT *
FROM(
	SELECT *
	FROM(
		SELECT Match_ID, "Home" as Match_Team, Div, Season, Date, HomeTeam as Team, AwayTeam as Opponent, (FTHG - FTAG) as Result
		FROM Matches
		WHERE Season = 2011
		)
	UNION ALL
	SELECT *
	FROM(
		SELECT Match_ID, "Away" as Match_Team, Div, Season, Date, AwayTeam as Team, HomeTeam as Opponent, -(FTHG - FTAG) as Result
		FROM Matches
		WHERE Season = 2011
		)
	)
ORDER BY Match_ID, Match_Team Desc
;