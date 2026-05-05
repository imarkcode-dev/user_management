CREATE EXTENSION IF NOT EXISTS pgcrypto;

CREATE TABLE employee (
	id int4 GENERATED ALWAYS AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 2147483647 START 1 CACHE 1 NO CYCLE) NOT NULL,
	name varchar(255) NOT NULL,
	last_name varchar(255) NOT NULL,
	email varchar(255) NOT NULL,
	phone varchar(255) NULL,
	created_at timestamp DEFAULT CURRENT_TIMESTAMP NULL,
	updated_at timestamp DEFAULT CURRENT_TIMESTAMP NULL,
	CONSTRAINT employee_email_key UNIQUE (email),
	CONSTRAINT employee_pkey PRIMARY KEY (id)
);

CREATE TABLE login (
	id int4 GENERATED ALWAYS AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 2147483647 START 1 CACHE 1 NO CYCLE) NOT NULL,
	user_id int4 NOT NULL,
	username varchar(255) NOT NULL,
	password_hash varchar(255) NOT NULL,
	last_login timestamp DEFAULT CURRENT_TIMESTAMP NULL,
	active bool DEFAULT true NULL,
	created_at timestamp DEFAULT CURRENT_TIMESTAMP NULL,
	updated_at timestamp DEFAULT CURRENT_TIMESTAMP NULL,
	CONSTRAINT login_pkey PRIMARY KEY (id),
	CONSTRAINT login_username_key UNIQUE (username)
);