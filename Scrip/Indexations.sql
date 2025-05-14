-- Índice para búsqueda rápida por nombre de curso
CREATE INDEX idx_cursos_nombre ON Cursos(nombre);

-- Índice para listar inscripciones por estudiante
CREATE INDEX idx_inscripciones_estudiante_id ON Inscripciones(estudiante_id);

-- Índice para consultar progreso por inscripción
CREATE INDEX idx_progreso_inscripcion_id ON ProgresoEstudiante(inscripcion_id);