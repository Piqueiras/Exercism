proc collatz(num:int) : int =
    if num==1:
        0 #Returns
    elif num mod 2 == 0:
        num div 2 #Are
    else:
        3*num+1 #Unnecessary

var register : seq[seq[int]]
var n : int

for i in 1..100:
    register.add(@[i])
    n = i
    while n!=0:
        n=collatz(n)
        register[^1].add(n) #This is better cause we dont have to index by 'i', just go to the last one


import strformat
for i,num in register:
    echo &"{i+1}: {num.len-1}"