from Procedures.ConnectionCreate import *
from Procedures.Object.StudentObject import *

class StudentRepository:

    def GetStudents(self):
        connection = getConnection()
        cursor = connection.cursor()
        result = cursor.exec("exec GetStudents").fetchall()
        return result

    def GetStudentById(self, idInt):
        connection = getConnection()
        cursor = connection.cursor()
        result = cursor.exec(f"exec GetStudentById {idInt}").fetchall()
        return result

    def GetAllStudentOlimpyiades(self, idInt):
        connection = getConnection()
        cursor = connection.cursor()
        result = cursor.exec(f"exec GetAllStudentOlimpyiades").fetchall()
        return result

    def AddStudent(self, studentClass):
        connection = getConnection()
        cursor = connection.cursor()
        cursor.exec(f"exec AddStudent {studentClass.Name}, {studentClass.Surname}, {studentClass.Fatherhood}, {studentClass.Class}")
        cursor.commit()

    def UpdateStudentById(self,idInt, studentClass):
        connection = getConnection()
        cursor = connection.cursor()
        cursor.exec(f"exec UpdateStudentById {idInt}, {studentClass.Name}, {studentClass.Surname}, {studentClass.Fatherhood}, {studentClass.Class}")
        cursor.commit()