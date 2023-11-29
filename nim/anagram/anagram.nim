import strutils

#[
    If you assign every letter a different prime value, you can multiply the letters of a word
    and thanks to fundamental theorem of arithmetics two words will be anagrams if and only if
    they hame the same prime value.
    This might be very random and overly complicated, though
]#

const primes: array['a'..'z', int] = 
    ['a':2, 'b':3, 'c':5, 'd':7, 'e':11, 'f':13, 'g':17, 'h':19, 'i':23, 'j':29, 
    'k':31, 'l':37, 'm':41, 'n':43, 'o':47, 'p':53, 'q':59, 'r':61, 's':67,
    't':71, 'u':73, 'v':79, 'w':83, 'x':89, 'y':97, 'z':101]

proc primeValue(word:string): int =
    result=1
    for letter in word:
        result*=primes[letter]

proc isAnagram(word1:string, word2:string): bool =
    if word1.toLower==word2.toLower:
        return false
    return primeValue(word1.toLower)==primeValue(word2.toLower)
        
proc detectAnagrams*(word:string, candidates:seq[string]): seq[string] =
    for candidateString in candidates:
        for candidateWord in candidateString.split({' '}):
            if isAnagram(word, candidateWord):
                result.add(candidateWord)