CREATE DATABASE KioscoEj1

Use KioscoEj1
go

CREATE TABLE Producto (
    ID INT NOT NULL identity ,
    Nombre varchar(50),
    Categoria varchar(50),
    FechaBaja DateTime,
    PRIMARY KEY(ID)
 )

CREATE TABLE Caracteristicas (
    Id int NOT NULL identity ,
    ProductoID int,
    Precio numeric(18,2),
    Ancho numeric(18,2),
    Largo numeric(18,2),
    Peso numeric(18,2),
    PRIMARY KEY(Id),
    FOREIGN KEY (productoID) REFERENCES Producto(ID)
 )