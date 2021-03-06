DROP DATABASE IF EXISTS Bingo;
CREATE DATABASE Bingo;
USE Bingo;

CREATE TABLE Jugador (
  Identificador INTEGER PRIMARY KEY NOT NULL,
  Nombre TEXT NOT NULL,
  Fondos INT NOT NULL
)ENGINE = InnoDB;

CREATE TABLE Partida (
 Identificador INTEGER PRIMARY KEY NOT NULL,
 Servidor INT NOT NULL
)ENGINE = InnoDB;

CREATE TABLE Game (
  Jugador INTEGER NOT NULL,
  Partida INTEGER NOT NULL,
  FOREIGN KEY (Jugador) REFERENCES Jugador(Identificador),
  FOREIGN KEY (Partida) REFERENCES Partida(Identificador)
)ENGINE = InnoDB;

INSERT INTO Jugador VALUES(1,'David',1000);
INSERT INTO Jugador VALUES(2,'Victor',2000);
INSERT INTO Jugador VALUES(3,'Mario',800);
INSERT INTO Jugador VALUES(4,'Carlos',500);
INSERT INTO Jugador VALUES(5,'Julia',1800);
INSERT INTO Jugador VALUES(6,'Hellen',2100);
INSERT INTO Jugador VALUES(7,'Marc',200);
INSERT INTO Partida VALUES(1,4);
INSERT INTO Partida VALUES(2,6);
INSERT INTO Partida VALUES(3,5);
INSERT INTO Game VALUES(1,3);
INSERT INTO Game VALUES(2,1);
INSERT INTO Game VALUES(3,3);
INSERT INTO Game VALUES(4,2);
INSERT INTO Game VALUES(5,2);
INSERT INTO Game VALUES(6,2);
INSERT INTO Game VALUES(7,1);




