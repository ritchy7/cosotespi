/* User creation */
CREATE USER vagrant PASSWORD '1234';

/* Database creation */
CREATE DATABASE restaurant WITH ENCODING='UTF8' OWNER=vagrant;

/* ****************** */
/* Tables creation */
/* ****************** */
/* Import UUID generator */
CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

/* Users */
CREATE TABLE IF NOT EXISTS users (
    id          SERIAL PRIMARY KEY,
    username    VARCHAR(200) NOT NULL,
    password    VARCHAR(200) NOT NULL,
    created     timestamp NOT NULL DEFAULT CURRENT_DATE
);

/* Groups */
CREATE TABLE IF NOT EXISTS groups (
    id      SERIAL PRIMARY KEY,
    name    VARCHAR(200) NOT NULL
);

/* Users_groups */
CREATE TABLE users_groups (
    users_id    INTEGER REFERENCES users (id) ON UPDATE CASCADE ON DELETE CASCADE,
    groups_id   INTEGER REFERENCES groups (id) ON UPDATE CASCADE,

    CONSTRAINT users_groups_pkey PRIMARY KEY (users_id, groups_id)
);

/* Permission */
CREATE TABLE IF NOT EXISTS permission (
    id      SERIAL PRIMARY KEY,
    name    VARCHAR(200) NOT NULL
);

/* Groups_permission */
CREATE TABLE groups_permission (
    groups_id          INTEGER REFERENCES groups (id) ON UPDATE CASCADE,
    permission_id      INTEGER REFERENCES permission (id) ON UPDATE CASCADE,

    CONSTRAINT groups_permission_pkey PRIMARY KEY (groups_id, permission_id)
);

/* Address */
CREATE TABLE IF NOT EXISTS address (
    id          SERIAL PRIMARY KEY,
    street      VARCHAR(200) NOT NULL,
    region      VARCHAR(200) NOT NULL,
    city        VARCHAR(200) NOT NULL,
    zip         INTEGER NOT NULL,
    complement  VARCHAR(200)
);

/* Restaurant */
CREATE TABLE IF NOT EXISTS restaurant (
    id          SERIAL PRIMARY KEY,
    name        VARCHAR(200) NOT NULL,
    rank        INTEGER NOT NULL,
    address_id  INTEGER NOT NULL,

    CONSTRAINT fk_address_id FOREIGN KEY (address_id) REFERENCES address(id) ON DELETE CASCADE
);

/* Users_restaurant */
CREATE TABLE users_restaurant (
    users_id        INTEGER REFERENCES users (id) ON UPDATE CASCADE ON DELETE CASCADE,
    restaurant_id   INTEGER REFERENCES restaurant (id) ON UPDATE CASCADE,

    CONSTRAINT users_restaurant_pkey PRIMARY KEY (users_id, restaurant_id)
);

/* Contact */
CREATE TABLE IF NOT EXISTS contact (
    id          SERIAL PRIMARY KEY,
    username    VARCHAR(200) NOT NULL,
    password    VARCHAR(200) NOT NULL,
    email       VARCHAR(200) NOT NULL,
    name        VARCHAR(200),
    lastname    VARCHAR(200)
);

/* Command */
CREATE TABLE IF NOT EXISTS command (
    id              UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    command_date    VARCHAR(200) NOT NULL,
    status          JSONB NOT NULL,
    contact_id      INTEGER NOT NULL,
    bill_number     INTEGER NOT NULL,
    address_id      INTEGER NOT NULL,
    receiver        VARCHAR(200),

    CONSTRAINT fk_contact_id FOREIGN KEY (contact_id) REFERENCES contact(id) ON DELETE CASCADE,
    CONSTRAINT fk_address_id FOREIGN KEY (address_id) REFERENCES address(id) ON DELETE CASCADE
);

/* Recipe */
CREATE TABLE IF NOT EXISTS recipe (
    id          INTEGER PRIMARY KEY,
    name        VARCHAR(200) NOT NULL,
    description VARCHAR(200)
);


/* Command_recipe */
CREATE TABLE command_recipe (
    command_id  UUID REFERENCES command(id) ON UPDATE CASCADE ON DELETE CASCADE,
    recipe_id   INTEGER REFERENCES recipe(id) ON UPDATE CASCADE,

    CONSTRAINT command_recipe_pkey PRIMARY KEY (command_id, recipe_id)
);

/* Ingredient */
CREATE TABLE ingredient (
    id          INTEGER PRIMARY KEY,
    name        VARCHAR(200) NOT NULL,
    stock       INTEGER NOT NULL,
    description TEXT
);

/* Ingredient_list */
CREATE TABLE ingredient_list (
    recipe_id       INTEGER REFERENCES recipe(id) ON UPDATE CASCADE ON DELETE CASCADE,
    ingredient_id   INTEGER REFERENCES ingredient(id) ON UPDATE CASCADE ON DELETE CASCADE,

    CONSTRAINT recipe_ingredient_pkey PRIMARY KEY (recipe_id, ingredient_id)
);
