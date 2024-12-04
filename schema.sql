-- Tabla Rol
CREATE TABLE Rol (
    id_rol INT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL
);

-- Tabla Table (renombrada a "Personal" por claridad)
CREATE TABLE Personal (
    Codigo VARCHAR(20) PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    apellido VARCHAR(50) NOT NULL,
    info_licencia TEXT,
    años_exp VARCHAR(20),
    identificacion INT NOT NULL,
    id_rol INT NOT NULL,
    FOREIGN KEY (id_rol) REFERENCES Rol(id_rol)
);

-- Tabla TipoVehiculo
CREATE TABLE TipoVehiculo (
    id_tipo_vehiculo INT PRIMARY KEY,
    tipo VARCHAR(50) NOT NULL
);

-- Tabla Vehiculo
CREATE TABLE Vehiculo (
    id_vehiculo INT PRIMARY KEY,
    modelo VARCHAR(50) NOT NULL,
    estado BOOLEAN NOT NULL,
    capacidad_pasajeros INT NOT NULL,
    fecha_compra DATE NOT NULL,
    numero_bus INT NOT NULL,
    id_tipo_vehiculo INT NOT NULL,
    FOREIGN KEY (id_tipo_vehiculo) REFERENCES TipoVehiculo(id_tipo_vehiculo)
);

-- Tabla Estacion
CREATE TABLE Estacion (
    id_estacion INT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    ubicacion_latitud VARCHAR(100),
    ubicacion_longitud VARCHAR(100),
    cap_max INT NOT NULL
);

-- Tabla Ruta
CREATE TABLE Ruta (
    id_ruta INT PRIMARY KEY,
    tiem_recorrido TIME NOT NULL,
    nombre VARCHAR(50) NOT NULL,
    id_estacion INT NOT NULL,
    FOREIGN KEY (id_estacion) REFERENCES Estacion(id_estacion)
);

-- Tabla Viaje
CREATE TABLE Viaje (
    id_viaje INT PRIMARY KEY,
    fecha_hora TIMESTAMP NOT NULL,
    id_vehiculo INT NOT NULL,
    id_ruta INT NOT NULL,
    FOREIGN KEY (id_vehiculo) REFERENCES Vehiculo(id_vehiculo),
    FOREIGN KEY (id_ruta) REFERENCES Ruta(id_ruta)
);

-- Tabla Visita
CREATE TABLE Visita (
    id_visita INT PRIMARY KEY,
    descripcion TEXT,
    Fecha DATE NOT NULL,
    id_bus INT NOT NULL,
    id_estacion INT NOT NULL,
    id_personal INT NOT NULL,
    FOREIGN KEY (id_bus) REFERENCES Vehiculo(id_vehiculo),
    FOREIGN KEY (id_estacion) REFERENCES Estacion(id_estacion),
    FOREIGN KEY (id_personal) REFERENCES Personal(Codigo)
);

-- Tabla BusRuta
CREATE TABLE BusRuta (
    id_bus INT NOT NULL,
    id_ruta INT NOT NULL,
    PRIMARY KEY (id_bus, id_ruta),
    FOREIGN KEY (id_bus) REFERENCES Vehiculo(id_vehiculo),
    FOREIGN KEY (id_ruta) REFERENCES Ruta(id_ruta)
);

