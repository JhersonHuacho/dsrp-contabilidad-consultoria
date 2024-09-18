-- Inserción en la tabla Clientes
INSERT INTO Clientes (ruc, razon_social, direccion, telefono, correo_electronico, tipo_empresa, actividad_economica)
VALUES 
    ('20601234567', 'InnovaSoft S.A.', 'Av. Conquistadores 123', '987654321', 'innov@soft.com', 'SA', 'Desarrollo de software'),
    ('10471528512', 'Empresa A', 'Av. Siempre Viva 123', '987654321', 'empresa@gmail.com', 'SA', 'Actividades de programación informática'),
    ('15935724681', 'Tech Solutions', 'Calle Progreso 456', '912345678', 'tech@solutions.com', 'LLC', 'Consultoría tecnológica'),
    ('23456789123', 'Green Energy', 'Av. Ecológica 789', '956789123', 'green@energy.com', 'SA', 'Energías renovables'),
    ('34567891234', 'Data Analytics', 'Calle Datos 101', '945678912', 'data@analytics.com', 'EIRL', 'Análisis de datos'),
    ('45678912345', 'Global Commerce', 'Av. Mundial 123', '934567891', 'global@commerce.com', 'SA', 'Comercio internacional'),
    ('56789123456', 'Biotech Labs', 'Calle Ciencia 456', '923456789', 'biotech@labs.com', 'SL', 'Biotecnología'),
    ('67891234567', 'Smart City', 'Av. Futura 789', '912345678', 'smart@city.com', 'SA', 'Desarrollo urbano'),
    ('78912345678', 'Eco Friendly', 'Calle Verde 101', '901234567', 'eco@friendly.com', 'EIRL', 'Productos ecológicos'),
    ('89123456789', 'Creative Agency', 'Av. Arte 123', '890123456', 'creative@agency.com', 'SC', 'Diseño gráfico')
;

-- Inserción en la tabla Contactos
INSERT INTO Contactos (nombre, cargo, telefono, correo_electronico, id_cliente)
VALUES
    ('Ana García', 'Asesora de Ventas', '999888777', 'ana@empresa.com', 1),
    ('Carlos López', 'Desarrollador', '987654321', 'carlos@empresa.com', 2),
    ('Sofía Martínez', 'Diseñadora Gráfica', '976543210', 'sofia@empresa.com', 3),
    ('Pedro Hernández', 'Analista de Sistemas', '965432109', 'pedro@empresa.com', 4),
    ('Laura Ramírez', 'Contadora', '954321098', 'laura@empresa.com', 5),
    ('Diego Silva', 'Jefe de Proyectos', '943210987', 'diego@empresa.com', 6),
    ('Valentina Guzmán', 'Marketing Digital', '932109876', 'valentina@empresa.com', 7),
    ('Mateo Torres', 'Soporte Técnico', '921098765', 'mateo@empresa.com', 8),
    ('Camila Vega', 'Recursos Humanos', '910987654', 'camila@empresa.com', 9),
    ('Benjamín Castro', 'Asistente Administrativo', '901234567', 'benjamin@empresa.com', 10)
;

-- Inserción en la tabla Proyectos
INSERT INTO Proyectos (nombre, descripcion, fecha_inicio, fecha_fin, estado, id_cliente)
VALUES
    ('Desarrollo de Sitio Web Corporativo', 'Crear un sitio web responsive para mostrar los productos y servicios de la empresa', '2023-04-01', '2023-06-30', 1, 1),
    ('Implementación de ERP', 'Implementar un sistema ERP para optimizar los procesos de la empresa', '2023-05-15', '2023-08-15', 2, 2),
    ('Diseño de Identidad Corporativa', 'Crear una nueva imagen de marca para la empresa', '2023-03-01', '2023-05-31', 3, 3),
    ('Desarrollo de Aplicación Móvil', 'Crear una app móvil para realizar pedidos en línea', '2023-06-01', '2023-09-30', 1, 4),
    ('Migración a la Nube', 'Migrar los sistemas de la empresa a la nube', '2023-07-15', '2023-10-15', 2, 5),
    ('Análisis de Datos', 'Realizar un análisis de los datos de la empresa para tomar mejores decisiones', '2023-08-01', '2023-11-30', 1, 6),
    ('Implementación de Business Intelligence', 'Implementar una solución de Business Intelligence para visualizar los datos de la empresa', '2023-09-15', '2023-12-31', 2, 7),
    ('Desarrollo de Plataforma E-commerce', 'Crear una plataforma de comercio electrónico para vender productos en línea', '2023-10-01', '2024-01-31', 1, 8),
    ('Automatización de Procesos', 'Automatizar los procesos internos de la empresa', '2023-11-15', '2024-02-29', 2, 9),
    ('Ciberseguridad', 'Implementar medidas de seguridad para proteger los sistemas de la empresa', '2023-12-01', '2024-03-31', 1, 10)
;

-- Inserción en la tabla Facturas
INSERT INTO Facturas (numero_factura, fecha_emision, fecha_vencimiento, monto_total, estado_pago, id_cliente)
VALUES
    ('FAC001', '2023-04-15', '2023-05-15', 5000.00, 1, 1),
    ('FAC002', '2023-05-10', '2023-06-10', 3000.00, 2, 2),
    ('FAC003', '2023-03-20', '2023-04-20', 2500.00, 1, 3),
    ('FAC004', '2023-06-05', '2023-07-05', 4000.00, 2, 4),
    ('FAC005', '2023-07-12', '2023-08-12', 6000.00, 1, 5),
    ('FAC006', '2023-08-18', '2023-09-18', 2800.00, 2, 6),
    ('FAC007', '2023-09-25', '2023-10-25', 3500.00, 1, 7),
    ('FAC008', '2023-10-02', '2023-11-02', 4500.00, 2, 8),
    ('FAC009', '2023-11-10', '2023-12-10', 5500.00, 1, 9),
    ('FAC010', '2023-12-20', '2024-01-20', 6500.00, 2, 10)
;

-- Inserción en la tabla Pagos
INSERT INTO Pagos (fecha_pago, monto_pagado, metodo_pago, id_factura)
VALUES
    ('2023-05-10', 5000.00, 1, 1),
    ('2023-06-05', 3000.00, 2, 2),
    ('2023-04-15', 2500.00, 1, 3),
    ('2023-07-02', 4000.00, 2, 4),
    ('2023-08-10', 6000.00, 1, 5),
    ('2023-09-15', 2800.00, 2, 6),
    ('2023-10-20', 3500.00, 1, 7),
    ('2023-11-05', 4500.00, 2, 8),
    ('2023-12-12', 5500.00, 1, 9),
    ('2024-01-18', 6500.00, 2, 10)
;

-- Inserción en la tabla Requerimientos
INSERT INTO Requerimientos (nombre, descripcion, fecha_solicitud, fecha_entrega, estado, id_proyecto)
VALUES
    ('Diseño de la interfaz de usuario', 'Crear un diseño intuitivo y atractivo para el sitio web', '2023-04-10', '2023-04-25', 1, 1),
    ('Desarrollo del backend', 'Implementar la lógica del sitio web para gestionar usuarios y productos', '2023-04-15', '2023-05-15', 2, 1),
    ('Integración con pasarela de pago', 'Conectar el sitio web con una pasarela de pago segura', '2023-05-01', '2023-05-20', 1, 1),
    ('Implementación de un CRM', 'Configurar un sistema de gestión de relaciones con los clientes', '2023-05-15', '2023-06-15', 2, 2),
    ('Automatización de reportes', 'Generar reportes automáticos de ventas y marketing', '2023-06-01', '2023-06-30', 1, 2),
    ('Análisis de datos de usuarios', 'Realizar un análisis detallado del comportamiento de los usuarios', '2023-03-15', '2023-04-15', 2, 3),
    ('Desarrollo de una API', 'Crear una API para integrar el sistema con otras aplicaciones', '2023-06-15', '2023-07-15', 1, 4),
    ('Optimización para motores de búsqueda', 'Mejorar el posicionamiento del sitio web en los resultados de búsqueda', '2023-07-01', '2023-08-01', 2, 4),
    ('Implementación de seguridad', 'Proteger el sistema contra ataques cibernéticos', '2023-08-15', '2023-09-15', 1, 5),
    ('Escalabilidad del sistema', 'Preparar el sistema para manejar un mayor volumen de usuarios y datos', '2023-09-01', '2023-10-01', 2, 5)
;