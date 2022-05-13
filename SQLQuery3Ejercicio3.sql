CREATE DATABASE ConcesionariaEj3
USE ConcesionariaEj3

CREATE TABLE Vehiculo (
	ID INT NOT NULL identity,
	Marca varchar(50),
	Modelo varchar(50),
	Importe varchar(50),
	FechaBaja Datetime,
	Primary Key (ID)

)

CREATE TABLE Cliente (
	ID INT NOT NULL identity,
	Nombre varchar(50),
	Apellido varchar(50),
	DNI varchar(50),
	Direccion varchar(50),
	Primary Key (ID)
)

CREATE TABLE Vendedores (
	ID INT NOT NULL identity,
	Nombre varchar(50),
	Primary Key (ID)
)

CREATE TABLE Venta  (
	ID INT NOT NULL identity,
	VehiculoID INT,
	ClienteID INT,
	VendedorID INT,
	Importe DECIMAL(18,2),
	Descuento DECIMAL(18,2),
	Fecha DATETIME,

	Primary Key (ID),
	FOREIGN KEY (VehiculoID) REFERENCES Vehiculo(ID),
	FOREIGN KEY (ClienteID) REFERENCES Cliente(ID),
	FOREIGN KEY (VendedorID) REFERENCES Vendedores(ID),


)