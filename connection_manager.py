from typing import List, Dict

import pyodbc

conn = {}


def get_connection(server, database, user=None, password=None) -> pyodbc.Connection:
    conn_prop = (server, database, user, password)
    global conn

    if conn_prop in conn:
        return conn[conn_prop]
    else:
        if user:
            conn_str = 'DRIVER={{ODBC Driver 17 for SQL Server}};SERVER={server};DATABASE={database};UID={user};PWD={password}'.format(
                server=server, database=database, user=user, password=password)
        else:
            conn_str = 'DRIVER={{ODBC Driver 17 for SQL Server}};SERVER={server};DATABASE={database};Trusted_Connection=yes'.format(
                server=server, database=database)
        conn[conn_prop] = pyodbc.connect(conn_str)
        return conn[conn_prop]


def execute_query(qry: str, params: List, server, database, user=None, password=None) -> List[Dict]:
    conn = get_connection(server, database, user, password)
    curs: pyodbc.Cursor = conn.cursor()
    if params:
        curs.execute(qry, params)
    else:
        curs.execute(qry)
    columns = [key[0] for key in curs.description]
    return rows_to_json(curs.fetchall(), columns)


def rows_to_json(rows: List[pyodbc.Row], columns) -> List[Dict]:
    dict_rows = []
    for row in rows:
        dict_rows.append(dict(zip(columns, row)))
    return dict_rows
