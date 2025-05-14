-- Crear roles
CREATE ROLE estudiante NOINHERIT;
CREATE ROLE instructor NOINHERIT;
CREATE ROLE administrador NOINHERIT;

GRANT CONNECT ON DATABASE plataforma TO estudiante, instructor, administrador;

-- Permisos por rol
GRANT SELECT ON Cursos, Lecciones TO estudiante;
GRANT SELECT, INSERT, UPDATE ON Calificaciones TO instructor;
GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA public TO administrador;

-- Crear usuarios y asignar roles
CREATE USER ana_estudiante WITH PASSWORD 'ana123';
GRANT estudiante TO ana_estudiante;

CREATE USER juan_instructor WITH PASSWORD 'juan123';
GRANT instructor TO juan_instructor;

CREATE USER admin_plataforma WITH PASSWORD 'admin123';
GRANT administrador TO admin_plataforma;