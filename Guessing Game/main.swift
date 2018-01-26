//
//  main.swift
//  Guessing Game
//
//  Created by Cristian Rodriguez on 1/23/18.
//  Copyright © 2018 Cristian Rodriguez. All rights reserved.
//

import Foundation

//func wordList(In: String, Every: String) -> String {
//    var out = [""]
//}

//func limiter(in: String) -> String {
//
//}

func allPos(num: Int) -> Int {
    return Int(Double(num * num).squareRoot())
}

for o in 1...5 {
    let correct = Int(arc4random_uniform(100))
    //print(correct)
    var lastGuess = 50
        for i in 1...5 {
            print("Guess #\(i) ?")
            var guess = readLine()
            var out = ""
            while Int(guess!) == nil {
                print("Ohhh, try again")
                guess = readLine()
            }
            let uGuess = Int(guess!)!
            if correct == uGuess {
                print("Got it")
                break
            }
            if uGuess < correct {
                out = "More"
            }
            else {
                out = "Less"
            }
            //print("\(allPos(num: uGuess - correct)) <= \(lastGuess / 2)")

            if allPos(num: uGuess - correct) <= lastGuess / 2 {
                out = "Slightly " + out
            }
            else {
                out = "Alot " + out
            }
            print(out)
            lastGuess = uGuess
    }
    print("The answer was \(correct), Would you like to play again??")
    if readLine()!.lowercased().contains("yes") {
        if o == 5 {
            print("This is you Fifth time playing, get a life")
        }
    }
    else {
        print("Guess not...")
        break
    }
}

print("2 is a prime.")
var total = 1
var max = 100000
for i in 3...max {
    var out = true
    for o in 2...i - 1 {
        if i % o == 0 {
            out = false
        }
    }
    if out {
        total += 1
        print("\(i) is a prime.")
    }
}
print("there are \(total) prime numbers")


var quit = false
while quit == false {
    var correct = Int(arc4random_uniform(100))
    print(correct)
    for i in 1...5 {
        var guess: String?
        repeat {
            print("Guess a #\(i)")
            guess = readLine()
        } while guess! == nil
        
        let uGuess = Int(guess!)!
        if uGuess == correct {
            print("Correct")
            break
        }
        if uGuess > correct {
            print("Lower")
        } else {
            print("Higher")
        }
    }
    quit = true
}










