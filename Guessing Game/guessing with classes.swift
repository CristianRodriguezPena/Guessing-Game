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
    var random: Int
    var lastGuess = 50
    func remember(i: Int, o: Int) {
        lastGuess = o
        random = i
    }
    func Start() {
        if random < self.start {
            random = self.start + Int(arc4random_uniform(UInt32((self.end - self.start))))
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
        print("within \(allPos(num: uGuess - random) - lastGuess / 2)")
        out = (allPos(num: uGuess - random) < (lastGuess / 2) ? "Slightly" :"Alot")
        out = out + " \(uGuess < random ? "more" : "less")"
        out = (uGuess == random ? "You got it!!" : out)
        print(out)
        if self.Maxtries == 1 || uGuess == random {
            if self.Maxtries == 1 && out != "You got it!!"{
                print("You Lose, it was \(random)")
            }
            print("Would you like to play again??")
            if readLine()!.lowercased().contains("yes") {
                game = GuessingGame(start: self.start, end: self.end, MaxTries: 5)
                game.Start()
            } else {
                print("ok...")
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
        self.random = self.start - 1
        self.lastGuess = 50
    }
}
