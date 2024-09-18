CREATE TABLE Clientes (
	id_cliente INT IDENTITY(1,1) PRIMARY KEY,
    ruc CHAR(11) UNIQUE,
    razon_social VARCHAR(200),
    direccion VARCHAR(255),
    telefono VARCHAR(20),
    correo_electronico VARCHAR(100),
    tipo_empresa VARCHAR(50),
    actividad_economica VARCHAR(100)
);

CREATE TABLE Contactos (
    id_contacto INT IDENTITY(1,1) PRIMARY KEY,
    nombre VARCHAR(100),
    cargo VARCHAR(100),
    telefono VARCHAR(20),
    correo_electronico VARCHAR(100),
    id_cliente INT FOREIGN KEY REFERENCES Clientes(id_cliente)
);

CREATE TABLE Proyectos (
    id_proyecto INT IDENTITY(1,1) PRIMARY KEY,
    nombre VARCHAR(100),
    descripcion TEXT,
    fecha_inicio DATETIME,
    fecha_fin DATETIME,
	estado SMALLINT,
    id_cliente INT FOREIGN KEY REFERENCES Clientes(id_cliente)
);

CREATE TABLE Facturas (
    id_factura INT IDENTITY(1,1) PRIMARY KEY,
	numero_factura VARCHAR(20) UNIQUE,
    fecha_emision DATETIME,
    fecha_vencimiento DATETIME,
    monto_total DECIMAL(10,2),
    estado_pago SMALLINT,
    id_cliente INT FOREIGN KEY REFERENCES Clientes(id_cliente)
);

CREATE TABLE Pagos (
    id_pago INT IDENTITY(1,1) PRIMARY KEY,
    fecha_pago DATE,
    monto_pagado DECIMAL(10,2),
    metodo_pago SMALLINT,
    id_factura INT FOREIGN KEY REFERENCES Facturas(id_factura)
);

CREATE TABLE Requerimientos (
    id_requerimiento INT IDENTITY(1,1) PRIMARY KEY,
    nombre VARCHAR(100),
    descripcion TEXT,
    fecha_solicitud DATETIME,
    fecha_entrega DATETIME,
	estado SMALLINT,
	id_proyecto INT FOREIGN KEY REFERENCES Proyectos(id_proyecto)
);