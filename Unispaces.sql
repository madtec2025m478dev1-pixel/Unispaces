create database unispaces_db;

create table usuario(
id_usuario int identity  (1,1) primary key,
nombre varchar (100),
correo varchar (100) unique,
password varchar (255),
rol varchar (20)
);




create table salon (
id_salon int identity (1,1) primary key,
nombre_salon varchar (50),
edificio varchar (50),
capacidad int,
estado_actual varchar (20),
tiempo_restante varchar (50),
);




create table reserva (
id_reserva int identity (1,1) primary key,
id_usuario int,
id_salon int,
carrera varchar (100),
matricula varchar (20),
grupo varchar (20),
maestro_responsable varchar (100),
motivo_reserva varchar (100),
explicacion_extra text,
tiempo_solicitado varchar (50),
estado_aprobacion VARCHAR(20) DEFAULT 'Pendiente',

constraint  Fk_reservas_usuario foreign key (id_usuario)
references usuario (id_usuario),


constraint Fk_reservas_salones foreign key (id_salon)
references salon (id_salon)

);



select * from reserva;



