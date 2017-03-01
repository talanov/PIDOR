//
//  Router.swift
//  PIDOR
//
//  Created by Alexander on 3/1/17.
//  Copyright © 2017 ApplePride. All rights reserved.
//

import Foundation
import UIKit

class Question {
    
    init(text: String? = nil, images: [UIImage]) {
        self.text = text
        self.images = images
    }
    
    let text: String?
    let images: [UIImage]
}

class Pidor {
    
    init(questions: [Question]) {
        self.questions = questions
    }
    
    let questions: [Question]
    var answers = [Bool]()
    var isPidor: Bool
    {
        var pidor = true
        for ans in answers {
            if ans == false {
                pidor = ans
                break
            }
        }
        return pidor
    }
    
}
