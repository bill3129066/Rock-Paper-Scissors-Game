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
    
    
    
    var result: String = ""
    var userChoice: String = ""
    let choice = ["paper", "rock", "scissor"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func choosePaper(_ sender: Any) {
        userChoice = "paper"
        print("paper")
        generateResult(Choice: userChoice)

        
    }
    @IBAction func chooseRock(_ sender: Any) {
        userChoice = "rock"
        print("rock")
        generateResult(Choice: userChoice)
    
    }
    @IBAction func chooseScissor(_ sender: Any) {
        userChoice = "scissor"
        print("Scissor")
        generateResult(Choice: userChoice)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.destination is GameResultViewController
        {
            let rc = segue.destination as? GameResultViewController
            rc?.result = result
            
        }
    }
    
    func generateResult(Choice: String) {
        let computerChoice = choice.randomElement()
        print("generate result")
        
        
        switch (Choice, computerChoice) {
        case _ where Choice == computerChoice:
            result = "The game ended in a draw"
        case ("paper", "rock"):
            result = "Paper wins rock!"
        case ("rock", "scissor"):
            result = "Rock wins scissor!"
        case ("scissor", "paper"):
            result = "Scissor wins paper!"
        case ("rock", "paper"):
            result = "Rock loss"
        case ("scissor", "rock"):
            result = "Scissor loss"
        case ("paper", "scissor"):
            result = "Paper loss"
        default:
            result = "Error occurs!"
            
            
        
    }
        
        
        
        
    }
    


}

