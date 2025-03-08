USE clinica;

DROP TABLE IF EXISTS especialista, paciente, cita;

CREATE TABLE especialista (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100),
    especialidad VARCHAR(100)
);

CREATE TABLE paciente (
    id INT AUTO_INCREMENT PRIMARY KEY,
    rut VARCHAR(100),
    nombre VARCHAR(100),
    edad INT
);

CREATE TABLE cita (
    id INT AUTO_INCREMENT PRIMARY KEY,
    paciente_id INT,
    especialista_id INT,
    fecha DATETIME,
    FOREIGN KEY (paciente_id) REFERENCES paciente(id),
    FOREIGN KEY (especialista_id) REFERENCES especialista(id)
);


