from Procedures.ConnectionCreate import *
from Procedures.Object.Student_OlimpyiadObject import *

class Student_OlimpyiadRepository:

    def GetStudent_Olimpyiad(self):
        connection = getConnection()
        cursor = connection.cursor()
        result = cursor.exec("GetStudent_Olimpyiad").fetchall()
        return result

    def GetStudent_OlimpyiadByStudentId(self, idInt):
        connection = getConnection()
        cursor = connection.cursor()
        result = cursor.exec(f"GetStudent_OlimpyiadByStudentId {idInt}").fetchall()
        return result

    def GetStudent_OlimpyiadByOlimpyiadId(self, idInt):
        connection = getConnection()
        cursor = connection.cursor()
        result = cursor.exec(f"GetStudent_OlimpyiadByOlimpyiadId {idInt}").fetchall()
        return result

    def AddStudent_OlimpyiadIdsAndPoints(self, student_OlimpyiadClass):
        connection = getConnection()
        cursor = connection.cursor()
        cursor.exec(f"AddStudent_OlimpyiadIdsAndPoints {student_OlimpyiadClass.studentIdInt}, {student_OlimpyiadClass.olimpyiadIdInt}, {student_OlimpyiadClass.pointsInt}")
        cursor.commit()

    def UpdateStudent_Olimpyiad(self, oldStudent_OlimpyiadClass, newOlimpyiadIdInt=None, newStudentIdInt=None, pointsInt=None):
        connection = getConnection()
        cursor = connection.cursor()
        cursor.exec(f"UpdateStudent_Olimpyiad {oldStudent_OlimpyiadClass.olimpyiadIdInt}, {oldStudent_OlimpyiadClass.studentIdInt}, {newOlimpyiadIdInt}, {newStudentIdInt}, {pointsInt}")
        cursor.commit()
