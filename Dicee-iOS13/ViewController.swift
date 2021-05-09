//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Prince Velasco on 05/09/2021.
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
        let imageArr = [#imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix")]
        let RandomNumber = Int(arc4random_uniform(UInt32(imageArr.count)))
        
        diceImageViewOne.image = imageArr[RandomNumber]
        diceImageViewTwo.image = imageArr[RandomNumber]
    }
    
}


