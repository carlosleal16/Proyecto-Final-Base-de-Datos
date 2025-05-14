-- TiposLeccion
INSERT INTO TiposLeccion (nombre) VALUES ('Video');
INSERT INTO TiposLeccion (nombre) VALUES ('Lectura');
INSERT INTO TiposLeccion (nombre) VALUES ('Actividad');
INSERT INTO TiposLeccion (nombre) VALUES ('Examen');
INSERT INTO TiposLeccion (nombre) VALUES ('Proyecto');
INSERT INTO TiposLeccion (nombre) VALUES ('Debate');
INSERT INTO TiposLeccion (nombre) VALUES ('Laboratorio');
INSERT INTO TiposLeccion (nombre) VALUES ('Audio');
INSERT INTO TiposLeccion (nombre) VALUES ('Simulación');
INSERT INTO TiposLeccion (nombre) VALUES ('Presentación');


-- Cursos
INSERT INTO Cursos (nombre, descripcion) VALUES ('Sharable bifurcated algorithm', 'Doloribus consequuntur aut qui molestias.');
INSERT INTO Cursos (nombre, descripcion) VALUES ('Face-to-face local parallelism', 'Repellat ab rem praesentium excepturi.');
INSERT INTO Cursos (nombre, descripcion) VALUES ('Multi-channeled grid-enabled portal', 'Rem quas modi voluptate fugiat.');
INSERT INTO Cursos (nombre, descripcion) VALUES ('Visionary explicit artificial intelligence', 'Sint fugit iste rerum cum.');
INSERT INTO Cursos (nombre, descripcion) VALUES ('Upgradable dynamic complexity', 'Reprehenderit rem illo architecto totam.');
INSERT INTO Cursos (nombre, descripcion) VALUES ('Fully-configurable value-added open architecture', 'Ea nesciunt tempore id dolor voluptatum magni.');
INSERT INTO Cursos (nombre, descripcion) VALUES ('Synergized interactive policy', 'Harum nisi iusto dolorum.');
INSERT INTO Cursos (nombre, descripcion) VALUES ('Customizable explicit Internet solution', 'Iste veritatis soluta ea.');
INSERT INTO Cursos (nombre, descripcion) VALUES ('Multi-layered well-modulated complexity', 'Dolores dolores necessitatibus aspernatur quasi.');
INSERT INTO Cursos (nombre, descripcion) VALUES ('Reactive composite firmware', 'Sit incidunt distinctio molestiae quas dicta est.');


-- Instructores
INSERT INTO Instructores (nombre, email) VALUES ('Macario de Aguilar', 'granadosborja@murillo.net');
INSERT INTO Instructores (nombre, email) VALUES ('Nicanor Torralba-Gargallo', 'yherrero@ramirez-falcon.com');
INSERT INTO Instructores (nombre, email) VALUES ('Narciso Rosa Pablo', 'usolera@gmail.com');
INSERT INTO Instructores (nombre, email) VALUES ('Américo Quevedo Nicolau', 'gregoriofalcon@sanabria.com');
INSERT INTO Instructores (nombre, email) VALUES ('Jerónimo Iborra-Benet', 'ayusoflorinda@hotmail.com');
INSERT INTO Instructores (nombre, email) VALUES ('Arturo Guzmán Delgado', 'nteruel@yahoo.com');
INSERT INTO Instructores (nombre, email) VALUES ('Celestino Pinilla Abril', 'angeles74@yahoo.com');
INSERT INTO Instructores (nombre, email) VALUES ('Nadia del Cortina', 'isaac09@barrera.com');
INSERT INTO Instructores (nombre, email) VALUES ('Judith Valverde-Criado', 'estevezbruno@bayo.com');
INSERT INTO Instructores (nombre, email) VALUES ('Delia Ariño-Bilbao', 'juan-carlos35@gmail.com');


-- Estudiantes
INSERT INTO Estudiantes (nombre, email) VALUES ('Hector Castro-Marín', 'ursula10@yahoo.com');
INSERT INTO Estudiantes (nombre, email) VALUES ('Marcela Armida Beltrán Garcés', 'pacobayona@gmail.com');
INSERT INTO Estudiantes (nombre, email) VALUES ('Elodia Cruz Ríos', 'marigracia@gmail.com');
INSERT INTO Estudiantes (nombre, email) VALUES ('Eligio Carlos Campo', 'lope93@novoa.es');
INSERT INTO Estudiantes (nombre, email) VALUES ('Víctor Azcona-Bru', 'arsenio05@gmail.com');
INSERT INTO Estudiantes (nombre, email) VALUES ('Cecilio Sala-Roma', 'benetsol@company.com');
INSERT INTO Estudiantes (nombre, email) VALUES ('Belen Arnaiz Mendez', 'pallareshumberto@hotmail.com');
INSERT INTO Estudiantes (nombre, email) VALUES ('Nazario de Otero', 'angelaguzman@gmail.com');
INSERT INTO Estudiantes (nombre, email) VALUES ('Valero Revilla Amat', 'micaela63@cuervo-campoy.es');
INSERT INTO Estudiantes (nombre, email) VALUES ('Timoteo Sosa Girón', 'tolmo@gisbert.net');


-- Modulos
INSERT INTO Modulos (curso_id, titulo, descripcion) VALUES (2, 'Strategize Open-Source Niches', 'Vitae eius odit id.');
INSERT INTO Modulos (curso_id, titulo, descripcion) VALUES (1, 'Expedite User-Centric Convergence', 'A unde modi quaerat quia perferendis.');
INSERT INTO Modulos (curso_id, titulo, descripcion) VALUES (5, 'Productize Seamless Mindshare', 'Pariatur eveniet possimus mollitia deleniti.');
INSERT INTO Modulos (curso_id, titulo, descripcion) VALUES (4, 'Envisioneer Best-Of-Breed E-Commerce', 'Eligendi optio nulla at.');
INSERT INTO Modulos (curso_id, titulo, descripcion) VALUES (4, 'Syndicate Intuitive Bandwidth', 'Suscipit nemo quaerat fugit id corporis.');
INSERT INTO Modulos (curso_id, titulo, descripcion) VALUES (3, 'Revolutionize Cutting-Edge E-Services', 'Rem possimus iure nam.');
INSERT INTO Modulos (curso_id, titulo, descripcion) VALUES (2, 'Expedite Turn-Key Systems', 'Saepe eius quod laborum dolores.');
INSERT INTO Modulos (curso_id, titulo, descripcion) VALUES (9, 'Enhance Integrated Eyeballs', 'Aperiam illum molestiae impedit dignissimos.');
INSERT INTO Modulos (curso_id, titulo, descripcion) VALUES (2, 'Syndicate Clicks-And-Mortar Convergence', 'Quidem sequi veritatis in quibusdam.');
INSERT INTO Modulos (curso_id, titulo, descripcion) VALUES (10, 'Exploit Wireless Communities', 'Consequatur iure amet fugiat distinctio eveniet.');


-- Lecciones
INSERT INTO Lecciones (modulo_id, tipo_id, titulo, contenido, orden) VALUES (7, 1, 'Business-focused grid-enabled definition', 'Quos officiis quidem veniam.', 1);
INSERT INTO Lecciones (modulo_id, tipo_id, titulo, contenido, orden) VALUES (1, 2, 'Extended maximized standardization', 'Quisquam cumque non quibusdam beatae.', 2);
INSERT INTO Lecciones (modulo_id, tipo_id, titulo, contenido, orden) VALUES (4, 4, 'Synergistic homogeneous infrastructure', 'Asperiores porro occaecati aut quo.', 3);
INSERT INTO Lecciones (modulo_id, tipo_id, titulo, contenido, orden) VALUES (9, 10, 'Advanced intangible matrix', 'Inventore facere tempora itaque.', 4);
INSERT INTO Lecciones (modulo_id, tipo_id, titulo, contenido, orden) VALUES (1, 9, 'Public-key zero-defect matrices', 'Nam maxime deleniti dolores illo.', 5);
INSERT INTO Lecciones (modulo_id, tipo_id, titulo, contenido, orden) VALUES (4, 9, 'Team-oriented dynamic function', 'Deleniti qui eius nihil.', 6);
INSERT INTO Lecciones (modulo_id, tipo_id, titulo, contenido, orden) VALUES (7, 4, 'De-engineered even-keeled analyzer', 'Mollitia possimus commodi.', 7);
INSERT INTO Lecciones (modulo_id, tipo_id, titulo, contenido, orden) VALUES (8, 10, 'Polarized bifurcated architecture', 'Voluptatibus blanditiis quisquam non.', 8);
INSERT INTO Lecciones (modulo_id, tipo_id, titulo, contenido, orden) VALUES (5, 1, 'Seamless user-facing attitude', 'A ipsum nisi eos.', 9);
INSERT INTO Lecciones (modulo_id, tipo_id, titulo, contenido, orden) VALUES (3, 7, 'Fundamental zero tolerance utilization', 'Cumque esse quibusdam necessitatibus.', 10);


-- Inscripciones
INSERT INTO Inscripciones (estudiante_id, curso_id) VALUES (6, 5);
INSERT INTO Inscripciones (estudiante_id, curso_id) VALUES (3, 4);
INSERT INTO Inscripciones (estudiante_id, curso_id) VALUES (6, 2);
INSERT INTO Inscripciones (estudiante_id, curso_id) VALUES (2, 7);
INSERT INTO Inscripciones (estudiante_id, curso_id) VALUES (2, 6);
INSERT INTO Inscripciones (estudiante_id, curso_id) VALUES (6, 10);
INSERT INTO Inscripciones (estudiante_id, curso_id) VALUES (5, 1);
INSERT INTO Inscripciones (estudiante_id, curso_id) VALUES (8, 9);
INSERT INTO Inscripciones (estudiante_id, curso_id) VALUES (2, 7);
INSERT INTO Inscripciones (estudiante_id, curso_id) VALUES (2, 9);


-- ProgresoEstudiante
INSERT INTO ProgresoEstudiante (inscripcion_id, leccion_id, completado, fecha_completado) VALUES (5, 10, FALSE, CURRENT_DATE);
INSERT INTO ProgresoEstudiante (inscripcion_id, leccion_id, completado, fecha_completado) VALUES (2, 1, TRUE, CURRENT_DATE);
INSERT INTO ProgresoEstudiante (inscripcion_id, leccion_id, completado, fecha_completado) VALUES (2, 4, TRUE, CURRENT_DATE);
INSERT INTO ProgresoEstudiante (inscripcion_id, leccion_id, completado, fecha_completado) VALUES (8, 6, TRUE, CURRENT_DATE);
INSERT INTO ProgresoEstudiante (inscripcion_id, leccion_id, completado, fecha_completado) VALUES (4, 5, TRUE, CURRENT_DATE);
INSERT INTO ProgresoEstudiante (inscripcion_id, leccion_id, completado, fecha_completado) VALUES (3, 9, TRUE, NULL);
INSERT INTO ProgresoEstudiante (inscripcion_id, leccion_id, completado, fecha_completado) VALUES (7, 5, TRUE, CURRENT_DATE);
INSERT INTO ProgresoEstudiante (inscripcion_id, leccion_id, completado, fecha_completado) VALUES (1, 4, TRUE, CURRENT_DATE);
INSERT INTO ProgresoEstudiante (inscripcion_id, leccion_id, completado, fecha_completado) VALUES (7, 5, TRUE, NULL);
INSERT INTO ProgresoEstudiante (inscripcion_id, leccion_id, completado, fecha_completado) VALUES (10, 6, TRUE, CURRENT_DATE);


-- Quizzes
INSERT INTO Quizzes (leccion_id, titulo, instrucciones) VALUES (7, 'Laudantium aspernatur aliquam.', 'Delectus nesciunt odio laudantium at.');
INSERT INTO Quizzes (leccion_id, titulo, instrucciones) VALUES (8, 'Repellendus mollitia iste.', 'Eius ratione impedit vel.');
INSERT INTO Quizzes (leccion_id, titulo, instrucciones) VALUES (3, 'Molestiae exercitationem mollitia.', 'Libero alias magnam nihil.');
INSERT INTO Quizzes (leccion_id, titulo, instrucciones) VALUES (5, 'Illum omnis.', 'Asperiores quos eaque numquam.');
INSERT INTO Quizzes (leccion_id, titulo, instrucciones) VALUES (3, 'Sit alias architecto.', 'Possimus temporibus aliquid recusandae.');
INSERT INTO Quizzes (leccion_id, titulo, instrucciones) VALUES (4, 'Cumque aspernatur.', 'Pariatur tempore iure enim molestias.');
INSERT INTO Quizzes (leccion_id, titulo, instrucciones) VALUES (9, 'Porro itaque error.', 'Voluptate omnis earum.');
INSERT INTO Quizzes (leccion_id, titulo, instrucciones) VALUES (9, 'Non explicabo.', 'Numquam perspiciatis quam omnis saepe.');
INSERT INTO Quizzes (leccion_id, titulo, instrucciones) VALUES (5, 'Quibusdam cupiditate consequatur.', 'Similique quam voluptatem voluptas rem.');
INSERT INTO Quizzes (leccion_id, titulo, instrucciones) VALUES (10, 'Nesciunt reprehenderit.', 'Autem doloremque ad sunt natus totam.');


-- PreguntasQuiz
INSERT INTO PreguntasQuiz (quiz_id, pregunta, tipo) VALUES (7, 'Consequuntur veniam esse.', 'multiple');
INSERT INTO PreguntasQuiz (quiz_id, pregunta, tipo) VALUES (10, 'Blanditiis doloremque modi harum fuga veniam.', 'multiple');
INSERT INTO PreguntasQuiz (quiz_id, pregunta, tipo) VALUES (7, 'In quia culpa impedit aut laudantium.', 'multiple');
INSERT INTO PreguntasQuiz (quiz_id, pregunta, tipo) VALUES (6, 'Vel eius porro dolor ipsam.', 'multiple');
INSERT INTO PreguntasQuiz (quiz_id, pregunta, tipo) VALUES (4, 'Sequi aut placeat molestias.', 'multiple');
INSERT INTO PreguntasQuiz (quiz_id, pregunta, tipo) VALUES (3, 'Aperiam eius voluptas veniam repudiandae.', 'multiple');
INSERT INTO PreguntasQuiz (quiz_id, pregunta, tipo) VALUES (9, 'Optio odit nisi.', 'multiple');
INSERT INTO PreguntasQuiz (quiz_id, pregunta, tipo) VALUES (8, 'Amet ex voluptates.', 'multiple');
INSERT INTO PreguntasQuiz (quiz_id, pregunta, tipo) VALUES (2, 'Dignissimos rerum mollitia nesciunt repellat doloremque.', 'multiple');
INSERT INTO PreguntasQuiz (quiz_id, pregunta, tipo) VALUES (1, 'Ratione nisi eius.', 'multiple');


-- RespuestasQuiz
INSERT INTO RespuestasQuiz (pregunta_id, respuesta, es_correcta) VALUES (2, 'dignissimos', TRUE);
INSERT INTO RespuestasQuiz (pregunta_id, respuesta, es_correcta) VALUES (3, 'delectus', FALSE);
INSERT INTO RespuestasQuiz (pregunta_id, respuesta, es_correcta) VALUES (10, 'quis', TRUE);
INSERT INTO RespuestasQuiz (pregunta_id, respuesta, es_correcta) VALUES (7, 'explicabo', FALSE);
INSERT INTO RespuestasQuiz (pregunta_id, respuesta, es_correcta) VALUES (10, 'doloribus', FALSE);
INSERT INTO RespuestasQuiz (pregunta_id, respuesta, es_correcta) VALUES (9, 'culpa', FALSE);
INSERT INTO RespuestasQuiz (pregunta_id, respuesta, es_correcta) VALUES (9, 'ut', TRUE);
INSERT INTO RespuestasQuiz (pregunta_id, respuesta, es_correcta) VALUES (2, 'alias', FALSE);
INSERT INTO RespuestasQuiz (pregunta_id, respuesta, es_correcta) VALUES (6, 'delectus', TRUE);
INSERT INTO RespuestasQuiz (pregunta_id, respuesta, es_correcta) VALUES (5, 'accusantium', FALSE);


-- Calificaciones
INSERT INTO Calificaciones (inscripcion_id, quiz_id, calificacion) VALUES (3, 8, 50.16);
INSERT INTO Calificaciones (inscripcion_id, quiz_id, calificacion) VALUES (5, 9, 88.1);
INSERT INTO Calificaciones (inscripcion_id, quiz_id, calificacion) VALUES (9, 2, 93.53);
INSERT INTO Calificaciones (inscripcion_id, quiz_id, calificacion) VALUES (5, 9, 80.45);
INSERT INTO Calificaciones (inscripcion_id, quiz_id, calificacion) VALUES (3, 6, 88.13);
INSERT INTO Calificaciones (inscripcion_id, quiz_id, calificacion) VALUES (9, 9, 95.92);
INSERT INTO Calificaciones (inscripcion_id, quiz_id, calificacion) VALUES (10, 6, 74.43);
INSERT INTO Calificaciones (inscripcion_id, quiz_id, calificacion) VALUES (2, 6, 93.94);
INSERT INTO Calificaciones (inscripcion_id, quiz_id, calificacion) VALUES (5, 4, 52.9);
INSERT INTO Calificaciones (inscripcion_id, quiz_id, calificacion) VALUES (10, 2, 54.28);


-- Foros
INSERT INTO Foros (curso_id, titulo, descripcion) VALUES (8, 'Ratione dolores eum.', 'Eaque consectetur in beatae.');
INSERT INTO Foros (curso_id, titulo, descripcion) VALUES (2, 'Dolore nostrum quas.', 'Asperiores aspernatur non aperiam eius odio.');
INSERT INTO Foros (curso_id, titulo, descripcion) VALUES (9, 'Sequi officiis.', 'Quam dolor iste dolorem excepturi iste impedit.');
INSERT INTO Foros (curso_id, titulo, descripcion) VALUES (3, 'Architecto rerum at.', 'Quia fuga consectetur animi.');
INSERT INTO Foros (curso_id, titulo, descripcion) VALUES (3, 'Illo.', 'Est aut magni culpa laboriosam sed expedita nam.');
INSERT INTO Foros (curso_id, titulo, descripcion) VALUES (8, 'Nostrum odit ad ut.', 'Adipisci earum quis ullam expedita.');
INSERT INTO Foros (curso_id, titulo, descripcion) VALUES (9, 'Consectetur.', 'Sunt culpa quidem amet.');
INSERT INTO Foros (curso_id, titulo, descripcion) VALUES (3, 'Dolor maiores.', 'Eveniet ab quia cupiditate fugit.');
INSERT INTO Foros (curso_id, titulo, descripcion) VALUES (5, 'Nostrum.', 'Itaque aspernatur est.');
INSERT INTO Foros (curso_id, titulo, descripcion) VALUES (9, 'Itaque porro facere ipsa.', 'Doloribus nihil minima id.');


-- HilosForo
INSERT INTO HilosForo (foro_id, estudiante_id, titulo) VALUES (10, 7, 'Magni temporibus expedita quas reprehenderit.');
INSERT INTO HilosForo (foro_id, estudiante_id, titulo) VALUES (4, 9, 'Dolores corporis deserunt.');
INSERT INTO HilosForo (foro_id, estudiante_id, titulo) VALUES (4, 5, 'Corrupti quis asperiores veritatis occaecati.');
INSERT INTO HilosForo (foro_id, estudiante_id, titulo) VALUES (7, 6, 'Quidem quis ipsum unde.');
INSERT INTO HilosForo (foro_id, estudiante_id, titulo) VALUES (8, 9, 'Officia voluptates eum voluptas et.');
INSERT INTO HilosForo (foro_id, estudiante_id, titulo) VALUES (8, 2, 'Architecto ipsam esse earum.');
INSERT INTO HilosForo (foro_id, estudiante_id, titulo) VALUES (4, 4, 'Explicabo asperiores.');
INSERT INTO HilosForo (foro_id, estudiante_id, titulo) VALUES (2, 6, 'Iste animi rerum asperiores.');
INSERT INTO HilosForo (foro_id, estudiante_id, titulo) VALUES (1, 10, 'Nostrum magni.');
INSERT INTO HilosForo (foro_id, estudiante_id, titulo) VALUES (9, 4, 'Neque veritatis qui aliquam.');


-- MensajesForo
INSERT INTO MensajesForo (hilo_id, estudiante_id, mensaje) VALUES (10, 4, 'Officiis eum labore corrupti aperiam aut tempore.');
INSERT INTO MensajesForo (hilo_id, estudiante_id, mensaje) VALUES (1, 2, 'Minima culpa fuga eligendi illum excepturi nisi.');
INSERT INTO MensajesForo (hilo_id, estudiante_id, mensaje) VALUES (1, 4, 'Ex nesciunt consequuntur expedita.');
INSERT INTO MensajesForo (hilo_id, estudiante_id, mensaje) VALUES (2, 1, 'Pariatur repudiandae qui placeat.');
INSERT INTO MensajesForo (hilo_id, estudiante_id, mensaje) VALUES (6, 2, 'Deleniti voluptatum culpa eos ratione magni molestiae.');
INSERT INTO MensajesForo (hilo_id, estudiante_id, mensaje) VALUES (9, 4, 'Voluptates iure eligendi fugit minima vitae repellendus.');
INSERT INTO MensajesForo (hilo_id, estudiante_id, mensaje) VALUES (5, 8, 'Assumenda cum ipsum maiores rerum.');
INSERT INTO MensajesForo (hilo_id, estudiante_id, mensaje) VALUES (4, 9, 'Impedit id fugiat.');
INSERT INTO MensajesForo (hilo_id, estudiante_id, mensaje) VALUES (3, 10, 'Consequuntur enim rerum possimus.');
INSERT INTO MensajesForo (hilo_id, estudiante_id, mensaje) VALUES (10, 8, 'Ducimus rerum molestias.');
message.txt
17 KB