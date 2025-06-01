CREATE Database DbTodoApp;

USE DbTodoApp;
GO

-- Tabla: Usuarios
CREATE TABLE Usuarios (
    ID INT PRIMARY KEY IDENTITY(1,1),
    nombreUsuario NVARCHAR(100) NOT NULL,
    contrasenaHash NVARCHAR(255) NOT NULL,
    correo NVARCHAR(150) NOT NULL UNIQUE,
    fechaCreacion DATETIME NOT NULL DEFAULT GETDATE()
);

-- Tabla: Categorías
CREATE TABLE Categorias (
    ID INT PRIMARY KEY IDENTITY(1,1),
    nombre NVARCHAR(100) NOT NULL,
    descripcion NVARCHAR(255),
    fechaCreacion DATETIME NOT NULL DEFAULT GETDATE()
);

-- Tabla: Estados
CREATE TABLE Estados (
    ID INT PRIMARY KEY IDENTITY(1,1),
    nombreEstado NVARCHAR(50) NOT NULL
);

-- Insertar estados fijos
INSERT INTO Estados (nombreEstado) VALUES 
('Pendiente'), 
('En Progreso'), 
('Completada');

-- Tabla: Tareas
CREATE TABLE Tareas (
    ID INT PRIMARY KEY IDENTITY(1,1),
    titulo NVARCHAR(150) NOT NULL,
    descripcion NVARCHAR(500),
    categoriaId INT,
    usuarioId INT,
    estadoId INT,
    fechaCreacion DATETIME NOT NULL DEFAULT GETDATE(),
    fechaVencimiento DATETIME,

    -- Relación solo con Usuarios
    CONSTRAINT FK_Tareas_Usuarios FOREIGN KEY (usuarioId) REFERENCES Usuarios(ID)
);
