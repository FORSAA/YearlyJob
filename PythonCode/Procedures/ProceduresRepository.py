import pyodbc
from Connection import getConnection

class OlympiadRepository:
    def __init__(self):
        self.connection_string = 'DRIVER={SQL Server};SERVER=.;DATABASE=DATABASE;TRUSTED_CONNECTION=TRUE;'

    def getAllOlympiades(self):
        connection = getConnection()
        cursor = connection.cursor()
        result = cursor.execute("select * from Olympiad").fetchall()
        connection.close()
        return result