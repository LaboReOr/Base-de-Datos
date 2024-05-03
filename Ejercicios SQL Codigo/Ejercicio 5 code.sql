insert into Paciente values
	(1, "Nombre1", "Apellido1", "Calle1 123", "CABA", "Buenos aires", "1041", 1122223333, "1992-6-25"),
	(2, "Nombre2", "Apellido2", "Calle2 234", "Cordoba", "Cordoba", "2144", 1133334444, "1978-1-5"),
	(3, "Nombre3", "Apellido3", "Calle3 345", "Mendoza" ,"Mendoza", "8915", 1144445555, "2012-10-11"),
	(4, "Nombre4", "Apellido4", "Calle4 456", "Rosario", "Santa Fe", "5639", 1155556666, "1986-8-19");

insert into Medico values 
	(1, "Jorgito", "Muñoz", 1166667777, "Traumatologo"),
	(2, "Andres", "Rauschgift", 1177778888, "Especialidad2"),
	(3, "Andreo", "Pepe", 1188889999, "Especialidad3"),
	(5, "Pepe", "Sand", 1199990000, "Traumatologo");

insert into Ingresos values 
	(1, 1, 1, "2021-3-6", 1, 3),
	(2, 2, 2, "2015-9-22", 3, 5),
	(3, 3, 3, "2019-6-30", 4, 2),
	(4, 4, 4, "2010-11-14", 2, 1);

#A)
select Nombre from Medico where Especialidad = "Traumatologo" order by apellido;


#B)
delete from Ingresos where Fecha < "2018-5-3";


#C)
select Cama from Ingresos where Paciente_Codigo = 1;


#D)
update Medico set Especialidad = "Pediatra" where Codigo = 5;


#E)
select Nombre, Codigo from Medico where Nombre like "a%";

select * from Paciente;
select * from Medico;
select * from Ingresos;