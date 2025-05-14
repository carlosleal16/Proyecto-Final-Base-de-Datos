-- INNER JOIN relacionado a cursos y módulos
SELECT * FROM Cursos c INNER JOIN Modulos m ON c.id = m.curso_id;

-- LEFT JOIN relacionado a inscripciones y progreso
SELECT * FROM Inscripciones i LEFT JOIN ProgresoEstudiante p ON i.id = p.inscripcion_id;

-- Subconsulta en SELECT
SELECT , (SELECT COUNT() FROM Inscripciones) AS total FROM Inscripciones LIMIT 5;

-- Subconsulta en WHERE
SELECT * FROM Estudiantes WHERE id IN (SELECT estudiante_id FROM Inscripciones LIMIT 3);

-----------------------------------------------------------

-- CTE: Progreso promedio por curso
WITH progreso_promedio AS (
    SELECT i.curso_id, AVG(CASE WHEN p.completado THEN 1 ELSE 0 END) AS promedio
    FROM ProgresoEstudiante p
    JOIN Inscripciones i ON p.inscripcion_id = i.id
    GROUP BY i.curso_id
)
SELECT c.nombre, pr.promedio
FROM Cursos c
JOIN progreso_promedio pr ON c.id = pr.curso_id;

-- CTE: Calificación media por curso
WITH calificaciones_media AS (
    SELECT i.curso_id, AVG(ca.calificacion) AS media
    FROM Calificaciones ca
    JOIN Inscripciones i ON ca.inscripcion_id = i.id
    GROUP BY i.curso_id
)
SELECT c.nombre, cm.media
FROM Cursos c
JOIN calificaciones_media cm ON c.id = cm.curso_id;