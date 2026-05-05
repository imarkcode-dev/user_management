INSERT INTO employee
(id, name, last_name, email, phone, created_at, updated_at)
VALUES(1, 'Anakin', 'Skywalker', 'lordvader@gmail.com', '666-9990', '2026-04-28 19:45:17.038', '2026-04-28 19:45:17.038');

INSERT INTO login
(id, user_id, username, password_hash, last_login, active, created_at, updated_at)
VALUES(1, 1, 'vader', crypt('dark123', gen_salt('bf')), '2026-04-28 20:06:12.316', true, '2026-04-28 20:06:12.316', '2026-04-28 20:06:12.316');

