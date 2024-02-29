-- database: ../database/Antbot.sqlite
/*
|--------------------------------------|
| (©)2k24 EPN-FIS, All right reserved. |       
|                                      |
|erick.caicedo@epn.edu.ec ErickCaiced2 |
|______________________________________|
Autor: ErickCaiced2
Fecha: 24/02/1014
Script: Creación de la tabla AntBot
*/
DROP TABLE If EXISTS AntBot;
--Catalogo
CREATE TABLE AntBot(
        IdAntBot                        INTEGER PRIMARY KEY AUTOINCREMENT
        ,IdIABot                        INTEGER  REFERENCES IABot (IdIABot)
        ,IdExpertoIdiomas               INTEGER  REFERENCES ExpertoIdiomas (IdExpertoIdiomas)
        ,Serie                          TEXT  NOT NULL UNIQUE
        ,Estado                         VARCHAR(1) NOT NULL DEFAULT 'A'
        ,FechaCrea                      DATETIME NOT NULL DEFAULT (DATETIME('NOW', 'LOCALTIME'))
        ,FechaModifica                  DATE
);