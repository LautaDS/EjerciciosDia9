CREATE DATABASE VideoClubEj2

Use VideoClubEj2
go

CREATE TABLE Pelicula (
	ID INT NOT NULL identity,
	Titulo varchar(50),
	Genero varchar(50),
	FechaBaja datetime,
	Primary Key (ID)
)

CREATE TABLE Alquiler (
	ID INT NOT NULL identity,
	PeliculaID INT,
	Fecha datetime,
	Precio DECIMAL (18, 2),
	Primary Key (ID),
	FOREIGN KEY (PeliculaID) REFERENCES Pelicula(ID),
)
