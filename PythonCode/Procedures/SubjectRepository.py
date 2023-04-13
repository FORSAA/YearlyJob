from Procedures.ConnectionCreate import *

class SubjectRepository:

    def GetOlimpyiadSubjects(self):
        connection = getConnection()
        cursor = connection.cursor()
        result = cursor.exec("exec GetOlimpyiadSubjects").fetchall()
        return result

    def GetOlimpyiadSubjectById(self, idInt):
        connection = getConnection()
        cursor = connection.cursor()
        result = cursor.exec(f"GetOlimpyiadSubjectById {idInt}").fetchall()
        return result

    def GetSubjectBySubjectName(self, subjectNameStr50):
        if(len(subjectNameStr50)>50):
            raise Exception("SubjectName is so long (>50)")
        else:
            connection = getConnection()
            cursor = connection.cursor()
            result = cursor.exec(f"GetSubjectBySubjectName {subjectNameStr50}")
            return result

    def AddOlimpyiadSubject(self, subjectName):
        connection = getConnection()
        cursor = connection.cursor()
        cursor.exec(f"AddOlimpyiadSubject {subjectName}")