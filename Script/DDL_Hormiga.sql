-- database: ../database/AntBot.sqlite
/*
|--------------------------------------|
| (©)2k24 EPN-FIS, All right reserved. |       
|                                      |
|erick.caicedo@epn.edu.ec ErickCaiced2 |
|______________________________________|
Autor: ErickCaiced2
Fecha: 24/02/1014
Script: Creación de la tabla Hormiga
*/
DROP TABLE If EXISTS Hormiga;
--Catalogo
CREATE TABLE Hormiga(
        IdHormiga                       INTEGER PRIMARY KEY AUTOINCREMENT
        ,IdHormigaClasificacion         INTEGER  REFERENCES HormigaClasificacion (IdHormigaClasificacion)
        ,Codigo                         TEXT  NOT NULL UNIQUE
        ,Estado                         VARCHAR(1) NOT NULL DEFAULT 'A'
        ,FechaCrea                      DATETIME NOT NULL DEFAULT (DATETIME('NOW', 'LOCALTIME'))
        ,FechaModifica                  DATE
);