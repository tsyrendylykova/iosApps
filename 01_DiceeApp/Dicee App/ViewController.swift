//
//  ViewController.swift
//  Dicee App
//
//  Created by Цырендылыкова Эржена on 05/11/2018.
//  Copyright © 2018 Erzhena Tsyrendylykova. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var diceeImage1: UIImageView!
    @IBOutlet weak var diceeImage2: UIImageView!
    
    var randomNumber1 = 0
    var randomNumber2 = 0
    
    var diceeImageArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateDiceImage()
    }

    @IBAction func rollButton(_ sender: UIButton) {
        updateDiceImage()
    }
    
    func updateDiceImage() {
        randomNumber1 = Int.random(in: 0 ... 5)
        randomNumber2 = Int.random(in: 0 ... 5)
        
        diceeImage1.image = UIImage(named: diceeImageArray[randomNumber1])
        diceeImage2.image = UIImage(named: diceeImageArray[randomNumber2])
    }

}

