//
//  main.swift
//  Guessing Game
//
//  Created by Cristian Rodriguez on 1/23/18.
//  Copyright © 2018 Cristian Rodriguez. All rights reserved.
//

import Foundation

func allPos(num: Int) -> Int {
    return Int(Double(num * num).squareRoot())
}


//for o in 1...5 {
//    let correct = Int(arc4random_uniform(100))
//    var lastGuess = 50
//        for i in 1...5 {
//            print("Guess #\(i) ?")
//            var guess = Int(readLine()!)
//            var out = ""
//            while guess == nil || guess! < 1 || guess! > 100 {
//                print("Ohhh, try again")
//                guess = Int(readLine()!)
//            }
//            let uGuess = guess!
//            if correct == uGuess {
//                print("Got it")
//                break
//            }
//            if uGuess < correct {
//                out = "More"
//            }
//            else {
//                out = "Less"
//            }
//            //print("\(allPos(num: uGuess - correct)) <= \(lastGuess / 2)")
//
//            if allPos(num: uGuess - correct) <= lastGuess / 2 {
//                out = "Slightly " + out
//            }
//            else {
//                out = "Alot " + out
//            }
//            print(out)
//            lastGuess = uGuess
//    }
//    print("Would you like to play again??")
//    if readLine()!.lowercased().contains("yes") {
//        if o == 5 {
//            print("This is you Fifth time playing, get a life")
//            break
//        }
//        print("Lets go again")
//    }
//    else {
//        print("Guess not...")
//        break
//    }
//}


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
        print(random)
        var guess: Int?
        repeat {
            print("Please guess a number 1-100 (#\((11 - self.Maxtries)))")
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
        print("\(allPos(num: uGuess - random)) < \(lastGuess / 2)")
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

var game = GuessingGame(start: 1, end: 100, MaxTries: 10)
game.remember(i: 50, o: 50)
game.Start()






