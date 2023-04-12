from ConnectionCreate import *

class OlimpyiadRepository:
    def __init__(self):
        self.connection_string = 'DRIVER={SQL Server};SERVER=.;DATABASE=YearlyJob;TRUSTED_CONNECTION=TRUE;'

    def GetAllOlimpyiades(self):
        connection = getConnection()
        cursor = connection.cursor()
        result = cursor.execute("exec GetOlimpyiades").fetchall()
        connection.close()
        return result

    def GetOlimpyiadById(self, idInt):
        connection = getConnection()
        cursor = connection.cursor()
        result = cursor.execute(f"exec GetOlimpyiadById {idInt}").fetchall()
        connection.close()
        return result

    def GetOlimpyiadSubjects(self):
        connection = getConnection()
        cursor = connection.cursor()
        result = cursor.execute("exec GetOlimpyiadSubjects").fetchall()
        connection.close()
        return result