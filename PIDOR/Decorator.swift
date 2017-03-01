//
//  Decorator.swift
//  PIDOR
//
//  Created by Alexander on 3/1/17.
//  Copyright © 2017 ApplePride. All rights reserved.
//

import Foundation

class Presenter {
    
    fileprivate let decoratable: Decoratable
    fileprivate let interactable: Interactable
    fileprivate let routable: Routable
    fileprivate var questionIndex = 0
    fileprivate var questions: [Question]?
    
    init(decoratable: Decoratable, interactable: Interactable, routable: Routable) {
        self.decoratable = decoratable
        self.interactable = interactable
        self.routable = routable
        
        self.decoratable.handler = self
    }
}

extension Presenter: GayventHandler {
    
    private func updateImages() {
        
        let img1 = questions![self.questionIndex].images.first!
        let img2 = questions![self.questionIndex].images.last!
        
        self.decoratable.setImages(first: img1, second: img2)
    }
    
    func viewDidLoad() {
        self.questions = self.interactable.gayQuestions()
        self.updateImages()
    }
    
    func topButtonPressed() {
        self.questionIndex += 1
        self.updateImages()
    }
    
    func bottomButtonPressed() {
        self.questionIndex += 1
        self.updateImages()
    }
}
