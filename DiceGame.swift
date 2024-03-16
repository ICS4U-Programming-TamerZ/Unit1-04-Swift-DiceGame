//
//  DiceGame.swift
//
//  Created by Tamer Zreg
//  Created on 2024-03-04
//  Version 1.0
//  Copyright (c) Tamer Zreg. All rights reserved.
//
// This program is a Dice Game from 1 to 6.
// The user has to guess the random number generated between 1 and 6.

// Import Foundation module
import Foundation

// Print statement asking the user to enter their number
print("This program is a Dice Game from 1 to 6.")
print("Please Enter Your Number: ")

// Loop until the user guesses the correct number
var guessedCorrectly = false
// Generate a random number between 1 and 6
let randomNumber = Int.random(in: 1...6)

while !guessedCorrectly {
    // Prompt user for input
    if let userInput = readLine(), let userNumber = Int(userInput) {
        // Check if the entered input is within the range
        if userNumber > 0 && userNumber < 7 {
            // Check if the user guessed the correct number
            if userNumber == randomNumber {
                print("YOU GUESSED IT! CONGRATULATIONS!")
                print("Correct! You guessed the random number.")
                guessedCorrectly = true
            } else {
                // Provide hints to the user based on their input
                if userNumber > randomNumber {
                    print("Lower")
                } else {
                    print("Higher")
                }
            }
        } else {
            // If the entered number is not within the valid range, print an error message
            print("Must be in the range 1 to 6.")
        }
    } else {
        // If the input cannot be converted to an integer, print an error message
        print("Invalid input. Please enter a valid number.")
    }
}
