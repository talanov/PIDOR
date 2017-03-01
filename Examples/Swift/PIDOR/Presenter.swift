//
//  ViewController.swift
//  PIDOR
//
//  Created by Alexander on 3/1/17.
//  Copyright © 2017 ApplePride. All rights reserved.
//

import UIKit

protocol GayventHandler: class {
    func viewDidLoad()
    func topButtonPressed()
    func bottomButtonPressed()
}

protocol Decoratable {
    var handler: GayventHandler? { get set }
    func setImages(first: UIImage, second: UIImage)
}

class Decorator: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var firstOption: UIButton!
    @IBOutlet weak var secondOption: UIButton!
    
    weak var handler: GayventHandler?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
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
    
    func setImages(first: UIImage, second: UIImage) {
        firstOption.setImage(first, for: .normal)
        secondOption.setImage(second, for: .normal)
    }
}
