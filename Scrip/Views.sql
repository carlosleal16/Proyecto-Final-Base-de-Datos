-- 1. Cursos en los que está inscrito un estudiante
CREATE VIEW vista_cursos_estudiante AS
SELECT i.estudiante_id, c.id AS curso_id, c.nombre AS curso_nombre
FROM Inscripciones i
JOIN Cursos c ON c.id = i.curso_id;

-- 2. Progreso general de un estudiante en un curso
CREATE VIEW vista_progreso_general AS
SELECT 
  i.estudiante_id,
  c.id AS curso_id,
  COUNT(DISTINCT le.id) AS total_lecciones,
  COUNT(DISTINCT pe.leccion_id) FILTER (WHERE pe.completado) AS lecciones_completadas
FROM Inscripciones i
JOIN Cursos c ON c.id = i.curso_id
JOIN Modulos m ON m.curso_id = c.id
JOIN Lecciones le ON le.modulo_id = m.id
LEFT JOIN ProgresoEstudiante pe ON pe.leccion_id = le.id AND pe.inscripcion_id = i.id
GROUP BY i.estudiante_id, c.id;

-- 3. Lecciones pendientes por estudiante
CREATE VIEW vista_lecciones_pendientes AS
SELECT 
  e.id AS estudiante_id,
  c.id AS curso_id,
  l.id AS leccion_id,
  l.titulo
FROM Estudiantes e
JOIN Inscripciones i ON i.estudiante_id = e.id
JOIN Cursos c ON c.id = i.curso_id
JOIN Modulos m ON m.curso_id = c.id
JOIN Lecciones l ON l.modulo_id = m.id
LEFT JOIN ProgresoEstudiante p ON p.leccion_id = l.id AND p.inscripcion_id = i.id
WHERE p.completado IS DISTINCT FROM TRUE;

-- 4. Calificaciones por estudiante
CREATE VIEW vista_calificaciones_estudiante AS
SELECT 
  e.id AS estudiante_id,
  c.nombre AS curso,
  q.titulo AS quiz,
  ca.calificacion
FROM Calificaciones ca
JOIN Inscripciones i ON i.id = ca.inscripcion_id
JOIN Estudiantes e ON e.id = i.estudiante_id
JOIN Cursos c ON c.id = i.curso_id
JOIN Quizzes q ON q.id = ca.quiz_id;

-- 5. Participación en foros por curso
CREATE VIEW vista_participacion_foro AS
SELECT 
  f.curso_id,
  hf.estudiante_id,
  COUNT(mf.id) AS mensajes_publicados
FROM Foros f
JOIN HilosForo hf ON hf.foro_id = f.id
JOIN MensajesForo mf ON mf.hilo_id = hf.id
GROUP BY f.curso_id, hf.estudiante_id;