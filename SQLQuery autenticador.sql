use practicaSqlserver;


CREATE TABLE usuarios (
                          id_usuario BIGINT PRIMARY KEY IDENTITY(1,1),
                          correo_usuario VARCHAR(255) UNIQUE NOT NULL,
                          password_hash VARCHAR(255) NOT NULL,
                          nombre_usuario VARCHAR(50) NOT NULL,
                          numero_usuario VARCHAR(20) NULL,
                          created_at DATETIME DEFAULT GETDATE(),
                          updated_at DATETIME DEFAULT GETDATE()
);

INSERT INTO usuarios (correo_usuario, password_hash, nombre_usuario, numero_usuario)
VALUES
    ('da@gmail.com','12345','Daniel Dieguez', '58564601'),
    ('juan.perez@email.com', '1234', 'Juan Perez', '5551234567'),
    ('maria.gomez@email.com', '0000', 'Maria Gomez', '5552345678'),
    ('carlos.rodriguez@email.com', '1111', 'Carlos Rodriguez', '5553456789'),
    ('ana.lopez@email.com', '2222', 'Ana Lopez', '5554567890'),
    ('pedro.martinez@email.com', '3333', 'Pedro Martinez', '5555678901'),
    ('laura.fernandez@email.com', '4444', 'Laura Fernandez', '5556789012'),
    ('diego.torres@email.com', '5555', 'Diego Torres', '5557890123'),
    ('sandra.morales@email.com', '6666', 'Sandra Morales', '5558901234'),
    ('roberto.hernandez@email.com', '7777', 'Roberto Hernandez', '5559012345'),
    ('carla.sanchez@email.com', '8888', 'Carla Sanchez', '5550123456');


-- Trigger para actualizar `updated_at` automáticamente cuando se modifique un usuario
CREATE TRIGGER trg_Usuarios_Update
    ON usuarios
    AFTER UPDATE
    AS
BEGIN
    SET NOCOUNT ON;
    UPDATE usuarios
    SET updated_at = GETDATE()
    FROM inserted
    WHERE usuarios.id_usuario = inserted.id_usuario;
END;

