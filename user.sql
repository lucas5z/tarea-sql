CREATE TABLE Docente (
    id INT PRIMARY KEY AUTO_INCREMENT,
    #_DNI VARCHAR(14) NOT NULL,
    Nombre VARCHAR(255) NOT NULL,
    Apellido VARCHAR(255) NOT NULL,
    Fecha_De_Nacimiento DATE NOT NULL,
    Genero CHAR(1) NOT NULL,
    Correo_personal VARCHAR(255) NULL,
    Correo_institucional VARCHAR(255) NOT NULL,
    Sueldo_Promedio VARCHAR(255) NOT NULL,
    años_de_experiencia VARCHAR(255) NOT NULL,
    Calificacion VARCHAR(255) NOT NULL,
    Profesion VARCHAR(255) NOT NULL,
    Asignaturas_Que_Dicta VARCHAR(255) NOT NULL,
    Descripcion_Profesion VARCHAR(255) NULL,
    abreviatura_Profesion VARCHAR(255) NULL,

    UNIQUE(#_DNI),
    UNIQUE(Correo_personal),
    UNIQUE(Correo_institucional)
);

CREATE TABLE Asignatura (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    Codigo VARCHAR(7) NOT NULL,
    Nombre VARCHAR(255) NOT NULL,
    Descripcion VARCHAR(255) NULL,
    Abreviatura VARCHAR(255) NULL,

    UNIQUE(Codigo)
);

CREATE TABLE enseñanza (
    dodente_id INT UNSIGNED NOT NULL,
    asignatura_id INT UNSIGNED NOT NULL,

    PRIMARY KEY(docente_id,asignatura_id),

    FOREIGN KEY (docente_id) REFERENCES Docente(id)
        ON UPDATE CASCADE
        ON DELETE RESTRICT,
    
    FOREIGN KEY (asignarura_id) REFERENCES Asignatura(id)
        ON UPDATE CASCADE
        ON DELETE RESTRICT
);


