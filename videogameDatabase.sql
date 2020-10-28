--
-- File generated with SQLiteStudio v3.2.1 on Tue Oct 27 11:40:40 2020
--
-- Text encoding used: System
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Table: playerAccountInfo
DROP TABLE IF EXISTS playerAccountInfo;

CREATE TABLE playerAccountInfo (
    playerId       INTEGER      PRIMARY KEY AUTOINCREMENT
                                UNIQUE
                                NOT NULL,
    playerUserName VARCHAR (20) REFERENCES playerGameInfo (playerUserName) 
                                UNIQUE
                                NOT NULL,
    playerPassword VARCHAR (20) NOT NULL,
    playerEmail    VARCHAR (20) NOT NULL
);


-- Table: playerGameInfo
DROP TABLE IF EXISTS playerGameInfo;

CREATE TABLE playerGameInfo (
    playerUserName VARCHAR (20) PRIMARY KEY
                                NOT NULL
                                UNIQUE,
    playerLevel    INT (10)     DEFAULT (1),
    isPremium      BOOLEAN      DEFAULT (False) 
);


COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
