//
//  guessing with classes.swift
//  Guessing Game
//
//  Created by Cristian Rodriguez on 1/31/18.
//  Copyright © 2018 Cristian Rodriguez. All rights reserved.
//

import Foundation

class GuessingGame {
    var start: Int
    var end: Int
    var Maxtries: Int
    var random = 0
    var lastGuess = 50
    var started = false
    func remember(i: Int, o: Int) {
        lastGuess = o
        random = i
    }
    func Start() {
        if random < self.start {
            random = self.start + Int(arc4random_uniform(UInt32(100)))
            
        }
        var out = ""
        var guess: Int?
        repeat {
            print("Please guess a number 1-100 (#\((6 - self.Maxtries)))")
            print("")
            guess =  Int(readLine()!)
        } while guess == nil || guess! < 1 || guess! > 100
        let uGuess = guess!
        print("")
        if uGuess < random {
            out = "More"
        }
        else if uGuess > random {
            out = "Less"
        }
        if allPos(num: uGuess - random) < lastGuess / 2 {
            out = "Slightly " + out
        }
        else {
            out = "Alot " + out
        }
        if random == uGuess {
            out = "You got it!!"
        }
        print(out)
        if uGuess == random {
        }
        if self.Maxtries == 1 || uGuess == random{
            if self.Maxtries == 1 {
                print("You Lose!!")
            }
            print("Would you like to play again??")
            if readLine()!.lowercased().contains("yes") {
                game = GuessingGame(start: self.start, end: self.end, MaxTries: 5)
                game.Start()
            } else {
                print("Guess not...")
            }
        } else {
            let game = GuessingGame(start: self.start, end: self.end, MaxTries: self.Maxtries - 1)
            game.remember(i: random, o: allPos(num: uGuess - random))
            game.Start()
        }
    }
    init(start: Int, end: Int, MaxTries: Int) {
        self.start = start
        self.end = end
        self.Maxtries = MaxTries
        self.started = false
        self.random = -10
        self.lastGuess = 50
    }
}
