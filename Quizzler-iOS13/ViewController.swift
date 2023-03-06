//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    
    let quiz: [Question] = [Question(label: "Four +  Two is equal to Six", answer: true), Question(label: "Five - Three is greater than One", answer: true), Question(label: "Three + Eight is less than Ten", answer: false)]
    var questionNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
    }

    @IBAction func answerButtonPressed(_ sender: UIButton) {
        var userAnswer = stringToBool(stringToConvert: sender.currentTitle!)
        var correct = isAnswerCorrect(questionAnswer: quiz[questionNumber].answer, userAnswer: userAnswer)
        
        if correct {
            if questionNumber + 1 < quiz.count {
                questionNumber += 1
            } else {
                questionNumber = 0
            }
            
            updateUI()
        }
    }
    
    func updateUI() {
        questionLabel.text = quiz[questionNumber].label
    }
    
    func stringToBool(stringToConvert: String) -> Bool {
        return stringToConvert == "True" ? true : false
    }
    
    func isAnswerCorrect(questionAnswer: Bool, userAnswer: Bool) -> Bool {
        return questionAnswer == userAnswer ? true : false
    }
}

