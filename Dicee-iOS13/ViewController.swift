//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var diceImageViewOne: UIImageView!
    @IBOutlet weak var diceImageViewTwo: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        let imageArr = ["DiceOne", "DiceTwo", "DiceThree", "DiceFour", "DiceFive", "DiceSix"]
        
        let RandomNumber = Int(arc4random_uniform(UInt32(imageArr.count)))
        let image = UIImage.init(named: "\(imageArr[RandomNumber])")
        
        diceImageViewOne.image = image
        diceImageViewTwo.image = image
    }
    
}


