from Procedures.ConnectionCreate import *

class CommentRepository:

    def GetStudentComment(self):
        connection = getConnection()
        cursor = connection.cursor()
        result = cursor.exec("GetStudentComment").fetchall()
        return result

    def GetStudentCommentById(self, idInt):
        connection = getConnection()
        cursor = connection.curso()
        result = cursor.exec(f"GetStudentCommentById {idInt}").fetchall()
        return result

    def AddComment(self, studentIdInt, commentStr350):
        if(len(commentStr350)>350):
            raise Exception("String lenght is so long (>350)")
        else:
            connection = getConnect()
            cursor = connection.cursor()
            cursor.exec(f"AddComment {studentIdInt}, {commentStr350}")
            cursor.commit()

    def UpdateComment(self, tudentIdInt, commentStr350):
        if(len(commentStr350)>350):
            raise Exception("String lenght is so long (>350)")
        else:
            connection = getConnect()
            cursor = connection.cursor()
            cursor.exec(f"UpdateComment {studentIdInt}, {commentStr350}")
            cursor.commit()