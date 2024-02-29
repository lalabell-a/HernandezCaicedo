-- database: ../database/AntBot.sqlite
/*
|--------------------------------------|
| (©)2k24 EPN-FIS, All right reserved. |       
|                                      |
|erick.caicedo@epn.edu.ec ErickCaiced2 |
|______________________________________|
Autor: ErickCaiced2
Fecha: 24/02/1014
Script: Creación de la tabla IABot
*/
DROP TABLE If EXISTS IABot;
--Catalogo
CREATE TABLE IABot(
        IdIABot                         INTEGER PRIMARY KEY AUTOINCREMENT
        ,Nombre                         TEXT  NOT NULL UNIQUE
        ,Estado                         VARCHAR(1) NOT NULL DEFAULT 'A'
        ,FechaCrea                      DATETIME NOT NULL DEFAULT (DATETIME('NOW', 'LOCALTIME'))
        ,FechaModifica                  DATE
);