-- database: ../database/Antbot.sqlite
/*
|--------------------------------------|
| (©)2k24 EPN-FIS, All right reserved. |       
|                                      |
|erick.caicedo@epn.edu.ec ErickCaiced2 |
|______________________________________|
Autor: ErickCaiced2
Fecha: 24/02/1014
Script: Creación de la tabla Ensamblado
*/
DROP TABLE If EXISTS Ensamblado;
--Catalogo
CREATE TABLE Ensamblado(
        IdEnsamblado                    INTEGER PRIMARY KEY AUTOINCREMENT
        ,IdAntBot                       INTEGER  REFERENCES AntBot (IdAntBot)
        ,IdHormiga                      INTEGER  REFERENCES Hormiga (IdHormiga)
        ,IdMecatronico                  INTEGER  REFERENCES Mecatronico (IdMecatronico)
        ,Nombre                         TEXT  NOT NULL DEFAULT "GUERRERO RUSO"
        ,Estado                         VARCHAR(1) NOT NULL DEFAULT 'A'
        ,FechaCrea                      DATETIME NOT NULL DEFAULT (DATETIME('NOW', 'LOCALTIME'))
        ,FechaModifica                  DATE
);