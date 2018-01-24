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
    var lastGuess = 0
        for i in 1...5 {
            print("Guess #\(i):?")
            let guess = Int(readLine()!)
            var out = ""
            if correct > 100 {
                out = "More"
            }
            if correct < 100 {
                out = "Less"
            }
            if correct == correct  {
                out += " Slightly"
            }
            else {
                out += " Alot"
            }
            if correct == guess {
                print("Got it")
                break
            }
    }
    print("Would you like to play again??")
}

















