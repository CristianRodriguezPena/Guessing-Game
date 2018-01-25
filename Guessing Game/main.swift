//
//  main.swift
//  Guessing Game
//
//  Created by Cristian Rodriguez on 1/23/18.
//  Copyright © 2018 Cristian Rodriguez. All rights reserved.
//

import Foundation

//


for o in 1...5 {
    let correct = Int(arc4random_uniform(100))
    print(correct)
    var lastGuess = correct
        for i in 1...50 {
            print("Guess #\(i)?")
            let guess = Int(readLine()!)!
            var out = ""
            
            if correct == guess {
                print("Got it")
                break
            }
            if guess < correct {
                out = "More"
            }
            else {
                out = "Less"
            }
            
            print(Double((guess - correct) * (guess - correct)).squareRoot())
            print(Double(lastGuess / 2))
            if Double((guess - correct) * (guess - correct)).squareRoot() <= Double(correct / 2 * i) {
                out = "Slightly " + out
            }
            else {
                out = "Alot " + out
            }
            print(out)
            lastGuess = guess
    }
    print("The answer was \(correct), Would you like to play again??")
    var maybe = Array(readLine()!.lowercased())
    if maybe.contains("y") {
        if o == 5 {
            print("This is you Fifth time playing, get a life")
        }
    }
    else {
        break
    }
}

















