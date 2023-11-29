proc collatz(num:int) : int =
    if num==1:
        0
    elif num mod 2 == 0:
        num div 2
    else:
        3*num+1

proc steps*(n:int): int {.raises:[ValueError].}=
    if n<=0:
        raise newException(ValueError,"Error") 
    var iterable = n
    while iterable!=1:
        iterable=collatz(iterable)
        inc result
        