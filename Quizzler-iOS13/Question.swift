//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by Lucas Gabriel de Araújo Assis on 05/03/23.
//  Copyright © 2023 The App Brewery. All rights reserved.
//

import Foundation

class Question {
    var title: String
    var answer: Bool
    
    init(title: String, answer: Bool) {
        self.title = title
        self.answer = answer
    }
}
