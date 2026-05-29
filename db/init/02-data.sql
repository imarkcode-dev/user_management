
INSERT INTO login
(user_id, username, password_hash, active)
VALUES(1, 'vader', crypt('dark123', gen_salt('bf')), true);

INSERT INTO employee
(name, last_name, email, phone)
VALUES(	'Anakin', 'Skywalker', 'lordvader@gmail.com', '666-9990');

INSERT INTO public.employee
(created_at, email, last_name, "name", phone, updated_at)
VALUES('2026-05-28 19:18:49.050', 'mlopez@gmail.com', 'Lopez', 'Mario', '777-1230', '2026-05-28 19:18:49.050');

INSERT INTO public.employee
(created_at, email, last_name, "name", phone, updated_at)
VALUES('2026-05-28 19:18:49.050', 'manuela.a@outlook', 'Andrade', 'Manuel', '777-1231', '2026-05-28 19:18:49.050');

INSERT INTO public.employee
(created_at, email, last_name, "name", phone, updated_at)
VALUES('2026-05-28 19:18:49.050', 'jesus.torres@outlook', 'Torres', 'Jesus', '777-1232', '2026-05-28 19:18:49.050');

INSERT INTO public.employee
(created_at, email, last_name, "name", phone, updated_at)
VALUES('2026-05-28 19:18:49.050', 'silvia.silvan@yahoo', 'Silvan', 'Silvia', '777-1233', '2026-05-28 19:18:49.050');

INSERT INTO public.employee
(created_at, email, last_name, "name", phone, updated_at)
VALUES('2026-05-28 19:18:49.050', 'norma.perez@outlook.com', 'Perez', 'Norma', '777-1234', '2026-05-28 19:18:49.050');

INSERT INTO public.employee
(created_at, email, last_name, "name", phone, updated_at)
VALUES('2026-05-28 19:18:49.050', 'dorantes.irma@outlook.com', 'Dorantes', 'Irma', '777-1235', '2026-05-28 19:18:49.050');

INSERT INTO public.employee
(created_at, email, last_name, "name", phone, updated_at)
VALUES('2026-05-28 19:18:49.050', 'luis.feria@outlook.com', 'Feria', 'Luis', '777-1236', '2026-05-28 19:18:49.050');

INSERT INTO public.employee
(created_at, email, last_name, "name", phone, updated_at)
VALUES('2026-05-28 19:18:49.050', 'calors.fernandez@outlook.com', 'Fernandez', 'Carlos', '777-1237', '2026-05-28 19:18:49.050');

INSERT INTO public.employee
(created_at, email, last_name, "name", phone, updated_at)
VALUES('2026-05-28 19:18:49.050', 'ruben_aguirre@outlook.com', 'Aguirre', 'Ruben', '777-1238', '2026-05-28 19:18:49.050');