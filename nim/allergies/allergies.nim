#[
let
    eggs = 1
    peanuts = 2
    shellfish = 4
    strawberries = 8
    tomatoes = 16
    chocolate = 32
    pollen = 64
    cats = 128 
]#

type
    Allergy* = enum
        Eggs,Peanuts,Shellfish,Strawberries,Tomatoes,Chocolate,Pollen,Cats

proc allergies*(val:int): set[Allergy] =
    for allergy in Allergy:
        if (val and 1 shl ord(allergy)) != 0: 
            result.incl(allergy)

proc isAllergicTo*(val:int,allergy:Allergy): bool =
    allergy in allergies(val)