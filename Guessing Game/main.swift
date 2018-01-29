//
//  main.swift
//  Guessing Game
//
//  Created by Cristian Rodriguez on 1/23/18.
//  Copyright © 2018 Cristian Rodriguez. All rights reserved.
//

import Foundation

func find(In: String, Every: String, Ext: String) -> String {
    for i in 0...In.count {
        if String(In[i]) == Every
    }

//func limiter(in: String) -> String {
//
//}

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
//            while guess! == nil || guess! < 1 || guess! > 100 {
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

var dateStart = Date()
//print("2 is a prime.")
var total = 1
var max = 100000
//for i in 3...max {
//    var out = true
//    for o in 2...i - 1 {
//        if i % o == 0 {
//            out = false
//        }
//    }
//    if out {
//        total += 1
//        print("\(i) is prime.")
//    }
//}
//print("")
//print("there are \(total) prime numbers")
//print("")
//print("Start: \(dateStart)")
//print("End: \(Date())")
//print("")
//
dateStart = Date()

total = 1
max = 100000
//var list = [2]
//for i in 3...max {
//    var out = true
//    for o in 0...list.count - 1 {
//        //print(list.count)
//        if i % list[o] == 0 {
//            out = false
//        }
//    }
//    if out {
//        total += 1
//        //print("\(i) is prime.")
//        list.append(i)
//    }
//}
//print("")
//print(list)
//print("")
//print("there are \(total) prime numbers")
//print("")
//print("Start: \(dateStart)")
//print("")
//print("End: \(Date())")
//print("")

//while true {
//    let correct = Int(arc4random_uniform(100))
//    for i in 1...5 {
//        var guess: String?
//        repeat {
//            print("Guess a #\(i)")
//            guess = readLine()
//        } while Int(guess!) == nil || Int(guess!) > 100 || Int(guess!) < 1 {
//
//        let uGuess = Int(guess!)!
//        if uGuess == correct {
//            print("Correct")
//            break
//        }
//        if uGuess > correct {
//            print("Lower")
//        } else {
//            print("Higher")
//        }
//    }
//    print("Wanna play again?")
//    if readLine()!.lowercased().contains("yes") {
//        print("Lets go agian!!")
//    }
//    else {
//        print("Guess not...")
//        break
//    }
//}










