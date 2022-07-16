//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstDice: UIImageView!
    @IBOutlet weak var secondDice: UIImageView!
    @IBOutlet weak var rollBtnOutlet: UIButton!
    
 
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupUI()
        // Do any additional setup after loading the view.
    }
 
    
    func setupUI() {
        rollBtnOutlet.layer.cornerRadius = 15
    }
  
   
    @IBAction func rollBtn(_ sender: UIButton) {
        let diceImages = [#imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour") , #imageLiteral(resourceName: "DiceFive") , #imageLiteral(resourceName: "DiceSix") ]

        firstDice.image =  diceImages[Int.random(in: 0...5)]
        secondDice.image = diceImages[Int.random(in:0...5)]
      
   
    }
    
}

