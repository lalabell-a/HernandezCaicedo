-- database: ../database/AntBot.sqlite
/*
|--------------------------------------|
| (©)2k24 EPN-FIS, All right reserved. |       
|                                      |
|erick.caicedo@epn.edu.ec ErickCaiced2 |
|______________________________________|
Autor: ErickCaiced2
Fecha: 24/02/1014
Script: Creación de la tabla HormigaClasificacion
*/
DROP TABLE If EXISTS HormigaClasificacion;
--Catalogo
CREATE TABLE HormigaClasificacion(
        IdHormigaClasificacion          INTEGER PRIMARY KEY AUTOINCREMENT
        ,Nombre                         TEXT  NOT NULL UNIQUE
        ,Estado                         VARCHAR(1) NOT NULL DEFAULT 'A'
        ,FechaCrea                      DATETIME NOT NULL DEFAULT (DATETIME('NOW', 'LOCALTIME'))
        ,FechaModifica                  DATE
);