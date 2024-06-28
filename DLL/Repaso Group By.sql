create database EjerciciosGroupBy;
use EjerciciosGroupBy;

create table Alumno(
	DNI int,
    Nombre varchar(45),
    Apellido varchar(45),
    Telefono int,
	Direccion varchar(45),
    AñoIngreso int,
    
    primary key(DNI)
);

create table Profesor(
	DNI int,
    Nombre varchar(45),
    Apellido varchar(45),
    Telefono int,
    Direccion varchar(45),
	AnioIngreso int,
    
    primary key(DNI)
);

create table Falta(
	Codigo int,
    Justificada tinyint,
    Fecha date,
    AlumnoDNI int,
    
	primary key(Codigo),
    foreign key(AlumnoDNI) references Alumno(DNI)
    
    on update cascade
    on delete restrict
);

create table Materia(
	Codigo int,
    Nombre varchar(45),
    CantHorasSemanales int,	
    ProfesorDNI int,
    
    primary key(Codigo),
    foreign key(ProfesorDNI) references Profesor(DNI)

	on update cascade
    on delete restrict
);

create table Cursa(
	Trimestre1 int,
    Trimestre2 int,
    Trimestre3 int,
    CantFaltas int,
    Anio int,
    AlumnoDNI int,
    MateriaCodigo int,
    
    check(CantFaltas > 0),
    

    foreign key(AlumnoDNI) references Alumno(DNI),
    foreign key(MateriaCodigo) references Materia(Codigo)
	
    on update cascade
    on delete restrict
);



#2:
alter table Cursa add check(CantFaltas > 0);

#3:
select count(*) from Cursa join Materia on Materia.Codigo = MateriaCodigo where Trimestre1 > 6 and Trimestre2 > 6 and Trimestre3 > 6 and Anio = 2024 and Materia.Nombre = "Matemarica 1";

#4:
select Alumno.Nombre, Alumno.DNI from Alumno join Cursa on Alumno.DNI=AlumnoDNI join Materia on Materia.Codigo=MateriaCodigo where Trimestre1 >= 6 and Trimestre2 >= 6 and Trimestre3 >= 6 group by Alumno.DNI having count(*) > 12;

#5:
select count(*) from Profesor group by AnioIngreso;

#6:
select max(Trimestre3)from Cursa join Materia on Materia.Codigo = MateriaCodigo where Nombre = "Base de Datos";

#7:
select count(*) from Cursa where CantFaltas = 0;