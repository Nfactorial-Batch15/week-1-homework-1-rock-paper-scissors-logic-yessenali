//
//  main.swift
//  HomeWork1
//
//  Created by Yessenali Zhanaidar on 30.11.2021.
//

import Foundation

class PLayers {

enum Choice: String {
    case rock = "rock"
    case paper = "paper"
    case scissors = "scissors"

static func randomChoice() -> Choice {
    let choices: [Choice] = [ .paper, .rock, .scissors]
    let id = Int(arc4random_uniform(UInt32(choices.count)))
    let choice = choices[id]
    return choice
}

}

static func play(player1: Choice, player2: Choice) -> String {
    if player1 == player2 {
        return "player1: \(player1), player2: \(player2) -> draw"}
    else if player1 == .paper && player2 == .scissors {
        return "player1: \(player1), player2: \(player2) -> Player1 is win"}
    else if player1 == .rock && player2 == .paper {
        return "player1: \(player1), player2: \(player2) -> Player1 is win"}
    else if player1 == .scissors && player2 == .rock {
        return "player1: \(player1), player2: \(player2) -> Player1 is win"}
    else {
        return "player1: \(player1), player2: \(player2) -> Player2 is win"
        }
    }
}

let p1 = PLayers.Choice.randomChoice()
let p2 = PLayers.Choice.randomChoice()
let winner = PLayers.play(player1: p1, player2: p2)
print("--- Rock Paper Scissors ---")
print()
print(winner)
print()
