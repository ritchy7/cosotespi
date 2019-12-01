/* Import UUID generator module */
CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

/* ****************** */
/* Tables creation */
/* ****************** */
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
CREATE TABLE IF NOT EXISTS users_groups (
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
CREATE TABLE IF NOT EXISTS groups_permission (
    groups_id          INTEGER REFERENCES groups (id) ON UPDATE CASCADE,
    permission_id      INTEGER REFERENCES permission (id) ON UPDATE CASCADE,

    CONSTRAINT groups_permission_pkey PRIMARY KEY (groups_id, permission_id)
);


/* Address */
CREATE TABLE IF NOT EXISTS address (
    id          SERIAL PRIMARY KEY,
    receiver    VARCHAR(200),
    street      VARCHAR(200) NOT NULL,
    region      VARCHAR(200) NOT NULL,
    city        VARCHAR(200) NOT NULL,
    zip         INTEGER NOT NULL,
    complement  VARCHAR(200)
);


/* Restaurant */
CREATE TABLE IF NOT EXISTS restaurant(
    id          SERIAL PRIMARY KEY,
    name        VARCHAR(200) NOT NULL,
    rank        INTEGER NOT NULL,
    address_id  INTEGER NOT NULL,

    CONSTRAINT fk_address_id FOREIGN KEY (address_id) REFERENCES address(id) ON DELETE CASCADE
);


/* Users_restaurant */
CREATE TABLE IF NOT EXISTS users_restaurant (
    users_id        INTEGER REFERENCES users(id) ON UPDATE CASCADE ON DELETE CASCADE,
    restaurant_id   INTEGER REFERENCES restaurant(id) ON UPDATE CASCADE,

    CONSTRAINT users_restaurant_pkey PRIMARY KEY (users_id, restaurant_id)
);


/* customer */
CREATE TABLE IF NOT EXISTS customer (
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
    command_date    timestamp NOT NULL DEFAULT CURRENT_DATE,
    status          VARCHAR(200) NOT NULL,
    position        JSONB NOT NULL,
    customer_id     INTEGER NOT NULL,
    address_id      INTEGER NOT NULL,
    restaurant_id   INTEGER NOT NULL,
    delivery_rate   DECIMAL,
    command_rate    DECIMAL,
    bill_number     INTEGER NOT NULL,
    price           FLOAT NOT NULL,
    payment_method  INTEGER NOT NULL,
    on_site         BOOLEAN NOT NULL,
    comment         TEXT,

    CONSTRAINT fk_customer_id FOREIGN KEY (customer_id) REFERENCES customer(id) ON DELETE CASCADE,
    CONSTRAINT fk_address_id FOREIGN KEY (address_id) REFERENCES address(id) ON DELETE CASCADE,
    CONSTRAINT fk_restaurant_id FOREIGN KEY (restaurant_id) REFERENCES restaurant(id) ON DELETE CASCADE
);


/* Recipe */
CREATE TABLE IF NOT EXISTS recipe (
    id          SERIAL PRIMARY KEY,
    name        VARCHAR(200) NOT NULL,
    description TEXT
);


/* Command_recipe */
CREATE TABLE IF NOT EXISTS command_recipe (
    command_id  UUID REFERENCES command(id) ON UPDATE CASCADE ON DELETE CASCADE,
    recipe_id   INTEGER REFERENCES recipe(id) ON UPDATE CASCADE,

    CONSTRAINT command_recipe_pkey PRIMARY KEY (command_id, recipe_id)
);


/* Ingredient */
CREATE TABLE IF NOT EXISTS ingredient (
    id          SERIAL PRIMARY KEY,
    name        VARCHAR(200) NOT NULL,
    stock       INTEGER NOT NULL,
    description TEXT
);


/* Recipe_ingredient */
CREATE TABLE IF NOT EXISTS recipe_ingredient (
    recipe_id       INTEGER REFERENCES recipe(id) ON UPDATE CASCADE ON DELETE CASCADE,
    ingredient_id   INTEGER REFERENCES ingredient(id) ON UPDATE CASCADE ON DELETE CASCADE,

    CONSTRAINT recipe_ingredient_pkey PRIMARY KEY (recipe_id, ingredient_id)
);


/* Restaurant_ingredient */
CREATE TABLE IF NOT EXISTS restaurant_ingredient (
    restaurant_id   INTEGER REFERENCES restaurant(id) ON UPDATE CASCADE ON DELETE CASCADE,
    ingredient_id   INTEGER REFERENCES ingredient(id) ON UPDATE CASCADE ON DELETE CASCADE,

    CONSTRAINT restaurant_ingredient_pkey PRIMARY KEY (restaurant_id, ingredient_id)
);
