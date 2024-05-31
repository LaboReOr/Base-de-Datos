create database Ejercicio1dll;
use Ejercicio1dll;

create table Cliente(
	DNI int,
    Nombre varchar(45),
    Apellidos varchar(45),
    Direccion varchar(45),
    Fecha_de_nacimiento DATE,
    primary key(DNI)
);

create table Proveedor(
	DNI int,
    Nombre varchar(45),
    Apellido varchar(45),
    primary key(DNI)
);

create table Producto(
	Codigo int,
    Nombre varchar(45),
    Precio int,
    Proveedor_DNI int,
    primary key(Codigo),
    foreign key(Proveedor_DNI) references Proveedor(DNI)
    on delete set null
    on update set null
);

create table Cliente_has_producto(
	Cliente_DNI int,
    Producto_Codigo int,
    foreign key (Cliente_DNI) references Cliente(DNI),
    foreign key (Producto_Codigo) references Producto(Codigo)
	on delete restrict
    on update restrict
);



insert into Cliente values
	(111, "Nombre1", "Apellido1", "Direccion1", "2005-5-5"),
	(222, "Nombre2", "Apellido2", "Direccion2", "2006-6-6"),
	(333, "Nombre3", "Apellido3", "Direccion3", "2007-7-7");


insert into Proveedor values
	(444, "Nombre4", "Apellido4"),
	(555, "Nombre5", "Apellido5"),
	(666, "Nombre6", "Apellido6");

insert into Producto values
	(1, "Producto1", 5000, 444),
	(2, "Producto2", 6000, 555),
	(3, "Producto3", 7000, 666);

insert into Cliente_has_producto values
	(111, 1),
	(222, 2),
	(333, 3);


select * from Cliente;
select * from Cliente_has_producto;
select * from Producto;
select * from Proveedor;

delete from Cliente;
delete from Cliente_has_producto;
delete from Producto;
delete from Proveedor;

update Cliente set DNI = 999 where Nombre = "Nombre1";
update Producto set Nombre = "Telefono";
update Proveedor set DNI = "999" where Nombre = "Nombre4";