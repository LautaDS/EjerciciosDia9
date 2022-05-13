CREATE DATABASE ClinicaEj4

CREATE TABLE TipoEstudio(
	ID INT NOT NULL identity,
	Descripcion varchar(50),
	FechaBaja DATETIME,
	Primary Key (ID)
)

CREATE TABLE TipoEmpleado (
	ID INT NOT NULL identity,
	Descripcion varchar(50),
	FechaBaja DATETIME,
	Primary Key (ID)
)

CREATE TABLE Paciente (
	ID INT NOT NULL identity,
	Nombre varchar(50),
	Apellido varchar(50),
	DNI varchar(50),
	Legajo varchar(50),
	Primary Key (ID)
)

CREATE TABLE Estudio (
	ID INT NOT NULL identity,
	TipoEstudioID INT,
	EmpleadoID INT,
	Fecha DATETIME,
	Informe varchar(250),

	Primary Key (ID),
	FOREIGN KEY (TipoEstudioID) REFERENCES Estudio(ID),
	FOREIGN KEY (EmpleadoID) REFERENCES TipoEmpleado(ID),


)