//
//  ViewController.swift
//  how many fingers
//
//  Created by Charlie Cuddy on 10/20/17.
//  Copyright © 2017 Charlie Cuddy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var numGuess: UITextField!
    
    @IBOutlet weak var numAnswer: UILabel!
    
    @IBAction func guessButton(_ sender: Any) {
        
        print("You guessed")
        if let numGuessText = numGuess.text {
            if let numGuessInt = Int(numGuessText) {
                
                if numGuessInt > 5 {
                    numAnswer.text = "How many fingers do you think are on one hand? Come on, guess a number that makes sense. "
                } else {
                
                    let randomFingerNum = arc4random_uniform(6)
        
                    if numGuessInt == randomFingerNum {
                        numAnswer.text = "You correctly guessed " + String(randomFingerNum) + " finger!"
                    } else {
                        numAnswer.text = "Sorry, the number of fingers was " + String(randomFingerNum) + ", not " + String(numGuessInt) + ". Guess again!"
                    }
                }
            }
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

