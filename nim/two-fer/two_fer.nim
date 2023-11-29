import std/strformat

proc twoFer*(name:string = "you"): string =
    &"One for {name}, one for me."
        