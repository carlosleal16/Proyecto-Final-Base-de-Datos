-- % completitud del curso para un estudiante
CREATE OR REPLACE FUNCTION porcentaje_completado(estudiante_id INT, curso_id INT)
RETURNS DECIMAL AS $$
DECLARE
    total INT;
    completadas INT;
BEGIN
    SELECT COUNT() INTO total
    FROM Lecciones l
    JOIN Modulos m ON l.modulo_id = m.id
    WHERE m.curso_id = curso_id;

    SELECT COUNT() INTO completadas
    FROM ProgresoEstudiante p
    JOIN Inscripciones i ON p.inscripcion_id = i.id
    JOIN Lecciones l ON l.id = p.leccion_id
    JOIN Modulos m ON l.modulo_id = m.id
    WHERE i.estudiante_id = estudiante_id AND m.curso_id = curso_id AND p.completado = TRUE;

    IF total = 0 THEN RETURN 0;
    END IF;

    RETURN ROUND((completadas::DECIMAL / total) * 100, 2);
END;
$$ LANGUAGE plpgsql;

-- Obtener cantidad de lecciones del curso
CREATE OR REPLACE FUNCTION total_lecciones_curso(curso_id INT)
RETURNS INT AS $$
BEGIN
    RETURN (
        SELECT COUNT(*) FROM Lecciones l
        JOIN Modulos m ON l.modulo_id = m.id
        WHERE m.curso_id = curso_id
    );
END;
$$ LANGUAGE plpgsql;
