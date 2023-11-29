import intsets

proc sum*(max: int, mults: seq[int]): int =
    var multiplesSet: IntSet
    for elem in mults:
        if elem == 0: continue
        var i = 1
        while i*elem < max:
            multiplesSet.incl(i*elem)
            inc i
    for elem in multiplesSet:
        result+=elem
