#!/bin/bash

# Create user.
echo "################################################################"
echo "######################## Create user ###########################"
echo "################################################################"
sudo -u postgres psql -c "CREATE ROLE vagrant LOGIN PASSWORD '1234';"

echo "################################################################"
echo "################## Grant user to superuser #####################"
echo "################################################################"
# Grant the user to SuperUser to install UUID module.
sudo -u postgres psql -c "ALTER USER vagrant WITH SUPERUSER;"


echo "################################################################"
echo "###################### Create database #########################"
echo "################################################################"
# Create database.
sudo -u postgres psql -c "
    CREATE DATABASE
        restaurant
    WITH ENCODING='UTF8'
    OWNER=vagrant;
"

echo "################################################################"
echo "####################### Create tables ##########################"
echo "################################################################"
# Create tables.
PGPASSWORD=1234 psql -U vagrant restaurant < create_table_bdd.sql

echo "################################################################"
echo "################## Remove to user superuser ####################"
echo "################################################################"
# Remove the superuser mode.
sudo -u postgres psql -c "ALTER USER vagrant WITH NOSUPERUSER;"

echo "################################################################"
echo "################### Connecting to database #####################"
echo "################################################################"
# Connect to the database.
PGPASSWORD=1234 psql -U vagrant restaurant