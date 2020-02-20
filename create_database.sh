#!/bin/bash
# Create user.
echo "################################################################"
echo "######################## Create user ###########################"
echo "################################################################"
psql postgres -c "CREATE ROLE pengine LOGIN PASSWORD '1234';"


# Grant the user to SuperUser to install UUID module.
echo "################################################################"
echo "################## Grant user to superuser #####################"
echo "################################################################"
psql postgres -c "ALTER USER pengine WITH SUPERUSER;"


# Create database.
echo "################################################################"
echo "###################### Create database #########################"
echo "################################################################"
psql postgres -c "
    CREATE DATABASE
        restaurant
    WITH ENCODING='UTF8'
    OWNER=pengine;
"


# Create tables.
echo "################################################################"
echo "####################### Create tables ##########################"
echo "################################################################"
PGPASSWORD=1234 psql -U pengine restaurant < create_table_bdd.sql


# Remove the superuser mode.
echo "################################################################"
echo "################## Remove to user superuser ####################"
echo "################################################################"
psql postgres -c "ALTER USER pengine WITH NOSUPERUSER;"


# Insert the data.
echo "################################################################"
echo "##################### Insert the data ##########################"
echo "################################################################"
PGPASSWORD=1234 psql -U pengine restaurant < insertion_script_bdd.sql
