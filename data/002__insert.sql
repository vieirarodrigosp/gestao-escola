INSERT INTO BUILDING (name, location) VALUES
('Edifício A', 'Campus Norte'),
('Edifício B', 'Campus Sul'),
('Edifício C', 'Campus Central');

INSERT INTO DEPARTMENT (name, building_id) VALUES
('Matemática', 1),
('Física', 2),
('História', 3);

INSERT INTO TITLE (name) VALUES
('Professor Titular'),
('Professor Assistente');

INSERT INTO PROFESSOR (name, department_id, title_id) VALUES
('Professor A', 1, 1), ('Professor B', 2, 2), ('Professor C', 3, 1), ('Professor D', 1, 2),
('Professor E', 2, 1), ('Professor F', 3, 2), ('Professor G', 1, 1), ('Professor H', 2, 2),
('Professor I', 3, 1), ('Professor J', 1, 2);

INSERT INTO SUBJECT (name, taught_by) VALUES
('Matemática Avançada', 1), ('Física Básica', 1),
('História Moderna', 2), ('Geografia Geral', 2),
('Química Orgânica', 3), ('Biologia Molecular', 3),
('Literatura Brasileira', 4), ('Gramática Avançada', 4),
('Programação Python', 5), ('Banco de Dados', 5),
('Engenharia de Software', 6), ('Redes de Computadores', 6),
('Marketing Digital', 7), ('Publicidade', 7),
('Filosofia Clássica', 8), ('Sociologia Contemporânea', 8),
('Administração Financeira', 9), ('Economia Global', 9),
('Arte Moderna', 10), ('Música Erudita', 10);

INSERT INTO ROOM (name, building_id) VALUES
('Sala 101', 1), ('Sala 102', 1), ('Sala 103', 1),
('Sala 104', 1), ('Sala 105', 1), ('Sala 106', 1);

INSERT INTO CLASS (subject_id) VALUES
(1), (2), (3), (4), (5), (6), (7), (8), (9), (10),
(11), (12), (13), (14), (15), (16), (17), (18), (19), (20);

INSERT INTO CLASS_SCHEDULE (class_id, room_id, day_of_week, start_time, end_time) VALUES
(1, 1, 'Monday', '08:00', '09:30'),
(2, 2, 'Monday', '09:30', '11:00'),
(3, 3, 'Monday', '08:00', '09:30'),
(4, 4, 'Monday', '09:30', '11:00'),
(5, 5, 'Tuesday', '08:00', '09:30'),
(6, 6, 'Tuesday', '09:30', '11:00'),
(7, 1, 'Wednesday', '08:00', '09:30'),
(8, 2, 'Wednesday', '09:30', '11:00'),
(9, 3, 'Thursday', '08:00', '09:30'),
(10, 4, 'Thursday', '09:30', '11:00'),
(11, 5, 'Friday', '08:00', '09:30'),
(12, 6, 'Friday', '09:30', '11:00');