import sqlite3
from pathlib import Path
from typing import Any

DB_PATH = Path(__file__).parent / "rescue.db"

# make a query to the db and return the fetched rows
# or insert as well
def query(sql: str, values: tuple[str, ...] | tuple[()] = ()) -> list[Any]:
    connection = sqlite3.connect(DB_PATH)
    connection.row_factory = sqlite3.Row
    rows = connection.execute(sql, values).fetchall()
    connection.close()
    return rows

# fetches all dogs
def get_dogs() -> list[Any]:
    sql_query: str = '''
        SELECT * 
        FROM dogs
        ORDER BY name ASC, breed ASC
    '''
    return query(sql_query)

# fetches all cats
def get_cats():
    sql_query: str = '''
        SELECT * 
        FROM cats
        ORDER BY name ASC, breed ASC
    '''
    # should return a list of length 5 
    # items are ordered like this: id, name, age, breed, description in that order
    return query(sql_query)
