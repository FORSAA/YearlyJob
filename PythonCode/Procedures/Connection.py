import pyodbc
from ConnectionOption import *

def getConnection():
    Option = ConnectionOption()
    connection = pyodbc.connect(Option.connection_string, timeout=100)
    return connection