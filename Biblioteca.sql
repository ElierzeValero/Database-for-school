create database Biblioteca;
use biblioteca;

/*---Creacion de las tablas---*/

create table libro(
CodLibro VARCHAR(6) NOT NULL,
Titulo  CHAR(30) NOT NULL,
Autor CHAR(30),
Año CHAR (4),
Edicion CHAR(20),
Editorial CHAR(20),
Localizacion CHAR(10)
);

create table prestatario(
CodPrestatario VARCHAR(6) NOT NULL,
Nombre  CHAR(20),
Apellido CHAR(20),
Rut VARCHAR(9),
Direccion CHAR(50),
Curso VARCHAR(5),
FechaCreacion DATETIME NOT NULL
);

create table prestamo(
CodPrestamo INT NOT NULL,
CodLibro VARCHAR(6) NOT NULL,
CodUsuario VARCHAR(6) NOT NULL,
CodPrestatario VARCHAR(6) NOT NULL,
FechaPrestamo DATETIME NOT NULL,
FechaEntrega DATETIME 
);


create table usuario(
CodUsuario VARCHAR(6) NOT NULL,
Nombre  CHAR(20) NOT NULL,
Apellido CHAR(20) NOT NULL,
Rut VARCHAR(9) NOT NULL,
Contraseña VARCHAR(10) NOT NULL,
FechaCreacion DATETIME NOT NULL,
NivelUsuario VARCHAR(5)
);

create table stock_libros(
CodStock VARCHAR(6) NOT NULL,
CodLibro VARCHAR(6) NOT NULL,
Stock int NOT NULL
);

create table auditoria(
CodAuditoria VARCHAR(5) NOT NULL,
NomAuditor CHAR(40) NOT NULL,
FechaAuditoria date NOT NULL
);

/*---Asignacion de PK---*/

alter table libro add primary key (CodLibro);
alter table prestamo add primary key (CodPrestamo);
alter table prestatario add primary key (CodPrestatario);
alter table usuario add primary key (CodUsuario);
alter table stock_libros add primary key (CodStock);
alter table auditoria add primary key (CodAuditoria);

/*---Asignación de FK---*/

alter table prestamo add foreign key (CodLibro) references libro(CodLibro);
alter table prestamo add foreign key (CodUsuario) references usuario(CodUsuario);
alter table prestamo add foreign key (CodPrestatario) references prestatario(CodPrestatario);
alter table stock_libros add foreign key (CodLibro) references libro(CodLibro);







