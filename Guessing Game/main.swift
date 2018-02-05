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


var game = GuessingGame(start: 1, end: 100, MaxTries: 5)
//game.Start()

for num in 1...10{
    if num % 2 == 0 {
        continue
    }
    print(num)
}




