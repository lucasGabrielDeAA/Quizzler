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
    
    let quiz: [Question] = [Question(title: "Four +  Two is equal to Six", answer: true), Question(title: "Five - Three is greater than One", answer: true), Question(title: "Three + Eight is less than Ten", answer: false)]
    var questionNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
    }

    @IBAction func answerButtonPressed(_ sender: UIButton) {
        var userAnswer = (sender.currentTitle! as NSString).boolValue
        var correct = isAnswerCorrect(quiz[questionNumber].answer, userAnswer)
        
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
        questionLabel.text = quiz[questionNumber].title
    }
    
    func isAnswerCorrect(_ questionAnswer: Bool, _ userAnswer: Bool) -> Bool {
        return questionAnswer == userAnswer ? true : false
    }
}

