--Updating various data from users

--Update player's level
UPDATE playerGameInfo
SET playerLevel = 51
WHERE playerUserName = "k957";

--Update player's email
UPDATE playerAccountInfo
SET playerEmail = "plasticBottle@fakeemail.com"
WHERE playerUserName = "cloroxWipes64";