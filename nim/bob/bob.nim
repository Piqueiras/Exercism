import strutils

let 
    strShout = "Whoa, chill out!"
    strQuestion = "Sure."
    strIndifferent = "Whatever."
    strShoutQuestion = "Calm down, I know what I'm doing!"
    strSilence = "Fine. Be that way!"

proc question(text:string): bool =
    text.strip.endsWith('?')

proc caps(text:string): bool =
    text.toUpperAscii==text and 
    text.contains(Letters)

proc hey*(text:string): string =
    if question(text) and caps(text):
        return strShoutQuestion
    elif question(text):
        return strQuestion
    elif caps(text):
        return strShout

    if text.contains(IdentChars):
        return strIndifferent
    else:
        return strSilence


        
    return "Whatever."