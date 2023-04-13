from Procedures.ConnectionCreate import *
from Procedures.Object.OlimpyiadObject import *
class OlimpyiadRepository:

    def GetOlimpyiad(self):
        connection = getConnection()
        cursor = connection.cursor()
        result = cursor.exec("GetOlimpyiad").fetchall()
        return result

    def GetOlimpyiadById(self, idInt):
        connection = getConnection()
        cursor = connection.cursor()
        result = cursor.exec(f"GetOlimpyiadById {idInt}").fetchall()
        return result

    def GetOlimpyiadesBySubject(self, subjectIdInt):
        connection = getConnection()
        cursor = connection.cursor()
        result = cursor.exec(f"GetOlimpyiadesBySubject {subjectIdInt}").fetchall()
        return result

    def AddOlimpyiad(self, olimpyiadClass):
        connection = getConnection()
        cursor = connection.cursor()
        cursor.exec(f"exec AddOlimpyiad {olimpyiadClass.olimpyiadSubjectIdInt}, {olimpyiadClass.olimpyiadNameStr}, {olimpyiadClass.olimpyiadDateStr}")
        cursor.commit()
