create database claseddl;
use claseddl;
 
create table Clientes(
    Codigo int,
    Nombre varchar(45),
    Apellido varchar(45),
    Direccion varchar(45),
    DNI int,
    Telefono int,
    Celular int,
    primary key(Codigo)
);
 
create table Forma_de_pago (
    Codigo int,
    Forma_de_pago varchar(45),
    primary key(Codigo)
);
 
create table Alojamiento (
    Codigo int,
    Nombre varchar(45),
    Categoria varchar(45),
    Direccion varchar(45),
    Telefono int, 
    Cantidad_de_personas int,
    Cocina_Cabaña tinyint,
    Garage_Cabaña tinyint,
    Parrilla_Cabaña tinyint,
    Cantidad_de_pisos int,
    Bar_Restaurant varchar(45),
    primary key (Codigo)
);
 
create table Paquetes_de_viajes (
    Lugar varchar(45),
    Cantidad_de_dias int,
    Cantidad_de_noches int,
    Costo int,
    Cantidad_de_excursiones int,
    Viaje_Aereo_Bus_Barco varchar(45),
    Codigo int,
    AlojamientosCodigo int,
    Forma_de_pagoCodigo int,
    primary key(Codigo),
    foreign key(AlojamientosCodigo) references Alojamiento(Codigo),
    foreign key(Forma_de_pagoCodigo) references Forma_de_pago(Codigo)
    on update cascade
    on delete restrict
);
 
create table Reservas (
    Fecha_de_inicio date,
    Fecha_de_fin date,
    Cantidad_de_personas int,
    Paquetes_de_viajesCodigo int,
    ClientesCodigo int,
    foreign key(Paquetes_de_viajesCodigo) references Paquetes_de_viajes(Codigo),
    foreign key(ClientesCodigo) references Clientes(Codigo)
    on update cascade
    on delete restrict
);


#1
select min(Cantidad_de_dias) from Paquetes_de_viajes;

#2
select max(Cantidad_de_dias) from Paquetes_de_viajes;

#3
select avg(Costo) from Paquetes_de_viajes where Cantidad_de_dias > 3;

#4
select sum(Cantidad_de_personas) from Reservas where Fecha_de_inicio like "2024-07%";

#5
select distinct(Lugar) from Paquetes_de_viajes;

#6
select sum(Cantidad_de_excursiones) from Paquetes_de_viajes where Lugar = "Bariloche";

#7
select count(*) from Reservas where Paquetes_de_viajesCodigo = 1;

#8
select count(*) from Reservas where Paquetes_de_viajesCodigo is not null;

#9
update Paquetes_de_viajes set Costo = Costo * 1.1;

#10
select count(*) from Paquetes_de_viajes group by AlojamientosCodigo;

#11
update Paquetes_de_viajes set Cantidad_de_dias = Cantidad_de_dias + 2, Cantidad_de_noches = Cantidad_de_noches + 2 where Lugar = "Salta";

#12
select sum(Costo) from Paquetes_de_viajes group by Lugar;

#13
select Alojamiento_Codigo, count(*) from Paquetes_ViajeTP group by Alojamiento_Codigo having count(AlojamientosCodigo)>3;

#14
select Lugar from Paquetes_de_viajes group by Lugar having sum(Lugar) > 100000;

#15
select Lugar from Paquetes_de_viajes group by Lugar having avg(Lugar) > 25000;

#16
select avg(Cantidad_de_Personas), Paquetes_de_viajesCodigo from Reservas group by Paquetes_de_viajesCodigo;

#17
select max(costo) from Paquetes_de_viajes group by lugar;

#18
select ClientesCodigo, count(ClientesCodigo) from Reservas group by ClientesCodigo;

#19
select Lugar, count(Lugar) from Alojamiento join Paquetes_de_viajes on Alojamiento.Codigo=AlojamientosCodigo group by Lugar, Cantidad_de_dias order by Lugar, Cantidad_de_dias;

#20
select Lugar, min(Costo) from Alojamiento join Paquetes_de_viajes on Alojamiento.Codigo=AlojamientosCodigo group by Lugar having min(Costo);
