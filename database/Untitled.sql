CREATE TABLE [medicos] (
  [cedula] varchar(50) PRIMARY KEY,
  [nombres] varchar(50),
  [apellidos] varchar(50),
  [especialidad] varchar(50),
  [consultorio] char(3),
  [correo] varchar(50),
  [telefono] varchar(50)
)
GO

CREATE TABLE [pacientes] (
  [cedula] varchar(50) PRIMARY KEY,
  [nombres] varchar(50),
  [apellidos] varchar(50),
  [fecha_nacimiento] date,
  [telefono] varchar(60)
)
GO

CREATE TABLE [cita_medica] (
  [id] int PRIMARY KEY IDENTITY(1, 1),
  [cedula_medico] int(50),
  [cedula_paciente] int(50),
  [fecha_cita] date
)
GO

ALTER TABLE [cita_medica] ADD FOREIGN KEY ([cedula_medico]) REFERENCES [medicos] ([cedula])
GO

ALTER TABLE [cita_medica] ADD FOREIGN KEY ([cedula_paciente]) REFERENCES [pacientes] ([cedula])
GO
