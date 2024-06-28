
#1

CREATE DATABASE RepasoGROUPBY2;

USE RepasoGROUPBY2;
 
CREATE TABLE Sala (

	Codigo INT,

    Capacidad INT,

    PRIMARY KEY (Codigo)

);
 
CREATE TABLE Pelicula (

	Codigo INT,

    Genero VARCHAR(45),

    Nombre VARCHAR(45),

    fechaEstreno date,

    PRIMARY KEY (Codigo)

);
 
CREATE TABLE Funcion (

	Codigo INT,

    Fecha DATE,

    Hora TIME,

    precioEntrada INT,

    CODIGO_Pelicula INT,

    CODIGO_Sala INT,

    PRIMARY KEY (Codigo),

    FOREIGN KEY (CODIGO_Pelicula) REFERENCES Pelicula(Codigo),

    FOREIGN KEY (CODIGO_Sala) REFERENCES Sala(Codigo)

);
 
CREATE TABLE Compra (

	dniCliente INT,

    fecha DATE,

    Codigo INT,

    cantEntradas INT,

    CODIGO_Funcion INT,

    PRIMARY KEY (Codigo),

    FOREIGN KEY (CODIGO_Funcion) REFERENCES Funcion(Codigo),

    #2

    CHECK (cantEntradas > 0)

);
 
CREATE TABLE Butaca (

	Letra INT,

	Numero INT,

    PRIMARY KEY (Letra, Numero)

);
 
CREATE TABLE Tiene (

	LETRA_Butaca INT,

    NUMERO_Butaca INT,

	CODIGO_Compra INT,

    FOREIGN KEY (LETRA_Butaca, Numero_Butaca) REFERENCES Butaca(Letra, Numero),

    FOREIGN KEY (CODIGO_Compra) REFERENCES Compra(Codigo)

);
 
 
#3

SELECT Pelicula.Nombre, SUM(Funcion.precioEntrada * Compra.cantEntradas) From Funcion 

JOIN Compra ON Compra.Codigo = CODIGO_Compra

WHERE Funcion.Fecha like "2024-05-%"

GROUP BY CODIGO_Pelicula;
 
#4

SELECT AVG(precioEntrada) FROM Funcion 

WHERE Fecha LIKE "2024%";
 
#5

SELECT SUM(Compra.cantEntradas * Funcion.precioEntrada) FROM Compra

JOIN Funcion ON Funcion.Codigo = CODIGO_Funcion

WHERE Funcion.Fecha > current_date()

GROUP BY Compra.Codigo;
 
#6

 
