//
//  ViewController.swift
//  magicBall
//
//  Created by Цырендылыкова Эржена on 10/01/2019.
//  Copyright © 2019 Цырендылыкова Эржена. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]

    var randomBallNumber = Int.random(in: 0...4)
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBAction func askButtonPressed(_ sender: UIButton) {
        newBallImage()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        newBallImage()
    }
    
    func newBallImage() {
        randomBallNumber = Int.random(in: 0...4)
        imageView.image = UIImage(named: ballArray[randomBallNumber])
    }

    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        newBallImage()
    }
}

