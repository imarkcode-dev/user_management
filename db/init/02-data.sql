INSERT INTO employee
(name, last_name, email, phone)
VALUES(	'Anakin', 'Skywalker', 'lordvader@gmail.com', '666-9990');

INSERT INTO login
(user_id, username, password_hash, active)
VALUES(1, 'vader', crypt('dark123', gen_salt('bf')), true);