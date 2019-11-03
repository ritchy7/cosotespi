from faker import Faker
import psycopg2

fake = Faker()

try:
    conn = psycopg2.connect(
        user="vagrant",
        password="1234",
        host="127.0.0.1",
        port="5432",
        database="restaurant"
    )
except Exception:
    print('Can\'t connect to the database')

cur = conn.cursor()


try:
    # Insert all data.
    query_users = "INSERT INTO Users (id, username, password) VALUES (%s, %s, %s);"
    values = [
        [1, "Pizzaiolo", "54dsa4d5a"],
        [2, "Patricia", "d65s4a894d6"],
        [3, "Deliverer", "84d6as541d86w"],
        [4, "", "wdqdwqeqwe56"]
    ]
    for _ in values:
        cur.execute(query, _)

    conn.commit()
except Exception:
    pass
#     pass
