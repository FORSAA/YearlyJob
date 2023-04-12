from ImportAll import *

Ol = OlimpyiadRepository()
Subj = SubjectRepository()
# for i in Ol.GetOlimpyiadSubjects():
#     print(i)

for i in Subj.GetSubjectById(3):
    print(i)


