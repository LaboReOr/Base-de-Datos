insert into Camion values
	(1, "Camion generico 1", "Tipo 1", "Muy potente"),
	(2, "Camion generico 2", "Tipo 2", "Medianamente potente"),
	(3, "Camion generico 3", "Tipo 3", "Poco potente");

insert into Camioneros values
	(11111111, "Pepito1", 911222222, "Calle 1", "Ciudad 1", 552400),
	(11111112, "Pepito2", 911333333, "Calle 2", "Ciudad 2", 503100),
	(11111113, "Pepito3", 911444444, "Calle 3", "Ciudad 3", 614600);
    
insert into Camioneros_has_Camion values
	(11111111, 2, "1999-12-30"),
	(11111112, 1, "2003-4-26"),
	(11111113, 3, "1989-8-11");

insert into Paquetes values
	(1, "Desc Paquete 1", "Desc Persona 1", 11111112, 1),
	(2, "Desc Paquete 2", "Desc Persona 2", 11111113, 3),
	(3, "Desc Paquete 3", "Desc Persona 3", 11111111, 2),
	(104, "Desc Paquete 4", "Desc Persona 4", 11111112, 2),
	(105, "Desc Paquete 5", "Desc Persona 5", 11111113, 3);

insert into Provincias values
	(1, "Buenos aires"),
	(2, "Cordoba"),
	(3, "Mendoza");

#Ejercicio 1:
select Camioneros_DNI from Camioneros_has_Camion where Camion_Matricula = 1 and Fecha = "2003-4-26";

#Ejercicio 2:
select Nombre from Provincias;

#Ejercicio 3:
update Camioneros set Salario = Salario + ((Salario*10)/100);
select Salario from Camioneros;

#Ejercicio 4:
select Codigo, Descripcion, Camioneros_DNI from Paquetes;

#Ejercicio 5:
delete from Paquetes where Codigo < 100;



select * from Camion;
select * from Camioneros;
select * from Camioneros_has_Camion;
select * from Paquetes;
select * from Provincias;