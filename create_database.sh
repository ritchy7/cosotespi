#!/bin/bash

# Create user.
sudo -u postgres psql -c "CREATE ROLE vagrant LOGIN PASSWORD '1234';"

# Grant the user to SuperUser to install UUID module.
sudo -u postgres psql -c "ALTER USER vagrant WITH SUPERUSER;"


# Create database.
sudo -u postgres psql -c "
    CREATE DATABASE
        restaurant
    WITH ENCODING='UTF8'
    OWNER=vagrant;
"

# Create tables.
PGPASSWORD=1234 psql -U vagrant restaurant < create_table_bdd.sql

# Remove the superuser mode.
sudo -u postgres psql -c "ALTER USER vagrant WITH NOSUPERUSER;"

# Connect to the database.
PGPASSWORD=1234 psql -U vagrant restaurant