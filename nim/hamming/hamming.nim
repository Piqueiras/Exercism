proc distance*(str1:string,str2:string): int {.raises:[ValueError].} =
    if str1.len!=str2.len:
        raise newException(ValueError,"Error")
    for index in str1.low..str1.high:
        if str1[index]!=str2[index]:
            inc result