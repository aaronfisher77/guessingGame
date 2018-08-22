//
//  main.swift
//  guessingGame
//
//  Created by Aaron Fisher on 8/20/18.
//  Copyright © 2018 Aaron Fisher. All rights reserved.
//

import Foundation


print("Hey! Welcome to the Guessing Game!\nIn this game you will be guessing a number from 1-100!" )
var gameLoop = 0

while gameLoop <= 1{
    while gameLoop == 0 {
        print("Would you like to play? (Yes/No)")
        let gameStart = readLine()
        if gameStart == "Yes" || gameStart == "yes"{
            print("Awesome!")
            var counter = 6
            let randomNumber = Int(arc4random_uniform(100))
            print("Please guess a number between 0 and 100!")
            while counter != 0{
                var answer = Int(readLine()!)
                if answer == nil {
                    while answer == nil {
                        print("Please enter a number.")
                        answer = Int(readLine()!)
                    }
                }
            
                if answer == randomNumber{
                    print("Congratulations! You won!")
                    print("Thanks for playing my game!")
                    counter -= 1
                }else if counter == 1 {
                    print("The correct number was \(randomNumber). Better luck next time")
                    counter -= 1
                }else if answer! < randomNumber{
                    counter -= 1
                    print("Not quite, that's too low. You have \(counter) tries left")
                }else if answer! > randomNumber{
                    counter -= 1
                    print("Not quite, that's too high. You have \(counter) tries left")
                    }
            }
        }else if gameStart == "No" || gameStart == "no" {
            print("That's to bad")
            gameLoop = 7
        }else{
            print("That was not a good answer, try again.")
        }

    }

    while gameLoop == 1 {
        print("Would you like to play again? (Yes/No)")
        let gameStart = readLine()
        if gameStart == "Yes" || gameStart == "yes"{
            print("Awesome!")
            var counter = 5
            let randomNumber = Int(arc4random_uniform(100))
            print("Please guess a number between 0 and 100!")
            while counter != 0{
                var answer = Int(readLine()!)
                if answer == nil {
                    while answer == nil {
                        print("Please enter a number.")
                        answer = Int(readLine()!)
                    }
                }
                
                if answer == randomNumber{
                    print("Congratulations! You won!")
                    print("Thanks for playing my game!")
                    counter -= 1
                }else if counter == 1 {
                    print("The correct number was \(randomNumber). Better luck next time!")
                    counter -= 1
                }else if answer! < randomNumber{
                    counter -= 1
                    print("Not quite, that's a too low.You have \(counter) tries left")
                }else if answer! > randomNumber{
                    counter -= 1
                    print("Not quite, that's too high. You have \(counter) tries left")
                }
            }
        }else if gameStart == "No" || gameStart == "no" {
            print("That's to bad")
            gameLoop = 7
        }else{
            print("That was not a good answer, try again.")
        }
        
    }

}

print("Come again!")

