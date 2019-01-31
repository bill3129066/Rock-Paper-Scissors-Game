//
//  ViewController.swift
//  Rock paper scissors
//
//  Created by Mac on 2019/1/11.
//  Copyright © 2019 Mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var paper: UIButton!
    @IBOutlet weak var rock: UIButton!
    @IBOutlet weak var scissor: UIButton!
    @IBOutlet weak var resultLabel: UILabel!
    
    
    
    
    var userChoice: String = ""
    let choice = ["paper", "rock", "scissor"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func choosePaper(_ sender: Any) {
        userChoice = "paper"
        generateResult(Choice: userChoice)
    }
    @IBAction func chooseRock(_ sender: Any) {
        userChoice = "rock"
        generateResult(Choice: userChoice)
    }
    @IBAction func chooseScissor(_ sender: Any) {
        userChoice = "scissor"
        generateResult(Choice: userChoice)
    }
    
    
    func generateResult(Choice: String) {
        let computerChoice = choice.randomElement()
        var result: String = ""
        
        switch (Choice, computerChoice) {
        case _ where Choice == computerChoice:
            result = "The game ended in a draw"
            print(result)
            break
        case ("paper", "rock"):
            result = "Paper wins rock!"
            break
        case ("rock", "scissor"):
            result = "Rock wins scissor!"
            break
        case ("scissor", "paper"):
            result = "Scissor wins paper!"
            break
        case ("rock", "paper"):
            result = "Rock loss"
            break
        case ("scissor", "rock"):
            result = "Scissor loss"
            break
        case ("paper", "scissor"):
            result = "Paper loss"
            break
        default:
            result = "Error occurs!"
            break
        }
        
        self.resultLabel.text = result
    }
    
    
    
    
    
    
    


}

