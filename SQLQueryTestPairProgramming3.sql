CREATE DATABASE Ejercicio5

CREATE TABLE Categorias(
	CategoriaID INT NOT NULL identity,
	Nombre varchar(50),

	Primary Key (CategoriaID)

)

CREATE TABLE Proveedor(
	ID INT NOT NULL identity,
	Costo INT,
	Primary Key (ID)
)


CREATE TABLE Productos(
	ProductoID INT NOT NULL identity,
	Precio INT,
	CostoProveedor INT,
	Categoria INT,
	Primary Key (ProductoID),
	FOREIGN KEY (Categoria) REFERENCES Categorias(CategoriaID),
	FOREIGN KEY (CostoProveedor) REFERENCES Proveedor(ID),

)



