import std/strutils
proc isPangram*(word:string): bool =
    var alphabet = {'a' .. 'z'}
    for letter in word.toLower():
        alphabet.excl(letter)
    alphabet.len==0