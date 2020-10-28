--Selecting multiple different types of information

--Selection of all players, sorted alphabetically
SELECT playerUserName AS "Username", playerEmail AS "Email"
FROM playerAccountInfo
ORDER BY playerUserName;

--Selection of all players that are not premium players
SELECT playerUserName AS "Username", playerLevel AS "Player Level", isPremium AS "Premium Player"
FROM playerGameInfo
WHERE isPremium = TRUE
ORDER BY playerLevel;

/*
Selection of emails of players who have a level higher than 50
Uses an inner join
*/
SELECT pgi.playerUserName AS "Username", pai.playerEmail AS "Email", pgi.playerLevel AS "Player Level"
FROM playerGameInfo pgi
INNER JOIN playerAccountInfo pai
ON pgi.playerUserName = pai.playerUserName
WHERE pgi.playerLevel >= 50
ORDER BY playerLevel;