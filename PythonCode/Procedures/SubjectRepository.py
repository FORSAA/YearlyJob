from ConnectionCreate import *

class SubjectRepository:
    def __init__(self):
        self.connection_string = 'DRIVER={SQL Server};SERVER=.;DATABASE=YearlyJob;TRUSTED_CONNECTION=TRUE;'

    def GetSubjectById(self, idInt):
        connection = getConnection()
        cursor = connection.cursor()
        result = cursor.execute(f"exec GetSubjectById {idInt}").fetchall()
        connection.close()
        return result