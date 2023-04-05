DROP TABLE IF EXISTS items;
DROP TABLE IF EXISTS notes;
DROP TABLE IF EXISTS users;

create table users
(
id serial primary key,
email varchar(128) not null,
hashed_password varchar(255) not null,
is_active boolean default true
);

create table notes
(
id serial primary key,
text varchar(255) not null,
is_completed boolean default false
);


create table items
(
id serial primary key,
title varchar(255) not null,
description varchar(255),
owner_id integer REFERENCES users(id)
);

