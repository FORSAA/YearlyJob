from ConnectionCreate import *

class OlimpyiadRepository:
    def __init__(self):
        self.connection_string = 'DRIVER={SQL Server};SERVER=.;DATABASE=DATABASE;TRUSTED_CONNECTION=TRUE;'

    def GetAllOlympiades(self):
        connection = getConnection()
        cursor = connection.cursor()
        result = cursor.execute("select * from Olympiad").fetchall()
        connection.close()
        return result
