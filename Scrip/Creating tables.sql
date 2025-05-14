-- Tabla de Cursos
CREATE TABLE Cursos (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL,
    descripcion TEXT,
    fecha_creacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    estado BOOLEAN DEFAULT TRUE
);

-- Tabla de Módulos
CREATE TABLE Modulos (
    id SERIAL PRIMARY KEY,
    curso_id INTEGER REFERENCES Cursos(id) ON DELETE CASCADE,
    titulo VARCHAR(255) NOT NULL,
    descripcion TEXT,
    estado BOOLEAN DEFAULT TRUE
);

-- Tabla de Tipos de Lección
CREATE TABLE TiposLeccion (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    estado BOOLEAN DEFAULT TRUE
);

-- Tabla de Lecciones
CREATE TABLE Lecciones (
    id SERIAL PRIMARY KEY,
    modulo_id INTEGER REFERENCES Modulos(id) ON DELETE CASCADE,
    tipo_id INTEGER REFERENCES TiposLeccion(id),
    titulo VARCHAR(255) NOT NULL,
    contenido TEXT,
    orden INTEGER,
    estado BOOLEAN DEFAULT TRUE
);

-- Tabla de Instructores
CREATE TABLE Instructores (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    estado BOOLEAN DEFAULT TRUE
);

-- Tabla de Estudiantes
CREATE TABLE Estudiantes (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    fecha_registro TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    estado BOOLEAN DEFAULT TRUE
);

-- Tabla de Inscripciones
CREATE TABLE Inscripciones (
    id SERIAL PRIMARY KEY,
    estudiante_id INTEGER REFERENCES Estudiantes(id) ON DELETE CASCADE,
    curso_id INTEGER REFERENCES Cursos(id) ON DELETE CASCADE,
    fecha_inscripcion TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    estado BOOLEAN DEFAULT TRUE,
    UNIQUE(estudiante_id, curso_id)
);

-- Tabla de Progreso del Estudiante
CREATE TABLE ProgresoEstudiante (
    id SERIAL PRIMARY KEY,
    inscripcion_id INTEGER REFERENCES Inscripciones(id) ON DELETE CASCADE,
    leccion_id INTEGER REFERENCES Lecciones(id) ON DELETE CASCADE,
    completado BOOLEAN DEFAULT FALSE,
    fecha_completado TIMESTAMP,
    estado BOOLEAN DEFAULT TRUE
);

-- Tabla de Quizzes
CREATE TABLE Quizzes (
    id SERIAL PRIMARY KEY,
    leccion_id INTEGER REFERENCES Lecciones(id) ON DELETE CASCADE,
    titulo VARCHAR(255),
    instrucciones TEXT,
    estado BOOLEAN DEFAULT TRUE
);

-- Tabla de Preguntas de los Quizzes
CREATE TABLE PreguntasQuiz (
    id SERIAL PRIMARY KEY,
    quiz_id INTEGER REFERENCES Quizzes(id) ON DELETE CASCADE,
    pregunta TEXT NOT NULL,
    tipo VARCHAR(50),
    estado BOOLEAN DEFAULT TRUE
);

-- Tabla de Respuestas de las Preguntas
CREATE TABLE RespuestasQuiz (
    id SERIAL PRIMARY KEY,
    pregunta_id INTEGER REFERENCES PreguntasQuiz(id) ON DELETE CASCADE,
    respuesta TEXT NOT NULL,
    es_correcta BOOLEAN DEFAULT FALSE,
    estado BOOLEAN DEFAULT TRUE
);

-- Tabla de Calificaciones
CREATE TABLE Calificaciones (
    id SERIAL PRIMARY KEY,
    inscripcion_id INTEGER REFERENCES Inscripciones(id) ON DELETE CASCADE,
    quiz_id INTEGER REFERENCES Quizzes(id) ON DELETE CASCADE,
    calificacion DECIMAL(5,2),
    fecha_evaluacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    estado BOOLEAN DEFAULT TRUE
);

-- Tabla de Foros
CREATE TABLE Foros (
    id SERIAL PRIMARY KEY,
    curso_id INTEGER REFERENCES Cursos(id) ON DELETE CASCADE,
    titulo VARCHAR(255) NOT NULL,
    descripcion TEXT,
    estado BOOLEAN DEFAULT TRUE
);

-- Tabla de Hilos del Foro
CREATE TABLE HilosForo (
    id SERIAL PRIMARY KEY,
    foro_id INTEGER REFERENCES Foros(id) ON DELETE CASCADE,
    estudiante_id INTEGER REFERENCES Estudiantes(id) ON DELETE SET NULL,
    titulo VARCHAR(255) NOT NULL,
    fecha_creacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    estado BOOLEAN DEFAULT TRUE
);

-- Tabla de Mensajes del Foro
CREATE TABLE MensajesForo (
    id SERIAL PRIMARY KEY,
    hilo_id INTEGER REFERENCES HilosForo(id) ON DELETE CASCADE,
    estudiante_id INTEGER REFERENCES Estudiantes(id) ON DELETE SET NULL,
    mensaje TEXT NOT NULL,
    fecha_envio TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    estado BOOLEAN DEFAULT TRUE
);
