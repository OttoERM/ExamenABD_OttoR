--use master

--create database Mercadito
--use Mercadito

--create table Proveedores(
--	Id int not null,
--	Empresa varchar(15),
--	Nombre varchar(15),
--	Apellido varchar(15),
--	Telefono varchar(15)
--	Primary key(Id)
--)

--create table TipoTransacciones(
--	Id int not null,
--	TipoTrans varchar(20),
--	Primary Key(Id)
--)

--create table Empleados(
--	Id int not null,
--	Nombre varchar(15),
--	Apellido varchar(15),
--	Telefono varchar(15),
--	Primary key(Id)
--)

--create table Caja(
--	IdTransaccion int Identity(1,1),
--	CodigoTrans int not null,
--	Fecha date,
--	Hora time,
--	EfectuadoPor int,
--	Primary Key(IdTransaccion),
--	Foreign Key(EfectuadoPor) references Empleados(Id)
--)

--Create table Productos(
--	Id int not null,
--	Nombre varchar(30), 
--	Disponibilidad int,
--	PrecioUni decimal,
--	Primary key(Id)
--)

--Create table Ordenes(
--	Id int Identity(1,1),
--	CodigoTrans int not null,
--	Proveedor int,
--	Producto int,
--	Cantidad int,
--	CostoUni decimal,
--	Facturado char,
--	FechaEntrega date,
--	Primary key(Id),
--	Foreign key(CodigoTrans) references Caja(IdTransaccion),
--	Foreign key(Proveedor) references Proveedores(Id),
--	Foreign key(Producto) references Productos(Id)
--)

--create table Compras(
--	Id int Identity(1,1),
--	CodigoTrans int not null,
--	Proveedor int,
--	Producto int,
--	Cantidad int,
--	CostoUni decimal,
--	Primary key(Id),
--	Foreign key(CodigoTrans) references Caja(IdTransaccion),
--	Foreign key(Proveedor) references Proveedores(Id),
--	Foreign key(Producto) references Productos(Id),
--)

--Create table Pagos(
--	Id int Identity(1,1),
--	CodigoTrans int not null,
--	Costo decimal,
--	Primary Key(Id),
--	Foreign Key(CodigoTrans) references Caja(IdTransaccion)
--)

--Create table Casa(
--	Id int Identity(1,1),
--	Producto int not null,
--	Cantidad int,
--	Fecha date
--	Primary key(Id),
--	Foreign key(Producto) references Productos(Id)
--)

--Create table Ventas(
--	Id int Identity(1,1),
--	CodigoTrans int not null,
--	Producto int,
--	Cantidad int,
--	Primary key(Id),
--	Foreign key(CodigoTrans) references Caja(IdTransaccion),
--	Foreign key(Producto) references Productos(Id)
--)

--Create table cuentaCliente(
--	Id int not null,
--	Nombre varchar(15),
--	Apellido varchar(15),
--	Telefono varchar(15),
--	Primary key(Id)
--)

--Create table RegistroCredito(
--	Id int Identity(1,1),
--	CodigoTrans int not null,
--	Cliente int not null,
--	Producto int,
--	Cantidad int
--	Primary Key(Id),
--	Foreign key(CodigoTrans) references Caja(IdTransaccion),
--	Foreign key(Cliente) references cuentaCliente(Id),
--	Foreign key(Producto) references Productos(Id),
--)

--Create table Abonos(
--	Id int Identity(1,1),
--	CodigoTrans int not null,
--	Cliente int not null,
--	Abono decimal,
--	Primary key(Id),
--	Foreign key(CodigoTrans) references Caja(IdTransaccion),
--	Foreign key(Cliente) references cuentaCliente(Id)
--)

--Insert into Proveedores values
--(101, 'Sula', 'Pedro', 'Alberto', '5556-7778'),
--(102, 'Leyde', 'Maria', 'LaKalputa', '7778-9991'),
--(103, 'Naturas', 'Juan', 'Carlos', '1112-2223'),
--(104, 'LaHuerta', 'Carlos', 'Pineda', '3334-4445'),
--(105, 'Cominolas', 'Roberto', 'Culoabierto', '5642-8978');

--Insert into TipoTransacciones values
--(1, 'Ordenes'), (2, 'Compras'), (3, 'Ventas'), (4, 'Credito'), (5, 'Abono'),
--(6, 'PagoTelefono'), (7, 'PagoAgua'), (8, 'PagoEnergia'), (9, 'ImptoAlcaldia');

--Insert into Empleados values
--(1, 'Jose', 'Armando', '8686-9898'),
--(2, 'Alam', 'Brito', '1212-2356'),
--(3, 'Jorge', 'Nitales', '6543-3219');

--Insert into Caja values
--(1, '2023-01-01', '13:05:02', 2),
--(2, '2023-01-05', '15:15:04', 2),
--(1, '2023-01-11', '08:24:12', 3),
--(2, '2023-01-12', '10:11:26', 1),
--(3, '2023-01-12', '13:26:46', 3),
--(5, '2023-01-16', '14:14:28', 2),
--(1, '2023-01-24', '18:54:02', 3),
--(4, '2023-01-25', '09:10:54', 1),
--(1, '2023-01-26', '10:15:15', 2),
--(2, '2023-01-31', '11:56:56', 2),
--(1, '2023-01-31', '12:45:14', 1),
--(2, '2023-02-02', '13:26:37', 1),
--(2, '2023-02-04', '14:31:30', 3),
--(3, '2023-02-04', '17:51:08', 2),
--(3, '2023-02-08', '11:05:29', 3),
--(5, '2023-02-09', '16:15:23', 2),
--(4, '2023-02-11', '14:02:12', 1),
--(3, '2023-02-11', '08:54:22', 2),
--(3, '2023-02-13', '13:55:07', 1),
--(5, '2023-02-16', '16:16:16', 3),
--(4, '2023-02-16', '13:25:48', 2),
--(4, '2023-02-18', '10:58:01', 1),
--(8, '2023-02-18', '15:19:06', 3);

--Insert into cuentaCliente values
--(1023, 'Pedro', 'Matute', '5656-6565'),
--(1024, 'Jose', 'Mejia', '8989-9898'),
--(1025, 'Carlos', 'Alberto', '1212-2512');

--Insert into Productos values
--(1056, 'MantequillaSula', 7, 42.2),
--(2456, 'JugoNaturas', 23, 40),
--(3546, 'QuesoCremaSula', 18, 52.66),
--(1985, 'Zanahorias', 13, 18.89),
--(2356, 'ChocolateDark', 15, 86.99),
--(7766, 'HeladoChispas', 13, 123.15),
--(5646, 'QuesoParmesano', 22, 35.75),
--(3232, 'QuesoSeco', 23, 28.48),
--(9864, 'JugoNaranja', 19, 38.95),
--(1026, 'QuesoPicante', 8, 35);

--Insert into Ordenes values
--(1, 101, 1056, 15, 36.78, 'S', '2023-01-15'),
--(3, 103, 2456, 20, 35, 'S', '2023-01-21'),
--(7, 101, 3546, 10, 42.5, 'S', '2023-02-01'),
--(9, 104, 2356, 25, 8, 'N', '2023-02-23'),
--(5, 105, 3232, 10, 70, 'N', '2023-02-19');

--Insert into Compras values
--(2, 101, 3546, 10, 88),
--(4, 101, 7766, 15, 27.56),
--(10, 102, 2356, 10, 22.34),
--(12, 103, 3232, 10, 33),
--(13, 102, 2456, 15, 29.99);

--Insert into Casa values
--(2456, 5, '2023-01-15'),
--(7766, 7, '2023-01-22'),
--(9864, 9, '2023-01-31'),
--(2456, 5, '2023-02-08'),
--(1985, 10, '2023-02-10');

--Insert into Ventas values
--(5, 2456, 4),
--(14, 3546, 3),
--(15, 2356, 4),
--(18, 2356, 8),
--(19, 9864, 2);

--Insert into RegistroCredito values
--(8, 1023, 3232, 2),
--(17, 1024, 1026, 3),
--(21, 1023, 2456, 1),
--(22, 1023, 2356, 3);

--Insert into Abonos values
--(6, 1024, 50),
--(16, 1023, 200),
--(20, 1023, 100);

--Insert into Pagos values(23, 240)

--Select * from Proveedores;
--Select * from Ordenes;
--Select * from Compras;
--Select * from TipoTransacciones;
--Select * from Casa;
--Select * from Productos;
--Select * from Caja;
--Select * from Ventas;
--Select * from RegistroCredito;
--Select * from Abonos;
--Select * from CuentaCliente;
--Select * from Empleados;
--Select * from Pagos;