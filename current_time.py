import re

times = ["12:59:59", "12:20:20","21:23","24:60:70"]

for time in times:
    x = re.search("^(?:[01]\d|2[0-3]):[0-5]\d:[0-5]\d$", time) 
    print("REGEX RESULT ",bool(x))