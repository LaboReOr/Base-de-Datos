#insert into Cliente values
#(11111111, "Benja", "Liras", "Av. 25 de mayo 1231", "2008-5-7"),
#(11111112, "Eduardo1", "Martes", "Av 9 de julio 4424", "1992-6-4"),
#(11111113, "Eduardo2", "Miercoles", "Av 9 de julio 4425", "2002-5-4"),
#(11111114, "Juan", "Jueves", "Av 9 de julio 4426", "1484-2-3"),
#(11111115, "Juan", "Viernes", "Av 9 de julio 4427", "2024-1-1");

#insert into Proveedor values
#(22222222, "Jorge1", "Av Pepe 111"),
#(22222223, "Jorge2", "Av Pepe 112"),
#(22222224, "Jorge3", "Av Pepe 113"),
#(22222225, "Jorge4", "Av Pepe 114"),
#(22222226, "Jorge5", "Av Pepe 115");

#insert into Producto values
#(1, 2600, 22222222, "Caja");
#(2, 3200, 22222223, "Destornillador"),
#(3, 980, 22222224, "Tornillo"),
#(4, 150, 22222225, "Tuerca"),
#(5, 10452, 22222226, "Cadena");

#insert into Cliente_has_Producto values
#(11111111, 5),
#(11111112, 2),
#(11111113, 1),
#(11111114, 3),
#(11111115, 4);

select Nombre, Apellidos from Cliente;

select Apellidos from Cliente where Fecha_de_nacimiento <= "2005-4-26" and Nombre = "Juan";

select Codigo, Precio, Proveedor_DNI, Nombre from Producto;

select Cliente_DNI from Cliente_has_Producto where Producto_Codigo = 1;

update Cliente set Direccion = "Av Peru 202" where DNI = 11111111;
select Direccion from Cliente where DNI = 11111111;