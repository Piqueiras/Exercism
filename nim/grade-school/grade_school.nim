import std/algorithm

type
  Student* = tuple[name: string, grade: int]
  School* = object
    students*: seq[Student]

proc grade*(school:School,grade:int): seq[string] =
    for student in school.students:
        if student.grade==grade:
            result.add(student.name)
    result.sort()

proc roster*(school:School): seq[string] =
    var i=1
    while i<8:
        result &= school.grade(i)
        inc i
        

proc addStudent*(school:var School,name:string,grade:int): void {.raises:[ValueError].} =
    if name in school.roster:
        raise newException(ValueError,"Error")
    school.students.add((name,grade))
        

