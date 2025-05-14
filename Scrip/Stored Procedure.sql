-- Crear Curso
CREATE OR REPLACE PROCEDURE crear_curso(nombre TEXT, descripcion TEXT)
LANGUAGE plpgsql AS $$
BEGIN
    INSERT INTO Cursos(nombre, descripcion) VALUES (nombre, descripcion);
END;
$$;

-- Leer Curso
CREATE OR REPLACE FUNCTION obtener_curso(curso_id INT)
RETURNS TABLE(id INT, nombre TEXT, descripcion TEXT) AS $$
BEGIN
    RETURN QUERY SELECT id, nombre, descripcion FROM Cursos WHERE id = curso_id;
END;
$$ LANGUAGE plpgsql;

-- Actualizar Curso
CREATE OR REPLACE PROCEDURE actualizar_curso(curso_id INT, nuevo_nombre TEXT, nueva_descripcion TEXT)
LANGUAGE plpgsql AS $$
BEGIN
    UPDATE Cursos SET nombre = nuevo_nombre, descripcion = nueva_descripcion WHERE id = curso_id;
END;
$$;

-- Eliminar Curso (borrado lógico)
CREATE OR REPLACE PROCEDURE desactivar_curso(curso_id INT)
LANGUAGE plpgsql AS $$
BEGIN
    UPDATE Cursos SET estado = FALSE WHERE id = curso_id;
END;
$$;
