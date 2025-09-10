CREATE TABLE IF NOT EXISTS clientes (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100),
    ciudad VARCHAR(100),
    fecha_registro DATE
);

CREATE TABLE IF NOT EXISTS productos (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100),
    categoria VARCHAR(50),
    precio DECIMAL(10,2)
);

CREATE TABLE IF NOT EXISTS ventas (
    id SERIAL PRIMARY KEY,
    cliente_id INT REFERENCES clientes(id),
    producto_id INT REFERENCES productos(id),
    cantidad INT,
    fecha DATE
);

-- Insertar clientes

INSERT INTO clientes (nombre, ciudad, fecha_registro) VALUES ('Carlos Pérez', 'Lima', '2024-01-15');

INSERT INTO clientes (nombre, ciudad, fecha_registro) VALUES ('Ana Torres', 'Cusco', '2024-02-10');

INSERT INTO clientes (nombre, ciudad, fecha_registro) VALUES ('Luis Ramírez', 'Arequipa', '2024-03-05');

INSERT INTO clientes (nombre, ciudad, fecha_registro) VALUES ('María Gómez', 'Trujillo', '2024-01-20');

INSERT INTO clientes (nombre, ciudad, fecha_registro) VALUES ('Jorge Díaz', 'Piura', '2024-02-25');

INSERT INTO clientes (nombre, ciudad, fecha_registro) VALUES ('Patricia Ríos', 'Chiclayo', '2024-03-12');

INSERT INTO clientes (nombre, ciudad, fecha_registro) VALUES ('Ricardo León', 'Iquitos', '2024-01-30');

INSERT INTO clientes (nombre, ciudad, fecha_registro) VALUES ('Sofía Vargas', 'Tacna', '2024-02-18');

INSERT INTO clientes (nombre, ciudad, fecha_registro) VALUES ('Valeria Suárez', 'Puno', '2024-03-08');

INSERT INTO clientes (nombre, ciudad, fecha_registro) VALUES ('Diego Castro', 'Huancayo', '2024-01-28');


-- Insertar productos

INSERT INTO productos (nombre, categoria, precio) VALUES ('Laptop Pro 15', 'Tecnología', 3500.0);

INSERT INTO productos (nombre, categoria, precio) VALUES ('Mouse Inalámbrico', 'Accesorios', 80.0);

INSERT INTO productos (nombre, categoria, precio) VALUES ('Silla Ergonómica', 'Oficina', 750.0);

INSERT INTO productos (nombre, categoria, precio) VALUES ('Teclado Mecánico', 'Accesorios', 150.0);

INSERT INTO productos (nombre, categoria, precio) VALUES ('Monitor 27"', 'Tecnología', 1200.0);

INSERT INTO productos (nombre, categoria, precio) VALUES ('Impresora Multifunción', 'Oficina', 900.0);

INSERT INTO productos (nombre, categoria, precio) VALUES ('Auriculares Pro', 'Accesorios', 220.0);

INSERT INTO productos (nombre, categoria, precio) VALUES ('Dock USB-C', 'Accesorios', 380.0);


-- Insertar ventas

INSERT INTO ventas (cliente_id, producto_id, cantidad, fecha) VALUES (1, 4, 1, '2024-04-09');

INSERT INTO ventas (cliente_id, producto_id, cantidad, fecha) VALUES (3, 8, 1, '2024-04-13');

INSERT INTO ventas (cliente_id, producto_id, cantidad, fecha) VALUES (2, 4, 2, '2024-04-17');

INSERT INTO ventas (cliente_id, producto_id, cantidad, fecha) VALUES (6, 4, 6, '2024-04-18');

INSERT INTO ventas (cliente_id, producto_id, cantidad, fecha) VALUES (4, 4, 1, '2024-04-19');

INSERT INTO ventas (cliente_id, producto_id, cantidad, fecha) VALUES (9, 2, 4, '2024-04-21');

INSERT INTO ventas (cliente_id, producto_id, cantidad, fecha) VALUES (1, 4, 3, '2024-04-21');

INSERT INTO ventas (cliente_id, producto_id, cantidad, fecha) VALUES (4, 6, 1, '2024-04-24');

INSERT INTO ventas (cliente_id, producto_id, cantidad, fecha) VALUES (7, 4, 1, '2024-04-25');

INSERT INTO ventas (cliente_id, producto_id, cantidad, fecha) VALUES (2, 8, 5, '2024-04-26');

INSERT INTO ventas (cliente_id, producto_id, cantidad, fecha) VALUES (4, 4, 2, '2024-04-27');

INSERT INTO ventas (cliente_id, producto_id, cantidad, fecha) VALUES (9, 3, 5, '2024-04-28');

INSERT INTO ventas (cliente_id, producto_id, cantidad, fecha) VALUES (9, 1, 6, '2024-04-30');

INSERT INTO ventas (cliente_id, producto_id, cantidad, fecha) VALUES (2, 4, 4, '2024-05-01');

INSERT INTO ventas (cliente_id, producto_id, cantidad, fecha) VALUES (7, 6, 3, '2024-05-10');

INSERT INTO ventas (cliente_id, producto_id, cantidad, fecha) VALUES (10, 5, 1, '2024-05-11');

INSERT INTO ventas (cliente_id, producto_id, cantidad, fecha) VALUES (2, 3, 6, '2024-05-11');

INSERT INTO ventas (cliente_id, producto_id, cantidad, fecha) VALUES (2, 5, 4, '2024-05-11');

INSERT INTO ventas (cliente_id, producto_id, cantidad, fecha) VALUES (4, 7, 1, '2024-05-13');

INSERT INTO ventas (cliente_id, producto_id, cantidad, fecha) VALUES (2, 4, 2, '2024-05-19');

INSERT INTO ventas (cliente_id, producto_id, cantidad, fecha) VALUES (9, 8, 2, '2024-05-19');

INSERT INTO ventas (cliente_id, producto_id, cantidad, fecha) VALUES (4, 1, 5, '2024-05-21');

INSERT INTO ventas (cliente_id, producto_id, cantidad, fecha) VALUES (10, 6, 3, '2024-05-23');

INSERT INTO ventas (cliente_id, producto_id, cantidad, fecha) VALUES (7, 5, 1, '2024-05-25');

INSERT INTO ventas (cliente_id, producto_id, cantidad, fecha) VALUES (1, 1, 1, '2024-05-26');

INSERT INTO ventas (cliente_id, producto_id, cantidad, fecha) VALUES (7, 7, 3, '2024-05-27');

INSERT INTO ventas (cliente_id, producto_id, cantidad, fecha) VALUES (6, 2, 5, '2024-05-31');

INSERT INTO ventas (cliente_id, producto_id, cantidad, fecha) VALUES (1, 1, 1, '2024-05-31');

INSERT INTO ventas (cliente_id, producto_id, cantidad, fecha) VALUES (5, 4, 1, '2024-06-01');

INSERT INTO ventas (cliente_id, producto_id, cantidad, fecha) VALUES (2, 3, 5, '2024-06-02');

INSERT INTO ventas (cliente_id, producto_id, cantidad, fecha) VALUES (3, 5, 2, '2024-06-03');

INSERT INTO ventas (cliente_id, producto_id, cantidad, fecha) VALUES (3, 5, 4, '2024-06-03');

INSERT INTO ventas (cliente_id, producto_id, cantidad, fecha) VALUES (10, 8, 5, '2024-06-04');

INSERT INTO ventas (cliente_id, producto_id, cantidad, fecha) VALUES (8, 1, 6, '2024-06-07');

INSERT INTO ventas (cliente_id, producto_id, cantidad, fecha) VALUES (7, 1, 4, '2024-06-07');

INSERT INTO ventas (cliente_id, producto_id, cantidad, fecha) VALUES (6, 4, 6, '2024-06-08');

INSERT INTO ventas (cliente_id, producto_id, cantidad, fecha) VALUES (3, 8, 4, '2024-06-09');

INSERT INTO ventas (cliente_id, producto_id, cantidad, fecha) VALUES (2, 1, 6, '2024-06-10');

INSERT INTO ventas (cliente_id, producto_id, cantidad, fecha) VALUES (4, 2, 4, '2024-06-11');

INSERT INTO ventas (cliente_id, producto_id, cantidad, fecha) VALUES (1, 4, 1, '2024-06-20');

INSERT INTO ventas (cliente_id, producto_id, cantidad, fecha) VALUES (9, 1, 6, '2024-06-20');

INSERT INTO ventas (cliente_id, producto_id, cantidad, fecha) VALUES (3, 5, 4, '2024-06-20');

INSERT INTO ventas (cliente_id, producto_id, cantidad, fecha) VALUES (3, 1, 5, '2024-06-22');

INSERT INTO ventas (cliente_id, producto_id, cantidad, fecha) VALUES (9, 4, 6, '2024-06-23');

INSERT INTO ventas (cliente_id, producto_id, cantidad, fecha) VALUES (2, 1, 4, '2024-06-26');

INSERT INTO ventas (cliente_id, producto_id, cantidad, fecha) VALUES (9, 5, 6, '2024-06-27');

INSERT INTO ventas (cliente_id, producto_id, cantidad, fecha) VALUES (7, 2, 3, '2024-06-28');

INSERT INTO ventas (cliente_id, producto_id, cantidad, fecha) VALUES (8, 1, 1, '2024-07-02');

INSERT INTO ventas (cliente_id, producto_id, cantidad, fecha) VALUES (8, 6, 2, '2024-07-04');

INSERT INTO ventas (cliente_id, producto_id, cantidad, fecha) VALUES (5, 4, 2, '2024-07-05');

INSERT INTO ventas (cliente_id, producto_id, cantidad, fecha) VALUES (7, 2, 4, '2024-07-07');

INSERT INTO ventas (cliente_id, producto_id, cantidad, fecha) VALUES (6, 4, 3, '2024-07-11');

INSERT INTO ventas (cliente_id, producto_id, cantidad, fecha) VALUES (7, 6, 4, '2024-07-15');

INSERT INTO ventas (cliente_id, producto_id, cantidad, fecha) VALUES (9, 2, 5, '2024-07-18');

INSERT INTO ventas (cliente_id, producto_id, cantidad, fecha) VALUES (9, 8, 2, '2024-07-18');

INSERT INTO ventas (cliente_id, producto_id, cantidad, fecha) VALUES (9, 7, 2, '2024-07-24');

INSERT INTO ventas (cliente_id, producto_id, cantidad, fecha) VALUES (6, 8, 5, '2024-07-25');

INSERT INTO ventas (cliente_id, producto_id, cantidad, fecha) VALUES (10, 5, 1, '2024-07-27');

INSERT INTO ventas (cliente_id, producto_id, cantidad, fecha) VALUES (8, 7, 6, '2024-07-27');

INSERT INTO ventas (cliente_id, producto_id, cantidad, fecha) VALUES (3, 8, 2, '2024-07-31');

INSERT INTO ventas (cliente_id, producto_id, cantidad, fecha) VALUES (1, 1, 5, '2024-08-01');

INSERT INTO ventas (cliente_id, producto_id, cantidad, fecha) VALUES (3, 7, 4, '2024-08-02');

INSERT INTO ventas (cliente_id, producto_id, cantidad, fecha) VALUES (10, 2, 1, '2024-08-03');

INSERT INTO ventas (cliente_id, producto_id, cantidad, fecha) VALUES (9, 3, 1, '2024-08-09');

INSERT INTO ventas (cliente_id, producto_id, cantidad, fecha) VALUES (8, 3, 3, '2024-08-14');

INSERT INTO ventas (cliente_id, producto_id, cantidad, fecha) VALUES (10, 7, 2, '2024-08-17');

INSERT INTO ventas (cliente_id, producto_id, cantidad, fecha) VALUES (5, 8, 2, '2024-08-17');

INSERT INTO ventas (cliente_id, producto_id, cantidad, fecha) VALUES (6, 1, 5, '2024-08-20');

INSERT INTO ventas (cliente_id, producto_id, cantidad, fecha) VALUES (5, 4, 1, '2024-08-27');

INSERT INTO ventas (cliente_id, producto_id, cantidad, fecha) VALUES (9, 5, 6, '2024-08-28');

INSERT INTO ventas (cliente_id, producto_id, cantidad, fecha) VALUES (2, 3, 1, '2024-08-31');

INSERT INTO ventas (cliente_id, producto_id, cantidad, fecha) VALUES (10, 4, 5, '2024-08-31');

INSERT INTO ventas (cliente_id, producto_id, cantidad, fecha) VALUES (9, 5, 6, '2024-09-06');

INSERT INTO ventas (cliente_id, producto_id, cantidad, fecha) VALUES (2, 1, 4, '2024-09-07');

INSERT INTO ventas (cliente_id, producto_id, cantidad, fecha) VALUES (10, 6, 2, '2024-09-15');

INSERT INTO ventas (cliente_id, producto_id, cantidad, fecha) VALUES (8, 1, 6, '2024-09-15');

INSERT INTO ventas (cliente_id, producto_id, cantidad, fecha) VALUES (2, 3, 2, '2024-09-16');

INSERT INTO ventas (cliente_id, producto_id, cantidad, fecha) VALUES (1, 2, 4, '2024-09-16');

INSERT INTO ventas (cliente_id, producto_id, cantidad, fecha) VALUES (4, 5, 4, '2024-09-19');

INSERT INTO ventas (cliente_id, producto_id, cantidad, fecha) VALUES (8, 5, 4, '2024-09-26');