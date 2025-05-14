-- 1. Registro de inscripción
CREATE OR REPLACE FUNCTION auditar_inscripcion()
RETURNS TRIGGER AS $$
BEGIN
    INSERT INTO Auditoria(tabla, operacion, descripcion)
    VALUES ('Inscripciones', 'INSERT', 'Nueva inscripción del estudiante ' || NEW.estudiante_id || ' al curso ' || NEW.curso_id);
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trg_auditar_inscripcion
AFTER INSERT ON Inscripciones
FOR EACH ROW EXECUTE FUNCTION auditar_inscripcion();

-- 2. Actualización de progreso
CREATE OR REPLACE FUNCTION auditar_progreso()
RETURNS TRIGGER AS $$
BEGIN
    INSERT INTO Auditoria(tabla, operacion, descripcion)
    VALUES ('ProgresoEstudiante', 'UPDATE', 'Actualización de progreso en lección ' || NEW.leccion_id);
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trg_auditar_progreso
AFTER UPDATE ON ProgresoEstudiante
FOR EACH ROW EXECUTE FUNCTION auditar_progreso();

-- 3. Publicación en foro
CREATE OR REPLACE FUNCTION auditar_mensaje_foro()
RETURNS TRIGGER AS $$
BEGIN
    INSERT INTO Auditoria(tabla, operacion, descripcion)
    VALUES ('MensajesForo', 'INSERT', 'Nuevo mensaje publicado por estudiante ' || NEW.estudiante_id);
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trg_auditar_mensaje_foro
AFTER INSERT ON MensajesForo
FOR EACH ROW EXECUTE FUNCTION auditar_mensaje_foro();