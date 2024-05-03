insert into Cliente values 
	(1, "pepe", "perez", "Calle1 123", 1100001111),
	(2, "jose", "messi", "Calle2 234", 1111112222),
	(3, "jorge", "gonzles", "Calle3 345", 1122223333),
	(4, "leandro", "paredes", "Calle4 456", 1133334444);

insert into Proveedor values
	(4, "Nombre1", "Apellido1", "Calle5 567", "Buenos Aires", 1144445555),
	(5, "Nombre2", "Apellido2", "Calle6 678", "Cordoba", 1155556666),
	(6, "Nombre3", "Apellido3", "Calle7 789", "Mendoza", 1166667777),
	(7, "Nombre4", "Apellido4", "Calle8 890", "Chubut", 1177778888);

insert into Producto values
	(1, "Descripcion1", 625, 62, 6),
	(2, "Descripcion2", 3764, 45, 4),
	(3, null, 434, 19, 7),
	(4, "Descripcion3", 5643, 78, 5),
	(5, null, 943, 15, 7),
	(6, null, 844, 34, 7),
	(7, "Descripcion4", 7965, 67, 6),
	(8, "Descripcion5", 8764, 58, 5);

insert into Producto_has_Cliente values
	(4, 3, "2023-11-24"),
	(8, 2, "2022-8-12"),
	(1, 4, "2020-6-1"),
	(2, 1, "2023-12-31");


#A)
select Descripcion, Precio from Producto where Precio > 1000 order by Precio desc;

#B)
select * from Cliente where Apellido like "A%";

#C)
delete from Producto where Descripcion is null;

#D)
select * from Producto where Proveedor_Codigo = 7;

#E)
select Descripcion, Precio, Precio-Precio*0.1 from Producto;

select * from Cliente;
select * from Producto;
select * from Producto_has_Cliente;
select * from Proveedor;
