//
//  Pidor.swift
//  PIDOR
//
//  Created by Alexander on 3/1/17.
//  Copyright © 2017 ApplePride. All rights reserved.
//

import Foundation
import UIKit

protocol Interactable {
    func gayQuestions() -> [Question]
}

class Interactor: Interactable {
    
    func gayQuestions() -> [Question] {
        
        let q1 = Question(images: [UIImage(named: "gyro")!, UIImage(named: "walk")!])
        let q2 = Question(images: [UIImage(named: "ciga")!, UIImage(named: "vape")!])
        let q3 = Question(images: [UIImage(named: "beer")!, UIImage(named: "smoothy")!])
        
        return [q1, q2, q3]
    }
}
