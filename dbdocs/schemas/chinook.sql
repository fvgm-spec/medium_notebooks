CREATE TABLE chinook.main.album (
	album_id INTEGER,
	title VARCHAR,
	artist_id INTEGER
);

CREATE TABLE chinook.main.artist (
	artist_id INTEGER,
	name VARCHAR
);

CREATE TABLE chinook.main.customer (
	customer_id INTEGER,
	first_name VARCHAR,
	last_name VARCHAR,
	company VARCHAR,
	address VARCHAR,
	city VARCHAR,
	state VARCHAR,
	country VARCHAR,
	postal_code VARCHAR,
	phone VARCHAR,
	fax VARCHAR,
	email VARCHAR,
	support_rep_id INTEGER
);

CREATE TABLE chinook.main.employee (
	employee_id INTEGER,
	last_name VARCHAR,
	first_name VARCHAR,
	title VARCHAR,
	reports_to INTEGER,
	birth_date DATE,
	hire_date DATE,
	address VARCHAR,
	city VARCHAR,
	state VARCHAR,
	country VARCHAR,
	postal_code VARCHAR,
	phone VARCHAR,
	fax VARCHAR,
	email VARCHAR
);

CREATE TABLE chinook.main.genre (
	genre_id INTEGER,
	name VARCHAR
);

CREATE TABLE chinook.main.invoice (
	invoice_id INTEGER,
	customer_id INTEGER,
	invoice_date DATE,
	billing_address VARCHAR,
	billing_city VARCHAR,
	billing_state VARCHAR,
	billing_country VARCHAR,
	billing_postal_code VARCHAR,
	total DOUBLE
);

CREATE TABLE chinook.main.invoice_line (
	invoice_line_id INTEGER,
	invoice_id INTEGER,
	track_id INTEGER,
	unit_price DOUBLE,
	quantity INTEGER
);

CREATE TABLE chinook.main.media_type (
	media_type_id INTEGER,
	name VARCHAR
);

CREATE TABLE chinook.main.playlist (
	playlist_id INTEGER,
	name VARCHAR
);

CREATE TABLE chinook.main.playlist_track (
	playlist_id INTEGER,
	track_id INTEGER
);

CREATE TABLE chinook.main.track (
	track_id INTEGER,
	name VARCHAR,
	album_id INTEGER,
	media_type_id INTEGER,
	genre_id INTEGER,
	composer VARCHAR,
	milliseconds INTEGER,
	bytes INTEGER,
	unit_price DOUBLE
);