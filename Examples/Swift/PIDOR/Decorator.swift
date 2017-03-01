//
//  Decorator.swift
//  PIDOR
//
//  Created by Alexander on 3/1/17.
//  Copyright © 2017 ApplePride. All rights reserved.
//

import UIKit

class Decorator: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var firstOption: UIButton!
    @IBOutlet weak var secondOption: UIButton!
    
    @IBOutlet weak var resultLabelCenter: NSLayoutConstraint!
    weak var handler: GayventHandler?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        resultLabelCenter.constant = -self.view.frame.width
        handler?.viewDidLoad()
    }
    
    @IBAction func topButtonTapped(_ sender: Any) {
        handler?.topButtonPressed()
    }
    
    @IBAction func bottomButtonPressed(_ sender: Any) {
        handler?.bottomButtonPressed()
    }
}

extension Decorator: Decoratable {
    
    func setImages(_ names:[String]) {
        firstOption.setImage(UIImage(named: names[0]), for: .normal)
        secondOption.setImage(UIImage(named: names[1]), for: .normal)
    }
    
    func showResults(is pidor: Bool) {
        UIView.animate(withDuration: 0.5, animations: {
            self.firstOption.alpha = 0
            self.secondOption.alpha = 0
        }) { (completed) in
            if !pidor {
                self.resultLabel.text = "MAMKU EBAL"
            }
            
            UIView.animate(withDuration: 4) {
                self.resultLabelCenter.constant = self.view.frame.width
                self.view.layoutIfNeeded()
            }
        }
    }
}
